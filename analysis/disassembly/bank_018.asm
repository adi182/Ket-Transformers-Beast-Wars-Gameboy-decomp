; Disassembly of "original.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $018", ROMX[$4000], BANK[$18]

    nop                                           ; $4000: $00
    nop                                           ; $4001: $00
    nop                                           ; $4002: $00
    nop                                           ; $4003: $00
    nop                                           ; $4004: $00
    nop                                           ; $4005: $00
    rra                                           ; $4006: $1F
    nop                                           ; $4007: $00
    dec a                                         ; $4008: $3D
    inc bc                                        ; $4009: $03
    dec a                                         ; $400A: $3D
    inc bc                                        ; $400B: $03
    ccf                                           ; $400C: $3F
    inc bc                                        ; $400D: $03
    rra                                           ; $400E: $1F
    nop                                           ; $400F: $00
    nop                                           ; $4010: $00
    nop                                           ; $4011: $00
    ld bc, $0200                                  ; $4012: $01 $00 $02
    ld bc, $0003                                  ; $4015: $01 $03 $00
    dec b                                         ; $4018: $05
    ld [bc], a                                    ; $4019: $02
    ld b, $01                                     ; $401A: $06 $01
    dec b                                         ; $401C: $05
    ld [bc], a                                    ; $401D: $02
    rlca                                          ; $401E: $07
    nop                                           ; $401F: $00
    inc a                                         ; $4020: $3C
    nop                                           ; $4021: $00
    ei                                            ; $4022: $FB
    inc e                                         ; $4023: $1C
    ld a, [de]                                    ; $4024: $1A
    db $ED                                        ; $4025: $ED
    ld a, [de]                                    ; $4026: $1A
    db $ED                                        ; $4027: $ED
    ei                                            ; $4028: $FB
    db $ED                                        ; $4029: $ED
    rst RST_38                                    ; $402A: $FF
    nop                                           ; $402B: $00
    ld l, a                                       ; $402C: $6F
    rlca                                          ; $402D: $07
    cp a                                          ; $402E: $BF
    ld c, [hl]                                    ; $402F: $4E
    sbc a                                         ; $4030: $9F
    ld l, [hl]                                    ; $4031: $6E
    ld a, a                                       ; $4032: $7F
    add b                                         ; $4033: $80
    db $D3                                        ; $4034: $D3
    inc l                                         ; $4035: $2C
    sbc a                                         ; $4036: $9F
    ld h, c                                       ; $4037: $61
    ld a, a                                       ; $4038: $7F
    sbc l                                         ; $4039: $9D
    rst RST_38                                    ; $403A: $FF
    ld a, h                                       ; $403B: $7C

Jump_018_403C:
    ld a, h                                       ; $403C: $7C
    jr c, jr_018_4077                             ; $403D: $38 $38

    nop                                           ; $403F: $00
    ld a, [hl]                                    ; $4040: $7E
    nop                                           ; $4041: $00
    pop hl                                        ; $4042: $E1
    ld e, $20                                     ; $4043: $1E $20
    rst RST_18                                    ; $4045: $DF
    daa                                           ; $4046: $27
    ret c                                         ; $4047: $D8

    rst RST_38                                    ; $4048: $FF
    and $F1                                       ; $4049: $E6 $F1
    ld c, $FD                                     ; $404B: $0E $FD
    ld [bc], a                                    ; $404D: $02
    jp nc, $FF2D                                  ; $404E: $D2 $2D $FF

    ld b, b                                       ; $4051: $40
    rst RST_38                                    ; $4052: $FF
    cp a                                          ; $4053: $BF
    rst RST_38                                    ; $4054: $FF
    nop                                           ; $4055: $00
    rst RST_38                                    ; $4056: $FF
    ld a, a                                       ; $4057: $7F
    rst RST_38                                    ; $4058: $FF
    ld a, [hl]                                    ; $4059: $7E
    rst RST_38                                    ; $405A: $FF
    nop                                           ; $405B: $00
    ld bc, $0300                                  ; $405C: $01 $00 $03
    ld bc, $000E                                  ; $405F: $01 $0E $00
    cp a                                          ; $4062: $BF
    ld c, $7F                                     ; $4063: $0E $7F
    sbc a                                         ; $4065: $9F
    ccf                                           ; $4066: $3F
    rst RST_08                                    ; $4067: $CF
    rst RST_38                                    ; $4068: $FF
    inc sp                                        ; $4069: $33
    ld a, a                                       ; $406A: $7F
    cp h                                          ; $406B: $BC
    rst RST_38                                    ; $406C: $FF
    ld e, $FF                                     ; $406D: $1E $FF
    inc l                                         ; $406F: $2C
    rst RST_38                                    ; $4070: $FF
    ld d, e                                       ; $4071: $53
    rst RST_38                                    ; $4072: $FF
    xor a                                         ; $4073: $AF
    rst RST_38                                    ; $4074: $FF
    inc bc                                        ; $4075: $03
    add e                                         ; $4076: $83

jr_018_4077:
    ld a, h                                       ; $4077: $7C
    ld h, b                                       ; $4078: $60
    sbc a                                         ; $4079: $9F
    ret c                                         ; $407A: $D8

    daa                                           ; $407B: $27
    and l                                         ; $407C: $A5
    ld e, d                                       ; $407D: $5A
    db $EB                                        ; $407E: $EB
    sub h                                         ; $407F: $94
    nop                                           ; $4080: $00
    nop                                           ; $4081: $00
    add b                                         ; $4082: $80
    nop                                           ; $4083: $00
    ldh [$FF80], a                                ; $4084: $E0 $80
    ld hl, sp-$20                                 ; $4086: $F8 $E0
    ld hl, sp+$00                                 ; $4088: $F8 $00
    ld hl, sp+$00                                 ; $408A: $F8 $00
    ld hl, sp+$00                                 ; $408C: $F8 $00
    ld hl, sp-$20                                 ; $408E: $F8 $E0
    db $FC                                        ; $4090: $FC
    ld hl, sp-$02                                 ; $4091: $F8 $FE
    ld hl, sp-$02                                 ; $4093: $F8 $FE
    db $E4                                        ; $4095: $E4
    cp $9C                                        ; $4096: $FE $9C
    cp $7C                                        ; $4098: $FE $7C
    cp $78                                        ; $409A: $FE $78
    ld hl, sp+$60                                 ; $409C: $F8 $60
    ldh [rP1], a                                  ; $409E: $E0 $00
    ei                                            ; $40A0: $FB
    db $E4                                        ; $40A1: $E4
    push af                                       ; $40A2: $F5
    ld l, d                                       ; $40A3: $6A
    ldh a, [rIF]                                  ; $40A4: $F0 $0F
    rrca                                          ; $40A6: $0F
    nop                                           ; $40A7: $00
    rra                                           ; $40A8: $1F
    dec b                                         ; $40A9: $05
    rra                                           ; $40AA: $1F
    dec c                                         ; $40AB: $0D
    rrca                                          ; $40AC: $0F
    ld b, $0F                                     ; $40AD: $06 $0F
    ld b, $07                                     ; $40AF: $06 $07
    inc bc                                        ; $40B1: $03
    rlca                                          ; $40B2: $07
    nop                                           ; $40B3: $00
    inc bc                                        ; $40B4: $03
    ld bc, $0103                                  ; $40B5: $01 $03 $01
    ld bc, $0100                                  ; $40B8: $01 $00 $01
    nop                                           ; $40BB: $00
    ld [bc], a                                    ; $40BC: $02
    ld bc, $0003                                  ; $40BD: $01 $03 $00
    rlca                                          ; $40C0: $07
    nop                                           ; $40C1: $00
    jr jr_018_40CB                                ; $40C2: $18 $07

    ldh [$FF1F], a                                ; $40C4: $E0 $1F
    ld sp, hl                                     ; $40C6: $F9
    ld h, $FE                                     ; $40C7: $26 $FE

jr_018_40C9:
    jr c, jr_018_40C9                             ; $40C9: $38 $FE

jr_018_40CB:
    sbc h                                         ; $40CB: $9C
    cp $9C                                        ; $40CC: $FE $9C
    cp $9C                                        ; $40CE: $FE $9C
    rst RST_38                                    ; $40D0: $FF
    ld e, $FF                                     ; $40D1: $1E $FF
    xor $FF                                       ; $40D3: $EE $FF
    xor $FF                                       ; $40D5: $EE $FF
    ld l, $BF                                     ; $40D7: $2E $BF
    ld d, [hl]                                    ; $40D9: $56
    ld a, $D0                                     ; $40DA: $3E $D0
    ld hl, sp+$00                                 ; $40DC: $F8 $00
    nop                                           ; $40DE: $00
    nop                                           ; $40DF: $00
    inc bc                                        ; $40E0: $03
    nop                                           ; $40E1: $00
    rlca                                          ; $40E2: $07
    inc bc                                        ; $40E3: $03
    rlca                                          ; $40E4: $07
    inc bc                                        ; $40E5: $03
    rlca                                          ; $40E6: $07
    inc bc                                        ; $40E7: $03
    inc bc                                        ; $40E8: $03
    ld bc, $0103                                  ; $40E9: $01 $03 $01
    inc bc                                        ; $40EC: $03
    nop                                           ; $40ED: $00
    ld bc, $0100                                  ; $40EE: $01 $00 $01
    nop                                           ; $40F1: $00
    inc bc                                        ; $40F2: $03
    nop                                           ; $40F3: $00
    dec b                                         ; $40F4: $05
    ld [bc], a                                    ; $40F5: $02
    ld a, [bc]                                    ; $40F6: $0A
    dec b                                         ; $40F7: $05
    rrca                                          ; $40F8: $0F
    nop                                           ; $40F9: $00
    nop                                           ; $40FA: $00
    nop                                           ; $40FB: $00
    nop                                           ; $40FC: $00
    nop                                           ; $40FD: $00
    nop                                           ; $40FE: $00
    nop                                           ; $40FF: $00
    add b                                         ; $4100: $80
    nop                                           ; $4101: $00
    ldh a, [rP1]                                  ; $4102: $F0 $00
    add sp, -$70                                  ; $4104: $E8 $90
    ld hl, sp-$60                                 ; $4106: $F8 $A0
    db $F4                                        ; $4108: $F4
    ret z                                         ; $4109: $C8

    db $FC                                        ; $410A: $FC
    ret nc                                        ; $410B: $D0

    ld a, [$FE64]                                 ; $410C: $FA $64 $FE
    ld l, b                                       ; $410F: $68
    db $FD                                        ; $4110: $FD
    ldh a, [c]                                    ; $4111: $F2
    rst RST_38                                    ; $4112: $FF
    db $F4                                        ; $4113: $F4
    rst RST_38                                    ; $4114: $FF
    ld a, [de]                                    ; $4115: $1A
    ld e, [hl]                                    ; $4116: $5E
    and b                                         ; $4117: $A0
    adc h                                         ; $4118: $8C
    ld [hl], b                                    ; $4119: $70
    ld hl, sp+$00                                 ; $411A: $F8 $00
    nop                                           ; $411C: $00
    nop                                           ; $411D: $00
    nop                                           ; $411E: $00
    nop                                           ; $411F: $00
    nop                                           ; $4120: $00
    nop                                           ; $4121: $00
    nop                                           ; $4122: $00
    nop                                           ; $4123: $00
    nop                                           ; $4124: $00
    nop                                           ; $4125: $00
    rra                                           ; $4126: $1F
    nop                                           ; $4127: $00
    dec a                                         ; $4128: $3D
    inc bc                                        ; $4129: $03
    dec a                                         ; $412A: $3D
    inc bc                                        ; $412B: $03
    ccf                                           ; $412C: $3F
    inc bc                                        ; $412D: $03
    rra                                           ; $412E: $1F
    nop                                           ; $412F: $00
    nop                                           ; $4130: $00
    nop                                           ; $4131: $00
    nop                                           ; $4132: $00
    nop                                           ; $4133: $00
    ld bc, $0200                                  ; $4134: $01 $00 $02
    ld bc, $0003                                  ; $4137: $01 $03 $00
    inc b                                         ; $413A: $04
    inc bc                                        ; $413B: $03
    dec b                                         ; $413C: $05
    ld [bc], a                                    ; $413D: $02
    inc bc                                        ; $413E: $03
    nop                                           ; $413F: $00
    nop                                           ; $4140: $00
    nop                                           ; $4141: $00
    inc a                                         ; $4142: $3C
    nop                                           ; $4143: $00
    ei                                            ; $4144: $FB
    inc e                                         ; $4145: $1C
    ld a, [de]                                    ; $4146: $1A
    db $ED                                        ; $4147: $ED
    ld a, [de]                                    ; $4148: $1A
    db $ED                                        ; $4149: $ED
    ei                                            ; $414A: $FB
    db $ED                                        ; $414B: $ED
    rst RST_38                                    ; $414C: $FF
    nop                                           ; $414D: $00
    rrca                                          ; $414E: $0F
    rlca                                          ; $414F: $07
    rst RST_38                                    ; $4150: $FF
    ld c, $9F                                     ; $4151: $0E $9F
    ld l, [hl]                                    ; $4153: $6E
    ld a, a                                       ; $4154: $7F
    add b                                         ; $4155: $80
    rst RST_10                                    ; $4156: $D7
    add hl, hl                                    ; $4157: $29
    sbc a                                         ; $4158: $9F
    ld h, l                                       ; $4159: $65
    rst RST_38                                    ; $415A: $FF
    inc e                                         ; $415B: $1C
    cp $7C                                        ; $415C: $FE $7C
    ld a, h                                       ; $415E: $7C
    jr c, jr_018_417F                             ; $415F: $38 $1E

    nop                                           ; $4161: $00
    ld h, c                                       ; $4162: $61
    ld e, $E0                                     ; $4163: $1E $E0
    rra                                           ; $4165: $1F
    daa                                           ; $4166: $27
    ret c                                         ; $4167: $D8

    rra                                           ; $4168: $1F
    and $F1                                       ; $4169: $E6 $F1
    xor $FD                                       ; $416B: $EE $FD
    ld [bc], a                                    ; $416D: $02
    jp nc, $FF2D                                  ; $416E: $D2 $2D $FF

    ld b, b                                       ; $4171: $40
    rst RST_38                                    ; $4172: $FF
    cp a                                          ; $4173: $BF
    rst RST_38                                    ; $4174: $FF
    nop                                           ; $4175: $00
    rst RST_38                                    ; $4176: $FF
    ld a, a                                       ; $4177: $7F
    rst RST_38                                    ; $4178: $FF
    ld a, a                                       ; $4179: $7F
    rst RST_38                                    ; $417A: $FF
    nop                                           ; $417B: $00
    ld bc, $0300                                  ; $417C: $01 $00 $03

jr_018_417F:
    ld bc, $0000                                  ; $417F: $01 $00 $00
    adc [hl]                                      ; $4182: $8E
    nop                                           ; $4183: $00
    ld a, a                                       ; $4184: $7F
    adc [hl]                                      ; $4185: $8E
    ccf                                           ; $4186: $3F
    rst RST_18                                    ; $4187: $DF
    cp a                                          ; $4188: $BF
    ld c, a                                       ; $4189: $4F
    ld a, a                                       ; $418A: $7F
    or e                                          ; $418B: $B3
    rst RST_38                                    ; $418C: $FF
    inc a                                         ; $418D: $3C
    rst RST_38                                    ; $418E: $FF
    ld e, $FF                                     ; $418F: $1E $FF
    ld c, h                                       ; $4191: $4C
    rst RST_38                                    ; $4192: $FF
    or e                                          ; $4193: $B3
    rst RST_38                                    ; $4194: $FF
    rrca                                          ; $4195: $0F
    rst RST_38                                    ; $4196: $FF
    inc bc                                        ; $4197: $03
    jp $B03C                                      ; $4198: $C3 $3C $B0


    ld c, a                                       ; $419B: $4F
    xor b                                         ; $419C: $A8
    ld d, a                                       ; $419D: $57
    db $ED                                        ; $419E: $ED
    sub d                                         ; $419F: $92
    nop                                           ; $41A0: $00
    nop                                           ; $41A1: $00
    nop                                           ; $41A2: $00
    nop                                           ; $41A3: $00
    add b                                         ; $41A4: $80
    nop                                           ; $41A5: $00
    ldh [$FF80], a                                ; $41A6: $E0 $80
    ld hl, sp-$20                                 ; $41A8: $F8 $E0
    ld hl, sp+$00                                 ; $41AA: $F8 $00
    ld hl, sp+$00                                 ; $41AC: $F8 $00
    ld hl, sp+$00                                 ; $41AE: $F8 $00
    ld hl, sp-$20                                 ; $41B0: $F8 $E0
    db $FC                                        ; $41B2: $FC
    ld hl, sp-$02                                 ; $41B3: $F8 $FE
    ld hl, sp-$02                                 ; $41B5: $F8 $FE
    db $E4                                        ; $41B7: $E4
    cp $9C                                        ; $41B8: $FE $9C
    cp $7C                                        ; $41BA: $FE $7C
    cp $78                                        ; $41BC: $FE $78
    ld hl, sp+$60                                 ; $41BE: $F8 $60
    ldh [rP1], a                                  ; $41C0: $E0 $00
    nop                                           ; $41C2: $00
    nop                                           ; $41C3: $00
    rrca                                          ; $41C4: $0F
    nop                                           ; $41C5: $00
    rra                                           ; $41C6: $1F
    inc c                                         ; $41C7: $0C
    rra                                           ; $41C8: $1F
    inc c                                         ; $41C9: $0C
    rra                                           ; $41CA: $1F
    ld c, $0F                                     ; $41CB: $0E $0F
    ld b, $0F                                     ; $41CD: $06 $0F
    ld b, $0F                                     ; $41CF: $06 $0F
    nop                                           ; $41D1: $00
    rlca                                          ; $41D2: $07
    inc bc                                        ; $41D3: $03
    rlca                                          ; $41D4: $07
    inc bc                                        ; $41D5: $03
    rrca                                          ; $41D6: $0F
    nop                                           ; $41D7: $00
    ld d, $09                                     ; $41D8: $16 $09
    jr z, jr_018_41F3                             ; $41DA: $28 $17

    ccf                                           ; $41DC: $3F
    nop                                           ; $41DD: $00
    nop                                           ; $41DE: $00
    nop                                           ; $41DF: $00
    rra                                           ; $41E0: $1F
    inc bc                                        ; $41E1: $03
    ld h, e                                       ; $41E2: $63
    dec e                                         ; $41E3: $1D
    add e                                         ; $41E4: $83
    ld a, h                                       ; $41E5: $7C
    db $E4                                        ; $41E6: $E4
    sbc b                                         ; $41E7: $98
    ld hl, sp-$20                                 ; $41E8: $F8 $E0
    ld hl, sp+$70                                 ; $41EA: $F8 $70
    ld hl, sp+$70                                 ; $41EC: $F8 $70
    ld hl, sp+$70                                 ; $41EE: $F8 $70
    db $FC                                        ; $41F0: $FC
    ld a, b                                       ; $41F1: $78
    db $FC                                        ; $41F2: $FC

jr_018_41F3:
    cp b                                          ; $41F3: $B8
    db $FC                                        ; $41F4: $FC
    cp b                                          ; $41F5: $B8
    db $FC                                        ; $41F6: $FC
    cp b                                          ; $41F7: $B8
    db $FC                                        ; $41F8: $FC
    ld e, b                                       ; $41F9: $58
    ld hl, sp+$40                                 ; $41FA: $F8 $40
    ldh [rP1], a                                  ; $41FC: $E0 $00

jr_018_41FE:
    nop                                           ; $41FE: $00
    nop                                           ; $41FF: $00
    rst RST_28                                    ; $4200: $EF
    db $10                                        ; $4201: $10
    db $FC                                        ; $4202: $FC
    add b                                         ; $4203: $80
    jp nz, Jump_000_3F3C                          ; $4204: $C2 $3C $3F

    nop                                           ; $4207: $00
    ld a, a                                       ; $4208: $7F
    ld d, $7F                                     ; $4209: $16 $7F
    ld [hl], $3F                                  ; $420B: $36 $3F
    dec de                                        ; $420D: $1B
    ccf                                           ; $420E: $3F
    dec de                                        ; $420F: $1B
    rra                                           ; $4210: $1F
    dec c                                         ; $4211: $0D
    rra                                           ; $4212: $1F
    ld bc, $070F                                  ; $4213: $01 $0F $07
    rrca                                          ; $4216: $0F
    rlca                                          ; $4217: $07
    rlca                                          ; $4218: $07
    nop                                           ; $4219: $00
    dec b                                         ; $421A: $05
    ld [bc], a                                    ; $421B: $02
    ld a, [bc]                                    ; $421C: $0A
    dec b                                         ; $421D: $05
    rrca                                          ; $421E: $0F

jr_018_421F:
    nop                                           ; $421F: $00
    add b                                         ; $4220: $80
    nop                                           ; $4221: $00
    nop                                           ; $4222: $00
    nop                                           ; $4223: $00
    nop                                           ; $4224: $00
    nop                                           ; $4225: $00
    ret nz                                        ; $4226: $C0

    nop                                           ; $4227: $00
    and b                                         ; $4228: $A0
    ld b, b                                       ; $4229: $40
    ldh [$FF80], a                                ; $422A: $E0 $80
    ret nc                                        ; $422C: $D0

    jr nz, jr_018_421F                            ; $422D: $20 $F0

    ld b, b                                       ; $422F: $40
    add sp, -$70                                  ; $4230: $E8 $90
    ld hl, sp-$60                                 ; $4232: $F8 $A0
    db $F4                                        ; $4234: $F4
    ret z                                         ; $4235: $C8

    db $FC                                        ; $4236: $FC
    ret nc                                        ; $4237: $D0

    db $FC                                        ; $4238: $FC
    ld l, b                                       ; $4239: $68
    ld a, b                                       ; $423A: $78
    add b                                         ; $423B: $80
    jr nc, jr_018_41FE                            ; $423C: $30 $C0

    ldh [rP1], a                                  ; $423E: $E0 $00
    nop                                           ; $4240: $00
    nop                                           ; $4241: $00
    nop                                           ; $4242: $00
    nop                                           ; $4243: $00
    nop                                           ; $4244: $00
    nop                                           ; $4245: $00
    rra                                           ; $4246: $1F
    nop                                           ; $4247: $00
    dec a                                         ; $4248: $3D
    inc bc                                        ; $4249: $03
    dec a                                         ; $424A: $3D
    inc bc                                        ; $424B: $03
    ccf                                           ; $424C: $3F
    inc bc                                        ; $424D: $03
    rra                                           ; $424E: $1F
    nop                                           ; $424F: $00
    nop                                           ; $4250: $00
    nop                                           ; $4251: $00
    nop                                           ; $4252: $00
    nop                                           ; $4253: $00
    nop                                           ; $4254: $00
    nop                                           ; $4255: $00
    ld bc, $0200                                  ; $4256: $01 $00 $02
    ld bc, $0003                                  ; $4259: $01 $03 $00
    ld [bc], a                                    ; $425C: $02
    ld bc, $0001                                  ; $425D: $01 $01 $00
    nop                                           ; $4260: $00
    nop                                           ; $4261: $00
    inc a                                         ; $4262: $3C
    nop                                           ; $4263: $00
    ei                                            ; $4264: $FB
    inc e                                         ; $4265: $1C
    ld a, [de]                                    ; $4266: $1A
    db $ED                                        ; $4267: $ED
    ld a, [de]                                    ; $4268: $1A
    db $ED                                        ; $4269: $ED
    ei                                            ; $426A: $FB
    db $ED                                        ; $426B: $ED
    rst RST_38                                    ; $426C: $FF
    nop                                           ; $426D: $00
    rrca                                          ; $426E: $0F
    rlca                                          ; $426F: $07
    ld a, a                                       ; $4270: $7F
    ld c, $DF                                     ; $4271: $0E $DF
    ld l, $3F                                     ; $4273: $2E $3F
    ret nz                                        ; $4275: $C0

    xor a                                         ; $4276: $AF
    ld d, c                                       ; $4277: $51
    ld e, a                                       ; $4278: $5F
    and l                                         ; $4279: $A5
    rst RST_38                                    ; $427A: $FF
    inc e                                         ; $427B: $1C
    cp $7C                                        ; $427C: $FE $7C
    ld a, h                                       ; $427E: $7C
    jr c, jr_018_429F                             ; $427F: $38 $1E

    nop                                           ; $4281: $00
    ld h, c                                       ; $4282: $61
    ld e, $E0                                     ; $4283: $1E $E0
    rra                                           ; $4285: $1F
    daa                                           ; $4286: $27
    ret c                                         ; $4287: $D8

    rra                                           ; $4288: $1F
    and $F1                                       ; $4289: $E6 $F1
    xor $FD                                       ; $428B: $EE $FD
    ld [bc], a                                    ; $428D: $02
    jp nc, $FF2D                                  ; $428E: $D2 $2D $FF

    ld b, b                                       ; $4291: $40
    rst RST_38                                    ; $4292: $FF
    cp a                                          ; $4293: $BF
    rst RST_38                                    ; $4294: $FF
    nop                                           ; $4295: $00
    rst RST_38                                    ; $4296: $FF
    ld a, a                                       ; $4297: $7F
    rst RST_38                                    ; $4298: $FF
    ld a, a                                       ; $4299: $7F
    rst RST_38                                    ; $429A: $FF
    nop                                           ; $429B: $00
    ld bc, $0700                                  ; $429C: $01 $00 $07

jr_018_429F:
    ld bc, $0000                                  ; $429F: $01 $00 $00
    adc [hl]                                      ; $42A2: $8E
    nop                                           ; $42A3: $00
    ld a, a                                       ; $42A4: $7F
    adc [hl]                                      ; $42A5: $8E
    ccf                                           ; $42A6: $3F
    rst RST_18                                    ; $42A7: $DF
    cp a                                          ; $42A8: $BF
    ld c, a                                       ; $42A9: $4F
    ld a, a                                       ; $42AA: $7F
    or e                                          ; $42AB: $B3
    rst RST_38                                    ; $42AC: $FF
    inc a                                         ; $42AD: $3C
    rst RST_38                                    ; $42AE: $FF
    ld e, $FF                                     ; $42AF: $1E $FF
    ld c, h                                       ; $42B1: $4C
    rst RST_38                                    ; $42B2: $FF
    or e                                          ; $42B3: $B3
    rst RST_38                                    ; $42B4: $FF
    rrca                                          ; $42B5: $0F
    rst RST_38                                    ; $42B6: $FF
    inc bc                                        ; $42B7: $03
    jp $A03C                                      ; $42B8: $C3 $3C $A0


    ld e, a                                       ; $42BB: $5F
    ret c                                         ; $42BC: $D8

    daa                                           ; $42BD: $27
    db $ED                                        ; $42BE: $ED
    jp nc, RST_00                                 ; $42BF: $D2 $00 $00

    nop                                           ; $42C2: $00
    nop                                           ; $42C3: $00
    add b                                         ; $42C4: $80
    nop                                           ; $42C5: $00
    ldh [$FF80], a                                ; $42C6: $E0 $80
    ld hl, sp-$20                                 ; $42C8: $F8 $E0
    ld hl, sp+$00                                 ; $42CA: $F8 $00
    ld hl, sp+$00                                 ; $42CC: $F8 $00
    ld hl, sp+$00                                 ; $42CE: $F8 $00
    ld hl, sp-$20                                 ; $42D0: $F8 $E0
    db $FC                                        ; $42D2: $FC
    ld hl, sp-$02                                 ; $42D3: $F8 $FE
    ld hl, sp-$02                                 ; $42D5: $F8 $FE
    db $E4                                        ; $42D7: $E4
    cp $9C                                        ; $42D8: $FE $9C
    cp $7C                                        ; $42DA: $FE $7C
    cp $78                                        ; $42DC: $FE $78
    ld hl, sp+$60                                 ; $42DE: $F8 $60
    ldh [rP1], a                                  ; $42E0: $E0 $00
    rrca                                          ; $42E2: $0F
    nop                                           ; $42E3: $00
    rra                                           ; $42E4: $1F
    inc c                                         ; $42E5: $0C
    rra                                           ; $42E6: $1F
    inc c                                         ; $42E7: $0C
    rra                                           ; $42E8: $1F
    ld c, $0F                                     ; $42E9: $0E $0F
    ld b, $0F                                     ; $42EB: $06 $0F
    ld b, $0F                                     ; $42ED: $06 $0F
    nop                                           ; $42EF: $00
    rlca                                          ; $42F0: $07
    inc bc                                        ; $42F1: $03
    rlca                                          ; $42F2: $07
    inc bc                                        ; $42F3: $03
    rrca                                          ; $42F4: $0F
    nop                                           ; $42F5: $00
    ld d, $09                                     ; $42F6: $16 $09
    jr z, jr_018_4311                             ; $42F8: $28 $17

    ccf                                           ; $42FA: $3F
    nop                                           ; $42FB: $00
    nop                                           ; $42FC: $00
    nop                                           ; $42FD: $00
    nop                                           ; $42FE: $00
    nop                                           ; $42FF: $00
    ld h, a                                       ; $4300: $67
    dec de                                        ; $4301: $1B
    add e                                         ; $4302: $83
    ld a, l                                       ; $4303: $7D
    db $E3                                        ; $4304: $E3
    sbc h                                         ; $4305: $9C
    db $FC                                        ; $4306: $FC
    ldh [$FFF8], a                                ; $4307: $E0 $F8
    ld [hl], b                                    ; $4309: $70
    ld hl, sp+$70                                 ; $430A: $F8 $70
    ld hl, sp+$70                                 ; $430C: $F8 $70
    db $FC                                        ; $430E: $FC
    ld a, b                                       ; $430F: $78
    db $FC                                        ; $4310: $FC

jr_018_4311:
    cp b                                          ; $4311: $B8
    db $FC                                        ; $4312: $FC
    cp b                                          ; $4313: $B8
    db $FC                                        ; $4314: $FC
    cp b                                          ; $4315: $B8
    db $FC                                        ; $4316: $FC
    ld e, b                                       ; $4317: $58
    ld hl, sp+$40                                 ; $4318: $F8 $40
    ldh [rP1], a                                  ; $431A: $E0 $00

jr_018_431C:
    nop                                           ; $431C: $00
    nop                                           ; $431D: $00
    nop                                           ; $431E: $00
    nop                                           ; $431F: $00
    rst RST_28                                    ; $4320: $EF
    sub b                                         ; $4321: $90
    jp nc, $FFAC                                  ; $4322: $D2 $AC $FF

    nop                                           ; $4325: $00
    ld a, a                                       ; $4326: $7F
    ld d, $7F                                     ; $4327: $16 $7F
    ld [hl], $3F                                  ; $4329: $36 $3F
    dec de                                        ; $432B: $1B
    ccf                                           ; $432C: $3F
    dec de                                        ; $432D: $1B
    rra                                           ; $432E: $1F
    dec c                                         ; $432F: $0D

Call_018_4330:
    rra                                           ; $4330: $1F
    ld bc, $070F                                  ; $4331: $01 $0F $07
    rrca                                          ; $4334: $0F
    rlca                                          ; $4335: $07
    rlca                                          ; $4336: $07
    nop                                           ; $4337: $00
    dec b                                         ; $4338: $05
    ld [bc], a                                    ; $4339: $02
    ld a, [bc]                                    ; $433A: $0A
    dec b                                         ; $433B: $05

Jump_018_433C:
    rrca                                          ; $433C: $0F

jr_018_433D:
    nop                                           ; $433D: $00
    nop                                           ; $433E: $00
    nop                                           ; $433F: $00
    add b                                         ; $4340: $80
    nop                                           ; $4341: $00
    nop                                           ; $4342: $00
    nop                                           ; $4343: $00
    ret nz                                        ; $4344: $C0

    nop                                           ; $4345: $00
    and b                                         ; $4346: $A0
    ld b, b                                       ; $4347: $40
    ldh [$FF80], a                                ; $4348: $E0 $80
    ret nc                                        ; $434A: $D0

    jr nz, jr_018_433D                            ; $434B: $20 $F0

    ld b, b                                       ; $434D: $40
    add sp, -$70                                  ; $434E: $E8 $90
    ld hl, sp-$60                                 ; $4350: $F8 $A0
    db $F4                                        ; $4352: $F4
    ret z                                         ; $4353: $C8

    db $FC                                        ; $4354: $FC
    ret nc                                        ; $4355: $D0

    db $FC                                        ; $4356: $FC
    ld l, b                                       ; $4357: $68
    ld a, b                                       ; $4358: $78
    add b                                         ; $4359: $80
    jr nc, jr_018_431C                            ; $435A: $30 $C0

    ldh [rP1], a                                  ; $435C: $E0 $00
    nop                                           ; $435E: $00
    nop                                           ; $435F: $00
    nop                                           ; $4360: $00
    nop                                           ; $4361: $00
    nop                                           ; $4362: $00
    nop                                           ; $4363: $00
    nop                                           ; $4364: $00
    nop                                           ; $4365: $00
    rra                                           ; $4366: $1F
    nop                                           ; $4367: $00
    dec a                                         ; $4368: $3D
    inc bc                                        ; $4369: $03
    dec a                                         ; $436A: $3D
    inc bc                                        ; $436B: $03
    ccf                                           ; $436C: $3F
    inc bc                                        ; $436D: $03
    rra                                           ; $436E: $1F
    nop                                           ; $436F: $00
    nop                                           ; $4370: $00
    nop                                           ; $4371: $00
    ld bc, $0200                                  ; $4372: $01 $00 $02
    ld bc, $0003                                  ; $4375: $01 $03 $00
    dec b                                         ; $4378: $05
    ld [bc], a                                    ; $4379: $02
    ld b, $01                                     ; $437A: $06 $01
    dec b                                         ; $437C: $05
    ld [bc], a                                    ; $437D: $02
    rlca                                          ; $437E: $07
    nop                                           ; $437F: $00
    inc a                                         ; $4380: $3C
    nop                                           ; $4381: $00
    ei                                            ; $4382: $FB
    inc e                                         ; $4383: $1C
    ld a, [de]                                    ; $4384: $1A
    db $ED                                        ; $4385: $ED
    ld a, [de]                                    ; $4386: $1A
    db $ED                                        ; $4387: $ED
    ei                                            ; $4388: $FB
    db $ED                                        ; $4389: $ED
    rst RST_38                                    ; $438A: $FF
    nop                                           ; $438B: $00
    ld l, a                                       ; $438C: $6F
    rlca                                          ; $438D: $07
    cp a                                          ; $438E: $BF
    ld c, [hl]                                    ; $438F: $4E
    sbc a                                         ; $4390: $9F
    ld l, [hl]                                    ; $4391: $6E
    ld a, a                                       ; $4392: $7F
    add b                                         ; $4393: $80
    db $D3                                        ; $4394: $D3
    inc l                                         ; $4395: $2C
    sbc a                                         ; $4396: $9F
    ld h, c                                       ; $4397: $61
    ld a, a                                       ; $4398: $7F
    sbc l                                         ; $4399: $9D
    rst RST_38                                    ; $439A: $FF
    ld a, h                                       ; $439B: $7C
    ld a, h                                       ; $439C: $7C
    jr c, jr_018_43D7                             ; $439D: $38 $38

    nop                                           ; $439F: $00
    ld a, [hl]                                    ; $43A0: $7E
    nop                                           ; $43A1: $00
    pop hl                                        ; $43A2: $E1
    ld e, $20                                     ; $43A3: $1E $20
    rst RST_18                                    ; $43A5: $DF
    daa                                           ; $43A6: $27
    ret c                                         ; $43A7: $D8

    rst RST_38                                    ; $43A8: $FF
    and $F1                                       ; $43A9: $E6 $F1
    ld c, $FD                                     ; $43AB: $0E $FD
    ld [bc], a                                    ; $43AD: $02
    jp nc, $FF2D                                  ; $43AE: $D2 $2D $FF

    ld b, b                                       ; $43B1: $40
    rst RST_38                                    ; $43B2: $FF
    cp a                                          ; $43B3: $BF
    rst RST_38                                    ; $43B4: $FF
    nop                                           ; $43B5: $00
    rst RST_38                                    ; $43B6: $FF
    ld a, a                                       ; $43B7: $7F
    rst RST_38                                    ; $43B8: $FF
    ld a, [hl]                                    ; $43B9: $7E
    rst RST_38                                    ; $43BA: $FF
    nop                                           ; $43BB: $00
    ld bc, $0300                                  ; $43BC: $01 $00 $03
    ld bc, $000E                                  ; $43BF: $01 $0E $00
    cp a                                          ; $43C2: $BF
    ld c, $7F                                     ; $43C3: $0E $7F
    sbc a                                         ; $43C5: $9F
    ccf                                           ; $43C6: $3F
    rst RST_08                                    ; $43C7: $CF
    rst RST_38                                    ; $43C8: $FF
    inc sp                                        ; $43C9: $33
    ld a, a                                       ; $43CA: $7F
    cp h                                          ; $43CB: $BC
    rst RST_38                                    ; $43CC: $FF
    ld e, $FF                                     ; $43CD: $1E $FF
    inc l                                         ; $43CF: $2C
    rst RST_38                                    ; $43D0: $FF
    ld d, e                                       ; $43D1: $53
    rst RST_38                                    ; $43D2: $FF
    xor a                                         ; $43D3: $AF
    rst RST_38                                    ; $43D4: $FF
    inc bc                                        ; $43D5: $03
    add e                                         ; $43D6: $83

jr_018_43D7:
    ld a, h                                       ; $43D7: $7C
    ld h, b                                       ; $43D8: $60
    sbc a                                         ; $43D9: $9F
    ret c                                         ; $43DA: $D8

    daa                                           ; $43DB: $27
    and l                                         ; $43DC: $A5
    ld e, d                                       ; $43DD: $5A
    db $EB                                        ; $43DE: $EB
    sub h                                         ; $43DF: $94
    nop                                           ; $43E0: $00
    nop                                           ; $43E1: $00
    add b                                         ; $43E2: $80
    nop                                           ; $43E3: $00
    ldh [$FF80], a                                ; $43E4: $E0 $80
    ld hl, sp-$20                                 ; $43E6: $F8 $E0
    ld hl, sp+$00                                 ; $43E8: $F8 $00
    ld hl, sp+$00                                 ; $43EA: $F8 $00
    ld hl, sp+$00                                 ; $43EC: $F8 $00
    ld hl, sp-$20                                 ; $43EE: $F8 $E0
    db $FC                                        ; $43F0: $FC
    ld hl, sp-$02                                 ; $43F1: $F8 $FE
    ld hl, sp-$02                                 ; $43F3: $F8 $FE
    db $E4                                        ; $43F5: $E4
    cp $9C                                        ; $43F6: $FE $9C
    cp $7C                                        ; $43F8: $FE $7C
    cp $78                                        ; $43FA: $FE $78
    ld hl, sp+$60                                 ; $43FC: $F8 $60
    ldh [rP1], a                                  ; $43FE: $E0 $00
    inc bc                                        ; $4400: $03
    ld bc, $0205                                  ; $4401: $01 $05 $02
    ld [$3F07], sp                                ; $4404: $08 $07 $3F
    nop                                           ; $4407: $00
    ld a, a                                       ; $4408: $7F
    ld [hl-], a                                   ; $4409: $32
    ld a, a                                       ; $440A: $7F
    ld [hl-], a                                   ; $440B: $32
    ld a, a                                       ; $440C: $7F
    jr c, @+$41                                   ; $440D: $38 $3F

    add hl, de                                    ; $440F: $19
    ccf                                           ; $4410: $3F
    add hl, de                                    ; $4411: $19
    ccf                                           ; $4412: $3F
    ld bc, $0E1F                                  ; $4413: $01 $1F $0E
    rra                                           ; $4416: $1F
    ld c, $3F                                     ; $4417: $0E $3F
    ld [bc], a                                    ; $4419: $02
    ld e, e                                       ; $441A: $5B
    dec h                                         ; $441B: $25
    and e                                         ; $441C: $A3
    ld e, l                                       ; $441D: $5D
    rst RST_38                                    ; $441E: $FF
    nop                                           ; $441F: $00
    ei                                            ; $4420: $FB
    call nz, $38C4                                ; $4421: $C4 $C4 $38
    add h                                         ; $4424: $84
    ld a, b                                       ; $4425: $78
    adc h                                         ; $4426: $8C
    ld [hl], b                                    ; $4427: $70
    rst RST_38                                    ; $4428: $FF
    nop                                           ; $4429: $00
    cp $59                                        ; $442A: $FE $59
    rst RST_38                                    ; $442C: $FF
    jp c, Jump_018_6CFF                           ; $442D: $DA $FF $6C

    rst RST_38                                    ; $4430: $FF
    ld l, l                                       ; $4431: $6D
    rst RST_38                                    ; $4432: $FF
    or [hl]                                       ; $4433: $B6
    rst RST_38                                    ; $4434: $FF
    add [hl]                                      ; $4435: $86
    rst RST_38                                    ; $4436: $FF
    rst RST_18                                    ; $4437: $DF
    rst RST_38                                    ; $4438: $FF
    rst RST_18                                    ; $4439: $DF
    rst RST_38                                    ; $443A: $FF
    ld h, c                                       ; $443B: $61
    push af                                       ; $443C: $F5
    ld c, d                                       ; $443D: $4A
    add sp, $17                                   ; $443E: $E8 $17
    add b                                         ; $4440: $80
    nop                                           ; $4441: $00
    add b                                         ; $4442: $80
    nop                                           ; $4443: $00
    ld b, b                                       ; $4444: $40
    add b                                         ; $4445: $80
    ret nz                                        ; $4446: $C0

    nop                                           ; $4447: $00
    and b                                         ; $4448: $A0
    ld b, b                                       ; $4449: $40
    ldh [$FF80], a                                ; $444A: $E0 $80
    ret nc                                        ; $444C: $D0

    jr nz, @-$0E                                  ; $444D: $20 $F0

    ld b, b                                       ; $444F: $40
    ldh a, [$FFA0]                                ; $4450: $F0 $A0
    ldh [rP1], a                                  ; $4452: $E0 $00
    ret nz                                        ; $4454: $C0

    nop                                           ; $4455: $00
    add b                                         ; $4456: $80
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
    nop                                           ; $4462: $00
    nop                                           ; $4463: $00
    nop                                           ; $4464: $00
    nop                                           ; $4465: $00
    nop                                           ; $4466: $00
    nop                                           ; $4467: $00
    nop                                           ; $4468: $00
    nop                                           ; $4469: $00
    nop                                           ; $446A: $00
    nop                                           ; $446B: $00
    nop                                           ; $446C: $00
    nop                                           ; $446D: $00
    nop                                           ; $446E: $00
    nop                                           ; $446F: $00
    nop                                           ; $4470: $00
    nop                                           ; $4471: $00
    nop                                           ; $4472: $00
    nop                                           ; $4473: $00
    nop                                           ; $4474: $00
    nop                                           ; $4475: $00
    nop                                           ; $4476: $00
    nop                                           ; $4477: $00
    nop                                           ; $4478: $00
    nop                                           ; $4479: $00
    nop                                           ; $447A: $00
    nop                                           ; $447B: $00
    nop                                           ; $447C: $00
    nop                                           ; $447D: $00
    nop                                           ; $447E: $00
    nop                                           ; $447F: $00
    nop                                           ; $4480: $00
    nop                                           ; $4481: $00
    inc bc                                        ; $4482: $03
    nop                                           ; $4483: $00
    ld a, $01                                     ; $4484: $3E $01
    ld a, a                                       ; $4486: $7F
    ld [hl-], a                                   ; $4487: $32
    ld a, a                                       ; $4488: $7F
    inc sp                                        ; $4489: $33
    ld a, a                                       ; $448A: $7F
    add hl, sp                                    ; $448B: $39
    ccf                                           ; $448C: $3F

jr_018_448D:
    add hl, de                                    ; $448D: $19
    ccf                                           ; $448E: $3F
    add hl, de                                    ; $448F: $19
    ccf                                           ; $4490: $3F
    ld bc, $0E1F                                  ; $4491: $01 $1F $0E
    rra                                           ; $4494: $1F
    ld c, $3F                                     ; $4495: $0E $3F
    ld [bc], a                                    ; $4497: $02
    ld e, e                                       ; $4498: $5B
    dec h                                         ; $4499: $25
    and e                                         ; $449A: $A3
    ld e, l                                       ; $449B: $5D
    rst RST_38                                    ; $449C: $FF
    nop                                           ; $449D: $00
    nop                                           ; $449E: $00
    nop                                           ; $449F: $00
    cp $31                                        ; $44A0: $FE $31
    ccf                                           ; $44A2: $3F
    ret c                                         ; $44A3: $D8

    jr jr_018_448D                                ; $44A4: $18 $E7

    xor a                                         ; $44A6: $AF
    ld b, b                                       ; $44A7: $40
    rst RST_38                                    ; $44A8: $FF
    add l                                         ; $44A9: $85
    rst RST_38                                    ; $44AA: $FF
    call $C6EF                                    ; $44AB: $CD $EF $C6
    rst RST_28                                    ; $44AE: $EF
    add $F7                                       ; $44AF: $C6 $F7
    db $E3                                        ; $44B1: $E3
    rst RST_30                                    ; $44B2: $F7
    ldh [$FFF3], a                                ; $44B3: $E0 $F3
    pop hl                                        ; $44B5: $E1
    di                                            ; $44B6: $F3
    pop hl                                        ; $44B7: $E1
    pop af                                        ; $44B8: $F1
    ld h, b                                       ; $44B9: $60
    pop hl                                        ; $44BA: $E1
    nop                                           ; $44BB: $00
    add d                                         ; $44BC: $82
    ld bc, $0003                                  ; $44BD: $01 $03 $00
    ld hl, sp+$00                                 ; $44C0: $F8 $00
    ret nz                                        ; $44C2: $C0

    nop                                           ; $44C3: $00
    ld b, b                                       ; $44C4: $40
    add b                                         ; $44C5: $80
    ldh a, [rP1]                                  ; $44C6: $F0 $00
    add sp, -$70                                  ; $44C8: $E8 $90
    ld hl, sp-$60                                 ; $44CA: $F8 $A0
    db $F4                                        ; $44CC: $F4
    ret z                                         ; $44CD: $C8

    db $FC                                        ; $44CE: $FC
    ret nc                                        ; $44CF: $D0

    ld a, [$FE64]                                 ; $44D0: $FA $64 $FE
    ld l, b                                       ; $44D3: $68
    db $FD                                        ; $44D4: $FD
    ldh a, [c]                                    ; $44D5: $F2
    rst RST_38                                    ; $44D6: $FF
    db $F4                                        ; $44D7: $F4
    rst RST_38                                    ; $44D8: $FF
    ld a, [de]                                    ; $44D9: $1A
    ld e, [hl]                                    ; $44DA: $5E
    and b                                         ; $44DB: $A0
    adc h                                         ; $44DC: $8C
    ld [hl], b                                    ; $44DD: $70
    ld hl, sp+$00                                 ; $44DE: $F8 $00
    rlca                                          ; $44E0: $07
    nop                                           ; $44E1: $00
    nop                                           ; $44E2: $00
    nop                                           ; $44E3: $00
    nop                                           ; $44E4: $00
    nop                                           ; $44E5: $00
    nop                                           ; $44E6: $00
    nop                                           ; $44E7: $00
    nop                                           ; $44E8: $00
    nop                                           ; $44E9: $00
    nop                                           ; $44EA: $00
    nop                                           ; $44EB: $00
    nop                                           ; $44EC: $00
    nop                                           ; $44ED: $00
    nop                                           ; $44EE: $00
    nop                                           ; $44EF: $00
    nop                                           ; $44F0: $00
    nop                                           ; $44F1: $00
    nop                                           ; $44F2: $00
    nop                                           ; $44F3: $00
    nop                                           ; $44F4: $00
    nop                                           ; $44F5: $00
    nop                                           ; $44F6: $00
    nop                                           ; $44F7: $00
    nop                                           ; $44F8: $00
    nop                                           ; $44F9: $00
    nop                                           ; $44FA: $00
    nop                                           ; $44FB: $00
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
    rra                                           ; $4506: $1F
    nop                                           ; $4507: $00
    dec a                                         ; $4508: $3D
    inc bc                                        ; $4509: $03
    dec a                                         ; $450A: $3D
    inc bc                                        ; $450B: $03
    ccf                                           ; $450C: $3F
    inc bc                                        ; $450D: $03
    rra                                           ; $450E: $1F
    nop                                           ; $450F: $00
    nop                                           ; $4510: $00
    nop                                           ; $4511: $00
    nop                                           ; $4512: $00
    nop                                           ; $4513: $00
    nop                                           ; $4514: $00
    nop                                           ; $4515: $00
    ld bc, $0200                                  ; $4516: $01 $00 $02
    ld bc, $0003                                  ; $4519: $01 $03 $00
    ld [bc], a                                    ; $451C: $02
    ld bc, $0001                                  ; $451D: $01 $01 $00
    nop                                           ; $4520: $00
    nop                                           ; $4521: $00
    inc a                                         ; $4522: $3C
    nop                                           ; $4523: $00
    ei                                            ; $4524: $FB
    inc e                                         ; $4525: $1C
    ld a, [de]                                    ; $4526: $1A
    db $ED                                        ; $4527: $ED
    ld a, [de]                                    ; $4528: $1A
    db $ED                                        ; $4529: $ED
    ei                                            ; $452A: $FB
    db $ED                                        ; $452B: $ED
    rst RST_38                                    ; $452C: $FF
    nop                                           ; $452D: $00
    rrca                                          ; $452E: $0F
    rlca                                          ; $452F: $07
    ld a, a                                       ; $4530: $7F
    ld c, $DF                                     ; $4531: $0E $DF
    ld l, $3F                                     ; $4533: $2E $3F
    ret nz                                        ; $4535: $C0

    xor a                                         ; $4536: $AF
    ld d, c                                       ; $4537: $51
    ld e, a                                       ; $4538: $5F
    and l                                         ; $4539: $A5
    rst RST_38                                    ; $453A: $FF
    inc e                                         ; $453B: $1C
    cp $7C                                        ; $453C: $FE $7C
    ld a, h                                       ; $453E: $7C
    jr c, @+$20                                   ; $453F: $38 $1E

    nop                                           ; $4541: $00
    ld h, c                                       ; $4542: $61
    ld e, $E0                                     ; $4543: $1E $E0
    rra                                           ; $4545: $1F
    daa                                           ; $4546: $27
    ret c                                         ; $4547: $D8

    rra                                           ; $4548: $1F
    and $F1                                       ; $4549: $E6 $F1
    xor $FD                                       ; $454B: $EE $FD
    ld [bc], a                                    ; $454D: $02
    jp nc, $FF2D                                  ; $454E: $D2 $2D $FF

    ld b, b                                       ; $4551: $40
    rst RST_38                                    ; $4552: $FF
    cp a                                          ; $4553: $BF
    rst RST_38                                    ; $4554: $FF
    nop                                           ; $4555: $00
    rst RST_38                                    ; $4556: $FF
    ld a, a                                       ; $4557: $7F
    rst RST_38                                    ; $4558: $FF
    ld a, a                                       ; $4559: $7F
    rst RST_38                                    ; $455A: $FF
    nop                                           ; $455B: $00
    rlca                                          ; $455C: $07
    ld bc, $0619                                  ; $455D: $01 $19 $06
    nop                                           ; $4560: $00
    nop                                           ; $4561: $00
    adc [hl]                                      ; $4562: $8E
    nop                                           ; $4563: $00
    ld a, a                                       ; $4564: $7F
    adc [hl]                                      ; $4565: $8E
    ccf                                           ; $4566: $3F
    rst RST_18                                    ; $4567: $DF
    cp a                                          ; $4568: $BF
    ld c, a                                       ; $4569: $4F
    ld a, a                                       ; $456A: $7F
    or e                                          ; $456B: $B3
    rst RST_38                                    ; $456C: $FF
    inc a                                         ; $456D: $3C
    rst RST_38                                    ; $456E: $FF
    ld e, $FF                                     ; $456F: $1E $FF
    ld c, h                                       ; $4571: $4C
    rst RST_38                                    ; $4572: $FF
    or e                                          ; $4573: $B3
    rst RST_38                                    ; $4574: $FF
    rrca                                          ; $4575: $0F
    rst RST_38                                    ; $4576: $FF
    inc bc                                        ; $4577: $03
    jp $A03C                                      ; $4578: $C3 $3C $A0


    ld e, a                                       ; $457B: $5F
    ret c                                         ; $457C: $D8

    and a                                         ; $457D: $A7
    db $ED                                        ; $457E: $ED
    jp nc, RST_00                                 ; $457F: $D2 $00 $00

    nop                                           ; $4582: $00
    nop                                           ; $4583: $00
    add b                                         ; $4584: $80
    nop                                           ; $4585: $00
    ldh [$FF80], a                                ; $4586: $E0 $80
    ld hl, sp-$20                                 ; $4588: $F8 $E0
    ld hl, sp+$00                                 ; $458A: $F8 $00
    ld hl, sp+$00                                 ; $458C: $F8 $00
    ld hl, sp+$00                                 ; $458E: $F8 $00
    ld hl, sp-$20                                 ; $4590: $F8 $E0
    db $FC                                        ; $4592: $FC
    ld hl, sp-$02                                 ; $4593: $F8 $FE
    ld hl, sp-$02                                 ; $4595: $F8 $FE
    db $E4                                        ; $4597: $E4
    cp $9C                                        ; $4598: $FE $9C
    cp $7C                                        ; $459A: $FE $7C
    cp $78                                        ; $459C: $FE $78
    ld hl, sp+$60                                 ; $459E: $F8 $60
    dec sp                                        ; $45A0: $3B
    nop                                           ; $45A1: $00
    rlca                                          ; $45A2: $07
    inc bc                                        ; $45A3: $03
    rlca                                          ; $45A4: $07
    inc bc                                        ; $45A5: $03
    rlca                                          ; $45A6: $07
    inc bc                                        ; $45A7: $03
    inc bc                                        ; $45A8: $03
    ld bc, $0103                                  ; $45A9: $01 $03 $01
    inc bc                                        ; $45AC: $03
    nop                                           ; $45AD: $00
    ld bc, $0100                                  ; $45AE: $01 $00 $01
    nop                                           ; $45B1: $00
    inc bc                                        ; $45B2: $03
    nop                                           ; $45B3: $00
    dec b                                         ; $45B4: $05
    ld [bc], a                                    ; $45B5: $02
    ld a, [bc]                                    ; $45B6: $0A
    dec b                                         ; $45B7: $05
    rrca                                          ; $45B8: $0F
    nop                                           ; $45B9: $00
    nop                                           ; $45BA: $00
    nop                                           ; $45BB: $00
    nop                                           ; $45BC: $00
    nop                                           ; $45BD: $00
    nop                                           ; $45BE: $00
    nop                                           ; $45BF: $00
    ldh [$FF1F], a                                ; $45C0: $E0 $1F
    ld hl, sp+$27                                 ; $45C2: $F8 $27
    rst RST_38                                    ; $45C4: $FF

jr_018_45C5:
    jr c, jr_018_45C5                             ; $45C5: $38 $FE

    sbc h                                         ; $45C7: $9C
    cp $9C                                        ; $45C8: $FE $9C
    cp $9C                                        ; $45CA: $FE $9C
    rst RST_38                                    ; $45CC: $FF
    ld e, $FF                                     ; $45CD: $1E $FF
    xor $FF                                       ; $45CF: $EE $FF
    xor $FF                                       ; $45D1: $EE $FF
    ld l, $BF                                     ; $45D3: $2E $BF
    ld d, [hl]                                    ; $45D5: $56
    ld a, $D0                                     ; $45D6: $3E $D0
    ld hl, sp+$00                                 ; $45D8: $F8 $00
    nop                                           ; $45DA: $00
    nop                                           ; $45DB: $00
    nop                                           ; $45DC: $00
    nop                                           ; $45DD: $00
    nop                                           ; $45DE: $00
    nop                                           ; $45DF: $00
    ei                                            ; $45E0: $FB
    ld h, h                                       ; $45E1: $64
    db $FC                                        ; $45E2: $FC
    inc bc                                        ; $45E3: $03
    rra                                           ; $45E4: $1F
    inc b                                         ; $45E5: $04
    rra                                           ; $45E6: $1F
    dec c                                         ; $45E7: $0D
    rrca                                          ; $45E8: $0F
    ld b, $0F                                     ; $45E9: $06 $0F
    ld b, $07                                     ; $45EB: $06 $07
    inc bc                                        ; $45ED: $03
    rlca                                          ; $45EE: $07
    nop                                           ; $45EF: $00
    inc bc                                        ; $45F0: $03
    ld bc, $0103                                  ; $45F1: $01 $03 $01
    ld bc, $0100                                  ; $45F4: $01 $00 $01
    nop                                           ; $45F7: $00
    ld [bc], a                                    ; $45F8: $02
    ld bc, $0003                                  ; $45F9: $01 $03 $00
    nop                                           ; $45FC: $00
    nop                                           ; $45FD: $00
    nop                                           ; $45FE: $00
    nop                                           ; $45FF: $00
    ldh [rP1], a                                  ; $4600: $E0 $00
    ldh a, [rP1]                                  ; $4602: $F0 $00
    add sp, $10                                   ; $4604: $E8 $10
    ld hl, sp-$60                                 ; $4606: $F8 $A0
    db $F4                                        ; $4608: $F4
    ret z                                         ; $4609: $C8

    db $FC                                        ; $460A: $FC
    ret nc                                        ; $460B: $D0

    ld a, [$FE64]                                 ; $460C: $FA $64 $FE
    ld l, b                                       ; $460F: $68
    db $FD                                        ; $4610: $FD
    ldh a, [c]                                    ; $4611: $F2
    rst RST_38                                    ; $4612: $FF
    db $F4                                        ; $4613: $F4
    rst RST_38                                    ; $4614: $FF
    ld a, [de]                                    ; $4615: $1A
    ld e, [hl]                                    ; $4616: $5E
    and b                                         ; $4617: $A0
    adc h                                         ; $4618: $8C
    ld [hl], b                                    ; $4619: $70
    ld hl, sp+$00                                 ; $461A: $F8 $00
    nop                                           ; $461C: $00
    nop                                           ; $461D: $00
    nop                                           ; $461E: $00
    nop                                           ; $461F: $00
    nop                                           ; $4620: $00
    nop                                           ; $4621: $00
    nop                                           ; $4622: $00
    nop                                           ; $4623: $00
    nop                                           ; $4624: $00
    nop                                           ; $4625: $00
    rrca                                          ; $4626: $0F
    nop                                           ; $4627: $00
    ld e, $01                                     ; $4628: $1E $01
    ld e, $01                                     ; $462A: $1E $01
    rra                                           ; $462C: $1F
    ld bc, $000F                                  ; $462D: $01 $0F $00
    nop                                           ; $4630: $00
    nop                                           ; $4631: $00
    nop                                           ; $4632: $00
    nop                                           ; $4633: $00
    nop                                           ; $4634: $00
    nop                                           ; $4635: $00
    ld bc, $0100                                  ; $4636: $01 $00 $01
    nop                                           ; $4639: $00
    ld [bc], a                                    ; $463A: $02
    ld bc, $0102                                  ; $463B: $01 $02 $01
    ld bc, $1E00                                  ; $463E: $01 $00 $1E
    nop                                           ; $4641: $00
    db $FD                                        ; $4642: $FD
    ld c, $8D                                     ; $4643: $0E $8D
    or $8D                                        ; $4645: $F6 $8D
    or $FD                                        ; $4647: $F6 $FD
    or $FF                                        ; $4649: $F6 $FF
    nop                                           ; $464B: $00
    rlca                                          ; $464C: $07
    inc bc                                        ; $464D: $03
    ld a, a                                       ; $464E: $7F
    rlca                                          ; $464F: $07
    rst RST_08                                    ; $4650: $CF
    scf                                           ; $4651: $37
    ccf                                           ; $4652: $3F
    ret nz                                        ; $4653: $C0

    db $EB                                        ; $4654: $EB
    inc d                                         ; $4655: $14
    ld c, a                                       ; $4656: $4F
    or b                                          ; $4657: $B0
    rst RST_38                                    ; $4658: $FF
    dec bc                                        ; $4659: $0B
    rst RST_38                                    ; $465A: $FF
    dec sp                                        ; $465B: $3B
    ccf                                           ; $465C: $3F
    dec de                                        ; $465D: $1B
    rra                                           ; $465E: $1F
    ld bc, $000F                                  ; $465F: $01 $0F $00
    jr nc, jr_018_4673                            ; $4662: $30 $0F

    ldh a, [rIF]                                  ; $4664: $F0 $0F
    inc de                                        ; $4666: $13
    db $EC                                        ; $4667: $EC
    rrca                                          ; $4668: $0F
    di                                            ; $4669: $F3
    ld hl, sp-$09                                 ; $466A: $F8 $F7
    cp $01                                        ; $466C: $FE $01
    jp hl                                         ; $466E: $E9


    sub [hl]                                      ; $466F: $96
    rst RST_38                                    ; $4670: $FF
    jr nz, @+$01                                  ; $4671: $20 $FF

jr_018_4673:
    ld e, a                                       ; $4673: $5F
    rst RST_38                                    ; $4674: $FF
    nop                                           ; $4675: $00
    rst RST_38                                    ; $4676: $FF
    cp a                                          ; $4677: $BF
    rst RST_38                                    ; $4678: $FF
    rra                                           ; $4679: $1F
    rst RST_38                                    ; $467A: $FF
    jr nz, @+$01                                  ; $467B: $20 $FF

jr_018_467D:
    jr c, jr_018_467D                             ; $467D: $38 $FE

    sbc l                                         ; $467F: $9D
    nop                                           ; $4680: $00
    nop                                           ; $4681: $00
    rst RST_00                                    ; $4682: $C7
    nop                                           ; $4683: $00
    ccf                                           ; $4684: $3F
    rst RST_00                                    ; $4685: $C7
    sbc a                                         ; $4686: $9F
    ld l, a                                       ; $4687: $6F
    rst RST_18                                    ; $4688: $DF
    daa                                           ; $4689: $27
    cp a                                          ; $468A: $BF
    ld e, c                                       ; $468B: $59
    rst RST_38                                    ; $468C: $FF
    ld e, $7F                                     ; $468D: $1E $7F
    adc a                                         ; $468F: $8F
    rst RST_38                                    ; $4690: $FF
    ld h, $FF                                     ; $4691: $26 $FF
    reti                                          ; $4693: $D9


    rst RST_38                                    ; $4694: $FF
    rlca                                          ; $4695: $07
    rst RST_38                                    ; $4696: $FF
    add c                                         ; $4697: $81
    pop hl                                        ; $4698: $E1
    sbc [hl]                                      ; $4699: $9E
    ret c                                         ; $469A: $D8

    daa                                           ; $469B: $27
    call nc, $F62B                                ; $469C: $D4 $2B $F6
    ld c, c                                       ; $469F: $49
    nop                                           ; $46A0: $00
    nop                                           ; $46A1: $00
    nop                                           ; $46A2: $00
    nop                                           ; $46A3: $00
    ret nz                                        ; $46A4: $C0

    nop                                           ; $46A5: $00
    ldh a, [$FFC0]                                ; $46A6: $F0 $C0
    db $FC                                        ; $46A8: $FC
    ldh a, [$FFFC]                                ; $46A9: $F0 $FC
    add b                                         ; $46AB: $80
    db $FC                                        ; $46AC: $FC
    nop                                           ; $46AD: $00
    db $FC                                        ; $46AE: $FC
    nop                                           ; $46AF: $00
    db $FC                                        ; $46B0: $FC
    ld [hl], b                                    ; $46B1: $70
    cp $FC                                        ; $46B2: $FE $FC
    rst RST_38                                    ; $46B4: $FF
    db $FC                                        ; $46B5: $FC
    rst RST_38                                    ; $46B6: $FF
    ldh a, [c]                                    ; $46B7: $F2
    rst RST_38                                    ; $46B8: $FF
    ld c, [hl]                                    ; $46B9: $4E
    ld a, a                                       ; $46BA: $7F

jr_018_46BB:
    cp [hl]                                       ; $46BB: $BE
    ld a, a                                       ; $46BC: $7F
    cp h                                          ; $46BD: $BC
    db $FC                                        ; $46BE: $FC
    jr nc, @+$01                                  ; $46BF: $30 $FF

    add hl, de                                    ; $46C1: $19
    ccf                                           ; $46C2: $3F
    add hl, de                                    ; $46C3: $19
    ccf                                           ; $46C4: $3F
    ld bc, $0E1F                                  ; $46C5: $01 $1F $0E
    rra                                           ; $46C8: $1F
    ld c, $3F                                     ; $46C9: $0E $3F
    ld [bc], a                                    ; $46CB: $02
    ld e, e                                       ; $46CC: $5B
    dec h                                         ; $46CD: $25
    and e                                         ; $46CE: $A3
    ld e, l                                       ; $46CF: $5D
    rst RST_38                                    ; $46D0: $FF
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
    rst RST_20                                    ; $46E0: $E7
    jp c, $DBE7                                   ; $46E1: $DA $E7 $DB

    rst RST_38                                    ; $46E4: $FF
    ldh [$FFF1], a                                ; $46E5: $E0 $F1
    ldh [$FFF1], a                                ; $46E7: $E0 $F1
    ldh [$FFF1], a                                ; $46E9: $E0 $F1
    ldh [$FFF1], a                                ; $46EB: $E0 $F1
    ld h, b                                       ; $46ED: $60
    pop hl                                        ; $46EE: $E1
    nop                                           ; $46EF: $00
    add c                                         ; $46F0: $81
    nop                                           ; $46F1: $00
    nop                                           ; $46F2: $00
    nop                                           ; $46F3: $00
    nop                                           ; $46F4: $00
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
    rst RST_18                                    ; $4700: $DF
    jr nz, jr_018_46BB                            ; $4701: $20 $B8

    ld b, b                                       ; $4703: $40
    ld c, $F0                                     ; $4704: $0E $F0
    dec e                                         ; $4706: $1D
    ldh [c], a                                    ; $4707: $E2
    rra                                           ; $4708: $1F
    ldh [rIE], a                                  ; $4709: $E0 $FF
    jr @+$01                                      ; $470B: $18 $FF

    jp c, $1AFF                                   ; $470D: $DA $FF $1A

    rst RST_38                                    ; $4710: $FF
    jp c, Jump_000_00FF                           ; $4711: $DA $FF $00

    nop                                           ; $4714: $00
    nop                                           ; $4715: $00
    nop                                           ; $4716: $00
    nop                                           ; $4717: $00
    nop                                           ; $4718: $00
    nop                                           ; $4719: $00
    nop                                           ; $471A: $00
    nop                                           ; $471B: $00
    nop                                           ; $471C: $00
    nop                                           ; $471D: $00
    nop                                           ; $471E: $00
    nop                                           ; $471F: $00
    nop                                           ; $4720: $00
    nop                                           ; $4721: $00
    nop                                           ; $4722: $00
    nop                                           ; $4723: $00
    ld bc, $0300                                  ; $4724: $01 $00 $03
    ld bc, $0307                                  ; $4727: $01 $07 $03
    ld a, a                                       ; $472A: $7F
    nop                                           ; $472B: $00
    db $F4                                        ; $472C: $F4
    rrca                                          ; $472D: $0F
    db $F4                                        ; $472E: $F4
    rrca                                          ; $472F: $0F
    rst RST_38                                    ; $4730: $FF
    rrca                                          ; $4731: $0F
    ld a, a                                       ; $4732: $7F
    nop                                           ; $4733: $00
    rrca                                          ; $4734: $0F
    nop                                           ; $4735: $00
    inc bc                                        ; $4736: $03
    nop                                           ; $4737: $00
    nop                                           ; $4738: $00
    nop                                           ; $4739: $00
    nop                                           ; $473A: $00
    nop                                           ; $473B: $00
    nop                                           ; $473C: $00
    nop                                           ; $473D: $00
    nop                                           ; $473E: $00
    nop                                           ; $473F: $00
    ld [hl], l                                    ; $4740: $75
    ld a, [bc]                                    ; $4741: $0A
    cp $71                                        ; $4742: $FE $71
    cp $ED                                        ; $4744: $FE $ED
    rst RST_38                                    ; $4746: $FF
    sbc $FF                                       ; $4747: $DE $FF
    adc [hl]                                      ; $4749: $8E
    rst RST_28                                    ; $474A: $EF
    ld [hl], b                                    ; $474B: $70
    ld l, b                                       ; $474C: $68
    or a                                          ; $474D: $B7
    ld l, b                                       ; $474E: $68
    or a                                          ; $474F: $B7
    rst RST_28                                    ; $4750: $EF
    or a                                          ; $4751: $B7
    rst RST_38                                    ; $4752: $FF
    nop                                           ; $4753: $00
    rst RST_38                                    ; $4754: $FF
    scf                                           ; $4755: $37
    rst RST_38                                    ; $4756: $FF
    or $FF                                        ; $4757: $F6 $FF
    nop                                           ; $4759: $00
    ccf                                           ; $475A: $3F
    rla                                           ; $475B: $17
    ccf                                           ; $475C: $3F
    rla                                           ; $475D: $17
    ccf                                           ; $475E: $3F
    nop                                           ; $475F: $00
    ld b, c                                       ; $4760: $41
    add b                                         ; $4761: $80
    pop bc                                        ; $4762: $C1
    nop                                           ; $4763: $00
    ld b, b                                       ; $4764: $40
    add b                                         ; $4765: $80
    add b                                         ; $4766: $80
    nop                                           ; $4767: $00
    ld a, b                                       ; $4768: $78
    nop                                           ; $4769: $00
    add [hl]                                      ; $476A: $86
    ld a, b                                       ; $476B: $78
    add c                                         ; $476C: $81
    ld a, [hl]                                    ; $476D: $7E
    sbc h                                         ; $476E: $9C
    ld h, e                                       ; $476F: $63
    cp $99                                        ; $4770: $FE $99
    push bc                                       ; $4772: $C5
    ld a, [hl-]                                   ; $4773: $3A
    rst RST_30                                    ; $4774: $F7

jr_018_4775:
    ld [$B44B], sp                                ; $4775: $08 $4B $B4
    rst RST_38                                    ; $4778: $FF
    nop                                           ; $4779: $00
    rst RST_38                                    ; $477A: $FF
    or $FF                                        ; $477B: $F6 $FF
    or $FF                                        ; $477D: $F6 $FF
    nop                                           ; $477F: $00
    db $E4                                        ; $4780: $E4
    jr @+$80                                      ; $4781: $18 $7E

    add b                                         ; $4783: $80
    cp $3C                                        ; $4784: $FE $3C
    cp $7C                                        ; $4786: $FE $7C
    ld a, a                                       ; $4788: $7F
    ld a, $7F                                     ; $4789: $3E $7F
    ld a, $7F                                     ; $478B: $3E $7F
    ld a, $FF                                     ; $478D: $3E $FF
    ld e, [hl]                                    ; $478F: $5E
    rst RST_38                                    ; $4790: $FF
    ld b, b                                       ; $4791: $40
    rst RST_38                                    ; $4792: $FF
    ld e, [hl]                                    ; $4793: $5E
    rst RST_38                                    ; $4794: $FF
    ld e, [hl]                                    ; $4795: $5E
    rst RST_38                                    ; $4796: $FF
    ld b, b                                       ; $4797: $40
    rst RST_38                                    ; $4798: $FF
    ld b, b                                       ; $4799: $40
    rst RST_38                                    ; $479A: $FF
    cp [hl]                                       ; $479B: $BE
    cp $00                                        ; $479C: $FE $00
    db $FC                                        ; $479E: $FC
    nop                                           ; $479F: $00
    add hl, hl                                    ; $47A0: $29
    ld d, $19                                     ; $47A1: $16 $19
    ld b, $1F                                     ; $47A3: $06 $1F
    nop                                           ; $47A5: $00
    rra                                           ; $47A6: $1F
    rrca                                          ; $47A7: $0F
    rra                                           ; $47A8: $1F
    ld c, $2F                                     ; $47A9: $0E $2F
    ld d, $2E                                     ; $47AB: $16 $2E
    ld de, $1D22                                  ; $47AD: $11 $22 $1D
    ld [hl+], a                                   ; $47B0: $22
    dec e                                         ; $47B1: $1D
    inc de                                        ; $47B2: $13
    inc c                                         ; $47B3: $0C
    ld a, a                                       ; $47B4: $7F
    nop                                           ; $47B5: $00
    ld a, a                                       ; $47B6: $7F
    dec l                                         ; $47B7: $2D
    ld a, a                                       ; $47B8: $7F
    dec l                                         ; $47B9: $2D
    ld a, a                                       ; $47BA: $7F
    dec l                                         ; $47BB: $2D
    ld a, a                                       ; $47BC: $7F
    dec l                                         ; $47BD: $2D
    ld a, a                                       ; $47BE: $7F
    ld l, $04                                     ; $47BF: $2E $04
    ld hl, sp+$08                                 ; $47C1: $F8 $08
    ldh a, [$FFF0]                                ; $47C3: $F0 $F0
    nop                                           ; $47C5: $00
    ldh a, [$FFE0]                                ; $47C6: $F0 $E0
    ldh a, [rP1]                                  ; $47C8: $F0 $00
    jr nz, @-$3E                                  ; $47CA: $20 $C0

    jr nz, @-$3E                                  ; $47CC: $20 $C0

    db $10                                        ; $47CE: $10
    ldh [rNR10], a                                ; $47CF: $E0 $10
    ldh [rNR10], a                                ; $47D1: $E0 $10

jr_018_47D3:
    ldh [$FFFC], a                                ; $47D3: $E0 $FC
    nop                                           ; $47D5: $00
    db $FC                                        ; $47D6: $FC
    cp b                                          ; $47D7: $B8
    db $FC                                        ; $47D8: $FC
    cp b                                          ; $47D9: $B8
    db $FC                                        ; $47DA: $FC
    ret c                                         ; $47DB: $D8

    cp $DC                                        ; $47DC: $FE $DC
    cp $DC                                        ; $47DE: $FE $DC
    ccf                                           ; $47E0: $3F
    ld e, $3F                                     ; $47E1: $1E $3F
    ld e, $3F                                     ; $47E3: $1E $3F
    ld e, $3F                                     ; $47E5: $1E $3F
    ld c, $4F                                     ; $47E7: $0E $4F
    jr nc, jr_018_482F                            ; $47E9: $30 $44

    jr c, jr_018_4775                             ; $47EB: $38 $88

    ld [hl], b                                    ; $47ED: $70
    sub b                                         ; $47EE: $90
    ld h, b                                       ; $47EF: $60
    ldh [rP1], a                                  ; $47F0: $E0 $00
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
    cp $3C                                        ; $4800: $FE $3C
    cp $FC                                        ; $4802: $FE $FC
    cp $FC                                        ; $4804: $FE $FC
    cp $C4                                        ; $4806: $FE $C4
    sub $28                                       ; $4808: $D6 $28
    ld d, h                                       ; $480A: $54
    jr z, jr_018_4861                             ; $480B: $28 $54

    jr z, jr_018_4863                             ; $480D: $28 $54

    jr z, jr_018_4865                             ; $480F: $28 $54

    jr z, jr_018_484B                             ; $4811: $28 $38

    nop                                           ; $4813: $00
    nop                                           ; $4814: $00
    nop                                           ; $4815: $00
    nop                                           ; $4816: $00
    nop                                           ; $4817: $00
    nop                                           ; $4818: $00
    nop                                           ; $4819: $00
    nop                                           ; $481A: $00
    nop                                           ; $481B: $00
    nop                                           ; $481C: $00
    nop                                           ; $481D: $00
    nop                                           ; $481E: $00
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

jr_018_482F:
    nop                                           ; $482F: $00
    nop                                           ; $4830: $00
    nop                                           ; $4831: $00
    nop                                           ; $4832: $00
    nop                                           ; $4833: $00
    nop                                           ; $4834: $00
    nop                                           ; $4835: $00
    nop                                           ; $4836: $00
    nop                                           ; $4837: $00
    jr c, jr_018_483A                             ; $4838: $38 $00

jr_018_483A:
    ld c, h                                       ; $483A: $4C
    jr nc, jr_018_47D3                            ; $483B: $30 $96

    ld l, b                                       ; $483D: $68
    sbc c                                         ; $483E: $99
    ld h, [hl]                                    ; $483F: $66
    nop                                           ; $4840: $00
    nop                                           ; $4841: $00
    nop                                           ; $4842: $00
    nop                                           ; $4843: $00
    nop                                           ; $4844: $00
    nop                                           ; $4845: $00
    nop                                           ; $4846: $00
    nop                                           ; $4847: $00
    nop                                           ; $4848: $00
    nop                                           ; $4849: $00
    nop                                           ; $484A: $00

jr_018_484B:
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
    inc a                                         ; $4858: $3C
    nop                                           ; $4859: $00
    ld b, d                                       ; $485A: $42
    inc a                                         ; $485B: $3C
    or d                                          ; $485C: $B2
    ld c, h                                       ; $485D: $4C
    jp nc, Jump_018_782C                          ; $485E: $D2 $2C $78

jr_018_4861:
    nop                                           ; $4861: $00
    and h                                         ; $4862: $A4

jr_018_4863:
    ld e, b                                       ; $4863: $58
    ld e, a                                       ; $4864: $5F

jr_018_4865:
    and b                                         ; $4865: $A0
    rst RST_38                                    ; $4866: $FF
    inc bc                                        ; $4867: $03
    and e                                         ; $4868: $A3
    ld a, l                                       ; $4869: $7D
    and e                                         ; $486A: $A3
    ld a, l                                       ; $486B: $7D
    rst RST_38                                    ; $486C: $FF
    ld a, l                                       ; $486D: $7D
    rst RST_38                                    ; $486E: $FF
    nop                                           ; $486F: $00
    rst RST_38                                    ; $4870: $FF
    ld e, $FF                                     ; $4871: $1E $FF
    sbc $FF                                       ; $4873: $DE $FF
    ld l, a                                       ; $4875: $6F
    rst RST_38                                    ; $4876: $FF
    ld l, a                                       ; $4877: $6F
    ld a, a                                       ; $4878: $7F
    scf                                           ; $4879: $37
    ld a, a                                       ; $487A: $7F
    inc [hl]                                      ; $487B: $34
    inc a                                         ; $487C: $3C
    nop                                           ; $487D: $00
    nop                                           ; $487E: $00
    nop                                           ; $487F: $00
    nop                                           ; $4880: $00
    nop                                           ; $4881: $00
    nop                                           ; $4882: $00
    nop                                           ; $4883: $00
    adc a                                         ; $4884: $8F
    nop                                           ; $4885: $00
    ld a, h                                       ; $4886: $7C
    add e                                         ; $4887: $83
    ld b, h                                       ; $4888: $44
    cp e                                          ; $4889: $BB
    ld b, h                                       ; $488A: $44
    cp e                                          ; $488B: $BB
    ld a, a                                       ; $488C: $7F
    cp h                                          ; $488D: $BC
    cp $01                                        ; $488E: $FE $01
    rst RST_38                                    ; $4890: $FF
    ldh [$FFFA], a                                ; $4891: $E0 $FA
    push bc                                       ; $4893: $C5
    rst RST_38                                    ; $4894: $FF
    ld c, b                                       ; $4895: $48
    rst RST_38                                    ; $4896: $FF
    rla                                           ; $4897: $17
    rst RST_38                                    ; $4898: $FF
    nop                                           ; $4899: $00
    ld a, a                                       ; $489A: $7F
    cpl                                           ; $489B: $2F
    ld a, a                                       ; $489C: $7F
    cpl                                           ; $489D: $2F
    ld a, a                                       ; $489E: $7F
    nop                                           ; $489F: $00
    nop                                           ; $48A0: $00
    nop                                           ; $48A1: $00
    nop                                           ; $48A2: $00
    nop                                           ; $48A3: $00
    pop bc                                        ; $48A4: $C1
    nop                                           ; $48A5: $00
    scf                                           ; $48A6: $37
    pop bc                                        ; $48A7: $C1
    rrca                                          ; $48A8: $0F
    ldh a, [c]                                    ; $48A9: $F2
    rst RST_20                                    ; $48AA: $E7
    jr @+$01                                      ; $48AB: $18 $FF

    add $2F                                       ; $48AD: $C6 $2F
    sub $BF                                       ; $48AF: $D6 $BF
    ld b, e                                       ; $48B1: $43
    ld e, a                                       ; $48B2: $5F
    and h                                         ; $48B3: $A4
    rst RST_38                                    ; $48B4: $FF
    dec bc                                        ; $48B5: $0B
    rst RST_38                                    ; $48B6: $FF
    or $FF                                        ; $48B7: $F6 $FF
    ld bc, $EDFF                                  ; $48B9: $01 $FF $ED
    rst RST_38                                    ; $48BC: $FF
    db $EC                                        ; $48BD: $EC
    cp $01                                        ; $48BE: $FE $01
    nop                                           ; $48C0: $00
    nop                                           ; $48C1: $00
    inc e                                         ; $48C2: $1C
    nop                                           ; $48C3: $00
    ld [$9D14], a                                 ; $48C4: $EA $14 $9D
    ld h, d                                       ; $48C7: $62
    ld [hl], c                                    ; $48C8: $71
    adc [hl]                                      ; $48C9: $8E
    ld b, c                                       ; $48CA: $41
    cp [hl]                                       ; $48CB: $BE
    pop bc                                        ; $48CC: $C1
    ld a, $87                                     ; $48CD: $3E $87
    ld a, b                                       ; $48CF: $78
    rst RST_38                                    ; $48D0: $FF
    ld b, $FF                                     ; $48D1: $06 $FF
    ld l, [hl]                                    ; $48D3: $6E
    rst RST_38                                    ; $48D4: $FF
    ld l, [hl]                                    ; $48D5: $6E
    rst RST_38                                    ; $48D6: $FF
    halt                                          ; $48D7: $76
    rst RST_38                                    ; $48D8: $FF
    ld [hl], $FF                                  ; $48D9: $36 $FF
    or [hl]                                       ; $48DB: $B6
    cp $34                                        ; $48DC: $FE $34
    ld a, h                                       ; $48DE: $7C
    add b                                         ; $48DF: $80
    nop                                           ; $48E0: $00
    nop                                           ; $48E1: $00
    nop                                           ; $48E2: $00
    nop                                           ; $48E3: $00
    nop                                           ; $48E4: $00
    nop                                           ; $48E5: $00
    nop                                           ; $48E6: $00
    nop                                           ; $48E7: $00
    nop                                           ; $48E8: $00
    nop                                           ; $48E9: $00
    nop                                           ; $48EA: $00
    nop                                           ; $48EB: $00
    nop                                           ; $48EC: $00
    nop                                           ; $48ED: $00
    ld bc, $0200                                  ; $48EE: $01 $00 $02
    ld bc, $0003                                  ; $48F1: $01 $03 $00
    rlca                                          ; $48F4: $07
    nop                                           ; $48F5: $00
    rlca                                          ; $48F6: $07
    nop                                           ; $48F7: $00
    rlca                                          ; $48F8: $07
    nop                                           ; $48F9: $00
    inc bc                                        ; $48FA: $03
    nop                                           ; $48FB: $00
    ld bc, $0100                                  ; $48FC: $01 $00 $01
    nop                                           ; $48FF: $00
    ld [bc], a                                    ; $4900: $02
    db $FC                                        ; $4901: $FC
    cp $00                                        ; $4902: $FE $00
    call nz, $87B8                                ; $4904: $C4 $B8 $87
    ld a, b                                       ; $4907: $78
    add a                                         ; $4908: $87
    ld a, d                                       ; $4909: $7A
    add a                                         ; $490A: $87
    ld a, d                                       ; $490B: $7A
    rst RST_38                                    ; $490C: $FF
    ld b, $FF                                     ; $490D: $06 $FF
    ldh [rIE], a                                  ; $490F: $E0 $FF
    xor $FF                                       ; $4911: $EE $FF
    ld e, $FF                                     ; $4913: $1E $FF
    ld a, [hl]                                    ; $4915: $7E
    ld a, a                                       ; $4916: $7F
    ld [hl+], a                                   ; $4917: $22
    ld l, e                                       ; $4918: $6B
    inc d                                         ; $4919: $14
    ld a, [hl+]                                   ; $491A: $2A
    inc d                                         ; $491B: $14
    ld a, [hl+]                                   ; $491C: $2A
    inc d                                         ; $491D: $14
    inc e                                         ; $491E: $1C
    nop                                           ; $491F: $00
    ld b, $01                                     ; $4920: $06 $01
    rst RST_38                                    ; $4922: $FF
    ld [bc], a                                    ; $4923: $02
    rst RST_00                                    ; $4924: $C7
    cp e                                          ; $4925: $BB
    add e                                         ; $4926: $83
    ld a, l                                       ; $4927: $7D
    add e                                         ; $4928: $83
    ld a, h                                       ; $4929: $7C
    rst RST_38                                    ; $492A: $FF
    add d                                         ; $492B: $82
    rst RST_38                                    ; $492C: $FF
    xor $FF                                       ; $492D: $EE $FF
    ld e, h                                       ; $492F: $5C
    rst RST_38                                    ; $4930: $FF
    cp h                                          ; $4931: $BC
    cp $38                                        ; $4932: $FE $38
    ld a, [hl-]                                   ; $4934: $3A
    inc b                                         ; $4935: $04
    ld [de], a                                    ; $4936: $12
    inc c                                         ; $4937: $0C
    ld a, [bc]                                    ; $4938: $0A
    inc b                                         ; $4939: $04
    inc c                                         ; $493A: $0C
    nop                                           ; $493B: $00
    nop                                           ; $493C: $00
    nop                                           ; $493D: $00
    nop                                           ; $493E: $00
    nop                                           ; $493F: $00
    ld bc, $0300                                  ; $4940: $01 $00 $03
    ld bc, $0307                                  ; $4943: $01 $07 $03
    rlca                                          ; $4946: $07
    inc bc                                        ; $4947: $03
    rlca                                          ; $4948: $07
    ld [bc], a                                    ; $4949: $02
    inc bc                                        ; $494A: $03
    ld bc, $0001                                  ; $494B: $01 $01 $00
    nop                                           ; $494E: $00
    nop                                           ; $494F: $00
    nop                                           ; $4950: $00
    nop                                           ; $4951: $00
    nop                                           ; $4952: $00
    nop                                           ; $4953: $00
    nop                                           ; $4954: $00
    nop                                           ; $4955: $00
    nop                                           ; $4956: $00
    nop                                           ; $4957: $00
    nop                                           ; $4958: $00
    nop                                           ; $4959: $00
    nop                                           ; $495A: $00
    nop                                           ; $495B: $00
    nop                                           ; $495C: $00
    nop                                           ; $495D: $00
    nop                                           ; $495E: $00
    nop                                           ; $495F: $00
    nop                                           ; $4960: $00
    nop                                           ; $4961: $00
    nop                                           ; $4962: $00
    nop                                           ; $4963: $00
    nop                                           ; $4964: $00
    nop                                           ; $4965: $00
    nop                                           ; $4966: $00
    nop                                           ; $4967: $00
    nop                                           ; $4968: $00
    nop                                           ; $4969: $00
    nop                                           ; $496A: $00
    nop                                           ; $496B: $00
    nop                                           ; $496C: $00
    nop                                           ; $496D: $00
    nop                                           ; $496E: $00
    nop                                           ; $496F: $00
    nop                                           ; $4970: $00
    nop                                           ; $4971: $00
    nop                                           ; $4972: $00
    nop                                           ; $4973: $00
    nop                                           ; $4974: $00
    nop                                           ; $4975: $00
    rrca                                          ; $4976: $0F
    nop                                           ; $4977: $00
    ld e, $01                                     ; $4978: $1E $01
    ld e, $01                                     ; $497A: $1E $01
    rra                                           ; $497C: $1F
    ld bc, $000F                                  ; $497D: $01 $0F $00
    nop                                           ; $4980: $00
    nop                                           ; $4981: $00
    ld bc, $1F00                                  ; $4982: $01 $00 $1F
    nop                                           ; $4985: $00
    rst RST_38                                    ; $4986: $FF
    inc c                                         ; $4987: $0C
    adc l                                         ; $4988: $8D
    ldh a, [c]                                    ; $4989: $F2
    adc l                                         ; $498A: $8D
    ldh a, [c]                                    ; $498B: $F2
    ld a, [$F6E5]                                 ; $498C: $FA $E5 $F6
    add hl, bc                                    ; $498F: $09
    ld [hl], h                                    ; $4990: $74
    dec hl                                        ; $4991: $2B
    rst RST_38                                    ; $4992: $FF
    ld [hl], b                                    ; $4993: $70
    rst RST_38                                    ; $4994: $FF
    ld a, a                                       ; $4995: $7F
    rst RST_38                                    ; $4996: $FF
    ld a, a                                       ; $4997: $7F
    ld a, a                                       ; $4998: $7F
    ld a, $3F                                     ; $4999: $3E $3F
    nop                                           ; $499B: $00
    ld bc, $0100                                  ; $499C: $01 $00 $01
    nop                                           ; $499F: $00
    ld [hl], b                                    ; $49A0: $70
    adc a                                         ; $49A1: $8F
    ld d, b                                       ; $49A2: $50
    xor a                                         ; $49A3: $AF
    db $D3                                        ; $49A4: $D3
    inc l                                         ; $49A5: $2C
    ld a, a                                       ; $49A6: $7F
    add e                                         ; $49A7: $83
    call z, Call_018_6233                         ; $49A8: $CC $33 $62
    sbc l                                         ; $49AB: $9D
    pop bc                                        ; $49AC: $C1
    ld a, $81                                     ; $49AD: $3E $81
    ld a, [hl]                                    ; $49AF: $7E
    add e                                         ; $49B0: $83
    ld a, l                                       ; $49B1: $7D
    add e                                         ; $49B2: $83
    ld a, l                                       ; $49B3: $7D
    and a                                         ; $49B4: $A7
    ld e, e                                       ; $49B5: $5B
    rst RST_28                                    ; $49B6: $EF
    sub e                                         ; $49B7: $93
    rst RST_38                                    ; $49B8: $FF
    dec bc                                        ; $49B9: $0B
    ccf                                           ; $49BA: $3F
    dec e                                         ; $49BB: $1D
    rra                                           ; $49BC: $1F
    ld c, $0F                                     ; $49BD: $0E $0F
    rlca                                          ; $49BF: $07
    ret nz                                        ; $49C0: $C0

    nop                                           ; $49C1: $00
    ccf                                           ; $49C2: $3F
    ret nz                                        ; $49C3: $C0

    sbc a                                         ; $49C4: $9F
    ld l, c                                       ; $49C5: $69
    rst RST_38                                    ; $49C6: $FF
    ld d, $BF                                     ; $49C7: $16 $BF
    ld c, [hl]                                    ; $49C9: $4E
    rst RST_38                                    ; $49CA: $FF
    dec e                                         ; $49CB: $1D
    ld a, a                                       ; $49CC: $7F
    cp e                                          ; $49CD: $BB
    rst RST_38                                    ; $49CE: $FF
    ld [hl], a                                    ; $49CF: $77
    rst RST_38                                    ; $49D0: $FF
    cpl                                           ; $49D1: $2F
    rst RST_38                                    ; $49D2: $FF
    rst RST_18                                    ; $49D3: $DF
    rst RST_38                                    ; $49D4: $FF
    rst RST_28                                    ; $49D5: $EF
    rst RST_38                                    ; $49D6: $FF
    rst RST_30                                    ; $49D7: $F7
    rst RST_38                                    ; $49D8: $FF
    pop af                                        ; $49D9: $F1
    di                                            ; $49DA: $F3
    db $EC                                        ; $49DB: $EC
    db $FC                                        ; $49DC: $FC
    ldh [$FFFC], a                                ; $49DD: $E0 $FC
    ld d, b                                       ; $49DF: $50
    nop                                           ; $49E0: $00
    nop                                           ; $49E1: $00
    nop                                           ; $49E2: $00
    nop                                           ; $49E3: $00
    nop                                           ; $49E4: $00
    nop                                           ; $49E5: $00
    ret nz                                        ; $49E6: $C0

    nop                                           ; $49E7: $00
    ldh [rLCDC], a                                ; $49E8: $E0 $40
    ldh a, [rNR41]                                ; $49EA: $F0 $20
    ldh a, [$FFC0]                                ; $49EC: $F0 $C0
    ldh a, [$FFE0]                                ; $49EE: $F0 $E0
    ld hl, sp-$10                                 ; $49F0: $F8 $F0
    ld hl, sp-$10                                 ; $49F2: $F8 $F0
    ldh a, [$FFE0]                                ; $49F4: $F0 $E0
    ldh a, [$FFE0]                                ; $49F6: $F0 $E0
    ldh [$FFC0], a                                ; $49F8: $E0 $C0
    ldh [$FFC0], a                                ; $49FA: $E0 $C0
    ret nz                                        ; $49FC: $C0

    add b                                         ; $49FD: $80
    ret nz                                        ; $49FE: $C0

    nop                                           ; $49FF: $00
    nop                                           ; $4A00: $00
    nop                                           ; $4A01: $00
    nop                                           ; $4A02: $00
    nop                                           ; $4A03: $00
    nop                                           ; $4A04: $00
    nop                                           ; $4A05: $00
    nop                                           ; $4A06: $00
    nop                                           ; $4A07: $00
    nop                                           ; $4A08: $00
    nop                                           ; $4A09: $00
    nop                                           ; $4A0A: $00
    nop                                           ; $4A0B: $00
    nop                                           ; $4A0C: $00
    nop                                           ; $4A0D: $00
    nop                                           ; $4A0E: $00
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
    add b                                         ; $4A1C: $80
    nop                                           ; $4A1D: $00
    ld a, a                                       ; $4A1E: $7F
    add b                                         ; $4A1F: $80
    ld sp, hl                                     ; $4A20: $F9
    ld b, $F1                                     ; $4A21: $06 $F1
    ld l, [hl]                                    ; $4A23: $6E
    ldh a, [rIF]                                  ; $4A24: $F0 $0F
    rrca                                          ; $4A26: $0F
    nop                                           ; $4A27: $00
    rra                                           ; $4A28: $1F
    dec b                                         ; $4A29: $05
    rra                                           ; $4A2A: $1F
    dec c                                         ; $4A2B: $0D
    rrca                                          ; $4A2C: $0F
    ld b, $0F                                     ; $4A2D: $06 $0F
    ld b, $07                                     ; $4A2F: $06 $07
    inc bc                                        ; $4A31: $03
    rlca                                          ; $4A32: $07
    nop                                           ; $4A33: $00
    inc bc                                        ; $4A34: $03
    ld bc, $0103                                  ; $4A35: $01 $03 $01
    ld bc, $0100                                  ; $4A38: $01 $00 $01
    nop                                           ; $4A3B: $00
    ld [bc], a                                    ; $4A3C: $02
    ld bc, $0003                                  ; $4A3D: $01 $03 $00
    nop                                           ; $4A40: $00
    nop                                           ; $4A41: $00
    nop                                           ; $4A42: $00
    nop                                           ; $4A43: $00
    nop                                           ; $4A44: $00
    nop                                           ; $4A45: $00
    nop                                           ; $4A46: $00
    nop                                           ; $4A47: $00
    nop                                           ; $4A48: $00
    nop                                           ; $4A49: $00
    inc bc                                        ; $4A4A: $03
    nop                                           ; $4A4B: $00
    rst RST_38                                    ; $4A4C: $FF
    ld bc, $3ED1                                  ; $4A4D: $01 $D1 $3E
    pop de                                        ; $4A50: $D1
    ld a, $FF                                     ; $4A51: $3E $FF
    inc a                                         ; $4A53: $3C
    cp $01                                        ; $4A54: $FE $01
    ld c, $05                                     ; $4A56: $0E $05
    rra                                           ; $4A58: $1F
    ld c, $1F                                     ; $4A59: $0E $1F
    rrca                                          ; $4A5B: $0F
    rra                                           ; $4A5C: $1F
    rrca                                          ; $4A5D: $0F
    rrca                                          ; $4A5E: $0F
    rlca                                          ; $4A5F: $07
    nop                                           ; $4A60: $00
    nop                                           ; $4A61: $00
    nop                                           ; $4A62: $00
    nop                                           ; $4A63: $00
    nop                                           ; $4A64: $00
    nop                                           ; $4A65: $00
    nop                                           ; $4A66: $00
    nop                                           ; $4A67: $00
    jr nc, jr_018_4A6A                            ; $4A68: $30 $00

jr_018_4A6A:
    rst RST_28                                    ; $4A6A: $EF
    db $10                                        ; $4A6B: $10
    xor $91                                       ; $4A6C: $EE $91

jr_018_4A6E:
    xor d                                         ; $4A6E: $AA
    ld d, l                                       ; $4A6F: $55
    cp d                                          ; $4A70: $BA
    ld b, l                                       ; $4A71: $45
    ld c, a                                       ; $4A72: $4F
    or b                                          ; $4A73: $B0
    reti                                          ; $4A74: $D9


    ld h, $8C                                     ; $4A75: $26 $8C
    ld [hl], e                                    ; $4A77: $73
    ld hl, sp+$07                                 ; $4A78: $F8 $07
    ldh a, [$FFEF]                                ; $4A7A: $F0 $EF
    ldh a, [$FFEF]                                ; $4A7C: $F0 $EF
    ldh a, [$FFCF]                                ; $4A7E: $F0 $CF
    nop                                           ; $4A80: $00
    nop                                           ; $4A81: $00
    nop                                           ; $4A82: $00
    nop                                           ; $4A83: $00
    nop                                           ; $4A84: $00
    nop                                           ; $4A85: $00
    nop                                           ; $4A86: $00
    nop                                           ; $4A87: $00
    nop                                           ; $4A88: $00
    nop                                           ; $4A89: $00
    ldh [rP1], a                                  ; $4A8A: $E0 $00
    jr jr_018_4A6E                                ; $4A8C: $18 $E0

    rlca                                          ; $4A8E: $07
    ld hl, sp+$73                                 ; $4A8F: $F8 $73
    adc l                                         ; $4A91: $8D
    rst RST_38                                    ; $4A92: $FF
    ld h, d                                       ; $4A93: $62
    sub a                                         ; $4A94: $97
    ld l, c                                       ; $4A95: $69
    ld e, a                                       ; $4A96: $5F
    and e                                         ; $4A97: $A3
    cpl                                           ; $4A98: $2F
    rst RST_10                                    ; $4A99: $D7
    ccf                                           ; $4A9A: $3F
    adc $7F                                       ; $4A9B: $CE $7F
    and l                                         ; $4A9D: $A5
    ld a, a                                       ; $4A9E: $7F
    cp e                                          ; $4A9F: $BB
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
    ld hl, sp+$00                                 ; $4AAE: $F8 $00
    db $FC                                        ; $4AB0: $FC

jr_018_4AB1:
    jr z, jr_018_4AB1                             ; $4AB1: $28 $FE

    call nz, $D8FE                                ; $4AB3: $C4 $FE $D8
    cp $BC                                        ; $4AB6: $FE $BC
    rst RST_38                                    ; $4AB8: $FF
    ld a, [hl]                                    ; $4AB9: $7E
    rst RST_38                                    ; $4ABA: $FF
    cp $FE                                        ; $4ABB: $FE $FE
    db $FC                                        ; $4ABD: $FC
    cp $FC                                        ; $4ABE: $FE $FC
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
    nop                                           ; $4ACA: $00
    nop                                           ; $4ACB: $00
    nop                                           ; $4ACC: $00
    nop                                           ; $4ACD: $00
    nop                                           ; $4ACE: $00
    nop                                           ; $4ACF: $00
    nop                                           ; $4AD0: $00
    nop                                           ; $4AD1: $00
    nop                                           ; $4AD2: $00
    nop                                           ; $4AD3: $00
    nop                                           ; $4AD4: $00
    nop                                           ; $4AD5: $00
    ld bc, $0300                                  ; $4AD6: $01 $00 $03
    nop                                           ; $4AD9: $00
    inc bc                                        ; $4ADA: $03
    nop                                           ; $4ADB: $00
    inc bc                                        ; $4ADC: $03
    nop                                           ; $4ADD: $00
    ld bc, $7F00                                  ; $4ADE: $01 $00 $7F
    nop                                           ; $4AE1: $00
    inc bc                                        ; $4AE2: $03
    ld bc, $007F                                  ; $4AE3: $01 $7F $00
    ld a, a                                       ; $4AE6: $7F
    ld [hl-], a                                   ; $4AE7: $32
    ld a, a                                       ; $4AE8: $7F
    inc sp                                        ; $4AE9: $33
    ld a, a                                       ; $4AEA: $7F
    add hl, sp                                    ; $4AEB: $39
    ld a, a                                       ; $4AEC: $7F
    add hl, de                                    ; $4AED: $19
    ccf                                           ; $4AEE: $3F
    add hl, de                                    ; $4AEF: $19
    ccf                                           ; $4AF0: $3F
    ld bc, $0E1F                                  ; $4AF1: $01 $1F $0E
    rra                                           ; $4AF4: $1F
    ld c, $3F                                     ; $4AF5: $0E $3F
    ld [bc], a                                    ; $4AF7: $02
    ld e, e                                       ; $4AF8: $5B
    dec h                                         ; $4AF9: $25
    and e                                         ; $4AFA: $A3
    ld e, l                                       ; $4AFB: $5D
    rst RST_38                                    ; $4AFC: $FF
    nop                                           ; $4AFD: $00
    nop                                           ; $4AFE: $00
    nop                                           ; $4AFF: $00
    ld c, a                                       ; $4B00: $4F
    or a                                          ; $4B01: $B7
    rst RST_18                                    ; $4B02: $DF
    daa                                           ; $4B03: $27
    rst RST_38                                    ; $4B04: $FF
    rla                                           ; $4B05: $17
    rst RST_38                                    ; $4B06: $FF
    dec sp                                        ; $4B07: $3B
    rst RST_38                                    ; $4B08: $FF
    sbc l                                         ; $4B09: $9D
    rst RST_38                                    ; $4B0A: $FF
    adc $EF                                       ; $4B0B: $CE $EF
    ret nc                                        ; $4B0D: $D0

    rst RST_20                                    ; $4B0E: $E7
    db $DB                                        ; $4B0F: $DB
    rst RST_38                                    ; $4B10: $FF
    ldh [$FFF1], a                                ; $4B11: $E0 $F1
    ldh [$FFF1], a                                ; $4B13: $E0 $F1
    ldh [$FFF1], a                                ; $4B15: $E0 $F1
    ldh [$FFF1], a                                ; $4B17: $E0 $F1
    ld h, b                                       ; $4B19: $60
    pop hl                                        ; $4B1A: $E1
    nop                                           ; $4B1B: $00
    add c                                         ; $4B1C: $81
    nop                                           ; $4B1D: $00
    nop                                           ; $4B1E: $00
    nop                                           ; $4B1F: $00
    rst RST_38                                    ; $4B20: $FF
    rst RST_18                                    ; $4B21: $DF
    rst RST_38                                    ; $4B22: $FF
    rst RST_28                                    ; $4B23: $EF
    rst RST_38                                    ; $4B24: $FF
    db $E3                                        ; $4B25: $E3
    db $EB                                        ; $4B26: $EB
    ret nc                                        ; $4B27: $D0

    add sp, -$30                                  ; $4B28: $E8 $D0
    ldh a, [$FFA0]                                ; $4B2A: $F0 $A0
    ldh a, [rP1]                                  ; $4B2C: $F0 $00
    sub b                                         ; $4B2E: $90
    ld h, b                                       ; $4B2F: $60
    ld c, $F0                                     ; $4B30: $0E $F0
    dec e                                         ; $4B32: $1D
    ldh [c], a                                    ; $4B33: $E2
    rst RST_18                                    ; $4B34: $DF
    jr nz, @+$01                                  ; $4B35: $20 $FF

    ret c                                         ; $4B37: $D8

    rst RST_38                                    ; $4B38: $FF
    jp c, $1AFF                                   ; $4B39: $DA $FF $1A

    rst RST_38                                    ; $4B3C: $FF
    jp c, Jump_000_00FF                           ; $4B3D: $DA $FF $00

    ret nz                                        ; $4B40: $C0

    add b                                         ; $4B41: $80
    ret nz                                        ; $4B42: $C0

    add b                                         ; $4B43: $80
    add b                                         ; $4B44: $80
    nop                                           ; $4B45: $00
    add b                                         ; $4B46: $80
    nop                                           ; $4B47: $00
    nop                                           ; $4B48: $00
    nop                                           ; $4B49: $00
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
    nop                                           ; $4B57: $00
    add b                                         ; $4B58: $80
    nop                                           ; $4B59: $00
    ld b, b                                       ; $4B5A: $40
    add b                                         ; $4B5B: $80
    ld b, b                                       ; $4B5C: $40
    add b                                         ; $4B5D: $80
    ret nz                                        ; $4B5E: $C0

    nop                                           ; $4B5F: $00
    cp $01                                        ; $4B60: $FE $01
    rlca                                          ; $4B62: $07
    ld [bc], a                                    ; $4B63: $02
    rst RST_38                                    ; $4B64: $FF
    nop                                           ; $4B65: $00
    rst RST_38                                    ; $4B66: $FF
    ld h, h                                       ; $4B67: $64
    rst RST_38                                    ; $4B68: $FF
    ld h, a                                       ; $4B69: $67
    rst RST_38                                    ; $4B6A: $FF
    ld [hl], e                                    ; $4B6B: $73
    rst RST_38                                    ; $4B6C: $FF
    inc sp                                        ; $4B6D: $33
    ld a, a                                       ; $4B6E: $7F
    inc sp                                        ; $4B6F: $33

jr_018_4B70:
    ld a, a                                       ; $4B70: $7F
    inc bc                                        ; $4B71: $03

jr_018_4B72:
    ccf                                           ; $4B72: $3F
    dec e                                         ; $4B73: $1D
    ccf                                           ; $4B74: $3F
    dec e                                         ; $4B75: $1D
    ccf                                           ; $4B76: $3F
    dec b                                         ; $4B77: $05
    daa                                           ; $4B78: $27
    ld a, [de]                                    ; $4B79: $1A
    daa                                           ; $4B7A: $27
    ld a, [de]                                    ; $4B7B: $1A
    inc hl                                        ; $4B7C: $23
    inc e                                         ; $4B7D: $1C
    ld [hl+], a                                   ; $4B7E: $22
    inc e                                         ; $4B7F: $1C
    sbc a                                         ; $4B80: $9F
    ld l, a                                       ; $4B81: $6F
    cp a                                          ; $4B82: $BF
    ld c, a                                       ; $4B83: $4F

jr_018_4B84:
    rst RST_38                                    ; $4B84: $FF
    cpl                                           ; $4B85: $2F

jr_018_4B86:
    rst RST_38                                    ; $4B86: $FF
    ld [hl], a                                    ; $4B87: $77
    rst RST_38                                    ; $4B88: $FF
    dec sp                                        ; $4B89: $3B
    rst RST_38                                    ; $4B8A: $FF
    sbc l                                         ; $4B8B: $9D
    rst RST_18                                    ; $4B8C: $DF
    and b                                         ; $4B8D: $A0
    adc $B5                                       ; $4B8E: $CE $B5
    db $FC                                        ; $4B90: $FC
    jp $C3E4                                      ; $4B91: $C3 $E4 $C3


    db $E4                                        ; $4B94: $E4
    jp $C0EF                                      ; $4B95: $C3 $EF $C0


    rst RST_28                                    ; $4B98: $EF
    rst RST_00                                    ; $4B99: $C7
    rst RST_08                                    ; $4B9A: $CF
    rlca                                          ; $4B9B: $07
    rlca                                          ; $4B9C: $07
    nop                                           ; $4B9D: $00
    rlca                                          ; $4B9E: $07
    inc bc                                        ; $4B9F: $03
    rst RST_38                                    ; $4BA0: $FF
    cp a                                          ; $4BA1: $BF
    rst RST_38                                    ; $4BA2: $FF
    rst RST_18                                    ; $4BA3: $DF
    rst RST_38                                    ; $4BA4: $FF
    add $D7                                       ; $4BA5: $C6 $D7
    and b                                         ; $4BA7: $A0
    ret nc                                        ; $4BA8: $D0

    and b                                         ; $4BA9: $A0
    ldh [rLCDC], a                                ; $4BAA: $E0 $40
    ldh [rP1], a                                  ; $4BAC: $E0 $00
    jr nz, jr_018_4B70                            ; $4BAE: $20 $C0

    jr c, jr_018_4B72                             ; $4BB0: $38 $C0

    jr c, jr_018_4B84                             ; $4BB2: $38 $D0

    jr c, jr_018_4B86                             ; $4BB4: $38 $D0

    ld hl, sp+$30                                 ; $4BB6: $F8 $30
    ld hl, sp+$00                                 ; $4BB8: $F8 $00
    ld hl, sp+$70                                 ; $4BBA: $F8 $70
    ld hl, sp-$10                                 ; $4BBC: $F8 $F0
    ld hl, sp-$10                                 ; $4BBE: $F8 $F0
    add b                                         ; $4BC0: $80
    nop                                           ; $4BC1: $00
    add b                                         ; $4BC2: $80
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
    inc h                                         ; $4BE0: $24
    jr jr_018_4C07                                ; $4BE1: $18 $24

    jr jr_018_4C1D                                ; $4BE3: $18 $38

    nop                                           ; $4BE5: $00
    nop                                           ; $4BE6: $00
    nop                                           ; $4BE7: $00
    nop                                           ; $4BE8: $00
    nop                                           ; $4BE9: $00
    nop                                           ; $4BEA: $00
    nop                                           ; $4BEB: $00
    nop                                           ; $4BEC: $00
    nop                                           ; $4BED: $00
    nop                                           ; $4BEE: $00
    nop                                           ; $4BEF: $00
    nop                                           ; $4BF0: $00
    nop                                           ; $4BF1: $00
    nop                                           ; $4BF2: $00
    nop                                           ; $4BF3: $00
    nop                                           ; $4BF4: $00
    nop                                           ; $4BF5: $00
    nop                                           ; $4BF6: $00
    nop                                           ; $4BF7: $00
    nop                                           ; $4BF8: $00
    nop                                           ; $4BF9: $00
    nop                                           ; $4BFA: $00
    nop                                           ; $4BFB: $00
    nop                                           ; $4BFC: $00
    nop                                           ; $4BFD: $00
    nop                                           ; $4BFE: $00
    nop                                           ; $4BFF: $00
    cp $44                                        ; $4C00: $FE $44
    sub $28                                       ; $4C02: $D6 $28
    ld d, h                                       ; $4C04: $54
    jr z, jr_018_4C5B                             ; $4C05: $28 $54

jr_018_4C07:
    jr z, jr_018_4C41                             ; $4C07: $28 $38

    nop                                           ; $4C09: $00
    nop                                           ; $4C0A: $00
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
    nop                                           ; $4C15: $00
    nop                                           ; $4C16: $00
    nop                                           ; $4C17: $00
    nop                                           ; $4C18: $00
    nop                                           ; $4C19: $00
    nop                                           ; $4C1A: $00
    nop                                           ; $4C1B: $00
    nop                                           ; $4C1C: $00

jr_018_4C1D:
    nop                                           ; $4C1D: $00
    nop                                           ; $4C1E: $00
    nop                                           ; $4C1F: $00
    nop                                           ; $4C20: $00
    nop                                           ; $4C21: $00
    nop                                           ; $4C22: $00
    nop                                           ; $4C23: $00
    nop                                           ; $4C24: $00
    nop                                           ; $4C25: $00
    nop                                           ; $4C26: $00
    nop                                           ; $4C27: $00
    nop                                           ; $4C28: $00
    nop                                           ; $4C29: $00
    inc b                                         ; $4C2A: $04
    nop                                           ; $4C2B: $00
    ld a, [de]                                    ; $4C2C: $1A
    inc b                                         ; $4C2D: $04
    add hl, hl                                    ; $4C2E: $29
    ld d, $37                                     ; $4C2F: $16 $37
    ld [$225D], sp                                ; $4C31: $08 $5D $22
    ld l, c                                       ; $4C34: $69
    ld d, $57                                     ; $4C35: $16 $57
    add hl, hl                                    ; $4C37: $29
    ld a, a                                       ; $4C38: $7F
    rlca                                          ; $4C39: $07
    rra                                           ; $4C3A: $1F
    rrca                                          ; $4C3B: $0F
    rrca                                          ; $4C3C: $0F
    rlca                                          ; $4C3D: $07
    rlca                                          ; $4C3E: $07
    nop                                           ; $4C3F: $00
    inc bc                                        ; $4C40: $03

jr_018_4C41:
    nop                                           ; $4C41: $00
    inc bc                                        ; $4C42: $03
    ld bc, $0307                                  ; $4C43: $01 $07 $03
    rlca                                          ; $4C46: $07
    inc bc                                        ; $4C47: $03
    rlca                                          ; $4C48: $07
    inc bc                                        ; $4C49: $03
    rrca                                          ; $4C4A: $0F
    rlca                                          ; $4C4B: $07
    rrca                                          ; $4C4C: $0F
    nop                                           ; $4C4D: $00
    rrca                                          ; $4C4E: $0F
    rlca                                          ; $4C4F: $07
    rra                                           ; $4C50: $1F
    rrca                                          ; $4C51: $0F
    rra                                           ; $4C52: $1F
    ld bc, $152B                                  ; $4C53: $01 $2B $15
    ld d, c                                       ; $4C56: $51
    ld l, $B3                                     ; $4C57: $2E $B3
    ld c, h                                       ; $4C59: $4C
    db $FC                                        ; $4C5A: $FC

jr_018_4C5B:
    nop                                           ; $4C5B: $00
    nop                                           ; $4C5C: $00
    nop                                           ; $4C5D: $00
    nop                                           ; $4C5E: $00
    nop                                           ; $4C5F: $00
    sbc h                                         ; $4C60: $9C
    ld [hl], b                                    ; $4C61: $70
    sbc d                                         ; $4C62: $9A
    ld [hl], h                                    ; $4C63: $74
    cp d                                          ; $4C64: $BA
    ld c, h                                       ; $4C65: $4C
    ld c, [hl]                                    ; $4C66: $4E

jr_018_4C67:
    jr c, jr_018_4CC6                             ; $4C67: $38 $5D

    ld h, $22                                     ; $4C69: $26 $22
    rra                                           ; $4C6B: $1F
    pop de                                        ; $4C6C: $D1
    rrca                                          ; $4C6D: $0F
    add hl, sp                                    ; $4C6E: $39
    add $FF                                       ; $4C6F: $C6 $FF
    jr @+$01                                      ; $4C71: $18 $FF

    xor $FF                                       ; $4C73: $EE $FF
    db $ED                                        ; $4C75: $ED
    rst RST_38                                    ; $4C76: $FF
    jp z, $80FF                                   ; $4C77: $CA $FF $80

    rst RST_38                                    ; $4C7A: $FF
    dec b                                         ; $4C7B: $05
    rrca                                          ; $4C7C: $0F
    dec b                                         ; $4C7D: $05
    rrca                                          ; $4C7E: $0F
    nop                                           ; $4C7F: $00
    ld bc, $C700                                  ; $4C80: $01 $00 $C7
    nop                                           ; $4C83: $00
    ld sp, hl                                     ; $4C84: $F9
    add $F8                                       ; $4C85: $C6 $F8
    add a                                         ; $4C87: $87
    rst RST_38                                    ; $4C88: $FF
    xor b                                         ; $4C89: $A8
    cp $2C                                        ; $4C8A: $FE $2C
    cp $5C                                        ; $4C8C: $FE $5C
    db $FC                                        ; $4C8E: $FC
    ld e, b                                       ; $4C8F: $58
    db $FC                                        ; $4C90: $FC
    cp b                                          ; $4C91: $B8
    ld hl, sp-$50                                 ; $4C92: $F8 $B0
    ld hl, sp+$70                                 ; $4C94: $F8 $70
    ldh a, [$FF60]                                ; $4C96: $F0 $60
    ldh a, [rP1]                                  ; $4C98: $F0 $00
    nop                                           ; $4C9A: $00
    nop                                           ; $4C9B: $00
    nop                                           ; $4C9C: $00
    nop                                           ; $4C9D: $00
    nop                                           ; $4C9E: $00
    nop                                           ; $4C9F: $00
    ld e, $00                                     ; $4CA0: $1E $00
    ld hl, $DF1E                                  ; $4CA2: $21 $1E $DF
    jr nz, jr_018_4C67                            ; $4CA5: $20 $C0

    ccf                                           ; $4CA7: $3F
    ld hl, sp+$07                                 ; $4CA8: $F8 $07
    cp l                                          ; $4CAA: $BD
    ld e, d                                       ; $4CAB: $5A
    cp a                                          ; $4CAC: $BF
    ld e, b                                       ; $4CAD: $58
    sbc c                                         ; $4CAE: $99
    ld h, [hl]                                    ; $4CAF: $66
    pop af                                        ; $4CB0: $F1
    ld c, $FF                                     ; $4CB1: $0E $FF
    pop af                                        ; $4CB3: $F1
    rst RST_38                                    ; $4CB4: $FF
    nop                                           ; $4CB5: $00
    rst RST_38                                    ; $4CB6: $FF
    db $FD                                        ; $4CB7: $FD
    rst RST_38                                    ; $4CB8: $FF
    db $FD                                        ; $4CB9: $FD
    rst RST_38                                    ; $4CBA: $FF
    nop                                           ; $4CBB: $00
    add c                                         ; $4CBC: $81
    ld a, [hl]                                    ; $4CBD: $7E
    cp $01                                        ; $4CBE: $FE $01
    rst RST_38                                    ; $4CC0: $FF
    ld hl, sp-$04                                 ; $4CC1: $F8 $FC
    ldh [$FFE2], a                                ; $4CC3: $E0 $E2
    ld e, h                                       ; $4CC5: $5C

jr_018_4CC6:
    pop hl                                        ; $4CC6: $E1
    ld e, $23                                     ; $4CC7: $1E $23
    inc e                                         ; $4CC9: $1C
    rra                                           ; $4CCA: $1F
    inc bc                                        ; $4CCB: $03
    ccf                                           ; $4CCC: $3F
    dec e                                         ; $4CCD: $1D
    ccf                                           ; $4CCE: $3F
    dec e                                         ; $4CCF: $1D
    rra                                           ; $4CD0: $1F
    ld c, $1F                                     ; $4CD1: $0E $1F
    ld c, $0F                                     ; $4CD3: $0E $0F
    ld bc, $070F                                  ; $4CD5: $01 $0F $07
    rrca                                          ; $4CD8: $0F
    ld b, $06                                     ; $4CD9: $06 $06
    ld bc, $0205                                  ; $4CDB: $01 $05 $02
    rlca                                          ; $4CDE: $07
    nop                                           ; $4CDF: $00
    ldh [rP1], a                                  ; $4CE0: $E0 $00
    cp $60                                        ; $4CE2: $FE $60
    cp $1C                                        ; $4CE4: $FE $1C
    ld a, a                                       ; $4CE6: $7F
    sbc [hl]                                      ; $4CE7: $9E
    rst RST_38                                    ; $4CE8: $FF
    ld l, $7F                                     ; $4CE9: $2E $7F
    xor [hl]                                      ; $4CEB: $AE
    rst RST_38                                    ; $4CEC: $FF
    cpl                                           ; $4CED: $2F
    rst RST_38                                    ; $4CEE: $FF
    or a                                          ; $4CEF: $B7
    rst RST_38                                    ; $4CF0: $FF

jr_018_4CF1:
    jr nc, @+$01                                  ; $4CF1: $30 $FF

    add b                                         ; $4CF3: $80
    rst RST_00                                    ; $4CF4: $C7
    cp e                                          ; $4CF5: $BB
    rst RST_08                                    ; $4CF6: $CF
    inc sp                                        ; $4CF7: $33
    di                                            ; $4CF8: $F3
    dec c                                         ; $4CF9: $0D
    daa                                           ; $4CFA: $27
    reti                                          ; $4CFB: $D9


    cp e                                          ; $4CFC: $BB
    ld b, l                                       ; $4CFD: $45
    sub e                                         ; $4CFE: $93
    ld l, h                                       ; $4CFF: $6C
    ld e, a                                       ; $4D00: $5F
    jr nz, jr_018_4D2E                            ; $4D01: $20 $2B

    inc d                                         ; $4D03: $14
    sub h                                         ; $4D04: $94
    ld [$80D8], sp                                ; $4D05: $08 $D8 $80
    ret nz                                        ; $4D08: $C0

    add b                                         ; $4D09: $80
    ldh [$FFC0], a                                ; $4D0A: $E0 $C0
    ldh [$FFC0], a                                ; $4D0C: $E0 $C0
    ldh a, [$FFE0]                                ; $4D0E: $F0 $E0
    ldh a, [$FFE0]                                ; $4D10: $F0 $E0
    ld hl, sp-$10                                 ; $4D12: $F8 $F0
    ld hl, sp+$10                                 ; $4D14: $F8 $10
    sub b                                         ; $4D16: $90
    ld h, b                                       ; $4D17: $60
    sub b                                         ; $4D18: $90
    ld h, b                                       ; $4D19: $60
    ldh a, [rP1]                                  ; $4D1A: $F0 $00
    nop                                           ; $4D1C: $00
    nop                                           ; $4D1D: $00
    nop                                           ; $4D1E: $00
    nop                                           ; $4D1F: $00
    add b                                         ; $4D20: $80
    nop                                           ; $4D21: $00
    add b                                         ; $4D22: $80
    nop                                           ; $4D23: $00
    add b                                         ; $4D24: $80
    nop                                           ; $4D25: $00
    add b                                         ; $4D26: $80
    nop                                           ; $4D27: $00
    add b                                         ; $4D28: $80
    nop                                           ; $4D29: $00
    ret nz                                        ; $4D2A: $C0

    add b                                         ; $4D2B: $80
    ret nz                                        ; $4D2C: $C0

    add b                                         ; $4D2D: $80

jr_018_4D2E:
    ret nz                                        ; $4D2E: $C0

    add b                                         ; $4D2F: $80
    ldh [$FFC0], a                                ; $4D30: $E0 $C0
    ldh [$FFC0], a                                ; $4D32: $E0 $C0
    ldh [$FF80], a                                ; $4D34: $E0 $80
    add b                                         ; $4D36: $80
    nop                                           ; $4D37: $00
    nop                                           ; $4D38: $00
    nop                                           ; $4D39: $00
    nop                                           ; $4D3A: $00
    nop                                           ; $4D3B: $00
    nop                                           ; $4D3C: $00
    nop                                           ; $4D3D: $00
    nop                                           ; $4D3E: $00
    nop                                           ; $4D3F: $00
    nop                                           ; $4D40: $00
    nop                                           ; $4D41: $00
    nop                                           ; $4D42: $00
    nop                                           ; $4D43: $00
    nop                                           ; $4D44: $00
    nop                                           ; $4D45: $00
    nop                                           ; $4D46: $00
    nop                                           ; $4D47: $00
    nop                                           ; $4D48: $00
    nop                                           ; $4D49: $00
    nop                                           ; $4D4A: $00
    nop                                           ; $4D4B: $00
    nop                                           ; $4D4C: $00
    nop                                           ; $4D4D: $00
    nop                                           ; $4D4E: $00
    nop                                           ; $4D4F: $00
    nop                                           ; $4D50: $00
    nop                                           ; $4D51: $00
    nop                                           ; $4D52: $00
    nop                                           ; $4D53: $00
    inc e                                         ; $4D54: $1C
    nop                                           ; $4D55: $00
    ld h, $1C                                     ; $4D56: $26 $1C
    ld c, d                                       ; $4D58: $4A
    inc a                                         ; $4D59: $3C
    ld c, h                                       ; $4D5A: $4C
    jr c, jr_018_4CF1                             ; $4D5B: $38 $94

    ld a, b                                       ; $4D5D: $78
    sbc b                                         ; $4D5E: $98
    ld [hl], b                                    ; $4D5F: $70
    nop                                           ; $4D60: $00
    nop                                           ; $4D61: $00
    nop                                           ; $4D62: $00
    nop                                           ; $4D63: $00
    nop                                           ; $4D64: $00
    nop                                           ; $4D65: $00
    nop                                           ; $4D66: $00
    nop                                           ; $4D67: $00
    nop                                           ; $4D68: $00
    nop                                           ; $4D69: $00
    ld bc, $0100                                  ; $4D6A: $01 $00 $01
    nop                                           ; $4D6D: $00
    ld [bc], a                                    ; $4D6E: $02
    ld bc, $0102                                  ; $4D6F: $01 $02 $01
    ld b, $01                                     ; $4D72: $06 $01
    ld b, $01                                     ; $4D74: $06 $01
    dec b                                         ; $4D76: $05
    ld [bc], a                                    ; $4D77: $02
    dec bc                                        ; $4D78: $0B
    inc b                                         ; $4D79: $04
    dec c                                         ; $4D7A: $0D
    ld [bc], a                                    ; $4D7B: $02
    ld a, [bc]                                    ; $4D7C: $0A
    dec b                                         ; $4D7D: $05
    rrca                                          ; $4D7E: $0F
    nop                                           ; $4D7F: $00
    ld e, $00                                     ; $4D80: $1E $00
    dec a                                         ; $4D82: $3D
    ld c, $4D                                     ; $4D83: $0E $4D
    ld [hl], $8D                                  ; $4D85: $36 $8D
    halt                                          ; $4D87: $76
    dec c                                         ; $4D88: $0D
    or $1F                                        ; $4D89: $F6 $1F
    ldh a, [$FF37]                                ; $4D8B: $F0 $37
    db $E3                                        ; $4D8D: $E3
    ld l, a                                       ; $4D8E: $6F
    rst RST_00                                    ; $4D8F: $C7
    ld a, a                                       ; $4D90: $7F
    adc $7F                                       ; $4D91: $CE $7F
    ret nz                                        ; $4D93: $C0

    rst RST_38                                    ; $4D94: $FF
    inc b                                         ; $4D95: $04
    and a                                         ; $4D96: $A7
    ld e, d                                       ; $4D97: $5A
    ccf                                           ; $4D98: $3F
    add $FF                                       ; $4D99: $C6 $FF
    ld a, $FE                                     ; $4D9B: $3E $FE
    db $FC                                        ; $4D9D: $FC
    db $FC                                        ; $4D9E: $FC
    ld a, b                                       ; $4D9F: $78
    ld hl, sp+$00                                 ; $4DA0: $F8 $00
    add a                                         ; $4DA2: $87
    ld a, b                                       ; $4DA3: $78
    sbc c                                         ; $4DA4: $99
    ld h, [hl]                                    ; $4DA5: $66
    db $FC                                        ; $4DA6: $FC
    ld e, e                                       ; $4DA7: $5B
    cp $19                                        ; $4DA8: $FE $19
    call nz, $F6BB                                ; $4DAA: $C4 $BB $F6
    add hl, bc                                    ; $4DAD: $09
    ld c, e                                       ; $4DAE: $4B
    or h                                          ; $4DAF: $B4
    rst RST_08                                    ; $4DB0: $CF
    ld sp, $00FF                                  ; $4DB1: $31 $FF $00
    rst RST_38                                    ; $4DB4: $FF
    cp a                                          ; $4DB5: $BF
    rst RST_38                                    ; $4DB6: $FF
    cp a                                          ; $4DB7: $BF
    rst RST_38                                    ; $4DB8: $FF
    nop                                           ; $4DB9: $00
    ld bc, $0300                                  ; $4DBA: $01 $00 $03
    nop                                           ; $4DBD: $00
    db $EC                                        ; $4DBE: $EC
    inc bc                                        ; $4DBF: $03
    rst RST_38                                    ; $4DC0: $FF
    nop                                           ; $4DC1: $00
    rst RST_38                                    ; $4DC2: $FF
    ld hl, sp-$01                                 ; $4DC3: $F8 $FF
    ld h, a                                       ; $4DC5: $67
    rst RST_38                                    ; $4DC6: $FF
    ld d, a                                       ; $4DC7: $57
    rst RST_38                                    ; $4DC8: $FF
    ld d, a                                       ; $4DC9: $57
    rst RST_38                                    ; $4DCA: $FF
    ld c, e                                       ; $4DCB: $4B
    rst RST_38                                    ; $4DCC: $FF
    add sp, -$11                                  ; $4DCD: $E8 $EF
    pop de                                        ; $4DCF: $D1
    rst RST_28                                    ; $4DD0: $EF
    inc de                                        ; $4DD1: $13
    ei                                            ; $4DD2: $FB
    add l                                         ; $4DD3: $85
    ei                                            ; $4DD4: $FB
    add h                                         ; $4DD5: $84
    and $19                                       ; $4DD6: $E6 $19
    add e                                         ; $4DD8: $83
    ld a, h                                       ; $4DD9: $7C
    pop af                                        ; $4DDA: $F1
    ld c, $7C                                     ; $4DDB: $0E $7C
    or e                                          ; $4DDD: $B3
    ld a, e                                       ; $4DDE: $7B
    add h                                         ; $4DDF: $84
    add b                                         ; $4DE0: $80
    nop                                           ; $4DE1: $00
    ret nz                                        ; $4DE2: $C0

    add b                                         ; $4DE3: $80
    ldh [$FFC0], a                                ; $4DE4: $E0 $C0
    ldh a, [$FFE0]                                ; $4DE6: $F0 $E0
    ld hl, sp-$10                                 ; $4DE8: $F8 $F0
    ld hl, sp+$00                                 ; $4DEA: $F8 $00
    ld hl, sp-$40                                 ; $4DEC: $F8 $C0
    db $FC                                        ; $4DEE: $FC
    ld hl, sp-$04                                 ; $4DEF: $F8 $FC
    ldh a, [$FFFC]                                ; $4DF1: $F0 $FC

jr_018_4DF3:
    ret z                                         ; $4DF3: $C8

    db $FC                                        ; $4DF4: $FC
    jr c, jr_018_4DF3                             ; $4DF5: $38 $FC

    ld a, b                                       ; $4DF7: $78
    ld a, h                                       ; $4DF8: $7C
    or b                                          ; $4DF9: $B0
    ldh a, [rLCDC]                                ; $4DFA: $F0 $40
    ret nz                                        ; $4DFC: $C0

    nop                                           ; $4DFD: $00
    ldh a, [rP1]                                  ; $4DFE: $F0 $00
    ld a, c                                       ; $4E00: $79
    nop                                           ; $4E01: $00
    inc bc                                        ; $4E02: $03
    ld bc, $0103                                  ; $4E03: $01 $03 $01
    inc bc                                        ; $4E06: $03
    ld bc, $0103                                  ; $4E07: $01 $03 $01
    inc bc                                        ; $4E0A: $03
    ld bc, $0003                                  ; $4E0B: $01 $03 $00
    ld bc, $0100                                  ; $4E0E: $01 $00 $01
    nop                                           ; $4E11: $00
    inc bc                                        ; $4E12: $03
    nop                                           ; $4E13: $00
    dec b                                         ; $4E14: $05
    ld [bc], a                                    ; $4E15: $02
    ld a, [bc]                                    ; $4E16: $0A
    dec b                                         ; $4E17: $05
    rrca                                          ; $4E18: $0F
    nop                                           ; $4E19: $00
    nop                                           ; $4E1A: $00
    nop                                           ; $4E1B: $00
    nop                                           ; $4E1C: $00
    nop                                           ; $4E1D: $00
    nop                                           ; $4E1E: $00
    nop                                           ; $4E1F: $00
    ldh a, [$FF8F]                                ; $4E20: $F0 $8F
    db $FC                                        ; $4E22: $FC
    sub e                                         ; $4E23: $93
    rst RST_38                                    ; $4E24: $FF
    sbc h                                         ; $4E25: $9C
    rst RST_38                                    ; $4E26: $FF
    sbc [hl]                                      ; $4E27: $9E
    rst RST_38                                    ; $4E28: $FF
    sbc [hl]                                      ; $4E29: $9E
    rst RST_38                                    ; $4E2A: $FF
    ld e, $FF                                     ; $4E2B: $1E $FF
    sbc $FF                                       ; $4E2D: $DE $FF
    xor $FF                                       ; $4E2F: $EE $FF
    ld l, $7F                                     ; $4E31: $2E $7F

Call_018_4E33:
    xor [hl]                                      ; $4E33: $AE
    ccf                                           ; $4E34: $3F
    adc $FF                                       ; $4E35: $CE $FF
    nop                                           ; $4E37: $00
    nop                                           ; $4E38: $00
    nop                                           ; $4E39: $00
    nop                                           ; $4E3A: $00
    nop                                           ; $4E3B: $00
    nop                                           ; $4E3C: $00
    nop                                           ; $4E3D: $00
    nop                                           ; $4E3E: $00
    nop                                           ; $4E3F: $00
    add a                                         ; $4E40: $87
    nop                                           ; $4E41: $00
    rra                                           ; $4E42: $1F
    dec b                                         ; $4E43: $05
    rra                                           ; $4E44: $1F
    dec c                                         ; $4E45: $0D
    rrca                                          ; $4E46: $0F
    ld b, $0F                                     ; $4E47: $06 $0F
    ld b, $07                                     ; $4E49: $06 $07
    inc bc                                        ; $4E4B: $03
    rlca                                          ; $4E4C: $07
    nop                                           ; $4E4D: $00
    inc bc                                        ; $4E4E: $03
    ld bc, $0103                                  ; $4E4F: $01 $03 $01
    ld bc, $0100                                  ; $4E52: $01 $00 $01
    nop                                           ; $4E55: $00
    ld [bc], a                                    ; $4E56: $02
    ld bc, $0003                                  ; $4E57: $01 $03 $00
    nop                                           ; $4E5A: $00
    nop                                           ; $4E5B: $00
    nop                                           ; $4E5C: $00
    nop                                           ; $4E5D: $00
    nop                                           ; $4E5E: $00
    nop                                           ; $4E5F: $00
    add sp, -$70                                  ; $4E60: $E8 $90
    ld hl, sp-$60                                 ; $4E62: $F8 $A0
    db $F4                                        ; $4E64: $F4
    ret z                                         ; $4E65: $C8

    db $FC                                        ; $4E66: $FC
    ret nc                                        ; $4E67: $D0

    ld a, [$FE64]                                 ; $4E68: $FA $64 $FE
    ld l, b                                       ; $4E6B: $68
    db $FD                                        ; $4E6C: $FD
    ldh a, [c]                                    ; $4E6D: $F2
    rst RST_38                                    ; $4E6E: $FF
    db $F4                                        ; $4E6F: $F4
    rst RST_38                                    ; $4E70: $FF
    ld a, [de]                                    ; $4E71: $1A
    ld e, [hl]                                    ; $4E72: $5E
    and b                                         ; $4E73: $A0
    adc h                                         ; $4E74: $8C
    ld [hl], b                                    ; $4E75: $70
    ld hl, sp+$00                                 ; $4E76: $F8 $00
    nop                                           ; $4E78: $00
    nop                                           ; $4E79: $00
    nop                                           ; $4E7A: $00
    nop                                           ; $4E7B: $00
    nop                                           ; $4E7C: $00
    nop                                           ; $4E7D: $00
    nop                                           ; $4E7E: $00
    nop                                           ; $4E7F: $00
    ld bc, $0200                                  ; $4E80: $01 $00 $02
    ld bc, $0102                                  ; $4E83: $01 $02 $01
    inc b                                         ; $4E86: $04
    inc bc                                        ; $4E87: $03
    inc b                                         ; $4E88: $04
    inc bc                                        ; $4E89: $03
    inc b                                         ; $4E8A: $04
    inc bc                                        ; $4E8B: $03
    inc b                                         ; $4E8C: $04
    inc bc                                        ; $4E8D: $03
    dec b                                         ; $4E8E: $05
    ld [bc], a                                    ; $4E8F: $02
    ld [hl+], a                                   ; $4E90: $22
    ld bc, $21D2                                  ; $4E91: $01 $D2 $21
    ld c, c                                       ; $4E94: $49
    or b                                          ; $4E95: $B0
    cp [hl]                                       ; $4E96: $BE
    ld b, b                                       ; $4E97: $40
    jp hl                                         ; $4E98: $E9


    ld d, $4F                                     ; $4E99: $16 $4F
    or b                                          ; $4E9B: $B0
    cp a                                          ; $4E9C: $BF
    ld c, a                                       ; $4E9D: $4F
    rst RST_38                                    ; $4E9E: $FF
    ccf                                           ; $4E9F: $3F
    rst RST_38                                    ; $4EA0: $FF
    ld a, [hl]                                    ; $4EA1: $7E
    ld a, a                                       ; $4EA2: $7F
    inc a                                         ; $4EA3: $3C

jr_018_4EA4:
    ccf                                           ; $4EA4: $3F
    nop                                           ; $4EA5: $00
    ld a, [hl]                                    ; $4EA6: $7E
    nop                                           ; $4EA7: $00
    ld a, a                                       ; $4EA8: $7F
    ld [hl-], a                                   ; $4EA9: $32
    ld a, a                                       ; $4EAA: $7F
    inc sp                                        ; $4EAB: $33
    ld a, a                                       ; $4EAC: $7F
    add hl, sp                                    ; $4EAD: $39
    ld a, a                                       ; $4EAE: $7F
    add hl, de                                    ; $4EAF: $19
    ccf                                           ; $4EB0: $3F
    add hl, de                                    ; $4EB1: $19
    ccf                                           ; $4EB2: $3F
    ld bc, $0E1F                                  ; $4EB3: $01 $1F $0E
    rra                                           ; $4EB6: $1F
    ld c, $3F                                     ; $4EB7: $0E $3F
    ld [bc], a                                    ; $4EB9: $02
    ld e, e                                       ; $4EBA: $5B
    dec h                                         ; $4EBB: $25
    and e                                         ; $4EBC: $A3
    ld e, l                                       ; $4EBD: $5D
    rst RST_38                                    ; $4EBE: $FF
    nop                                           ; $4EBF: $00
    ldh [rP1], a                                  ; $4EC0: $E0 $00
    jr nc, jr_018_4EA4                            ; $4EC2: $30 $E0

    ld d, b                                       ; $4EC4: $50
    ldh [$FF60], a                                ; $4EC5: $E0 $60
    ret nz                                        ; $4EC7: $C0

    and b                                         ; $4EC8: $A0
    ret nz                                        ; $4EC9: $C0

    ret nz                                        ; $4ECA: $C0

    add b                                         ; $4ECB: $80
    ldh [$FF80], a                                ; $4ECC: $E0 $80
    ret nc                                        ; $4ECE: $D0

    and b                                         ; $4ECF: $A0
    ret nc                                        ; $4ED0: $D0

    ld h, b                                       ; $4ED1: $60
    ld [hl], c                                    ; $4ED2: $71
    ret nz                                        ; $4ED3: $C0

    xor $31                                       ; $4ED4: $EE $31
    ld d, $F9                                     ; $4ED6: $16 $F9
    adc a                                         ; $4ED8: $8F
    ld a, b                                       ; $4ED9: $78
    call $FD32                                    ; $4EDA: $CD $32 $FD
    jp nz, Jump_018_73FC                          ; $4EDD: $C2 $FC $73

    rst RST_38                                    ; $4EE0: $FF
    ld l, b                                       ; $4EE1: $68
    rst RST_38                                    ; $4EE2: $FF
    ld d, a                                       ; $4EE3: $57
    rst RST_38                                    ; $4EE4: $FF
    nop                                           ; $4EE5: $00
    rst RST_38                                    ; $4EE6: $FF
    cpl                                           ; $4EE7: $2F
    ld a, a                                       ; $4EE8: $7F
    cpl                                           ; $4EE9: $2F
    rst RST_38                                    ; $4EEA: $FF
    nop                                           ; $4EEB: $00
    db $FC                                        ; $4EEC: $FC
    add e                                         ; $4EED: $83
    rst RST_28                                    ; $4EEE: $EF
    call nc, $DBE7                                ; $4EEF: $D4 $E7 $DB
    rst RST_20                                    ; $4EF2: $E7
    db $DB                                        ; $4EF3: $DB
    rst RST_38                                    ; $4EF4: $FF
    ldh [$FFF1], a                                ; $4EF5: $E0 $F1
    ldh [$FFF1], a                                ; $4EF7: $E0 $F1
    ldh [$FFF1], a                                ; $4EF9: $E0 $F1
    ldh [$FFF1], a                                ; $4EFB: $E0 $F1
    ld h, b                                       ; $4EFD: $60
    pop hl                                        ; $4EFE: $E1
    nop                                           ; $4EFF: $00
    ldh a, [rP1]                                  ; $4F00: $F0 $00
    ld [$FFF0], sp                                ; $4F02: $08 $F0 $FF
    nop                                           ; $4F05: $00
    rlca                                          ; $4F06: $07
    ei                                            ; $4F07: $FB
    rst RST_00                                    ; $4F08: $C7
    jr c, @-$13                                   ; $4F09: $38 $EB

    call nc, $C1FF                                ; $4F0B: $D4 $FF $C1
    swap l                                        ; $4F0E: $CB $35
    adc a                                         ; $4F10: $8F
    ld [hl], c                                    ; $4F11: $71
    rst RST_38                                    ; $4F12: $FF
    adc l                                         ; $4F13: $8D
    rst RST_38                                    ; $4F14: $FF
    ld bc, $ECFF                                  ; $4F15: $01 $FF $EC
    cp $ED                                        ; $4F18: $FE $ED
    cp $01                                        ; $4F1A: $FE $01
    rrca                                          ; $4F1C: $0F
    ldh a, [$FFF1]                                ; $4F1D: $F0 $F1
    ld c, $FD                                     ; $4F1F: $0E $FD
    add d                                         ; $4F21: $82
    cp h                                          ; $4F22: $BC
    ld b, e                                       ; $4F23: $43
    ld c, $F1                                     ; $4F24: $0E $F1
    dec e                                         ; $4F26: $1D
    ldh [c], a                                    ; $4F27: $E2
    rst RST_18                                    ; $4F28: $DF
    jr nz, @+$01                                  ; $4F29: $20 $FF

    ret c                                         ; $4F2B: $D8

    rst RST_38                                    ; $4F2C: $FF
    jp c, $1AFF                                   ; $4F2D: $DA $FF $1A

    rst RST_38                                    ; $4F30: $FF
    jp c, Jump_000_00FF                           ; $4F31: $DA $FF $00

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
    ldh a, [rP1]                                  ; $4F40: $F0 $00
    ldh a, [$FFE0]                                ; $4F42: $F0 $E0
    ld hl, sp-$10                                 ; $4F44: $F8 $F0
    ld hl, sp+$70                                 ; $4F46: $F8 $70
    ld hl, sp+$70                                 ; $4F48: $F8 $70
    db $FC                                        ; $4F4A: $FC
    ld a, b                                       ; $4F4B: $78
    db $FC                                        ; $4F4C: $FC
    cp b                                          ; $4F4D: $B8
    db $FC                                        ; $4F4E: $FC
    add b                                         ; $4F4F: $80
    db $FC                                        ; $4F50: $FC
    nop                                           ; $4F51: $00
    inc a                                         ; $4F52: $3C
    ret c                                         ; $4F53: $D8

    ld a, [hl]                                    ; $4F54: $7E
    sbc h                                         ; $4F55: $9C
    sbc [hl]                                      ; $4F56: $9E
    ld l, h                                       ; $4F57: $6C
    ld a, $CC                                     ; $4F58: $3E $CC
    rst RST_18                                    ; $4F5A: $DF
    ld l, $9F                                     ; $4F5B: $2E $9F
    ld h, [hl]                                    ; $4F5D: $66
    rst RST_38                                    ; $4F5E: $FF
    inc b                                         ; $4F5F: $04
    ld e, h                                       ; $4F60: $5C
    and b                                         ; $4F61: $A0
    and b                                         ; $4F62: $A0
    ld b, b                                       ; $4F63: $40
    ret nz                                        ; $4F64: $C0

    nop                                           ; $4F65: $00
    add b                                         ; $4F66: $80
    nop                                           ; $4F67: $00
    ld b, b                                       ; $4F68: $40
    add b                                         ; $4F69: $80
    ld b, b                                       ; $4F6A: $40
    add b                                         ; $4F6B: $80
    ret nz                                        ; $4F6C: $C0

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
    nop                                           ; $4F78: $00
    nop                                           ; $4F79: $00
    nop                                           ; $4F7A: $00
    nop                                           ; $4F7B: $00
    nop                                           ; $4F7C: $00
    nop                                           ; $4F7D: $00
    nop                                           ; $4F7E: $00
    nop                                           ; $4F7F: $00
    nop                                           ; $4F80: $00
    nop                                           ; $4F81: $00
    nop                                           ; $4F82: $00
    nop                                           ; $4F83: $00
    nop                                           ; $4F84: $00
    nop                                           ; $4F85: $00
    nop                                           ; $4F86: $00
    nop                                           ; $4F87: $00
    nop                                           ; $4F88: $00
    nop                                           ; $4F89: $00
    nop                                           ; $4F8A: $00
    nop                                           ; $4F8B: $00
    nop                                           ; $4F8C: $00
    nop                                           ; $4F8D: $00
    nop                                           ; $4F8E: $00
    nop                                           ; $4F8F: $00
    nop                                           ; $4F90: $00
    nop                                           ; $4F91: $00
    nop                                           ; $4F92: $00
    nop                                           ; $4F93: $00
    ld bc, $0100                                  ; $4F94: $01 $00 $01
    nop                                           ; $4F97: $00
    ld [bc], a                                    ; $4F98: $02
    ld bc, $0003                                  ; $4F99: $01 $03 $00
    ld [bc], a                                    ; $4F9C: $02
    ld bc, $0003                                  ; $4F9D: $01 $03 $00
    add c                                         ; $4FA0: $81
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
    nop                                           ; $4FAC: $00
    nop                                           ; $4FAD: $00
    nop                                           ; $4FAE: $00
    nop                                           ; $4FAF: $00
    nop                                           ; $4FB0: $00
    nop                                           ; $4FB1: $00
    nop                                           ; $4FB2: $00
    nop                                           ; $4FB3: $00
    nop                                           ; $4FB4: $00
    nop                                           ; $4FB5: $00
    nop                                           ; $4FB6: $00
    nop                                           ; $4FB7: $00
    nop                                           ; $4FB8: $00
    nop                                           ; $4FB9: $00
    nop                                           ; $4FBA: $00
    nop                                           ; $4FBB: $00
    nop                                           ; $4FBC: $00
    nop                                           ; $4FBD: $00
    nop                                           ; $4FBE: $00
    nop                                           ; $4FBF: $00
    nop                                           ; $4FC0: $00
    nop                                           ; $4FC1: $00
    nop                                           ; $4FC2: $00
    nop                                           ; $4FC3: $00
    nop                                           ; $4FC4: $00
    nop                                           ; $4FC5: $00
    nop                                           ; $4FC6: $00
    nop                                           ; $4FC7: $00
    nop                                           ; $4FC8: $00
    nop                                           ; $4FC9: $00
    jr jr_018_4FCC                                ; $4FCA: $18 $00

jr_018_4FCC:
    ld d, $08                                     ; $4FCC: $16 $08
    add hl, de                                    ; $4FCE: $19
    ld b, $16                                     ; $4FCF: $06 $16
    add hl, bc                                    ; $4FD1: $09
    ld de, $090E                                  ; $4FD2: $11 $0E $09
    ld b, $05                                     ; $4FD5: $06 $05
    ld [bc], a                                    ; $4FD7: $02
    inc bc                                        ; $4FD8: $03
    nop                                           ; $4FD9: $00
    inc bc                                        ; $4FDA: $03
    ld bc, $0103                                  ; $4FDB: $01 $03 $01
    inc bc                                        ; $4FDE: $03
    nop                                           ; $4FDF: $00
    nop                                           ; $4FE0: $00
    nop                                           ; $4FE1: $00
    nop                                           ; $4FE2: $00
    nop                                           ; $4FE3: $00
    nop                                           ; $4FE4: $00
    nop                                           ; $4FE5: $00
    nop                                           ; $4FE6: $00
    nop                                           ; $4FE7: $00
    ret nz                                        ; $4FE8: $C0

    nop                                           ; $4FE9: $00
    ldh a, [rLCDC]                                ; $4FEA: $F0 $40
    db $FC                                        ; $4FEC: $FC
    ld [hl], b                                    ; $4FED: $70
    rst RST_38                                    ; $4FEE: $FF
    db $F4                                        ; $4FEF: $F4
    rst RST_38                                    ; $4FF0: $FF
    rst RST_28                                    ; $4FF1: $EF
    rst RST_38                                    ; $4FF2: $FF
    ld l, a                                       ; $4FF3: $6F
    rst RST_38                                    ; $4FF4: $FF
    add e                                         ; $4FF5: $83
    rst RST_38                                    ; $4FF6: $FF
    ldh a, [$FFFE]                                ; $4FF7: $F0 $FE
    db $FD                                        ; $4FF9: $FD
    cp $3D                                        ; $4FFA: $FE $3D
    ld a, $0D                                     ; $4FFC: $3E $0D
    rrca                                          ; $4FFE: $0F
    nop                                           ; $4FFF: $00
    add b                                         ; $5000: $80
    nop                                           ; $5001: $00
    sbc b                                         ; $5002: $98
    nop                                           ; $5003: $00
    sub h                                         ; $5004: $94
    ld [$04CB], sp                                ; $5005: $08 $CB $04
    scf                                           ; $5008: $37
    rr a                                          ; $5009: $CB $1F
    and $1E                                       ; $500B: $E6 $1E
    pop hl                                        ; $500D: $E1

jr_018_500E:
    ld a, a                                       ; $500E: $7F
    sbc b                                         ; $500F: $98
    db $FC                                        ; $5010: $FC
    dec sp                                        ; $5011: $3B

jr_018_5012:
    db $FC                                        ; $5012: $FC
    dec sp                                        ; $5013: $3B

jr_018_5014:
    ccf                                           ; $5014: $3F
    ret z                                         ; $5015: $C8

jr_018_5016:
    inc e                                         ; $5016: $1C
    db $EB                                        ; $5017: $EB
    inc e                                         ; $5018: $1C
    db $EB                                        ; $5019: $EB
    ld a, h                                       ; $501A: $7C
    adc e                                         ; $501B: $8B
    sbc [hl]                                      ; $501C: $9E
    ld bc, $0001                                  ; $501D: $01 $01 $00
    pop hl                                        ; $5020: $E1
    nop                                           ; $5021: $00
    pop af                                        ; $5022: $F1
    ld h, b                                       ; $5023: $60
    ld a, [$FF61]                                 ; $5024: $FA $61 $FF
    ld l, b                                       ; $5027: $68
    rst RST_38                                    ; $5028: $FF
    ld h, c                                       ; $5029: $61
    rst RST_38                                    ; $502A: $FF
    ld l, l                                       ; $502B: $6D
    rst RST_38                                    ; $502C: $FF
    ld h, l                                       ; $502D: $65
    rst RST_30                                    ; $502E: $F7
    ld [$64FB], sp                                ; $502F: $08 $FB $64
    rst RST_38                                    ; $5032: $FF
    inc bc                                        ; $5033: $03
    rst RST_30                                    ; $5034: $F7
    ld l, e                                       ; $5035: $6B
    di                                            ; $5036: $F3
    ld l, h                                       ; $5037: $6C
    ldh a, [c]                                    ; $5038: $F2
    ld l, l                                       ; $5039: $6D
    rst RST_38                                    ; $503A: $FF
    ld b, b                                       ; $503B: $40
    cp $39                                        ; $503C: $FE $39
    rst RST_38                                    ; $503E: $FF
    db $FC                                        ; $503F: $FC
    ld c, $00                                     ; $5040: $0E $00
    scf                                           ; $5042: $37
    ld c, $59                                     ; $5043: $0E $59
    ld a, $A1                                     ; $5045: $3E $A1
    ld a, [hl]                                    ; $5047: $7E
    add $38                                       ; $5048: $C6 $38
    cp b                                          ; $504A: $B8
    ret nz                                        ; $504B: $C0

    sub b                                         ; $504C: $90
    ldh [$FFE0], a                                ; $504D: $E0 $E0
    nop                                           ; $504F: $00
    jr nz, jr_018_5012                            ; $5050: $20 $C0

    jr nz, jr_018_5014                            ; $5052: $20 $C0

    jr nz, jr_018_5016                            ; $5054: $20 $C0

    ldh [rP1], a                                  ; $5056: $E0 $00
    db $10                                        ; $5058: $10
    ldh [$FFA8], a                                ; $5059: $E0 $A8
    ld d, b                                       ; $505B: $50
    xor b                                         ; $505C: $A8
    ld d, b                                       ; $505D: $50
    jr z, @-$2E                                   ; $505E: $28 $D0

    ld bc, $0300                                  ; $5060: $01 $00 $03
    nop                                           ; $5063: $00
    rrca                                          ; $5064: $0F
    ld [bc], a                                    ; $5065: $02
    ccf                                           ; $5066: $3F
    ld b, $C7                                     ; $5067: $06 $C7
    dec sp                                        ; $5069: $3B
    sbc a                                         ; $506A: $9F
    ld h, e                                       ; $506B: $63
    rst RST_20                                    ; $506C: $E7
    jr jr_018_500E                                ; $506D: $18 $9F

    ld h, e                                       ; $506F: $63
    rst RST_20                                    ; $5070: $E7
    inc bc                                        ; $5071: $03
    inc bc                                        ; $5072: $03
    nop                                           ; $5073: $00
    nop                                           ; $5074: $00
    nop                                           ; $5075: $00
    nop                                           ; $5076: $00
    nop                                           ; $5077: $00
    nop                                           ; $5078: $00
    nop                                           ; $5079: $00
    nop                                           ; $507A: $00
    nop                                           ; $507B: $00
    nop                                           ; $507C: $00
    nop                                           ; $507D: $00
    nop                                           ; $507E: $00
    nop                                           ; $507F: $00
    add hl, de                                    ; $5080: $19
    nop                                           ; $5081: $00
    ld a, [hl]                                    ; $5082: $7E
    add hl, de                                    ; $5083: $19
    db $FC                                        ; $5084: $FC
    ld a, e                                       ; $5085: $7B
    db $FC                                        ; $5086: $FC
    ei                                            ; $5087: $FB
    db $FC                                        ; $5088: $FC
    di                                            ; $5089: $F3
    rst RST_38                                    ; $508A: $FF
    ret nz                                        ; $508B: $C0

    cp $0C                                        ; $508C: $FE $0C
    cp $3C                                        ; $508E: $FE $3C
    cp $F8                                        ; $5090: $FE $F8
    ld hl, sp-$20                                 ; $5092: $F8 $E0
    ldh [$FF80], a                                ; $5094: $E0 $80
    add b                                         ; $5096: $80
    nop                                           ; $5097: $00
    inc bc                                        ; $5098: $03
    nop                                           ; $5099: $00
    ld [bc], a                                    ; $509A: $02
    ld bc, $0001                                  ; $509B: $01 $01 $00
    nop                                           ; $509E: $00
    nop                                           ; $509F: $00
    ld b, a                                       ; $50A0: $47
    nop                                           ; $50A1: $00
    xor a                                         ; $50A2: $AF
    ld b, a                                       ; $50A3: $47

jr_018_50A4:
    cp a                                          ; $50A4: $BF
    ld c, a                                       ; $50A5: $4F
    rst RST_28                                    ; $50A6: $EF
    rla                                           ; $50A7: $17
    rst RST_28                                    ; $50A8: $EF
    inc de                                        ; $50A9: $13
    sbc e                                         ; $50AA: $9B
    ld h, h                                       ; $50AB: $64
    rrca                                          ; $50AC: $0F
    pop af                                        ; $50AD: $F1
    push bc                                       ; $50AE: $C5
    ld a, [hl-]                                   ; $50AF: $3A
    inc sp                                        ; $50B0: $33
    dec c                                         ; $50B1: $0D

jr_018_50B2:
    rrca                                          ; $50B2: $0F
    nop                                           ; $50B3: $00
    nop                                           ; $50B4: $00
    nop                                           ; $50B5: $00
    nop                                           ; $50B6: $00
    nop                                           ; $50B7: $00
    nop                                           ; $50B8: $00
    nop                                           ; $50B9: $00
    nop                                           ; $50BA: $00
    nop                                           ; $50BB: $00
    nop                                           ; $50BC: $00
    nop                                           ; $50BD: $00
    nop                                           ; $50BE: $00
    nop                                           ; $50BF: $00
    rst RST_38                                    ; $50C0: $FF
    dec sp                                        ; $50C1: $3B
    rst RST_38                                    ; $50C2: $FF
    rlca                                          ; $50C3: $07
    rst RST_38                                    ; $50C4: $FF
    rst RST_20                                    ; $50C5: $E7
    rst RST_38                                    ; $50C6: $FF
    rst RST_00                                    ; $50C7: $C7
    rst RST_38                                    ; $50C8: $FF
    ld h, $FE                                     ; $50C9: $26 $FE
    ldh [$FFF0], a                                ; $50CB: $E0 $F0
    ldh [$FFF0], a                                ; $50CD: $E0 $F0
    ret nz                                        ; $50CF: $C0

    ret nz                                        ; $50D0: $C0

    nop                                           ; $50D1: $00
    nop                                           ; $50D2: $00
    nop                                           ; $50D3: $00
    nop                                           ; $50D4: $00
    nop                                           ; $50D5: $00
    nop                                           ; $50D6: $00
    nop                                           ; $50D7: $00
    nop                                           ; $50D8: $00
    nop                                           ; $50D9: $00
    nop                                           ; $50DA: $00
    nop                                           ; $50DB: $00
    nop                                           ; $50DC: $00
    nop                                           ; $50DD: $00
    nop                                           ; $50DE: $00
    nop                                           ; $50DF: $00
    jr z, jr_018_50B2                             ; $50E0: $28 $D0

    jr nc, jr_018_50A4                            ; $50E2: $30 $C0

    ldh [rP1], a                                  ; $50E4: $E0 $00
    add b                                         ; $50E6: $80
    nop                                           ; $50E7: $00
    add b                                         ; $50E8: $80
    nop                                           ; $50E9: $00
    add b                                         ; $50EA: $80
    nop                                           ; $50EB: $00
    add b                                         ; $50EC: $80
    nop                                           ; $50ED: $00
    add b                                         ; $50EE: $80
    nop                                           ; $50EF: $00
    nop                                           ; $50F0: $00
    nop                                           ; $50F1: $00
    nop                                           ; $50F2: $00
    nop                                           ; $50F3: $00
    nop                                           ; $50F4: $00
    nop                                           ; $50F5: $00
    nop                                           ; $50F6: $00
    nop                                           ; $50F7: $00
    nop                                           ; $50F8: $00
    nop                                           ; $50F9: $00
    nop                                           ; $50FA: $00
    nop                                           ; $50FB: $00
    nop                                           ; $50FC: $00
    nop                                           ; $50FD: $00
    nop                                           ; $50FE: $00
    nop                                           ; $50FF: $00
    inc bc                                        ; $5100: $03
    nop                                           ; $5101: $00
    rrca                                          ; $5102: $0F
    ld bc, $0E71                                  ; $5103: $01 $71 $0E
    adc a                                         ; $5106: $8F
    ld [hl], b                                    ; $5107: $70
    pop af                                        ; $5108: $F1
    ld c, $81                                     ; $5109: $0E $81
    ld a, [hl]                                    ; $510B: $7E
    rst RST_38                                    ; $510C: $FF
    nop                                           ; $510D: $00
    ld bc, $0000                                  ; $510E: $01 $00 $00
    nop                                           ; $5111: $00
    nop                                           ; $5112: $00
    nop                                           ; $5113: $00
    nop                                           ; $5114: $00
    nop                                           ; $5115: $00
    nop                                           ; $5116: $00
    nop                                           ; $5117: $00
    nop                                           ; $5118: $00
    nop                                           ; $5119: $00
    nop                                           ; $511A: $00
    nop                                           ; $511B: $00
    nop                                           ; $511C: $00
    nop                                           ; $511D: $00
    nop                                           ; $511E: $00
    nop                                           ; $511F: $00
    rlca                                          ; $5120: $07
    nop                                           ; $5121: $00
    rrca                                          ; $5122: $0F
    dec b                                         ; $5123: $05
    rrca                                          ; $5124: $0F
    dec b                                         ; $5125: $05
    rra                                           ; $5126: $1F
    dec bc                                        ; $5127: $0B
    rra                                           ; $5128: $1F
    dec bc                                        ; $5129: $0B
    ccf                                           ; $512A: $3F
    rlca                                          ; $512B: $07
    ccf                                           ; $512C: $3F
    rra                                           ; $512D: $1F
    ld a, a                                       ; $512E: $7F
    jr c, @+$01                                   ; $512F: $38 $FF

    rlca                                          ; $5131: $07
    rst RST_38                                    ; $5132: $FF
    rst RST_18                                    ; $5133: $DF
    rst RST_38                                    ; $5134: $FF
    call c, $E0FF                                 ; $5135: $DC $FF $E0
    rst RST_38                                    ; $5138: $FF
    pop hl                                        ; $5139: $E1
    rst RST_38                                    ; $513A: $FF
    rra                                           ; $513B: $1F
    rst RST_38                                    ; $513C: $FF
    ld hl, sp-$08                                 ; $513D: $F8 $F8
    nop                                           ; $513F: $00
    ldh [rP1], a                                  ; $5140: $E0 $00
    ret c                                         ; $5142: $D8

    and b                                         ; $5143: $A0
    call nz, $C3B8                                ; $5144: $C4 $B8 $C3
    cp h                                          ; $5147: $BC
    rst RST_08                                    ; $5148: $CF
    or e                                          ; $5149: $B3
    rst RST_28                                    ; $514A: $EF
    rst RST_10                                    ; $514B: $D7
    rst RST_38                                    ; $514C: $FF
    rlca                                          ; $514D: $07
    add a                                         ; $514E: $87
    ld a, e                                       ; $514F: $7B
    add e                                         ; $5150: $83
    ld a, l                                       ; $5151: $7D
    add e                                         ; $5152: $83
    ld a, l                                       ; $5153: $7D
    adc a                                         ; $5154: $8F
    ld [hl], c                                    ; $5155: $71
    pop af                                        ; $5156: $F1
    nop                                           ; $5157: $00
    add e                                         ; $5158: $83
    nop                                           ; $5159: $00
    add h                                         ; $515A: $84
    inc bc                                        ; $515B: $03
    dec bc                                        ; $515C: $0B
    inc b                                         ; $515D: $04
    ld c, $01                                     ; $515E: $0E $01
    inc e                                         ; $5160: $1C
    nop                                           ; $5161: $00
    ld e, $0C                                     ; $5162: $1E $0C
    rra                                           ; $5164: $1F
    inc c                                         ; $5165: $0C
    rra                                           ; $5166: $1F
    dec c                                         ; $5167: $0D
    rra                                           ; $5168: $1F
    dec c                                         ; $5169: $0D
    ccf                                           ; $516A: $3F
    inc c                                         ; $516B: $0C
    rst RST_18                                    ; $516C: $DF
    inc l                                         ; $516D: $2C
    rst RST_38                                    ; $516E: $FF
    nop                                           ; $516F: $00
    sbc [hl]                                      ; $5170: $9E
    ld l, l                                       ; $5171: $6D
    sbc [hl]                                      ; $5172: $9E
    ld h, c                                       ; $5173: $61
    rst RST_38                                    ; $5174: $FF
    inc c                                         ; $5175: $0C
    sbc a                                         ; $5176: $9F
    ld l, h                                       ; $5177: $6C
    sbc a                                         ; $5178: $9F
    ld h, b                                       ; $5179: $60
    sbc a                                         ; $517A: $9F
    ld h, c                                       ; $517B: $61

jr_018_517C:
    rst RST_38                                    ; $517C: $FF
    inc e                                         ; $517D: $1C

jr_018_517E:
    rst RST_38                                    ; $517E: $FF
    ld a, a                                       ; $517F: $7F
    ld bc, $0600                                  ; $5180: $01 $00 $06
    ld bc, $070B                                  ; $5183: $01 $0B $07
    inc d                                         ; $5186: $14
    rrca                                          ; $5187: $0F
    jr c, jr_018_5191                             ; $5188: $38 $07

    scf                                           ; $518A: $37
    jr jr_018_51DF                                ; $518B: $18 $52

    inc a                                         ; $518D: $3C
    db $FC                                        ; $518E: $FC
    nop                                           ; $518F: $00
    db $E4                                        ; $5190: $E4

jr_018_5191:
    cp b                                          ; $5191: $B8
    db $E4                                        ; $5192: $E4
    jr c, jr_018_5214                             ; $5193: $38 $7F

    and b                                         ; $5195: $A0
    ld sp, hl                                     ; $5196: $F9
    ld c, $59                                     ; $5197: $0E $59
    and [hl]                                      ; $5199: $A6
    ld e, l                                       ; $519A: $5D
    cp d                                          ; $519B: $BA
    sbc l                                         ; $519C: $9D
    ld a, d                                       ; $519D: $7A
    ld a, d                                       ; $519E: $7A
    add h                                         ; $519F: $84
    nop                                           ; $51A0: $00
    nop                                           ; $51A1: $00
    nop                                           ; $51A2: $00
    nop                                           ; $51A3: $00
    nop                                           ; $51A4: $00
    nop                                           ; $51A5: $00
    nop                                           ; $51A6: $00
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
    ret nz                                        ; $51B6: $C0

    nop                                           ; $51B7: $00
    ldh [$FFC0], a                                ; $51B8: $E0 $C0
    jr nz, jr_018_517C                            ; $51BA: $20 $C0

    jr nz, jr_018_517E                            ; $51BC: $20 $C0

    ret nz                                        ; $51BE: $C0

    nop                                           ; $51BF: $00
    ld a, a                                       ; $51C0: $7F
    sbc h                                         ; $51C1: $9C
    rra                                           ; $51C2: $1F
    db $E3                                        ; $51C3: $E3
    rlca                                          ; $51C4: $07
    ei                                            ; $51C5: $FB
    rst RST_00                                    ; $51C6: $C7
    dec sp                                        ; $51C7: $3B
    cpl                                           ; $51C8: $2F
    ret nc                                        ; $51C9: $D0

    ld e, h                                       ; $51CA: $5C
    and b                                         ; $51CB: $A0
    ret nc                                        ; $51CC: $D0

    jr nz, @+$22                                  ; $51CD: $20 $20

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

jr_018_51DF:
    nop                                           ; $51DF: $00
    cp $78                                        ; $51E0: $FE $78
    cp $F0                                        ; $51E2: $FE $F0
    rst RST_38                                    ; $51E4: $FF
    adc $FF                                       ; $51E5: $CE $FF
    ld a, $FF                                     ; $51E7: $3E $FF
    cp [hl]                                       ; $51E9: $BE
    cp $B8                                        ; $51EA: $FE $B8
    ld hl, sp-$60                                 ; $51EC: $F8 $A0
    ldh [rP1], a                                  ; $51EE: $E0 $00
    nop                                           ; $51F0: $00
    nop                                           ; $51F1: $00
    nop                                           ; $51F2: $00
    nop                                           ; $51F3: $00
    nop                                           ; $51F4: $00
    nop                                           ; $51F5: $00
    nop                                           ; $51F6: $00
    nop                                           ; $51F7: $00
    nop                                           ; $51F8: $00
    nop                                           ; $51F9: $00
    nop                                           ; $51FA: $00
    nop                                           ; $51FB: $00
    nop                                           ; $51FC: $00
    nop                                           ; $51FD: $00
    nop                                           ; $51FE: $00
    nop                                           ; $51FF: $00
    dec b                                         ; $5200: $05
    ld [bc], a                                    ; $5201: $02
    inc bc                                        ; $5202: $03
    nop                                           ; $5203: $00
    ld bc, $0000                                  ; $5204: $01 $00 $00
    nop                                           ; $5207: $00
    nop                                           ; $5208: $00
    nop                                           ; $5209: $00
    nop                                           ; $520A: $00
    nop                                           ; $520B: $00
    nop                                           ; $520C: $00
    nop                                           ; $520D: $00
    nop                                           ; $520E: $00
    nop                                           ; $520F: $00
    nop                                           ; $5210: $00
    nop                                           ; $5211: $00
    nop                                           ; $5212: $00
    nop                                           ; $5213: $00

jr_018_5214:
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
    nop                                           ; $5220: $00
    nop                                           ; $5221: $00
    nop                                           ; $5222: $00
    nop                                           ; $5223: $00
    nop                                           ; $5224: $00
    nop                                           ; $5225: $00
    nop                                           ; $5226: $00
    nop                                           ; $5227: $00
    nop                                           ; $5228: $00
    nop                                           ; $5229: $00
    ld bc, $0200                                  ; $522A: $01 $00 $02
    ld bc, $0205                                  ; $522D: $01 $05 $02
    rlca                                          ; $5230: $07
    ld bc, $0307                                  ; $5231: $01 $07 $03
    rlca                                          ; $5234: $07
    inc bc                                        ; $5235: $03
    rlca                                          ; $5236: $07
    inc bc                                        ; $5237: $03
    rlca                                          ; $5238: $07
    inc bc                                        ; $5239: $03
    rlca                                          ; $523A: $07
    inc bc                                        ; $523B: $03
    rlca                                          ; $523C: $07
    inc bc                                        ; $523D: $03
    rlca                                          ; $523E: $07
    ld [bc], a                                    ; $523F: $02
    ld [$67F7], sp                                ; $5240: $08 $F7 $67
    sbc b                                         ; $5243: $98
    ld a, [$A365]                                 ; $5244: $FA $65 $A3
    ld e, l                                       ; $5247: $5D
    db $E3                                        ; $5248: $E3
    inc e                                         ; $5249: $1C
    rst RST_20                                    ; $524A: $E7
    sbc e                                         ; $524B: $9B
    rst RST_38                                    ; $524C: $FF
    and h                                         ; $524D: $A4
    rst RST_38                                    ; $524E: $FF
    add e                                         ; $524F: $83
    rst RST_38                                    ; $5250: $FF
    cp e                                          ; $5251: $BB
    rst RST_38                                    ; $5252: $FF
    cp e                                          ; $5253: $BB
    rst RST_38                                    ; $5254: $FF
    add b                                         ; $5255: $80
    xor a                                         ; $5256: $AF
    ld d, b                                       ; $5257: $50
    cp $01                                        ; $5258: $FE $01
    add hl, bc                                    ; $525A: $09
    or $FE                                        ; $525B: $F6 $FE
    nop                                           ; $525D: $00
    db $FC                                        ; $525E: $FC
    ld hl, sp-$20                                 ; $525F: $F8 $E0
    nop                                           ; $5261: $00
    inc e                                         ; $5262: $1C
    ldh [$FFE7], a                                ; $5263: $E0 $E7
    jr @-$5F                                      ; $5265: $18 $9F

    ldh [$FFE7], a                                ; $5267: $E0 $E7
    ld a, b                                       ; $5269: $78
    rst RST_38                                    ; $526A: $FF
    sbc b                                         ; $526B: $98
    rst RST_38                                    ; $526C: $FF
    ld h, b                                       ; $526D: $60
    rst RST_38                                    ; $526E: $FF
    ei                                            ; $526F: $FB
    rst RST_38                                    ; $5270: $FF
    db $E3                                        ; $5271: $E3
    rst RST_38                                    ; $5272: $FF
    rlca                                          ; $5273: $07
    rst RST_38                                    ; $5274: $FF
    rlca                                          ; $5275: $07
    rst RST_38                                    ; $5276: $FF
    ld bc, $06BF                                  ; $5277: $01 $BF $06
    ccf                                           ; $527A: $3F
    rrca                                          ; $527B: $0F
    rrca                                          ; $527C: $0F
    inc bc                                        ; $527D: $03
    inc bc                                        ; $527E: $03
    nop                                           ; $527F: $00
    nop                                           ; $5280: $00
    nop                                           ; $5281: $00
    nop                                           ; $5282: $00
    nop                                           ; $5283: $00
    nop                                           ; $5284: $00
    nop                                           ; $5285: $00
    nop                                           ; $5286: $00
    nop                                           ; $5287: $00
    nop                                           ; $5288: $00
    nop                                           ; $5289: $00
    nop                                           ; $528A: $00
    nop                                           ; $528B: $00
    jr nc, jr_018_528E                            ; $528C: $30 $00

jr_018_528E:
    db $EC                                        ; $528E: $EC
    db $10                                        ; $528F: $10
    ldh a, [c]                                    ; $5290: $F2
    call z, $ECF2                                 ; $5291: $CC $F2 $EC
    ldh a, [c]                                    ; $5294: $F2
    db $EC                                        ; $5295: $EC
    ldh a, [c]                                    ; $5296: $F2
    db $EC                                        ; $5297: $EC
    ldh a, [c]                                    ; $5298: $F2
    ld l, h                                       ; $5299: $6C
    ldh a, [c]                                    ; $529A: $F2
    adc h                                         ; $529B: $8C
    db $F4                                        ; $529C: $F4
    add sp, -$08                                  ; $529D: $E8 $F8
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
    jr nc, jr_018_52B8                            ; $52B6: $30 $00

jr_018_52B8:
    call Call_018_4330                            ; $52B8: $CD $30 $43
    cp h                                          ; $52BB: $BC
    ld [hl], c                                    ; $52BC: $71
    cp [hl]                                       ; $52BD: $BE
    db $FD                                        ; $52BE: $FD
    ld c, $00                                     ; $52BF: $0E $00
    nop                                           ; $52C1: $00
    nop                                           ; $52C2: $00
    nop                                           ; $52C3: $00
    nop                                           ; $52C4: $00
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
    ldh [rP1], a                                  ; $52D6: $E0 $00
    sub b                                         ; $52D8: $90
    ldh [$FF88], a                                ; $52D9: $E0 $88
    ldh a, [$FFE8]                                ; $52DB: $F0 $E8
    db $10                                        ; $52DD: $10
    rra                                           ; $52DE: $1F
    ldh [rTAC], a                                 ; $52DF: $E0 $07
    nop                                           ; $52E1: $00
    nop                                           ; $52E2: $00
    nop                                           ; $52E3: $00
    nop                                           ; $52E4: $00
    nop                                           ; $52E5: $00
    nop                                           ; $52E6: $00
    nop                                           ; $52E7: $00
    nop                                           ; $52E8: $00
    nop                                           ; $52E9: $00
    inc bc                                        ; $52EA: $03
    nop                                           ; $52EB: $00
    inc bc                                        ; $52EC: $03
    ld bc, $0307                                  ; $52ED: $01 $07 $03
    rlca                                          ; $52F0: $07
    inc bc                                        ; $52F1: $03
    rlca                                          ; $52F2: $07
    inc bc                                        ; $52F3: $03
    rrca                                          ; $52F4: $0F
    rlca                                          ; $52F5: $07
    rrca                                          ; $52F6: $0F
    nop                                           ; $52F7: $00
    rrca                                          ; $52F8: $0F
    rlca                                          ; $52F9: $07
    rra                                           ; $52FA: $1F
    rrca                                          ; $52FB: $0F
    rra                                           ; $52FC: $1F
    ld bc, $152B                                  ; $52FD: $01 $2B $15
    rst RST_38                                    ; $5300: $FF
    ld b, d                                       ; $5301: $42
    rst RST_38                                    ; $5302: $FF
    ld [hl], b                                    ; $5303: $70
    db $FD                                        ; $5304: $FD
    ld a, b                                       ; $5305: $78
    db $FC                                        ; $5306: $FC
    ld a, b                                       ; $5307: $78
    rst RST_38                                    ; $5308: $FF
    nop                                           ; $5309: $00
    rst RST_38                                    ; $530A: $FF
    ld a, l                                       ; $530B: $7D
    rst RST_38                                    ; $530C: $FF
    ld a, l                                       ; $530D: $7D
    rst RST_38                                    ; $530E: $FF
    ld a, l                                       ; $530F: $7D
    rst RST_38                                    ; $5310: $FF
    ld a, l                                       ; $5311: $7D
    rst RST_38                                    ; $5312: $FF
    ld a, l                                       ; $5313: $7D
    rst RST_38                                    ; $5314: $FF
    ld a, l                                       ; $5315: $7D
    rst RST_38                                    ; $5316: $FF
    nop                                           ; $5317: $00
    dec b                                         ; $5318: $05
    ld [bc], a                                    ; $5319: $02
    ld a, [$E701]                                 ; $531A: $FA $01 $E7
    ret c                                         ; $531D: $D8

    ld sp, hl                                     ; $531E: $F9
    add [hl]                                      ; $531F: $86
    ld d, c                                       ; $5320: $51
    ld l, $B3                                     ; $5321: $2E $B3
    ld c, h                                       ; $5323: $4C
    db $FC                                        ; $5324: $FC
    nop                                           ; $5325: $00
    nop                                           ; $5326: $00
    nop                                           ; $5327: $00
    nop                                           ; $5328: $00
    nop                                           ; $5329: $00
    nop                                           ; $532A: $00
    nop                                           ; $532B: $00
    nop                                           ; $532C: $00
    nop                                           ; $532D: $00
    nop                                           ; $532E: $00
    nop                                           ; $532F: $00
    nop                                           ; $5330: $00
    nop                                           ; $5331: $00
    nop                                           ; $5332: $00
    nop                                           ; $5333: $00
    nop                                           ; $5334: $00
    nop                                           ; $5335: $00
    nop                                           ; $5336: $00
    nop                                           ; $5337: $00
    nop                                           ; $5338: $00
    nop                                           ; $5339: $00
    nop                                           ; $533A: $00
    nop                                           ; $533B: $00
    nop                                           ; $533C: $00
    nop                                           ; $533D: $00
    nop                                           ; $533E: $00
    nop                                           ; $533F: $00
    db $FD                                        ; $5340: $FD
    xor d                                         ; $5341: $AA
    cp $2D                                        ; $5342: $FE $2D
    rst RST_38                                    ; $5344: $FF
    ld e, h                                       ; $5345: $5C
    db $FC                                        ; $5346: $FC
    ld e, b                                       ; $5347: $58
    db $FC                                        ; $5348: $FC
    cp b                                          ; $5349: $B8
    ld hl, sp-$50                                 ; $534A: $F8 $B0
    ld hl, sp+$70                                 ; $534C: $F8 $70
    ldh a, [$FF60]                                ; $534E: $F0 $60
    ldh a, [rP1]                                  ; $5350: $F0 $00
    nop                                           ; $5352: $00
    nop                                           ; $5353: $00
    nop                                           ; $5354: $00
    nop                                           ; $5355: $00
    nop                                           ; $5356: $00
    nop                                           ; $5357: $00
    nop                                           ; $5358: $00
    nop                                           ; $5359: $00
    nop                                           ; $535A: $00
    nop                                           ; $535B: $00
    nop                                           ; $535C: $00
    nop                                           ; $535D: $00
    nop                                           ; $535E: $00
    nop                                           ; $535F: $00
    db $FC                                        ; $5360: $FC
    ldh [$FFE2], a                                ; $5361: $E0 $E2
    ld e, h                                       ; $5363: $5C
    pop hl                                        ; $5364: $E1
    ld e, $23                                     ; $5365: $1E $23
    inc e                                         ; $5367: $1C
    rra                                           ; $5368: $1F
    inc bc                                        ; $5369: $03
    ccf                                           ; $536A: $3F
    dec e                                         ; $536B: $1D
    ccf                                           ; $536C: $3F
    dec e                                         ; $536D: $1D
    rra                                           ; $536E: $1F
    dec c                                         ; $536F: $0D
    rra                                           ; $5370: $1F
    ld c, $1F                                     ; $5371: $0E $1F
    ld c, $0F                                     ; $5373: $0E $0F
    ld bc, $070F                                  ; $5375: $01 $0F $07
    rrca                                          ; $5378: $0F
    ld b, $06                                     ; $5379: $06 $06
    ld bc, $0205                                  ; $537B: $01 $05 $02
    rlca                                          ; $537E: $07
    nop                                           ; $537F: $00
    add b                                         ; $5380: $80
    nop                                           ; $5381: $00
    ret nz                                        ; $5382: $C0

    add b                                         ; $5383: $80
    ret nz                                        ; $5384: $C0

    add b                                         ; $5385: $80
    ldh [$FFC0], a                                ; $5386: $E0 $C0
    ldh [$FFC0], a                                ; $5388: $E0 $C0
    ldh a, [$FFE0]                                ; $538A: $F0 $E0
    ldh a, [$FFE0]                                ; $538C: $F0 $E0
    ldh a, [$FFE0]                                ; $538E: $F0 $E0
    ld hl, sp-$10                                 ; $5390: $F8 $F0
    ld hl, sp+$10                                 ; $5392: $F8 $10
    sub b                                         ; $5394: $90
    ld h, b                                       ; $5395: $60
    sub b                                         ; $5396: $90
    ld h, b                                       ; $5397: $60
    ldh a, [rP1]                                  ; $5398: $F0 $00
    nop                                           ; $539A: $00
    nop                                           ; $539B: $00
    nop                                           ; $539C: $00
    nop                                           ; $539D: $00
    nop                                           ; $539E: $00
    nop                                           ; $539F: $00
    nop                                           ; $53A0: $00
    nop                                           ; $53A1: $00
    nop                                           ; $53A2: $00
    nop                                           ; $53A3: $00
    nop                                           ; $53A4: $00
    nop                                           ; $53A5: $00
    nop                                           ; $53A6: $00
    nop                                           ; $53A7: $00
    nop                                           ; $53A8: $00
    nop                                           ; $53A9: $00
    nop                                           ; $53AA: $00
    nop                                           ; $53AB: $00
    nop                                           ; $53AC: $00
    nop                                           ; $53AD: $00
    ld bc, $1F00                                  ; $53AE: $01 $00 $1F
    nop                                           ; $53B1: $00
    jr nz, jr_018_53D3                            ; $53B2: $20 $1F

    ld b, b                                       ; $53B4: $40
    ccf                                           ; $53B5: $3F
    ld b, c                                       ; $53B6: $41
    ld a, $55                                     ; $53B7: $3E $55
    ld a, [hl+]                                   ; $53B9: $2A
    ld d, l                                       ; $53BA: $55
    ld a, [hl+]                                   ; $53BB: $2A
    ld a, $01                                     ; $53BC: $3E $01
    rlca                                          ; $53BE: $07
    nop                                           ; $53BF: $00
    nop                                           ; $53C0: $00
    nop                                           ; $53C1: $00
    nop                                           ; $53C2: $00
    nop                                           ; $53C3: $00
    nop                                           ; $53C4: $00
    nop                                           ; $53C5: $00
    nop                                           ; $53C6: $00
    nop                                           ; $53C7: $00
    ld bc, $0300                                  ; $53C8: $01 $00 $03
    nop                                           ; $53CB: $00
    inc bc                                        ; $53CC: $03
    nop                                           ; $53CD: $00
    rst RST_38                                    ; $53CE: $FF
    nop                                           ; $53CF: $00
    rst RST_38                                    ; $53D0: $FF
    ld l, [hl]                                    ; $53D1: $6E
    ld a, a                                       ; $53D2: $7F

jr_018_53D3:
    xor a                                         ; $53D3: $AF
    ld a, a                                       ; $53D4: $7F
    xor a                                         ; $53D5: $AF
    rst RST_38                                    ; $53D6: $FF
    cpl                                           ; $53D7: $2F
    ld a, a                                       ; $53D8: $7F
    xor a                                         ; $53D9: $AF
    ld a, a                                       ; $53DA: $7F
    xor a                                         ; $53DB: $AF
    ld a, a                                       ; $53DC: $7F
    xor a                                         ; $53DD: $AF
    rst RST_38                                    ; $53DE: $FF
    nop                                           ; $53DF: $00
    nop                                           ; $53E0: $00
    nop                                           ; $53E1: $00
    ld c, $00                                     ; $53E2: $0E $00
    cp a                                          ; $53E4: $BF
    ld c, $7F                                     ; $53E5: $0E $7F
    sbc a                                         ; $53E7: $9F
    ccf                                           ; $53E8: $3F
    rst RST_08                                    ; $53E9: $CF
    rst RST_38                                    ; $53EA: $FF
    inc sp                                        ; $53EB: $33
    ld a, a                                       ; $53EC: $7F
    add b                                         ; $53ED: $80
    pop bc                                        ; $53EE: $C1
    ld a, $C1                                     ; $53EF: $3E $C1
    ld a, $D1                                     ; $53F1: $3E $D1
    ld l, $D9                                     ; $53F3: $2E $D9
    and [hl]                                      ; $53F5: $A6
    rst RST_28                                    ; $53F6: $EF
    db $10                                        ; $53F7: $10
    rst RST_38                                    ; $53F8: $FF
    db $E4                                        ; $53F9: $E4
    cp $EC                                        ; $53FA: $FE $EC
    cp $00                                        ; $53FC: $FE $00
    ldh a, [rP1]                                  ; $53FE: $F0 $00
    nop                                           ; $5400: $00
    nop                                           ; $5401: $00
    nop                                           ; $5402: $00
    nop                                           ; $5403: $00
    nop                                           ; $5404: $00
    nop                                           ; $5405: $00
    nop                                           ; $5406: $00
    nop                                           ; $5407: $00
    add b                                         ; $5408: $80
    nop                                           ; $5409: $00
    ldh [$FF80], a                                ; $540A: $E0 $80
    ld hl, sp-$20                                 ; $540C: $F8 $E0
    ld hl, sp+$00                                 ; $540E: $F8 $00
    cp $00                                        ; $5410: $FE $00
    cp $FC                                        ; $5412: $FE $FC
    cp $FC                                        ; $5414: $FE $FC
    cp $FC                                        ; $5416: $FE $FC
    cp $FC                                        ; $5418: $FE $FC
    cp $FC                                        ; $541A: $FE $FC
    cp $FC                                        ; $541C: $FE $FC
    db $FC                                        ; $541E: $FC
    nop                                           ; $541F: $00
    nop                                           ; $5420: $00
    nop                                           ; $5421: $00
    nop                                           ; $5422: $00
    nop                                           ; $5423: $00
    rrca                                          ; $5424: $0F
    nop                                           ; $5425: $00
    db $FC                                        ; $5426: $FC
    rlca                                          ; $5427: $07
    and $1B                                       ; $5428: $E6 $1B
    and $1B                                       ; $542A: $E6 $1B
    cp $1B                                        ; $542C: $FE $1B
    rst RST_38                                    ; $542E: $FF
    nop                                           ; $542F: $00
    rst RST_38                                    ; $5430: $FF
    sbc a                                         ; $5431: $9F
    rst RST_38                                    ; $5432: $FF
    sbc [hl]                                      ; $5433: $9E
    rst RST_38                                    ; $5434: $FF
    sbc [hl]                                      ; $5435: $9E
    rst RST_38                                    ; $5436: $FF
    sbc l                                         ; $5437: $9D
    rst RST_38                                    ; $5438: $FF
    sbc h                                         ; $5439: $9C
    rst RST_38                                    ; $543A: $FF
    add c                                         ; $543B: $81
    add e                                         ; $543C: $83
    ld bc, $0003                                  ; $543D: $01 $03 $00
    nop                                           ; $5440: $00
    nop                                           ; $5441: $00
    nop                                           ; $5442: $00
    nop                                           ; $5443: $00
    ld a, [hl]                                    ; $5444: $7E
    nop                                           ; $5445: $00
    pop hl                                        ; $5446: $E1
    ld e, $A0                                     ; $5447: $1E $A0
    ld e, a                                       ; $5449: $5F
    and a                                         ; $544A: $A7
    ld e, b                                       ; $544B: $58
    rst RST_38                                    ; $544C: $FF
    ld h, [hl]                                    ; $544D: $66
    pop af                                        ; $544E: $F1
    ld c, $FD                                     ; $544F: $0E $FD
    ld [bc], a                                    ; $5451: $02
    jp nc, $FFAD                                  ; $5452: $D2 $AD $FF

    ret nz                                        ; $5455: $C0

    rst RST_38                                    ; $5456: $FF
    cp a                                          ; $5457: $BF
    rst RST_38                                    ; $5458: $FF
    nop                                           ; $5459: $00
    rst RST_38                                    ; $545A: $FF
    cp a                                          ; $545B: $BF
    rst RST_38                                    ; $545C: $FF
    cp a                                          ; $545D: $BF
    rst RST_38                                    ; $545E: $FF
    nop                                           ; $545F: $00
    ld bc, $3E00                                  ; $5460: $01 $00 $3E
    ld bc, $327F                                  ; $5463: $01 $7F $32
    ld a, a                                       ; $5466: $7F
    inc sp                                        ; $5467: $33
    ld a, a                                       ; $5468: $7F
    add hl, sp                                    ; $5469: $39
    ccf                                           ; $546A: $3F
    add hl, de                                    ; $546B: $19
    ccf                                           ; $546C: $3F
    add hl, de                                    ; $546D: $19
    ccf                                           ; $546E: $3F
    ld bc, $0E1F                                  ; $546F: $01 $1F $0E
    rra                                           ; $5472: $1F
    ld c, $3F                                     ; $5473: $0E $3F
    ld [bc], a                                    ; $5475: $02
    ld e, e                                       ; $5476: $5B
    dec h                                         ; $5477: $25
    and e                                         ; $5478: $A3
    ld e, l                                       ; $5479: $5D
    rst RST_38                                    ; $547A: $FF
    nop                                           ; $547B: $00
    nop                                           ; $547C: $00
    nop                                           ; $547D: $00
    nop                                           ; $547E: $00
    nop                                           ; $547F: $00
    ccf                                           ; $5480: $3F
    nop                                           ; $5481: $00
    ld a, a                                       ; $5482: $7F
    rrca                                          ; $5483: $0F
    adc a                                         ; $5484: $8F
    ld [hl], a                                    ; $5485: $77
    rlca                                          ; $5486: $07
    ei                                            ; $5487: $FB
    add a                                         ; $5488: $87
    ld a, b                                       ; $5489: $78
    ld hl, sp-$80                                 ; $548A: $F8 $80
    ldh [$FFC0], a                                ; $548C: $E0 $C0
    ldh [$FFC0], a                                ; $548E: $E0 $C0
    ldh [$FFC0], a                                ; $5490: $E0 $C0
    ldh a, [$FFE0]                                ; $5492: $F0 $E0
    ldh a, [$FFE0]                                ; $5494: $F0 $E0
    ldh a, [$FFE0]                                ; $5496: $F0 $E0
    ldh a, [$FFE0]                                ; $5498: $F0 $E0
    ldh a, [$FF60]                                ; $549A: $F0 $60
    ldh [rP1], a                                  ; $549C: $E0 $00
    add b                                         ; $549E: $80
    nop                                           ; $549F: $00
    ldh [$FFC0], a                                ; $54A0: $E0 $C0
    ret c                                         ; $54A2: $D8

    jr nz, @-$7A                                  ; $54A3: $20 $84

    ld a, b                                       ; $54A5: $78

jr_018_54A6:
    rra                                           ; $54A6: $1F
    ldh [$FFDF], a                                ; $54A7: $E0 $DF
    ld l, $3F                                     ; $54A9: $2E $3F
    ld c, $1F                                     ; $54AB: $0E $1F
    ld c, $0F                                     ; $54AD: $0E $0F
    rlca                                          ; $54AF: $07
    rrca                                          ; $54B0: $0F
    rlca                                          ; $54B1: $07
    rrca                                          ; $54B2: $0F
    nop                                           ; $54B3: $00
    rrca                                          ; $54B4: $0F
    rlca                                          ; $54B5: $07
    rlca                                          ; $54B6: $07
    inc bc                                        ; $54B7: $03
    rlca                                          ; $54B8: $07
    inc bc                                        ; $54B9: $03
    rlca                                          ; $54BA: $07
    nop                                           ; $54BB: $00
    ld bc, $0100                                  ; $54BC: $01 $00 $01
    nop                                           ; $54BF: $00
    ret nz                                        ; $54C0: $C0

    nop                                           ; $54C1: $00
    ldh [$FFC0], a                                ; $54C2: $E0 $C0
    ldh [$FFC0], a                                ; $54C4: $E0 $C0
    ldh a, [$FFE0]                                ; $54C6: $F0 $E0
    ldh a, [$FF60]                                ; $54C8: $F0 $60
    ldh a, [$FF60]                                ; $54CA: $F0 $60
    ldh a, [$FF60]                                ; $54CC: $F0 $60
    ld hl, sp-$10                                 ; $54CE: $F8 $F0
    ld hl, sp-$10                                 ; $54D0: $F8 $F0
    ld hl, sp+$00                                 ; $54D2: $F8 $00
    jr z, jr_018_54A6                             ; $54D4: $28 $D0

    inc h                                         ; $54D6: $24
    ret c                                         ; $54D7: $D8

    db $FC                                        ; $54D8: $FC
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
    inc bc                                        ; $54EC: $03
    nop                                           ; $54ED: $00
    rrca                                          ; $54EE: $0F
    inc bc                                        ; $54EF: $03
    ccf                                           ; $54F0: $3F
    rrca                                          ; $54F1: $0F
    ccf                                           ; $54F2: $3F
    ld bc, $00FF                                  ; $54F3: $01 $FF $00
    rst RST_38                                    ; $54F6: $FF
    ld a, h                                       ; $54F7: $7C
    rst RST_38                                    ; $54F8: $FF
    ld a, h                                       ; $54F9: $7C
    rst RST_38                                    ; $54FA: $FF
    ld a, h                                       ; $54FB: $7C
    rst RST_38                                    ; $54FC: $FF
    ld a, h                                       ; $54FD: $7C
    rst RST_38                                    ; $54FE: $FF
    ld a, h                                       ; $54FF: $7C
    nop                                           ; $5500: $00
    nop                                           ; $5501: $00
    ldh [rP1], a                                  ; $5502: $E0 $00
    pop af                                        ; $5504: $F1
    ldh [$FFFA], a                                ; $5505: $E0 $FA
    pop af                                        ; $5507: $F1
    rst RST_38                                    ; $5508: $FF
    ldh [$FFFD], a                                ; $5509: $E0 $FD
    ld a, [de]                                    ; $550B: $1A
    dec e                                         ; $550C: $1D
    ldh [c], a                                    ; $550D: $E2
    ld a, a                                       ; $550E: $7F
    add d                                         ; $550F: $82
    rla                                           ; $5510: $17
    add sp, $2B                                   ; $5511: $E8 $2B
    call nc, $E917                                ; $5513: $D4 $17 $E9
    adc e                                         ; $5516: $8B
    ld [hl], h                                    ; $5517: $74
    rst RST_00                                    ; $5518: $C7
    ld a, [hl-]                                   ; $5519: $3A
    rst RST_38                                    ; $551A: $FF
    ld [bc], a                                    ; $551B: $02
    rst RST_28                                    ; $551C: $EF
    db $10                                        ; $551D: $10
    cp $01                                        ; $551E: $FE $01
    nop                                           ; $5520: $00
    nop                                           ; $5521: $00

jr_018_5522:
    ld a, b                                       ; $5522: $78
    nop                                           ; $5523: $00
    add h                                         ; $5524: $84
    ld a, b                                       ; $5525: $78
    db $F4                                        ; $5526: $F4
    ld [$E07F], sp                                ; $5527: $08 $7F $E0
    ld h, e                                       ; $552A: $63
    sbc $63                                       ; $552B: $DE $63
    sbc $7F                                       ; $552D: $DE $7F

jr_018_552F:
    sbc $FF                                       ; $552F: $DE $FF
    nop                                           ; $5531: $00
    rst RST_38                                    ; $5532: $FF
    ld [bc], a                                    ; $5533: $02
    rst RST_38                                    ; $5534: $FF
    db $FD                                        ; $5535: $FD
    rst RST_38                                    ; $5536: $FF
    nop                                           ; $5537: $00
    rst RST_38                                    ; $5538: $FF
    cp $FF                                        ; $5539: $FE $FF
    cp $FF                                        ; $553B: $FE $FF
    nop                                           ; $553D: $00
    ccf                                           ; $553E: $3F
    rst RST_08                                    ; $553F: $CF
    ldh [rP1], a                                  ; $5540: $E0 $00
    ldh a, [rP1]                                  ; $5542: $F0 $00
    ldh a, [rP1]                                  ; $5544: $F0 $00
    ldh a, [rP1]                                  ; $5546: $F0 $00
    ldh [rP1], a                                  ; $5548: $E0 $00
    ret nz                                        ; $554A: $C0

    nop                                           ; $554B: $00
    ld hl, sp+$00                                 ; $554C: $F8 $00
    adc $30                                       ; $554E: $CE $30
    ret                                           ; $5550: $C9


    or [hl]                                       ; $5551: $B6
    rst RST_28                                    ; $5552: $EF
    sub b                                         ; $5553: $90
    reti                                          ; $5554: $D9


    ld h, $CF                                     ; $5555: $26 $CF
    jr nc, jr_018_5522                            ; $5557: $30 $C9

    ld [hl], $CE                                  ; $5559: $36 $CE
    jr nc, jr_018_552F                            ; $555B: $30 $D2

    inc l                                         ; $555D: $2C
    db $FC                                        ; $555E: $FC
    nop                                           ; $555F: $00
    rst RST_38                                    ; $5560: $FF
    ld a, h                                       ; $5561: $7C
    ld a, a                                       ; $5562: $7F
    inc a                                         ; $5563: $3C
    ccf                                           ; $5564: $3F
    nop                                           ; $5565: $00
    inc bc                                        ; $5566: $03
    ld bc, $0001                                  ; $5567: $01 $01 $00
    ld bc, $0300                                  ; $556A: $01 $00 $03
    ld bc, $0103                                  ; $556D: $01 $03 $01
    rlca                                          ; $5570: $07
    ld [bc], a                                    ; $5571: $02
    rlca                                          ; $5572: $07
    ld [bc], a                                    ; $5573: $02
    rrca                                          ; $5574: $0F
    dec b                                         ; $5575: $05
    rrca                                          ; $5576: $0F
    inc b                                         ; $5577: $04
    inc c                                         ; $5578: $0C
    inc bc                                        ; $5579: $03
    ld [$0807], sp                                ; $557A: $08 $07 $08
    rlca                                          ; $557D: $07
    rlca                                          ; $557E: $07
    nop                                           ; $557F: $00
    rst RST_38                                    ; $5580: $FF
    or [hl]                                       ; $5581: $B6
    rst RST_38                                    ; $5582: $FF
    or [hl]                                       ; $5583: $B6
    rst RST_38                                    ; $5584: $FF
    ld l, [hl]                                    ; $5585: $6E
    cp $6D                                        ; $5586: $FE $6D
    rst RST_38                                    ; $5588: $FF
    db $EC                                        ; $5589: $EC
    rst RST_38                                    ; $558A: $FF
    db $E3                                        ; $558B: $E3
    rst RST_38                                    ; $558C: $FF
    dec de                                        ; $558D: $1B
    rra                                           ; $558E: $1F
    rst RST_20                                    ; $558F: $E7
    rrca                                          ; $5590: $0F
    rst RST_30                                    ; $5591: $F7
    rrca                                          ; $5592: $0F
    rst RST_30                                    ; $5593: $F7
    ccf                                           ; $5594: $3F
    adc $DF                                       ; $5595: $CE $DF
    ld c, $1F                                     ; $5597: $0E $1F
    ld c, $1F                                     ; $5599: $0E $1F
    dec c                                         ; $559B: $0D
    rrca                                          ; $559C: $0F
    ld bc, $0003                                  ; $559D: $01 $03 $00
    rst RST_18                                    ; $55A0: $DF
    rrca                                          ; $55A1: $0F
    sbc a                                         ; $55A2: $9F
    rrca                                          ; $55A3: $0F
    ld c, a                                       ; $55A4: $4F
    add a                                         ; $55A5: $87
    rst RST_38                                    ; $55A6: $FF

jr_018_55A7:
    nop                                           ; $55A7: $00
    db $FC                                        ; $55A8: $FC

jr_018_55A9:
    sbc b                                         ; $55A9: $98
    db $FC                                        ; $55AA: $FC

jr_018_55AB:
    sbc b                                         ; $55AB: $98
    db $FC                                        ; $55AC: $FC
    jr c, jr_018_55A7                             ; $55AD: $38 $F8

    jr nc, jr_018_55A9                            ; $55AF: $30 $F8

    jr nc, jr_018_55AB                            ; $55B1: $30 $F8

    nop                                           ; $55B3: $00
    ldh a, [$FFE0]                                ; $55B4: $F0 $E0
    ldh a, [$FFE0]                                ; $55B6: $F0 $E0
    ld hl, sp-$80                                 ; $55B8: $F8 $80
    or h                                          ; $55BA: $B4
    ld c, b                                       ; $55BB: $48
    adc d                                         ; $55BC: $8A
    ld [hl], h                                    ; $55BD: $74
    cp $00                                        ; $55BE: $FE $00
    nop                                           ; $55C0: $00
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
    rlca                                          ; $55D0: $07
    nop                                           ; $55D1: $00
    inc bc                                        ; $55D2: $03
    ld bc, $0001                                  ; $55D3: $01 $01 $00
    ld bc, $0100                                  ; $55D6: $01 $00 $01
    nop                                           ; $55D9: $00
    nop                                           ; $55DA: $00
    nop                                           ; $55DB: $00
    ld bc, $0000                                  ; $55DC: $01 $00 $00
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
    rlca                                          ; $55EC: $07
    nop                                           ; $55ED: $00
    ld a, a                                       ; $55EE: $7F
    rlca                                          ; $55EF: $07
    add b                                         ; $55F0: $80
    ld a, a                                       ; $55F1: $7F
    rst RST_38                                    ; $55F2: $FF
    pop hl                                        ; $55F3: $E1
    adc a                                         ; $55F4: $8F
    ld hl, sp+$01                                 ; $55F5: $F8 $01
    rst RST_38                                    ; $55F7: $FF
    cp a                                          ; $55F8: $BF
    db $FC                                        ; $55F9: $FC
    adc a                                         ; $55FA: $8F
    ld a, a                                       ; $55FB: $7F
    ld hl, sp+$07                                 ; $55FC: $F8 $07
    rlca                                          ; $55FE: $07
    nop                                           ; $55FF: $00
    nop                                           ; $5600: $00
    nop                                           ; $5601: $00
    nop                                           ; $5602: $00
    nop                                           ; $5603: $00
    nop                                           ; $5604: $00
    nop                                           ; $5605: $00
    nop                                           ; $5606: $00
    nop                                           ; $5607: $00
    adc a                                         ; $5608: $8F
    ld [hl], b                                    ; $5609: $70
    ld a, b                                       ; $560A: $78
    nop                                           ; $560B: $00
    cp $00                                        ; $560C: $FE $00
    db $FC                                        ; $560E: $FC
    ld hl, sp-$02                                 ; $560F: $F8 $FE
    ret nz                                        ; $5611: $C0

    rst RST_20                                    ; $5612: $E7
    cp $F8                                        ; $5613: $FE $F8
    ld a, a                                       ; $5615: $7F
    cp $FF                                        ; $5616: $FE $FF
    ldh [$FF3F], a                                ; $5618: $E0 $3F
    rst RST_38                                    ; $561A: $FF
    db $10                                        ; $561B: $10
    ld a, $F8                                     ; $561C: $3E $F8
    rst RST_38                                    ; $561E: $FF
    nop                                           ; $561F: $00
    nop                                           ; $5620: $00
    nop                                           ; $5621: $00
    nop                                           ; $5622: $00
    nop                                           ; $5623: $00
    nop                                           ; $5624: $00
    nop                                           ; $5625: $00
    nop                                           ; $5626: $00
    nop                                           ; $5627: $00
    nop                                           ; $5628: $00
    nop                                           ; $5629: $00
    nop                                           ; $562A: $00
    nop                                           ; $562B: $00
    nop                                           ; $562C: $00
    nop                                           ; $562D: $00
    nop                                           ; $562E: $00
    nop                                           ; $562F: $00
    rrca                                          ; $5630: $0F
    nop                                           ; $5631: $00
    rla                                           ; $5632: $17
    dec bc                                        ; $5633: $0B
    cpl                                           ; $5634: $2F
    rla                                           ; $5635: $17
    ld e, a                                       ; $5636: $5F
    cpl                                           ; $5637: $2F
    ld e, a                                       ; $5638: $5F
    jr nz, jr_018_569A                            ; $5639: $20 $5F

    cpl                                           ; $563B: $2F
    ld e, a                                       ; $563C: $5F
    cpl                                           ; $563D: $2F
    cp a                                          ; $563E: $BF
    ld c, a                                       ; $563F: $4F
    rst RST_38                                    ; $5640: $FF
    cp a                                          ; $5641: $BF
    rst RST_38                                    ; $5642: $FF
    ld a, [hl]                                    ; $5643: $7E
    rst RST_38                                    ; $5644: $FF
    ld bc, $7DFF                                  ; $5645: $01 $FF $7D
    rst RST_38                                    ; $5648: $FF
    ld a, l                                       ; $5649: $7D
    rst RST_38                                    ; $564A: $FF
    ld a, h                                       ; $564B: $7C
    ld a, a                                       ; $564C: $7F
    inc bc                                        ; $564D: $03
    dec bc                                        ; $564E: $0B
    dec b                                         ; $564F: $05
    add hl, bc                                    ; $5650: $09
    ld b, $1C                                     ; $5651: $06 $1C
    dec bc                                        ; $5653: $0B
    cp $0D                                        ; $5654: $FE $0D
    rrca                                          ; $5656: $0F
    or $0F                                        ; $5657: $F6 $0F
    rst RST_30                                    ; $5659: $F7
    rrca                                          ; $565A: $0F
    rst RST_30                                    ; $565B: $F7
    rst RST_38                                    ; $565C: $FF
    inc bc                                        ; $565D: $03
    inc bc                                        ; $565E: $03
    nop                                           ; $565F: $00
    nop                                           ; $5660: $00
    nop                                           ; $5661: $00
    nop                                           ; $5662: $00
    nop                                           ; $5663: $00

jr_018_5664:
    nop                                           ; $5664: $00
    nop                                           ; $5665: $00
    nop                                           ; $5666: $00
    nop                                           ; $5667: $00
    nop                                           ; $5668: $00
    nop                                           ; $5669: $00
    nop                                           ; $566A: $00
    nop                                           ; $566B: $00
    nop                                           ; $566C: $00
    nop                                           ; $566D: $00
    nop                                           ; $566E: $00
    nop                                           ; $566F: $00
    nop                                           ; $5670: $00
    nop                                           ; $5671: $00
    rrca                                          ; $5672: $0F
    nop                                           ; $5673: $00
    inc d                                         ; $5674: $14
    dec bc                                        ; $5675: $0B
    ld [de], a                                    ; $5676: $12
    dec c                                         ; $5677: $0D
    ld de, $E80E                                  ; $5678: $11 $0E $E8
    rlca                                          ; $567B: $07
    rst RST_38                                    ; $567C: $FF
    ldh [rIE], a                                  ; $567D: $E0 $FF
    rst RST_18                                    ; $567F: $DF
    add b                                         ; $5680: $80
    nop                                           ; $5681: $00
    ld b, b                                       ; $5682: $40
    add b                                         ; $5683: $80
    jr nz, @-$3E                                  ; $5684: $20 $C0

    sbc a                                         ; $5686: $9F
    ld h, b                                       ; $5687: $60
    ret z                                         ; $5688: $C8

    scf                                           ; $5689: $37
    db $F4                                        ; $568A: $F4
    set 4, e                                      ; $568B: $CB $E3
    sbc h                                         ; $568D: $9C
    push af                                       ; $568E: $F5
    ld l, e                                       ; $568F: $6B
    ei                                            ; $5690: $FB
    and $FE                                       ; $5691: $E6 $FE
    push bc                                       ; $5693: $C5
    xor $15                                       ; $5694: $EE $15
    rst RST_38                                    ; $5696: $FF
    ld b, c                                       ; $5697: $41
    rst RST_38                                    ; $5698: $FF
    xor [hl]                                      ; $5699: $AE

jr_018_569A:
    rst RST_38                                    ; $569A: $FF
    add b                                         ; $569B: $80
    rst RST_38                                    ; $569C: $FF
    or a                                          ; $569D: $B7
    rst RST_38                                    ; $569E: $FF
    scf                                           ; $569F: $37
    ret nz                                        ; $56A0: $C0

    nop                                           ; $56A1: $00
    jr nz, jr_018_5664                            ; $56A2: $20 $C0

    or b                                          ; $56A4: $B0
    ld b, b                                       ; $56A5: $40
    ret c                                         ; $56A6: $D8

    and b                                         ; $56A7: $A0
    call c, Call_018_5E28                         ; $56A8: $DC $28 $5E
    xor h                                         ; $56AB: $AC
    ccf                                           ; $56AC: $3F
    adc $1F                                       ; $56AD: $CE $1F
    and $BF                                       ; $56AF: $E6 $BF
    ldh a, [c]                                    ; $56B1: $F2
    rst RST_20                                    ; $56B2: $E7
    ld a, b                                       ; $56B3: $78
    cp $A0                                        ; $56B4: $FE $A0
    cp $C0                                        ; $56B6: $FE $C0
    cp $00                                        ; $56B8: $FE $00
    ld a, h                                       ; $56BA: $7C
    add b                                         ; $56BB: $80
    xor b                                         ; $56BC: $A8
    ld d, b                                       ; $56BD: $50
    ldh a, [rP1]                                  ; $56BE: $F0 $00
    ld a, a                                       ; $56C0: $7F
    add b                                         ; $56C1: $80
    add e                                         ; $56C2: $83
    ld a, h                                       ; $56C3: $7C
    db $FD                                        ; $56C4: $FD
    add b                                         ; $56C5: $80
    ldh [c], a                                    ; $56C6: $E2
    call c, $BEC1                                 ; $56C7: $DC $C1 $BE
    db $E3                                        ; $56CA: $E3
    inc e                                         ; $56CB: $1C
    ccf                                           ; $56CC: $3F
    inc bc                                        ; $56CD: $03
    ccf                                           ; $56CE: $3F
    inc c                                         ; $56CF: $0C
    ccf                                           ; $56D0: $3F
    inc de                                        ; $56D1: $13
    ccf                                           ; $56D2: $3F
    dec de                                        ; $56D3: $1B
    ccf                                           ; $56D4: $3F
    dec de                                        ; $56D5: $1B
    ccf                                           ; $56D6: $3F
    dec de                                        ; $56D7: $1B
    rra                                           ; $56D8: $1F
    ld [$0B1F], sp                                ; $56D9: $08 $1F $0B
    rra                                           ; $56DC: $1F
    ld a, [bc]                                    ; $56DD: $0A
    ld e, $01                                     ; $56DE: $1E $01
    add b                                         ; $56E0: $80
    nop                                           ; $56E1: $00
    ret nz                                        ; $56E2: $C0

    add b                                         ; $56E3: $80
    ldh [$FF80], a                                ; $56E4: $E0 $80
    ldh [rLCDC], a                                ; $56E6: $E0 $40
    ldh [rLCDC], a                                ; $56E8: $E0 $40
    ldh [rLCDC], a                                ; $56EA: $E0 $40
    ldh [rLCDC], a                                ; $56EC: $E0 $40
    ldh [rLCDC], a                                ; $56EE: $E0 $40
    ldh [$FFC0], a                                ; $56F0: $E0 $C0
    ldh [$FFC0], a                                ; $56F2: $E0 $C0
    ldh [rP1], a                                  ; $56F4: $E0 $00
    and b                                         ; $56F6: $A0
    ld b, b                                       ; $56F7: $40
    and b                                         ; $56F8: $A0
    ld b, b                                       ; $56F9: $40
    ld d, b                                       ; $56FA: $50
    and b                                         ; $56FB: $A0
    ldh a, [rP1]                                  ; $56FC: $F0 $00
    nop                                           ; $56FE: $00
    nop                                           ; $56FF: $00
    inc b                                         ; $5700: $04
    inc bc                                        ; $5701: $03
    ld [bc], a                                    ; $5702: $02
    ld bc, $0001                                  ; $5703: $01 $01 $00
    nop                                           ; $5706: $00
    nop                                           ; $5707: $00
    nop                                           ; $5708: $00
    nop                                           ; $5709: $00
    nop                                           ; $570A: $00
    nop                                           ; $570B: $00
    nop                                           ; $570C: $00
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
    nop                                           ; $5721: $00
    ccf                                           ; $5722: $3F
    ld bc, $3D43                                  ; $5723: $01 $43 $3D
    ld b, e                                       ; $5726: $43
    dec a                                         ; $5727: $3D
    ld a, a                                       ; $5728: $7F
    ld bc, $3D43                                  ; $5729: $01 $43 $3D
    ccf                                           ; $572C: $3F
    ld bc, $0003                                  ; $572D: $01 $03 $00
    nop                                           ; $5730: $00
    nop                                           ; $5731: $00
    nop                                           ; $5732: $00
    nop                                           ; $5733: $00
    nop                                           ; $5734: $00
    nop                                           ; $5735: $00
    nop                                           ; $5736: $00
    nop                                           ; $5737: $00
    nop                                           ; $5738: $00
    nop                                           ; $5739: $00
    nop                                           ; $573A: $00
    nop                                           ; $573B: $00
    nop                                           ; $573C: $00
    nop                                           ; $573D: $00
    nop                                           ; $573E: $00
    nop                                           ; $573F: $00
    adc a                                         ; $5740: $8F
    ld [hl], b                                    ; $5741: $70
    ld a, b                                       ; $5742: $78
    nop                                           ; $5743: $00
    nop                                           ; $5744: $00
    nop                                           ; $5745: $00
    cp $00                                        ; $5746: $FE $00
    rst RST_38                                    ; $5748: $FF
    cp $FF                                        ; $5749: $FE $FF
    ret nz                                        ; $574B: $C0

    rst RST_38                                    ; $574C: $FF
    sbc $FF                                       ; $574D: $DE $FF
    sbc $FF                                       ; $574F: $DE $FF
    sbc $FF                                       ; $5751: $DE $FF
    ldh [$FFFE], a                                ; $5753: $E0 $FE
    nop                                           ; $5755: $00
    nop                                           ; $5756: $00
    nop                                           ; $5757: $00
    nop                                           ; $5758: $00
    nop                                           ; $5759: $00
    nop                                           ; $575A: $00
    nop                                           ; $575B: $00
    nop                                           ; $575C: $00
    nop                                           ; $575D: $00
    nop                                           ; $575E: $00
    nop                                           ; $575F: $00
    nop                                           ; $5760: $00
    nop                                           ; $5761: $00
    nop                                           ; $5762: $00
    nop                                           ; $5763: $00
    nop                                           ; $5764: $00
    nop                                           ; $5765: $00
    nop                                           ; $5766: $00
    nop                                           ; $5767: $00
    nop                                           ; $5768: $00
    nop                                           ; $5769: $00
    nop                                           ; $576A: $00
    nop                                           ; $576B: $00
    nop                                           ; $576C: $00
    nop                                           ; $576D: $00
    nop                                           ; $576E: $00
    nop                                           ; $576F: $00
    nop                                           ; $5770: $00
    nop                                           ; $5771: $00
    nop                                           ; $5772: $00
    nop                                           ; $5773: $00
    nop                                           ; $5774: $00
    nop                                           ; $5775: $00
    ccf                                           ; $5776: $3F
    nop                                           ; $5777: $00
    ld b, h                                       ; $5778: $44
    ccf                                           ; $5779: $3F
    ld b, h                                       ; $577A: $44
    ccf                                           ; $577B: $3F
    ld a, a                                       ; $577C: $7F
    ccf                                           ; $577D: $3F
    ccf                                           ; $577E: $3F
    nop                                           ; $577F: $00
    or $D9                                        ; $5780: $F6 $D9
    cp $01                                        ; $5782: $FE $01
    rrca                                          ; $5784: $0F
    inc b                                         ; $5785: $04
    rrca                                          ; $5786: $0F
    inc b                                         ; $5787: $04
    dec c                                         ; $5788: $0D
    ld [bc], a                                    ; $5789: $02
    rrca                                          ; $578A: $0F
    nop                                           ; $578B: $00
    rrca                                          ; $578C: $0F
    dec b                                         ; $578D: $05
    rrca                                          ; $578E: $0F
    dec b                                         ; $578F: $05
    rlca                                          ; $5790: $07
    ld [bc], a                                    ; $5791: $02
    rlca                                          ; $5792: $07
    ld [bc], a                                    ; $5793: $02
    rlca                                          ; $5794: $07
    ld bc, $0103                                  ; $5795: $01 $03 $01
    inc bc                                        ; $5798: $03
    nop                                           ; $5799: $00
    inc bc                                        ; $579A: $03
    nop                                           ; $579B: $00
    ld bc, $0000                                  ; $579C: $01 $00 $00
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
    ld a, b                                       ; $57B8: $78
    nop                                           ; $57B9: $00
    rst RST_28                                    ; $57BA: $EF
    jr nc, @+$6B                                  ; $57BB: $30 $69

    or [hl]                                       ; $57BD: $B6
    ld l, d                                       ; $57BE: $6A
    or l                                          ; $57BF: $B5
    ld bc, $0600                                  ; $57C0: $01 $00 $06
    ld bc, $0609                                  ; $57C3: $01 $09 $06
    ld [$0407], sp                                ; $57C6: $08 $07 $04
    inc bc                                        ; $57C9: $03
    ld b, $01                                     ; $57CA: $06 $01
    dec b                                         ; $57CC: $05
    ld [bc], a                                    ; $57CD: $02
    dec b                                         ; $57CE: $05
    ld [bc], a                                    ; $57CF: $02
    inc bc                                        ; $57D0: $03
    nop                                           ; $57D1: $00
    ld bc, $0100                                  ; $57D2: $01 $00 $01
    nop                                           ; $57D5: $00
    ld bc, $7F00                                  ; $57D6: $01 $00 $7F
    nop                                           ; $57D9: $00
    ret nz                                        ; $57DA: $C0

    ccf                                           ; $57DB: $3F
    ldh [$FF1F], a                                ; $57DC: $E0 $1F
    rra                                           ; $57DE: $1F
    ldh [rDIV], a                                 ; $57DF: $E0 $04
    ei                                            ; $57E1: $FB
    ld [bc], a                                    ; $57E2: $02
    db $FD                                        ; $57E3: $FD
    dec sp                                        ; $57E4: $3B
    call nz, $35FB                                ; $57E5: $C4 $FB $35
    add hl, sp                                    ; $57E8: $39
    add $19                                       ; $57E9: $C6 $19
    and $E7                                       ; $57EB: $E6 $E7
    add hl, de                                    ; $57ED: $19
    rst RST_38                                    ; $57EE: $FF
    db $E4                                        ; $57EF: $E4
    rst RST_38                                    ; $57F0: $FF
    ei                                            ; $57F1: $FB
    rst RST_38                                    ; $57F2: $FF
    inc bc                                        ; $57F3: $03
    rst RST_38                                    ; $57F4: $FF
    ld a, e                                       ; $57F5: $7B
    rst RST_38                                    ; $57F6: $FF
    ld bc, $01FF                                  ; $57F7: $01 $FF $01
    ld d, l                                       ; $57FA: $55
    xor d                                         ; $57FB: $AA
    rst RST_38                                    ; $57FC: $FF
    nop                                           ; $57FD: $00
    rra                                           ; $57FE: $1F
    ld [bc], a                                    ; $57FF: $02
    ld sp, $E10E                                  ; $5800: $31 $0E $E1
    ld e, $F7                                     ; $5803: $1E $F7
    ld l, b                                       ; $5805: $68
    cp $65                                        ; $5806: $FE $65
    ld a, l                                       ; $5808: $7D
    ld [hl-], a                                   ; $5809: $32
    ld a, a                                       ; $580A: $7F
    jr nc, @+$40                                  ; $580B: $30 $3E

    dec b                                         ; $580D: $05
    ccf                                           ; $580E: $3F
    ld c, $1F                                     ; $580F: $0E $1F
    ld c, $1F                                     ; $5811: $0E $1F
    nop                                           ; $5813: $00
    add hl, hl                                    ; $5814: $29
    ld d, $50                                     ; $5815: $16 $50
    cpl                                           ; $5817: $2F
    ld a, a                                       ; $5818: $7F
    nop                                           ; $5819: $00
    nop                                           ; $581A: $00
    nop                                           ; $581B: $00
    nop                                           ; $581C: $00
    nop                                           ; $581D: $00
    nop                                           ; $581E: $00
    nop                                           ; $581F: $00
    ldh [rP1], a                                  ; $5820: $E0 $00
    jr @-$1E                                      ; $5822: $18 $E0

    call nz, $C238                                ; $5824: $C4 $38 $C2
    inc a                                         ; $5827: $3C
    ld b, d                                       ; $5828: $42
    cp h                                          ; $5829: $BC
    cp $00                                        ; $582A: $FE $00
    rst RST_38                                    ; $582C: $FF
    sbc $FF                                       ; $582D: $DE $FF
    sbc $FF                                       ; $582F: $DE $FF
    sbc $FF                                       ; $5831: $DE $FF
    sbc $FF                                       ; $5833: $DE $FF
    sbc $FF                                       ; $5835: $DE $FF
    sbc $FF                                       ; $5837: $DE $FF
    nop                                           ; $5839: $00
    inc bc                                        ; $583A: $03
    db $FC                                        ; $583B: $FC
    ld [bc], a                                    ; $583C: $02
    db $FC                                        ; $583D: $FC
    cp $00                                        ; $583E: $FE $00
    ld bc, $01FE                                  ; $5840: $01 $FE $01
    cp $FF                                        ; $5843: $FE $FF
    nop                                           ; $5845: $00
    ldh a, [$FFE0]                                ; $5846: $F0 $E0
    ldh a, [$FFE0]                                ; $5848: $F0 $E0
    ld hl, sp-$10                                 ; $584A: $F8 $F0
    db $FC                                        ; $584C: $FC
    add b                                         ; $584D: $80
    cp $7C                                        ; $584E: $FE $7C
    cp $7C                                        ; $5850: $FE $7C
    rst RST_38                                    ; $5852: $FF
    ld a, [hl]                                    ; $5853: $7E
    rst RST_38                                    ; $5854: $FF
    cp [hl]                                       ; $5855: $BE
    rst RST_38                                    ; $5856: $FF
    cp [hl]                                       ; $5857: $BE
    rst RST_38                                    ; $5858: $FF
    cp a                                          ; $5859: $BF
    rst RST_38                                    ; $585A: $FF
    ret c                                         ; $585B: $D8

    rst RST_38                                    ; $585C: $FF
    add b                                         ; $585D: $80
    rst RST_38                                    ; $585E: $FF
    rlca                                          ; $585F: $07
    rst RST_38                                    ; $5860: $FF
    adc a                                         ; $5861: $8F
    rst RST_38                                    ; $5862: $FF
    cp a                                          ; $5863: $BF
    rst RST_38                                    ; $5864: $FF
    rrca                                          ; $5865: $0F
    rrca                                          ; $5866: $0F
    ldh a, [c]                                    ; $5867: $F2
    add e                                         ; $5868: $83
    ld a, l                                       ; $5869: $7D
    ld h, e                                       ; $586A: $63
    sbc l                                         ; $586B: $9D
    sub a                                         ; $586C: $97
    ld l, c                                       ; $586D: $69
    xor a                                         ; $586E: $AF
    ld d, b                                       ; $586F: $50
    db $EC                                        ; $5870: $EC
    sub b                                         ; $5871: $90
    ldh a, [$FFC0]                                ; $5872: $F0 $C0
    ret nz                                        ; $5874: $C0

    nop                                           ; $5875: $00
    add b                                         ; $5876: $80
    nop                                           ; $5877: $00
    nop                                           ; $5878: $00
    nop                                           ; $5879: $00
    nop                                           ; $587A: $00
    nop                                           ; $587B: $00
    nop                                           ; $587C: $00
    nop                                           ; $587D: $00
    nop                                           ; $587E: $00
    nop                                           ; $587F: $00
    nop                                           ; $5880: $00
    nop                                           ; $5881: $00
    add b                                         ; $5882: $80
    nop                                           ; $5883: $00
    add b                                         ; $5884: $80
    nop                                           ; $5885: $00
    add b                                         ; $5886: $80
    nop                                           ; $5887: $00
    ldh a, [$FF80]                                ; $5888: $F0 $80
    call z, $8230                                 ; $588A: $CC $30 $82
    ld a, h                                       ; $588D: $7C
    ldh [c], a                                    ; $588E: $E2
    sbc h                                         ; $588F: $9C
    ldh a, [c]                                    ; $5890: $F2
    db $EC                                        ; $5891: $EC
    cp $E0                                        ; $5892: $FE $E0
    ld hl, sp-$70                                 ; $5894: $F8 $90
    ld hl, sp+$70                                 ; $5896: $F8 $70
    ld hl, sp-$10                                 ; $5898: $F8 $F0
    ld hl, sp-$20                                 ; $589A: $F8 $E0
    ldh [$FF80], a                                ; $589C: $E0 $80
    add b                                         ; $589E: $80
    nop                                           ; $589F: $00
    inc c                                         ; $58A0: $0C
    rlca                                          ; $58A1: $07
    inc c                                         ; $58A2: $0C
    rlca                                          ; $58A3: $07
    inc c                                         ; $58A4: $0C
    rlca                                          ; $58A5: $07
    inc c                                         ; $58A6: $0C
    rlca                                          ; $58A7: $07
    inc c                                         ; $58A8: $0C
    rlca                                          ; $58A9: $07
    inc c                                         ; $58AA: $0C
    rlca                                          ; $58AB: $07
    inc c                                         ; $58AC: $0C
    rlca                                          ; $58AD: $07
    inc c                                         ; $58AE: $0C
    rlca                                          ; $58AF: $07
    inc c                                         ; $58B0: $0C
    rlca                                          ; $58B1: $07
    ld b, $03                                     ; $58B2: $06 $03
    ld b, $03                                     ; $58B4: $06 $03
    ld b, $03                                     ; $58B6: $06 $03
    inc bc                                        ; $58B8: $03
    ld bc, $0103                                  ; $58B9: $01 $03 $01
    ld bc, $0100                                  ; $58BC: $01 $00 $01
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
    nop                                           ; $58CE: $00
    nop                                           ; $58CF: $00
    ld bc, $0100                                  ; $58D0: $01 $00 $01
    nop                                           ; $58D3: $00
    inc bc                                        ; $58D4: $03
    ld bc, $0103                                  ; $58D5: $01 $03 $01
    ld b, $03                                     ; $58D8: $06 $03
    ld b, $03                                     ; $58DA: $06 $03
    ld b, $03                                     ; $58DC: $06 $03
    inc c                                         ; $58DE: $0C
    rlca                                          ; $58DF: $07
    nop                                           ; $58E0: $00
    nop                                           ; $58E1: $00
    nop                                           ; $58E2: $00
    nop                                           ; $58E3: $00
    inc bc                                        ; $58E4: $03
    nop                                           ; $58E5: $00
    rrca                                          ; $58E6: $0F
    inc bc                                        ; $58E7: $03
    inc e                                         ; $58E8: $1C
    rrca                                          ; $58E9: $0F
    jr nc, jr_018_590B                            ; $58EA: $30 $1F

    ld h, b                                       ; $58EC: $60
    ccf                                           ; $58ED: $3F
    ret nz                                        ; $58EE: $C0

    ld a, a                                       ; $58EF: $7F
    add b                                         ; $58F0: $80
    rst RST_38                                    ; $58F1: $FF
    add b                                         ; $58F2: $80
    rst RST_38                                    ; $58F3: $FF
    nop                                           ; $58F4: $00
    rst RST_38                                    ; $58F5: $FF
    nop                                           ; $58F6: $00
    rst RST_38                                    ; $58F7: $FF
    nop                                           ; $58F8: $00
    rst RST_38                                    ; $58F9: $FF
    nop                                           ; $58FA: $00
    rst RST_38                                    ; $58FB: $FF
    nop                                           ; $58FC: $00
    rst RST_38                                    ; $58FD: $FF
    nop                                           ; $58FE: $00
    rst RST_38                                    ; $58FF: $FF
    nop                                           ; $5900: $00
    rst RST_38                                    ; $5901: $FF
    nop                                           ; $5902: $00
    rst RST_38                                    ; $5903: $FF
    ld bc, $11FF                                  ; $5904: $01 $FF $11
    rst RST_38                                    ; $5907: $FF
    ld de, $19FF                                  ; $5908: $11 $FF $19

jr_018_590B:
    rst RST_38                                    ; $590B: $FF
    add hl, de                                    ; $590C: $19
    rst RST_38                                    ; $590D: $FF
    add hl, de                                    ; $590E: $19
    rst RST_38                                    ; $590F: $FF
    dec e                                         ; $5910: $1D
    rst RST_38                                    ; $5911: $FF
    inc e                                         ; $5912: $1C
    rst RST_38                                    ; $5913: $FF
    ld e, $FF                                     ; $5914: $1E $FF
    ld c, a                                       ; $5916: $4F
    rst RST_38                                    ; $5917: $FF
    ld c, a                                       ; $5918: $4F
    rst RST_38                                    ; $5919: $FF
    ld l, a                                       ; $591A: $6F
    rst RST_38                                    ; $591B: $FF
    rst RST_30                                    ; $591C: $F7
    rst RST_38                                    ; $591D: $FF
    cp a                                          ; $591E: $BF
    rst RST_38                                    ; $591F: $FF
    rst RST_38                                    ; $5920: $FF
    ld a, a                                       ; $5921: $7F
    ld a, a                                       ; $5922: $7F
    ccf                                           ; $5923: $3F
    ccf                                           ; $5924: $3F
    rra                                           ; $5925: $1F
    rra                                           ; $5926: $1F
    rrca                                          ; $5927: $0F
    rrca                                          ; $5928: $0F
    rlca                                          ; $5929: $07
    rlca                                          ; $592A: $07
    ld bc, $0205                                  ; $592B: $01 $05 $02
    rlca                                          ; $592E: $07
    nop                                           ; $592F: $00
    nop                                           ; $5930: $00
    nop                                           ; $5931: $00
    nop                                           ; $5932: $00
    nop                                           ; $5933: $00
    nop                                           ; $5934: $00
    nop                                           ; $5935: $00
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
    nop                                           ; $594A: $00
    nop                                           ; $594B: $00
    nop                                           ; $594C: $00
    nop                                           ; $594D: $00
    nop                                           ; $594E: $00
    nop                                           ; $594F: $00
    rra                                           ; $5950: $1F
    nop                                           ; $5951: $00
    rst RST_38                                    ; $5952: $FF
    rra                                           ; $5953: $1F
    ldh [rIE], a                                  ; $5954: $E0 $FF
    nop                                           ; $5956: $00
    rst RST_38                                    ; $5957: $FF
    nop                                           ; $5958: $00
    rst RST_38                                    ; $5959: $FF
    nop                                           ; $595A: $00
    rst RST_38                                    ; $595B: $FF
    nop                                           ; $595C: $00
    rst RST_38                                    ; $595D: $FF
    inc bc                                        ; $595E: $03
    rst RST_38                                    ; $595F: $FF
    rlca                                          ; $5960: $07
    db $FC                                        ; $5961: $FC
    inc c                                         ; $5962: $0C
    ld hl, sp+$18                                 ; $5963: $F8 $18
    ldh a, [$FF30]                                ; $5965: $F0 $30
    ldh [$FF30], a                                ; $5967: $E0 $30
    ldh [$FF60], a                                ; $5969: $E0 $60
    ret nz                                        ; $596B: $C0

    ld [hl], b                                    ; $596C: $70
    ret nz                                        ; $596D: $C0

    ret nc                                        ; $596E: $D0

    and b                                         ; $596F: $A0
    ret nc                                        ; $5970: $D0

    and b                                         ; $5971: $A0
    rst RST_10                                    ; $5972: $D7
    and b                                         ; $5973: $A0
    sbc a                                         ; $5974: $9F
    ld h, a                                       ; $5975: $67
    cp a                                          ; $5976: $BF
    ld e, a                                       ; $5977: $5F
    cp a                                          ; $5978: $BF
    ld e, a                                       ; $5979: $5F
    cp a                                          ; $597A: $BF
    ld b, b                                       ; $597B: $40
    and b                                         ; $597C: $A0
    ld e, a                                       ; $597D: $5F
    cp [hl]                                       ; $597E: $BE
    ld b, c                                       ; $597F: $41
    pop bc                                        ; $5980: $C1
    ld a, $C1                                     ; $5981: $3E $C1
    cp [hl]                                       ; $5983: $BE
    pop bc                                        ; $5984: $C1
    cp [hl]                                       ; $5985: $BE
    pop hl                                        ; $5986: $E1
    sbc $F7                                       ; $5987: $DE $F7
    add sp, -$01                                  ; $5989: $E8 $FF
    ldh a, [c]                                    ; $598B: $F2
    rst RST_38                                    ; $598C: $FF
    db $FC                                        ; $598D: $FC
    rst RST_38                                    ; $598E: $FF
    rst RST_38                                    ; $598F: $FF
    rst RST_38                                    ; $5990: $FF
    rst RST_38                                    ; $5991: $FF
    rst RST_38                                    ; $5992: $FF
    rst RST_38                                    ; $5993: $FF
    rst RST_38                                    ; $5994: $FF
    rst RST_38                                    ; $5995: $FF

jr_018_5996:
    rst RST_38                                    ; $5996: $FF
    rst RST_38                                    ; $5997: $FF
    rst RST_38                                    ; $5998: $FF
    rst RST_38                                    ; $5999: $FF
    rst RST_38                                    ; $599A: $FF
    rst RST_38                                    ; $599B: $FF
    rst RST_38                                    ; $599C: $FF
    ld a, $FE                                     ; $599D: $3E $FE
    nop                                           ; $599F: $00
    nop                                           ; $59A0: $00
    nop                                           ; $59A1: $00
    nop                                           ; $59A2: $00
    nop                                           ; $59A3: $00
    nop                                           ; $59A4: $00
    nop                                           ; $59A5: $00
    nop                                           ; $59A6: $00
    nop                                           ; $59A7: $00
    nop                                           ; $59A8: $00
    nop                                           ; $59A9: $00
    nop                                           ; $59AA: $00
    nop                                           ; $59AB: $00

jr_018_59AC:
    nop                                           ; $59AC: $00
    nop                                           ; $59AD: $00
    nop                                           ; $59AE: $00
    nop                                           ; $59AF: $00
    rst RST_38                                    ; $59B0: $FF
    nop                                           ; $59B1: $00
    cp $F8                                        ; $59B2: $FE $F8
    jr c, jr_018_5996                             ; $59B4: $38 $E0

    ld a, h                                       ; $59B6: $7C
    ldh a, [$FFF0]                                ; $59B7: $F0 $F0
    ret nz                                        ; $59B9: $C0

    jr c, jr_018_59AC                             ; $59BA: $38 $F0

    db $FC                                        ; $59BC: $FC
    ret nz                                        ; $59BD: $C0

    ret nz                                        ; $59BE: $C0

    nop                                           ; $59BF: $00
    rlca                                          ; $59C0: $07
    nop                                           ; $59C1: $00
    rlca                                          ; $59C2: $07
    nop                                           ; $59C3: $00
    ccf                                           ; $59C4: $3F
    nop                                           ; $59C5: $00
    rst RST_38                                    ; $59C6: $FF
    jr @+$01                                      ; $59C7: $18 $FF

    sbc $FF                                       ; $59C9: $DE $FF
    cp [hl]                                       ; $59CB: $BE
    rst RST_38                                    ; $59CC: $FF
    cp l                                          ; $59CD: $BD
    rst RST_38                                    ; $59CE: $FF
    ld a, l                                       ; $59CF: $7D
    rst RST_38                                    ; $59D0: $FF
    ld a, l                                       ; $59D1: $7D
    rst RST_38                                    ; $59D2: $FF
    dec sp                                        ; $59D3: $3B
    rst RST_38                                    ; $59D4: $FF
    ld e, e                                       ; $59D5: $5B
    ld a, a                                       ; $59D6: $7F
    adc e                                         ; $59D7: $8B
    ld a, a                                       ; $59D8: $7F
    sub b                                         ; $59D9: $90
    ld a, a                                       ; $59DA: $7F
    add b                                         ; $59DB: $80
    rst RST_38                                    ; $59DC: $FF
    add hl, de                                    ; $59DD: $19
    ld a, a                                       ; $59DE: $7F
    sbc c                                         ; $59DF: $99
    rst RST_38                                    ; $59E0: $FF
    inc e                                         ; $59E1: $1C
    rst RST_38                                    ; $59E2: $FF
    call z, Call_000_0CFF                         ; $59E3: $CC $FF $0C
    rst RST_38                                    ; $59E6: $FF
    nop                                           ; $59E7: $00
    adc a                                         ; $59E8: $8F
    rlca                                          ; $59E9: $07
    adc a                                         ; $59EA: $8F
    rlca                                          ; $59EB: $07
    sbc a                                         ; $59EC: $9F
    ld bc, $12AD                                  ; $59ED: $01 $AD $12
    ld d, c                                       ; $59F0: $51
    ld l, $7F                                     ; $59F1: $2E $7F
    nop                                           ; $59F3: $00
    nop                                           ; $59F4: $00
    nop                                           ; $59F5: $00
    nop                                           ; $59F6: $00
    nop                                           ; $59F7: $00
    nop                                           ; $59F8: $00
    nop                                           ; $59F9: $00
    nop                                           ; $59FA: $00
    nop                                           ; $59FB: $00
    nop                                           ; $59FC: $00
    nop                                           ; $59FD: $00
    nop                                           ; $59FE: $00
    nop                                           ; $59FF: $00
    ldh a, [rP1]                                  ; $5A00: $F0 $00
    db $FC                                        ; $5A02: $FC
    jr nc, @+$01                                  ; $5A03: $30 $FF

    inc a                                         ; $5A05: $3C
    rst RST_38                                    ; $5A06: $FF
    ccf                                           ; $5A07: $3F
    rst RST_38                                    ; $5A08: $FF
    sbc a                                         ; $5A09: $9F
    rst RST_38                                    ; $5A0A: $FF
    sbc $FF                                       ; $5A0B: $DE $FF
    add $FF                                       ; $5A0D: $C6 $FF
    ret nz                                        ; $5A0F: $C0

    ret nc                                        ; $5A10: $D0

    adc a                                         ; $5A11: $8F
    rst RST_38                                    ; $5A12: $FF
    add b                                         ; $5A13: $80
    rst RST_38                                    ; $5A14: $FF
    rra                                           ; $5A15: $1F
    rst RST_38                                    ; $5A16: $FF
    ld l, a                                       ; $5A17: $6F
    ld a, a                                       ; $5A18: $7F
    sub a                                         ; $5A19: $97
    rra                                           ; $5A1A: $1F
    rst RST_20                                    ; $5A1B: $E7
    rst RST_08                                    ; $5A1C: $CF
    ld sp, $D6EF                                  ; $5A1D: $31 $EF $D6
    cp $E0                                        ; $5A20: $FE $E0
    ldh a, [$FFE0]                                ; $5A22: $F0 $E0
    ldh a, [$FFE0]                                ; $5A24: $F0 $E0
    ld hl, sp-$10                                 ; $5A26: $F8 $F0
    ld hl, sp+$70                                 ; $5A28: $F8 $70
    ld hl, sp+$70                                 ; $5A2A: $F8 $70

jr_018_5A2C:
    ld hl, sp+$70                                 ; $5A2C: $F8 $70
    ld hl, sp-$50                                 ; $5A2E: $F8 $B0
    ldh a, [$FF80]                                ; $5A30: $F0 $80
    ret nz                                        ; $5A32: $C0

    nop                                           ; $5A33: $00
    nop                                           ; $5A34: $00
    nop                                           ; $5A35: $00
    nop                                           ; $5A36: $00
    nop                                           ; $5A37: $00
    nop                                           ; $5A38: $00
    nop                                           ; $5A39: $00
    nop                                           ; $5A3A: $00
    nop                                           ; $5A3B: $00
    nop                                           ; $5A3C: $00
    nop                                           ; $5A3D: $00
    nop                                           ; $5A3E: $00
    nop                                           ; $5A3F: $00
    ret nz                                        ; $5A40: $C0

    nop                                           ; $5A41: $00
    and b                                         ; $5A42: $A0
    ld b, b                                       ; $5A43: $40
    db $10                                        ; $5A44: $10
    ldh [rNR10], a                                ; $5A45: $E0 $10
    ldh [rSVBK], a                                ; $5A47: $E0 $70
    add b                                         ; $5A49: $80
    jr jr_018_5A2C                                ; $5A4A: $18 $E0

    inc e                                         ; $5A4C: $1C

jr_018_5A4D:
    add sp, -$04                                  ; $5A4D: $E8 $FC
    jr jr_018_5A4D                                ; $5A4F: $18 $FC

    ld hl, sp-$04                                 ; $5A51: $F8 $FC
    ld hl, sp-$02                                 ; $5A53: $F8 $FE
    ldh a, [$FFF2]                                ; $5A55: $F0 $F2
    db $EC                                        ; $5A57: $EC
    ldh [c], a                                    ; $5A58: $E2
    inc e                                         ; $5A59: $1C
    ld de, $090E                                  ; $5A5A: $11 $0E $09
    ld b, $07                                     ; $5A5D: $06 $07
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
    rlca                                          ; $5A6A: $07
    nop                                           ; $5A6B: $00
    inc b                                         ; $5A6C: $04
    inc bc                                        ; $5A6D: $03
    inc b                                         ; $5A6E: $04
    inc bc                                        ; $5A6F: $03
    inc b                                         ; $5A70: $04
    inc bc                                        ; $5A71: $03
    inc b                                         ; $5A72: $04
    inc bc                                        ; $5A73: $03
    inc b                                         ; $5A74: $04
    inc bc                                        ; $5A75: $03
    inc b                                         ; $5A76: $04
    inc bc                                        ; $5A77: $03
    inc b                                         ; $5A78: $04
    inc bc                                        ; $5A79: $03
    inc b                                         ; $5A7A: $04
    inc bc                                        ; $5A7B: $03
    inc b                                         ; $5A7C: $04
    inc bc                                        ; $5A7D: $03
    inc e                                         ; $5A7E: $1C
    inc bc                                        ; $5A7F: $03
    inc e                                         ; $5A80: $1C
    dec bc                                        ; $5A81: $0B
    inc e                                         ; $5A82: $1C
    dec bc                                        ; $5A83: $0B
    inc e                                         ; $5A84: $1C
    dec bc                                        ; $5A85: $0B
    inc e                                         ; $5A86: $1C
    dec bc                                        ; $5A87: $0B
    rra                                           ; $5A88: $1F
    nop                                           ; $5A89: $00
    jr jr_018_5A93                                ; $5A8A: $18 $07

    rra                                           ; $5A8C: $1F
    rlca                                          ; $5A8D: $07
    rra                                           ; $5A8E: $1F
    nop                                           ; $5A8F: $00
    inc c                                         ; $5A90: $0C
    inc bc                                        ; $5A91: $03
    inc c                                         ; $5A92: $0C

jr_018_5A93:
    inc bc                                        ; $5A93: $03
    inc c                                         ; $5A94: $0C
    inc bc                                        ; $5A95: $03
    inc c                                         ; $5A96: $0C
    inc bc                                        ; $5A97: $03
    rrca                                          ; $5A98: $0F
    inc bc                                        ; $5A99: $03
    inc b                                         ; $5A9A: $04
    inc bc                                        ; $5A9B: $03
    inc b                                         ; $5A9C: $04
    inc bc                                        ; $5A9D: $03
    rlca                                          ; $5A9E: $07
    nop                                           ; $5A9F: $00
    nop                                           ; $5AA0: $00
    nop                                           ; $5AA1: $00
    nop                                           ; $5AA2: $00
    nop                                           ; $5AA3: $00
    nop                                           ; $5AA4: $00
    nop                                           ; $5AA5: $00
    nop                                           ; $5AA6: $00
    nop                                           ; $5AA7: $00
    nop                                           ; $5AA8: $00
    nop                                           ; $5AA9: $00
    ldh [rP1], a                                  ; $5AAA: $E0 $00
    sub b                                         ; $5AAC: $90
    ld h, b                                       ; $5AAD: $60
    sub b                                         ; $5AAE: $90
    ld h, b                                       ; $5AAF: $60
    sub b                                         ; $5AB0: $90
    ld h, b                                       ; $5AB1: $60
    sub a                                         ; $5AB2: $97
    ld h, b                                       ; $5AB3: $60
    sbc a                                         ; $5AB4: $9F
    ld h, a                                       ; $5AB5: $67
    cp a                                          ; $5AB6: $BF
    ld e, a                                       ; $5AB7: $5F
    cp a                                          ; $5AB8: $BF
    ld e, a                                       ; $5AB9: $5F
    cp a                                          ; $5ABA: $BF
    ld b, b                                       ; $5ABB: $40
    and b                                         ; $5ABC: $A0
    ld e, a                                       ; $5ABD: $5F
    cp [hl]                                       ; $5ABE: $BE
    ld b, c                                       ; $5ABF: $41
    pop bc                                        ; $5AC0: $C1
    ld a, $C1                                     ; $5AC1: $3E $C1
    ld a, $C1                                     ; $5AC3: $3E $C1
    ld a, $C1                                     ; $5AC5: $3E $C1
    ld a, $E7                                     ; $5AC7: $3E $E7
    jr jr_018_5B0A                                ; $5AC9: $18 $3F

    jp nz, $C0FF                                  ; $5ACB: $C2 $FF $C0

    rst RST_38                                    ; $5ACE: $FF
    inc e                                         ; $5ACF: $1C
    ld a, h                                       ; $5AD0: $7C
    add e                                         ; $5AD1: $83
    ld a, c                                       ; $5AD2: $79
    or [hl]                                       ; $5AD3: $B6
    ld [hl], b                                    ; $5AD4: $70
    xor a                                         ; $5AD5: $AF
    ld [hl], b                                    ; $5AD6: $70
    xor a                                         ; $5AD7: $AF
    ldh a, [$FFAF]                                ; $5AD8: $F0 $AF
    ld [hl], b                                    ; $5ADA: $70
    xor a                                         ; $5ADB: $AF
    ld [hl], c                                    ; $5ADC: $71
    adc [hl]                                      ; $5ADD: $8E
    adc $00                                       ; $5ADE: $CE $00
    rst RST_38                                    ; $5AE0: $FF
    ld b, d                                       ; $5AE1: $42
    rst RST_38                                    ; $5AE2: $FF
    ld [hl], b                                    ; $5AE3: $70
    db $FD                                        ; $5AE4: $FD
    ld a, b                                       ; $5AE5: $78
    db $FC                                        ; $5AE6: $FC
    ld a, b                                       ; $5AE7: $78
    rst RST_38                                    ; $5AE8: $FF
    nop                                           ; $5AE9: $00
    rst RST_38                                    ; $5AEA: $FF
    ld a, l                                       ; $5AEB: $7D

jr_018_5AEC:
    rst RST_38                                    ; $5AEC: $FF
    ld a, l                                       ; $5AED: $7D
    rst RST_38                                    ; $5AEE: $FF
    ld a, l                                       ; $5AEF: $7D
    rst RST_38                                    ; $5AF0: $FF
    ld a, l                                       ; $5AF1: $7D
    rst RST_38                                    ; $5AF2: $FF
    ld a, l                                       ; $5AF3: $7D
    rst RST_38                                    ; $5AF4: $FF
    ld a, l                                       ; $5AF5: $7D
    ld a, a                                       ; $5AF6: $7F
    nop                                           ; $5AF7: $00
    add l                                         ; $5AF8: $85
    ld [bc], a                                    ; $5AF9: $02
    cp $01                                        ; $5AFA: $FE $01
    di                                            ; $5AFC: $F3
    ld c, h                                       ; $5AFD: $4C
    ld sp, hl                                     ; $5AFE: $F9
    halt                                          ; $5AFF: $76
    rlca                                          ; $5B00: $07
    nop                                           ; $5B01: $00
    nop                                           ; $5B02: $00
    nop                                           ; $5B03: $00
    nop                                           ; $5B04: $00
    nop                                           ; $5B05: $00
    nop                                           ; $5B06: $00
    nop                                           ; $5B07: $00
    rlca                                          ; $5B08: $07
    nop                                           ; $5B09: $00

jr_018_5B0A:
    rrca                                          ; $5B0A: $0F
    ld b, $0F                                     ; $5B0B: $06 $0F
    ld b, $0F                                     ; $5B0D: $06 $0F
    ld b, $0F                                     ; $5B0F: $06 $0F
    ld b, $0F                                     ; $5B11: $06 $0F
    ld b, $07                                     ; $5B13: $06 $07
    nop                                           ; $5B15: $00
    rlca                                          ; $5B16: $07
    inc bc                                        ; $5B17: $03
    rlca                                          ; $5B18: $07
    inc bc                                        ; $5B19: $03
    rra                                           ; $5B1A: $1F
    ld bc, $1629                                  ; $5B1B: $01 $29 $16
    ld d, c                                       ; $5B1E: $51
    ld l, $7F                                     ; $5B1F: $2E $7F
    nop                                           ; $5B21: $00
    nop                                           ; $5B22: $00
    nop                                           ; $5B23: $00
    nop                                           ; $5B24: $00
    nop                                           ; $5B25: $00
    nop                                           ; $5B26: $00
    nop                                           ; $5B27: $00
    nop                                           ; $5B28: $00
    nop                                           ; $5B29: $00
    nop                                           ; $5B2A: $00
    nop                                           ; $5B2B: $00
    nop                                           ; $5B2C: $00
    nop                                           ; $5B2D: $00
    nop                                           ; $5B2E: $00
    nop                                           ; $5B2F: $00
    nop                                           ; $5B30: $00
    nop                                           ; $5B31: $00
    nop                                           ; $5B32: $00
    nop                                           ; $5B33: $00
    nop                                           ; $5B34: $00
    nop                                           ; $5B35: $00
    nop                                           ; $5B36: $00
    nop                                           ; $5B37: $00
    nop                                           ; $5B38: $00
    nop                                           ; $5B39: $00
    nop                                           ; $5B3A: $00
    nop                                           ; $5B3B: $00
    nop                                           ; $5B3C: $00
    nop                                           ; $5B3D: $00
    nop                                           ; $5B3E: $00
    nop                                           ; $5B3F: $00
    db $FC                                        ; $5B40: $FC
    ld a, e                                       ; $5B41: $7B
    cp $79                                        ; $5B42: $FE $79
    db $FD                                        ; $5B44: $FD
    ld a, b                                       ; $5B45: $78
    db $FC                                        ; $5B46: $FC
    ld a, b                                       ; $5B47: $78
    ld hl, sp+$70                                 ; $5B48: $F8 $70
    ld hl, sp+$70                                 ; $5B4A: $F8 $70
    ld hl, sp+$70                                 ; $5B4C: $F8 $70
    ld hl, sp+$70                                 ; $5B4E: $F8 $70
    ld hl, sp+$00                                 ; $5B50: $F8 $00
    nop                                           ; $5B52: $00
    nop                                           ; $5B53: $00
    nop                                           ; $5B54: $00
    nop                                           ; $5B55: $00
    nop                                           ; $5B56: $00
    nop                                           ; $5B57: $00
    nop                                           ; $5B58: $00
    nop                                           ; $5B59: $00
    nop                                           ; $5B5A: $00
    nop                                           ; $5B5B: $00
    nop                                           ; $5B5C: $00
    nop                                           ; $5B5D: $00
    nop                                           ; $5B5E: $00
    nop                                           ; $5B5F: $00
    db $FC                                        ; $5B60: $FC
    ld b, b                                       ; $5B61: $40
    rst RST_00                                    ; $5B62: $C7
    jr c, jr_018_5AEC                             ; $5B63: $38 $87

    ld a, b                                       ; $5B65: $78
    adc [hl]                                      ; $5B66: $8E
    ld [hl], c                                    ; $5B67: $71
    rst RST_28                                    ; $5B68: $EF
    db $10                                        ; $5B69: $10
    rst RST_38                                    ; $5B6A: $FF
    ld l, h                                       ; $5B6B: $6C
    rst RST_38                                    ; $5B6C: $FF
    ld l, l                                       ; $5B6D: $6D
    rst RST_38                                    ; $5B6E: $FF
    dec c                                         ; $5B6F: $0D
    rst RST_38                                    ; $5B70: $FF
    ld l, l                                       ; $5B71: $6D
    ld a, a                                       ; $5B72: $7F
    nop                                           ; $5B73: $00
    nop                                           ; $5B74: $00
    nop                                           ; $5B75: $00
    nop                                           ; $5B76: $00
    nop                                           ; $5B77: $00
    nop                                           ; $5B78: $00
    nop                                           ; $5B79: $00
    nop                                           ; $5B7A: $00
    nop                                           ; $5B7B: $00
    nop                                           ; $5B7C: $00
    nop                                           ; $5B7D: $00
    nop                                           ; $5B7E: $00
    nop                                           ; $5B7F: $00
    add b                                         ; $5B80: $80
    nop                                           ; $5B81: $00
    add b                                         ; $5B82: $80
    nop                                           ; $5B83: $00
    ret nz                                        ; $5B84: $C0

    nop                                           ; $5B85: $00
    ret nz                                        ; $5B86: $C0

    nop                                           ; $5B87: $00
    and b                                         ; $5B88: $A0
    ld b, b                                       ; $5B89: $40
    and b                                         ; $5B8A: $A0
    ld b, b                                       ; $5B8B: $40
    and b                                         ; $5B8C: $A0
    ld b, b                                       ; $5B8D: $40
    ldh [rP1], a                                  ; $5B8E: $E0 $00
    nop                                           ; $5B90: $00
    nop                                           ; $5B91: $00
    nop                                           ; $5B92: $00
    nop                                           ; $5B93: $00
    nop                                           ; $5B94: $00
    nop                                           ; $5B95: $00
    nop                                           ; $5B96: $00
    nop                                           ; $5B97: $00
    nop                                           ; $5B98: $00
    nop                                           ; $5B99: $00
    nop                                           ; $5B9A: $00
    nop                                           ; $5B9B: $00
    nop                                           ; $5B9C: $00
    nop                                           ; $5B9D: $00
    nop                                           ; $5B9E: $00
    nop                                           ; $5B9F: $00
    nop                                           ; $5BA0: $00
    nop                                           ; $5BA1: $00
    nop                                           ; $5BA2: $00
    nop                                           ; $5BA3: $00
    ld a, [hl]                                    ; $5BA4: $7E
    nop                                           ; $5BA5: $00
    pop hl                                        ; $5BA6: $E1
    ld e, $A0                                     ; $5BA7: $1E $A0
    ld e, a                                       ; $5BA9: $5F
    and a                                         ; $5BAA: $A7
    ld e, b                                       ; $5BAB: $58
    rst RST_38                                    ; $5BAC: $FF
    ld h, [hl]                                    ; $5BAD: $66
    pop af                                        ; $5BAE: $F1
    ld c, $FD                                     ; $5BAF: $0E $FD
    ld [bc], a                                    ; $5BB1: $02
    jp nc, $FFAD                                  ; $5BB2: $D2 $AD $FF

    ret nz                                        ; $5BB5: $C0

    rst RST_38                                    ; $5BB6: $FF
    cp a                                          ; $5BB7: $BF
    rst RST_38                                    ; $5BB8: $FF
    nop                                           ; $5BB9: $00
    rst RST_38                                    ; $5BBA: $FF
    cp a                                          ; $5BBB: $BF
    rst RST_38                                    ; $5BBC: $FF
    cp a                                          ; $5BBD: $BF
    rst RST_38                                    ; $5BBE: $FF
    nop                                           ; $5BBF: $00
    nop                                           ; $5BC0: $00
    nop                                           ; $5BC1: $00
    nop                                           ; $5BC2: $00
    nop                                           ; $5BC3: $00
    rrca                                          ; $5BC4: $0F
    nop                                           ; $5BC5: $00
    db $FC                                        ; $5BC6: $FC
    rlca                                          ; $5BC7: $07
    and $1B                                       ; $5BC8: $E6 $1B
    and $1B                                       ; $5BCA: $E6 $1B
    cp $1B                                        ; $5BCC: $FE $1B
    rst RST_38                                    ; $5BCE: $FF
    nop                                           ; $5BCF: $00
    rst RST_38                                    ; $5BD0: $FF
    sbc a                                         ; $5BD1: $9F
    rst RST_38                                    ; $5BD2: $FF
    sbc [hl]                                      ; $5BD3: $9E
    rst RST_38                                    ; $5BD4: $FF
    sbc [hl]                                      ; $5BD5: $9E
    rst RST_38                                    ; $5BD6: $FF
    sbc l                                         ; $5BD7: $9D
    rst RST_38                                    ; $5BD8: $FF
    sbc h                                         ; $5BD9: $9C
    rst RST_38                                    ; $5BDA: $FF
    add c                                         ; $5BDB: $81
    cp a                                          ; $5BDC: $BF
    nop                                           ; $5BDD: $00
    ccf                                           ; $5BDE: $3F
    add hl, de                                    ; $5BDF: $19
    ld a, a                                       ; $5BE0: $7F
    inc sp                                        ; $5BE1: $33
    ld a, a                                       ; $5BE2: $7F
    add hl, sp                                    ; $5BE3: $39
    ccf                                           ; $5BE4: $3F
    add hl, de                                    ; $5BE5: $19
    ccf                                           ; $5BE6: $3F
    add hl, de                                    ; $5BE7: $19
    ccf                                           ; $5BE8: $3F
    ld bc, $0E1F                                  ; $5BE9: $01 $1F $0E
    rra                                           ; $5BEC: $1F
    ld c, $3F                                     ; $5BED: $0E $3F
    ld [bc], a                                    ; $5BEF: $02
    ld e, e                                       ; $5BF0: $5B
    dec h                                         ; $5BF1: $25
    and e                                         ; $5BF2: $A3
    ld e, l                                       ; $5BF3: $5D
    rst RST_38                                    ; $5BF4: $FF
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
    add b                                         ; $5C01: $80
    rst RST_28                                    ; $5C02: $EF
    rst RST_10                                    ; $5C03: $D7
    rst RST_20                                    ; $5C04: $E7
    db $DB                                        ; $5C05: $DB
    rst RST_20                                    ; $5C06: $E7
    jp c, $E0FF                                   ; $5C07: $DA $FF $E0

    pop af                                        ; $5C0A: $F1
    ldh [$FFF1], a                                ; $5C0B: $E0 $F1
    ldh [$FFF1], a                                ; $5C0D: $E0 $F1
    ldh [$FFF1], a                                ; $5C0F: $E0 $F1
    ld h, b                                       ; $5C11: $60
    pop hl                                        ; $5C12: $E1
    nop                                           ; $5C13: $00

jr_018_5C14:
    add c                                         ; $5C14: $81
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
    ldh [rP1], a                                  ; $5C20: $E0 $00
    ret nz                                        ; $5C22: $C0

    add b                                         ; $5C23: $80
    and b                                         ; $5C24: $A0
    ld b, b                                       ; $5C25: $40
    db $10                                        ; $5C26: $10
    ldh [$FF0E], a                                ; $5C27: $E0 $0E
    ldh a, [rNR33]                                ; $5C29: $F0 $1D
    ldh [c], a                                    ; $5C2B: $E2
    rst RST_18                                    ; $5C2C: $DF
    jr nz, @+$01                                  ; $5C2D: $20 $FF

    ret c                                         ; $5C2F: $D8

    rst RST_38                                    ; $5C30: $FF
    jp c, $1AFF                                   ; $5C31: $DA $FF $1A

    rst RST_38                                    ; $5C34: $FF
    jp c, Jump_000_00FF                           ; $5C35: $DA $FF $00

    nop                                           ; $5C38: $00
    nop                                           ; $5C39: $00
    nop                                           ; $5C3A: $00
    nop                                           ; $5C3B: $00
    nop                                           ; $5C3C: $00
    nop                                           ; $5C3D: $00
    nop                                           ; $5C3E: $00
    nop                                           ; $5C3F: $00
    nop                                           ; $5C40: $00
    nop                                           ; $5C41: $00
    nop                                           ; $5C42: $00
    nop                                           ; $5C43: $00
    nop                                           ; $5C44: $00
    nop                                           ; $5C45: $00
    nop                                           ; $5C46: $00
    nop                                           ; $5C47: $00
    nop                                           ; $5C48: $00
    nop                                           ; $5C49: $00
    nop                                           ; $5C4A: $00
    nop                                           ; $5C4B: $00
    nop                                           ; $5C4C: $00
    nop                                           ; $5C4D: $00
    nop                                           ; $5C4E: $00
    nop                                           ; $5C4F: $00
    nop                                           ; $5C50: $00
    nop                                           ; $5C51: $00
    nop                                           ; $5C52: $00
    nop                                           ; $5C53: $00
    nop                                           ; $5C54: $00
    nop                                           ; $5C55: $00
    ld a, a                                       ; $5C56: $7F
    nop                                           ; $5C57: $00
    db $F4                                        ; $5C58: $F4
    rrca                                          ; $5C59: $0F
    db $F4                                        ; $5C5A: $F4
    rrca                                          ; $5C5B: $0F
    rst RST_38                                    ; $5C5C: $FF
    rrca                                          ; $5C5D: $0F
    ld a, a                                       ; $5C5E: $7F
    nop                                           ; $5C5F: $00
    nop                                           ; $5C60: $00
    nop                                           ; $5C61: $00
    pop af                                        ; $5C62: $F1
    nop                                           ; $5C63: $00
    rst RST_28                                    ; $5C64: $EF
    ld [hl], b                                    ; $5C65: $70
    ld l, c                                       ; $5C66: $69
    or [hl]                                       ; $5C67: $B6
    ld l, b                                       ; $5C68: $68
    or a                                          ; $5C69: $B7
    rst RST_28                                    ; $5C6A: $EF
    or a                                          ; $5C6B: $B7
    rst RST_38                                    ; $5C6C: $FF
    nop                                           ; $5C6D: $00
    ld c, $05                                     ; $5C6E: $0E $05
    rrca                                          ; $5C70: $0F
    inc b                                         ; $5C71: $04
    rlca                                          ; $5C72: $07
    ld [bc], a                                    ; $5C73: $02
    rra                                           ; $5C74: $1F
    nop                                           ; $5C75: $00
    cpl                                           ; $5C76: $2F
    dec d                                         ; $5C77: $15
    ld e, a                                       ; $5C78: $5F
    dec h                                         ; $5C79: $25
    cpl                                           ; $5C7A: $2F
    db $10                                        ; $5C7B: $10
    inc de                                        ; $5C7C: $13
    dec c                                         ; $5C7D: $0D
    rra                                           ; $5C7E: $1F
    nop                                           ; $5C7F: $00
    ldh a, [rP1]                                  ; $5C80: $F0 $00
    inc c                                         ; $5C82: $0C
    ldh a, [rSC]                                  ; $5C83: $F0 $02
    db $FC                                        ; $5C85: $FC
    add hl, sp                                    ; $5C86: $39
    add $FF                                       ; $5C87: $C6 $FF
    jr nc, jr_018_5C14                            ; $5C89: $30 $89

    halt                                          ; $5C8B: $76
    jp hl                                         ; $5C8C: $E9


    ld d, $97                                     ; $5C8D: $16 $97
    ld l, b                                       ; $5C8F: $68
    rst RST_38                                    ; $5C90: $FF
    inc bc                                        ; $5C91: $03
    rst RST_38                                    ; $5C92: $FF
    cp $FF                                        ; $5C93: $FE $FF
    nop                                           ; $5C95: $00
    rst RST_38                                    ; $5C96: $FF
    ldh a, [rIE]                                  ; $5C97: $F0 $FF
    rst RST_30                                    ; $5C99: $F7
    rst RST_38                                    ; $5C9A: $FF
    rlca                                          ; $5C9B: $07
    rst RST_08                                    ; $5C9C: $CF
    or a                                          ; $5C9D: $B7
    rst RST_38                                    ; $5C9E: $FF
    rlca                                          ; $5C9F: $07
    jr c, jr_018_5CA2                             ; $5CA0: $38 $00

jr_018_5CA2:
    cp $38                                        ; $5CA2: $FE $38
    rst RST_38                                    ; $5CA4: $FF
    ld a, [hl]                                    ; $5CA5: $7E
    rst RST_38                                    ; $5CA6: $FF
    ccf                                           ; $5CA7: $3F
    rst RST_38                                    ; $5CA8: $FF
    call z, $F0FF                                 ; $5CA9: $CC $FF $F0
    rst RST_38                                    ; $5CAC: $FF
    ld a, b                                       ; $5CAD: $78
    rst RST_38                                    ; $5CAE: $FF
    ld sp, $C7FF                                  ; $5CAF: $31 $FF $C7
    rst RST_38                                    ; $5CB2: $FF
    ld hl, $1EE1                                  ; $5CB3: $21 $E1 $1E
    ret nc                                        ; $5CB6: $D0

    cpl                                           ; $5CB7: $2F
    db $EC                                        ; $5CB8: $EC
    ld d, e                                       ; $5CB9: $53
    or $69                                        ; $5CBA: $F6 $69
    push af                                       ; $5CBC: $F5
    ld l, d                                       ; $5CBD: $6A
    ei                                            ; $5CBE: $FB
    ld h, b                                       ; $5CBF: $60
    nop                                           ; $5CC0: $00
    nop                                           ; $5CC1: $00
    nop                                           ; $5CC2: $00
    nop                                           ; $5CC3: $00
    nop                                           ; $5CC4: $00
    nop                                           ; $5CC5: $00
    add b                                         ; $5CC6: $80
    nop                                           ; $5CC7: $00
    ldh [$FF80], a                                ; $5CC8: $E0 $80
    ldh [rP1], a                                  ; $5CCA: $E0 $00
    ldh a, [rP1]                                  ; $5CCC: $F0 $00
    ld hl, sp+$70                                 ; $5CCE: $F8 $70
    db $FC                                        ; $5CD0: $FC
    ld hl, sp-$02                                 ; $5CD1: $F8 $FE
    db $FC                                        ; $5CD3: $FC
    rst RST_38                                    ; $5CD4: $FF
    ldh a, [c]                                    ; $5CD5: $F2
    rst RST_38                                    ; $5CD6: $FF
    ld c, [hl]                                    ; $5CD7: $4E
    ld a, a                                       ; $5CD8: $7F
    cp [hl]                                       ; $5CD9: $BE
    ld a, a                                       ; $5CDA: $7F
    cp h                                          ; $5CDB: $BC
    db $FC                                        ; $5CDC: $FC
    jr nc, @-$0E                                  ; $5CDD: $30 $F0

    nop                                           ; $5CDF: $00
    inc c                                         ; $5CE0: $0C
    inc bc                                        ; $5CE1: $03
    jr nc, jr_018_5CF3                            ; $5CE2: $30 $0F

    jr c, jr_018_5CFD                             ; $5CE4: $38 $17

    ld a, a                                       ; $5CE6: $7F
    jr c, jr_018_5D68                             ; $5CE7: $38 $7F

    ld a, $7F                                     ; $5CE9: $3E $7F
    dec e                                         ; $5CEB: $1D

jr_018_5CEC:
    rra                                           ; $5CEC: $1F
    nop                                           ; $5CED: $00
    nop                                           ; $5CEE: $00
    nop                                           ; $5CEF: $00
    nop                                           ; $5CF0: $00
    nop                                           ; $5CF1: $00
    nop                                           ; $5CF2: $00

jr_018_5CF3:
    nop                                           ; $5CF3: $00
    nop                                           ; $5CF4: $00
    nop                                           ; $5CF5: $00
    nop                                           ; $5CF6: $00
    nop                                           ; $5CF7: $00
    nop                                           ; $5CF8: $00
    nop                                           ; $5CF9: $00
    nop                                           ; $5CFA: $00
    nop                                           ; $5CFB: $00
    nop                                           ; $5CFC: $00

jr_018_5CFD:
    nop                                           ; $5CFD: $00

Call_018_5CFE:
    nop                                           ; $5CFE: $00
    nop                                           ; $5CFF: $00
    ld a, a                                       ; $5D00: $7F
    or b                                          ; $5D01: $B0
    ccf                                           ; $5D02: $3F
    rst RST_10                                    ; $5D03: $D7
    ld a, a                                       ; $5D04: $7F
    sub a                                         ; $5D05: $97
    rst RST_38                                    ; $5D06: $FF
    ld h, h                                       ; $5D07: $64
    db $FD                                        ; $5D08: $FD
    ldh a, [c]                                    ; $5D09: $F2
    db $FD                                        ; $5D0A: $FD
    ldh a, [c]                                    ; $5D0B: $F2
    ld sp, hl                                     ; $5D0C: $F9
    ld b, $0F                                     ; $5D0D: $06 $0F
    nop                                           ; $5D0F: $00
    nop                                           ; $5D10: $00
    nop                                           ; $5D11: $00
    nop                                           ; $5D12: $00
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
    ldh a, [$FFE0]                                ; $5D20: $F0 $E0
    ldh a, [$FFE0]                                ; $5D22: $F0 $E0
    ldh a, [$FF60]                                ; $5D24: $F0 $60
    ld [hl], b                                    ; $5D26: $70
    and b                                         ; $5D27: $A0
    ld [hl], b                                    ; $5D28: $70
    add b                                         ; $5D29: $80
    jr nz, jr_018_5CEC                            ; $5D2A: $20 $C0

    ldh [rP1], a                                  ; $5D2C: $E0 $00
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
    nop                                           ; $5D4A: $00
    nop                                           ; $5D4B: $00
    nop                                           ; $5D4C: $00
    nop                                           ; $5D4D: $00
    nop                                           ; $5D4E: $00
    nop                                           ; $5D4F: $00
    nop                                           ; $5D50: $00
    nop                                           ; $5D51: $00
    nop                                           ; $5D52: $00
    nop                                           ; $5D53: $00
    nop                                           ; $5D54: $00
    nop                                           ; $5D55: $00
    rlca                                          ; $5D56: $07
    nop                                           ; $5D57: $00
    rrca                                          ; $5D58: $0F
    nop                                           ; $5D59: $00
    rrca                                          ; $5D5A: $0F
    nop                                           ; $5D5B: $00
    rrca                                          ; $5D5C: $0F
    nop                                           ; $5D5D: $00
    rlca                                          ; $5D5E: $07
    nop                                           ; $5D5F: $00
    nop                                           ; $5D60: $00
    nop                                           ; $5D61: $00
    nop                                           ; $5D62: $00
    nop                                           ; $5D63: $00
    nop                                           ; $5D64: $00
    nop                                           ; $5D65: $00
    nop                                           ; $5D66: $00
    nop                                           ; $5D67: $00

jr_018_5D68:
    nop                                           ; $5D68: $00
    nop                                           ; $5D69: $00
    nop                                           ; $5D6A: $00
    nop                                           ; $5D6B: $00
    nop                                           ; $5D6C: $00
    nop                                           ; $5D6D: $00
    nop                                           ; $5D6E: $00
    nop                                           ; $5D6F: $00
    nop                                           ; $5D70: $00
    nop                                           ; $5D71: $00
    rrca                                          ; $5D72: $0F
    nop                                           ; $5D73: $00
    cp $07                                        ; $5D74: $FE $07
    ld b, [hl]                                    ; $5D76: $46
    ei                                            ; $5D77: $FB
    ld b, [hl]                                    ; $5D78: $46
    ei                                            ; $5D79: $FB
    cp $FB                                        ; $5D7A: $FE $FB
    rst RST_38                                    ; $5D7C: $FF
    nop                                           ; $5D7D: $00
    nop                                           ; $5D7E: $00
    nop                                           ; $5D7F: $00
    nop                                           ; $5D80: $00
    nop                                           ; $5D81: $00
    nop                                           ; $5D82: $00
    nop                                           ; $5D83: $00
    nop                                           ; $5D84: $00
    nop                                           ; $5D85: $00
    nop                                           ; $5D86: $00
    nop                                           ; $5D87: $00
    nop                                           ; $5D88: $00
    nop                                           ; $5D89: $00
    nop                                           ; $5D8A: $00
    nop                                           ; $5D8B: $00
    nop                                           ; $5D8C: $00
    nop                                           ; $5D8D: $00
    nop                                           ; $5D8E: $00
    nop                                           ; $5D8F: $00
    rrca                                          ; $5D90: $0F
    nop                                           ; $5D91: $00
    db $10                                        ; $5D92: $10
    rrca                                          ; $5D93: $0F
    ldh a, [rIF]                                  ; $5D94: $F0 $0F
    sub e                                         ; $5D96: $93
    ld l, h                                       ; $5D97: $6C
    adc a                                         ; $5D98: $8F
    ld [hl], e                                    ; $5D99: $73
    ld hl, sp+$77                                 ; $5D9A: $F8 $77
    cp $01                                        ; $5D9C: $FE $01
    jp hl                                         ; $5D9E: $E9


    ld d, [hl]                                    ; $5D9F: $56
    jp Jump_000_2F00                              ; $5DA0: $C3 $00 $2F


    jp Jump_018_679F                              ; $5DA3: $C3 $9F $67


    rst RST_38                                    ; $5DA6: $FF
    inc bc                                        ; $5DA7: $03
    sbc a                                         ; $5DA8: $9F
    ld l, h                                       ; $5DA9: $6C
    sbc a                                         ; $5DAA: $9F
    ld l, a                                       ; $5DAB: $6F
    ld a, a                                       ; $5DAC: $7F
    add a                                         ; $5DAD: $87
    rst RST_38                                    ; $5DAE: $FF
    inc sp                                        ; $5DAF: $33
    rst RST_38                                    ; $5DB0: $FF
    db $EC                                        ; $5DB1: $EC
    rst RST_38                                    ; $5DB2: $FF
    ld [bc], a                                    ; $5DB3: $02
    cp $ED                                        ; $5DB4: $FE $ED
    db $FD                                        ; $5DB6: $FD
    ld [$01FE], a                                 ; $5DB7: $EA $FE $01
    add hl, bc                                    ; $5DBA: $09
    ldh a, [$FFD1]                                ; $5DBB: $F0 $D1
    jr nz, @+$01                                  ; $5DBD: $20 $FF

    add b                                         ; $5DBF: $80
    add b                                         ; $5DC0: $80
    nop                                           ; $5DC1: $00
    ldh [$FF80], a                                ; $5DC2: $E0 $80
    ld hl, sp-$20                                 ; $5DC4: $F8 $E0
    cp $F8                                        ; $5DC6: $FE $F8
    cp $C0                                        ; $5DC8: $FE $C0
    rst RST_38                                    ; $5DCA: $FF
    nop                                           ; $5DCB: $00
    rst RST_38                                    ; $5DCC: $FF
    add a                                         ; $5DCD: $87
    rst RST_38                                    ; $5DCE: $FF
    rra                                           ; $5DCF: $1F
    rst RST_38                                    ; $5DD0: $FF
    ld a, a                                       ; $5DD1: $7F
    rst RST_38                                    ; $5DD2: $FF
    rra                                           ; $5DD3: $1F
    rra                                           ; $5DD4: $1F
    db $E4                                        ; $5DD5: $E4
    rlca                                          ; $5DD6: $07
    ei                                            ; $5DD7: $FB
    rst RST_00                                    ; $5DD8: $C7
    dec sp                                        ; $5DD9: $3B
    ld l, a                                       ; $5DDA: $6F
    sub e                                         ; $5DDB: $93
    ld e, a                                       ; $5DDC: $5F
    and b                                         ; $5DDD: $A0
    or b                                          ; $5DDE: $B0
    nop                                           ; $5DDF: $00
    adc a                                         ; $5DE0: $8F
    ld [hl], a                                    ; $5DE1: $77
    add a                                         ; $5DE2: $87
    ld a, e                                       ; $5DE3: $7B
    ld b, a                                       ; $5DE4: $47
    dec sp                                        ; $5DE5: $3B
    ld h, a                                       ; $5DE6: $67
    dec de                                        ; $5DE7: $1B
    ld a, a                                       ; $5DE8: $7F
    inc hl                                        ; $5DE9: $23
    ccf                                           ; $5DEA: $3F
    dec e                                         ; $5DEB: $1D
    ccf                                           ; $5DEC: $3F
    nop                                           ; $5DED: $00
    nop                                           ; $5DEE: $00
    nop                                           ; $5DEF: $00
    nop                                           ; $5DF0: $00
    nop                                           ; $5DF1: $00
    nop                                           ; $5DF2: $00
    nop                                           ; $5DF3: $00
    nop                                           ; $5DF4: $00
    nop                                           ; $5DF5: $00
    nop                                           ; $5DF6: $00
    nop                                           ; $5DF7: $00
    nop                                           ; $5DF8: $00
    nop                                           ; $5DF9: $00
    nop                                           ; $5DFA: $00
    nop                                           ; $5DFB: $00
    nop                                           ; $5DFC: $00
    nop                                           ; $5DFD: $00
    nop                                           ; $5DFE: $00
    nop                                           ; $5DFF: $00
    add b                                         ; $5E00: $80
    nop                                           ; $5E01: $00
    add b                                         ; $5E02: $80
    nop                                           ; $5E03: $00
    ret nz                                        ; $5E04: $C0

    add b                                         ; $5E05: $80
    ret nz                                        ; $5E06: $C0

    add b                                         ; $5E07: $80
    ret nz                                        ; $5E08: $C0

    add b                                         ; $5E09: $80
    ret nz                                        ; $5E0A: $C0

    add b                                         ; $5E0B: $80
    ret nz                                        ; $5E0C: $C0

    nop                                           ; $5E0D: $00
    nop                                           ; $5E0E: $00
    nop                                           ; $5E0F: $00
    nop                                           ; $5E10: $00
    nop                                           ; $5E11: $00
    nop                                           ; $5E12: $00
    nop                                           ; $5E13: $00
    nop                                           ; $5E14: $00
    nop                                           ; $5E15: $00
    nop                                           ; $5E16: $00
    nop                                           ; $5E17: $00
    nop                                           ; $5E18: $00
    nop                                           ; $5E19: $00
    nop                                           ; $5E1A: $00
    nop                                           ; $5E1B: $00
    nop                                           ; $5E1C: $00
    nop                                           ; $5E1D: $00
    nop                                           ; $5E1E: $00
    nop                                           ; $5E1F: $00
    nop                                           ; $5E20: $00
    nop                                           ; $5E21: $00
    nop                                           ; $5E22: $00
    nop                                           ; $5E23: $00
    nop                                           ; $5E24: $00
    nop                                           ; $5E25: $00
    nop                                           ; $5E26: $00
    nop                                           ; $5E27: $00

Call_018_5E28:
    nop                                           ; $5E28: $00
    nop                                           ; $5E29: $00
    nop                                           ; $5E2A: $00
    nop                                           ; $5E2B: $00
    nop                                           ; $5E2C: $00
    nop                                           ; $5E2D: $00
    nop                                           ; $5E2E: $00
    nop                                           ; $5E2F: $00
    add b                                         ; $5E30: $80
    nop                                           ; $5E31: $00
    ret nz                                        ; $5E32: $C0

    add b                                         ; $5E33: $80
    ldh [$FFC0], a                                ; $5E34: $E0 $C0
    ldh a, [rNR41]                                ; $5E36: $F0 $20
    ldh a, [$FFE0]                                ; $5E38: $F0 $E0
    ldh a, [$FFE0]                                ; $5E3A: $F0 $E0
    ldh a, [$FFC0]                                ; $5E3C: $F0 $C0
    ret nz                                        ; $5E3E: $C0

    nop                                           ; $5E3F: $00
    ccf                                           ; $5E40: $3F
    nop                                           ; $5E41: $00
    inc c                                         ; $5E42: $0C
    inc bc                                        ; $5E43: $03
    inc bc                                        ; $5E44: $03
    nop                                           ; $5E45: $00
    nop                                           ; $5E46: $00
    nop                                           ; $5E47: $00
    inc bc                                        ; $5E48: $03
    nop                                           ; $5E49: $00
    inc c                                         ; $5E4A: $0C
    inc bc                                        ; $5E4B: $03
    rra                                           ; $5E4C: $1F
    nop                                           ; $5E4D: $00
    ld bc, $0300                                  ; $5E4E: $01 $00 $03
    nop                                           ; $5E51: $00
    nop                                           ; $5E52: $00
    nop                                           ; $5E53: $00
    nop                                           ; $5E54: $00
    nop                                           ; $5E55: $00
    nop                                           ; $5E56: $00
    nop                                           ; $5E57: $00
    nop                                           ; $5E58: $00
    nop                                           ; $5E59: $00
    nop                                           ; $5E5A: $00
    nop                                           ; $5E5B: $00
    nop                                           ; $5E5C: $00
    nop                                           ; $5E5D: $00
    nop                                           ; $5E5E: $00
    nop                                           ; $5E5F: $00
    rst RST_38                                    ; $5E60: $FF
    nop                                           ; $5E61: $00
    rra                                           ; $5E62: $1F
    rst RST_38                                    ; $5E63: $FF
    pop bc                                        ; $5E64: $C1
    ccf                                           ; $5E65: $3F
    rst RST_38                                    ; $5E66: $FF
    ld a, a                                       ; $5E67: $7F
    rst RST_38                                    ; $5E68: $FF
    rst RST_38                                    ; $5E69: $FF
    rlca                                          ; $5E6A: $07
    rst RST_38                                    ; $5E6B: $FF
    rst RST_38                                    ; $5E6C: $FF
    rrca                                          ; $5E6D: $0F
    add b                                         ; $5E6E: $80
    ld a, a                                       ; $5E6F: $7F
    rst RST_38                                    ; $5E70: $FF
    nop                                           ; $5E71: $00
    nop                                           ; $5E72: $00
    nop                                           ; $5E73: $00
    nop                                           ; $5E74: $00
    nop                                           ; $5E75: $00
    nop                                           ; $5E76: $00
    nop                                           ; $5E77: $00
    nop                                           ; $5E78: $00
    nop                                           ; $5E79: $00
    nop                                           ; $5E7A: $00
    nop                                           ; $5E7B: $00
    nop                                           ; $5E7C: $00
    nop                                           ; $5E7D: $00
    nop                                           ; $5E7E: $00
    nop                                           ; $5E7F: $00
    nop                                           ; $5E80: $00
    nop                                           ; $5E81: $00
    nop                                           ; $5E82: $00
    nop                                           ; $5E83: $00
    ld bc, $0200                                  ; $5E84: $01 $00 $02
    ld bc, $0007                                  ; $5E87: $01 $07 $00
    rst RST_38                                    ; $5E8A: $FF
    nop                                           ; $5E8B: $00
    rst RST_38                                    ; $5E8C: $FF
    rst RST_38                                    ; $5E8D: $FF
    cp $FF                                        ; $5E8E: $FE $FF
    rst RST_38                                    ; $5E90: $FF
    rst RST_38                                    ; $5E91: $FF
    or b                                          ; $5E92: $B0
    rst RST_38                                    ; $5E93: $FF
    rst RST_38                                    ; $5E94: $FF
    ld hl, sp-$01                                 ; $5E95: $F8 $FF
    cp $07                                        ; $5E97: $FE $07
    rst RST_38                                    ; $5E99: $FF
    rst RST_38                                    ; $5E9A: $FF
    nop                                           ; $5E9B: $00
    nop                                           ; $5E9C: $00
    nop                                           ; $5E9D: $00
    nop                                           ; $5E9E: $00
    nop                                           ; $5E9F: $00
    rst RST_38                                    ; $5EA0: $FF
    ld b, b                                       ; $5EA1: $40
    ld a, a                                       ; $5EA2: $7F
    cpl                                           ; $5EA3: $2F
    rst RST_38                                    ; $5EA4: $FF
    nop                                           ; $5EA5: $00
    rst RST_38                                    ; $5EA6: $FF
    ld e, a                                       ; $5EA7: $5F
    rst RST_38                                    ; $5EA8: $FF
    ld e, a                                       ; $5EA9: $5F
    rst RST_38                                    ; $5EAA: $FF
    nop                                           ; $5EAB: $00
    ret c                                         ; $5EAC: $D8

    daa                                           ; $5EAD: $27
    rrca                                          ; $5EAE: $0F
    ldh a, [$FFCF]                                ; $5EAF: $F0 $CF
    rst RST_30                                    ; $5EB1: $F7
    rlca                                          ; $5EB2: $07
    ei                                            ; $5EB3: $FB
    rst RST_30                                    ; $5EB4: $F7
    ld [$00F8], sp                                ; $5EB5: $08 $F8 $00
    ldh [$FF80], a                                ; $5EB8: $E0 $80
    ldh a, [rP1]                                  ; $5EBA: $F0 $00
    nop                                           ; $5EBC: $00
    nop                                           ; $5EBD: $00
    nop                                           ; $5EBE: $00
    nop                                           ; $5EBF: $00
    jr jr_018_5EC2                                ; $5EC0: $18 $00

jr_018_5EC2:
    rla                                           ; $5EC2: $17
    ld [$051B], sp                                ; $5EC3: $08 $1B $05
    dec d                                         ; $5EC6: $15
    ld a, [bc]                                    ; $5EC7: $0A
    inc de                                        ; $5EC8: $13
    inc c                                         ; $5EC9: $0C
    add hl, de                                    ; $5ECA: $19
    ld b, $0B                                     ; $5ECB: $06 $0B
    dec b                                         ; $5ECD: $05
    rrca                                          ; $5ECE: $0F
    ld bc, $0001                                  ; $5ECF: $01 $01 $00
    ld bc, $0000                                  ; $5ED2: $01 $00 $00
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
    nop                                           ; $5EE0: $00
    nop                                           ; $5EE1: $00
    nop                                           ; $5EE2: $00
    nop                                           ; $5EE3: $00
    ld bc, $0200                                  ; $5EE4: $01 $00 $02
    ld bc, $0007                                  ; $5EE7: $01 $07 $00
    ld a, a                                       ; $5EEA: $7F
    rlca                                          ; $5EEB: $07
    rst RST_38                                    ; $5EEC: $FF
    ld e, a                                       ; $5EED: $5F
    rst RST_38                                    ; $5EEE: $FF
    ret c                                         ; $5EEF: $D8

    rst RST_38                                    ; $5EF0: $FF
    ret nz                                        ; $5EF1: $C0

    rst RST_38                                    ; $5EF2: $FF
    jp Jump_000_3FFF                              ; $5EF3: $C3 $FF $3F


    rst RST_38                                    ; $5EF6: $FF
    rst RST_38                                    ; $5EF7: $FF
    rst RST_38                                    ; $5EF8: $FF
    db $FC                                        ; $5EF9: $FC
    db $FC                                        ; $5EFA: $FC
    ldh [$FFE0], a                                ; $5EFB: $E0 $E0

jr_018_5EFD:
    nop                                           ; $5EFD: $00
    nop                                           ; $5EFE: $00
    nop                                           ; $5EFF: $00
    rst RST_38                                    ; $5F00: $FF
    ld b, b                                       ; $5F01: $40
    ld a, a                                       ; $5F02: $7F
    cpl                                           ; $5F03: $2F
    rst RST_38                                    ; $5F04: $FF
    nop                                           ; $5F05: $00
    rst RST_38                                    ; $5F06: $FF
    ld e, a                                       ; $5F07: $5F
    rst RST_38                                    ; $5F08: $FF
    ld e, a                                       ; $5F09: $5F
    rst RST_38                                    ; $5F0A: $FF
    nop                                           ; $5F0B: $00
    sbc b                                         ; $5F0C: $98
    ld h, a                                       ; $5F0D: $67
    rst RST_38                                    ; $5F0E: $FF
    nop                                           ; $5F0F: $00
    adc a                                         ; $5F10: $8F
    ld [hl], a                                    ; $5F11: $77
    add a                                         ; $5F12: $87
    ld a, e                                       ; $5F13: $7B
    add a                                         ; $5F14: $87
    ld a, b                                       ; $5F15: $78
    ld hl, sp+$00                                 ; $5F16: $F8 $00
    add b                                         ; $5F18: $80
    nop                                           ; $5F19: $00
    nop                                           ; $5F1A: $00
    nop                                           ; $5F1B: $00
    nop                                           ; $5F1C: $00
    nop                                           ; $5F1D: $00
    nop                                           ; $5F1E: $00
    nop                                           ; $5F1F: $00
    db $FC                                        ; $5F20: $FC
    ld hl, sp-$08                                 ; $5F21: $F8 $F8
    ldh a, [$FFF8]                                ; $5F23: $F0 $F8
    ldh a, [$FFF8]                                ; $5F25: $F0 $F8
    ldh a, [$FFF8]                                ; $5F27: $F0 $F8
    ldh a, [rIE]                                  ; $5F29: $F0 $FF
    ldh [$FFF9], a                                ; $5F2B: $E0 $F9
    and $F9                                       ; $5F2D: $E6 $F9
    and $F9                                       ; $5F2F: $E6 $F9
    and $B9                                       ; $5F31: $E6 $B9
    and $39                                       ; $5F33: $E6 $39
    and $39                                       ; $5F35: $E6 $39
    and $3F                                       ; $5F37: $E6 $3F
    ldh [$FF3F], a                                ; $5F39: $E0 $3F
    rst RST_28                                    ; $5F3B: $EF
    ccf                                           ; $5F3C: $3F
    rst RST_28                                    ; $5F3D: $EF
    rra                                           ; $5F3E: $1F
    di                                            ; $5F3F: $F3
    ld e, e                                       ; $5F40: $5B
    or h                                          ; $5F41: $B4
    ld l, h                                       ; $5F42: $6C
    sbc e                                         ; $5F43: $9B
    ccf                                           ; $5F44: $3F
    ret z                                         ; $5F45: $C8

    ccf                                           ; $5F46: $3F
    push bc                                       ; $5F47: $C5
    rra                                           ; $5F48: $1F
    pop hl                                        ; $5F49: $E1
    sbc a                                         ; $5F4A: $9F
    ld h, a                                       ; $5F4B: $67
    rst RST_10                                    ; $5F4C: $D7
    jr z, jr_018_5EFD                             ; $5F4D: $28 $AE

    ld d, b                                       ; $5F4F: $50
    ld a, [hl]                                    ; $5F50: $7E
    add h                                         ; $5F51: $84
    cp $8C                                        ; $5F52: $FE $8C
    cp $40                                        ; $5F54: $FE $40
    ldh [c], a                                    ; $5F56: $E2
    sbc h                                         ; $5F57: $9C
    ldh [c], a                                    ; $5F58: $E2
    call c, $9CE2                                 ; $5F59: $DC $E2 $9C
    add d                                         ; $5F5C: $82
    ld a, h                                       ; $5F5D: $7C
    cp $00                                        ; $5F5E: $FE $00
    ret nz                                        ; $5F60: $C0

    ld a, a                                       ; $5F61: $7F
    ld h, b                                       ; $5F62: $60
    ccf                                           ; $5F63: $3F
    ld h, b                                       ; $5F64: $60
    ccf                                           ; $5F65: $3F
    jr nc, jr_018_5F87                            ; $5F66: $30 $1F

    ld sp, $191E                                  ; $5F68: $31 $1E $19
    ld c, $0C                                     ; $5F6B: $0E $0C
    rlca                                          ; $5F6D: $07
    ld e, $03                                     ; $5F6E: $1E $03
    dec de                                        ; $5F70: $1B
    dec b                                         ; $5F71: $05
    rra                                           ; $5F72: $1F
    nop                                           ; $5F73: $00
    rra                                           ; $5F74: $1F
    rrca                                          ; $5F75: $0F
    rra                                           ; $5F76: $1F
    rrca                                          ; $5F77: $0F
    rra                                           ; $5F78: $1F
    rrca                                          ; $5F79: $0F
    rra                                           ; $5F7A: $1F
    rrca                                          ; $5F7B: $0F
    rrca                                          ; $5F7C: $0F
    nop                                           ; $5F7D: $00
    nop                                           ; $5F7E: $00
    nop                                           ; $5F7F: $00
    ccf                                           ; $5F80: $3F
    rra                                           ; $5F81: $1F
    ccf                                           ; $5F82: $3F
    rra                                           ; $5F83: $1F
    ld l, a                                       ; $5F84: $6F
    ccf                                           ; $5F85: $3F
    ld l, l                                       ; $5F86: $6D

jr_018_5F87:
    ccf                                           ; $5F87: $3F
    ld l, l                                       ; $5F88: $6D
    ccf                                           ; $5F89: $3F
    ret                                           ; $5F8A: $C9


    ld a, a                                       ; $5F8B: $7F
    ret                                           ; $5F8C: $C9


    ld a, a                                       ; $5F8D: $7F
    pop bc                                        ; $5F8E: $C1
    ld a, a                                       ; $5F8F: $7F
    pop bc                                        ; $5F90: $C1
    ld a, a                                       ; $5F91: $7F
    pop bc                                        ; $5F92: $C1
    ld a, a                                       ; $5F93: $7F
    pop bc                                        ; $5F94: $C1
    ld a, a                                       ; $5F95: $7F
    pop bc                                        ; $5F96: $C1
    ld a, a                                       ; $5F97: $7F
    pop bc                                        ; $5F98: $C1
    ld a, a                                       ; $5F99: $7F
    ret nz                                        ; $5F9A: $C0

    ld a, a                                       ; $5F9B: $7F
    ret nz                                        ; $5F9C: $C0

    ld a, a                                       ; $5F9D: $7F
    ret nz                                        ; $5F9E: $C0

    ld a, a                                       ; $5F9F: $7F
    nop                                           ; $5FA0: $00
    nop                                           ; $5FA1: $00
    nop                                           ; $5FA2: $00
    nop                                           ; $5FA3: $00
    nop                                           ; $5FA4: $00
    nop                                           ; $5FA5: $00

jr_018_5FA6:
    nop                                           ; $5FA6: $00
    nop                                           ; $5FA7: $00
    nop                                           ; $5FA8: $00
    nop                                           ; $5FA9: $00
    ld bc, $0300                                  ; $5FAA: $01 $00 $03
    ld bc, $0307                                  ; $5FAD: $01 $07 $03
    rrca                                          ; $5FB0: $0F
    rlca                                          ; $5FB1: $07
    rra                                           ; $5FB2: $1F
    rrca                                          ; $5FB3: $0F
    rra                                           ; $5FB4: $1F
    rrca                                          ; $5FB5: $0F
    ccf                                           ; $5FB6: $3F
    rra                                           ; $5FB7: $1F
    ccf                                           ; $5FB8: $3F
    rra                                           ; $5FB9: $1F
    ld a, a                                       ; $5FBA: $7F
    ccf                                           ; $5FBB: $3F
    ld a, a                                       ; $5FBC: $7F
    ccf                                           ; $5FBD: $3F
    rst RST_38                                    ; $5FBE: $FF
    ld a, a                                       ; $5FBF: $7F
    nop                                           ; $5FC0: $00
    nop                                           ; $5FC1: $00
    nop                                           ; $5FC2: $00
    nop                                           ; $5FC3: $00
    nop                                           ; $5FC4: $00
    nop                                           ; $5FC5: $00
    nop                                           ; $5FC6: $00
    nop                                           ; $5FC7: $00
    ld hl, sp+$00                                 ; $5FC8: $F8 $00
    db $FC                                        ; $5FCA: $FC
    ld hl, sp-$02                                 ; $5FCB: $F8 $FE
    db $FC                                        ; $5FCD: $FC
    cp $FC                                        ; $5FCE: $FE $FC
    cp $FC                                        ; $5FD0: $FE $FC
    rst RST_38                                    ; $5FD2: $FF
    cp $FF                                        ; $5FD3: $FE $FF
    cp $FE                                        ; $5FD5: $FE $FE
    db $FC                                        ; $5FD7: $FC
    db $FC                                        ; $5FD8: $FC
    ld hl, sp-$08                                 ; $5FD9: $F8 $F8
    ldh a, [$FFF8]                                ; $5FDB: $F0 $F8
    ldh a, [$FFF0]                                ; $5FDD: $F0 $F0
    ldh [$FF80], a                                ; $5FDF: $E0 $80
    nop                                           ; $5FE1: $00
    ld h, b                                       ; $5FE2: $60
    add b                                         ; $5FE3: $80
    jr nc, jr_018_5FA6                            ; $5FE4: $30 $C0

    inc c                                         ; $5FE6: $0C
    ldh a, [$FF1F]                                ; $5FE7: $F0 $1F
    db $EC                                        ; $5FE9: $EC
    rra                                           ; $5FEA: $1F
    rst RST_28                                    ; $5FEB: $EF
    rst RST_38                                    ; $5FEC: $FF
    sbc $FF                                       ; $5FED: $DE $FF
    dec a                                         ; $5FEF: $3D
    rst RST_38                                    ; $5FF0: $FF
    cp l                                          ; $5FF1: $BD
    rst RST_38                                    ; $5FF2: $FF
    ld a, e                                       ; $5FF3: $7B
    rst RST_38                                    ; $5FF4: $FF
    ld a, e                                       ; $5FF5: $7B
    rst RST_38                                    ; $5FF6: $FF
    rlca                                          ; $5FF7: $07
    ld a, a                                       ; $5FF8: $7F

jr_018_5FF9:
    add e                                         ; $5FF9: $83
    rst RST_38                                    ; $5FFA: $FF
    nop                                           ; $5FFB: $00
    rst RST_38                                    ; $5FFC: $FF
    ld [hl], a                                    ; $5FFD: $77
    rst RST_38                                    ; $5FFE: $FF
    ld [hl], a                                    ; $5FFF: $77
    add b                                         ; $6000: $80
    nop                                           ; $6001: $00
    ret nz                                        ; $6002: $C0

    nop                                           ; $6003: $00
    ldh [$FFC0], a                                ; $6004: $E0 $C0
    ld hl, sp-$20                                 ; $6006: $F8 $E0
    cp $E8                                        ; $6008: $FE $E8
    jp hl                                         ; $600A: $E9


    sbc $F9                                       ; $600B: $DE $F9
    sbc $FF                                       ; $600D: $DE $FF
    add [hl]                                      ; $600F: $86
    adc $B0                                       ; $6010: $CE $B0
    db $E4                                        ; $6012: $E4
    jr jr_018_5FF9                                ; $6013: $18 $E4

    ret c                                         ; $6015: $D8

    db $E4                                        ; $6016: $E4
    ret c                                         ; $6017: $D8

    db $E4                                        ; $6018: $E4
    ret c                                         ; $6019: $D8

    db $E4                                        ; $601A: $E4
    ret c                                         ; $601B: $D8

    db $E4                                        ; $601C: $E4
    ret c                                         ; $601D: $D8

    ld hl, sp-$80                                 ; $601E: $F8 $80
    rst RST_38                                    ; $6020: $FF
    ld [hl], a                                    ; $6021: $77
    rst RST_38                                    ; $6022: $FF
    ld [hl], a                                    ; $6023: $77
    rst RST_38                                    ; $6024: $FF
    ld [hl], a                                    ; $6025: $77
    rst RST_38                                    ; $6026: $FF
    ld [hl], a                                    ; $6027: $77
    ld a, a                                       ; $6028: $7F
    nop                                           ; $6029: $00
    rra                                           ; $602A: $1F
    ld c, $1F                                     ; $602B: $0E $1F
    ld c, $1F                                     ; $602D: $0E $1F
    ld c, $0F                                     ; $602F: $0E $0F
    nop                                           ; $6031: $00
    rlca                                          ; $6032: $07

jr_018_6033:
    nop                                           ; $6033: $00
    nop                                           ; $6034: $00
    nop                                           ; $6035: $00
    nop                                           ; $6036: $00

jr_018_6037:
    nop                                           ; $6037: $00
    nop                                           ; $6038: $00
    nop                                           ; $6039: $00
    nop                                           ; $603A: $00
    nop                                           ; $603B: $00
    nop                                           ; $603C: $00
    nop                                           ; $603D: $00
    nop                                           ; $603E: $00
    nop                                           ; $603F: $00
    ret nc                                        ; $6040: $D0

    jr nz, jr_018_6033                            ; $6041: $20 $F0

jr_018_6043:
    nop                                           ; $6043: $00
    ret nc                                        ; $6044: $D0

    jr nz, jr_018_6037                            ; $6045: $20 $F0

    nop                                           ; $6047: $00
    ret z                                         ; $6048: $C8

    jr nc, jr_018_6043                            ; $6049: $30 $F8

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
    nop                                           ; $605A: $00
    nop                                           ; $605B: $00
    nop                                           ; $605C: $00
    nop                                           ; $605D: $00
    nop                                           ; $605E: $00
    nop                                           ; $605F: $00
    db $FC                                        ; $6060: $FC
    ld hl, sp-$08                                 ; $6061: $F8 $F8
    ldh a, [$FFF8]                                ; $6063: $F0 $F8
    ld [hl], b                                    ; $6065: $70
    ldh a, [$FF80]                                ; $6066: $F0 $80
    ldh a, [$FFE0]                                ; $6068: $F0 $E0
    rst RST_38                                    ; $606A: $FF
    ldh [$FFF9], a                                ; $606B: $E0 $F9
    and $F9                                       ; $606D: $E6 $F9
    or $F9                                        ; $606F: $F6 $F9
    or $F9                                        ; $6071: $F6 $F9
    halt                                          ; $6073: $76
    ld sp, hl                                     ; $6074: $F9
    add [hl]                                      ; $6075: $86
    db $FD                                        ; $6076: $FD
    ldh [c], a                                    ; $6077: $E2
    rst RST_38                                    ; $6078: $FF
    inc a                                         ; $6079: $3C
    rst RST_38                                    ; $607A: $FF
    ccf                                           ; $607B: $3F
    rst RST_38                                    ; $607C: $FF
    rra                                           ; $607D: $1F
    ld e, a                                       ; $607E: $5F
    ld hl, $3E41                                  ; $607F: $21 $41 $3E
    ld b, b                                       ; $6082: $40
    ccf                                           ; $6083: $3F
    ccf                                           ; $6084: $3F
    nop                                           ; $6085: $00
    ccf                                           ; $6086: $3F
    rrca                                          ; $6087: $0F
    ld c, a                                       ; $6088: $4F
    scf                                           ; $6089: $37
    adc a                                         ; $608A: $8F
    ld [hl], a                                    ; $608B: $77
    rst RST_30                                    ; $608C: $F7
    ld [$00FE], sp                                ; $608D: $08 $FE $00
    cp [hl]                                       ; $6090: $BE
    ld c, h                                       ; $6091: $4C
    cp $1C                                        ; $6092: $FE $1C
    cp $C0                                        ; $6094: $FE $C0
    ldh [c], a                                    ; $6096: $E2
    call c, $DCE2                                 ; $6097: $DC $E2 $DC
    ldh [c], a                                    ; $609A: $E2
    sbc h                                         ; $609B: $9C
    add d                                         ; $609C: $82
    ld a, h                                       ; $609D: $7C
    cp $00                                        ; $609E: $FE $00
    rrca                                          ; $60A0: $0F
    ld b, $0F                                     ; $60A1: $06 $0F
    ld b, $1F                                     ; $60A3: $06 $1F
    nop                                           ; $60A5: $00
    rra                                           ; $60A6: $1F
    dec c                                         ; $60A7: $0D
    rra                                           ; $60A8: $1F
    dec c                                         ; $60A9: $0D
    rra                                           ; $60AA: $1F
    dec c                                         ; $60AB: $0D
    rra                                           ; $60AC: $1F
    dec c                                         ; $60AD: $0D
    rra                                           ; $60AE: $1F
    ld c, $0F                                     ; $60AF: $0E $0F
    ld b, $0F                                     ; $60B1: $06 $0F
    inc b                                         ; $60B3: $04
    rrca                                          ; $60B4: $0F
    dec b                                         ; $60B5: $05
    rlca                                          ; $60B6: $07
    nop                                           ; $60B7: $00
    rlca                                          ; $60B8: $07
    nop                                           ; $60B9: $00
    rlca                                          ; $60BA: $07
    nop                                           ; $60BB: $00
    ld bc, $0000                                  ; $60BC: $01 $00 $00
    nop                                           ; $60BF: $00
    nop                                           ; $60C0: $00
    nop                                           ; $60C1: $00
    nop                                           ; $60C2: $00
    nop                                           ; $60C3: $00
    nop                                           ; $60C4: $00
    nop                                           ; $60C5: $00
    nop                                           ; $60C6: $00
    nop                                           ; $60C7: $00
    ld a, b                                       ; $60C8: $78
    nop                                           ; $60C9: $00
    add h                                         ; $60CA: $84
    ld a, b                                       ; $60CB: $78
    ld [bc], a                                    ; $60CC: $02
    db $FC                                        ; $60CD: $FC
    ld [de], a                                    ; $60CE: $12
    db $EC                                        ; $60CF: $EC
    ld e, $E0                                     ; $60D0: $1E $E0
    add c                                         ; $60D2: $81
    ld a, [hl]                                    ; $60D3: $7E
    pop hl                                        ; $60D4: $E1
    sbc [hl]                                      ; $60D5: $9E
    ld a, [$FCE4]                                 ; $60D6: $FA $E4 $FC
    ldh a, [$FFF8]                                ; $60D9: $F0 $F8
    ldh a, [$FFF8]                                ; $60DB: $F0 $F8
    ldh a, [$FFF0]                                ; $60DD: $F0 $F0
    ldh [rP1], a                                  ; $60DF: $E0 $00
    nop                                           ; $60E1: $00
    nop                                           ; $60E2: $00
    nop                                           ; $60E3: $00
    nop                                           ; $60E4: $00
    nop                                           ; $60E5: $00
    nop                                           ; $60E6: $00
    nop                                           ; $60E7: $00
    nop                                           ; $60E8: $00
    nop                                           ; $60E9: $00
    ld bc, $0200                                  ; $60EA: $01 $00 $02
    ld bc, $0304                                  ; $60ED: $01 $04 $03
    inc b                                         ; $60F0: $04
    inc bc                                        ; $60F1: $03
    rra                                           ; $60F2: $1F
    nop                                           ; $60F3: $00
    rra                                           ; $60F4: $1F
    ld c, $1F                                     ; $60F5: $0E $1F
    ld c, $3F                                     ; $60F7: $0E $3F
    dec e                                         ; $60F9: $1D
    ccf                                           ; $60FA: $3F
    dec e                                         ; $60FB: $1D
    ccf                                           ; $60FC: $3F
    dec e                                         ; $60FD: $1D
    ccf                                           ; $60FE: $3F
    dec de                                        ; $60FF: $1B
    rrca                                          ; $6100: $0F
    nop                                           ; $6101: $00
    rra                                           ; $6102: $1F
    nop                                           ; $6103: $00
    ld a, [de]                                    ; $6104: $1A
    dec b                                         ; $6105: $05
    rra                                           ; $6106: $1F
    nop                                           ; $6107: $00
    rra                                           ; $6108: $1F
    rrca                                          ; $6109: $0F
    rra                                           ; $610A: $1F
    rrca                                          ; $610B: $0F
    rra                                           ; $610C: $1F
    rrca                                          ; $610D: $0F
    rra                                           ; $610E: $1F
    rrca                                          ; $610F: $0F
    rrca                                          ; $6110: $0F
    nop                                           ; $6111: $00
    nop                                           ; $6112: $00
    nop                                           ; $6113: $00
    nop                                           ; $6114: $00
    nop                                           ; $6115: $00
    nop                                           ; $6116: $00
    nop                                           ; $6117: $00
    nop                                           ; $6118: $00
    nop                                           ; $6119: $00
    nop                                           ; $611A: $00
    nop                                           ; $611B: $00
    nop                                           ; $611C: $00
    nop                                           ; $611D: $00
    nop                                           ; $611E: $00
    nop                                           ; $611F: $00
    ld a, a                                       ; $6120: $7F
    ccf                                           ; $6121: $3F
    ld a, a                                       ; $6122: $7F
    ccf                                           ; $6123: $3F
    rst RST_38                                    ; $6124: $FF
    ld a, a                                       ; $6125: $7F
    rst RST_38                                    ; $6126: $FF
    ld a, a                                       ; $6127: $7F
    rst RST_38                                    ; $6128: $FF
    ld a, a                                       ; $6129: $7F
    rst RST_38                                    ; $612A: $FF
    ld a, a                                       ; $612B: $7F
    ld a, a                                       ; $612C: $7F
    ccf                                           ; $612D: $3F
    ccf                                           ; $612E: $3F
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
    nop                                           ; $613A: $00
    nop                                           ; $613B: $00
    nop                                           ; $613C: $00
    nop                                           ; $613D: $00
    nop                                           ; $613E: $00
    nop                                           ; $613F: $00
    rst RST_38                                    ; $6140: $FF
    rst RST_38                                    ; $6141: $FF
    rst RST_38                                    ; $6142: $FF
    rst RST_38                                    ; $6143: $FF
    rst RST_38                                    ; $6144: $FF
    rst RST_38                                    ; $6145: $FF
    rst RST_38                                    ; $6146: $FF
    rst RST_38                                    ; $6147: $FF
    rst RST_38                                    ; $6148: $FF
    rst RST_38                                    ; $6149: $FF
    rst RST_38                                    ; $614A: $FF
    rst RST_38                                    ; $614B: $FF
    rst RST_38                                    ; $614C: $FF
    rst RST_38                                    ; $614D: $FF
    rst RST_38                                    ; $614E: $FF
    rst RST_38                                    ; $614F: $FF
    rst RST_38                                    ; $6150: $FF
    nop                                           ; $6151: $00
    nop                                           ; $6152: $00
    nop                                           ; $6153: $00
    nop                                           ; $6154: $00
    nop                                           ; $6155: $00
    nop                                           ; $6156: $00
    nop                                           ; $6157: $00
    nop                                           ; $6158: $00
    nop                                           ; $6159: $00
    nop                                           ; $615A: $00
    nop                                           ; $615B: $00
    nop                                           ; $615C: $00
    nop                                           ; $615D: $00
    nop                                           ; $615E: $00
    nop                                           ; $615F: $00
    add e                                         ; $6160: $83
    rst RST_38                                    ; $6161: $FF
    rst RST_38                                    ; $6162: $FF
    rst RST_38                                    ; $6163: $FF
    rst RST_38                                    ; $6164: $FF
    rst RST_38                                    ; $6165: $FF
    cp $FF                                        ; $6166: $FE $FF
    rst RST_38                                    ; $6168: $FF
    rst RST_38                                    ; $6169: $FF
    cp $FF                                        ; $616A: $FE $FF
    db $FD                                        ; $616C: $FD
    rst RST_38                                    ; $616D: $FF
    rst RST_38                                    ; $616E: $FF
    cp $FF                                        ; $616F: $FE $FF
    ldh a, [$FFF0]                                ; $6171: $F0 $F0
    nop                                           ; $6173: $00
    nop                                           ; $6174: $00
    nop                                           ; $6175: $00
    nop                                           ; $6176: $00

jr_018_6177:
    nop                                           ; $6177: $00
    nop                                           ; $6178: $00
    nop                                           ; $6179: $00
    nop                                           ; $617A: $00
    nop                                           ; $617B: $00
    nop                                           ; $617C: $00
    nop                                           ; $617D: $00
    nop                                           ; $617E: $00
    nop                                           ; $617F: $00
    nop                                           ; $6180: $00
    rst RST_38                                    ; $6181: $FF
    ld hl, $41FF                                  ; $6182: $21 $FF $41
    rst RST_38                                    ; $6185: $FF
    jp $83FE                                      ; $6186: $C3 $FE $83


    cp $06                                        ; $6189: $FE $06
    db $FC                                        ; $618B: $FC
    adc h                                         ; $618C: $8C
    ld hl, sp+$18                                 ; $618D: $F8 $18
    ldh a, [rSVBK]                                ; $618F: $F0 $70
    ldh [$FFF0], a                                ; $6191: $E0 $F0
    add b                                         ; $6193: $80
    ret nc                                        ; $6194: $D0

    jr nz, jr_018_6177                            ; $6195: $20 $E0

    nop                                           ; $6197: $00
    nop                                           ; $6198: $00
    nop                                           ; $6199: $00
    nop                                           ; $619A: $00
    nop                                           ; $619B: $00
    nop                                           ; $619C: $00
    nop                                           ; $619D: $00
    nop                                           ; $619E: $00
    nop                                           ; $619F: $00
    add b                                         ; $61A0: $80
    nop                                           ; $61A1: $00
    or b                                          ; $61A2: $B0
    nop                                           ; $61A3: $00
    ldh a, [rNR41]                                ; $61A4: $F0 $20
    ldh a, [rNR41]                                ; $61A6: $F0 $20
    or b                                          ; $61A8: $B0
    ld h, b                                       ; $61A9: $60
    or b                                          ; $61AA: $B0
    ld h, b                                       ; $61AB: $60
    jr nc, @-$1E                                  ; $61AC: $30 $E0

    jr nc, @-$1E                                  ; $61AE: $30 $E0

    ld h, b                                       ; $61B0: $60
    ret nz                                        ; $61B1: $C0

    ld h, b                                       ; $61B2: $60
    ret nz                                        ; $61B3: $C0

    ld h, b                                       ; $61B4: $60
    ret nz                                        ; $61B5: $C0

    ret nz                                        ; $61B6: $C0

    add b                                         ; $61B7: $80
    ret nz                                        ; $61B8: $C0

    add b                                         ; $61B9: $80
    ret nz                                        ; $61BA: $C0

    add b                                         ; $61BB: $80
    add b                                         ; $61BC: $80
    nop                                           ; $61BD: $00
    add b                                         ; $61BE: $80
    nop                                           ; $61BF: $00
    inc e                                         ; $61C0: $1C
    nop                                           ; $61C1: $00
    ei                                            ; $61C2: $FB
    inc c                                         ; $61C3: $0C
    sbc d                                         ; $61C4: $9A
    ld l, l                                       ; $61C5: $6D
    sbc d                                         ; $61C6: $9A
    ld l, l                                       ; $61C7: $6D
    ei                                            ; $61C8: $FB
    ld l, l                                       ; $61C9: $6D
    rst RST_38                                    ; $61CA: $FF
    nop                                           ; $61CB: $00
    ld bc, $0300                                  ; $61CC: $01 $00 $03
    ld bc, $0007                                  ; $61CF: $01 $07 $00
    rlca                                          ; $61D2: $07
    ld [bc], a                                    ; $61D3: $02
    rrca                                          ; $61D4: $0F
    nop                                           ; $61D5: $00
    rrca                                          ; $61D6: $0F
    rlca                                          ; $61D7: $07
    rra                                           ; $61D8: $1F
    rlca                                          ; $61D9: $07
    rra                                           ; $61DA: $1F
    nop                                           ; $61DB: $00
    ccf                                           ; $61DC: $3F
    nop                                           ; $61DD: $00
    ccf                                           ; $61DE: $3F
    rra                                           ; $61DF: $1F
    ld bc, $0200                                  ; $61E0: $01 $00 $02
    ld bc, $00FF                                  ; $61E3: $01 $FF $00
    nop                                           ; $61E6: $00
    rst RST_38                                    ; $61E7: $FF
    ld a, l                                       ; $61E8: $7D
    add d                                         ; $61E9: $82
    jp $81BC                                      ; $61EA: $C3 $BC $81


    ld a, [hl]                                    ; $61ED: $7E
    add c                                         ; $61EE: $81
    ld a, [hl]                                    ; $61EF: $7E
    jp nz, $BC3D                                  ; $61F0: $C2 $3D $BC

    ld b, e                                       ; $61F3: $43
    ld b, c                                       ; $61F4: $41
    cp [hl]                                       ; $61F5: $BE
    rst RST_38                                    ; $61F6: $FF
    ld bc, $F7FF                                  ; $61F7: $01 $FF $F7
    rst RST_38                                    ; $61FA: $FF
    add sp, -$01                                  ; $61FB: $E8 $FF
    ld bc, $3FFF                                  ; $61FD: $01 $FF $3F
    ld [hl], b                                    ; $6200: $70
    nop                                           ; $6201: $00
    adc b                                         ; $6202: $88
    ld [hl], b                                    ; $6203: $70
    inc b                                         ; $6204: $04
    ld hl, sp-$01                                 ; $6205: $F8 $FF
    nop                                           ; $6207: $00
    add c                                         ; $6208: $81
    ld a, [hl]                                    ; $6209: $7E
    cp $01                                        ; $620A: $FE $01
    ld [bc], a                                    ; $620C: $02
    db $FD                                        ; $620D: $FD
    ld [bc], a                                    ; $620E: $02
    db $FD                                        ; $620F: $FD
    add d                                         ; $6210: $82
    ld a, l                                       ; $6211: $7D
    add d                                         ; $6212: $82
    ld a, l                                       ; $6213: $7D
    db $E3                                        ; $6214: $E3
    inc e                                         ; $6215: $1C
    rst RST_38                                    ; $6216: $FF
    jp nz, $A9FF                                  ; $6217: $C2 $FF $A9

    cp $87                                        ; $621A: $FE $87
    ld hl, sp+$3F                                 ; $621C: $F8 $3F
    ldh [rIE], a                                  ; $621E: $E0 $FF
    ld bc, $0300                                  ; $6220: $01 $00 $03
    ld bc, $0103                                  ; $6223: $01 $03 $01
    inc bc                                        ; $6226: $03
    ld bc, $0306                                  ; $6227: $01 $06 $03
    ld b, $03                                     ; $622A: $06 $03
    add [hl]                                      ; $622C: $86
    inc bc                                        ; $622D: $03
    adc h                                         ; $622E: $8C
    rlca                                          ; $622F: $07
    adc h                                         ; $6230: $8C
    rlca                                          ; $6231: $07
    sbc b                                         ; $6232: $98

Call_018_6233:
    rrca                                          ; $6233: $0F
    sbc b                                         ; $6234: $98
    rrca                                          ; $6235: $0F
    ldh a, [$FF1F]                                ; $6236: $F0 $1F
    ldh [$FF3F], a                                ; $6238: $E0 $3F
    ret nz                                        ; $623A: $C0

    ld a, a                                       ; $623B: $7F
    add b                                         ; $623C: $80
    rst RST_38                                    ; $623D: $FF
    nop                                           ; $623E: $00
    rst RST_38                                    ; $623F: $FF
    nop                                           ; $6240: $00
    nop                                           ; $6241: $00
    nop                                           ; $6242: $00
    nop                                           ; $6243: $00
    nop                                           ; $6244: $00
    nop                                           ; $6245: $00
    nop                                           ; $6246: $00
    nop                                           ; $6247: $00
    nop                                           ; $6248: $00
    nop                                           ; $6249: $00
    nop                                           ; $624A: $00
    nop                                           ; $624B: $00
    nop                                           ; $624C: $00
    nop                                           ; $624D: $00
    nop                                           ; $624E: $00
    nop                                           ; $624F: $00
    nop                                           ; $6250: $00
    nop                                           ; $6251: $00
    nop                                           ; $6252: $00
    nop                                           ; $6253: $00
    nop                                           ; $6254: $00
    nop                                           ; $6255: $00
    nop                                           ; $6256: $00
    nop                                           ; $6257: $00
    nop                                           ; $6258: $00
    nop                                           ; $6259: $00
    add b                                         ; $625A: $80
    nop                                           ; $625B: $00
    add b                                         ; $625C: $80
    nop                                           ; $625D: $00
    add b                                         ; $625E: $80
    nop                                           ; $625F: $00
    nop                                           ; $6260: $00
    nop                                           ; $6261: $00
    nop                                           ; $6262: $00
    nop                                           ; $6263: $00
    nop                                           ; $6264: $00
    nop                                           ; $6265: $00
    nop                                           ; $6266: $00
    nop                                           ; $6267: $00
    nop                                           ; $6268: $00
    nop                                           ; $6269: $00
    nop                                           ; $626A: $00
    nop                                           ; $626B: $00
    nop                                           ; $626C: $00
    nop                                           ; $626D: $00
    nop                                           ; $626E: $00
    nop                                           ; $626F: $00
    nop                                           ; $6270: $00
    nop                                           ; $6271: $00
    inc bc                                        ; $6272: $03
    nop                                           ; $6273: $00
    inc c                                         ; $6274: $0C
    inc bc                                        ; $6275: $03
    db $10                                        ; $6276: $10
    rrca                                          ; $6277: $0F
    daa                                           ; $6278: $27
    dec e                                         ; $6279: $1D
    ld e, a                                       ; $627A: $5F
    ld [hl-], a                                   ; $627B: $32
    cp [hl]                                       ; $627C: $BE
    ld b, h                                       ; $627D: $44
    call nz, $C000                                ; $627E: $C4 $00 $C0
    ccf                                           ; $6281: $3F
    nop                                           ; $6282: $00
    rst RST_38                                    ; $6283: $FF
    rra                                           ; $6284: $1F
    rst RST_38                                    ; $6285: $FF
    rst RST_38                                    ; $6286: $FF
    ldh [$FFE1], a                                ; $6287: $E0 $E1
    nop                                           ; $6289: $00
    sbc e                                         ; $628A: $9B
    ld h, c                                       ; $628B: $61
    add a                                         ; $628C: $87
    ld a, c                                       ; $628D: $79
    db $E3                                        ; $628E: $E3
    ld a, h                                       ; $628F: $7C
    ld a, d                                       ; $6290: $7A
    dec e                                         ; $6291: $1D
    ld e, $05                                     ; $6292: $1E $05
    ld b, $01                                     ; $6294: $06 $01
    inc bc                                        ; $6296: $03
    nop                                           ; $6297: $00
    dec c                                         ; $6298: $0D
    nop                                           ; $6299: $00
    ccf                                           ; $629A: $3F
    inc c                                         ; $629B: $0C
    ld a, a                                       ; $629C: $7F
    ld e, $FF                                     ; $629D: $1E $FF
    ld l, a                                       ; $629F: $6F
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
    rst RST_38                                    ; $62AA: $FF
    nop                                           ; $62AB: $00
    nop                                           ; $62AC: $00
    rst RST_38                                    ; $62AD: $FF
    rra                                           ; $62AE: $1F
    rst RST_38                                    ; $62AF: $FF
    ld bc, $00FF                                  ; $62B0: $01 $FF $00
    rst RST_38                                    ; $62B3: $FF
    rst RST_38                                    ; $62B4: $FF
    rst RST_38                                    ; $62B5: $FF
    rst RST_38                                    ; $62B6: $FF
    inc bc                                        ; $62B7: $03
    jp $2000                                      ; $62B8: $C3 $00 $20


    ret nz                                        ; $62BB: $C0

    db $10                                        ; $62BC: $10
    ldh [$FFD0], a                                ; $62BD: $E0 $D0
    jr nz, jr_018_62C1                            ; $62BF: $20 $00

jr_018_62C1:
    nop                                           ; $62C1: $00
    nop                                           ; $62C2: $00
    nop                                           ; $62C3: $00
    nop                                           ; $62C4: $00
    nop                                           ; $62C5: $00
    nop                                           ; $62C6: $00
    nop                                           ; $62C7: $00

jr_018_62C8:
    nop                                           ; $62C8: $00
    nop                                           ; $62C9: $00
    add b                                         ; $62CA: $80
    nop                                           ; $62CB: $00
    ld a, b                                       ; $62CC: $78
    add b                                         ; $62CD: $80
    add a                                         ; $62CE: $87
    ld hl, sp-$08                                 ; $62CF: $F8 $F8
    rst RST_38                                    ; $62D1: $FF
    ld a, a                                       ; $62D2: $7F
    rst RST_38                                    ; $62D3: $FF
    cp a                                          ; $62D4: $BF
    rst RST_38                                    ; $62D5: $FF
    rst RST_38                                    ; $62D6: $FF
    cp $FF                                        ; $62D7: $FE $FF
    ld a, a                                       ; $62D9: $7F
    ld a, a                                       ; $62DA: $7F
    rra                                           ; $62DB: $1F
    ccf                                           ; $62DC: $3F
    dec c                                         ; $62DD: $0D
    rst RST_38                                    ; $62DE: $FF
    ld a, $00                                     ; $62DF: $3E $00
    nop                                           ; $62E1: $00
    nop                                           ; $62E2: $00
    nop                                           ; $62E3: $00
    ldh [rP1], a                                  ; $62E4: $E0 $00
    jr jr_018_62C8                                ; $62E6: $18 $E0

    db $E4                                        ; $62E8: $E4
    ld hl, sp-$0E                                 ; $62E9: $F8 $F2
    db $FC                                        ; $62EB: $FC
    ld sp, hl                                     ; $62EC: $F9
    ld a, $FD                                     ; $62ED: $3E $FD
    adc [hl]                                      ; $62EF: $8E
    db $FD                                        ; $62F0: $FD
    add d                                         ; $62F1: $82
    db $FD                                        ; $62F2: $FD

jr_018_62F3:
    ld c, d                                       ; $62F3: $4A
    db $FD                                        ; $62F4: $FD
    ld a, [de]                                    ; $62F5: $1A
    cp $B8                                        ; $62F6: $FE $B8
    db $FC                                        ; $62F8: $FC
    jr c, jr_018_62F3                             ; $62F9: $38 $F8

    or b                                          ; $62FB: $B0
    ldh a, [$FF80]                                ; $62FC: $F0 $80
    ret nz                                        ; $62FE: $C0

    nop                                           ; $62FF: $00
    nop                                           ; $6300: $00
    nop                                           ; $6301: $00
    nop                                           ; $6302: $00
    nop                                           ; $6303: $00
    nop                                           ; $6304: $00
    nop                                           ; $6305: $00
    nop                                           ; $6306: $00
    nop                                           ; $6307: $00
    nop                                           ; $6308: $00
    nop                                           ; $6309: $00
    nop                                           ; $630A: $00
    nop                                           ; $630B: $00
    nop                                           ; $630C: $00
    nop                                           ; $630D: $00
    nop                                           ; $630E: $00
    nop                                           ; $630F: $00
    nop                                           ; $6310: $00
    nop                                           ; $6311: $00
    nop                                           ; $6312: $00
    nop                                           ; $6313: $00
    nop                                           ; $6314: $00
    nop                                           ; $6315: $00
    nop                                           ; $6316: $00
    nop                                           ; $6317: $00
    nop                                           ; $6318: $00
    nop                                           ; $6319: $00
    nop                                           ; $631A: $00
    nop                                           ; $631B: $00
    rlca                                          ; $631C: $07
    nop                                           ; $631D: $00
    jr c, jr_018_6327                             ; $631E: $38 $07

    ld bc, $0100                                  ; $6320: $01 $00 $01
    nop                                           ; $6323: $00
    nop                                           ; $6324: $00
    nop                                           ; $6325: $00
    nop                                           ; $6326: $00

jr_018_6327:
    nop                                           ; $6327: $00
    inc bc                                        ; $6328: $03
    nop                                           ; $6329: $00
    ld [bc], a                                    ; $632A: $02
    ld bc, $0304                                  ; $632B: $01 $04 $03
    inc b                                         ; $632E: $04
    inc bc                                        ; $632F: $03
    inc b                                         ; $6330: $04
    inc bc                                        ; $6331: $03
    inc b                                         ; $6332: $04
    inc bc                                        ; $6333: $03
    inc b                                         ; $6334: $04
    inc bc                                        ; $6335: $03
    inc b                                         ; $6336: $04
    inc bc                                        ; $6337: $03
    inc bc                                        ; $6338: $03
    nop                                           ; $6339: $00
    nop                                           ; $633A: $00
    nop                                           ; $633B: $00
    nop                                           ; $633C: $00
    nop                                           ; $633D: $00
    nop                                           ; $633E: $00
    nop                                           ; $633F: $00
    rst RST_38                                    ; $6340: $FF
    rst RST_30                                    ; $6341: $F7
    rst RST_38                                    ; $6342: $FF
    rst RST_30                                    ; $6343: $F7
    rst RST_38                                    ; $6344: $FF
    ld a, e                                       ; $6345: $7B
    rst RST_38                                    ; $6346: $FF
    ld a, l                                       ; $6347: $7D
    rst RST_38                                    ; $6348: $FF
    inc a                                         ; $6349: $3C
    ld a, a                                       ; $634A: $7F
    cp b                                          ; $634B: $B8
    rst RST_38                                    ; $634C: $FF
    nop                                           ; $634D: $00
    rst RST_38                                    ; $634E: $FF
    ld a, l                                       ; $634F: $7D
    rst RST_38                                    ; $6350: $FF
    ld a, l                                       ; $6351: $7D
    rst RST_38                                    ; $6352: $FF
    ld a, l                                       ; $6353: $7D
    rst RST_38                                    ; $6354: $FF
    ld a, l                                       ; $6355: $7D
    rst RST_38                                    ; $6356: $FF
    ld a, l                                       ; $6357: $7D
    rst RST_38                                    ; $6358: $FF
    dec a                                         ; $6359: $3D
    ccf                                           ; $635A: $3F
    nop                                           ; $635B: $00
    rra                                           ; $635C: $1F
    inc bc                                        ; $635D: $03
    inc bc                                        ; $635E: $03
    nop                                           ; $635F: $00
    ccf                                           ; $6360: $3F
    ret nz                                        ; $6361: $C0

    add hl, bc                                    ; $6362: $09
    or $CE                                        ; $6363: $F6 $CE
    ld sp, $CAF5                                  ; $6365: $31 $F5 $CA
    rst RST_00                                    ; $6368: $C7
    dec sp                                        ; $6369: $3B
    rlca                                          ; $636A: $07
    ld hl, sp+$0F                                 ; $636B: $F8 $0F
    rst RST_30                                    ; $636D: $F7
    rst RST_38                                    ; $636E: $FF
    inc c                                         ; $636F: $0C
    rst RST_38                                    ; $6370: $FF
    add e                                         ; $6371: $83
    rst RST_38                                    ; $6372: $FF
    or a                                          ; $6373: $B7
    rst RST_38                                    ; $6374: $FF
    sub $FF                                       ; $6375: $D6 $FF
    ret nz                                        ; $6377: $C0

    rst RST_38                                    ; $6378: $FF
    nop                                           ; $6379: $00
    ld hl, sp+$07                                 ; $637A: $F8 $07
    call nz, $E53B                                ; $637C: $C4 $3B $E5
    sbc d                                         ; $637F: $9A
    rst RST_38                                    ; $6380: $FF
    cp $FF                                        ; $6381: $FE $FF
    ccf                                           ; $6383: $3F
    ccf                                           ; $6384: $3F
    add $CF                                       ; $6385: $C6 $CF
    ld sp, $C13F                                  ; $6387: $31 $3F $C1
    rst RST_08                                    ; $638A: $CF
    pop af                                        ; $638B: $F1
    rst RST_38                                    ; $638C: $FF

jr_018_638D:
    jr nc, jr_018_638D                            ; $638D: $30 $FE

    ld b, b                                       ; $638F: $40
    ld hl, sp-$10                                 ; $6390: $F8 $F0
    ld hl, sp-$40                                 ; $6392: $F8 $C0
    ld hl, sp+$00                                 ; $6394: $F8 $00
    ld hl, sp+$00                                 ; $6396: $F8 $00
    db $10                                        ; $6398: $10
    ldh [rNR10], a                                ; $6399: $E0 $10
    ldh [$FF30], a                                ; $639B: $E0 $30
    ret nz                                        ; $639D: $C0

    ldh a, [rNR41]                                ; $639E: $F0 $20
    sbc $A1                                       ; $63A0: $DE $A1
    xor $95                                       ; $63A2: $EE $95
    cp $A1                                        ; $63A4: $FE $A1
    rst RST_38                                    ; $63A6: $FF
    cp b                                          ; $63A7: $B8
    db $FD                                        ; $63A8: $FD
    cp b                                          ; $63A9: $B8
    db $FC                                        ; $63AA: $FC

jr_018_63AB:
    jr c, jr_018_63AB                             ; $63AB: $38 $FE

    ld hl, sp-$06                                 ; $63AD: $F8 $FA
    ld h, h                                       ; $63AF: $64
    ld h, d                                       ; $63B0: $62
    inc e                                         ; $63B1: $1C
    ld [de], a                                    ; $63B2: $12
    inc c                                         ; $63B3: $0C
    ld [de], a                                    ; $63B4: $12
    inc c                                         ; $63B5: $0C
    ld a, [bc]                                    ; $63B6: $0A
    inc b                                         ; $63B7: $04
    ld b, $00                                     ; $63B8: $06 $00
    nop                                           ; $63BA: $00
    nop                                           ; $63BB: $00
    nop                                           ; $63BC: $00
    nop                                           ; $63BD: $00
    nop                                           ; $63BE: $00
    nop                                           ; $63BF: $00
    jr nc, @-$3E                                  ; $63C0: $30 $C0

    ld l, $C0                                     ; $63C2: $2E $C0
    dec e                                         ; $63C4: $1D
    ldh [c], a                                    ; $63C5: $E2
    rra                                           ; $63C6: $1F
    db $EC                                        ; $63C7: $EC
    rra                                           ; $63C8: $1F
    rst RST_28                                    ; $63C9: $EF
    rst RST_38                                    ; $63CA: $FF
    inc bc                                        ; $63CB: $03
    rst RST_38                                    ; $63CC: $FF
    ld h, b                                       ; $63CD: $60
    rst RST_38                                    ; $63CE: $FF
    ld a, b                                       ; $63CF: $78
    rst RST_38                                    ; $63D0: $FF
    dec a                                         ; $63D1: $3D
    ccf                                           ; $63D2: $3F
    dec c                                         ; $63D3: $0D
    rrca                                          ; $63D4: $0F
    inc bc                                        ; $63D5: $03
    inc bc                                        ; $63D6: $03
    nop                                           ; $63D7: $00
    nop                                           ; $63D8: $00
    nop                                           ; $63D9: $00
    nop                                           ; $63DA: $00
    nop                                           ; $63DB: $00
    nop                                           ; $63DC: $00
    nop                                           ; $63DD: $00
    nop                                           ; $63DE: $00

jr_018_63DF:
    nop                                           ; $63DF: $00
    add b                                         ; $63E0: $80
    nop                                           ; $63E1: $00
    ld h, b                                       ; $63E2: $60
    add b                                         ; $63E3: $80
    ret c                                         ; $63E4: $D8

    jr nz, jr_018_63DF                            ; $63E5: $20 $F8

    ret nz                                        ; $63E7: $C0

    ld hl, sp-$10                                 ; $63E8: $F8 $F0
    ldh a, [$FF60]                                ; $63EA: $F0 $60
    ldh a, [$FF80]                                ; $63EC: $F0 $80
    ldh a, [$FFC0]                                ; $63EE: $F0 $C0
    ret z                                         ; $63F0: $C8

    or b                                          ; $63F1: $B0
    ret z                                         ; $63F2: $C8

    or b                                          ; $63F3: $B0
    add sp, $10                                   ; $63F4: $E8 $10
    ld e, b                                       ; $63F6: $58
    jr nz, jr_018_6421                            ; $63F7: $20 $28

    db $10                                        ; $63F9: $10
    jr jr_018_63FC                                ; $63FA: $18 $00

jr_018_63FC:
    nop                                           ; $63FC: $00
    nop                                           ; $63FD: $00
    nop                                           ; $63FE: $00
    nop                                           ; $63FF: $00
    nop                                           ; $6400: $00
    nop                                           ; $6401: $00
    nop                                           ; $6402: $00
    nop                                           ; $6403: $00
    nop                                           ; $6404: $00
    nop                                           ; $6405: $00
    nop                                           ; $6406: $00
    nop                                           ; $6407: $00
    ld h, c                                       ; $6408: $61
    nop                                           ; $6409: $00
    sbc e                                         ; $640A: $9B
    ld h, c                                       ; $640B: $61
    add a                                         ; $640C: $87
    ld a, c                                       ; $640D: $79
    db $E3                                        ; $640E: $E3
    ld a, h                                       ; $640F: $7C
    ld a, d                                       ; $6410: $7A
    dec e                                         ; $6411: $1D
    ld e, $05                                     ; $6412: $1E $05
    ld b, $01                                     ; $6414: $06 $01
    inc bc                                        ; $6416: $03
    nop                                           ; $6417: $00
    dec c                                         ; $6418: $0D
    nop                                           ; $6419: $00
    ccf                                           ; $641A: $3F
    inc c                                         ; $641B: $0C
    ld a, a                                       ; $641C: $7F

jr_018_641D:
    ld e, $FF                                     ; $641D: $1E $FF
    ld l, a                                       ; $641F: $6F
    nop                                           ; $6420: $00

jr_018_6421:
    nop                                           ; $6421: $00
    nop                                           ; $6422: $00
    nop                                           ; $6423: $00
    nop                                           ; $6424: $00
    nop                                           ; $6425: $00
    nop                                           ; $6426: $00
    nop                                           ; $6427: $00
    nop                                           ; $6428: $00
    nop                                           ; $6429: $00
    nop                                           ; $642A: $00
    nop                                           ; $642B: $00
    nop                                           ; $642C: $00
    nop                                           ; $642D: $00
    nop                                           ; $642E: $00
    nop                                           ; $642F: $00
    nop                                           ; $6430: $00
    nop                                           ; $6431: $00
    nop                                           ; $6432: $00
    nop                                           ; $6433: $00
    nop                                           ; $6434: $00
    nop                                           ; $6435: $00
    nop                                           ; $6436: $00
    nop                                           ; $6437: $00
    ret nz                                        ; $6438: $C0

    nop                                           ; $6439: $00
    jr nz, jr_018_63FC                            ; $643A: $20 $C0

    db $10                                        ; $643C: $10
    ldh [$FFD0], a                                ; $643D: $E0 $D0
    jr nz, jr_018_6441                            ; $643F: $20 $00

jr_018_6441:
    nop                                           ; $6441: $00
    nop                                           ; $6442: $00
    nop                                           ; $6443: $00
    nop                                           ; $6444: $00
    nop                                           ; $6445: $00
    nop                                           ; $6446: $00
    nop                                           ; $6447: $00
    nop                                           ; $6448: $00
    nop                                           ; $6449: $00
    nop                                           ; $644A: $00
    nop                                           ; $644B: $00
    nop                                           ; $644C: $00
    nop                                           ; $644D: $00
    nop                                           ; $644E: $00
    nop                                           ; $644F: $00
    nop                                           ; $6450: $00
    nop                                           ; $6451: $00
    nop                                           ; $6452: $00
    nop                                           ; $6453: $00
    nop                                           ; $6454: $00
    nop                                           ; $6455: $00
    nop                                           ; $6456: $00
    nop                                           ; $6457: $00
    inc bc                                        ; $6458: $03
    nop                                           ; $6459: $00
    rrca                                          ; $645A: $0F
    inc bc                                        ; $645B: $03
    ccf                                           ; $645C: $3F
    rlca                                          ; $645D: $07
    rst RST_38                                    ; $645E: $FF
    add hl, sp                                    ; $645F: $39
    nop                                           ; $6460: $00
    nop                                           ; $6461: $00
    nop                                           ; $6462: $00
    nop                                           ; $6463: $00
    nop                                           ; $6464: $00
    nop                                           ; $6465: $00
    jr c, jr_018_6468                             ; $6466: $38 $00

jr_018_6468:
    db $E4                                        ; $6468: $E4
    jr jr_018_641D                                ; $6469: $18 $B2

    ld c, h                                       ; $646B: $4C
    add c                                         ; $646C: $81
    ld a, [hl]                                    ; $646D: $7E
    pop af                                        ; $646E: $F1
    adc [hl]                                      ; $646F: $8E
    db $FD                                        ; $6470: $FD
    ldh a, [c]                                    ; $6471: $F2
    db $FD                                        ; $6472: $FD

jr_018_6473:
    ld [$1AFD], a                                 ; $6473: $EA $FD $1A
    cp $B8                                        ; $6476: $FE $B8
    db $FC                                        ; $6478: $FC
    jr c, jr_018_6473                             ; $6479: $38 $F8

    or b                                          ; $647B: $B0
    ldh a, [$FF80]                                ; $647C: $F0 $80
    ret nz                                        ; $647E: $C0

    nop                                           ; $647F: $00
    ccf                                           ; $6480: $3F
    rra                                           ; $6481: $1F
    ccf                                           ; $6482: $3F
    rra                                           ; $6483: $1F
    ld a, e                                       ; $6484: $7B
    ccf                                           ; $6485: $3F
    ld [hl], a                                    ; $6486: $77
    ccf                                           ; $6487: $3F
    or a                                          ; $6488: $B7
    ld a, a                                       ; $6489: $7F
    and a                                         ; $648A: $A7
    ld a, a                                       ; $648B: $7F
    and a                                         ; $648C: $A7
    ld a, a                                       ; $648D: $7F
    and a                                         ; $648E: $A7
    ld a, a                                       ; $648F: $7F
    add e                                         ; $6490: $83
    ld a, a                                       ; $6491: $7F
    add c                                         ; $6492: $81
    ld a, a                                       ; $6493: $7F
    ld b, b                                       ; $6494: $40
    ccf                                           ; $6495: $3F
    ld b, b                                       ; $6496: $40
    ccf                                           ; $6497: $3F
    jr nz, jr_018_64B9                            ; $6498: $20 $1F

    db $10                                        ; $649A: $10
    rrca                                          ; $649B: $0F
    inc c                                         ; $649C: $0C
    inc bc                                        ; $649D: $03
    inc bc                                        ; $649E: $03
    nop                                           ; $649F: $00
    rst RST_38                                    ; $64A0: $FF
    ld a, h                                       ; $64A1: $7C
    rst RST_38                                    ; $64A2: $FF
    ld hl, sp-$01                                 ; $64A3: $F8 $FF
    ld hl, sp-$09                                 ; $64A5: $F8 $F7
    ld hl, sp-$19                                 ; $64A7: $F8 $E7
    ld hl, sp-$1F                                 ; $64A9: $F8 $E1
    cp $F0                                        ; $64AB: $FE $F0
    rst RST_38                                    ; $64AD: $FF
    ld hl, sp-$01                                 ; $64AE: $F8 $FF
    cp $FF                                        ; $64B0: $FE $FF
    ld a, a                                       ; $64B2: $7F
    rst RST_38                                    ; $64B3: $FF
    nop                                           ; $64B4: $00
    rst RST_38                                    ; $64B5: $FF
    nop                                           ; $64B6: $00
    rst RST_38                                    ; $64B7: $FF
    nop                                           ; $64B8: $00

jr_018_64B9:
    rst RST_38                                    ; $64B9: $FF
    nop                                           ; $64BA: $00
    rst RST_38                                    ; $64BB: $FF
    nop                                           ; $64BC: $00
    rst RST_38                                    ; $64BD: $FF
    rst RST_38                                    ; $64BE: $FF
    nop                                           ; $64BF: $00
    ld sp, hl                                     ; $64C0: $F9
    ld c, $CD                                     ; $64C1: $0E $CD
    ld [hl], $CD                                  ; $64C3: $36 $CD
    ld [hl], $FD                                  ; $64C5: $36 $FD
    ld [hl], $FF                                  ; $64C7: $36 $FF
    nop                                           ; $64C9: $00
    rst RST_38                                    ; $64CA: $FF
    nop                                           ; $64CB: $00
    ld bc, $0FFE                                  ; $64CC: $01 $FE $0F
    pop af                                        ; $64CF: $F1
    ccf                                           ; $64D0: $3F
    ret nz                                        ; $64D1: $C0

    ret nz                                        ; $64D2: $C0

    rst RST_38                                    ; $64D3: $FF
    ld bc, $0FFE                                  ; $64D4: $01 $FE $0F

jr_018_64D7:
    pop af                                        ; $64D7: $F1
    ld a, a                                       ; $64D8: $7F
    add b                                         ; $64D9: $80
    inc b                                         ; $64DA: $04
    ld hl, sp+$18                                 ; $64DB: $F8 $18
    ldh [$FFE0], a                                ; $64DD: $E0 $E0
    nop                                           ; $64DF: $00

jr_018_64E0:
    db $FC                                        ; $64E0: $FC
    nop                                           ; $64E1: $00
    jp Jump_018_403C                              ; $64E2: $C3 $3C $40


    cp a                                          ; $64E5: $BF
    ld c, [hl]                                    ; $64E6: $4E
    or c                                          ; $64E7: $B1
    rst RST_38                                    ; $64E8: $FF
    call z, Call_000_1DE2                         ; $64E9: $CC $E2 $1D
    ei                                            ; $64EC: $FB
    inc b                                         ; $64ED: $04
    and l                                         ; $64EE: $A5
    ld e, d                                       ; $64EF: $5A
    rst RST_38                                    ; $64F0: $FF
    add b                                         ; $64F1: $80
    rst RST_38                                    ; $64F2: $FF
    ccf                                           ; $64F3: $3F
    ld a, a                                       ; $64F4: $7F
    add b                                         ; $64F5: $80
    rst RST_38                                    ; $64F6: $FF
    ld a, a                                       ; $64F7: $7F
    rst RST_38                                    ; $64F8: $FF
    ld a, a                                       ; $64F9: $7F
    rst RST_38                                    ; $64FA: $FF
    nop                                           ; $64FB: $00
    jp z, Jump_000_3F35                           ; $64FC: $CA $35 $3F

    nop                                           ; $64FF: $00
    rra                                           ; $6500: $1F
    nop                                           ; $6501: $00
    ld a, l                                       ; $6502: $7D
    ld a, [de]                                    ; $6503: $1A
    db $FD                                        ; $6504: $FD
    ld a, [hl-]                                   ; $6505: $3A
    ld a, l                                       ; $6506: $7D
    sbc d                                         ; $6507: $9A
    rst RST_38                                    ; $6508: $FF
    ld l, b                                       ; $6509: $68
    rst RST_38                                    ; $650A: $FF
    ld l, c                                       ; $650B: $69
    rst RST_38                                    ; $650C: $FF
    dec [hl]                                      ; $650D: $35
    rst RST_38                                    ; $650E: $FF
    dec [hl]                                      ; $650F: $35
    rst RST_38                                    ; $6510: $FF
    cp b                                          ; $6511: $B8
    rst RST_38                                    ; $6512: $FF
    reti                                          ; $6513: $D9


    rst RST_38                                    ; $6514: $FF
    inc bc                                        ; $6515: $03
    rst RST_38                                    ; $6516: $FF
    db $DB                                        ; $6517: $DB
    rst RST_38                                    ; $6518: $FF
    ret c                                         ; $6519: $D8

    db $FC                                        ; $651A: $FC
    nop                                           ; $651B: $00
    ldh [rP1], a                                  ; $651C: $E0 $00
    jr nc, jr_018_64E0                            ; $651E: $30 $C0

    nop                                           ; $6520: $00
    nop                                           ; $6521: $00
    nop                                           ; $6522: $00
    nop                                           ; $6523: $00
    ldh [rP1], a                                  ; $6524: $E0 $00
    sub b                                         ; $6526: $90
    ld h, b                                       ; $6527: $60
    add sp, $10                                   ; $6528: $E8 $10
    xor b                                         ; $652A: $A8
    ld d, b                                       ; $652B: $50
    ret z                                         ; $652C: $C8

    jr nc, jr_018_64D7                            ; $652D: $30 $A8

    ld d, b                                       ; $652F: $50
    ret z                                         ; $6530: $C8

    or b                                          ; $6531: $B0
    ld hl, sp-$80                                 ; $6532: $F8 $80
    ld hl, sp-$10                                 ; $6534: $F8 $F0
    ld hl, sp+$00                                 ; $6536: $F8 $00
    ld hl, sp-$10                                 ; $6538: $F8 $F0
    ldh a, [$FFE0]                                ; $653A: $F0 $E0
    ldh [$FFC0], a                                ; $653C: $E0 $C0
    ret nz                                        ; $653E: $C0

    nop                                           ; $653F: $00
    ld bc, $0300                                  ; $6540: $01 $00 $03
    nop                                           ; $6543: $00
    rlca                                          ; $6544: $07
    ld [bc], a                                    ; $6545: $02
    rrca                                          ; $6546: $0F
    inc bc                                        ; $6547: $03
    rrca                                          ; $6548: $0F
    inc b                                         ; $6549: $04
    rrca                                          ; $654A: $0F
    dec b                                         ; $654B: $05
    rrca                                          ; $654C: $0F
    ld b, $07                                     ; $654D: $06 $07
    ld [bc], a                                    ; $654F: $02
    rlca                                          ; $6550: $07
    inc bc                                        ; $6551: $03
    rlca                                          ; $6552: $07
    nop                                           ; $6553: $00

jr_018_6554:
    inc b                                         ; $6554: $04
    inc bc                                        ; $6555: $03

jr_018_6556:
    inc b                                         ; $6556: $04
    inc bc                                        ; $6557: $03

jr_018_6558:
    ld [$0907], sp                                ; $6558: $08 $07 $09
    ld b, $06                                     ; $655B: $06 $06
    nop                                           ; $655D: $00
    nop                                           ; $655E: $00
    nop                                           ; $655F: $00
    ld a, $19                                     ; $6560: $3E $19

jr_018_6562:
    ld e, [hl]                                    ; $6562: $5E
    add hl, hl                                    ; $6563: $29
    adc [hl]                                      ; $6564: $8E
    ld [hl], c                                    ; $6565: $71
    rrca                                          ; $6566: $0F
    ldh a, [c]                                    ; $6567: $F2
    rra                                           ; $6568: $1F
    db $EB                                        ; $6569: $EB
    rst RST_38                                    ; $656A: $FF
    db $10                                        ; $656B: $10
    rst RST_38                                    ; $656C: $FF
    jp Jump_000_30FB                              ; $656D: $C3 $FB $30


    ei                                            ; $6570: $FB
    or c                                          ; $6571: $B1
    ld sp, hl                                     ; $6572: $F9
    jr nc, @-$05                                  ; $6573: $30 $F9

    or b                                          ; $6575: $B0
    ld sp, hl                                     ; $6576: $F9
    or b                                          ; $6577: $B0
    ldh a, [rNR41]                                ; $6578: $F0 $20
    ldh [rP1], a                                  ; $657A: $E0 $00
    add b                                         ; $657C: $80
    nop                                           ; $657D: $00
    nop                                           ; $657E: $00
    nop                                           ; $657F: $00
    jr jr_018_6562                                ; $6580: $18 $E0

    inc e                                         ; $6582: $1C
    add sp, $3C                                   ; $6583: $E8 $3C

jr_018_6585:
    ret c                                         ; $6585: $D8

    db $FC                                        ; $6586: $FC
    jr jr_018_6585                                ; $6587: $18 $FC

    ld a, b                                       ; $6589: $78
    db $FC                                        ; $658A: $FC
    nop                                           ; $658B: $00
    db $FC                                        ; $658C: $FC
    ld a, b                                       ; $658D: $78
    ld hl, sp+$70                                 ; $658E: $F8 $70
    ld hl, sp+$30                                 ; $6590: $F8 $30
    jr nc, jr_018_6554                            ; $6592: $30 $C0

    jr nz, jr_018_6556                            ; $6594: $20 $C0

    jr nz, jr_018_6558                            ; $6596: $20 $C0

    ret nz                                        ; $6598: $C0

    nop                                           ; $6599: $00
    nop                                           ; $659A: $00
    nop                                           ; $659B: $00
    nop                                           ; $659C: $00
    nop                                           ; $659D: $00
    nop                                           ; $659E: $00
    nop                                           ; $659F: $00
    nop                                           ; $65A0: $00
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
    nop                                           ; $65B6: $00
    nop                                           ; $65B7: $00
    inc bc                                        ; $65B8: $03
    nop                                           ; $65B9: $00
    rlca                                          ; $65BA: $07
    ld [bc], a                                    ; $65BB: $02
    rrca                                          ; $65BC: $0F
    ld b, $1F                                     ; $65BD: $06 $1F
    dec c                                         ; $65BF: $0D
    nop                                           ; $65C0: $00
    nop                                           ; $65C1: $00
    nop                                           ; $65C2: $00
    nop                                           ; $65C3: $00
    nop                                           ; $65C4: $00
    nop                                           ; $65C5: $00
    nop                                           ; $65C6: $00
    nop                                           ; $65C7: $00
    nop                                           ; $65C8: $00
    nop                                           ; $65C9: $00
    nop                                           ; $65CA: $00
    nop                                           ; $65CB: $00
    nop                                           ; $65CC: $00
    nop                                           ; $65CD: $00
    nop                                           ; $65CE: $00
    nop                                           ; $65CF: $00
    nop                                           ; $65D0: $00
    nop                                           ; $65D1: $00
    nop                                           ; $65D2: $00
    nop                                           ; $65D3: $00
    nop                                           ; $65D4: $00
    nop                                           ; $65D5: $00
    add b                                         ; $65D6: $80
    nop                                           ; $65D7: $00
    ldh a, [rP1]                                  ; $65D8: $F0 $00
    cp $40                                        ; $65DA: $FE $40
    rst RST_38                                    ; $65DC: $FF
    add d                                         ; $65DD: $82
    rst RST_38                                    ; $65DE: $FF
    sbc a                                         ; $65DF: $9F
    nop                                           ; $65E0: $00
    nop                                           ; $65E1: $00
    nop                                           ; $65E2: $00
    nop                                           ; $65E3: $00
    nop                                           ; $65E4: $00
    nop                                           ; $65E5: $00
    nop                                           ; $65E6: $00
    nop                                           ; $65E7: $00
    nop                                           ; $65E8: $00
    nop                                           ; $65E9: $00
    nop                                           ; $65EA: $00
    nop                                           ; $65EB: $00
    nop                                           ; $65EC: $00
    nop                                           ; $65ED: $00
    nop                                           ; $65EE: $00
    nop                                           ; $65EF: $00
    nop                                           ; $65F0: $00
    nop                                           ; $65F1: $00
    nop                                           ; $65F2: $00
    nop                                           ; $65F3: $00
    nop                                           ; $65F4: $00
    nop                                           ; $65F5: $00
    nop                                           ; $65F6: $00
    nop                                           ; $65F7: $00
    nop                                           ; $65F8: $00
    nop                                           ; $65F9: $00
    nop                                           ; $65FA: $00
    nop                                           ; $65FB: $00
    ret nz                                        ; $65FC: $C0

    nop                                           ; $65FD: $00
    sbc $80                                       ; $65FE: $DE $80
    nop                                           ; $6600: $00
    nop                                           ; $6601: $00
    ld a, a                                       ; $6602: $7F
    nop                                           ; $6603: $00
    adc b                                         ; $6604: $88
    ld a, a                                       ; $6605: $7F
    adc b                                         ; $6606: $88
    ld a, a                                       ; $6607: $7F
    rst RST_38                                    ; $6608: $FF
    ld a, a                                       ; $6609: $7F
    ld a, a                                       ; $660A: $7F
    nop                                           ; $660B: $00
    ld h, e                                       ; $660C: $63
    dec e                                         ; $660D: $1D
    sbc a                                         ; $660E: $9F
    ld h, c                                       ; $660F: $61
    pop af                                        ; $6610: $F1
    ld c, $4E                                     ; $6611: $0E $4E
    ld sp, $0D32                                  ; $6613: $31 $32 $0D
    ld e, [hl]                                    ; $6616: $5E
    ld hl, $056A                                  ; $6617: $21 $6A $05
    ld de, $270E                                  ; $661A: $11 $0E $27
    jr jr_018_6657                                ; $661D: $18 $38

    nop                                           ; $661F: $00
    pop af                                        ; $6620: $F1
    nop                                           ; $6621: $00
    rst RST_38                                    ; $6622: $FF
    ld h, b                                       ; $6623: $60
    ldh a, [$FF6F]                                ; $6624: $F0 $6F
    ldh a, [$FF6F]                                ; $6626: $F0 $6F
    rst RST_38                                    ; $6628: $FF
    ld l, a                                       ; $6629: $6F
    rst RST_38                                    ; $662A: $FF
    nop                                           ; $662B: $00
    db $FD                                        ; $662C: $FD
    ld hl, sp-$01                                 ; $662D: $F8 $FF
    ld hl, sp-$01                                 ; $662F: $F8 $FF
    nop                                           ; $6631: $00
    ld a, a                                       ; $6632: $7F
    cp a                                          ; $6633: $BF
    ld a, a                                       ; $6634: $7F
    cp a                                          ; $6635: $BF
    ld a, a                                       ; $6636: $7F
    cp a                                          ; $6637: $BF
    ld a, a                                       ; $6638: $7F
    cp a                                          ; $6639: $BF
    ld a, a                                       ; $663A: $7F
    cp a                                          ; $663B: $BF
    rst RST_38                                    ; $663C: $FF
    ccf                                           ; $663D: $3F
    ld a, a                                       ; $663E: $7F
    nop                                           ; $663F: $00
    ld hl, sp+$00                                 ; $6640: $F8 $00
    add a                                         ; $6642: $87
    ld a, b                                       ; $6643: $78
    add c                                         ; $6644: $81
    ld a, [hl]                                    ; $6645: $7E
    sbc h                                         ; $6646: $9C
    ld h, e                                       ; $6647: $63
    rst RST_38                                    ; $6648: $FF
    sbc b                                         ; $6649: $98
    rst RST_00                                    ; $664A: $C7
    jr c, @+$01                                   ; $664B: $38 $FF

    inc bc                                        ; $664D: $03
    ld a, a                                       ; $664E: $7F
    adc a                                         ; $664F: $8F
    rst RST_38                                    ; $6650: $FF
    ccf                                           ; $6651: $3F
    rst RST_38                                    ; $6652: $FF
    cp a                                          ; $6653: $BF
    rst RST_38                                    ; $6654: $FF
    sbc a                                         ; $6655: $9F
    rst RST_38                                    ; $6656: $FF

jr_018_6657:
    sbc a                                         ; $6657: $9F
    rst RST_38                                    ; $6658: $FF
    adc a                                         ; $6659: $8F
    rst RST_38                                    ; $665A: $FF
    adc h                                         ; $665B: $8C
    db $FC                                        ; $665C: $FC
    add e                                         ; $665D: $83
    sbc a                                         ; $665E: $9F
    nop                                           ; $665F: $00
    nop                                           ; $6660: $00
    nop                                           ; $6661: $00
    rst RST_38                                    ; $6662: $FF
    nop                                           ; $6663: $00
    ld bc, $81FE                                  ; $6664: $01 $FE $81
    ld a, [hl]                                    ; $6667: $7E

jr_018_6668:
    add c                                         ; $6668: $81
    ld a, [hl]                                    ; $6669: $7E
    pop bc                                        ; $666A: $C1
    ld a, $FF                                     ; $666B: $3E $FF
    ld [bc], a                                    ; $666D: $02
    rst RST_38                                    ; $666E: $FF
    add b                                         ; $666F: $80
    db $FC                                        ; $6670: $FC
    cp b                                          ; $6671: $B8
    db $FC                                        ; $6672: $FC
    ret c                                         ; $6673: $D8

    db $FC                                        ; $6674: $FC
    ret nz                                        ; $6675: $C0

    db $F4                                        ; $6676: $F4
    ret z                                         ; $6677: $C8

    db $FC                                        ; $6678: $FC
    nop                                           ; $6679: $00
    and b                                         ; $667A: $A0
    ld b, b                                       ; $667B: $40
    ld b, b                                       ; $667C: $40
    add b                                         ; $667D: $80
    ldh [rP1], a                                  ; $667E: $E0 $00
    rlca                                          ; $6680: $07
    ld [bc], a                                    ; $6681: $02
    rlca                                          ; $6682: $07
    ld [bc], a                                    ; $6683: $02

jr_018_6684:
    ld [bc], a                                    ; $6684: $02
    ld bc, $03FC                                  ; $6685: $01 $FC $03
    rst RST_38                                    ; $6688: $FF
    ld h, h                                       ; $6689: $64
    rst RST_38                                    ; $668A: $FF
    ld h, [hl]                                    ; $668B: $66
    rst RST_38                                    ; $668C: $FF
    ld [hl], d                                    ; $668D: $72
    ld a, a                                       ; $668E: $7F
    ld [hl-], a                                   ; $668F: $32
    ld a, a                                       ; $6690: $7F
    ld [hl-], a                                   ; $6691: $32
    ccf                                           ; $6692: $3F
    inc bc                                        ; $6693: $03
    ccf                                           ; $6694: $3F
    dec e                                         ; $6695: $1D
    ccf                                           ; $6696: $3F
    dec e                                         ; $6697: $1D
    ld a, a                                       ; $6698: $7F
    dec b                                         ; $6699: $05
    or a                                          ; $669A: $B7
    ld c, d                                       ; $669B: $4A
    ld b, a                                       ; $669C: $47
    cp d                                          ; $669D: $BA
    rst RST_38                                    ; $669E: $FF
    nop                                           ; $669F: $00
    ld hl, sp+$10                                 ; $66A0: $F8 $10
    jr jr_018_6684                                ; $66A2: $18 $E0

    jr @-$1E                                      ; $66A4: $18 $E0

    jr c, jr_018_6668                             ; $66A6: $38 $C0

    cp $38                                        ; $66A8: $FE $38
    cp $1C                                        ; $66AA: $FE $1C
    ld a, [hl]                                    ; $66AC: $7E
    sbc h                                         ; $66AD: $9C
    cp $1C                                        ; $66AE: $FE $1C
    ld a, a                                       ; $66B0: $7F
    sbc [hl]                                      ; $66B1: $9E
    rst RST_38                                    ; $66B2: $FF
    ld c, $BF                                     ; $66B3: $0E $BF
    ld c, [hl]                                    ; $66B5: $4E
    rst RST_38                                    ; $66B6: $FF
    ld c, $BF                                     ; $66B7: $0E $BF

jr_018_66B9:
    ld d, [hl]                                    ; $66B9: $56
    cp $90                                        ; $66BA: $FE $90
    ld hl, sp+$00                                 ; $66BC: $F8 $00
    nop                                           ; $66BE: $00
    nop                                           ; $66BF: $00
    ld bc, $0100                                  ; $66C0: $01 $00 $01
    nop                                           ; $66C3: $00
    nop                                           ; $66C4: $00
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
    nop                                           ; $66D6: $00
    nop                                           ; $66D7: $00
    nop                                           ; $66D8: $00
    nop                                           ; $66D9: $00
    nop                                           ; $66DA: $00
    nop                                           ; $66DB: $00
    nop                                           ; $66DC: $00
    nop                                           ; $66DD: $00
    nop                                           ; $66DE: $00
    nop                                           ; $66DF: $00
    nop                                           ; $66E0: $00
    nop                                           ; $66E1: $00
    ld [hl], c                                    ; $66E2: $71
    nop                                           ; $66E3: $00
    rst RST_38                                    ; $66E4: $FF
    ld bc, $0CF3                                  ; $66E5: $01 $F3 $0C
    ldh a, [rIF]                                  ; $66E8: $F0 $0F
    ldh a, [$FF1F]                                ; $66EA: $F0 $1F
    ld a, [hl]                                    ; $66EC: $7E
    rrca                                          ; $66ED: $0F
    rrca                                          ; $66EE: $0F
    ld bc, $0207                                  ; $66EF: $01 $07 $02
    rlca                                          ; $66F2: $07
    inc bc                                        ; $66F3: $03
    rlca                                          ; $66F4: $07
    inc bc                                        ; $66F5: $03
    rlca                                          ; $66F6: $07
    inc bc                                        ; $66F7: $03
    rlca                                          ; $66F8: $07
    inc bc                                        ; $66F9: $03
    rlca                                          ; $66FA: $07
    nop                                           ; $66FB: $00
    nop                                           ; $66FC: $00
    nop                                           ; $66FD: $00
    nop                                           ; $66FE: $00
    nop                                           ; $66FF: $00
    inc e                                         ; $6700: $1C
    nop                                           ; $6701: $00
    ld h, $18                                     ; $6702: $26 $18
    ld c, e                                       ; $6704: $4B
    inc [hl]                                      ; $6705: $34
    ld c, h                                       ; $6706: $4C
    inc sp                                        ; $6707: $33
    ld [$FD15], a                                 ; $6708: $EA $15 $FD
    ldh [c], a                                    ; $670B: $E2
    db $FC                                        ; $670C: $FC
    adc e                                         ; $670D: $8B
    sbc a                                         ; $670E: $9F
    ld [hl], h                                    ; $670F: $74
    ld e, [hl]                                    ; $6710: $5E
    or h                                          ; $6711: $B4
    ld e, [hl]                                    ; $6712: $5E
    or b                                          ; $6713: $B0
    ld e, c                                       ; $6714: $59
    or [hl]                                       ; $6715: $B6
    sbc b                                         ; $6716: $98
    ld [hl], a                                    ; $6717: $77
    ld hl, sp+$2F                                 ; $6718: $F8 $2F
    rst RST_38                                    ; $671A: $FF
    ld b, a                                       ; $671B: $47
    rst RST_38                                    ; $671C: $FF
    ld [hl], b                                    ; $671D: $70
    cp $6D                                        ; $671E: $FE $6D
    nop                                           ; $6720: $00
    nop                                           ; $6721: $00
    ld bc, $0200                                  ; $6722: $01 $00 $02
    ld bc, $0083                                  ; $6725: $01 $83 $00
    add e                                         ; $6728: $83
    nop                                           ; $6729: $00
    add d                                         ; $672A: $82
    ld bc, $0081                                  ; $672B: $01 $81 $00
    ld bc, $3000                                  ; $672E: $01 $00 $30
    nop                                           ; $6731: $00
    ld c, b                                       ; $6732: $48
    jr nc, jr_018_66B9                            ; $6733: $30 $84

    ld a, b                                       ; $6735: $78
    db $DB                                        ; $6736: $DB
    inc h                                         ; $6737: $24
    db $FD                                        ; $6738: $FD
    ld e, d                                       ; $6739: $5A
    db $EB                                        ; $673A: $EB
    inc d                                         ; $673B: $14
    sbc a                                         ; $673C: $9F
    ld h, b                                       ; $673D: $60
    sub a                                         ; $673E: $97
    ld l, b                                       ; $673F: $68
    ldh a, [rP1]                                  ; $6740: $F0 $00
    ld [$C8F0], sp                                ; $6742: $08 $F0 $C8
    jr nc, @+$4A                                  ; $6745: $30 $48

jr_018_6747:
    or b                                          ; $6747: $B0
    ret z                                         ; $6748: $C8

    jr nc, jr_018_6747                            ; $6749: $30 $FC

    nop                                           ; $674B: $00
    db $FC                                        ; $674C: $FC
    ld a, b                                       ; $674D: $78
    db $FC                                        ; $674E: $FC
    ld hl, sp-$02                                 ; $674F: $F8 $FE
    ld a, h                                       ; $6751: $7C
    cp $7C                                        ; $6752: $FE $7C
    cp $7C                                        ; $6754: $FE $7C
    cp $BC                                        ; $6756: $FE $BC
    cp $80                                        ; $6758: $FE $80
    cp $BC                                        ; $675A: $FE $BC
    cp $BC                                        ; $675C: $FE $BC
    cp $80                                        ; $675E: $FE $80
    rst RST_38                                    ; $6760: $FF
    ld b, b                                       ; $6761: $40
    rst RST_38                                    ; $6762: $FF
    cpl                                           ; $6763: $2F
    ld a, a                                       ; $6764: $7F
    cpl                                           ; $6765: $2F
    ld a, a                                       ; $6766: $7F
    nop                                           ; $6767: $00
    dec b                                         ; $6768: $05

jr_018_6769:
    ld [bc], a                                    ; $6769: $02
    inc bc                                        ; $676A: $03
    nop                                           ; $676B: $00
    inc bc                                        ; $676C: $03
    nop                                           ; $676D: $00
    inc bc                                        ; $676E: $03
    ld bc, $0103                                  ; $676F: $01 $03 $01
    dec b                                         ; $6772: $05
    ld [bc], a                                    ; $6773: $02
    inc b                                         ; $6774: $04
    inc bc                                        ; $6775: $03
    inc b                                         ; $6776: $04
    inc bc                                        ; $6777: $03
    inc b                                         ; $6778: $04
    inc bc                                        ; $6779: $03
    ld c, $01                                     ; $677A: $0E $01
    rra                                           ; $677C: $1F
    ld [$091F], sp                                ; $677D: $08 $1F $09
    rst RST_38                                    ; $6780: $FF
    nop                                           ; $6781: $00
    rst RST_38                                    ; $6782: $FF
    db $ED                                        ; $6783: $ED
    rst RST_38                                    ; $6784: $FF
    db $EC                                        ; $6785: $EC
    rst RST_38                                    ; $6786: $FF
    nop                                           ; $6787: $00
    jr nz, jr_018_6769                            ; $6788: $20 $DF

    ld hl, $FEDE                                  ; $678A: $21 $DE $FE
    nop                                           ; $678D: $00
    cp $FC                                        ; $678E: $FE $FC
    cp $C0                                        ; $6790: $FE $C0
    ldh [c], a                                    ; $6792: $E2
    call c, $1EE1                                 ; $6793: $DC $E1 $1E
    ld d, c                                       ; $6796: $51
    adc [hl]                                      ; $6797: $8E
    ld d, c                                       ; $6798: $51
    adc [hl]                                      ; $6799: $8E
    ld c, c                                       ; $679A: $49
    add [hl]                                      ; $679B: $86
    rst RST_28                                    ; $679C: $EF
    nop                                           ; $679D: $00
    rst RST_38                                    ; $679E: $FF

Jump_018_679F:
    rst RST_20                                    ; $679F: $E7
    rra                                           ; $67A0: $1F
    add hl, bc                                    ; $67A1: $09
    rra                                           ; $67A2: $1F
    add hl, bc                                    ; $67A3: $09
    rra                                           ; $67A4: $1F
    add hl, bc                                    ; $67A5: $09
    rra                                           ; $67A6: $1F
    ld bc, $050F                                  ; $67A7: $01 $0F $05
    rrca                                          ; $67AA: $0F
    dec b                                         ; $67AB: $05
    rrca                                          ; $67AC: $0F
    dec b                                         ; $67AD: $05
    rra                                           ; $67AE: $1F
    ld bc, $1629                                  ; $67AF: $01 $29 $16
    ld d, e                                       ; $67B2: $53
    inc l                                         ; $67B3: $2C
    ld a, h                                       ; $67B4: $7C
    nop                                           ; $67B5: $00
    nop                                           ; $67B6: $00
    nop                                           ; $67B7: $00
    nop                                           ; $67B8: $00
    nop                                           ; $67B9: $00
    nop                                           ; $67BA: $00
    nop                                           ; $67BB: $00
    nop                                           ; $67BC: $00
    nop                                           ; $67BD: $00
    nop                                           ; $67BE: $00
    nop                                           ; $67BF: $00
    rst RST_38                                    ; $67C0: $FF
    rst RST_20                                    ; $67C1: $E7
    rst RST_38                                    ; $67C2: $FF
    rst RST_20                                    ; $67C3: $E7
    rst RST_30                                    ; $67C4: $F7
    db $E3                                        ; $67C5: $E3
    rst RST_30                                    ; $67C6: $F7
    db $E3                                        ; $67C7: $E3
    rst RST_20                                    ; $67C8: $E7
    ret nz                                        ; $67C9: $C0

    rst RST_20                                    ; $67CA: $E7
    jp $C3E7                                      ; $67CB: $C3 $E7 $C3


    rst RST_20                                    ; $67CE: $E7
    jp Jump_000_00E7                              ; $67CF: $C3 $E7 $00


    ld [bc], a                                    ; $67D2: $02
    ld bc, $0102                                  ; $67D3: $01 $02 $01
    inc bc                                        ; $67D6: $03
    nop                                           ; $67D7: $00
    nop                                           ; $67D8: $00
    nop                                           ; $67D9: $00
    nop                                           ; $67DA: $00
    nop                                           ; $67DB: $00
    nop                                           ; $67DC: $00
    nop                                           ; $67DD: $00
    nop                                           ; $67DE: $00
    nop                                           ; $67DF: $00
    ldh a, [$FF60]                                ; $67E0: $F0 $60
    ldh a, [$FFA0]                                ; $67E2: $F0 $A0
    ld hl, sp-$50                                 ; $67E4: $F8 $B0
    ld hl, sp-$50                                 ; $67E6: $F8 $B0
    ld hl, sp+$30                                 ; $67E8: $F8 $30
    ld hl, sp-$10                                 ; $67EA: $F8 $F0
    ld hl, sp-$10                                 ; $67EC: $F8 $F0
    ld hl, sp-$10                                 ; $67EE: $F8 $F0
    ld hl, sp+$00                                 ; $67F0: $F8 $00
    ld c, b                                       ; $67F2: $48
    or b                                          ; $67F3: $B0
    ld c, b                                       ; $67F4: $48
    or b                                          ; $67F5: $B0
    ld hl, sp+$00                                 ; $67F6: $F8 $00
    nop                                           ; $67F8: $00
    nop                                           ; $67F9: $00
    nop                                           ; $67FA: $00
    nop                                           ; $67FB: $00
    nop                                           ; $67FC: $00
    nop                                           ; $67FD: $00
    nop                                           ; $67FE: $00
    nop                                           ; $67FF: $00
    cp $80                                        ; $6800: $FE $80
    cp $7C                                        ; $6802: $FE $7C
    db $FC                                        ; $6804: $FC
    nop                                           ; $6805: $00
    ld hl, sp+$00                                 ; $6806: $F8 $00
    add b                                         ; $6808: $80
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
    ldh a, [rP1]                                  ; $681C: $F0 $00
    ldh a, [$FF60]                                ; $681E: $F0 $60
    nop                                           ; $6820: $00
    nop                                           ; $6821: $00
    ld [hl], c                                    ; $6822: $71
    ld [hl], c                                    ; $6823: $71
    adc [hl]                                      ; $6824: $8E
    rst RST_38                                    ; $6825: $FF
    add b                                         ; $6826: $80
    rst RST_38                                    ; $6827: $FF
    add b                                         ; $6828: $80
    rst RST_38                                    ; $6829: $FF
    add b                                         ; $682A: $80
    rst RST_38                                    ; $682B: $FF
    ld [hl], b                                    ; $682C: $70
    ld a, a                                       ; $682D: $7F
    ld [$040F], sp                                ; $682E: $08 $0F $04
    rlca                                          ; $6831: $07
    inc b                                         ; $6832: $04
    rlca                                          ; $6833: $07
    inc b                                         ; $6834: $04
    rlca                                          ; $6835: $07
    inc b                                         ; $6836: $04
    rlca                                          ; $6837: $07
    inc b                                         ; $6838: $04
    rlca                                          ; $6839: $07
    rlca                                          ; $683A: $07
    rlca                                          ; $683B: $07
    nop                                           ; $683C: $00
    nop                                           ; $683D: $00
    nop                                           ; $683E: $00
    nop                                           ; $683F: $00
    add b                                         ; $6840: $80
    rst RST_38                                    ; $6841: $FF
    nop                                           ; $6842: $00
    rst RST_38                                    ; $6843: $FF
    nop                                           ; $6844: $00
    rst RST_38                                    ; $6845: $FF
    ld bc, $02FF                                  ; $6846: $01 $FF $02
    cp $02                                        ; $6849: $FE $02
    cp $01                                        ; $684B: $FE $01
    rst RST_38                                    ; $684D: $FF
    nop                                           ; $684E: $00
    rst RST_38                                    ; $684F: $FF
    nop                                           ; $6850: $00
    rst RST_38                                    ; $6851: $FF
    nop                                           ; $6852: $00
    rst RST_38                                    ; $6853: $FF
    nop                                           ; $6854: $00
    rst RST_38                                    ; $6855: $FF
    nop                                           ; $6856: $00
    rst RST_38                                    ; $6857: $FF
    nop                                           ; $6858: $00
    rst RST_38                                    ; $6859: $FF
    add b                                         ; $685A: $80
    rst RST_38                                    ; $685B: $FF
    ld b, b                                       ; $685C: $40
    ld a, a                                       ; $685D: $7F
    ld a, b                                       ; $685E: $78
    ld a, a                                       ; $685F: $7F
    add d                                         ; $6860: $82
    add e                                         ; $6861: $83
    add d                                         ; $6862: $82
    add e                                         ; $6863: $83
    add c                                         ; $6864: $81
    add c                                         ; $6865: $81
    ld bc, $3001                                  ; $6866: $01 $01 $30
    jr nc, jr_018_68B3                            ; $6869: $30 $48

    ld a, b                                       ; $686B: $78
    add h                                         ; $686C: $84
    db $FC                                        ; $686D: $FC
    inc bc                                        ; $686E: $03
    rst RST_38                                    ; $686F: $FF
    nop                                           ; $6870: $00
    rst RST_38                                    ; $6871: $FF
    nop                                           ; $6872: $00
    rst RST_38                                    ; $6873: $FF
    nop                                           ; $6874: $00
    rst RST_38                                    ; $6875: $FF
    nop                                           ; $6876: $00
    rst RST_38                                    ; $6877: $FF
    nop                                           ; $6878: $00
    rst RST_38                                    ; $6879: $FF
    nop                                           ; $687A: $00
    rst RST_38                                    ; $687B: $FF
    nop                                           ; $687C: $00
    rst RST_38                                    ; $687D: $FF
    nop                                           ; $687E: $00
    rst RST_38                                    ; $687F: $FF
    ld [$04F8], sp                                ; $6880: $08 $F8 $04
    db $FC                                        ; $6883: $FC
    inc b                                         ; $6884: $04
    db $FC                                        ; $6885: $FC
    inc b                                         ; $6886: $04
    db $FC                                        ; $6887: $FC
    add d                                         ; $6888: $82
    cp $82                                        ; $6889: $FE $82
    cp $82                                        ; $688B: $FE $82
    cp $02                                        ; $688D: $FE $02
    cp $02                                        ; $688F: $FE $02
    cp $02                                        ; $6891: $FE $02
    cp $02                                        ; $6893: $FE $02
    cp $02                                        ; $6895: $FE $02
    cp $02                                        ; $6897: $FE $02
    cp $02                                        ; $6899: $FE $02
    cp $04                                        ; $689B: $FE $04
    db $FC                                        ; $689D: $FC
    ld a, b                                       ; $689E: $78
    ld hl, sp+$08                                 ; $689F: $F8 $08
    rrca                                          ; $68A1: $0F
    inc b                                         ; $68A2: $04
    rlca                                          ; $68A3: $07
    inc b                                         ; $68A4: $04
    rlca                                          ; $68A5: $07
    inc b                                         ; $68A6: $04
    rlca                                          ; $68A7: $07
    inc b                                         ; $68A8: $04
    rlca                                          ; $68A9: $07
    ld [$080F], sp                                ; $68AA: $08 $0F $08
    rrca                                          ; $68AD: $0F
    ld [$080F], sp                                ; $68AE: $08 $0F $08
    rrca                                          ; $68B1: $0F
    db $10                                        ; $68B2: $10

jr_018_68B3:
    rra                                           ; $68B3: $1F
    jr nz, jr_018_68F5                            ; $68B4: $20 $3F

    jr nz, jr_018_68F7                            ; $68B6: $20 $3F

    jr nz, jr_018_68F9                            ; $68B8: $20 $3F

    jr nz, jr_018_68FB                            ; $68BA: $20 $3F

    jr nz, jr_018_68FD                            ; $68BC: $20 $3F

    jr nz, jr_018_68FF                            ; $68BE: $20 $3F

    ld bc, $02FF                                  ; $68C0: $01 $FF $02
    cp $04                                        ; $68C3: $FE $04
    db $FC                                        ; $68C5: $FC
    inc b                                         ; $68C6: $04
    db $FC                                        ; $68C7: $FC
    inc b                                         ; $68C8: $04
    db $FC                                        ; $68C9: $FC
    inc b                                         ; $68CA: $04
    db $FC                                        ; $68CB: $FC
    ld b, d                                       ; $68CC: $42

jr_018_68CD:
    cp $A2                                        ; $68CD: $FE $A2

jr_018_68CF:
    cp [hl]                                       ; $68CF: $BE
    and d                                         ; $68D0: $A2
    cp [hl]                                       ; $68D1: $BE
    sub d                                         ; $68D2: $92
    sbc [hl]                                      ; $68D3: $9E
    ld d, c                                       ; $68D4: $51
    rst RST_18                                    ; $68D5: $DF
    jr nc, @+$01                                  ; $68D6: $30 $FF

    jr nc, @+$01                                  ; $68D8: $30 $FF

    jr nc, @+$01                                  ; $68DA: $30 $FF

    jr z, jr_018_68CD                             ; $68DC: $28 $EF

    jr z, jr_018_68CF                             ; $68DE: $28 $EF

    db $10                                        ; $68E0: $10
    rra                                           ; $68E1: $1F
    db $10                                        ; $68E2: $10
    rra                                           ; $68E3: $1F
    db $10                                        ; $68E4: $10
    rra                                           ; $68E5: $1F
    jr nz, @+$41                                  ; $68E6: $20 $3F

    ld b, c                                       ; $68E8: $41
    ld a, a                                       ; $68E9: $7F
    add [hl]                                      ; $68EA: $86
    cp $F8                                        ; $68EB: $FE $F8
    ld hl, sp+$00                                 ; $68ED: $F8 $00
    nop                                           ; $68EF: $00
    nop                                           ; $68F0: $00
    nop                                           ; $68F1: $00
    nop                                           ; $68F2: $00
    nop                                           ; $68F3: $00
    nop                                           ; $68F4: $00

jr_018_68F5:
    nop                                           ; $68F5: $00
    nop                                           ; $68F6: $00

jr_018_68F7:
    nop                                           ; $68F7: $00
    nop                                           ; $68F8: $00

jr_018_68F9:
    nop                                           ; $68F9: $00
    nop                                           ; $68FA: $00

jr_018_68FB:
    nop                                           ; $68FB: $00
    nop                                           ; $68FC: $00

jr_018_68FD:
    nop                                           ; $68FD: $00
    nop                                           ; $68FE: $00

jr_018_68FF:
    nop                                           ; $68FF: $00
    ld c, b                                       ; $6900: $48
    rst RST_08                                    ; $6901: $CF
    ld c, b                                       ; $6902: $48
    rst RST_08                                    ; $6903: $CF

jr_018_6904:
    ld c, b                                       ; $6904: $48
    rst RST_08                                    ; $6905: $CF

jr_018_6906:
    ld c, b                                       ; $6906: $48
    rst RST_08                                    ; $6907: $CF

jr_018_6908:
    ret z                                         ; $6908: $C8

    rst RST_08                                    ; $6909: $CF
    inc b                                         ; $690A: $04
    rlca                                          ; $690B: $07
    inc b                                         ; $690C: $04
    rlca                                          ; $690D: $07
    rlca                                          ; $690E: $07
    rlca                                          ; $690F: $07
    nop                                           ; $6910: $00
    nop                                           ; $6911: $00
    nop                                           ; $6912: $00
    nop                                           ; $6913: $00
    nop                                           ; $6914: $00
    nop                                           ; $6915: $00
    nop                                           ; $6916: $00
    nop                                           ; $6917: $00
    nop                                           ; $6918: $00
    nop                                           ; $6919: $00
    nop                                           ; $691A: $00
    nop                                           ; $691B: $00
    nop                                           ; $691C: $00
    nop                                           ; $691D: $00
    nop                                           ; $691E: $00
    nop                                           ; $691F: $00
    ldh [$FFE0], a                                ; $6920: $E0 $E0
    jr nz, jr_018_6904                            ; $6922: $20 $E0

    jr nz, jr_018_6906                            ; $6924: $20 $E0

    jr nz, jr_018_6908                            ; $6926: $20 $E0

    db $10                                        ; $6928: $10
    ldh a, [rNR10]                                ; $6929: $F0 $10
    ldh a, [rNR10]                                ; $692B: $F0 $10
    ldh a, [rNR10]                                ; $692D: $F0 $10
    ldh a, [rNR10]                                ; $692F: $F0 $10
    ldh a, [rNR10]                                ; $6931: $F0 $10
    ldh a, [rNR10]                                ; $6933: $F0 $10
    ldh a, [rNR10]                                ; $6935: $F0 $10
    ldh a, [rNR10]                                ; $6937: $F0 $10
    ldh a, [$FFF0]                                ; $6939: $F0 $F0
    ldh a, [rP1]                                  ; $693B: $F0 $00
    nop                                           ; $693D: $00
    nop                                           ; $693E: $00
    nop                                           ; $693F: $00
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
    nop                                           ; $694E: $00
    nop                                           ; $694F: $00
    nop                                           ; $6950: $00
    nop                                           ; $6951: $00
    nop                                           ; $6952: $00
    nop                                           ; $6953: $00
    nop                                           ; $6954: $00
    nop                                           ; $6955: $00
    nop                                           ; $6956: $00
    nop                                           ; $6957: $00
    jr c, jr_018_6992                             ; $6958: $38 $38

    ld b, h                                       ; $695A: $44
    ld a, h                                       ; $695B: $7C
    add d                                         ; $695C: $82
    cp $81                                        ; $695D: $FE $81
    rst RST_38                                    ; $695F: $FF
    nop                                           ; $6960: $00
    nop                                           ; $6961: $00
    nop                                           ; $6962: $00
    nop                                           ; $6963: $00
    nop                                           ; $6964: $00
    nop                                           ; $6965: $00
    nop                                           ; $6966: $00
    nop                                           ; $6967: $00
    nop                                           ; $6968: $00
    nop                                           ; $6969: $00
    nop                                           ; $696A: $00
    nop                                           ; $696B: $00
    nop                                           ; $696C: $00
    nop                                           ; $696D: $00
    nop                                           ; $696E: $00
    nop                                           ; $696F: $00
    nop                                           ; $6970: $00
    nop                                           ; $6971: $00
    nop                                           ; $6972: $00
    nop                                           ; $6973: $00
    nop                                           ; $6974: $00
    nop                                           ; $6975: $00
    nop                                           ; $6976: $00
    nop                                           ; $6977: $00
    inc a                                         ; $6978: $3C
    inc a                                         ; $6979: $3C
    ld b, d                                       ; $697A: $42
    ld a, [hl]                                    ; $697B: $7E
    add d                                         ; $697C: $82
    cp $82                                        ; $697D: $FE $82
    cp $00                                        ; $697F: $FE $00
    nop                                           ; $6981: $00
    nop                                           ; $6982: $00
    nop                                           ; $6983: $00
    nop                                           ; $6984: $00
    nop                                           ; $6985: $00
    nop                                           ; $6986: $00
    nop                                           ; $6987: $00
    nop                                           ; $6988: $00
    nop                                           ; $6989: $00
    nop                                           ; $698A: $00
    nop                                           ; $698B: $00
    ld bc, $0200                                  ; $698C: $01 $00 $02
    ld bc, $0102                                  ; $698F: $01 $02 $01

jr_018_6992:
    rrca                                          ; $6992: $0F
    nop                                           ; $6993: $00
    rrca                                          ; $6994: $0F
    rlca                                          ; $6995: $07
    rrca                                          ; $6996: $0F
    rlca                                          ; $6997: $07
    rra                                           ; $6998: $1F
    ld c, $1F                                     ; $6999: $0E $1F
    ld c, $1F                                     ; $699B: $0E $1F
    ld c, $1F                                     ; $699D: $0E $1F
    dec c                                         ; $699F: $0D
    rrca                                          ; $69A0: $0F
    ld b, $0F                                     ; $69A1: $06 $0F
    ld b, $1F                                     ; $69A3: $06 $1F
    nop                                           ; $69A5: $00
    rra                                           ; $69A6: $1F
    dec c                                         ; $69A7: $0D
    rra                                           ; $69A8: $1F
    dec c                                         ; $69A9: $0D
    rra                                           ; $69AA: $1F
    dec c                                         ; $69AB: $0D
    rra                                           ; $69AC: $1F
    dec c                                         ; $69AD: $0D
    rra                                           ; $69AE: $1F
    ld c, $0F                                     ; $69AF: $0E $0F
    ld b, $0F                                     ; $69B1: $06 $0F
    inc b                                         ; $69B3: $04
    rrca                                          ; $69B4: $0F
    dec b                                         ; $69B5: $05
    rlca                                          ; $69B6: $07
    nop                                           ; $69B7: $00
    rlca                                          ; $69B8: $07
    nop                                           ; $69B9: $00
    rlca                                          ; $69BA: $07
    nop                                           ; $69BB: $00
    ld bc, $0000                                  ; $69BC: $01 $00 $00
    nop                                           ; $69BF: $00
    ld [bc], a                                    ; $69C0: $02
    nop                                           ; $69C1: $00
    dec b                                         ; $69C2: $05
    ld [bc], a                                    ; $69C3: $02
    add hl, bc                                    ; $69C4: $09
    ld b, $12                                     ; $69C5: $06 $12
    inc c                                         ; $69C7: $0C
    ld [hl-], a                                   ; $69C8: $32
    inc c                                         ; $69C9: $0C
    call nz, $0638                                ; $69CA: $C4 $38 $06
    ld hl, sp+$0D                                 ; $69CD: $F8 $0D
    ldh a, [c]                                    ; $69CF: $F2
    add hl, bc                                    ; $69D0: $09
    or $C1                                        ; $69D1: $F6 $C1
    ld a, $F2                                     ; $69D3: $3E $F2
    ld c, h                                       ; $69D5: $4C
    cp $70                                        ; $69D6: $FE $70
    db $FC                                        ; $69D8: $FC
    ld hl, sp-$04                                 ; $69D9: $F8 $FC
    ld hl, sp-$04                                 ; $69DB: $F8 $FC
    ld hl, sp-$08                                 ; $69DD: $F8 $F8
    ldh a, [$FFFC]                                ; $69DF: $F0 $FC
    ld hl, sp-$08                                 ; $69E1: $F8 $F8
    ldh a, [$FFF8]                                ; $69E3: $F0 $F8
    ld [hl], b                                    ; $69E5: $70
    ldh a, [$FF80]                                ; $69E6: $F0 $80
    ldh a, [$FFE0]                                ; $69E8: $F0 $E0
    rst RST_38                                    ; $69EA: $FF
    ldh [$FFF9], a                                ; $69EB: $E0 $F9
    and $F9                                       ; $69ED: $E6 $F9
    or $F9                                        ; $69EF: $F6 $F9
    or $F9                                        ; $69F1: $F6 $F9
    halt                                          ; $69F3: $76
    ld sp, hl                                     ; $69F4: $F9
    add [hl]                                      ; $69F5: $86
    db $FD                                        ; $69F6: $FD
    ldh [c], a                                    ; $69F7: $E2
    rst RST_38                                    ; $69F8: $FF
    inc a                                         ; $69F9: $3C
    rst RST_38                                    ; $69FA: $FF
    ccf                                           ; $69FB: $3F
    rst RST_38                                    ; $69FC: $FF
    rra                                           ; $69FD: $1F
    ld e, a                                       ; $69FE: $5F
    ld hl, $3E41                                  ; $69FF: $21 $41 $3E
    ld b, b                                       ; $6A02: $40
    ccf                                           ; $6A03: $3F
    ccf                                           ; $6A04: $3F
    nop                                           ; $6A05: $00
    ccf                                           ; $6A06: $3F
    rrca                                          ; $6A07: $0F
    ld c, a                                       ; $6A08: $4F
    scf                                           ; $6A09: $37
    adc a                                         ; $6A0A: $8F
    ld [hl], a                                    ; $6A0B: $77
    rst RST_30                                    ; $6A0C: $F7
    ld [$40BE], sp                                ; $6A0D: $08 $BE $40
    cp $0C                                        ; $6A10: $FE $0C
    cp $DC                                        ; $6A12: $FE $DC
    cp $DC                                        ; $6A14: $FE $DC
    cp $C0                                        ; $6A16: $FE $C0
    ldh [c], a                                    ; $6A18: $E2
    call c, $9CE2                                 ; $6A19: $DC $E2 $9C
    jp nz, Jump_018_7E3C                          ; $6A1C: $C2 $3C $7E

    nop                                           ; $6A1F: $00
    rlca                                          ; $6A20: $07
    nop                                           ; $6A21: $00
    ld a, [bc]                                    ; $6A22: $0A
    dec b                                         ; $6A23: $05
    rrca                                          ; $6A24: $0F
    nop                                           ; $6A25: $00
    rrca                                          ; $6A26: $0F
    rlca                                          ; $6A27: $07
    rrca                                          ; $6A28: $0F
    rlca                                          ; $6A29: $07
    rrca                                          ; $6A2A: $0F
    rlca                                          ; $6A2B: $07
    rrca                                          ; $6A2C: $0F
    rlca                                          ; $6A2D: $07
    rrca                                          ; $6A2E: $0F
    rlca                                          ; $6A2F: $07
    rrca                                          ; $6A30: $0F
    nop                                           ; $6A31: $00
    nop                                           ; $6A32: $00
    nop                                           ; $6A33: $00
    nop                                           ; $6A34: $00
    nop                                           ; $6A35: $00
    nop                                           ; $6A36: $00
    nop                                           ; $6A37: $00
    nop                                           ; $6A38: $00
    nop                                           ; $6A39: $00
    nop                                           ; $6A3A: $00
    nop                                           ; $6A3B: $00
    nop                                           ; $6A3C: $00
    nop                                           ; $6A3D: $00
    nop                                           ; $6A3E: $00
    nop                                           ; $6A3F: $00
    ld a, a                                       ; $6A40: $7F
    nop                                           ; $6A41: $00
    add b                                         ; $6A42: $80
    ld a, a                                       ; $6A43: $7F
    adc b                                         ; $6A44: $88
    ld [hl], a                                    ; $6A45: $77
    adc b                                         ; $6A46: $88
    ld [hl], a                                    ; $6A47: $77
    cp a                                          ; $6A48: $BF

jr_018_6A49:
    ld b, b                                       ; $6A49: $40
    add h                                         ; $6A4A: $84
    ld a, e                                       ; $6A4B: $7B
    sbc [hl]                                      ; $6A4C: $9E
    ld h, c                                       ; $6A4D: $61
    and c                                         ; $6A4E: $A1
    ld e, [hl]                                    ; $6A4F: $5E
    and b                                         ; $6A50: $A0
    ld e, a                                       ; $6A51: $5F
    sbc [hl]                                      ; $6A52: $9E
    ld h, c                                       ; $6A53: $61
    add b                                         ; $6A54: $80
    ld a, a                                       ; $6A55: $7F
    ld h, c                                       ; $6A56: $61
    ld e, $11                                     ; $6A57: $1E $11
    ld c, $09                                     ; $6A59: $0E $09
    ld b, $05                                     ; $6A5B: $06 $05
    ld [bc], a                                    ; $6A5D: $02
    inc bc                                        ; $6A5E: $03
    nop                                           ; $6A5F: $00
    rst RST_38                                    ; $6A60: $FF
    nop                                           ; $6A61: $00
    nop                                           ; $6A62: $00
    rst RST_38                                    ; $6A63: $FF
    nop                                           ; $6A64: $00
    rst RST_38                                    ; $6A65: $FF
    ld b, d                                       ; $6A66: $42
    cp l                                          ; $6A67: $BD
    ld b, c                                       ; $6A68: $41
    cp [hl]                                       ; $6A69: $BE
    ld b, c                                       ; $6A6A: $41
    cp [hl]                                       ; $6A6B: $BE
    ld b, b                                       ; $6A6C: $40
    cp a                                          ; $6A6D: $BF
    ld b, b                                       ; $6A6E: $40
    cp a                                          ; $6A6F: $BF
    jr z, jr_018_6A49                             ; $6A70: $28 $D7

    db $10                                        ; $6A72: $10
    rst RST_28                                    ; $6A73: $EF
    nop                                           ; $6A74: $00
    rst RST_38                                    ; $6A75: $FF
    rst RST_38                                    ; $6A76: $FF
    nop                                           ; $6A77: $00

Call_018_6A78:
    nop                                           ; $6A78: $00
    nop                                           ; $6A79: $00
    nop                                           ; $6A7A: $00
    nop                                           ; $6A7B: $00
    nop                                           ; $6A7C: $00
    nop                                           ; $6A7D: $00
    nop                                           ; $6A7E: $00
    nop                                           ; $6A7F: $00
    rst RST_38                                    ; $6A80: $FF
    nop                                           ; $6A81: $00
    nop                                           ; $6A82: $00
    rst RST_38                                    ; $6A83: $FF
    ld [$3FF7], sp                                ; $6A84: $08 $F7 $3F
    ret nz                                        ; $6A87: $C0

    inc b                                         ; $6A88: $04
    ei                                            ; $6A89: $FB
    ccf                                           ; $6A8A: $3F
    ret nz                                        ; $6A8B: $C0

    add d                                         ; $6A8C: $82
    ld a, l                                       ; $6A8D: $7D
    sbc a                                         ; $6A8E: $9F
    ld h, b                                       ; $6A8F: $60
    jr nz, @-$1F                                  ; $6A90: $20 $DF

    ld e, $E1                                     ; $6A92: $1E $E1
    nop                                           ; $6A94: $00
    rst RST_38                                    ; $6A95: $FF
    rst RST_38                                    ; $6A96: $FF
    nop                                           ; $6A97: $00
    nop                                           ; $6A98: $00
    nop                                           ; $6A99: $00
    nop                                           ; $6A9A: $00

jr_018_6A9B:
    nop                                           ; $6A9B: $00
    nop                                           ; $6A9C: $00
    nop                                           ; $6A9D: $00
    nop                                           ; $6A9E: $00
    nop                                           ; $6A9F: $00
    rst RST_38                                    ; $6AA0: $FF
    nop                                           ; $6AA1: $00
    nop                                           ; $6AA2: $00
    rst RST_38                                    ; $6AA3: $FF
    nop                                           ; $6AA4: $00

jr_018_6AA5:
    rst RST_38                                    ; $6AA5: $FF
    ld [$08F7], sp                                ; $6AA6: $08 $F7 $08
    rst RST_30                                    ; $6AA9: $F7
    ld c, $F1                                     ; $6AAA: $0E $F1
    ld [$38F7], sp                                ; $6AAC: $08 $F7 $38
    rst RST_00                                    ; $6AAF: $C7
    ld c, h                                       ; $6AB0: $4C
    or e                                          ; $6AB1: $B3
    ld [hl-], a                                   ; $6AB2: $32
    call $FF00                                    ; $6AB3: $CD $00 $FF
    rst RST_38                                    ; $6AB6: $FF
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
    nop                                           ; $6AC1: $00
    nop                                           ; $6AC2: $00
    rst RST_38                                    ; $6AC3: $FF
    jr nz, jr_018_6AA5                            ; $6AC4: $20 $DF

    inc e                                         ; $6AC6: $1C
    db $E3                                        ; $6AC7: $E3
    nop                                           ; $6AC8: $00
    rst RST_38                                    ; $6AC9: $FF
    ld a, h                                       ; $6ACA: $7C
    add e                                         ; $6ACB: $83
    ld [bc], a                                    ; $6ACC: $02
    db $FD                                        ; $6ACD: $FD
    ld [bc], a                                    ; $6ACE: $02
    db $FD                                        ; $6ACF: $FD
    inc b                                         ; $6AD0: $04
    ei                                            ; $6AD1: $FB
    jr c, jr_018_6A9B                             ; $6AD2: $38 $C7

    nop                                           ; $6AD4: $00
    rst RST_38                                    ; $6AD5: $FF
    rst RST_38                                    ; $6AD6: $FF
    nop                                           ; $6AD7: $00
    nop                                           ; $6AD8: $00
    nop                                           ; $6AD9: $00
    nop                                           ; $6ADA: $00
    nop                                           ; $6ADB: $00
    nop                                           ; $6ADC: $00
    nop                                           ; $6ADD: $00
    nop                                           ; $6ADE: $00
    nop                                           ; $6ADF: $00
    cp $00                                        ; $6AE0: $FE $00
    ld bc, $01FE                                  ; $6AE2: $01 $FE $01
    cp $CD                                        ; $6AE5: $FE $CD
    ld [hl-], a                                   ; $6AE7: $32
    call $CD32                                    ; $6AE8: $CD $32 $CD
    ld [hl-], a                                   ; $6AEB: $32
    call $0132                                    ; $6AEC: $CD $32 $01
    cp $CD                                        ; $6AEF: $FE $CD

jr_018_6AF1:
    ld [hl-], a                                   ; $6AF1: $32
    call $0132                                    ; $6AF2: $CD $32 $01
    cp $FE                                        ; $6AF5: $FE $FE
    nop                                           ; $6AF7: $00
    nop                                           ; $6AF8: $00
    nop                                           ; $6AF9: $00
    nop                                           ; $6AFA: $00
    nop                                           ; $6AFB: $00
    nop                                           ; $6AFC: $00
    nop                                           ; $6AFD: $00
    nop                                           ; $6AFE: $00
    nop                                           ; $6AFF: $00
    inc bc                                        ; $6B00: $03
    nop                                           ; $6B01: $00
    inc b                                         ; $6B02: $04
    inc bc                                        ; $6B03: $03
    ld [$0807], sp                                ; $6B04: $08 $07 $08
    rlca                                          ; $6B07: $07
    ccf                                           ; $6B08: $3F
    nop                                           ; $6B09: $00
    ccf                                           ; $6B0A: $3F
    dec e                                         ; $6B0B: $1D
    ccf                                           ; $6B0C: $3F
    dec e                                         ; $6B0D: $1D
    ld a, a                                       ; $6B0E: $7F
    dec sp                                        ; $6B0F: $3B
    ld a, a                                       ; $6B10: $7F
    dec sp                                        ; $6B11: $3B
    ld a, a                                       ; $6B12: $7F
    dec sp                                        ; $6B13: $3B
    ld a, a                                       ; $6B14: $7F
    scf                                           ; $6B15: $37
    ld a, a                                       ; $6B16: $7F
    scf                                           ; $6B17: $37
    ld a, a                                       ; $6B18: $7F
    scf                                           ; $6B19: $37
    rst RST_38                                    ; $6B1A: $FF
    inc bc                                        ; $6B1B: $03
    rst RST_38                                    ; $6B1C: $FF
    ld l, h                                       ; $6B1D: $6C
    rst RST_38                                    ; $6B1E: $FF
    ld l, a                                       ; $6B1F: $6F
    ld [$1400], sp                                ; $6B20: $08 $00 $14
    ld [$1824], sp                                ; $6B23: $08 $24 $18
    ld c, b                                       ; $6B26: $48
    jr nc, jr_018_6AF1                            ; $6B27: $30 $C8

    jr nc, @+$12                                  ; $6B29: $30 $10

    ldh [rNR23], a                                ; $6B2B: $E0 $18
    ldh [$FF34], a                                ; $6B2D: $E0 $34

jr_018_6B2F:
    ret z                                         ; $6B2F: $C8

    inc h                                         ; $6B30: $24
    ret c                                         ; $6B31: $D8

    inc b                                         ; $6B32: $04
    ld hl, sp-$38                                 ; $6B33: $F8 $C8
    jr nc, jr_018_6B2F                            ; $6B35: $30 $F8

    ret nz                                        ; $6B37: $C0

    ldh a, [$FFE0]                                ; $6B38: $F0 $E0
    ldh a, [$FFE0]                                ; $6B3A: $F0 $E0
    ldh a, [$FFE0]                                ; $6B3C: $F0 $E0
    ldh [$FFC0], a                                ; $6B3E: $E0 $C0
    rst RST_38                                    ; $6B40: $FF
    ld l, a                                       ; $6B41: $6F
    rst RST_38                                    ; $6B42: $FF
    ld l, a                                       ; $6B43: $6F
    rst RST_38                                    ; $6B44: $FF
    ld [hl], a                                    ; $6B45: $77
    ld a, a                                       ; $6B46: $7F
    scf                                           ; $6B47: $37
    ld a, a                                       ; $6B48: $7F
    inc hl                                        ; $6B49: $23
    ld a, a                                       ; $6B4A: $7F
    inc l                                         ; $6B4B: $2C
    ccf                                           ; $6B4C: $3F
    rlca                                          ; $6B4D: $07
    ccf                                           ; $6B4E: $3F
    ld bc, HeaderManufacturerCode                 ; $6B4F: $01 $3F $01
    rrca                                          ; $6B52: $0F
    nop                                           ; $6B53: $00
    ld [bc], a                                    ; $6B54: $02
    ld bc, $0102                                  ; $6B55: $01 $02 $01
    ld [bc], a                                    ; $6B58: $02
    ld bc, $0001                                  ; $6B59: $01 $01 $00
    ld bc, $0200                                  ; $6B5C: $01 $00 $02
    ld bc, $C0E0                                  ; $6B5F: $01 $E0 $C0
    ret nz                                        ; $6B62: $C0

    add b                                         ; $6B63: $80
    ret nz                                        ; $6B64: $C0

    add b                                         ; $6B65: $80
    add b                                         ; $6B66: $80
    nop                                           ; $6B67: $00
    add b                                         ; $6B68: $80
    nop                                           ; $6B69: $00
    db $FC                                        ; $6B6A: $FC
    nop                                           ; $6B6B: $00
    swap h                                        ; $6B6C: $CB $34
    ret                                           ; $6B6E: $C9


    or [hl]                                       ; $6B6F: $B6
    ret z                                         ; $6B70: $C8

    or a                                          ; $6B71: $B7
    ret z                                         ; $6B72: $C8

    or a                                          ; $6B73: $B7
    ret z                                         ; $6B74: $C8

    scf                                           ; $6B75: $37
    rst RST_28                                    ; $6B76: $EF
    ld d, $FF                                     ; $6B77: $16 $FF
    pop hl                                        ; $6B79: $E1
    rst RST_38                                    ; $6B7A: $FF
    db $FD                                        ; $6B7B: $FD
    rst RST_38                                    ; $6B7C: $FF
    ei                                            ; $6B7D: $FB
    rst RST_38                                    ; $6B7E: $FF
    dec bc                                        ; $6B7F: $0B
    inc b                                         ; $6B80: $04
    inc bc                                        ; $6B81: $03
    ccf                                           ; $6B82: $3F
    nop                                           ; $6B83: $00
    ld d, l                                       ; $6B84: $55
    ld a, [hl+]                                   ; $6B85: $2A
    ld a, a                                       ; $6B86: $7F
    nop                                           ; $6B87: $00
    ld a, a                                       ; $6B88: $7F
    ld a, $7F                                     ; $6B89: $3E $7F
    ld a, $7F                                     ; $6B8B: $3E $7F
    ld a, $7F                                     ; $6B8D: $3E $7F
    ld a, $7F                                     ; $6B8F: $3E $7F
    inc a                                         ; $6B91: $3C
    ld a, [hl]                                    ; $6B92: $7E
    ld bc, $0003                                  ; $6B93: $01 $03 $00
    nop                                           ; $6B96: $00
    nop                                           ; $6B97: $00
    nop                                           ; $6B98: $00
    nop                                           ; $6B99: $00
    nop                                           ; $6B9A: $00
    nop                                           ; $6B9B: $00
    nop                                           ; $6B9C: $00
    nop                                           ; $6B9D: $00
    nop                                           ; $6B9E: $00
    nop                                           ; $6B9F: $00
    rrca                                          ; $6BA0: $0F
    ldh a, [$FF03]                                ; $6BA1: $F0 $03
    db $FC                                        ; $6BA3: $FC
    rst RST_38                                    ; $6BA4: $FF
    nop                                           ; $6BA5: $00
    rst RST_38                                    ; $6BA6: $FF
    ld a, l                                       ; $6BA7: $7D
    ld a, a                                       ; $6BA8: $7F
    cp l                                          ; $6BA9: $BD
    ld a, a                                       ; $6BAA: $7F
    cp c                                          ; $6BAB: $B9
    cp a                                          ; $6BAC: $BF
    ld b, c                                       ; $6BAD: $41

jr_018_6BAE:
    di                                            ; $6BAE: $F3
    ld bc, $61F3                                  ; $6BAF: $01 $F3 $61

jr_018_6BB2:
    pop af                                        ; $6BB2: $F1
    ldh [$FFF0], a                                ; $6BB3: $E0 $F0
    ldh [$FFF0], a                                ; $6BB5: $E0 $F0
    nop                                           ; $6BB7: $00

jr_018_6BB8:
    db $10                                        ; $6BB8: $10
    ldh [rNR10], a                                ; $6BB9: $E0 $10
    ldh [rNR10], a                                ; $6BBB: $E0 $10
    ldh [$FFF0], a                                ; $6BBD: $E0 $F0
    nop                                           ; $6BBF: $00
    add b                                         ; $6BC0: $80
    nop                                           ; $6BC1: $00
    ld [hl], b                                    ; $6BC2: $70
    add b                                         ; $6BC3: $80
    ld a, h                                       ; $6BC4: $7C
    or b                                          ; $6BC5: $B0
    cp $78                                        ; $6BC6: $FE $78
    rst RST_38                                    ; $6BC8: $FF
    or $FF                                        ; $6BC9: $F6 $FF
    rst RST_28                                    ; $6BCB: $EF
    rst RST_38                                    ; $6BCC: $FF
    rst RST_28                                    ; $6BCD: $EF
    rst RST_38                                    ; $6BCE: $FF
    sbc $FF                                       ; $6BCF: $DE $FF
    cp [hl]                                       ; $6BD1: $BE
    rst RST_38                                    ; $6BD2: $FF
    inc a                                         ; $6BD3: $3C
    cp $1D                                        ; $6BD4: $FE $1D
    rst RST_38                                    ; $6BD6: $FF
    nop                                           ; $6BD7: $00
    rst RST_38                                    ; $6BD8: $FF
    cp [hl]                                       ; $6BD9: $BE
    rst RST_38                                    ; $6BDA: $FF
    cp [hl]                                       ; $6BDB: $BE
    rst RST_38                                    ; $6BDC: $FF
    cp [hl]                                       ; $6BDD: $BE
    rst RST_38                                    ; $6BDE: $FF
    cp [hl]                                       ; $6BDF: $BE
    ret nz                                        ; $6BE0: $C0

    nop                                           ; $6BE1: $00
    ldh a, [rLCDC]                                ; $6BE2: $F0 $40
    ld c, b                                       ; $6BE4: $48
    ldh a, [$FFC8]                                ; $6BE5: $F0 $C8
    ldh a, [$FFF8]                                ; $6BE7: $F0 $F8
    jr nc, jr_018_6C5B                            ; $6BE9: $30 $70

    add b                                         ; $6BEB: $80
    jr nz, jr_018_6BAE                            ; $6BEC: $20 $C0

    jr nz, @-$3E                                  ; $6BEE: $20 $C0

    jr nz, jr_018_6BB2                            ; $6BF0: $20 $C0

    jr nz, @-$3E                                  ; $6BF2: $20 $C0

    jr nz, @-$3E                                  ; $6BF4: $20 $C0

    jr nz, jr_018_6BB8                            ; $6BF6: $20 $C0

    ret nz                                        ; $6BF8: $C0

    nop                                           ; $6BF9: $00
    add b                                         ; $6BFA: $80
    nop                                           ; $6BFB: $00
    add b                                         ; $6BFC: $80
    nop                                           ; $6BFD: $00
    add b                                         ; $6BFE: $80
    nop                                           ; $6BFF: $00
    rst RST_38                                    ; $6C00: $FF
    cp [hl]                                       ; $6C01: $BE
    rst RST_38                                    ; $6C02: $FF
    cp h                                          ; $6C03: $BC
    rst RST_38                                    ; $6C04: $FF
    nop                                           ; $6C05: $00
    ld a, a                                       ; $6C06: $7F
    inc a                                         ; $6C07: $3C
    ld a, a                                       ; $6C08: $7F
    inc a                                         ; $6C09: $3C
    ld a, a                                       ; $6C0A: $7F
    inc a                                         ; $6C0B: $3C
    ld a, [hl]                                    ; $6C0C: $7E
    ld bc, $001F                                  ; $6C0D: $01 $1F $00
    nop                                           ; $6C10: $00
    nop                                           ; $6C11: $00
    nop                                           ; $6C12: $00
    nop                                           ; $6C13: $00
    nop                                           ; $6C14: $00
    nop                                           ; $6C15: $00
    nop                                           ; $6C16: $00
    nop                                           ; $6C17: $00
    nop                                           ; $6C18: $00
    nop                                           ; $6C19: $00
    nop                                           ; $6C1A: $00
    nop                                           ; $6C1B: $00
    nop                                           ; $6C1C: $00
    nop                                           ; $6C1D: $00
    nop                                           ; $6C1E: $00
    nop                                           ; $6C1F: $00
    add b                                         ; $6C20: $80
    nop                                           ; $6C21: $00
    ld b, b                                       ; $6C22: $40
    add b                                         ; $6C23: $80
    ret nz                                        ; $6C24: $C0

    nop                                           ; $6C25: $00
    nop                                           ; $6C26: $00
    nop                                           ; $6C27: $00
    nop                                           ; $6C28: $00
    nop                                           ; $6C29: $00
    nop                                           ; $6C2A: $00
    nop                                           ; $6C2B: $00
    nop                                           ; $6C2C: $00
    nop                                           ; $6C2D: $00
    nop                                           ; $6C2E: $00
    nop                                           ; $6C2F: $00
    nop                                           ; $6C30: $00
    nop                                           ; $6C31: $00
    nop                                           ; $6C32: $00
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
    add b                                         ; $6C40: $80
    nop                                           ; $6C41: $00
    pop hl                                        ; $6C42: $E1
    nop                                           ; $6C43: $00
    sbc $21                                       ; $6C44: $DE $21
    db $D3                                        ; $6C46: $D3
    inc a                                         ; $6C47: $3C
    ldh a, [$FF7F]                                ; $6C48: $F0 $7F
    db $FC                                        ; $6C4A: $FC
    rra                                           ; $6C4B: $1F
    rra                                           ; $6C4C: $1F
    ld [bc], a                                    ; $6C4D: $02
    rra                                           ; $6C4E: $1F
    inc c                                         ; $6C4F: $0C
    rra                                           ; $6C50: $1F
    ld c, $0F                                     ; $6C51: $0E $0F
    rlca                                          ; $6C53: $07
    rrca                                          ; $6C54: $0F
    rlca                                          ; $6C55: $07
    rlca                                          ; $6C56: $07
    nop                                           ; $6C57: $00
    rlca                                          ; $6C58: $07
    inc bc                                        ; $6C59: $03
    rrca                                          ; $6C5A: $0F

jr_018_6C5B:
    ld b, $0F                                     ; $6C5B: $06 $0F
    ld b, $0F                                     ; $6C5D: $06 $0F
    nop                                           ; $6C5F: $00
    ret nz                                        ; $6C60: $C0

    nop                                           ; $6C61: $00
    ld h, b                                       ; $6C62: $60
    ret nz                                        ; $6C63: $C0

    rst RST_28                                    ; $6C64: $EF
    ld b, b                                       ; $6C65: $40
    ldh a, [c]                                    ; $6C66: $F2
    ld c, l                                       ; $6C67: $4D
    xor $51                                       ; $6C68: $EE $51
    ld h, d                                       ; $6C6A: $62
    db $DD                                        ; $6C6B: $DD
    ldh a, [c]                                    ; $6C6C: $F2
    dec a                                         ; $6C6D: $3D
    cp $CD                                        ; $6C6E: $FE $CD
    rst RST_38                                    ; $6C70: $FF
    ld [hl], c                                    ; $6C71: $71
    ei                                            ; $6C72: $FB
    ld [hl], h                                    ; $6C73: $74
    rst RST_38                                    ; $6C74: $FF
    nop                                           ; $6C75: $00
    rst RST_38                                    ; $6C76: $FF
    ld a, a                                       ; $6C77: $7F
    rst RST_38                                    ; $6C78: $FF
    cp $FF                                        ; $6C79: $FE $FF
    cp $FF                                        ; $6C7B: $FE $FF
    nop                                           ; $6C7D: $00
    ld a, [hl-]                                   ; $6C7E: $3A
    dec b                                         ; $6C7F: $05
    ld a, h                                       ; $6C80: $7C
    nop                                           ; $6C81: $00
    rst RST_38                                    ; $6C82: $FF
    jr c, jr_018_6D04                             ; $6C83: $38 $7F

    cp d                                          ; $6C85: $BA
    ld a, a                                       ; $6C86: $7F
    cp e                                          ; $6C87: $BB
    ld a, a                                       ; $6C88: $7F
    cp e                                          ; $6C89: $BB
    ld a, a                                       ; $6C8A: $7F

jr_018_6C8B:
    cp e                                          ; $6C8B: $BB
    rst RST_38                                    ; $6C8C: $FF
    cp e                                          ; $6C8D: $BB
    rst RST_38                                    ; $6C8E: $FF
    inc bc                                        ; $6C8F: $03
    rst RST_38                                    ; $6C90: $FF
    dec sp                                        ; $6C91: $3B
    rst RST_38                                    ; $6C92: $FF
    dec e                                         ; $6C93: $1D
    rst RST_38                                    ; $6C94: $FF
    xor $FF                                       ; $6C95: $EE $FF
    sub $FF                                       ; $6C97: $D6 $FF
    ld bc, $BD43                                  ; $6C99: $01 $43 $BD
    ld b, l                                       ; $6C9C: $45
    cp b                                          ; $6C9D: $B8
    ld c, b                                       ; $6C9E: $48
    or b                                          ; $6C9F: $B0
    nop                                           ; $6CA0: $00
    nop                                           ; $6CA1: $00
    add b                                         ; $6CA2: $80
    nop                                           ; $6CA3: $00
    ldh a, [rP1]                                  ; $6CA4: $F0 $00
    ret nc                                        ; $6CA6: $D0

    and b                                         ; $6CA7: $A0
    ldh a, [$FFC0]                                ; $6CA8: $F0 $C0
    ldh a, [$FFC0]                                ; $6CAA: $F0 $C0
    ld hl, sp-$30                                 ; $6CAC: $F8 $D0
    db $FC                                        ; $6CAE: $FC
    cp b                                          ; $6CAF: $B8
    cp $BC                                        ; $6CB0: $FE $BC
    cp $BC                                        ; $6CB2: $FE $BC
    cp $7C                                        ; $6CB4: $FE $7C
    db $FC                                        ; $6CB6: $FC
    cp b                                          ; $6CB7: $B8
    db $FC                                        ; $6CB8: $FC
    ret c                                         ; $6CB9: $D8

    ld hl, sp-$20                                 ; $6CBA: $F8 $E0
    ldh a, [$FF60]                                ; $6CBC: $F0 $60
    ld h, b                                       ; $6CBE: $60
    nop                                           ; $6CBF: $00
    ld a, [bc]                                    ; $6CC0: $0A
    dec b                                         ; $6CC1: $05
    ld b, $01                                     ; $6CC2: $06 $01
    rlca                                          ; $6CC4: $07
    nop                                           ; $6CC5: $00
    rrca                                          ; $6CC6: $0F
    rlca                                          ; $6CC7: $07
    rrca                                          ; $6CC8: $0F
    inc bc                                        ; $6CC9: $03
    inc de                                        ; $6CCA: $13
    dec c                                         ; $6CCB: $0D
    inc de                                        ; $6CCC: $13
    inc c                                         ; $6CCD: $0C
    ld de, $110E                                  ; $6CCE: $11 $0E $11
    ld c, $7F                                     ; $6CD1: $0E $7F
    nop                                           ; $6CD3: $00
    ld a, a                                       ; $6CD4: $7F
    cpl                                           ; $6CD5: $2F
    ld a, a                                       ; $6CD6: $7F
    cpl                                           ; $6CD7: $2F
    ld a, a                                       ; $6CD8: $7F
    cpl                                           ; $6CD9: $2F
    ld a, a                                       ; $6CDA: $7F
    cpl                                           ; $6CDB: $2F
    ld a, a                                       ; $6CDC: $7F
    cpl                                           ; $6CDD: $2F
    ccf                                           ; $6CDE: $3F
    rra                                           ; $6CDF: $1F
    ld hl, sp+$00                                 ; $6CE0: $F8 $00
    ld hl, sp-$10                                 ; $6CE2: $F8 $F0
    ld hl, sp-$40                                 ; $6CE4: $F8 $C0
    call nz, $C4B8                                ; $6CE6: $C4 $B8 $C4
    jr c, jr_018_6D2D                             ; $6CE9: $38 $42

    inc a                                         ; $6CEB: $3C
    ld [hl+], a                                   ; $6CEC: $22
    inc e                                         ; $6CED: $1C
    ld [hl+], a                                   ; $6CEE: $22
    inc e                                         ; $6CEF: $1C
    cp a                                          ; $6CF0: $BF
    nop                                           ; $6CF1: $00
    rst RST_38                                    ; $6CF2: $FF
    dec l                                         ; $6CF3: $2D
    rst RST_38                                    ; $6CF4: $FF
    dec l                                         ; $6CF5: $2D
    rst RST_38                                    ; $6CF6: $FF
    ld l, $BF                                     ; $6CF7: $2E $BF
    ld d, $BF                                     ; $6CF9: $16 $BF
    ld d, $BF                                     ; $6CFB: $16 $BF
    db $10                                        ; $6CFD: $10
    sbc a                                         ; $6CFE: $9F

Jump_018_6CFF:
    rrca                                          ; $6CFF: $0F
    ccf                                           ; $6D00: $3F
    rra                                           ; $6D01: $1F
    ccf                                           ; $6D02: $3F
    rra                                           ; $6D03: $1F

jr_018_6D04:
    ccf                                           ; $6D04: $3F
    rrca                                          ; $6D05: $0F
    ld c, a                                       ; $6D06: $4F
    jr nc, jr_018_6C8B                            ; $6D07: $30 $82

    ld a, h                                       ; $6D09: $7C
    db $FC                                        ; $6D0A: $FC
    nop                                           ; $6D0B: $00
    nop                                           ; $6D0C: $00
    nop                                           ; $6D0D: $00
    nop                                           ; $6D0E: $00
    nop                                           ; $6D0F: $00
    nop                                           ; $6D10: $00
    nop                                           ; $6D11: $00
    nop                                           ; $6D12: $00
    nop                                           ; $6D13: $00
    nop                                           ; $6D14: $00
    nop                                           ; $6D15: $00

jr_018_6D16:
    nop                                           ; $6D16: $00
    nop                                           ; $6D17: $00
    nop                                           ; $6D18: $00
    nop                                           ; $6D19: $00
    nop                                           ; $6D1A: $00
    nop                                           ; $6D1B: $00
    nop                                           ; $6D1C: $00
    nop                                           ; $6D1D: $00
    nop                                           ; $6D1E: $00
    nop                                           ; $6D1F: $00
    sbc a                                         ; $6D20: $9F
    rrca                                          ; $6D21: $0F
    rra                                           ; $6D22: $1F
    inc c                                         ; $6D23: $0C
    dec c                                         ; $6D24: $0D
    ld [bc], a                                    ; $6D25: $02
    add hl, bc                                    ; $6D26: $09
    ld b, $0F                                     ; $6D27: $06 $0F
    nop                                           ; $6D29: $00
    nop                                           ; $6D2A: $00
    nop                                           ; $6D2B: $00
    nop                                           ; $6D2C: $00

jr_018_6D2D:
    nop                                           ; $6D2D: $00
    nop                                           ; $6D2E: $00
    nop                                           ; $6D2F: $00
    nop                                           ; $6D30: $00
    nop                                           ; $6D31: $00
    nop                                           ; $6D32: $00
    nop                                           ; $6D33: $00
    nop                                           ; $6D34: $00
    nop                                           ; $6D35: $00
    nop                                           ; $6D36: $00
    nop                                           ; $6D37: $00
    nop                                           ; $6D38: $00
    nop                                           ; $6D39: $00
    nop                                           ; $6D3A: $00
    nop                                           ; $6D3B: $00
    nop                                           ; $6D3C: $00
    nop                                           ; $6D3D: $00
    nop                                           ; $6D3E: $00
    nop                                           ; $6D3F: $00
    add b                                         ; $6D40: $80
    nop                                           ; $6D41: $00
    add b                                         ; $6D42: $80
    nop                                           ; $6D43: $00
    add b                                         ; $6D44: $80
    nop                                           ; $6D45: $00
    ret nz                                        ; $6D46: $C0

    add b                                         ; $6D47: $80
    ret nz                                        ; $6D48: $C0

    add b                                         ; $6D49: $80
    ret nz                                        ; $6D4A: $C0

    add b                                         ; $6D4B: $80
    ldh [$FFC0], a                                ; $6D4C: $E0 $C0
    ldh [$FFC0], a                                ; $6D4E: $E0 $C0
    ldh [$FFC0], a                                ; $6D50: $E0 $C0
    ret nz                                        ; $6D52: $C0

    nop                                           ; $6D53: $00
    jr nz, jr_018_6D16                            ; $6D54: $20 $C0

    and b                                         ; $6D56: $A0
    ld b, b                                       ; $6D57: $40
    ldh [rP1], a                                  ; $6D58: $E0 $00
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
    nop                                           ; $6D6A: $00
    nop                                           ; $6D6B: $00
    nop                                           ; $6D6C: $00
    nop                                           ; $6D6D: $00
    nop                                           ; $6D6E: $00
    nop                                           ; $6D6F: $00
    nop                                           ; $6D70: $00
    nop                                           ; $6D71: $00
    nop                                           ; $6D72: $00
    nop                                           ; $6D73: $00
    nop                                           ; $6D74: $00
    nop                                           ; $6D75: $00
    inc bc                                        ; $6D76: $03
    nop                                           ; $6D77: $00
    rlca                                          ; $6D78: $07
    nop                                           ; $6D79: $00
    rlca                                          ; $6D7A: $07
    nop                                           ; $6D7B: $00
    rlca                                          ; $6D7C: $07
    nop                                           ; $6D7D: $00
    inc bc                                        ; $6D7E: $03
    nop                                           ; $6D7F: $00
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
    ld a, a                                       ; $6D8A: $7F
    nop                                           ; $6D8B: $00
    ld a, [$FA07]                                 ; $6D8C: $FA $07 $FA
    rlca                                          ; $6D8F: $07
    rst RST_38                                    ; $6D90: $FF
    rlca                                          ; $6D91: $07
    ld a, a                                       ; $6D92: $7F
    nop                                           ; $6D93: $00
    nop                                           ; $6D94: $00
    nop                                           ; $6D95: $00
    nop                                           ; $6D96: $00
    nop                                           ; $6D97: $00
    nop                                           ; $6D98: $00
    nop                                           ; $6D99: $00
    ld bc, $0100                                  ; $6D9A: $01 $00 $01
    nop                                           ; $6D9D: $00
    ld bc, $3C00                                  ; $6D9E: $01 $00 $3C
    nop                                           ; $6DA1: $00
    ld a, [hl-]                                   ; $6DA2: $3A
    inc e                                         ; $6DA3: $1C
    db $FD                                        ; $6DA4: $FD
    ld b, $0D                                     ; $6DA5: $06 $0D
    or $0D                                        ; $6DA7: $F6 $0D
    or $FD                                        ; $6DA9: $F6 $FD
    or $FF                                        ; $6DAB: $F6 $FF
    nop                                           ; $6DAD: $00
    ld c, $05                                     ; $6DAE: $0E $05
    ld a, a                                       ; $6DB0: $7F
    nop                                           ; $6DB1: $00
    rst RST_38                                    ; $6DB2: $FF
    ld l, a                                       ; $6DB3: $6F
    rst RST_38                                    ; $6DB4: $FF
    rst RST_18                                    ; $6DB5: $DF
    rst RST_38                                    ; $6DB6: $FF
    ret nz                                        ; $6DB7: $C0

    rst RST_38                                    ; $6DB8: $FF
    rra                                           ; $6DB9: $1F
    rst RST_38                                    ; $6DBA: $FF
    rrca                                          ; $6DBB: $0F
    sbc a                                         ; $6DBC: $9F
    ld l, a                                       ; $6DBD: $6F
    ld a, a                                       ; $6DBE: $7F
    nop                                           ; $6DBF: $00
    ld a, a                                       ; $6DC0: $7F
    nop                                           ; $6DC1: $00
    ld c, b                                       ; $6DC2: $48
    scf                                           ; $6DC3: $37
    ld c, b                                       ; $6DC4: $48
    scf                                           ; $6DC5: $37
    rst RST_38                                    ; $6DC6: $FF
    nop                                           ; $6DC7: $00
    add hl, bc                                    ; $6DC8: $09
    or $17                                        ; $6DC9: $F6 $17
    add sp, -$11                                  ; $6DCB: $E8 $EF
    rst RST_10                                    ; $6DCD: $D7
    rst RST_18                                    ; $6DCE: $DF
    cpl                                           ; $6DCF: $2F
    ld e, a                                       ; $6DD0: $5F
    xor a                                         ; $6DD1: $AF
    rst RST_38                                    ; $6DD2: $FF
    nop                                           ; $6DD3: $00
    rst RST_38                                    ; $6DD4: $FF
    rst RST_30                                    ; $6DD5: $F7
    rst RST_38                                    ; $6DD6: $FF
    rst RST_28                                    ; $6DD7: $EF
    rst RST_38                                    ; $6DD8: $FF
    rrca                                          ; $6DD9: $0F
    rst RST_38                                    ; $6DDA: $FF
    ldh [$FFF0], a                                ; $6DDB: $E0 $F0
    rst RST_28                                    ; $6DDD: $EF
    rst RST_38                                    ; $6DDE: $FF
    ldh [$FFF0], a                                ; $6DDF: $E0 $F0
    nop                                           ; $6DE1: $00
    ld [$0FF0], sp                                ; $6DE2: $08 $F0 $0F
    ldh a, [rP1]                                  ; $6DE5: $F0 $00
    rst RST_38                                    ; $6DE7: $FF
    rra                                           ; $6DE8: $1F
    ldh [rIE], a                                  ; $6DE9: $E0 $FF
    nop                                           ; $6DEB: $00
    rst RST_38                                    ; $6DEC: $FF
    sbc $FF                                       ; $6DED: $DE $FF
    cp [hl]                                       ; $6DEF: $BE
    rst RST_38                                    ; $6DF0: $FF
    cp [hl]                                       ; $6DF1: $BE
    rst RST_38                                    ; $6DF2: $FF
    inc b                                         ; $6DF3: $04
    rst RST_38                                    ; $6DF4: $FF
    cp c                                          ; $6DF5: $B9
    rst RST_38                                    ; $6DF6: $FF
    ld a, c                                       ; $6DF7: $79
    rst RST_38                                    ; $6DF8: $FF
    ld a, a                                       ; $6DF9: $7F
    rst RST_38                                    ; $6DFA: $FF
    ld a, a                                       ; $6DFB: $7F
    rst RST_38                                    ; $6DFC: $FF
    nop                                           ; $6DFD: $00
    call z, $8033                                 ; $6DFE: $CC $33 $80
    nop                                           ; $6E01: $00
    ld b, b                                       ; $6E02: $40
    add b                                         ; $6E03: $80
    ldh a, [rP1]                                  ; $6E04: $F0 $00
    ld hl, sp-$10                                 ; $6E06: $F8 $F0
    ld hl, sp-$10                                 ; $6E08: $F8 $F0
    ld hl, sp-$10                                 ; $6E0A: $F8 $F0
    ld hl, sp-$10                                 ; $6E0C: $F8 $F0
    ldh a, [rP1]                                  ; $6E0E: $F0 $00
    ret nz                                        ; $6E10: $C0

    add b                                         ; $6E11: $80
    ret nz                                        ; $6E12: $C0

    add b                                         ; $6E13: $80
    ret nz                                        ; $6E14: $C0

    add b                                         ; $6E15: $80
    ret nz                                        ; $6E16: $C0

    add b                                         ; $6E17: $80
    ret nz                                        ; $6E18: $C0

    nop                                           ; $6E19: $00
    ret nz                                        ; $6E1A: $C0

    nop                                           ; $6E1B: $00
    ret nz                                        ; $6E1C: $C0

    nop                                           ; $6E1D: $00
    ret nz                                        ; $6E1E: $C0

    nop                                           ; $6E1F: $00
    ld hl, sp+$07                                 ; $6E20: $F8 $07
    rrca                                          ; $6E22: $0F
    nop                                           ; $6E23: $00
    rlca                                          ; $6E24: $07
    nop                                           ; $6E25: $00
    rlca                                          ; $6E26: $07
    inc bc                                        ; $6E27: $03
    rlca                                          ; $6E28: $07
    ld bc, $0609                                  ; $6E29: $01 $09 $06
    add hl, bc                                    ; $6E2C: $09
    ld b, $08                                     ; $6E2D: $06 $08
    rlca                                          ; $6E2F: $07
    ld [$0C07], sp                                ; $6E30: $08 $07 $0C
    inc bc                                        ; $6E33: $03
    rrca                                          ; $6E34: $0F
    inc b                                         ; $6E35: $04
    rrca                                          ; $6E36: $0F
    rlca                                          ; $6E37: $07
    rrca                                          ; $6E38: $0F
    nop                                           ; $6E39: $00
    nop                                           ; $6E3A: $00
    nop                                           ; $6E3B: $00
    nop                                           ; $6E3C: $00
    nop                                           ; $6E3D: $00
    nop                                           ; $6E3E: $00
    nop                                           ; $6E3F: $00
    ld a, a                                       ; $6E40: $7F
    add b                                         ; $6E41: $80
    rst RST_38                                    ; $6E42: $FF
    nop                                           ; $6E43: $00
    db $FC                                        ; $6E44: $FC
    nop                                           ; $6E45: $00
    db $FC                                        ; $6E46: $FC
    ld hl, sp-$04                                 ; $6E47: $F8 $FC
    ldh [$FFE2], a                                ; $6E49: $E0 $E2
    call c, $1CE3                                 ; $6E4B: $DC $E3 $1C
    pop hl                                        ; $6E4E: $E1
    ld e, $F1                                     ; $6E4F: $1E $F1
    ld l, $F1                                     ; $6E51: $2E $F1
    ld l, $FF                                     ; $6E53: $2E $FF
    and b                                         ; $6E55: $A0
    rst RST_38                                    ; $6E56: $FF
    xor a                                         ; $6E57: $AF
    rst RST_38                                    ; $6E58: $FF
    rrca                                          ; $6E59: $0F
    rra                                           ; $6E5A: $1F
    nop                                           ; $6E5B: $00
    nop                                           ; $6E5C: $00
    nop                                           ; $6E5D: $00
    nop                                           ; $6E5E: $00
    nop                                           ; $6E5F: $00
    cp $00                                        ; $6E60: $FE $00
    db $ED                                        ; $6E62: $ED
    sub d                                         ; $6E63: $92
    db $DB                                        ; $6E64: $DB
    and h                                         ; $6E65: $A4
    rst RST_38                                    ; $6E66: $FF
    add b                                         ; $6E67: $80
    rst RST_38                                    ; $6E68: $FF
    cp [hl]                                       ; $6E69: $BE
    rst RST_38                                    ; $6E6A: $FF
    cp [hl]                                       ; $6E6B: $BE
    rst RST_38                                    ; $6E6C: $FF
    cp [hl]                                       ; $6E6D: $BE
    rst RST_38                                    ; $6E6E: $FF
    nop                                           ; $6E6F: $00
    nop                                           ; $6E70: $00
    nop                                           ; $6E71: $00
    nop                                           ; $6E72: $00
    nop                                           ; $6E73: $00
    nop                                           ; $6E74: $00
    nop                                           ; $6E75: $00
    nop                                           ; $6E76: $00
    nop                                           ; $6E77: $00
    nop                                           ; $6E78: $00
    nop                                           ; $6E79: $00
    nop                                           ; $6E7A: $00
    nop                                           ; $6E7B: $00
    nop                                           ; $6E7C: $00
    nop                                           ; $6E7D: $00
    nop                                           ; $6E7E: $00
    nop                                           ; $6E7F: $00
    nop                                           ; $6E80: $00
    nop                                           ; $6E81: $00
    nop                                           ; $6E82: $00
    nop                                           ; $6E83: $00
    nop                                           ; $6E84: $00
    nop                                           ; $6E85: $00
    nop                                           ; $6E86: $00
    nop                                           ; $6E87: $00
    nop                                           ; $6E88: $00
    nop                                           ; $6E89: $00
    ld a, a                                       ; $6E8A: $7F
    nop                                           ; $6E8B: $00
    ld a, [$FA07]                                 ; $6E8C: $FA $07 $FA
    rlca                                          ; $6E8F: $07
    rst RST_38                                    ; $6E90: $FF
    rlca                                          ; $6E91: $07
    ld a, a                                       ; $6E92: $7F
    nop                                           ; $6E93: $00
    nop                                           ; $6E94: $00
    nop                                           ; $6E95: $00
    nop                                           ; $6E96: $00
    nop                                           ; $6E97: $00
    nop                                           ; $6E98: $00
    nop                                           ; $6E99: $00
    ld bc, $0100                                  ; $6E9A: $01 $00 $01
    nop                                           ; $6E9D: $00
    ld bc, $3A00                                  ; $6E9E: $01 $00 $3A
    inc e                                         ; $6EA1: $1C
    db $FD                                        ; $6EA2: $FD
    ld b, $0D                                     ; $6EA3: $06 $0D
    or $0D                                        ; $6EA5: $F6 $0D
    or $FD                                        ; $6EA7: $F6 $FD
    or $FF                                        ; $6EA9: $F6 $FF
    nop                                           ; $6EAB: $00
    ld c, $05                                     ; $6EAC: $0E $05
    ld a, a                                       ; $6EAE: $7F
    nop                                           ; $6EAF: $00
    rst RST_38                                    ; $6EB0: $FF
    ld l, a                                       ; $6EB1: $6F
    rst RST_38                                    ; $6EB2: $FF
    rst RST_18                                    ; $6EB3: $DF
    rst RST_38                                    ; $6EB4: $FF
    ret nz                                        ; $6EB5: $C0

    rst RST_38                                    ; $6EB6: $FF
    rra                                           ; $6EB7: $1F
    sbc a                                         ; $6EB8: $9F
    ld l, a                                       ; $6EB9: $6F
    rst RST_38                                    ; $6EBA: $FF
    rrca                                          ; $6EBB: $0F
    ld c, a                                       ; $6EBC: $4F
    scf                                           ; $6EBD: $37
    ld a, a                                       ; $6EBE: $7F
    nop                                           ; $6EBF: $00
    rst RST_38                                    ; $6EC0: $FF
    nop                                           ; $6EC1: $00
    add hl, bc                                    ; $6EC2: $09
    or $17                                        ; $6EC3: $F6 $17
    add sp, -$11                                  ; $6EC5: $E8 $EF
    rst RST_10                                    ; $6EC7: $D7
    rst RST_18                                    ; $6EC8: $DF
    cpl                                           ; $6EC9: $2F
    ld e, a                                       ; $6ECA: $5F
    xor a                                         ; $6ECB: $AF
    rst RST_38                                    ; $6ECC: $FF
    nop                                           ; $6ECD: $00
    rst RST_38                                    ; $6ECE: $FF
    rst RST_30                                    ; $6ECF: $F7
    rst RST_38                                    ; $6ED0: $FF
    rst RST_28                                    ; $6ED1: $EF
    rst RST_38                                    ; $6ED2: $FF
    rrca                                          ; $6ED3: $0F
    rst RST_38                                    ; $6ED4: $FF
    ldh [rIE], a                                  ; $6ED5: $E0 $FF
    ldh [$FFF0], a                                ; $6ED7: $E0 $F0
    rst RST_28                                    ; $6ED9: $EF
    rst RST_38                                    ; $6EDA: $FF
    ldh a, [$FFF8]                                ; $6EDB: $F0 $F8
    rlca                                          ; $6EDD: $07
    rlca                                          ; $6EDE: $07
    nop                                           ; $6EDF: $00
    ldh a, [rP1]                                  ; $6EE0: $F0 $00
    ld [$0FF0], sp                                ; $6EE2: $08 $F0 $0F
    ldh a, [rP1]                                  ; $6EE5: $F0 $00
    rst RST_38                                    ; $6EE7: $FF
    rra                                           ; $6EE8: $1F
    ldh [rIE], a                                  ; $6EE9: $E0 $FF
    nop                                           ; $6EEB: $00
    rst RST_38                                    ; $6EEC: $FF
    sbc $FF                                       ; $6EED: $DE $FF
    cp [hl]                                       ; $6EEF: $BE
    rst RST_38                                    ; $6EF0: $FF
    cp [hl]                                       ; $6EF1: $BE
    rst RST_38                                    ; $6EF2: $FF
    inc b                                         ; $6EF3: $04
    rst RST_38                                    ; $6EF4: $FF
    cp c                                          ; $6EF5: $B9
    rst RST_38                                    ; $6EF6: $FF
    ld a, c                                       ; $6EF7: $79
    rst RST_38                                    ; $6EF8: $FF
    ld a, a                                       ; $6EF9: $7F
    rst RST_38                                    ; $6EFA: $FF
    ld a, a                                       ; $6EFB: $7F
    rst RST_38                                    ; $6EFC: $FF
    nop                                           ; $6EFD: $00
    push de                                       ; $6EFE: $D5
    ld a, [hl+]                                   ; $6EFF: $2A
    add b                                         ; $6F00: $80
    nop                                           ; $6F01: $00
    ld b, b                                       ; $6F02: $40
    add b                                         ; $6F03: $80
    ldh a, [rP1]                                  ; $6F04: $F0 $00
    ld hl, sp-$10                                 ; $6F06: $F8 $F0
    ld hl, sp-$10                                 ; $6F08: $F8 $F0
    ld hl, sp-$10                                 ; $6F0A: $F8 $F0
    ld hl, sp-$10                                 ; $6F0C: $F8 $F0
    ldh a, [rP1]                                  ; $6F0E: $F0 $00
    rst RST_18                                    ; $6F10: $DF
    add b                                         ; $6F11: $80
    rst RST_38                                    ; $6F12: $FF
    adc l                                         ; $6F13: $8D
    rst RST_38                                    ; $6F14: $FF
    sbc d                                         ; $6F15: $9A
    rst RST_18                                    ; $6F16: $DF
    and h                                         ; $6F17: $A4
    call z, Call_018_4E33                         ; $6F18: $CC $33 $4E
    or l                                          ; $6F1B: $B5
    rst RST_18                                    ; $6F1C: $DF
    inc l                                         ; $6F1D: $2C
    ld e, l                                       ; $6F1E: $5D
    xor d                                         ; $6F1F: $AA
    ld hl, sp+$00                                 ; $6F20: $F8 $00
    call z, $EEB0                                 ; $6F22: $CC $B0 $EE
    db $10                                        ; $6F25: $10
    ccf                                           ; $6F26: $3F
    add $BF                                       ; $6F27: $C6 $BF
    ld c, [hl]                                    ; $6F29: $4E
    rst RST_38                                    ; $6F2A: $FF
    ld e, $FE                                     ; $6F2B: $1E $FE
    inc a                                         ; $6F2D: $3C
    db $FC                                        ; $6F2E: $FC
    ld a, b                                       ; $6F2F: $78
    ld hl, sp-$10                                 ; $6F30: $F8 $F0
    ldh a, [$FF60]                                ; $6F32: $F0 $60
    ld h, b                                       ; $6F34: $60
    add b                                         ; $6F35: $80
    ld b, b                                       ; $6F36: $40
    add b                                         ; $6F37: $80
    add b                                         ; $6F38: $80
    nop                                           ; $6F39: $00
    nop                                           ; $6F3A: $00
    nop                                           ; $6F3B: $00
    nop                                           ; $6F3C: $00
    nop                                           ; $6F3D: $00
    nop                                           ; $6F3E: $00
    nop                                           ; $6F3F: $00
    nop                                           ; $6F40: $00
    nop                                           ; $6F41: $00
    nop                                           ; $6F42: $00
    nop                                           ; $6F43: $00
    nop                                           ; $6F44: $00
    nop                                           ; $6F45: $00
    nop                                           ; $6F46: $00
    nop                                           ; $6F47: $00
    nop                                           ; $6F48: $00
    nop                                           ; $6F49: $00
    nop                                           ; $6F4A: $00
    nop                                           ; $6F4B: $00
    nop                                           ; $6F4C: $00
    nop                                           ; $6F4D: $00
    nop                                           ; $6F4E: $00
    nop                                           ; $6F4F: $00
    nop                                           ; $6F50: $00
    nop                                           ; $6F51: $00
    nop                                           ; $6F52: $00
    nop                                           ; $6F53: $00
    nop                                           ; $6F54: $00
    nop                                           ; $6F55: $00
    nop                                           ; $6F56: $00
    nop                                           ; $6F57: $00
    nop                                           ; $6F58: $00
    nop                                           ; $6F59: $00
    nop                                           ; $6F5A: $00
    nop                                           ; $6F5B: $00
    nop                                           ; $6F5C: $00
    nop                                           ; $6F5D: $00
    inc a                                         ; $6F5E: $3C
    nop                                           ; $6F5F: $00
    nop                                           ; $6F60: $00
    nop                                           ; $6F61: $00
    nop                                           ; $6F62: $00
    nop                                           ; $6F63: $00
    nop                                           ; $6F64: $00
    nop                                           ; $6F65: $00
    nop                                           ; $6F66: $00
    nop                                           ; $6F67: $00
    nop                                           ; $6F68: $00
    nop                                           ; $6F69: $00
    nop                                           ; $6F6A: $00
    nop                                           ; $6F6B: $00
    nop                                           ; $6F6C: $00
    nop                                           ; $6F6D: $00
    nop                                           ; $6F6E: $00
    nop                                           ; $6F6F: $00
    nop                                           ; $6F70: $00
    nop                                           ; $6F71: $00
    nop                                           ; $6F72: $00
    nop                                           ; $6F73: $00
    nop                                           ; $6F74: $00
    nop                                           ; $6F75: $00
    nop                                           ; $6F76: $00
    nop                                           ; $6F77: $00
    nop                                           ; $6F78: $00
    nop                                           ; $6F79: $00
    ld a, a                                       ; $6F7A: $7F
    nop                                           ; $6F7B: $00
    ld c, b                                       ; $6F7C: $48
    scf                                           ; $6F7D: $37
    ld c, b                                       ; $6F7E: $48
    scf                                           ; $6F7F: $37
    call z, Call_018_7333                         ; $6F80: $CC $33 $73
    adc h                                         ; $6F83: $8C
    rst RST_38                                    ; $6F84: $FF
    nop                                           ; $6F85: $00
    inc bc                                        ; $6F86: $03
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
    nop                                           ; $6F94: $00
    nop                                           ; $6F95: $00
    nop                                           ; $6F96: $00
    nop                                           ; $6F97: $00
    nop                                           ; $6F98: $00
    nop                                           ; $6F99: $00
    nop                                           ; $6F9A: $00
    nop                                           ; $6F9B: $00
    nop                                           ; $6F9C: $00
    nop                                           ; $6F9D: $00
    nop                                           ; $6F9E: $00
    nop                                           ; $6F9F: $00
    db $FC                                        ; $6FA0: $FC
    dec de                                        ; $6FA1: $1B
    db $FC                                        ; $6FA2: $FC
    dec sp                                        ; $6FA3: $3B

jr_018_6FA4:
    cp h                                          ; $6FA4: $BC
    ld b, e                                       ; $6FA5: $43
    ld a, e                                       ; $6FA6: $7B
    nop                                           ; $6FA7: $00
    nop                                           ; $6FA8: $00
    nop                                           ; $6FA9: $00
    nop                                           ; $6FAA: $00
    nop                                           ; $6FAB: $00
    nop                                           ; $6FAC: $00
    nop                                           ; $6FAD: $00
    nop                                           ; $6FAE: $00
    nop                                           ; $6FAF: $00
    nop                                           ; $6FB0: $00
    nop                                           ; $6FB1: $00
    nop                                           ; $6FB2: $00
    nop                                           ; $6FB3: $00
    nop                                           ; $6FB4: $00
    nop                                           ; $6FB5: $00
    nop                                           ; $6FB6: $00
    nop                                           ; $6FB7: $00
    nop                                           ; $6FB8: $00
    nop                                           ; $6FB9: $00
    nop                                           ; $6FBA: $00
    nop                                           ; $6FBB: $00
    nop                                           ; $6FBC: $00
    nop                                           ; $6FBD: $00
    nop                                           ; $6FBE: $00
    nop                                           ; $6FBF: $00
    nop                                           ; $6FC0: $00
    nop                                           ; $6FC1: $00
    nop                                           ; $6FC2: $00
    nop                                           ; $6FC3: $00
    ld bc, $0200                                  ; $6FC4: $01 $00 $02
    ld bc, $0304                                  ; $6FC7: $01 $04 $03
    inc b                                         ; $6FCA: $04
    inc bc                                        ; $6FCB: $03
    dec b                                         ; $6FCC: $05
    ld [bc], a                                    ; $6FCD: $02
    rlca                                          ; $6FCE: $07
    ld bc, $0007                                  ; $6FCF: $01 $07 $00
    rlca                                          ; $6FD2: $07
    ld bc, $0103                                  ; $6FD3: $01 $03 $01
    inc bc                                        ; $6FD6: $03
    ld bc, $0103                                  ; $6FD7: $01 $03 $01
    inc bc                                        ; $6FDA: $03
    ld bc, $0001                                  ; $6FDB: $01 $01 $00
    ld bc, $C000                                  ; $6FDE: $01 $00 $C0
    nop                                           ; $6FE1: $00
    jr nz, jr_018_6FA4                            ; $6FE2: $20 $C0

    ld [hl], b                                    ; $6FE4: $70
    add b                                         ; $6FE5: $80
    ld [$E8F0], sp                                ; $6FE6: $08 $F0 $E8
    db $10                                        ; $6FE9: $10
    ld hl, sp-$20                                 ; $6FEA: $F8 $E0
    ld hl, sp-$10                                 ; $6FEC: $F8 $F0
    rst RST_38                                    ; $6FEE: $FF
    nop                                           ; $6FEF: $00
    rst RST_38                                    ; $6FF0: $FF
    ld h, e                                       ; $6FF1: $63
    rst RST_38                                    ; $6FF2: $FF
    ld l, e                                       ; $6FF3: $6B
    rst RST_38                                    ; $6FF4: $FF
    ld l, e                                       ; $6FF5: $6B
    rst RST_38                                    ; $6FF6: $FF
    ld l, e                                       ; $6FF7: $6B
    rst RST_38                                    ; $6FF8: $FF
    ld l, e                                       ; $6FF9: $6B
    rst RST_38                                    ; $6FFA: $FF
    ld l, e                                       ; $6FFB: $6B
    rst RST_38                                    ; $6FFC: $FF
    ld l, e                                       ; $6FFD: $6B
    ld a, a                                       ; $6FFE: $7F
    ld [$00FF], sp                                ; $6FFF: $08 $FF $00
    ld a, [$FC65]                                 ; $7002: $FA $65 $FC
    ld h, e                                       ; $7005: $63
    db $FC                                        ; $7006: $FC
    ld l, e                                       ; $7007: $6B
    db $FC                                        ; $7008: $FC
    xor e                                         ; $7009: $AB
    db $FC                                        ; $700A: $FC
    and e                                         ; $700B: $A3
    ei                                            ; $700C: $FB
    and h                                         ; $700D: $A4
    ld hl, sp-$59                                 ; $700E: $F8 $A7
    rst RST_38                                    ; $7010: $FF
    xor b                                         ; $7011: $A8
    rst RST_38                                    ; $7012: $FF
    xor a                                         ; $7013: $AF
    rst RST_38                                    ; $7014: $FF
    add b                                         ; $7015: $80
    rst RST_38                                    ; $7016: $FF
    ld l, a                                       ; $7017: $6F
    rst RST_38                                    ; $7018: $FF
    rrca                                          ; $7019: $0F
    rst RST_38                                    ; $701A: $FF
    nop                                           ; $701B: $00
    ld [hl], h                                    ; $701C: $74
    dec bc                                        ; $701D: $0B
    rrca                                          ; $701E: $0F
    nop                                           ; $701F: $00
    rlca                                          ; $7020: $07
    nop                                           ; $7021: $00
    ld b, $03                                     ; $7022: $06 $03
    ld b, $03                                     ; $7024: $06 $03
    ld b, $03                                     ; $7026: $06 $03
    ld b, $03                                     ; $7028: $06 $03
    rlca                                          ; $702A: $07
    ld [bc], a                                    ; $702B: $02
    ld c, $01                                     ; $702C: $0E $01
    dec bc                                        ; $702E: $0B
    inc b                                         ; $702F: $04
    inc c                                         ; $7030: $0C
    inc bc                                        ; $7031: $03

jr_018_7032:
    rlca                                          ; $7032: $07
    nop                                           ; $7033: $00
    inc b                                         ; $7034: $04
    inc bc                                        ; $7035: $03
    rst RST_38                                    ; $7036: $FF
    nop                                           ; $7037: $00
    inc l                                         ; $7038: $2C
    db $D3                                        ; $7039: $D3
    rra                                           ; $703A: $1F
    ldh [rNR34], a                                ; $703B: $E0 $1E
    db $EB                                        ; $703D: $EB
    ld e, $EB                                     ; $703E: $1E $EB
    add b                                         ; $7040: $80
    nop                                           ; $7041: $00
    add b                                         ; $7042: $80
    nop                                           ; $7043: $00
    add b                                         ; $7044: $80
    nop                                           ; $7045: $00
    add b                                         ; $7046: $80
    nop                                           ; $7047: $00
    add b                                         ; $7048: $80
    nop                                           ; $7049: $00
    add b                                         ; $704A: $80
    nop                                           ; $704B: $00
    ld b, b                                       ; $704C: $40
    add b                                         ; $704D: $80
    and b                                         ; $704E: $A0
    ld b, b                                       ; $704F: $40
    jr jr_018_7032                                ; $7050: $18 $E0

    sbc h                                         ; $7052: $9C
    ld h, b                                       ; $7053: $60
    ld e, $E4                                     ; $7054: $1E $E4
    sbc a                                         ; $7056: $9F
    ld h, [hl]                                    ; $7057: $66
    rra                                           ; $7058: $1F
    and $FF                                       ; $7059: $E6 $FF
    ld d, $FF                                     ; $705B: $16 $FF
    halt                                          ; $705D: $76
    rst RST_38                                    ; $705E: $FF
    ld [bc], a                                    ; $705F: $02
    rra                                           ; $7060: $1F
    rlca                                          ; $7061: $07
    rra                                           ; $7062: $1F
    ld c, $1F                                     ; $7063: $0E $1F
    nop                                           ; $7065: $00
    nop                                           ; $7066: $00
    nop                                           ; $7067: $00
    ld [bc], a                                    ; $7068: $02
    nop                                           ; $7069: $00
    inc bc                                        ; $706A: $03
    nop                                           ; $706B: $00
    inc bc                                        ; $706C: $03
    ld bc, $0103                                  ; $706D: $01 $03 $01
    inc bc                                        ; $7070: $03
    ld bc, $0103                                  ; $7071: $01 $03 $01
    inc bc                                        ; $7074: $03
    nop                                           ; $7075: $00
    inc bc                                        ; $7076: $03
    nop                                           ; $7077: $00
    inc bc                                        ; $7078: $03
    nop                                           ; $7079: $00
    inc bc                                        ; $707A: $03
    nop                                           ; $707B: $00
    jp $F200                                      ; $707C: $C3 $00 $F2


    pop bc                                        ; $707F: $C1
    rrca                                          ; $7080: $0F
    rlca                                          ; $7081: $07
    rla                                           ; $7082: $17
    dec bc                                        ; $7083: $0B
    sub e                                         ; $7084: $93
    dec c                                         ; $7085: $0D
    pop hl                                        ; $7086: $E1
    sbc [hl]                                      ; $7087: $9E
    ld h, d                                       ; $7088: $62
    call c, $BC42                                 ; $7089: $DC $42 $BC
    db $FC                                        ; $708C: $FC
    nop                                           ; $708D: $00
    ld b, d                                       ; $708E: $42
    cp h                                          ; $708F: $BC
    jp nz, Jump_018_433C                          ; $7090: $C2 $3C $43

    cp h                                          ; $7093: $BC
    add l                                         ; $7094: $85
    ld a, e                                       ; $7095: $7B
    add h                                         ; $7096: $84
    ld a, e                                       ; $7097: $7B
    add h                                         ; $7098: $84
    ld a, e                                       ; $7099: $7B
    inc b                                         ; $709A: $04
    ei                                            ; $709B: $FB
    ld [$08F7], sp                                ; $709C: $08 $F7 $08
    rst RST_30                                    ; $709F: $F7
    rra                                           ; $70A0: $1F
    ldh [$FFEC], a                                ; $70A1: $E0 $EC
    inc de                                        ; $70A3: $13
    inc c                                         ; $70A4: $0C
    di                                            ; $70A5: $F3
    db $FC                                        ; $70A6: $FC
    inc bc                                        ; $70A7: $03
    db $FC                                        ; $70A8: $FC
    ei                                            ; $70A9: $FB
    db $FC                                        ; $70AA: $FC
    inc bc                                        ; $70AB: $03
    db $FC                                        ; $70AC: $FC
    ei                                            ; $70AD: $FB
    db $FC                                        ; $70AE: $FC
    ei                                            ; $70AF: $FB
    db $FC                                        ; $70B0: $FC
    inc bc                                        ; $70B1: $03
    rla                                           ; $70B2: $17
    add sp, -$05                                  ; $70B3: $E8 $FB
    nop                                           ; $70B5: $00
    ld sp, hl                                     ; $70B6: $F9
    ldh a, [$FFF7]                                ; $70B7: $F0 $F7
    jp hl                                         ; $70B9: $E9


    rst RST_20                                    ; $70BA: $E7
    reti                                          ; $70BB: $D9


    add $3B                                       ; $70BC: $C6 $3B
    ld [hl+], a                                   ; $70BE: $22
    dec e                                         ; $70BF: $1D
    rst RST_38                                    ; $70C0: $FF
    ld [hl], h                                    ; $70C1: $74
    ld a, a                                       ; $70C2: $7F
    or b                                          ; $70C3: $B0
    ld a, b                                       ; $70C4: $78
    add b                                         ; $70C5: $80
    ld a, b                                       ; $70C6: $78
    or b                                          ; $70C7: $B0
    ld a, b                                       ; $70C8: $78
    sub b                                         ; $70C9: $90
    ld a, b                                       ; $70CA: $78
    sub b                                         ; $70CB: $90
    ld a, b                                       ; $70CC: $78
    sub b                                         ; $70CD: $90
    ld a, b                                       ; $70CE: $78
    sub b                                         ; $70CF: $90
    ld hl, sp+$50                                 ; $70D0: $F8 $50
    ld hl, sp+$40                                 ; $70D2: $F8 $40
    ldh [$FFC0], a                                ; $70D4: $E0 $C0
    pop hl                                        ; $70D6: $E1
    ret nz                                        ; $70D7: $C0

    ld h, c                                       ; $70D8: $61
    ret nz                                        ; $70D9: $C0

    ld h, e                                       ; $70DA: $63
    ret nz                                        ; $70DB: $C0

    ld h, e                                       ; $70DC: $63
    ret nz                                        ; $70DD: $C0

    ld h, a                                       ; $70DE: $67
    jp nz, Jump_000_0080                          ; $70DF: $C2 $80 $00

    ld h, b                                       ; $70E2: $60
    nop                                           ; $70E3: $00
    ld a, b                                       ; $70E4: $78
    jr nz, jr_018_7125                            ; $70E5: $20 $3E

    jr jr_018_7120                                ; $70E7: $18 $37

    ld e, $19                                     ; $70E9: $1E $19
    rrca                                          ; $70EB: $0F
    jr jr_018_70FD                                ; $70EC: $18 $0F

    inc c                                         ; $70EE: $0C
    rlca                                          ; $70EF: $07
    inc c                                         ; $70F0: $0C
    rlca                                          ; $70F1: $07
    ld b, $03                                     ; $70F2: $06 $03
    ld b, $03                                     ; $70F4: $06 $03
    inc bc                                        ; $70F6: $03
    ld bc, $0103                                  ; $70F7: $01 $03 $01
    ld bc, $0100                                  ; $70FA: $01 $00 $01

jr_018_70FD:
    nop                                           ; $70FD: $00
    nop                                           ; $70FE: $00
    nop                                           ; $70FF: $00
    ld a, $F1                                     ; $7100: $3E $F1
    ld c, $F9                                     ; $7102: $0E $F9
    inc b                                         ; $7104: $04
    ei                                            ; $7105: $FB
    inc b                                         ; $7106: $04
    ei                                            ; $7107: $FB
    nop                                           ; $7108: $00
    rst RST_38                                    ; $7109: $FF
    nop                                           ; $710A: $00
    rst RST_38                                    ; $710B: $FF
    add b                                         ; $710C: $80
    rst RST_38                                    ; $710D: $FF
    add b                                         ; $710E: $80
    rst RST_38                                    ; $710F: $FF
    nop                                           ; $7110: $00
    nop                                           ; $7111: $00
    nop                                           ; $7112: $00
    nop                                           ; $7113: $00
    nop                                           ; $7114: $00
    nop                                           ; $7115: $00
    nop                                           ; $7116: $00
    nop                                           ; $7117: $00
    nop                                           ; $7118: $00
    nop                                           ; $7119: $00
    nop                                           ; $711A: $00
    nop                                           ; $711B: $00
    nop                                           ; $711C: $00
    nop                                           ; $711D: $00
    nop                                           ; $711E: $00
    nop                                           ; $711F: $00

jr_018_7120:
    ld [$00F7], sp                                ; $7120: $08 $F7 $00
    rst RST_38                                    ; $7123: $FF
    nop                                           ; $7124: $00

jr_018_7125:
    rst RST_38                                    ; $7125: $FF
    nop                                           ; $7126: $00
    rst RST_38                                    ; $7127: $FF
    nop                                           ; $7128: $00
    nop                                           ; $7129: $00
    nop                                           ; $712A: $00
    nop                                           ; $712B: $00
    nop                                           ; $712C: $00
    nop                                           ; $712D: $00
    nop                                           ; $712E: $00
    nop                                           ; $712F: $00
    nop                                           ; $7130: $00
    nop                                           ; $7131: $00
    nop                                           ; $7132: $00
    nop                                           ; $7133: $00
    nop                                           ; $7134: $00
    nop                                           ; $7135: $00
    nop                                           ; $7136: $00
    nop                                           ; $7137: $00
    nop                                           ; $7138: $00
    nop                                           ; $7139: $00
    nop                                           ; $713A: $00
    nop                                           ; $713B: $00
    nop                                           ; $713C: $00
    nop                                           ; $713D: $00
    nop                                           ; $713E: $00
    nop                                           ; $713F: $00
    ld hl, $1F1E                                  ; $7140: $21 $1E $1F
    nop                                           ; $7143: $00
    ld hl, $211E                                  ; $7144: $21 $1E $21
    ld e, $21                                     ; $7147: $1E $21
    ld e, $B0                                     ; $7149: $1E $B0
    rrca                                          ; $714B: $0F
    ldh a, [$FFAF]                                ; $714C: $F0 $AF
    ld d, b                                       ; $714E: $50
    rst RST_28                                    ; $714F: $EF
    db $10                                        ; $7150: $10
    rst RST_28                                    ; $7151: $EF
    ld [$08F7], sp                                ; $7152: $08 $F7 $08
    rst RST_30                                    ; $7155: $F7
    inc c                                         ; $7156: $0C
    di                                            ; $7157: $F3
    nop                                           ; $7158: $00
    rst RST_38                                    ; $7159: $FF
    nop                                           ; $715A: $00
    rst RST_38                                    ; $715B: $FF
    nop                                           ; $715C: $00
    rst RST_38                                    ; $715D: $FF
    nop                                           ; $715E: $00
    nop                                           ; $715F: $00
    ld h, a                                       ; $7160: $67
    jp nz, $06EF                                  ; $7161: $C2 $EF $06

    ld l, a                                       ; $7164: $6F
    add [hl]                                      ; $7165: $86
    ei                                            ; $7166: $FB
    ld c, $7B                                     ; $7167: $0E $7B
    adc [hl]                                      ; $7169: $8E
    di                                            ; $716A: $F3
    ld e, $B3                                     ; $716B: $1E $B3
    ld e, [hl]                                    ; $716D: $5E
    ld h, e                                       ; $716E: $63
    sbc [hl]                                      ; $716F: $9E
    inc hl                                        ; $7170: $23
    rst RST_18                                    ; $7171: $DF
    ld [bc], a                                    ; $7172: $02
    rst RST_38                                    ; $7173: $FF
    nop                                           ; $7174: $00
    rst RST_38                                    ; $7175: $FF
    nop                                           ; $7176: $00
    rst RST_38                                    ; $7177: $FF
    nop                                           ; $7178: $00
    rst RST_38                                    ; $7179: $FF
    nop                                           ; $717A: $00
    rst RST_38                                    ; $717B: $FF
    nop                                           ; $717C: $00
    rst RST_38                                    ; $717D: $FF
    nop                                           ; $717E: $00
    nop                                           ; $717F: $00
    ld bc, $0300                                  ; $7180: $01 $00 $03
    ld bc, $0306                                  ; $7183: $01 $06 $03
    inc c                                         ; $7186: $0C
    rlca                                          ; $7187: $07
    add hl, de                                    ; $7188: $19
    rrca                                          ; $7189: $0F
    ld sp, $631F                                  ; $718A: $31 $1F $63
    ld a, $C3                                     ; $718D: $3E $C3
    ld a, [hl]                                    ; $718F: $7E
    add [hl]                                      ; $7190: $86
    db $FC                                        ; $7191: $FC
    ld b, $FC                                     ; $7192: $06 $FC
    inc c                                         ; $7194: $0C
    ld hl, sp+$0C                                 ; $7195: $F8 $0C
    ld hl, sp+$18                                 ; $7197: $F8 $18
    ldh a, [rNR23]                                ; $7199: $F0 $18
    ldh a, [$FF30]                                ; $719B: $F0 $30

jr_018_719D:
    ldh [$FF30], a                                ; $719D: $E0 $30
    ldh [rSC], a                                  ; $719F: $E0 $02
    nop                                           ; $71A1: $00
    inc b                                         ; $71A2: $04
    nop                                           ; $71A3: $00
    inc c                                         ; $71A4: $0C
    nop                                           ; $71A5: $00
    jr jr_018_71A8                                ; $71A6: $18 $00

jr_018_71A8:
    jr c, jr_018_71BA                             ; $71A8: $38 $10

    ld [hl], b                                    ; $71AA: $70
    jr nz, jr_018_719D                            ; $71AB: $20 $F0

    ld h, b                                       ; $71AD: $60
    ldh [$FFC0], a                                ; $71AE: $E0 $C0
    ld h, b                                       ; $71B0: $60
    ret nz                                        ; $71B1: $C0

    ret nz                                        ; $71B2: $C0

    add b                                         ; $71B3: $80
    ret nz                                        ; $71B4: $C0

    add b                                         ; $71B5: $80
    add b                                         ; $71B6: $80
    nop                                           ; $71B7: $00
    add b                                         ; $71B8: $80
    nop                                           ; $71B9: $00

jr_018_71BA:
    nop                                           ; $71BA: $00
    nop                                           ; $71BB: $00
    nop                                           ; $71BC: $00
    nop                                           ; $71BD: $00
    nop                                           ; $71BE: $00
    nop                                           ; $71BF: $00
    ld e, $07                                     ; $71C0: $1E $07
    jr c, jr_018_71E3                             ; $71C2: $38 $1F

    ld h, b                                       ; $71C4: $60
    ccf                                           ; $71C5: $3F
    ld h, h                                       ; $71C6: $64
    ccf                                           ; $71C7: $3F
    call z, $CE7F                                 ; $71C8: $CC $7F $CE
    ld a, a                                       ; $71CB: $7F
    rst RST_08                                    ; $71CC: $CF
    ld a, a                                       ; $71CD: $7F
    rst RST_08                                    ; $71CE: $CF
    ld a, a                                       ; $71CF: $7F
    rst RST_10                                    ; $71D0: $D7
    ld a, a                                       ; $71D1: $7F
    rst RST_28                                    ; $71D2: $EF
    ld a, a                                       ; $71D3: $7F
    ld h, a                                       ; $71D4: $67
    ccf                                           ; $71D5: $3F
    ld [hl], e                                    ; $71D6: $73
    ccf                                           ; $71D7: $3F
    jr c, jr_018_71F9                             ; $71D8: $38 $1F

    ld e, $0F                                     ; $71DA: $1E $0F
    rrca                                          ; $71DC: $0F
    inc bc                                        ; $71DD: $03
    inc bc                                        ; $71DE: $03
    nop                                           ; $71DF: $00
    add b                                         ; $71E0: $80
    ld a, a                                       ; $71E1: $7F
    adc a                                         ; $71E2: $8F

jr_018_71E3:
    ld [hl], b                                    ; $71E3: $70
    adc a                                         ; $71E4: $8F
    ld [hl], e                                    ; $71E5: $73
    rst RST_38                                    ; $71E6: $FF
    add b                                         ; $71E7: $80
    ccf                                           ; $71E8: $3F
    rst RST_38                                    ; $71E9: $FF
    ret nz                                        ; $71EA: $C0

    rst RST_38                                    ; $71EB: $FF
    rst RST_38                                    ; $71EC: $FF
    rst RST_38                                    ; $71ED: $FF
    rst RST_38                                    ; $71EE: $FF
    rst RST_38                                    ; $71EF: $FF
    rst RST_38                                    ; $71F0: $FF
    rst RST_38                                    ; $71F1: $FF
    rst RST_38                                    ; $71F2: $FF
    rst RST_38                                    ; $71F3: $FF
    rst RST_38                                    ; $71F4: $FF
    rst RST_38                                    ; $71F5: $FF
    rst RST_38                                    ; $71F6: $FF
    rst RST_38                                    ; $71F7: $FF
    ccf                                           ; $71F8: $3F

jr_018_71F9:
    rst RST_38                                    ; $71F9: $FF
    jp $FFFF                                      ; $71FA: $C3 $FF $FF


    ld a, a                                       ; $71FD: $7F
    ld a, a                                       ; $71FE: $7F
    nop                                           ; $71FF: $00
    ld e, b                                       ; $7200: $58
    or a                                          ; $7201: $B7
    ld e, b                                       ; $7202: $58
    or a                                          ; $7203: $B7
    rst RST_18                                    ; $7204: $DF
    scf                                           ; $7205: $37
    rst RST_38                                    ; $7206: $FF
    nop                                           ; $7207: $00
    rst RST_38                                    ; $7208: $FF
    rst RST_38                                    ; $7209: $FF
    rrca                                          ; $720A: $0F
    rst RST_38                                    ; $720B: $FF
    rst RST_38                                    ; $720C: $FF
    rst RST_38                                    ; $720D: $FF
    rst RST_38                                    ; $720E: $FF
    rst RST_38                                    ; $720F: $FF
    rst RST_38                                    ; $7210: $FF
    rst RST_38                                    ; $7211: $FF
    rst RST_38                                    ; $7212: $FF
    rst RST_38                                    ; $7213: $FF
    rst RST_38                                    ; $7214: $FF
    rst RST_38                                    ; $7215: $FF
    rst RST_38                                    ; $7216: $FF
    rst RST_38                                    ; $7217: $FF
    ld hl, sp-$01                                 ; $7218: $F8 $FF
    rst RST_38                                    ; $721A: $FF
    rst RST_38                                    ; $721B: $FF
    rst RST_38                                    ; $721C: $FF
    rst RST_38                                    ; $721D: $FF
    rst RST_38                                    ; $721E: $FF
    nop                                           ; $721F: $00
    cp a                                          ; $7220: $BF
    ret nz                                        ; $7221: $C0

    cp h                                          ; $7222: $BC
    ret nz                                        ; $7223: $C0

    db $FC                                        ; $7224: $FC
    ret nz                                        ; $7225: $C0

    cp $00                                        ; $7226: $FE $00
    pop bc                                        ; $7228: $C1
    cp $83                                        ; $7229: $FE $83
    db $FC                                        ; $722B: $FC
    db $FC                                        ; $722C: $FC
    rst RST_38                                    ; $722D: $FF
    ldh [rIE], a                                  ; $722E: $E0 $FF
    ldh a, [rIE]                                  ; $7230: $F0 $FF
    nop                                           ; $7232: $00
    rst RST_38                                    ; $7233: $FF
    ldh a, [rIE]                                  ; $7234: $F0 $FF
    add c                                         ; $7236: $81
    rst RST_38                                    ; $7237: $FF
    inc bc                                        ; $7238: $03
    cp $FF                                        ; $7239: $FE $FF
    cp $FF                                        ; $723B: $FE $FF
    db $FD                                        ; $723D: $FD
    rst RST_38                                    ; $723E: $FF
    inc bc                                        ; $723F: $03
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
    ld bc, $0700                                  ; $725C: $01 $00 $07
    ld bc, $0000                                  ; $725F: $01 $00 $00
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
    inc bc                                        ; $7276: $03
    nop                                           ; $7277: $00
    ccf                                           ; $7278: $3F
    inc bc                                        ; $7279: $03
    db $FC                                        ; $727A: $FC
    ccf                                           ; $727B: $3F
    ret nz                                        ; $727C: $C0

    rst RST_38                                    ; $727D: $FF
    ld a, a                                       ; $727E: $7F
    add b                                         ; $727F: $80
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
    rst RST_38                                    ; $7296: $FF
    nop                                           ; $7297: $00
    rst RST_38                                    ; $7298: $FF
    rst RST_38                                    ; $7299: $FF
    rlca                                          ; $729A: $07
    ld hl, sp+$3C                                 ; $729B: $F8 $3C
    jp $38DF                                      ; $729D: $C3 $DF $38


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
    rst RST_38                                    ; $72B6: $FF
    nop                                           ; $72B7: $00
    rst RST_38                                    ; $72B8: $FF
    rst RST_38                                    ; $72B9: $FF
    add b                                         ; $72BA: $80
    ld a, a                                       ; $72BB: $7F
    ld b, b                                       ; $72BC: $40
    cp a                                          ; $72BD: $BF
    rst RST_38                                    ; $72BE: $FF
    rlca                                          ; $72BF: $07
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
    rst RST_38                                    ; $72D6: $FF
    nop                                           ; $72D7: $00
    rst RST_38                                    ; $72D8: $FF
    cp $0E                                        ; $72D9: $FE $0E
    ldh a, [$FFF8]                                ; $72DB: $F0 $F8
    ldh [$FFE0], a                                ; $72DD: $E0 $E0
    nop                                           ; $72DF: $00
    adc a                                         ; $72E0: $8F
    ld [hl], c                                    ; $72E1: $71
    add a                                         ; $72E2: $87
    ld a, c                                       ; $72E3: $79
    ld c, a                                       ; $72E4: $4F
    jr nc, @+$01                                  ; $72E5: $30 $FF

    inc bc                                        ; $72E7: $03
    rst RST_38                                    ; $72E8: $FF
    ld h, e                                       ; $72E9: $63
    rst RST_38                                    ; $72EA: $FF
    ld h, e                                       ; $72EB: $63
    rst RST_38                                    ; $72EC: $FF
    ld h, e                                       ; $72ED: $63
    rst RST_38                                    ; $72EE: $FF
    ld h, e                                       ; $72EF: $63
    rst RST_38                                    ; $72F0: $FF
    ld h, b                                       ; $72F1: $60
    rst RST_38                                    ; $72F2: $FF
    ld l, a                                       ; $72F3: $6F
    rst RST_38                                    ; $72F4: $FF
    ld l, a                                       ; $72F5: $6F
    rst RST_38                                    ; $72F6: $FF
    ld l, b                                       ; $72F7: $68
    ld a, [$0A05]                                 ; $72F8: $FA $05 $0A
    dec b                                         ; $72FB: $05
    add hl, bc                                    ; $72FC: $09
    ld b, $07                                     ; $72FD: $06 $07
    nop                                           ; $72FF: $00
    stop                                          ; $7300: $10 $00
    stop                                          ; $7302: $10 $00
    stop                                          ; $7304: $10 $00
    stop                                          ; $7306: $10 $00
    stop                                          ; $7308: $10 $00
    rra                                           ; $730A: $1F
    nop                                           ; $730B: $00
    rra                                           ; $730C: $1F
    inc bc                                        ; $730D: $03
    rra                                           ; $730E: $1F
    inc de                                        ; $730F: $13
    rra                                           ; $7310: $1F
    rlca                                          ; $7311: $07
    rra                                           ; $7312: $1F
    ld b, $1F                                     ; $7313: $06 $1F
    ld b, $FF                                     ; $7315: $06 $FF
    ldh [$FFFE], a                                ; $7317: $E0 $FE
    call c, Call_018_5CFE                         ; $7319: $DC $FE $5C
    cp $50                                        ; $731C: $FE $50
    push af                                       ; $731E: $F5
    ld a, [hl+]                                   ; $731F: $2A
    push af                                       ; $7320: $F5
    ld a, [hl+]                                   ; $7321: $2A
    ldh a, [c]                                    ; $7322: $F2
    dec c                                         ; $7323: $0D
    adc c                                         ; $7324: $89
    ld b, $87                                     ; $7325: $06 $87
    nop                                           ; $7327: $00
    add b                                         ; $7328: $80
    nop                                           ; $7329: $00
    add b                                         ; $732A: $80
    nop                                           ; $732B: $00
    add b                                         ; $732C: $80
    nop                                           ; $732D: $00
    add b                                         ; $732E: $80
    nop                                           ; $732F: $00
    ld b, b                                       ; $7330: $40
    add b                                         ; $7331: $80
    ld b, b                                       ; $7332: $40

Call_018_7333:
    add b                                         ; $7333: $80
    ret nz                                        ; $7334: $C0

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
    add b                                         ; $7340: $80
    nop                                           ; $7341: $00
    add b                                         ; $7342: $80
    nop                                           ; $7343: $00
    add b                                         ; $7344: $80
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
    add b                                         ; $7356: $80
    nop                                           ; $7357: $00
    add b                                         ; $7358: $80
    nop                                           ; $7359: $00
    add b                                         ; $735A: $80
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
    ld a, a                                       ; $7366: $7F
    nop                                           ; $7367: $00
    add b                                         ; $7368: $80
    ld a, a                                       ; $7369: $7F
    adc a                                         ; $736A: $8F
    ld [hl], b                                    ; $736B: $70
    adc a                                         ; $736C: $8F
    ld [hl], e                                    ; $736D: $73
    rst RST_38                                    ; $736E: $FF
    ld l, h                                       ; $736F: $6C
    ld a, a                                       ; $7370: $7F
    rrca                                          ; $7371: $0F
    rra                                           ; $7372: $1F
    rrca                                          ; $7373: $0F
    ccf                                           ; $7374: $3F
    rra                                           ; $7375: $1F
    ccf                                           ; $7376: $3F
    rra                                           ; $7377: $1F
    ccf                                           ; $7378: $3F
    rra                                           ; $7379: $1F
    rra                                           ; $737A: $1F
    rlca                                          ; $737B: $07
    rlca                                          ; $737C: $07
    ld bc, $0001                                  ; $737D: $01 $01 $00
    ld e, b                                       ; $7380: $58
    or a                                          ; $7381: $B7
    ld e, b                                       ; $7382: $58
    or a                                          ; $7383: $B7
    rst RST_18                                    ; $7384: $DF
    scf                                           ; $7385: $37
    rst RST_38                                    ; $7386: $FF
    ret nz                                        ; $7387: $C0

    db $FC                                        ; $7388: $FC
    inc sp                                        ; $7389: $33
    rst RST_38                                    ; $738A: $FF
    ret nz                                        ; $738B: $C0

    rst RST_38                                    ; $738C: $FF
    rst RST_18                                    ; $738D: $DF
    rst RST_38                                    ; $738E: $FF
    sbc a                                         ; $738F: $9F
    rst RST_38                                    ; $7390: $FF
    sbc a                                         ; $7391: $9F
    rst RST_38                                    ; $7392: $FF
    rra                                           ; $7393: $1F
    rst RST_38                                    ; $7394: $FF
    rra                                           ; $7395: $1F
    rst RST_38                                    ; $7396: $FF
    rra                                           ; $7397: $1F
    rra                                           ; $7398: $1F
    nop                                           ; $7399: $00
    rla                                           ; $739A: $17
    ld [$070F], sp                                ; $739B: $08 $0F $07
    rrca                                          ; $739E: $0F
    inc b                                         ; $739F: $04
    cp h                                          ; $73A0: $BC
    ret nz                                        ; $73A1: $C0

    cp h                                          ; $73A2: $BC
    ret nz                                        ; $73A3: $C0

    db $FC                                        ; $73A4: $FC
    ret nz                                        ; $73A5: $C0

    cp $00                                        ; $73A6: $FE $00
    or c                                          ; $73A8: $B1
    ld c, [hl]                                    ; $73A9: $4E
    di                                            ; $73AA: $F3
    inc c                                         ; $73AB: $0C
    ldh [$FFDF], a                                ; $73AC: $E0 $DF
    ldh [$FFDF], a                                ; $73AE: $E0 $DF
    ldh [$FFDF], a                                ; $73B0: $E0 $DF
    ldh [$FFDF], a                                ; $73B2: $E0 $DF
    ldh [$FFDF], a                                ; $73B4: $E0 $DF
    ldh [$FFDF], a                                ; $73B6: $E0 $DF
    rst RST_38                                    ; $73B8: $FF
    nop                                           ; $73B9: $00
    rst RST_20                                    ; $73BA: $E7
    dec de                                        ; $73BB: $1B
    rst RST_38                                    ; $73BC: $FF
    rst RST_20                                    ; $73BD: $E7
    rst RST_38                                    ; $73BE: $FF
    ld h, a                                       ; $73BF: $67
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
    rlca                                          ; $73DA: $07
    nop                                           ; $73DB: $00
    inc a                                         ; $73DC: $3C
    inc bc                                        ; $73DD: $03
    rst RST_18                                    ; $73DE: $DF
    jr c, jr_018_73E1                             ; $73DF: $38 $00

jr_018_73E1:
    nop                                           ; $73E1: $00

jr_018_73E2:
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
    add b                                         ; $73FA: $80
    nop                                           ; $73FB: $00

Jump_018_73FC:
    ld b, b                                       ; $73FC: $40
    add b                                         ; $73FD: $80
    ld hl, sp+$00                                 ; $73FE: $F8 $00
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
    rra                                           ; $740A: $1F
    nop                                           ; $740B: $00
    dec a                                         ; $740C: $3D
    inc bc                                        ; $740D: $03
    dec a                                         ; $740E: $3D
    inc bc                                        ; $740F: $03
    ccf                                           ; $7410: $3F
    inc bc                                        ; $7411: $03
    rra                                           ; $7412: $1F
    nop                                           ; $7413: $00
    ld bc, $0100                                  ; $7414: $01 $00 $01
    nop                                           ; $7417: $00
    ld bc, $0100                                  ; $7418: $01 $00 $01
    nop                                           ; $741B: $00
    ld bc, $0100                                  ; $741C: $01 $00 $01
    nop                                           ; $741F: $00
    jr c, jr_018_7422                             ; $7420: $38 $00

jr_018_7422:
    ld b, [hl]                                    ; $7422: $46
    jr c, jr_018_73E2                             ; $7423: $38 $BD

    ld b, d                                       ; $7425: $42
    ei                                            ; $7426: $FB
    inc e                                         ; $7427: $1C
    ld a, [de]                                    ; $7428: $1A
    db $ED                                        ; $7429: $ED
    ld a, [de]                                    ; $742A: $1A
    db $ED                                        ; $742B: $ED
    ei                                            ; $742C: $FB
    db $ED                                        ; $742D: $ED
    rst RST_38                                    ; $742E: $FF
    nop                                           ; $742F: $00
    rst RST_38                                    ; $7430: $FF
    db $ED                                        ; $7431: $ED
    rst RST_38                                    ; $7432: $FF
    db $EC                                        ; $7433: $EC
    rst RST_38                                    ; $7434: $FF
    db $EC                                        ; $7435: $EC
    rst RST_38                                    ; $7436: $FF
    db $EC                                        ; $7437: $EC
    rst RST_38                                    ; $7438: $FF
    db $EC                                        ; $7439: $EC
    rst RST_38                                    ; $743A: $FF
    db $ED                                        ; $743B: $ED
    rst RST_38                                    ; $743C: $FF
    ld bc, $0003                                  ; $743D: $01 $03 $00
    ld a, [hl]                                    ; $7440: $7E
    nop                                           ; $7441: $00
    pop hl                                        ; $7442: $E1
    ld e, $20                                     ; $7443: $1E $20
    rst RST_18                                    ; $7445: $DF
    daa                                           ; $7446: $27
    ret c                                         ; $7447: $D8

    rst RST_38                                    ; $7448: $FF
    and $F1                                       ; $7449: $E6 $F1
    ld c, $FD                                     ; $744B: $0E $FD
    ld [bc], a                                    ; $744D: $02
    jp nc, $FF2D                                  ; $744E: $D2 $2D $FF

    ld b, b                                       ; $7451: $40
    rst RST_38                                    ; $7452: $FF
    cp a                                          ; $7453: $BF
    rst RST_38                                    ; $7454: $FF
    nop                                           ; $7455: $00
    rst RST_38                                    ; $7456: $FF
    ld a, a                                       ; $7457: $7F
    rst RST_38                                    ; $7458: $FF
    ld a, a                                       ; $7459: $7F
    rst RST_38                                    ; $745A: $FF
    nop                                           ; $745B: $00
    ld bc, $0300                                  ; $745C: $01 $00 $03
    ld bc, $0001                                  ; $745F: $01 $01 $00
    rst RST_30                                    ; $7462: $F7
    ld bc, $A75F                                  ; $7463: $01 $5F $A7
    ccf                                           ; $7466: $3F
    ret nz                                        ; $7467: $C0

    rst RST_38                                    ; $7468: $FF
    rla                                           ; $7469: $17
    ccf                                           ; $746A: $3F
    rst RST_10                                    ; $746B: $D7
    cp a                                          ; $746C: $BF
    ld d, e                                       ; $746D: $53
    rst RST_38                                    ; $746E: $FF
    dec hl                                        ; $746F: $2B
    rst RST_38                                    ; $7470: $FF
    ld e, d                                       ; $7471: $5A
    rst RST_38                                    ; $7472: $FF
    cp b                                          ; $7473: $B8
    rst RST_38                                    ; $7474: $FF
    inc b                                         ; $7475: $04
    rst RST_38                                    ; $7476: $FF
    or b                                          ; $7477: $B0
    db $FD                                        ; $7478: $FD
    or d                                          ; $7479: $B2
    di                                            ; $747A: $F3
    inc c                                         ; $747B: $0C
    db $FC                                        ; $747C: $FC
    nop                                           ; $747D: $00
    db $FC                                        ; $747E: $FC
    ld hl, sp+$00                                 ; $747F: $F8 $00
    nop                                           ; $7481: $00
    ldh [rP1], a                                  ; $7482: $E0 $00
    ldh a, [$FFC0]                                ; $7484: $F0 $C0
    ldh a, [$FFA0]                                ; $7486: $F0 $A0
    ldh a, [$FF60]                                ; $7488: $F0 $60
    ld hl, sp+$70                                 ; $748A: $F8 $70
    cp $60                                        ; $748C: $FE $60
    pop af                                        ; $748E: $F1
    xor [hl]                                      ; $748F: $AE
    db $FD                                        ; $7490: $FD
    and d                                         ; $7491: $A2
    rst RST_30                                    ; $7492: $F7
    ld [$A857], sp                                ; $7493: $08 $57 $A8
    ld d, e                                       ; $7496: $53
    xor h                                         ; $7497: $AC
    ld d, a                                       ; $7498: $57
    xor d                                         ; $7499: $AA
    rst RST_38                                    ; $749A: $FF
    ld b, $FF                                     ; $749B: $06 $FF
    cp $FE                                        ; $749D: $FE $FE
    nop                                           ; $749F: $00
    inc bc                                        ; $74A0: $03
    nop                                           ; $74A1: $00
    rlca                                          ; $74A2: $07
    inc bc                                        ; $74A3: $03
    rlca                                          ; $74A4: $07
    inc bc                                        ; $74A5: $03
    rlca                                          ; $74A6: $07
    inc bc                                        ; $74A7: $03
    inc bc                                        ; $74A8: $03
    ld bc, $0103                                  ; $74A9: $01 $03 $01
    inc bc                                        ; $74AC: $03
    nop                                           ; $74AD: $00
    ld bc, $0100                                  ; $74AE: $01 $00 $01
    nop                                           ; $74B1: $00
    inc bc                                        ; $74B2: $03
    nop                                           ; $74B3: $00
    dec b                                         ; $74B4: $05
    ld [bc], a                                    ; $74B5: $02
    ld a, [bc]                                    ; $74B6: $0A
    dec b                                         ; $74B7: $05
    rrca                                          ; $74B8: $0F
    nop                                           ; $74B9: $00
    nop                                           ; $74BA: $00
    nop                                           ; $74BB: $00
    nop                                           ; $74BC: $00
    nop                                           ; $74BD: $00
    nop                                           ; $74BE: $00
    nop                                           ; $74BF: $00
    rlca                                          ; $74C0: $07
    nop                                           ; $74C1: $00
    jr jr_018_74CB                                ; $74C2: $18 $07

    ldh [$FF1F], a                                ; $74C4: $E0 $1F
    ld sp, hl                                     ; $74C6: $F9
    ld h, $FE                                     ; $74C7: $26 $FE

jr_018_74C9:
    jr c, jr_018_74C9                             ; $74C9: $38 $FE

jr_018_74CB:
    sbc h                                         ; $74CB: $9C
    cp $9C                                        ; $74CC: $FE $9C
    cp $9C                                        ; $74CE: $FE $9C
    rst RST_38                                    ; $74D0: $FF
    ld e, $FF                                     ; $74D1: $1E $FF
    xor $FF                                       ; $74D3: $EE $FF
    xor $FF                                       ; $74D5: $EE $FF
    ld l, $BF                                     ; $74D7: $2E $BF
    ld d, [hl]                                    ; $74D9: $56
    ld a, $D0                                     ; $74DA: $3E $D0
    ld hl, sp+$00                                 ; $74DC: $F8 $00
    nop                                           ; $74DE: $00
    nop                                           ; $74DF: $00
    ld a, [$F1F4]                                 ; $74E0: $FA $F4 $F1
    ld l, [hl]                                    ; $74E3: $6E
    ldh a, [rIF]                                  ; $74E4: $F0 $0F
    rrca                                          ; $74E6: $0F
    nop                                           ; $74E7: $00
    rra                                           ; $74E8: $1F
    dec b                                         ; $74E9: $05
    rra                                           ; $74EA: $1F
    dec c                                         ; $74EB: $0D
    rrca                                          ; $74EC: $0F
    ld b, $0F                                     ; $74ED: $06 $0F
    ld b, $07                                     ; $74EF: $06 $07
    inc bc                                        ; $74F1: $03
    rlca                                          ; $74F2: $07
    nop                                           ; $74F3: $00
    inc bc                                        ; $74F4: $03
    ld bc, $0103                                  ; $74F5: $01 $03 $01
    ld bc, $0100                                  ; $74F8: $01 $00 $01
    nop                                           ; $74FB: $00
    ld [bc], a                                    ; $74FC: $02
    ld bc, $0003                                  ; $74FD: $01 $03 $00
    add b                                         ; $7500: $80
    nop                                           ; $7501: $00
    ldh a, [rP1]                                  ; $7502: $F0 $00
    add sp, -$70                                  ; $7504: $E8 $90
    ld hl, sp-$60                                 ; $7506: $F8 $A0
    db $F4                                        ; $7508: $F4
    ret z                                         ; $7509: $C8

    db $FC                                        ; $750A: $FC
    ret nc                                        ; $750B: $D0

    ld a, [$FE64]                                 ; $750C: $FA $64 $FE
    ld l, b                                       ; $750F: $68
    db $FD                                        ; $7510: $FD
    ldh a, [c]                                    ; $7511: $F2
    rst RST_38                                    ; $7512: $FF
    db $F4                                        ; $7513: $F4
    rst RST_38                                    ; $7514: $FF
    ld a, [de]                                    ; $7515: $1A
    ld e, [hl]                                    ; $7516: $5E
    and b                                         ; $7517: $A0
    adc h                                         ; $7518: $8C
    ld [hl], b                                    ; $7519: $70
    ld hl, sp+$00                                 ; $751A: $F8 $00
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
    rrca                                          ; $7536: $0F
    nop                                           ; $7537: $00
    ld e, $01                                     ; $7538: $1E $01
    ld e, $01                                     ; $753A: $1E $01
    rra                                           ; $753C: $1F
    ld bc, $000F                                  ; $753D: $01 $0F $00
    inc e                                         ; $7540: $1C
    nop                                           ; $7541: $00
    inc hl                                        ; $7542: $23
    inc e                                         ; $7543: $1C
    ld e, [hl]                                    ; $7544: $5E
    ld hl, $0EFD                                  ; $7545: $21 $FD $0E
    adc l                                         ; $7548: $8D
    or $8D                                        ; $7549: $F6 $8D
    or $FD                                        ; $754B: $F6 $FD
    or $FF                                        ; $754D: $F6 $FF
    nop                                           ; $754F: $00
    rst RST_38                                    ; $7550: $FF
    halt                                          ; $7551: $76
    rst RST_38                                    ; $7552: $FF
    halt                                          ; $7553: $76
    rst RST_38                                    ; $7554: $FF
    halt                                          ; $7555: $76
    rst RST_38                                    ; $7556: $FF
    halt                                          ; $7557: $76
    rst RST_38                                    ; $7558: $FF
    halt                                          ; $7559: $76
    rst RST_38                                    ; $755A: $FF
    halt                                          ; $755B: $76
    ld a, a                                       ; $755C: $7F
    nop                                           ; $755D: $00
    ld bc, $BF00                                  ; $755E: $01 $00 $BF
    nop                                           ; $7561: $00
    ldh a, [rIF]                                  ; $7562: $F0 $0F
    db $10                                        ; $7564: $10
    rst RST_28                                    ; $7565: $EF
    inc de                                        ; $7566: $13
    db $EC                                        ; $7567: $EC
    rst RST_38                                    ; $7568: $FF
    di                                            ; $7569: $F3
    ld hl, sp+$07                                 ; $756A: $F8 $07
    cp $81                                        ; $756C: $FE $81
    jp hl                                         ; $756E: $E9


    ld d, $FF                                     ; $756F: $16 $FF
    jr nz, @+$01                                  ; $7571: $20 $FF

    ld e, a                                       ; $7573: $5F
    rst RST_38                                    ; $7574: $FF
    nop                                           ; $7575: $00
    rst RST_38                                    ; $7576: $FF
    cp a                                          ; $7577: $BF
    rst RST_38                                    ; $7578: $FF
    cp a                                          ; $7579: $BF
    rst RST_38                                    ; $757A: $FF
    nop                                           ; $757B: $00
    inc bc                                        ; $757C: $03
    nop                                           ; $757D: $00
    rlca                                          ; $757E: $07
    inc bc                                        ; $757F: $03
    rlca                                          ; $7580: $07
    nop                                           ; $7581: $00
    rst RST_38                                    ; $7582: $FF
    rlca                                          ; $7583: $07
    cpl                                           ; $7584: $2F
    rst RST_10                                    ; $7585: $D7
    sbc a                                         ; $7586: $9F
    ld h, a                                       ; $7587: $67
    rst RST_38                                    ; $7588: $FF
    inc b                                         ; $7589: $04
    sbc [hl]                                      ; $758A: $9E
    ld h, l                                       ; $758B: $65
    rst RST_18                                    ; $758C: $DF
    ld h, $7E                                     ; $758D: $26 $7E
    sub l                                         ; $758F: $95
    rst RST_38                                    ; $7590: $FF
    inc h                                         ; $7591: $24
    rst RST_38                                    ; $7592: $FF
    reti                                          ; $7593: $D9


    rst RST_38                                    ; $7594: $FF
    ld [bc], a                                    ; $7595: $02
    rst RST_38                                    ; $7596: $FF
    ret c                                         ; $7597: $D8

    rst RST_38                                    ; $7598: $FF
    ret c                                         ; $7599: $D8

    ld sp, hl                                     ; $759A: $F9
    ld b, $F2                                     ; $759B: $06 $F2
    inc c                                         ; $759D: $0C
    db $FC                                        ; $759E: $FC
    ldh a, [rP1]                                  ; $759F: $F0 $00
    nop                                           ; $75A1: $00
    nop                                           ; $75A2: $00
    nop                                           ; $75A3: $00
    ldh a, [rP1]                                  ; $75A4: $F0 $00
    ld hl, sp+$40                                 ; $75A6: $F8 $40
    db $EB                                        ; $75A8: $EB
    db $10                                        ; $75A9: $10
    or l                                          ; $75AA: $B5
    ld c, d                                       ; $75AB: $4A
    push de                                       ; $75AC: $D5
    ld a, [hl+]                                   ; $75AD: $2A
    push de                                       ; $75AE: $D5
    ld a, [hl+]                                   ; $75AF: $2A
    ld b, d                                       ; $75B0: $42
    cp h                                          ; $75B1: $BC
    add d                                         ; $75B2: $82
    ld a, h                                       ; $75B3: $7C
    ld [bc], a                                    ; $75B4: $02
    db $FC                                        ; $75B5: $FC
    add a                                         ; $75B6: $87
    ld a, d                                       ; $75B7: $7A

jr_018_75B8:
    rst RST_38                                    ; $75B8: $FF
    ld [bc], a                                    ; $75B9: $02
    rst RST_38                                    ; $75BA: $FF
    ld a, d                                       ; $75BB: $7A
    cp $3C                                        ; $75BC: $FE $3C
    ld a, h                                       ; $75BE: $7C
    nop                                           ; $75BF: $00
    nop                                           ; $75C0: $00
    nop                                           ; $75C1: $00
    ld [hl], b                                    ; $75C2: $70
    nop                                           ; $75C3: $00
    cp $00                                        ; $75C4: $FE $00
    pop af                                        ; $75C6: $F1
    ld c, $F1                                     ; $75C7: $0E $F1
    rrca                                          ; $75C9: $0F
    ld a, l                                       ; $75CA: $7D
    rra                                           ; $75CB: $1F
    rra                                           ; $75CC: $1F
    inc bc                                        ; $75CD: $03
    inc bc                                        ; $75CE: $03
    nop                                           ; $75CF: $00
    inc bc                                        ; $75D0: $03
    ld bc, $0307                                  ; $75D1: $01 $07 $03
    rlca                                          ; $75D4: $07
    inc bc                                        ; $75D5: $03
    rlca                                          ; $75D6: $07
    inc bc                                        ; $75D7: $03
    rrca                                          ; $75D8: $0F
    rlca                                          ; $75D9: $07
    rrca                                          ; $75DA: $0F
    rlca                                          ; $75DB: $07
    rrca                                          ; $75DC: $0F
    ld bc, $0001                                  ; $75DD: $01 $01 $00
    ld h, b                                       ; $75E0: $60
    nop                                           ; $75E1: $00
    cp h                                          ; $75E2: $BC
    ld b, b                                       ; $75E3: $40
    jp z, Jump_000_2A34                           ; $75E4: $CA $34 $2A

    call nc, $D02F                                ; $75E7: $D4 $2F $D0
    add sp, -$29                                  ; $75EA: $E8 $D7
    ldh a, [$FF2F]                                ; $75EC: $F0 $2F
    cp $8F                                        ; $75EE: $FE $8F
    rst RST_38                                    ; $75F0: $FF
    pop de                                        ; $75F1: $D1
    rst RST_38                                    ; $75F2: $FF
    cp b                                          ; $75F3: $B8
    rst RST_38                                    ; $75F4: $FF
    cp b                                          ; $75F5: $B8
    rst RST_38                                    ; $75F6: $FF
    cp b                                          ; $75F7: $B8
    rst RST_38                                    ; $75F8: $FF
    ld [hl], d                                    ; $75F9: $72
    rst RST_38                                    ; $75FA: $FF
    ld [hl], b                                    ; $75FB: $70
    rst RST_38                                    ; $75FC: $FF
    dec d                                         ; $75FD: $15
    rra                                           ; $75FE: $1F
    dec b                                         ; $75FF: $05

jr_018_7600:
    nop                                           ; $7600: $00
    nop                                           ; $7601: $00
    nop                                           ; $7602: $00
    nop                                           ; $7603: $00
    inc a                                         ; $7604: $3C
    nop                                           ; $7605: $00

jr_018_7606:
    jp Jump_018_403C                              ; $7606: $C3 $3C $40


    cp a                                          ; $7609: $BF

jr_018_760A:
    ld c, [hl]                                    ; $760A: $4E
    or c                                          ; $760B: $B1

jr_018_760C:
    cp a                                          ; $760C: $BF
    call z, $45FA                                 ; $760D: $CC $FA $45

jr_018_7610:
    rst RST_20                                    ; $7610: $E7
    jr jr_018_75B8                                ; $7611: $18 $A5

    ld e, d                                       ; $7613: $5A
    rst RST_38                                    ; $7614: $FF
    inc h                                         ; $7615: $24
    rst RST_38                                    ; $7616: $FF
    nop                                           ; $7617: $00
    rst RST_38                                    ; $7618: $FF
    cp $FF                                        ; $7619: $FE $FF
    cp $FF                                        ; $761B: $FE $FF
    nop                                           ; $761D: $00
    add l                                         ; $761E: $85
    ld a, d                                       ; $761F: $7A
    rrca                                          ; $7620: $0F
    nop                                           ; $7621: $00
    add hl, bc                                    ; $7622: $09
    ld b, $1E                                     ; $7623: $06 $1E
    ld bc, $0E31                                  ; $7625: $01 $31 $0E
    cp h                                          ; $7628: $BC
    inc bc                                        ; $7629: $03
    ld a, [hl]                                    ; $762A: $7E
    sbc c                                         ; $762B: $99
    ld hl, sp+$17                                 ; $762C: $F8 $17
    ld a, [hl]                                    ; $762E: $7E
    sub c                                         ; $762F: $91
    ld a, a                                       ; $7630: $7F
    sub b                                         ; $7631: $90
    rst RST_38                                    ; $7632: $FF
    rla                                           ; $7633: $17
    rst RST_38                                    ; $7634: $FF
    ld d, a                                       ; $7635: $57
    rst RST_38                                    ; $7636: $FF
    rlca                                          ; $7637: $07
    rst RST_38                                    ; $7638: $FF
    rst RST_10                                    ; $7639: $D7
    rst RST_38                                    ; $763A: $FF
    rst RST_00                                    ; $763B: $C7
    rst RST_38                                    ; $763C: $FF
    nop                                           ; $763D: $00
    jr nz, jr_018_7600                            ; $763E: $20 $C0

    ld b, b                                       ; $7640: $40
    add b                                         ; $7641: $80
    and b                                         ; $7642: $A0
    ld b, b                                       ; $7643: $40
    jr nz, jr_018_7606                            ; $7644: $20 $C0

    jr nz, @-$3E                                  ; $7646: $20 $C0

    jr nc, jr_018_760A                            ; $7648: $30 $C0

    jr nc, jr_018_760C                            ; $764A: $30 $C0

    jr nc, @-$3E                                  ; $764C: $30 $C0

    jr nc, jr_018_7610                            ; $764E: $30 $C0

    ldh a, [rNR41]                                ; $7650: $F0 $20
    ldh a, [$FF60]                                ; $7652: $F0 $60
    ldh a, [$FF60]                                ; $7654: $F0 $60
    ldh a, [$FF60]                                ; $7656: $F0 $60
    ldh a, [$FF60]                                ; $7658: $F0 $60
    ldh [rLCDC], a                                ; $765A: $E0 $40
    ret nz                                        ; $765C: $C0

    nop                                           ; $765D: $00
    nop                                           ; $765E: $00
    nop                                           ; $765F: $00
    inc bc                                        ; $7660: $03
    nop                                           ; $7661: $00
    inc bc                                        ; $7662: $03
    ld bc, $0307                                  ; $7663: $01 $07 $03
    rlca                                          ; $7666: $07
    inc bc                                        ; $7667: $03
    rlca                                          ; $7668: $07
    inc bc                                        ; $7669: $03
    rrca                                          ; $766A: $0F
    rlca                                          ; $766B: $07
    rrca                                          ; $766C: $0F
    nop                                           ; $766D: $00
    rrca                                          ; $766E: $0F
    rlca                                          ; $766F: $07
    rra                                           ; $7670: $1F
    rrca                                          ; $7671: $0F
    rra                                           ; $7672: $1F
    ld bc, $152B                                  ; $7673: $01 $2B $15
    ld d, c                                       ; $7676: $51
    ld l, $B3                                     ; $7677: $2E $B3
    ld c, h                                       ; $7679: $4C
    db $FC                                        ; $767A: $FC
    nop                                           ; $767B: $00
    nop                                           ; $767C: $00
    nop                                           ; $767D: $00
    nop                                           ; $767E: $00
    nop                                           ; $767F: $00
    ccf                                           ; $7680: $3F
    nop                                           ; $7681: $00
    ld [bc], a                                    ; $7682: $02
    ld bc, $01FA                                  ; $7683: $01 $FA $01
    rst RST_20                                    ; $7686: $E7
    ret c                                         ; $7687: $D8

    ld sp, hl                                     ; $7688: $F9
    add [hl]                                      ; $7689: $86
    db $FD                                        ; $768A: $FD
    xor d                                         ; $768B: $AA
    rst RST_38                                    ; $768C: $FF
    inc l                                         ; $768D: $2C
    cp $5C                                        ; $768E: $FE $5C
    db $FC                                        ; $7690: $FC
    ld e, b                                       ; $7691: $58
    db $FC                                        ; $7692: $FC
    cp b                                          ; $7693: $B8
    ld hl, sp-$50                                 ; $7694: $F8 $B0
    ld hl, sp+$70                                 ; $7696: $F8 $70
    ldh a, [$FF60]                                ; $7698: $F0 $60
    ldh a, [rP1]                                  ; $769A: $F0 $00
    nop                                           ; $769C: $00
    nop                                           ; $769D: $00
    nop                                           ; $769E: $00
    nop                                           ; $769F: $00
    dec d                                         ; $76A0: $15
    ld [$00FE], a                                 ; $76A1: $EA $FE $00
    cp $FC                                        ; $76A4: $FE $FC
    cp $E0                                        ; $76A6: $FE $E0
    ldh [c], a                                    ; $76A8: $E2
    ld e, h                                       ; $76A9: $5C
    ld h, d                                       ; $76AA: $62
    inc e                                         ; $76AB: $1C
    inc hl                                        ; $76AC: $23
    inc e                                         ; $76AD: $1C
    rra                                           ; $76AE: $1F
    inc bc                                        ; $76AF: $03
    ccf                                           ; $76B0: $3F
    dec e                                         ; $76B1: $1D
    ccf                                           ; $76B2: $3F
    dec e                                         ; $76B3: $1D
    rra                                           ; $76B4: $1F
    ld c, $1F                                     ; $76B5: $0E $1F
    ld c, $1F                                     ; $76B7: $0E $1F
    ld c, $0F                                     ; $76B9: $0E $0F
    ld bc, $070F                                  ; $76BB: $01 $0F $07
    rrca                                          ; $76BE: $0F
    ld b, $70                                     ; $76BF: $06 $70
    add b                                         ; $76C1: $80
    ld hl, sp+$60                                 ; $76C2: $F8 $60
    ld hl, sp-$60                                 ; $76C4: $F8 $A0
    db $FC                                        ; $76C6: $FC
    or b                                          ; $76C7: $B0
    db $FC                                        ; $76C8: $FC
    ret nc                                        ; $76C9: $D0

    cp $D8                                        ; $76CA: $FE $D8
    cp $D8                                        ; $76CC: $FE $D8
    rst RST_38                                    ; $76CE: $FF
    inc a                                         ; $76CF: $3C
    rst RST_38                                    ; $76D0: $FF
    db $FC                                        ; $76D1: $FC
    rst RST_38                                    ; $76D2: $FF
    ret nz                                        ; $76D3: $C0

    jp nc, $B22C                                  ; $76D4: $D2 $2C $B2

    ld c, h                                       ; $76D7: $4C
    cp $00                                        ; $76D8: $FE $00
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
    ld [hl], b                                    ; $76FA: $70
    nop                                           ; $76FB: $00
    ld c, b                                       ; $76FC: $48
    jr nc, jr_018_7733                            ; $76FD: $30 $34

    ld [$0001], sp                                ; $76FF: $08 $01 $00
    rlca                                          ; $7702: $07
    nop                                           ; $7703: $00
    rrca                                          ; $7704: $0F
    dec b                                         ; $7705: $05
    rrca                                          ; $7706: $0F
    dec b                                         ; $7707: $05
    rrca                                          ; $7708: $0F
    ld b, $07                                     ; $7709: $06 $07
    ld [bc], a                                    ; $770B: $02
    rlca                                          ; $770C: $07
    ld [bc], a                                    ; $770D: $02
    inc bc                                        ; $770E: $03
    ld bc, $0003                                  ; $770F: $01 $03 $00
    nop                                           ; $7712: $00
    nop                                           ; $7713: $00
    nop                                           ; $7714: $00
    nop                                           ; $7715: $00
    nop                                           ; $7716: $00
    nop                                           ; $7717: $00
    nop                                           ; $7718: $00
    nop                                           ; $7719: $00
    ld bc, $0100                                  ; $771A: $01 $00 $01
    nop                                           ; $771D: $00
    nop                                           ; $771E: $00
    nop                                           ; $771F: $00
    ld h, b                                       ; $7720: $60
    rra                                           ; $7721: $1F
    ldh a, [rIF]                                  ; $7722: $F0 $0F
    jp hl                                         ; $7724: $E9


    sub [hl]                                      ; $7725: $96
    cp $C0                                        ; $7726: $FE $C0
    db $F4                                        ; $7728: $F4
    ret z                                         ; $7729: $C8

    db $FC                                        ; $772A: $FC
    ldh [$FFFA], a                                ; $772B: $E0 $FA
    db $E4                                        ; $772D: $E4
    cp $F0                                        ; $772E: $FE $F0
    db $FD                                        ; $7730: $FD
    ld [hl], d                                    ; $7731: $72
    rst RST_38                                    ; $7732: $FF

jr_018_7733:
    ld a, b                                       ; $7733: $78
    rst RST_38                                    ; $7734: $FF
    ld a, b                                       ; $7735: $78
    ld a, h                                       ; $7736: $7C
    ld [$7088], sp                                ; $7737: $08 $88 $70
    adc b                                         ; $773A: $88
    ld [hl], b                                    ; $773B: $70
    jr nc, @-$3E                                  ; $773C: $30 $C0

    ret nz                                        ; $773E: $C0

    nop                                           ; $773F: $00
    add sp, $50                                   ; $7740: $E8 $50
    push hl                                       ; $7742: $E5
    ld e, b                                       ; $7743: $58
    jp $233D                                      ; $7744: $C3 $3D $23


    dec e                                         ; $7747: $1D
    rra                                           ; $7748: $1F
    inc bc                                        ; $7749: $03
    rrca                                          ; $774A: $0F
    rlca                                          ; $774B: $07
    rrca                                          ; $774C: $0F
    ld bc, $060F                                  ; $774D: $01 $0F $06
    rlca                                          ; $7750: $07
    ld bc, $0001                                  ; $7751: $01 $01 $00
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
    add b                                         ; $7760: $80
    nop                                           ; $7761: $00
    ldh [$FF80], a                                ; $7762: $E0 $80
    ld hl, sp-$20                                 ; $7764: $F8 $E0
    cp $F8                                        ; $7766: $FE $F8
    cp $FC                                        ; $7768: $FE $FC
    cp $FC                                        ; $776A: $FE $FC
    cp $78                                        ; $776C: $FE $78
    cp $B8                                        ; $776E: $FE $B8
    ld a, [$3934]                                 ; $7770: $FA $34 $39
    ld b, $09                                     ; $7773: $06 $09
    ld b, $05                                     ; $7775: $06 $05
    ld [bc], a                                    ; $7777: $02
    inc bc                                        ; $7778: $03
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
    ld a, $00                                     ; $7786: $3E $00
    ld a, [hl]                                    ; $7788: $7E
    inc a                                         ; $7789: $3C
    cp $7C                                        ; $778A: $FE $7C
    rst RST_38                                    ; $778C: $FF
    nop                                           ; $778D: $00
    rst RST_38                                    ; $778E: $FF
    nop                                           ; $778F: $00
    rst RST_38                                    ; $7790: $FF
    inc a                                         ; $7791: $3C
    rst RST_38                                    ; $7792: $FF
    inc a                                         ; $7793: $3C
    rst RST_38                                    ; $7794: $FF
    inc a                                         ; $7795: $3C
    rst RST_38                                    ; $7796: $FF
    nop                                           ; $7797: $00
    ld a, a                                       ; $7798: $7F
    inc a                                         ; $7799: $3C
    ld a, a                                       ; $779A: $7F
    inc a                                         ; $779B: $3C
    ld a, [hl]                                    ; $779C: $7E
    dec a                                         ; $779D: $3D
    ld a, [hl]                                    ; $779E: $7E
    dec a                                         ; $779F: $3D
    db $FD                                        ; $77A0: $FD
    ld [bc], a                                    ; $77A1: $02
    ld b, d                                       ; $77A2: $42
    dec a                                         ; $77A3: $3D
    ld a, $01                                     ; $77A4: $3E $01
    rra                                           ; $77A6: $1F
    ld [$0A1D], sp                                ; $77A7: $08 $1D $0A
    rra                                           ; $77AA: $1F
    ld [$0A1D], sp                                ; $77AB: $08 $1D $0A
    rra                                           ; $77AE: $1F
    ld [$091E], sp                                ; $77AF: $08 $1E $09
    rrca                                          ; $77B2: $0F
    inc b                                         ; $77B3: $04
    ld c, $05                                     ; $77B4: $0E $05
    rrca                                          ; $77B6: $0F
    inc b                                         ; $77B7: $04
    rrca                                          ; $77B8: $0F
    nop                                           ; $77B9: $00
    ld d, $09                                     ; $77BA: $16 $09

jr_018_77BC:
    rra                                           ; $77BC: $1F
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
    rst RST_38                                    ; $77CC: $FF
    nop                                           ; $77CD: $00
    rst RST_38                                    ; $77CE: $FF
    rst RST_38                                    ; $77CF: $FF
    rst RST_38                                    ; $77D0: $FF
    ld a, a                                       ; $77D1: $7F
    rst RST_38                                    ; $77D2: $FF
    nop                                           ; $77D3: $00
    ret nz                                        ; $77D4: $C0

    ccf                                           ; $77D5: $3F
    ret nz                                        ; $77D6: $C0

    ccf                                           ; $77D7: $3F
    ldh [$FF1F], a                                ; $77D8: $E0 $1F
    rst RST_28                                    ; $77DA: $EF
    db $10                                        ; $77DB: $10
    rst RST_38                                    ; $77DC: $FF
    rrca                                          ; $77DD: $0F
    rst RST_38                                    ; $77DE: $FF
    rrca                                          ; $77DF: $0F
    rra                                           ; $77E0: $1F
    xor $0E                                       ; $77E1: $EE $0E
    pop af                                        ; $77E3: $F1
    ld de, $E0E0                                  ; $77E4: $11 $E0 $E0
    nop                                           ; $77E7: $00
    ldh [$FFC0], a                                ; $77E8: $E0 $C0
    ldh [$FFC0], a                                ; $77EA: $E0 $C0
    ldh [$FFC0], a                                ; $77EC: $E0 $C0
    ldh [$FFC0], a                                ; $77EE: $E0 $C0
    pop af                                        ; $77F0: $F1
    ld h, b                                       ; $77F1: $60
    pop af                                        ; $77F2: $F1
    ld h, b                                       ; $77F3: $60
    pop af                                        ; $77F4: $F1
    ld h, b                                       ; $77F5: $60
    pop af                                        ; $77F6: $F1
    ld h, b                                       ; $77F7: $60
    ldh [rP1], a                                  ; $77F8: $E0 $00
    jr nz, jr_018_77BC                            ; $77FA: $20 $C0

    ldh [rP1], a                                  ; $77FC: $E0 $00
    nop                                           ; $77FE: $00
    nop                                           ; $77FF: $00
    ld a, h                                       ; $7800: $7C
    nop                                           ; $7801: $00
    ld b, h                                       ; $7802: $44
    jr c, @+$46                                   ; $7803: $38 $44

    jr c, jr_018_7886                             ; $7805: $38 $7F

    nop                                           ; $7807: $00
    ld b, a                                       ; $7808: $47
    add hl, sp                                    ; $7809: $39
    ld b, a                                       ; $780A: $47
    add hl, sp                                    ; $780B: $39
    rst RST_00                                    ; $780C: $C7
    jr c, @+$01                                   ; $780D: $38 $FF

    add b                                         ; $780F: $80
    rst RST_38                                    ; $7810: $FF
    pop af                                        ; $7811: $F1
    rst RST_38                                    ; $7812: $FF
    ld bc, $E11F                                  ; $7813: $01 $1F $E1
    rra                                           ; $7816: $1F
    ldh [$FF3F], a                                ; $7817: $E0 $3F
    pop bc                                        ; $7819: $C1
    cp a                                          ; $781A: $BF
    ld b, c                                       ; $781B: $41
    ei                                            ; $781C: $FB
    add l                                         ; $781D: $85
    ei                                            ; $781E: $FB
    add l                                         ; $781F: $85
    rla                                           ; $7820: $17
    add sp, $08                                   ; $7821: $E8 $08
    rst RST_30                                    ; $7823: $F7
    rrca                                          ; $7824: $0F
    ldh a, [rIE]                                  ; $7825: $F0 $FF
    ld [bc], a                                    ; $7827: $02
    rst RST_30                                    ; $7828: $F7
    ld l, d                                       ; $7829: $6A
    rst RST_38                                    ; $782A: $FF
    ld h, d                                       ; $782B: $62

Jump_018_782C:
    rst RST_30                                    ; $782C: $F7
    ld l, d                                       ; $782D: $6A
    rst RST_38                                    ; $782E: $FF
    ld h, d                                       ; $782F: $62
    rst RST_28                                    ; $7830: $EF
    jp nc, $C4FE                                  ; $7831: $D2 $FE $C4

    xor $D4                                       ; $7834: $EE $D4
    cp $C4                                        ; $7836: $FE $C4
    cp $00                                        ; $7838: $FE $00
    adc l                                         ; $783A: $8D
    ld [hl], d                                    ; $783B: $72
    rst RST_38                                    ; $783C: $FF
    nop                                           ; $783D: $00
    nop                                           ; $783E: $00
    nop                                           ; $783F: $00
    ldh [rP1], a                                  ; $7840: $E0 $00
    ldh a, [$FFE0]                                ; $7842: $F0 $E0
    ld hl, sp-$10                                 ; $7844: $F8 $F0
    ld hl, sp+$00                                 ; $7846: $F8 $00
    ld hl, sp+$00                                 ; $7848: $F8 $00
    ld hl, sp-$20                                 ; $784A: $F8 $E0
    ld hl, sp-$20                                 ; $784C: $F8 $E0
    ld hl, sp-$20                                 ; $784E: $F8 $E0
    ld hl, sp+$00                                 ; $7850: $F8 $00
    ldh a, [$FFE0]                                ; $7852: $F0 $E0
    ldh a, [$FFE0]                                ; $7854: $F0 $E0
    ldh a, [$FFE0]                                ; $7856: $F0 $E0
    ldh a, [$FFE0]                                ; $7858: $F0 $E0
    ldh a, [rP1]                                  ; $785A: $F0 $00
    db $10                                        ; $785C: $10
    ldh [$FFE0], a                                ; $785D: $E0 $E0
    nop                                           ; $785F: $00
    nop                                           ; $7860: $00
    nop                                           ; $7861: $00
    nop                                           ; $7862: $00
    nop                                           ; $7863: $00
    inc e                                         ; $7864: $1C
    nop                                           ; $7865: $00
    ld [hl+], a                                   ; $7866: $22
    inc e                                         ; $7867: $1C
    ld b, a                                       ; $7868: $47
    jr c, jr_018_78AB                             ; $7869: $38 $40

    ccf                                           ; $786B: $3F
    ld e, [hl]                                    ; $786C: $5E
    ld hl, $1E7F                                  ; $786D: $21 $7F $1E
    ld a, a                                       ; $7870: $7F
    rrca                                          ; $7871: $0F
    ld a, a                                       ; $7872: $7F
    db $10                                        ; $7873: $10
    ccf                                           ; $7874: $3F
    ld d, $3F                                     ; $7875: $16 $3F
    ld d, $3F                                     ; $7877: $16 $3F
    ld d, $3F                                     ; $7879: $16 $3F
    ld d, $1F                                     ; $787B: $16 $1F
    ld b, $1F                                     ; $787D: $06 $1F
    ld b, $08                                     ; $787F: $06 $08
    ldh a, [$FFE8]                                ; $7881: $F0 $E8
    db $10                                        ; $7883: $10
    ld hl, sp-$20                                 ; $7884: $F8 $E0

jr_018_7886:
    ld hl, sp-$10                                 ; $7886: $F8 $F0
    rst RST_38                                    ; $7888: $FF
    nop                                           ; $7889: $00
    rst RST_38                                    ; $788A: $FF
    ld h, e                                       ; $788B: $63
    rst RST_38                                    ; $788C: $FF
    ld l, e                                       ; $788D: $6B
    rst RST_38                                    ; $788E: $FF
    ld l, e                                       ; $788F: $6B
    rst RST_38                                    ; $7890: $FF
    ld l, e                                       ; $7891: $6B
    rst RST_38                                    ; $7892: $FF
    ld l, e                                       ; $7893: $6B
    rst RST_38                                    ; $7894: $FF
    ld l, e                                       ; $7895: $6B
    rst RST_38                                    ; $7896: $FF
    ld l, e                                       ; $7897: $6B
    ld a, a                                       ; $7898: $7F
    ld [$071F], sp                                ; $7899: $08 $1F $07
    rra                                           ; $789C: $1F
    ld c, $1F                                     ; $789D: $0E $1F
    nop                                           ; $789F: $00
    db $FC                                        ; $78A0: $FC
    xor e                                         ; $78A1: $AB
    db $FC                                        ; $78A2: $FC
    and e                                         ; $78A3: $A3
    ei                                            ; $78A4: $FB
    and h                                         ; $78A5: $A4
    ld hl, sp-$59                                 ; $78A6: $F8 $A7
    rst RST_38                                    ; $78A8: $FF
    xor b                                         ; $78A9: $A8
    rst RST_38                                    ; $78AA: $FF

jr_018_78AB:
    xor a                                         ; $78AB: $AF
    rst RST_38                                    ; $78AC: $FF
    add b                                         ; $78AD: $80
    rst RST_38                                    ; $78AE: $FF
    ld l, a                                       ; $78AF: $6F
    rst RST_38                                    ; $78B0: $FF
    rrca                                          ; $78B1: $0F
    rst RST_38                                    ; $78B2: $FF
    nop                                           ; $78B3: $00
    ld [hl], h                                    ; $78B4: $74
    dec bc                                        ; $78B5: $0B
    rrca                                          ; $78B6: $0F
    nop                                           ; $78B7: $00
    rrca                                          ; $78B8: $0F
    rlca                                          ; $78B9: $07
    rla                                           ; $78BA: $17
    dec bc                                        ; $78BB: $0B
    inc de                                        ; $78BC: $13
    dec c                                         ; $78BD: $0D
    ld hl, $1E1E                                  ; $78BE: $21 $1E $1E
    db $EB                                        ; $78C1: $EB
    rra                                           ; $78C2: $1F
    ldh [$FFEC], a                                ; $78C3: $E0 $EC
    inc de                                        ; $78C5: $13
    inc c                                         ; $78C6: $0C
    di                                            ; $78C7: $F3
    db $FC                                        ; $78C8: $FC
    inc bc                                        ; $78C9: $03
    db $FC                                        ; $78CA: $FC
    ei                                            ; $78CB: $FB
    db $FC                                        ; $78CC: $FC
    inc bc                                        ; $78CD: $03
    db $FC                                        ; $78CE: $FC
    ei                                            ; $78CF: $FB
    db $FC                                        ; $78D0: $FC
    ei                                            ; $78D1: $FB
    db $FC                                        ; $78D2: $FC
    inc bc                                        ; $78D3: $03
    rla                                           ; $78D4: $17
    add sp, -$05                                  ; $78D5: $E8 $FB
    nop                                           ; $78D7: $00
    ld hl, sp-$10                                 ; $78D8: $F8 $F0
    db $F4                                        ; $78DA: $F4
    add sp, -$1C                                  ; $78DB: $E8 $E4
    ret c                                         ; $78DD: $D8

    jp nz, $9F3C                                  ; $78DE: $C2 $3C $9F

    ld h, [hl]                                    ; $78E1: $66
    rra                                           ; $78E2: $1F
    and $FF                                       ; $78E3: $E6 $FF
    ld d, $FF                                     ; $78E5: $16 $FF
    halt                                          ; $78E7: $76
    rst RST_38                                    ; $78E8: $FF
    ld [bc], a                                    ; $78E9: $02
    rst RST_38                                    ; $78EA: $FF
    ld [hl], h                                    ; $78EB: $74
    ld a, a                                       ; $78EC: $7F
    or b                                          ; $78ED: $B0
    ld a, b                                       ; $78EE: $78
    add b                                         ; $78EF: $80
    ld a, b                                       ; $78F0: $78
    or b                                          ; $78F1: $B0
    ld a, b                                       ; $78F2: $78
    or b                                          ; $78F3: $B0
    ld a, b                                       ; $78F4: $78
    or b                                          ; $78F5: $B0
    ld a, b                                       ; $78F6: $78
    or b                                          ; $78F7: $B0
    ld a, b                                       ; $78F8: $78
    or b                                          ; $78F9: $B0
    ld a, b                                       ; $78FA: $78
    or b                                          ; $78FB: $B0
    ld hl, sp+$00                                 ; $78FC: $F8 $00
    ret nz                                        ; $78FE: $C0

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
    rst RST_38                                    ; $7918: $FF
    nop                                           ; $7919: $00
    ld a, [$FC65]                                 ; $791A: $FA $65 $FC
    ld h, e                                       ; $791D: $63
    db $FC                                        ; $791E: $FC
    ld l, e                                       ; $791F: $6B
    nop                                           ; $7920: $00
    nop                                           ; $7921: $00
    rlca                                          ; $7922: $07
    nop                                           ; $7923: $00
    ld b, $03                                     ; $7924: $06 $03
    ld b, $03                                     ; $7926: $06 $03
    ld b, $03                                     ; $7928: $06 $03
    ld b, $03                                     ; $792A: $06 $03
    rlca                                          ; $792C: $07
    ld [bc], a                                    ; $792D: $02
    ld c, $01                                     ; $792E: $0E $01
    dec bc                                        ; $7930: $0B
    inc b                                         ; $7931: $04
    inc c                                         ; $7932: $0C
    inc bc                                        ; $7933: $03
    rlca                                          ; $7934: $07
    nop                                           ; $7935: $00
    inc b                                         ; $7936: $04
    inc bc                                        ; $7937: $03
    rst RST_38                                    ; $7938: $FF
    nop                                           ; $7939: $00
    inc l                                         ; $793A: $2C
    db $D3                                        ; $793B: $D3

jr_018_793C:
    rra                                           ; $793C: $1F
    ldh [rNR34], a                                ; $793D: $E0 $1E
    db $EB                                        ; $793F: $EB
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
    add b                                         ; $794A: $80
    nop                                           ; $794B: $00
    add b                                         ; $794C: $80
    nop                                           ; $794D: $00
    add b                                         ; $794E: $80
    nop                                           ; $794F: $00
    add b                                         ; $7950: $80
    nop                                           ; $7951: $00
    add b                                         ; $7952: $80
    nop                                           ; $7953: $00
    add b                                         ; $7954: $80
    nop                                           ; $7955: $00
    ld b, b                                       ; $7956: $40
    add b                                         ; $7957: $80
    and b                                         ; $7958: $A0
    ld b, b                                       ; $7959: $40
    jr jr_018_793C                                ; $795A: $18 $E0

    sbc h                                         ; $795C: $9C
    ld h, b                                       ; $795D: $60
    ld e, $E4                                     ; $795E: $1E $E4
    ld de, $210E                                  ; $7960: $11 $0E $21
    ld e, $FE                                     ; $7963: $1E $FE
    nop                                           ; $7965: $00
    cp a                                          ; $7966: $BF
    ld e, [hl]                                    ; $7967: $5E
    rst RST_38                                    ; $7968: $FF
    ld e, $BF                                     ; $7969: $1E $BF
    ld e, [hl]                                    ; $796B: $5E
    cp $3C                                        ; $796C: $FE $3C
    ld a, [hl]                                    ; $796E: $7E
    cp h                                          ; $796F: $BC
    cp $3C                                        ; $7970: $FE $3C
    cp $3C                                        ; $7972: $FE $3C
    db $FC                                        ; $7974: $FC
    ld a, b                                       ; $7975: $78
    db $FC                                        ; $7976: $FC
    ld h, b                                       ; $7977: $60
    db $FC                                        ; $7978: $FC
    ld l, b                                       ; $7979: $68
    db $FC                                        ; $797A: $FC
    nop                                           ; $797B: $00
    ld [$F8F0], sp                                ; $797C: $08 $F0 $F8
    nop                                           ; $797F: $00
    adc b                                         ; $7980: $88
    ld [hl], b                                    ; $7981: $70
    add h                                         ; $7982: $84
    ld a, b                                       ; $7983: $78
    ld a, a                                       ; $7984: $7F
    nop                                           ; $7985: $00
    db $FD                                        ; $7986: $FD
    ld a, d                                       ; $7987: $7A
    rst RST_38                                    ; $7988: $FF
    ld a, b                                       ; $7989: $78
    db $FD                                        ; $798A: $FD
    ld a, d                                       ; $798B: $7A
    ld a, a                                       ; $798C: $7F
    inc a                                         ; $798D: $3C
    ld a, [hl]                                    ; $798E: $7E
    dec a                                         ; $798F: $3D
    ld a, a                                       ; $7990: $7F
    inc a                                         ; $7991: $3C
    ld a, a                                       ; $7992: $7F
    inc a                                         ; $7993: $3C
    ccf                                           ; $7994: $3F
    ld e, $3F                                     ; $7995: $1E $3F
    ld b, $3F                                     ; $7997: $06 $3F
    ld d, $3F                                     ; $7999: $16 $3F
    nop                                           ; $799B: $00
    db $10                                        ; $799C: $10
    rrca                                          ; $799D: $0F
    rra                                           ; $799E: $1F
    nop                                           ; $799F: $00
    ld bc, $0100                                  ; $79A0: $01 $00 $01
    nop                                           ; $79A3: $00
    ld bc, $0100                                  ; $79A4: $01 $00 $01
    nop                                           ; $79A7: $00
    inc bc                                        ; $79A8: $03
    nop                                           ; $79A9: $00
    ld [bc], a                                    ; $79AA: $02
    ld bc, $0003                                  ; $79AB: $01 $03 $00
    ld [bc], a                                    ; $79AE: $02
    ld bc, $0003                                  ; $79AF: $01 $03 $00
    ld [bc], a                                    ; $79B2: $02
    ld bc, $0003                                  ; $79B3: $01 $03 $00
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
    add b                                         ; $79C0: $80
    nop                                           ; $79C1: $00
    add b                                         ; $79C2: $80
    nop                                           ; $79C3: $00
    add b                                         ; $79C4: $80
    nop                                           ; $79C5: $00
    add b                                         ; $79C6: $80
    nop                                           ; $79C7: $00
    ret nz                                        ; $79C8: $C0

    nop                                           ; $79C9: $00
    ld b, b                                       ; $79CA: $40
    add b                                         ; $79CB: $80
    ret nz                                        ; $79CC: $C0

    nop                                           ; $79CD: $00
    ld b, b                                       ; $79CE: $40
    add b                                         ; $79CF: $80
    ret nz                                        ; $79D0: $C0

    nop                                           ; $79D1: $00
    ld b, b                                       ; $79D2: $40
    add b                                         ; $79D3: $80
    ret nz                                        ; $79D4: $C0

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
    ld [$E8F0], sp                                ; $79E0: $08 $F0 $E8
    db $10                                        ; $79E3: $10
    ld hl, sp-$20                                 ; $79E4: $F8 $E0
    ld hl, sp-$10                                 ; $79E6: $F8 $F0
    rst RST_38                                    ; $79E8: $FF
    nop                                           ; $79E9: $00
    rst RST_38                                    ; $79EA: $FF
    ld h, e                                       ; $79EB: $63
    rst RST_38                                    ; $79EC: $FF
    ld l, e                                       ; $79ED: $6B
    rst RST_38                                    ; $79EE: $FF
    ld l, e                                       ; $79EF: $6B
    rst RST_38                                    ; $79F0: $FF
    ld l, e                                       ; $79F1: $6B
    rst RST_38                                    ; $79F2: $FF
    ld l, e                                       ; $79F3: $6B
    rst RST_38                                    ; $79F4: $FF
    ld l, e                                       ; $79F5: $6B
    rst RST_38                                    ; $79F6: $FF
    ld l, e                                       ; $79F7: $6B
    ld a, a                                       ; $79F8: $7F
    ld [$071F], sp                                ; $79F9: $08 $1F $07
    rra                                           ; $79FC: $1F
    ld c, $1F                                     ; $79FD: $0E $1F
    nop                                           ; $79FF: $00
    nop                                           ; $7A00: $00
    nop                                           ; $7A01: $00
    nop                                           ; $7A02: $00
    nop                                           ; $7A03: $00
    inc e                                         ; $7A04: $1C
    nop                                           ; $7A05: $00
    ld [hl+], a                                   ; $7A06: $22
    inc e                                         ; $7A07: $1C
    ld b, a                                       ; $7A08: $47
    jr c, jr_018_7A4B                             ; $7A09: $38 $40

    ccf                                           ; $7A0B: $3F
    ld e, [hl]                                    ; $7A0C: $5E
    ld hl, $1E7F                                  ; $7A0D: $21 $7F $1E
    ld a, a                                       ; $7A10: $7F
    rrca                                          ; $7A11: $0F
    ld a, a                                       ; $7A12: $7F
    db $10                                        ; $7A13: $10
    ccf                                           ; $7A14: $3F
    ld d, $3F                                     ; $7A15: $16 $3F
    ld d, $3F                                     ; $7A17: $16 $3F
    ld d, $3F                                     ; $7A19: $16 $3F
    ld d, $1F                                     ; $7A1B: $16 $1F
    ld b, $1F                                     ; $7A1D: $06 $1F
    ld b, $FC                                     ; $7A1F: $06 $FC
    ld l, e                                       ; $7A21: $6B
    db $FC                                        ; $7A22: $FC
    xor e                                         ; $7A23: $AB
    db $FC                                        ; $7A24: $FC
    and e                                         ; $7A25: $A3
    ei                                            ; $7A26: $FB
    and h                                         ; $7A27: $A4
    ld hl, sp-$59                                 ; $7A28: $F8 $A7
    rst RST_38                                    ; $7A2A: $FF
    xor b                                         ; $7A2B: $A8
    rst RST_38                                    ; $7A2C: $FF
    xor a                                         ; $7A2D: $AF
    rst RST_38                                    ; $7A2E: $FF
    add b                                         ; $7A2F: $80
    rst RST_38                                    ; $7A30: $FF
    ld l, a                                       ; $7A31: $6F
    rst RST_38                                    ; $7A32: $FF
    rrca                                          ; $7A33: $0F
    rst RST_38                                    ; $7A34: $FF
    nop                                           ; $7A35: $00
    ld a, a                                       ; $7A36: $7F
    nop                                           ; $7A37: $00
    rrca                                          ; $7A38: $0F
    rlca                                          ; $7A39: $07
    rla                                           ; $7A3A: $17
    dec bc                                        ; $7A3B: $0B
    inc de                                        ; $7A3C: $13
    dec c                                         ; $7A3D: $0D
    ld hl, $1E1E                                  ; $7A3E: $21 $1E $1E
    db $EB                                        ; $7A41: $EB
    ld e, $EB                                     ; $7A42: $1E $EB
    rra                                           ; $7A44: $1F
    ldh [$FFEC], a                                ; $7A45: $E0 $EC
    inc de                                        ; $7A47: $13
    inc c                                         ; $7A48: $0C
    di                                            ; $7A49: $F3
    db $FC                                        ; $7A4A: $FC

jr_018_7A4B:
    inc bc                                        ; $7A4B: $03
    db $FC                                        ; $7A4C: $FC
    ei                                            ; $7A4D: $FB
    db $FC                                        ; $7A4E: $FC
    inc bc                                        ; $7A4F: $03
    db $FC                                        ; $7A50: $FC
    ei                                            ; $7A51: $FB
    db $FC                                        ; $7A52: $FC
    ei                                            ; $7A53: $FB
    db $FC                                        ; $7A54: $FC
    inc bc                                        ; $7A55: $03
    rst RST_38                                    ; $7A56: $FF
    nop                                           ; $7A57: $00
    ei                                            ; $7A58: $FB
    ldh a, [$FFF4]                                ; $7A59: $F0 $F4
    add sp, -$1C                                  ; $7A5B: $E8 $E4
    ret c                                         ; $7A5D: $D8

    jp nz, $9F3C                                  ; $7A5E: $C2 $3C $9F

    ld h, [hl]                                    ; $7A61: $66
    rra                                           ; $7A62: $1F
    and $FF                                       ; $7A63: $E6 $FF
    ld d, $FF                                     ; $7A65: $16 $FF
    halt                                          ; $7A67: $76
    rst RST_38                                    ; $7A68: $FF
    ld [bc], a                                    ; $7A69: $02
    rst RST_38                                    ; $7A6A: $FF
    ld [hl], h                                    ; $7A6B: $74
    ld a, a                                       ; $7A6C: $7F
    or b                                          ; $7A6D: $B0
    ld a, b                                       ; $7A6E: $78
    add b                                         ; $7A6F: $80
    ld a, b                                       ; $7A70: $78
    or b                                          ; $7A71: $B0
    ld a, b                                       ; $7A72: $78
    or b                                          ; $7A73: $B0
    ld a, b                                       ; $7A74: $78
    or b                                          ; $7A75: $B0
    ld a, b                                       ; $7A76: $78
    or b                                          ; $7A77: $B0
    ld a, b                                       ; $7A78: $78
    or b                                          ; $7A79: $B0
    ld a, b                                       ; $7A7A: $78
    or b                                          ; $7A7B: $B0
    ld hl, sp+$00                                 ; $7A7C: $F8 $00
    ret nz                                        ; $7A7E: $C0

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
    rst RST_38                                    ; $7A9A: $FF
    nop                                           ; $7A9B: $00
    ld a, [$FC65]                                 ; $7A9C: $FA $65 $FC
    ld h, e                                       ; $7A9F: $63
    nop                                           ; $7AA0: $00
    nop                                           ; $7AA1: $00
    nop                                           ; $7AA2: $00
    nop                                           ; $7AA3: $00
    rlca                                          ; $7AA4: $07
    nop                                           ; $7AA5: $00
    ld b, $03                                     ; $7AA6: $06 $03
    ld b, $03                                     ; $7AA8: $06 $03
    ld b, $03                                     ; $7AAA: $06 $03
    ld b, $03                                     ; $7AAC: $06 $03
    rlca                                          ; $7AAE: $07
    ld [bc], a                                    ; $7AAF: $02

jr_018_7AB0:
    ld c, $01                                     ; $7AB0: $0E $01
    dec bc                                        ; $7AB2: $0B
    inc b                                         ; $7AB3: $04
    inc c                                         ; $7AB4: $0C
    inc bc                                        ; $7AB5: $03
    rlca                                          ; $7AB6: $07
    nop                                           ; $7AB7: $00
    inc b                                         ; $7AB8: $04
    inc bc                                        ; $7AB9: $03
    rst RST_38                                    ; $7ABA: $FF
    nop                                           ; $7ABB: $00

jr_018_7ABC:
    inc l                                         ; $7ABC: $2C
    db $D3                                        ; $7ABD: $D3
    rra                                           ; $7ABE: $1F
    ldh [rP1], a                                  ; $7ABF: $E0 $00
    nop                                           ; $7AC1: $00
    nop                                           ; $7AC2: $00
    nop                                           ; $7AC3: $00
    nop                                           ; $7AC4: $00
    nop                                           ; $7AC5: $00
    nop                                           ; $7AC6: $00
    nop                                           ; $7AC7: $00
    nop                                           ; $7AC8: $00
    nop                                           ; $7AC9: $00
    add b                                         ; $7ACA: $80
    nop                                           ; $7ACB: $00
    add b                                         ; $7ACC: $80
    nop                                           ; $7ACD: $00
    add b                                         ; $7ACE: $80
    nop                                           ; $7ACF: $00
    add b                                         ; $7AD0: $80
    nop                                           ; $7AD1: $00
    add b                                         ; $7AD2: $80
    nop                                           ; $7AD3: $00
    add b                                         ; $7AD4: $80
    nop                                           ; $7AD5: $00
    ld b, b                                       ; $7AD6: $40
    add b                                         ; $7AD7: $80
    and b                                         ; $7AD8: $A0
    ld b, b                                       ; $7AD9: $40
    jr jr_018_7ABC                                ; $7ADA: $18 $E0

    sbc h                                         ; $7ADC: $9C
    ld h, b                                       ; $7ADD: $60
    ld e, $E4                                     ; $7ADE: $1E $E4
    nop                                           ; $7AE0: $00
    nop                                           ; $7AE1: $00
    add b                                         ; $7AE2: $80
    nop                                           ; $7AE3: $00
    add b                                         ; $7AE4: $80
    nop                                           ; $7AE5: $00
    add b                                         ; $7AE6: $80
    nop                                           ; $7AE7: $00
    ld b, b                                       ; $7AE8: $40
    add b                                         ; $7AE9: $80
    ret nz                                        ; $7AEA: $C0

    add b                                         ; $7AEB: $80
    and b                                         ; $7AEC: $A0
    ret nz                                        ; $7AED: $C0

    jr nz, jr_018_7AB0                            ; $7AEE: $20 $C0

    db $10                                        ; $7AF0: $10
    ldh [$FFA8], a                                ; $7AF1: $E0 $A8
    ret nc                                        ; $7AF3: $D0

    ret c                                         ; $7AF4: $D8

    jr nc, @-$06                                  ; $7AF5: $30 $F8

    ldh [$FFE4], a                                ; $7AF7: $E0 $E4
    jr jr_018_7B5F                                ; $7AF9: $18 $64

    jr c, jr_018_7B5F                             ; $7AFB: $38 $62

    inc a                                         ; $7AFD: $3C
    scf                                           ; $7AFE: $37
    jr jr_018_7B01                                ; $7AFF: $18 $00

jr_018_7B01:
    nop                                           ; $7B01: $00
    nop                                           ; $7B02: $00
    nop                                           ; $7B03: $00
    nop                                           ; $7B04: $00
    nop                                           ; $7B05: $00
    nop                                           ; $7B06: $00
    nop                                           ; $7B07: $00
    rrca                                          ; $7B08: $0F
    nop                                           ; $7B09: $00
    rra                                           ; $7B0A: $1F
    nop                                           ; $7B0B: $00
    rra                                           ; $7B0C: $1F
    nop                                           ; $7B0D: $00
    ld c, $01                                     ; $7B0E: $0E $01
    inc c                                         ; $7B10: $0C
    rlca                                          ; $7B11: $07
    ld b, $03                                     ; $7B12: $06 $03
    rlca                                          ; $7B14: $07
    inc bc                                        ; $7B15: $03
    inc bc                                        ; $7B16: $03
    ld bc, $0103                                  ; $7B17: $01 $03 $01
    ld bc, $0100                                  ; $7B1A: $01 $00 $01
    nop                                           ; $7B1D: $00
    ld bc, $0300                                  ; $7B1E: $01 $00 $03
    nop                                           ; $7B21: $00
    rlca                                          ; $7B22: $07
    inc bc                                        ; $7B23: $03
    rrca                                          ; $7B24: $0F
    ld b, $1F                                     ; $7B25: $06 $1F
    ld c, $FF                                     ; $7B27: $0E $FF
    nop                                           ; $7B29: $00

jr_018_7B2A:
    rst RST_38                                    ; $7B2A: $FF
    rst RST_18                                    ; $7B2B: $DF

jr_018_7B2C:
    rst RST_38                                    ; $7B2C: $FF
    cp a                                          ; $7B2D: $BF
    rst RST_38                                    ; $7B2E: $FF
    add b                                         ; $7B2F: $80
    rst RST_38                                    ; $7B30: $FF
    rra                                           ; $7B31: $1F
    ccf                                           ; $7B32: $3F
    rst RST_18                                    ; $7B33: $DF
    rst RST_38                                    ; $7B34: $FF
    rra                                           ; $7B35: $1F
    sbc a                                         ; $7B36: $9F
    ld l, a                                       ; $7B37: $6F
    rst RST_38                                    ; $7B38: $FF
    nop                                           ; $7B39: $00
    nop                                           ; $7B3A: $00
    nop                                           ; $7B3B: $00
    nop                                           ; $7B3C: $00
    nop                                           ; $7B3D: $00
    nop                                           ; $7B3E: $00
    nop                                           ; $7B3F: $00
    ld a, h                                       ; $7B40: $7C
    inc bc                                        ; $7B41: $03
    ld h, h                                       ; $7B42: $64
    dec de                                        ; $7B43: $1B
    dec [hl]                                      ; $7B44: $35
    ld a, [bc]                                    ; $7B45: $0A
    ccf                                           ; $7B46: $3F
    nop                                           ; $7B47: $00
    ld de, $0D0E                                  ; $7B48: $11 $0E $0D
    ld [bc], a                                    ; $7B4B: $02
    ld c, $05                                     ; $7B4C: $0E $05
    ld c, $05                                     ; $7B4E: $0E $05
    rla                                           ; $7B50: $17
    ld c, $17                                     ; $7B51: $0E $17
    ld c, $EF                                     ; $7B53: $0E $EF
    db $10                                        ; $7B55: $10
    rst RST_28                                    ; $7B56: $EF
    rla                                           ; $7B57: $17
    rst RST_18                                    ; $7B58: $DF
    cpl                                           ; $7B59: $2F
    rst RST_18                                    ; $7B5A: $DF
    cpl                                           ; $7B5B: $2F
    rst RST_38                                    ; $7B5C: $FF
    nop                                           ; $7B5D: $00
    rst RST_38                                    ; $7B5E: $FF

jr_018_7B5F:
    rst RST_30                                    ; $7B5F: $F7
    add b                                         ; $7B60: $80
    nop                                           ; $7B61: $00
    ldh [rP1], a                                  ; $7B62: $E0 $00
    ld h, b                                       ; $7B64: $60
    add b                                         ; $7B65: $80
    and b                                         ; $7B66: $A0
    ld b, b                                       ; $7B67: $40
    jr nz, jr_018_7B2A                            ; $7B68: $20 $C0

    jr nz, jr_018_7B2C                            ; $7B6A: $20 $C0

    db $10                                        ; $7B6C: $10
    ldh [$FF90], a                                ; $7B6D: $E0 $90
    ld h, b                                       ; $7B6F: $60
    sub b                                         ; $7B70: $90
    ld h, b                                       ; $7B71: $60
    ld c, b                                       ; $7B72: $48
    or b                                          ; $7B73: $B0
    ld a, a                                       ; $7B74: $7F
    add b                                         ; $7B75: $80
    rst RST_38                                    ; $7B76: $FF
    nop                                           ; $7B77: $00
    rst RST_38                                    ; $7B78: $FF
    cp [hl]                                       ; $7B79: $BE
    rst RST_38                                    ; $7B7A: $FF
    ld a, [hl]                                    ; $7B7B: $7E
    rst RST_38                                    ; $7B7C: $FF
    ld a, [hl]                                    ; $7B7D: $7E
    rst RST_38                                    ; $7B7E: $FF
    nop                                           ; $7B7F: $00
    nop                                           ; $7B80: $00
    nop                                           ; $7B81: $00
    ldh a, [rP1]                                  ; $7B82: $F0 $00
    ld hl, sp-$10                                 ; $7B84: $F8 $F0
    ld hl, sp-$10                                 ; $7B86: $F8 $F0
    ld hl, sp-$10                                 ; $7B88: $F8 $F0
    cp $F0                                        ; $7B8A: $FE $F0
    rst RST_38                                    ; $7B8C: $FF
    ld c, $FF                                     ; $7B8D: $0E $FF
    cp [hl]                                       ; $7B8F: $BE
    rst RST_38                                    ; $7B90: $FF
    cp [hl]                                       ; $7B91: $BE
    rst RST_38                                    ; $7B92: $FF
    cp h                                          ; $7B93: $BC
    rst RST_38                                    ; $7B94: $FF
    cp b                                          ; $7B95: $B8
    db $FD                                        ; $7B96: $FD
    ld [bc], a                                    ; $7B97: $02
    ld d, a                                       ; $7B98: $57
    xor b                                         ; $7B99: $A8
    rst RST_08                                    ; $7B9A: $CF
    jr nc, jr_018_7BCF                            ; $7B9B: $30 $32

    call z, Call_000_00FC                         ; $7B9D: $CC $FC $00
    rst RST_38                                    ; $7BA0: $FF
    rst RST_28                                    ; $7BA1: $EF
    rst RST_38                                    ; $7BA2: $FF
    rrca                                          ; $7BA3: $0F
    rst RST_38                                    ; $7BA4: $FF
    ldh [rIE], a                                  ; $7BA5: $E0 $FF
    ldh [$FFF0], a                                ; $7BA7: $E0 $F0
    rst RST_28                                    ; $7BA9: $EF
    rst RST_38                                    ; $7BAA: $FF
    ldh a, [$FFF8]                                ; $7BAB: $F0 $F8
    rlca                                          ; $7BAD: $07
    rrca                                          ; $7BAE: $0F
    nop                                           ; $7BAF: $00
    nop                                           ; $7BB0: $00
    nop                                           ; $7BB1: $00
    nop                                           ; $7BB2: $00
    nop                                           ; $7BB3: $00
    nop                                           ; $7BB4: $00
    nop                                           ; $7BB5: $00
    nop                                           ; $7BB6: $00
    nop                                           ; $7BB7: $00
    nop                                           ; $7BB8: $00
    nop                                           ; $7BB9: $00
    nop                                           ; $7BBA: $00
    nop                                           ; $7BBB: $00
    nop                                           ; $7BBC: $00
    nop                                           ; $7BBD: $00
    nop                                           ; $7BBE: $00
    nop                                           ; $7BBF: $00
    rst RST_38                                    ; $7BC0: $FF
    cp a                                          ; $7BC1: $BF
    rst RST_38                                    ; $7BC2: $FF
    ld a, a                                       ; $7BC3: $7F
    rst RST_38                                    ; $7BC4: $FF
    ld a, a                                       ; $7BC5: $7F
    rst RST_38                                    ; $7BC6: $FF
    ld a, a                                       ; $7BC7: $7F
    rst RST_38                                    ; $7BC8: $FF
    nop                                           ; $7BC9: $00
    push de                                       ; $7BCA: $D5
    ld a, [hl+]                                   ; $7BCB: $2A
    call z, Call_018_7333                         ; $7BCC: $CC $33 $73

jr_018_7BCF:
    adc h                                         ; $7BCF: $8C
    rst RST_38                                    ; $7BD0: $FF
    nop                                           ; $7BD1: $00
    nop                                           ; $7BD2: $00
    nop                                           ; $7BD3: $00
    nop                                           ; $7BD4: $00
    nop                                           ; $7BD5: $00
    nop                                           ; $7BD6: $00
    nop                                           ; $7BD7: $00
    nop                                           ; $7BD8: $00
    nop                                           ; $7BD9: $00
    nop                                           ; $7BDA: $00
    nop                                           ; $7BDB: $00
    nop                                           ; $7BDC: $00
    nop                                           ; $7BDD: $00
    nop                                           ; $7BDE: $00
    nop                                           ; $7BDF: $00
    ld bc, $0300                                  ; $7BE0: $01 $00 $03
    ld bc, $0103                                  ; $7BE3: $01 $03 $01
    inc bc                                        ; $7BE6: $03
    nop                                           ; $7BE7: $00
    ld bc, $0100                                  ; $7BE8: $01 $00 $01
    nop                                           ; $7BEB: $00
    nop                                           ; $7BEC: $00
    nop                                           ; $7BED: $00
    nop                                           ; $7BEE: $00
    nop                                           ; $7BEF: $00
    nop                                           ; $7BF0: $00
    nop                                           ; $7BF1: $00
    nop                                           ; $7BF2: $00
    nop                                           ; $7BF3: $00
    nop                                           ; $7BF4: $00
    nop                                           ; $7BF5: $00
    nop                                           ; $7BF6: $00
    nop                                           ; $7BF7: $00
    nop                                           ; $7BF8: $00
    nop                                           ; $7BF9: $00
    nop                                           ; $7BFA: $00
    nop                                           ; $7BFB: $00
    nop                                           ; $7BFC: $00
    nop                                           ; $7BFD: $00
    nop                                           ; $7BFE: $00
    nop                                           ; $7BFF: $00
    nop                                           ; $7C00: $00
    nop                                           ; $7C01: $00
    nop                                           ; $7C02: $00
    nop                                           ; $7C03: $00
    ret nz                                        ; $7C04: $C0

    nop                                           ; $7C05: $00
    ldh [rP1], a                                  ; $7C06: $E0 $00
    ldh [rP1], a                                  ; $7C08: $E0 $00
    and b                                         ; $7C0A: $A0
    ld b, b                                       ; $7C0B: $40
    db $10                                        ; $7C0C: $10
    ldh [$FFB0], a                                ; $7C0D: $E0 $B0
    ldh [$FFE8], a                                ; $7C0F: $E0 $E8
    ldh a, [$FFC8]                                ; $7C11: $F0 $C8
    ld [hl], b                                    ; $7C13: $70
    call nz, Call_018_6A78                        ; $7C14: $C4 $78 $6A
    inc [hl]                                      ; $7C17: $34
    halt                                          ; $7C18: $76
    inc c                                         ; $7C19: $0C
    ld a, [hl]                                    ; $7C1A: $7E
    jr c, jr_018_7C56                             ; $7C1B: $38 $39

    ld b, $1B                                     ; $7C1D: $06 $1B
    inc c                                         ; $7C1F: $0C
    nop                                           ; $7C20: $00
    nop                                           ; $7C21: $00
    nop                                           ; $7C22: $00
    nop                                           ; $7C23: $00
    nop                                           ; $7C24: $00
    nop                                           ; $7C25: $00
    nop                                           ; $7C26: $00
    nop                                           ; $7C27: $00
    nop                                           ; $7C28: $00
    nop                                           ; $7C29: $00
    nop                                           ; $7C2A: $00
    nop                                           ; $7C2B: $00
    nop                                           ; $7C2C: $00
    nop                                           ; $7C2D: $00
    nop                                           ; $7C2E: $00
    nop                                           ; $7C2F: $00
    nop                                           ; $7C30: $00
    nop                                           ; $7C31: $00
    inc bc                                        ; $7C32: $03
    nop                                           ; $7C33: $00
    rlca                                          ; $7C34: $07
    nop                                           ; $7C35: $00
    rlca                                          ; $7C36: $07
    nop                                           ; $7C37: $00
    inc bc                                        ; $7C38: $03
    nop                                           ; $7C39: $00
    inc bc                                        ; $7C3A: $03
    ld bc, $0001                                  ; $7C3B: $01 $01 $00
    ld bc, $0000                                  ; $7C3E: $01 $00 $00
    nop                                           ; $7C41: $00
    nop                                           ; $7C42: $00
    nop                                           ; $7C43: $00
    nop                                           ; $7C44: $00
    nop                                           ; $7C45: $00
    nop                                           ; $7C46: $00
    nop                                           ; $7C47: $00
    ld bc, $0300                                  ; $7C48: $01 $00 $03
    ld bc, $0306                                  ; $7C4B: $01 $06 $03
    ld c, $07                                     ; $7C4E: $0E $07
    inc c                                         ; $7C50: $0C
    rlca                                          ; $7C51: $07
    jr jr_018_7C63                                ; $7C52: $18 $0F

    dec de                                        ; $7C54: $1B
    rrca                                          ; $7C55: $0F

jr_018_7C56:
    inc sp                                        ; $7C56: $33
    rra                                           ; $7C57: $1F
    inc sp                                        ; $7C58: $33
    rra                                           ; $7C59: $1F
    inc h                                         ; $7C5A: $24
    rra                                           ; $7C5B: $1F
    ld h, a                                       ; $7C5C: $67
    ccf                                           ; $7C5D: $3F
    ld h, d                                       ; $7C5E: $62
    ccf                                           ; $7C5F: $3F
    ld h, c                                       ; $7C60: $61
    ccf                                           ; $7C61: $3F
    ld b, d                                       ; $7C62: $42

jr_018_7C63:
    ccf                                           ; $7C63: $3F
    ld b, e                                       ; $7C64: $43
    ccf                                           ; $7C65: $3F
    ld b, b                                       ; $7C66: $40
    ccf                                           ; $7C67: $3F
    ld h, c                                       ; $7C68: $61
    ccf                                           ; $7C69: $3F
    ld h, c                                       ; $7C6A: $61
    ccf                                           ; $7C6B: $3F
    jr nz, jr_018_7C8D                            ; $7C6C: $20 $1F

    jr nc, jr_018_7C8F                            ; $7C6E: $30 $1F

    jr nc, jr_018_7C91                            ; $7C70: $30 $1F

    jr jr_018_7C83                                ; $7C72: $18 $0F

    jr jr_018_7C85                                ; $7C74: $18 $0F

    inc c                                         ; $7C76: $0C
    rlca                                          ; $7C77: $07
    inc c                                         ; $7C78: $0C
    rlca                                          ; $7C79: $07
    ld b, $03                                     ; $7C7A: $06 $03
    inc bc                                        ; $7C7C: $03
    ld bc, $0001                                  ; $7C7D: $01 $01 $00
    rst RST_20                                    ; $7C80: $E7
    ld b, e                                       ; $7C81: $43
    db $EC                                        ; $7C82: $EC

jr_018_7C83:
    rst RST_00                                    ; $7C83: $C7
    ld a, b                                       ; $7C84: $78

jr_018_7C85:
    rst RST_08                                    ; $7C85: $CF
    ld [hl], b                                    ; $7C86: $70
    rst RST_18                                    ; $7C87: $DF
    ld h, c                                       ; $7C88: $61
    rst RST_38                                    ; $7C89: $FF
    nop                                           ; $7C8A: $00
    rst RST_38                                    ; $7C8B: $FF
    nop                                           ; $7C8C: $00

jr_018_7C8D:
    rst RST_38                                    ; $7C8D: $FF
    rst RST_38                                    ; $7C8E: $FF

jr_018_7C8F:
    rst RST_38                                    ; $7C8F: $FF
    rst RST_38                                    ; $7C90: $FF

jr_018_7C91:
    rst RST_38                                    ; $7C91: $FF
    rra                                           ; $7C92: $1F
    rst RST_38                                    ; $7C93: $FF
    rst RST_38                                    ; $7C94: $FF
    rst RST_38                                    ; $7C95: $FF
    adc [hl]                                      ; $7C96: $8E
    rst RST_38                                    ; $7C97: $FF
    ld [hl], e                                    ; $7C98: $73
    rst RST_38                                    ; $7C99: $FF
    sub b                                         ; $7C9A: $90
    rst RST_38                                    ; $7C9B: $FF
    di                                            ; $7C9C: $F3
    rst RST_38                                    ; $7C9D: $FF
    ld b, b                                       ; $7C9E: $40
    rst RST_38                                    ; $7C9F: $FF
    sub b                                         ; $7CA0: $90
    rst RST_38                                    ; $7CA1: $FF
    ld a, a                                       ; $7CA2: $7F
    rst RST_38                                    ; $7CA3: $FF
    jp Jump_000_00FF                              ; $7CA4: $C3 $FF $00


    rst RST_38                                    ; $7CA7: $FF
    nop                                           ; $7CA8: $00
    rst RST_38                                    ; $7CA9: $FF
    nop                                           ; $7CAA: $00
    rst RST_38                                    ; $7CAB: $FF
    nop                                           ; $7CAC: $00
    rst RST_38                                    ; $7CAD: $FF
    inc bc                                        ; $7CAE: $03
    rst RST_38                                    ; $7CAF: $FF
    jp $E1FE                                      ; $7CB0: $C3 $FE $E1


    cp a                                          ; $7CB3: $BF
    ld [hl], c                                    ; $7CB4: $71
    rst RST_18                                    ; $7CB5: $DF
    ld a, b                                       ; $7CB6: $78
    rst RST_08                                    ; $7CB7: $CF
    db $FC                                        ; $7CB8: $FC
    rst RST_00                                    ; $7CB9: $C7
    rst RST_38                                    ; $7CBA: $FF
    ld b, e                                       ; $7CBB: $43
    ld h, a                                       ; $7CBC: $67
    nop                                           ; $7CBD: $00
    ld bc, $3000                                  ; $7CBE: $01 $00 $30
    nop                                           ; $7CC1: $00
    ldh a, [rNR41]                                ; $7CC2: $F0 $20
    ldh [$FFC0], a                                ; $7CC4: $E0 $C0
    ld h, b                                       ; $7CC6: $60
    ret nz                                        ; $7CC7: $C0

    add $80                                       ; $7CC8: $C6 $80
    adc $84                                       ; $7CCA: $CE $84
    sbc a                                         ; $7CCC: $9F
    adc h                                         ; $7CCD: $8C
    rst RST_30                                    ; $7CCE: $F7
    rst RST_38                                    ; $7CCF: $FF
    inc b                                         ; $7CD0: $04
    rst RST_38                                    ; $7CD1: $FF
    nop                                           ; $7CD2: $00
    rst RST_38                                    ; $7CD3: $FF
    rra                                           ; $7CD4: $1F
    rst RST_38                                    ; $7CD5: $FF
    ret nz                                        ; $7CD6: $C0

    rst RST_38                                    ; $7CD7: $FF
    rst RST_28                                    ; $7CD8: $EF
    rst RST_38                                    ; $7CD9: $FF
    ei                                            ; $7CDA: $FB
    rst RST_38                                    ; $7CDB: $FF
    nop                                           ; $7CDC: $00
    rst RST_38                                    ; $7CDD: $FF
    ret nz                                        ; $7CDE: $C0

    rst RST_38                                    ; $7CDF: $FF
    db $FC                                        ; $7CE0: $FC
    rst RST_38                                    ; $7CE1: $FF
    rst RST_38                                    ; $7CE2: $FF
    rst RST_38                                    ; $7CE3: $FF
    rra                                           ; $7CE4: $1F
    rst RST_38                                    ; $7CE5: $FF
    db $FC                                        ; $7CE6: $FC
    rst RST_38                                    ; $7CE7: $FF
    rst RST_38                                    ; $7CE8: $FF
    rst RST_38                                    ; $7CE9: $FF
    db $FC                                        ; $7CEA: $FC
    rst RST_38                                    ; $7CEB: $FF
    inc bc                                        ; $7CEC: $03
    rst RST_38                                    ; $7CED: $FF
    rrca                                          ; $7CEE: $0F
    rst RST_38                                    ; $7CEF: $FF
    ld a, $FF                                     ; $7CF0: $3E $FF
    nop                                           ; $7CF2: $00
    rst RST_38                                    ; $7CF3: $FF
    db $FC                                        ; $7CF4: $FC
    rst RST_38                                    ; $7CF5: $FF
    rst RST_38                                    ; $7CF6: $FF
    ld [hl], b                                    ; $7CF7: $70
    rst RST_38                                    ; $7CF8: $FF
    dec de                                        ; $7CF9: $1B
    rst RST_38                                    ; $7CFA: $FF
    dec bc                                        ; $7CFB: $0B
    rst RST_18                                    ; $7CFC: $DF
    add l                                         ; $7CFD: $85
    rst RST_18                                    ; $7CFE: $DF
    add c                                         ; $7CFF: $81
    ld h, a                                       ; $7D00: $67
    jp $C0F3                                      ; $7D01: $C3 $F3 $C0


    db $FC                                        ; $7D04: $FC
    inc hl                                        ; $7D05: $23
    ld a, h                                       ; $7D06: $7C
    inc bc                                        ; $7D07: $03
    add hl, bc                                    ; $7D08: $09
    ld b, $0E                                     ; $7D09: $06 $0E
    nop                                           ; $7D0B: $00
    nop                                           ; $7D0C: $00
    nop                                           ; $7D0D: $00
    nop                                           ; $7D0E: $00
    nop                                           ; $7D0F: $00
    nop                                           ; $7D10: $00
    nop                                           ; $7D11: $00
    nop                                           ; $7D12: $00
    nop                                           ; $7D13: $00
    nop                                           ; $7D14: $00
    nop                                           ; $7D15: $00
    nop                                           ; $7D16: $00
    nop                                           ; $7D17: $00
    nop                                           ; $7D18: $00
    nop                                           ; $7D19: $00
    nop                                           ; $7D1A: $00
    nop                                           ; $7D1B: $00
    nop                                           ; $7D1C: $00
    nop                                           ; $7D1D: $00
    nop                                           ; $7D1E: $00
    nop                                           ; $7D1F: $00
    ret nz                                        ; $7D20: $C0

    nop                                           ; $7D21: $00
    rst RST_38                                    ; $7D22: $FF
    ret nz                                        ; $7D23: $C0

    nop                                           ; $7D24: $00
    rst RST_38                                    ; $7D25: $FF
    rst RST_20                                    ; $7D26: $E7
    ld hl, sp-$01                                 ; $7D27: $F8 $FF
    rst RST_38                                    ; $7D29: $FF
    ccf                                           ; $7D2A: $3F
    cp $FF                                        ; $7D2B: $FE $FF
    ld hl, sp-$01                                 ; $7D2D: $F8 $FF
    ld hl, sp+$1F                                 ; $7D2F: $F8 $1F
    rst RST_38                                    ; $7D31: $FF
    nop                                           ; $7D32: $00
    rst RST_38                                    ; $7D33: $FF
    rst RST_38                                    ; $7D34: $FF
    db $FC                                        ; $7D35: $FC
    rra                                           ; $7D36: $1F
    rst RST_38                                    ; $7D37: $FF
    ret nz                                        ; $7D38: $C0

    rst RST_38                                    ; $7D39: $FF
    nop                                           ; $7D3A: $00
    rst RST_38                                    ; $7D3B: $FF
    ldh [rIE], a                                  ; $7D3C: $E0 $FF
    rst RST_38                                    ; $7D3E: $FF
    rst RST_38                                    ; $7D3F: $FF
    rlca                                          ; $7D40: $07
    ld hl, sp-$39                                 ; $7D41: $F8 $C7
    rst RST_38                                    ; $7D43: $FF
    rrca                                          ; $7D44: $0F
    cp $7F                                        ; $7D45: $FE $7F
    rst RST_38                                    ; $7D47: $FF
    rst RST_38                                    ; $7D48: $FF
    nop                                           ; $7D49: $00
    ldh [rP1], a                                  ; $7D4A: $E0 $00
    sbc a                                         ; $7D4C: $9F
    ld h, b                                       ; $7D4D: $60
    call nz, $F8B8                                ; $7D4E: $C4 $B8 $F8
    ldh a, [$FFF8]                                ; $7D51: $F0 $F8
    ret nz                                        ; $7D53: $C0

    db $FC                                        ; $7D54: $FC
    ldh [$FFE0], a                                ; $7D55: $E0 $E0
    nop                                           ; $7D57: $00
    inc e                                         ; $7D58: $1C
    ldh [$FF78], a                                ; $7D59: $E0 $78
    add b                                         ; $7D5B: $80
    add b                                         ; $7D5C: $80
    nop                                           ; $7D5D: $00
    nop                                           ; $7D5E: $00
    nop                                           ; $7D5F: $00
    ld hl, sp+$00                                 ; $7D60: $F8 $00
    ld [$E8F0], sp                                ; $7D62: $08 $F0 $E8
    db $10                                        ; $7D65: $10
    add sp, -$70                                  ; $7D66: $E8 $90
    adc b                                         ; $7D68: $88
    ld [hl], b                                    ; $7D69: $70
    ld hl, sp+$10                                 ; $7D6A: $F8 $10
    ld hl, sp+$00                                 ; $7D6C: $F8 $00
    ld hl, sp+$00                                 ; $7D6E: $F8 $00
    db $FC                                        ; $7D70: $FC
    ld hl, sp-$08                                 ; $7D71: $F8 $F8
    nop                                           ; $7D73: $00
    ldh a, [$FF80]                                ; $7D74: $F0 $80
    ld a, a                                       ; $7D76: $7F
    ldh a, [rNR34]                                ; $7D77: $F0 $1E
    ld hl, sp-$08                                 ; $7D79: $F8 $F8
    ldh [$FFE0], a                                ; $7D7B: $E0 $E0
    nop                                           ; $7D7D: $00
    ld b, b                                       ; $7D7E: $40
    add b                                         ; $7D7F: $80
    cp a                                          ; $7D80: $BF
    ld b, b                                       ; $7D81: $40
    add c                                         ; $7D82: $81
    ld a, a                                       ; $7D83: $7F
    rst RST_38                                    ; $7D84: $FF
    adc a                                         ; $7D85: $8F
    rst RST_38                                    ; $7D86: $FF
    rra                                           ; $7D87: $1F
    ld a, a                                       ; $7D88: $7F
    ccf                                           ; $7D89: $3F
    ld a, a                                       ; $7D8A: $7F
    rrca                                          ; $7D8B: $0F
    ld a, a                                       ; $7D8C: $7F
    inc sp                                        ; $7D8D: $33
    ccf                                           ; $7D8E: $3F
    dec c                                         ; $7D8F: $0D
    rrca                                          ; $7D90: $0F
    ld bc, $0001                                  ; $7D91: $01 $01 $00
    nop                                           ; $7D94: $00
    nop                                           ; $7D95: $00
    nop                                           ; $7D96: $00
    nop                                           ; $7D97: $00
    nop                                           ; $7D98: $00
    nop                                           ; $7D99: $00
    nop                                           ; $7D9A: $00
    nop                                           ; $7D9B: $00
    nop                                           ; $7D9C: $00
    nop                                           ; $7D9D: $00
    nop                                           ; $7D9E: $00
    nop                                           ; $7D9F: $00
    ld hl, sp+$00                                 ; $7DA0: $F8 $00
    ldh a, [$FFC0]                                ; $7DA2: $F0 $C0
    ret nz                                        ; $7DA4: $C0

    nop                                           ; $7DA5: $00
    ldh a, [$FFC0]                                ; $7DA6: $F0 $C0
    rst RST_38                                    ; $7DA8: $FF
    ldh [$FFFE], a                                ; $7DA9: $E0 $FE
    ld hl, sp-$08                                 ; $7DAB: $F8 $F8
    ldh [$FFF0], a                                ; $7DAD: $E0 $F0
    ret nz                                        ; $7DAF: $C0

    ret nc                                        ; $7DB0: $D0

    and b                                         ; $7DB1: $A0
    rst RST_08                                    ; $7DB2: $CF
    jr nc, jr_018_7DFB                            ; $7DB3: $30 $46

    jr c, jr_018_7DDF                             ; $7DB5: $38 $28

    db $10                                        ; $7DB7: $10
    jr jr_018_7DBA                                ; $7DB8: $18 $00

jr_018_7DBA:
    nop                                           ; $7DBA: $00
    nop                                           ; $7DBB: $00
    nop                                           ; $7DBC: $00
    nop                                           ; $7DBD: $00
    nop                                           ; $7DBE: $00
    nop                                           ; $7DBF: $00
    nop                                           ; $7DC0: $00
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
    nop                                           ; $7DDA: $00
    nop                                           ; $7DDB: $00
    nop                                           ; $7DDC: $00
    nop                                           ; $7DDD: $00
    ld h, e                                       ; $7DDE: $63

jr_018_7DDF:
    nop                                           ; $7DDF: $00
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

jr_018_7DFB:
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

Jump_018_7E3C:
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
