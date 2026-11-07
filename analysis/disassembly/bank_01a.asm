; Disassembly of "original.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01a", ROMX[$4000], BANK[$1a]

    nop                                           ; $4000: $00
    nop                                           ; $4001: $00
    nop                                           ; $4002: $00
    nop                                           ; $4003: $00
    nop                                           ; $4004: $00
    nop                                           ; $4005: $00
    nop                                           ; $4006: $00
    nop                                           ; $4007: $00
    rrca                                          ; $4008: $0F
    nop                                           ; $4009: $00
    ld [$0707], sp                                ; $400A: $08 $07 $07
    nop                                           ; $400D: $00
    nop                                           ; $400E: $00
    nop                                           ; $400F: $00
    nop                                           ; $4010: $00
    nop                                           ; $4011: $00
    nop                                           ; $4012: $00
    nop                                           ; $4013: $00
    inc c                                         ; $4014: $0C
    nop                                           ; $4015: $00
    dec bc                                        ; $4016: $0B
    inc b                                         ; $4017: $04
    inc b                                         ; $4018: $04
    inc bc                                        ; $4019: $03
    inc b                                         ; $401A: $04
    inc bc                                        ; $401B: $03
    ld [bc], a                                    ; $401C: $02
    ld bc, $0001                                  ; $401D: $01 $01 $00
    ld bc, $0200                                  ; $4020: $01 $00 $02
    ld bc, $01C2                                  ; $4023: $01 $C2 $01
    ccf                                           ; $4026: $3F
    ret nz                                        ; $4027: $C0

    nop                                           ; $4028: $00
    rst RST_38                                    ; $4029: $FF
    rst RST_38                                    ; $402A: $FF
    rra                                           ; $402B: $1F
    rra                                           ; $402C: $1F
    nop                                           ; $402D: $00
    rra                                           ; $402E: $1F
    inc b                                         ; $402F: $04
    scf                                           ; $4030: $37
    dec c                                         ; $4031: $0D
    rst RST_38                                    ; $4032: $FF
    inc sp                                        ; $4033: $33
    rst RST_38                                    ; $4034: $FF
    ld a, a                                       ; $4035: $7F
    rst RST_38                                    ; $4036: $FF
    ld c, a                                       ; $4037: $4F
    rst RST_38                                    ; $4038: $FF
    ld e, h                                       ; $4039: $5C
    rst RST_38                                    ; $403A: $FF
    ld [hl], e                                    ; $403B: $73
    ld a, a                                       ; $403C: $7F
    cpl                                           ; $403D: $2F
    ccf                                           ; $403E: $3F
    nop                                           ; $403F: $00
    jr jr_01A_4042                                ; $4040: $18 $00

jr_01A_4042:
    inc d                                         ; $4042: $14
    ld [$0C12], sp                                ; $4043: $08 $12 $0C
    add hl, bc                                    ; $4046: $09
    ld b, $E8                                     ; $4047: $06 $E8
    rlca                                          ; $4049: $07
    inc [hl]                                      ; $404A: $34
    jp $D57E                                      ; $404B: $C3 $7E $D5


    rst RST_08                                    ; $404E: $CF
    or [hl]                                       ; $404F: $B6
    rst RST_18                                    ; $4050: $DF
    cp e                                          ; $4051: $BB
    cp a                                          ; $4052: $BF
    ld [hl], e                                    ; $4053: $73
    rst RST_30                                    ; $4054: $F7
    ld c, e                                       ; $4055: $4B
    rst RST_00                                    ; $4056: $C7
    dec sp                                        ; $4057: $3B
    sbc a                                         ; $4058: $9F
    ld a, h                                       ; $4059: $7C
    cp $FD                                        ; $405A: $FE $FD
    sbc a                                         ; $405C: $9F
    cp $3F                                        ; $405D: $FE $3F
    ldh a, [$FF0C]                                ; $405F: $F0 $0C
    nop                                           ; $4061: $00
    dec d                                         ; $4062: $15
    ld [$1D22], sp                                ; $4063: $08 $22 $1D
    sbc $21                                       ; $4066: $DE $21
    ld h, c                                       ; $4068: $61
    sbc [hl]                                      ; $4069: $9E
    ld b, e                                       ; $406A: $43
    cp h                                          ; $406B: $BC

jr_01A_406C:
    sbc h                                         ; $406C: $9C
    ld h, e                                       ; $406D: $63
    halt                                          ; $406E: $76
    adc c                                         ; $406F: $89
    db $FD                                        ; $4070: $FD
    ld a, [hl-]                                   ; $4071: $3A
    ei                                            ; $4072: $FB
    add l                                         ; $4073: $85
    adc [hl]                                      ; $4074: $8E
    ld [hl], e                                    ; $4075: $73
    cp a                                          ; $4076: $BF
    ld c, l                                       ; $4077: $4D
    rst RST_38                                    ; $4078: $FF
    db $10                                        ; $4079: $10
    cp a                                          ; $407A: $BF
    rrca                                          ; $407B: $0F
    sbc a                                         ; $407C: $9F
    ld [$020D], sp                                ; $407D: $08 $0D $02
    inc e                                         ; $4080: $1C
    nop                                           ; $4081: $00
    inc hl                                        ; $4082: $23
    inc e                                         ; $4083: $1C
    add sp, $3F                                   ; $4084: $E8 $3F
    db $FD                                        ; $4086: $FD
    ld a, a                                       ; $4087: $7F
    cp $7F                                        ; $4088: $FE $7F
    rst RST_38                                    ; $408A: $FF
    ld [hl], e                                    ; $408B: $73
    di                                            ; $408C: $F3
    ld l, h                                       ; $408D: $6C
    db $E4                                        ; $408E: $E4
    ld e, e                                       ; $408F: $5B
    jp hl                                         ; $4090: $E9


    ld d, $EB                                     ; $4091: $16 $EB
    sub h                                         ; $4093: $94
    ld a, e                                       ; $4094: $7B
    call nz, $D0FF                                ; $4095: $C4 $FF $D0
    ld a, [$F225]                                 ; $4098: $FA $25 $F2
    xor l                                         ; $409B: $AD
    rst RST_38                                    ; $409C: $FF
    ret nz                                        ; $409D: $C0

    ld hl, sp-$10                                 ; $409E: $F8 $F0
    nop                                           ; $40A0: $00
    nop                                           ; $40A1: $00
    ret nz                                        ; $40A2: $C0

    nop                                           ; $40A3: $00
    ld h, b                                       ; $40A4: $60
    ret nz                                        ; $40A5: $C0

    or b                                          ; $40A6: $B0
    ldh [$FFD8], a                                ; $40A7: $E0 $D8
    ldh a, [$FFFC]                                ; $40A9: $F0 $FC
    ld hl, sp-$02                                 ; $40AB: $F8 $FE
    ld a, h                                       ; $40AD: $7C
    cp $20                                        ; $40AE: $FE $20
    ld [hl], e                                    ; $40B0: $73
    adc h                                         ; $40B1: $8C
    ld e, l                                       ; $40B2: $5D
    and d                                         ; $40B3: $A2
    ld e, e                                       ; $40B4: $5B
    and b                                         ; $40B5: $A0
    call nc, $3428                                ; $40B6: $D4 $28 $34
    ret z                                         ; $40B9: $C8

    jp z, Jump_000_3A34                           ; $40BA: $CA $34 $3A

    inc b                                         ; $40BD: $04
    ld b, $00                                     ; $40BE: $06 $00
    ld hl, sp-$10                                 ; $40C0: $F8 $F0
    db $FC                                        ; $40C2: $FC
    ld hl, sp-$01                                 ; $40C3: $F8 $FF
    jr c, @+$01                                   ; $40C5: $38 $FF

    jp $07DF                                      ; $40C7: $C3 $DF $07


    cpl                                           ; $40CA: $2F
    inc de                                        ; $40CB: $13
    inc de                                        ; $40CC: $13
    dec c                                         ; $40CD: $0D
    rrca                                          ; $40CE: $0F
    nop                                           ; $40CF: $00
    ld [bc], a                                    ; $40D0: $02
    ld bc, $0001                                  ; $40D1: $01 $01 $00
    inc bc                                        ; $40D4: $03
    nop                                           ; $40D5: $00
    rrca                                          ; $40D6: $0F
    inc bc                                        ; $40D7: $03
    inc sp                                        ; $40D8: $33
    rrca                                          ; $40D9: $0F
    ld b, a                                       ; $40DA: $47
    ccf                                           ; $40DB: $3F
    ld a, a                                       ; $40DC: $7F
    nop                                           ; $40DD: $00
    nop                                           ; $40DE: $00
    nop                                           ; $40DF: $00
    inc [hl]                                      ; $40E0: $34
    dec bc                                        ; $40E1: $0B
    ld b, a                                       ; $40E2: $47
    jr c, jr_01A_406C                             ; $40E3: $38 $87

    ld a, e                                       ; $40E5: $7B
    jp $FF3D                                      ; $40E6: $C3 $3D $FF


    call c, $E0FC                                 ; $40E9: $DC $FC $E0
    ldh a, [$FFE0]                                ; $40EC: $F0 $E0
    ldh [rP1], a                                  ; $40EE: $E0 $00
    ldh [$FFC0], a                                ; $40F0: $E0 $C0
    ld h, b                                       ; $40F2: $60
    ret nz                                        ; $40F3: $C0

    ld a, b                                       ; $40F4: $78
    ret nz                                        ; $40F5: $C0

    ld hl, sp+$10                                 ; $40F6: $F8 $10
    ldh a, [$FFE0]                                ; $40F8: $F0 $E0
    ldh a, [$FFE0]                                ; $40FA: $F0 $E0
    ldh [rP1], a                                  ; $40FC: $E0 $00
    nop                                           ; $40FE: $00
    nop                                           ; $40FF: $00
    ld hl, sp+$00                                 ; $4100: $F8 $00
    call nz, $82B8                                ; $4102: $C4 $B8 $82
    ld a, h                                       ; $4105: $7C
    sbc a                                         ; $4106: $9F
    ld h, b                                       ; $4107: $60
    rst RST_38                                    ; $4108: $FF
    ld e, a                                       ; $4109: $5F
    ld c, a                                       ; $410A: $4F
    dec sp                                        ; $410B: $3B
    ld e, e                                       ; $410C: $5B
    inc h                                         ; $410D: $24
    add hl, hl                                    ; $410E: $29
    ld d, $27                                     ; $410F: $16 $27
    jr jr_01A_412E                                ; $4111: $18 $1B

    rlca                                          ; $4113: $07
    dec c                                         ; $4114: $0D
    rlca                                          ; $4115: $07
    rlca                                          ; $4116: $07
    ld [bc], a                                    ; $4117: $02
    ld b, $01                                     ; $4118: $06 $01
    inc b                                         ; $411A: $04
    inc bc                                        ; $411B: $03
    dec b                                         ; $411C: $05
    inc bc                                        ; $411D: $03
    rlca                                          ; $411E: $07
    nop                                           ; $411F: $00
    add b                                         ; $4120: $80
    nop                                           ; $4121: $00
    add b                                         ; $4122: $80
    nop                                           ; $4123: $00
    ld b, b                                       ; $4124: $40
    add b                                         ; $4125: $80
    ld b, b                                       ; $4126: $40
    add b                                         ; $4127: $80
    add b                                         ; $4128: $80
    nop                                           ; $4129: $00
    add b                                         ; $412A: $80
    nop                                           ; $412B: $00
    add b                                         ; $412C: $80
    nop                                           ; $412D: $00

jr_01A_412E:
    ret nz                                        ; $412E: $C0

    nop                                           ; $412F: $00
    ldh a, [$FFC0]                                ; $4130: $F0 $C0
    ld a, b                                       ; $4132: $78
    ldh a, [$FFF8]                                ; $4133: $F0 $F8
    ldh a, [$FFF8]                                ; $4135: $F0 $F8
    nop                                           ; $4137: $00
    nop                                           ; $4138: $00
    nop                                           ; $4139: $00
    nop                                           ; $413A: $00
    nop                                           ; $413B: $00

Jump_01A_413C:
    nop                                           ; $413C: $00
    nop                                           ; $413D: $00
    nop                                           ; $413E: $00
    nop                                           ; $413F: $00
    nop                                           ; $4140: $00
    nop                                           ; $4141: $00
    nop                                           ; $4142: $00
    nop                                           ; $4143: $00
    nop                                           ; $4144: $00
    nop                                           ; $4145: $00
    nop                                           ; $4146: $00
    nop                                           ; $4147: $00
    nop                                           ; $4148: $00
    nop                                           ; $4149: $00
    nop                                           ; $414A: $00
    nop                                           ; $414B: $00
    nop                                           ; $414C: $00
    nop                                           ; $414D: $00
    nop                                           ; $414E: $00
    nop                                           ; $414F: $00
    nop                                           ; $4150: $00
    nop                                           ; $4151: $00
    nop                                           ; $4152: $00
    nop                                           ; $4153: $00
    nop                                           ; $4154: $00
    nop                                           ; $4155: $00
    nop                                           ; $4156: $00
    nop                                           ; $4157: $00
    nop                                           ; $4158: $00
    nop                                           ; $4159: $00
    nop                                           ; $415A: $00
    nop                                           ; $415B: $00
    nop                                           ; $415C: $00
    nop                                           ; $415D: $00
    ld bc, $0000                                  ; $415E: $01 $00 $00
    nop                                           ; $4161: $00
    nop                                           ; $4162: $00
    nop                                           ; $4163: $00
    nop                                           ; $4164: $00
    nop                                           ; $4165: $00
    nop                                           ; $4166: $00
    nop                                           ; $4167: $00
    rra                                           ; $4168: $1F
    nop                                           ; $4169: $00
    db $10                                        ; $416A: $10
    rrca                                          ; $416B: $0F
    ld c, $01                                     ; $416C: $0E $01
    ld bc, $0000                                  ; $416E: $01 $00 $00
    nop                                           ; $4171: $00
    nop                                           ; $4172: $00
    nop                                           ; $4173: $00
    jr jr_01A_4176                                ; $4174: $18 $00

jr_01A_4176:
    rla                                           ; $4176: $17
    ld [$0609], sp                                ; $4177: $08 $09 $06
    add hl, bc                                    ; $417A: $09
    ld b, $05                                     ; $417B: $06 $05
    ld [bc], a                                    ; $417D: $02
    inc bc                                        ; $417E: $03
    nop                                           ; $417F: $00
    add l                                         ; $4180: $85
    inc bc                                        ; $4181: $03
    ld a, a                                       ; $4182: $7F
    add b                                         ; $4183: $80
    ld bc, $FFFE                                  ; $4184: $01 $FE $FF
    ld a, $3F                                     ; $4187: $3E $3F
    nop                                           ; $4189: $00
    ccf                                           ; $418A: $3F
    add hl, bc                                    ; $418B: $09
    ld l, a                                       ; $418C: $6F
    dec de                                        ; $418D: $1B
    cp $67                                        ; $418E: $FE $67
    rst RST_38                                    ; $4190: $FF
    rst RST_38                                    ; $4191: $FF
    rst RST_38                                    ; $4192: $FF
    sbc a                                         ; $4193: $9F
    rst RST_38                                    ; $4194: $FF
    cp b                                          ; $4195: $B8
    ei                                            ; $4196: $FB
    pop hl                                        ; $4197: $E1
    rst RST_20                                    ; $4198: $E7
    ld b, e                                       ; $4199: $43
    ld l, a                                       ; $419A: $6F
    inc bc                                        ; $419B: $03
    rra                                           ; $419C: $1F
    inc c                                         ; $419D: $0C
    inc c                                         ; $419E: $0C
    nop                                           ; $419F: $00
    nop                                           ; $41A0: $00
    nop                                           ; $41A1: $00
    jr jr_01A_41A4                                ; $41A2: $18 $00

jr_01A_41A4:
    inc d                                         ; $41A4: $14
    ld [$0C12], sp                                ; $41A5: $08 $12 $0C
    ret                                           ; $41A8: $C9


    ld b, $68                                     ; $41A9: $06 $68
    add a                                         ; $41AB: $87
    db $F4                                        ; $41AC: $F4
    and e                                         ; $41AD: $A3
    sub [hl]                                      ; $41AE: $96
    ld h, c                                       ; $41AF: $61
    cp a                                          ; $41B0: $BF
    halt                                          ; $41B1: $76
    ld a, a                                       ; $41B2: $7F
    rst RST_20                                    ; $41B3: $E7
    rst RST_28                                    ; $41B4: $EF
    sub a                                         ; $41B5: $97
    adc a                                         ; $41B6: $8F
    ld [hl], a                                    ; $41B7: $77
    ccf                                           ; $41B8: $3F
    ei                                            ; $41B9: $FB
    rst RST_38                                    ; $41BA: $FF
    ld hl, sp+$3F                                 ; $41BB: $F8 $3F
    db $FC                                        ; $41BD: $FC
    ld a, [hl]                                    ; $41BE: $7E
    ldh [rP1], a                                  ; $41BF: $E0 $00
    nop                                           ; $41C1: $00
    inc c                                         ; $41C2: $0C
    nop                                           ; $41C3: $00
    dec d                                         ; $41C4: $15
    ld [$1D22], sp                                ; $41C5: $08 $22 $1D
    sbc $21                                       ; $41C8: $DE $21
    ld h, c                                       ; $41CA: $61
    sbc [hl]                                      ; $41CB: $9E
    ld b, e                                       ; $41CC: $43
    cp h                                          ; $41CD: $BC

jr_01A_41CE:
    sbc h                                         ; $41CE: $9C
    ld h, e                                       ; $41CF: $63
    halt                                          ; $41D0: $76
    adc c                                         ; $41D1: $89
    db $FD                                        ; $41D2: $FD
    ld a, [hl-]                                   ; $41D3: $3A
    ei                                            ; $41D4: $FB
    add l                                         ; $41D5: $85
    adc [hl]                                      ; $41D6: $8E
    ld [hl], e                                    ; $41D7: $73
    cp a                                          ; $41D8: $BF
    ld c, l                                       ; $41D9: $4D
    rst RST_38                                    ; $41DA: $FF
    db $10                                        ; $41DB: $10
    ccf                                           ; $41DC: $3F
    rrca                                          ; $41DD: $0F
    rra                                           ; $41DE: $1F
    ld [$0000], sp                                ; $41DF: $08 $00 $00
    nop                                           ; $41E2: $00
    nop                                           ; $41E3: $00
    inc e                                         ; $41E4: $1C
    nop                                           ; $41E5: $00
    db $E3                                        ; $41E6: $E3
    inc e                                         ; $41E7: $1C
    ld l, b                                       ; $41E8: $68
    cp a                                          ; $41E9: $BF
    db $FD                                        ; $41EA: $FD
    ld a, a                                       ; $41EB: $7F
    cp $7F                                        ; $41EC: $FE $7F
    rst RST_38                                    ; $41EE: $FF
    ld [hl], e                                    ; $41EF: $73
    di                                            ; $41F0: $F3
    ld l, h                                       ; $41F1: $6C
    db $E4                                        ; $41F2: $E4
    ld e, e                                       ; $41F3: $5B
    jp hl                                         ; $41F4: $E9


    sub [hl]                                      ; $41F5: $96
    ld l, a                                       ; $41F6: $6F
    ret nc                                        ; $41F7: $D0

    db $FD                                        ; $41F8: $FD
    jp nz, $3AFD                                  ; $41F9: $C2 $FD $3A

    db $FD                                        ; $41FC: $FD
    or d                                          ; $41FD: $B2
    rst RST_30                                    ; $41FE: $F7
    ret z                                         ; $41FF: $C8

    nop                                           ; $4200: $00
    nop                                           ; $4201: $00
    ret nz                                        ; $4202: $C0

    nop                                           ; $4203: $00
    ld h, b                                       ; $4204: $60
    ret nz                                        ; $4205: $C0

    or b                                          ; $4206: $B0
    ldh [$FFD8], a                                ; $4207: $E0 $D8
    ldh a, [$FFFC]                                ; $4209: $F0 $FC
    ld hl, sp-$02                                 ; $420B: $F8 $FE
    ld a, h                                       ; $420D: $7C
    cp $20                                        ; $420E: $FE $20
    di                                            ; $4210: $F3
    call z, $22FD                                 ; $4211: $CC $FD $22
    ld [hl], e                                    ; $4214: $73
    and b                                         ; $4215: $A0
    ld [hl], b                                    ; $4216: $70
    add b                                         ; $4217: $80
    ld e, b                                       ; $4218: $58
    and b                                         ; $4219: $A0
    ret c                                         ; $421A: $D8

    jr nz, jr_01A_4245                            ; $421B: $20 $28

    db $10                                        ; $421D: $10
    jr nc, jr_01A_4220                            ; $421E: $30 $00

jr_01A_4220:
    ldh a, [$FFE0]                                ; $4220: $F0 $E0
    ld hl, sp-$10                                 ; $4222: $F8 $F0
    ld hl, sp+$70                                 ; $4224: $F8 $70
    rst RST_30                                    ; $4226: $F7
    add b                                         ; $4227: $80
    rst RST_28                                    ; $4228: $EF
    rst RST_00                                    ; $4229: $C7
    rst RST_18                                    ; $422A: $DF
    rlca                                          ; $422B: $07
    cpl                                           ; $422C: $2F
    inc de                                        ; $422D: $13
    inc de                                        ; $422E: $13
    dec c                                         ; $422F: $0D
    rrca                                          ; $4230: $0F
    nop                                           ; $4231: $00
    ld [bc], a                                    ; $4232: $02
    ld bc, $0003                                  ; $4233: $01 $03 $00
    rrca                                          ; $4236: $0F
    inc bc                                        ; $4237: $03
    inc sp                                        ; $4238: $33
    rrca                                          ; $4239: $0F
    ld b, a                                       ; $423A: $47
    ccf                                           ; $423B: $3F
    ld a, a                                       ; $423C: $7F
    nop                                           ; $423D: $00
    nop                                           ; $423E: $00
    nop                                           ; $423F: $00
    dec c                                         ; $4240: $0D
    ld [bc], a                                    ; $4241: $02
    inc [hl]                                      ; $4242: $34
    dec bc                                        ; $4243: $0B
    ld b, a                                       ; $4244: $47

jr_01A_4245:
    jr c, jr_01A_41CE                             ; $4245: $38 $87

    ld a, e                                       ; $4247: $7B
    jp $FF3D                                      ; $4248: $C3 $3D $FF


    call c, $E0FC                                 ; $424B: $DC $FC $E0
    ldh a, [$FFE0]                                ; $424E: $F0 $E0
    ldh [rP1], a                                  ; $4250: $E0 $00
    ldh [$FFC0], a                                ; $4252: $E0 $C0
    ld a, b                                       ; $4254: $78
    ret nz                                        ; $4255: $C0

    ld hl, sp+$10                                 ; $4256: $F8 $10
    ldh a, [$FFE0]                                ; $4258: $F0 $E0
    ldh a, [$FFE0]                                ; $425A: $F0 $E0
    ldh [rP1], a                                  ; $425C: $E0 $00
    nop                                           ; $425E: $00
    nop                                           ; $425F: $00
    di                                            ; $4260: $F3
    db $EC                                        ; $4261: $EC
    cp $00                                        ; $4262: $FE $00
    call nz, $82B8                                ; $4264: $C4 $B8 $82
    ld a, h                                       ; $4267: $7C
    sbc a                                         ; $4268: $9F
    ld h, b                                       ; $4269: $60
    rst RST_38                                    ; $426A: $FF
    ld e, a                                       ; $426B: $5F
    ld c, a                                       ; $426C: $4F
    dec sp                                        ; $426D: $3B
    ld e, e                                       ; $426E: $5B
    inc h                                         ; $426F: $24
    add hl, hl                                    ; $4270: $29
    ld d, $27                                     ; $4271: $16 $27
    jr jr_01A_4290                                ; $4273: $18 $1B

    rlca                                          ; $4275: $07
    dec c                                         ; $4276: $0D
    ld b, $06                                     ; $4277: $06 $06
    ld bc, $0304                                  ; $4279: $01 $04 $03
    dec b                                         ; $427C: $05
    inc bc                                        ; $427D: $03
    rlca                                          ; $427E: $07
    nop                                           ; $427F: $00
    add b                                         ; $4280: $80
    nop                                           ; $4281: $00
    add b                                         ; $4282: $80
    nop                                           ; $4283: $00
    ld b, b                                       ; $4284: $40
    add b                                         ; $4285: $80
    ld b, b                                       ; $4286: $40
    add b                                         ; $4287: $80
    add b                                         ; $4288: $80
    nop                                           ; $4289: $00
    add b                                         ; $428A: $80
    nop                                           ; $428B: $00
    ret nz                                        ; $428C: $C0

    nop                                           ; $428D: $00
    ldh a, [$FFC0]                                ; $428E: $F0 $C0

jr_01A_4290:
    ld a, b                                       ; $4290: $78
    ldh a, [$FFF8]                                ; $4291: $F0 $F8
    ldh a, [$FFF8]                                ; $4293: $F0 $F8
    nop                                           ; $4295: $00
    nop                                           ; $4296: $00
    nop                                           ; $4297: $00
    nop                                           ; $4298: $00
    nop                                           ; $4299: $00
    nop                                           ; $429A: $00
    nop                                           ; $429B: $00
    nop                                           ; $429C: $00
    nop                                           ; $429D: $00
    nop                                           ; $429E: $00
    nop                                           ; $429F: $00
    nop                                           ; $42A0: $00
    nop                                           ; $42A1: $00
    nop                                           ; $42A2: $00
    nop                                           ; $42A3: $00
    nop                                           ; $42A4: $00
    nop                                           ; $42A5: $00
    nop                                           ; $42A6: $00
    nop                                           ; $42A7: $00
    nop                                           ; $42A8: $00
    nop                                           ; $42A9: $00
    nop                                           ; $42AA: $00
    nop                                           ; $42AB: $00

jr_01A_42AC:
    nop                                           ; $42AC: $00
    nop                                           ; $42AD: $00
    nop                                           ; $42AE: $00
    nop                                           ; $42AF: $00
    nop                                           ; $42B0: $00
    nop                                           ; $42B1: $00

jr_01A_42B2:
    nop                                           ; $42B2: $00
    nop                                           ; $42B3: $00
    nop                                           ; $42B4: $00
    nop                                           ; $42B5: $00
    nop                                           ; $42B6: $00
    nop                                           ; $42B7: $00
    ld bc, $0200                                  ; $42B8: $01 $00 $02
    ld bc, $0102                                  ; $42BB: $01 $02 $01
    dec b                                         ; $42BE: $05
    inc bc                                        ; $42BF: $03
    nop                                           ; $42C0: $00
    nop                                           ; $42C1: $00
    nop                                           ; $42C2: $00
    nop                                           ; $42C3: $00
    db $FC                                        ; $42C4: $FC
    nop                                           ; $42C5: $00
    add e                                         ; $42C6: $83
    ld a, h                                       ; $42C7: $7C
    ld [hl], b                                    ; $42C8: $70
    rrca                                          ; $42C9: $0F
    rrca                                          ; $42CA: $0F
    ld bc, $0001                                  ; $42CB: $01 $01 $00
    ld bc, $C300                                  ; $42CE: $01 $00 $C3
    nop                                           ; $42D1: $00
    cp a                                          ; $42D2: $BF
    ld b, e                                       ; $42D3: $43
    ld c, a                                       ; $42D4: $4F
    scf                                           ; $42D5: $37
    ld c, a                                       ; $42D6: $4F
    inc [hl]                                      ; $42D7: $34
    cpl                                           ; $42D8: $2F
    dec d                                         ; $42D9: $15
    rra                                           ; $42DA: $1F
    rlca                                          ; $42DB: $07
    rlca                                          ; $42DC: $07
    ld [bc], a                                    ; $42DD: $02
    inc bc                                        ; $42DE: $03
    nop                                           ; $42DF: $00
    ei                                            ; $42E0: $FB
    rlca                                          ; $42E1: $07
    rrca                                          ; $42E2: $0F
    db $F4                                        ; $42E3: $F4
    db $FC                                        ; $42E4: $FC
    di                                            ; $42E5: $F3
    ld sp, hl                                     ; $42E6: $F9
    rlca                                          ; $42E7: $07
    rst RST_38                                    ; $42E8: $FF
    ld c, a                                       ; $42E9: $4F
    ld a, c                                       ; $42EA: $79
    rst RST_18                                    ; $42EB: $DF
    di                                            ; $42EC: $F3
    ccf                                           ; $42ED: $3F
    rst RST_38                                    ; $42EE: $FF
    rst RST_38                                    ; $42EF: $FF
    rst RST_38                                    ; $42F0: $FF
    rst RST_38                                    ; $42F1: $FF
    rst RST_38                                    ; $42F2: $FF
    jp Jump_000_0CDF                              ; $42F3: $C3 $DF $0C


    rra                                           ; $42F6: $1F
    ld c, $1E                                     ; $42F7: $0E $1E
    inc c                                         ; $42F9: $0C
    inc a                                         ; $42FA: $3C
    jr jr_01A_4335                                ; $42FB: $18 $38

    db $10                                        ; $42FD: $10
    jr nc, jr_01A_4300                            ; $42FE: $30 $00

jr_01A_4300:
    nop                                           ; $4300: $00
    nop                                           ; $4301: $00
    ld h, b                                       ; $4302: $60
    nop                                           ; $4303: $00
    ld d, b                                       ; $4304: $50
    jr nz, jr_01A_434F                            ; $4305: $20 $48

    jr nc, jr_01A_4330                            ; $4307: $30 $27

    jr jr_01A_42AC                                ; $4309: $18 $A1

    ld e, $91                                     ; $430B: $1E $91
    ld c, $FA                                     ; $430D: $0E $FA
    sub l                                         ; $430F: $95
    db $FD                                        ; $4310: $FD
    ld a, [hl-]                                   ; $4311: $3A
    ld a, a                                       ; $4312: $7F
    cp h                                          ; $4313: $BC
    ld a, a                                       ; $4314: $7F
    cp [hl]                                       ; $4315: $BE
    cp $DD                                        ; $4316: $FE $DD
    cp $DD                                        ; $4318: $FE $DD
    rst RST_38                                    ; $431A: $FF
    ldh [$FFF0], a                                ; $431B: $E0 $F0
    nop                                           ; $431D: $00
    add b                                         ; $431E: $80
    nop                                           ; $431F: $00
    nop                                           ; $4320: $00
    nop                                           ; $4321: $00
    jr nc, jr_01A_4324                            ; $4322: $30 $00

jr_01A_4324:
    ld d, h                                       ; $4324: $54
    jr nz, jr_01A_42B2                            ; $4325: $20 $8B

    ld [hl], h                                    ; $4327: $74
    ld a, c                                       ; $4328: $79
    add [hl]                                      ; $4329: $86
    add a                                         ; $432A: $87
    ld a, c                                       ; $432B: $79
    rrca                                          ; $432C: $0F
    pop af                                        ; $432D: $F1
    ld [hl], e                                    ; $432E: $73
    adc l                                         ; $432F: $8D

jr_01A_4330:
    db $DB                                        ; $4330: $DB
    dec h                                         ; $4331: $25
    rst RST_30                                    ; $4332: $F7
    jp hl                                         ; $4333: $E9


    rst RST_28                                    ; $4334: $EF

jr_01A_4335:
    ld d, $39                                     ; $4335: $16 $39
    rst RST_08                                    ; $4337: $CF
    rst RST_38                                    ; $4338: $FF
    scf                                           ; $4339: $37
    rst RST_38                                    ; $433A: $FF
    ld b, b                                       ; $433B: $40
    rst RST_38                                    ; $433C: $FF
    ld a, $7F                                     ; $433D: $3E $7F
    inc hl                                        ; $433F: $23
    nop                                           ; $4340: $00
    nop                                           ; $4341: $00
    nop                                           ; $4342: $00
    nop                                           ; $4343: $00
    ld [hl], b                                    ; $4344: $70
    nop                                           ; $4345: $00
    adc h                                         ; $4346: $8C
    ld [hl], b                                    ; $4347: $70
    and e                                         ; $4348: $A3
    db $FC                                        ; $4349: $FC
    push af                                       ; $434A: $F5
    rst RST_38                                    ; $434B: $FF
    ld a, [$FFFF]                                 ; $434C: $FA $FF $FF

jr_01A_434F:
    rst RST_08                                    ; $434F: $CF
    rst RST_08                                    ; $4350: $CF
    or e                                          ; $4351: $B3
    sub e                                         ; $4352: $93
    ld l, l                                       ; $4353: $6D
    and a                                         ; $4354: $A7
    ld e, b                                       ; $4355: $58
    xor a                                         ; $4356: $AF

jr_01A_4357:
    ld d, a                                       ; $4357: $57
    rst RST_28                                    ; $4358: $EF
    db $10                                        ; $4359: $10
    ld a, [$FAE5]                                 ; $435A: $FA $E5 $FA
    push af                                       ; $435D: $F5
    ld a, [$0005]                                 ; $435E: $FA $05 $00
    nop                                           ; $4361: $00
    nop                                           ; $4362: $00
    nop                                           ; $4363: $00
    add b                                         ; $4364: $80
    nop                                           ; $4365: $00
    ret nz                                        ; $4366: $C0

    add b                                         ; $4367: $80
    ld h, b                                       ; $4368: $60
    ret nz                                        ; $4369: $C0

    ldh a, [$FFE0]                                ; $436A: $F0 $E0
    ld hl, sp-$10                                 ; $436C: $F8 $F0
    ld hl, sp-$80                                 ; $436E: $F8 $80
    ret z                                         ; $4370: $C8

    jr nc, jr_01A_4357                            ; $4371: $30 $E4

    ret c                                         ; $4373: $D8

    call c, $A000                                 ; $4374: $DC $00 $A0
    ld b, b                                       ; $4377: $40
    or b                                          ; $4378: $B0
    ld b, b                                       ; $4379: $40
    ld d, b                                       ; $437A: $50
    and b                                         ; $437B: $A0
    and b                                         ; $437C: $A0
    ld b, b                                       ; $437D: $40
    ret nz                                        ; $437E: $C0

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
    nop                                           ; $4394: $00
    nop                                           ; $4395: $00
    ld c, $00                                     ; $4396: $0E $00
    inc de                                        ; $4398: $13
    inc c                                         ; $4399: $0C
    rla                                           ; $439A: $17
    dec c                                         ; $439B: $0D
    inc l                                         ; $439C: $2C
    dec de                                        ; $439D: $1B
    dec l                                         ; $439E: $2D
    dec de                                        ; $439F: $1B
    ret nz                                        ; $43A0: $C0

    add b                                         ; $43A1: $80
    ret nz                                        ; $43A2: $C0

    add b                                         ; $43A3: $80
    pop bc                                        ; $43A4: $C1
    nop                                           ; $43A5: $00
    ld e, $01                                     ; $43A6: $1E $01
    ccf                                           ; $43A8: $3F
    inc e                                         ; $43A9: $1C
    ld a, a                                       ; $43AA: $7F
    rra                                           ; $43AB: $1F
    cp a                                          ; $43AC: $BF
    ld c, a                                       ; $43AD: $4F
    ld c, a                                       ; $43AE: $4F
    scf                                           ; $43AF: $37
    ccf                                           ; $43B0: $3F
    nop                                           ; $43B1: $00
    dec b                                         ; $43B2: $05
    inc bc                                        ; $43B3: $03
    ld b, $01                                     ; $43B4: $06 $01
    rra                                           ; $43B6: $1F
    ld b, $67                                     ; $43B7: $06 $67
    rra                                           ; $43B9: $1F
    adc a                                         ; $43BA: $8F
    ld a, a                                       ; $43BB: $7F
    rst RST_38                                    ; $43BC: $FF
    nop                                           ; $43BD: $00
    nop                                           ; $43BE: $00
    nop                                           ; $43BF: $00
    scf                                           ; $43C0: $37
    dec bc                                        ; $43C1: $0B
    db $D3                                        ; $43C2: $D3
    inc l                                         ; $43C3: $2C
    rra                                           ; $43C4: $1F
    ldh [c], a                                    ; $43C5: $E2
    rra                                           ; $43C6: $1F
    xor $0F                                       ; $43C7: $EE $0F
    or $FF                                        ; $43C9: $F6 $FF
    ld [hl], b                                    ; $43CB: $70
    ldh a, [$FF80]                                ; $43CC: $F0 $80
    ret nz                                        ; $43CE: $C0

    add b                                         ; $43CF: $80
    ret nz                                        ; $43D0: $C0

    nop                                           ; $43D1: $00
    ret nz                                        ; $43D2: $C0

    add b                                         ; $43D3: $80
    ldh a, [$FF80]                                ; $43D4: $F0 $80
    ldh a, [rNR41]                                ; $43D6: $F0 $20
    ldh [$FFC0], a                                ; $43D8: $E0 $C0
    ldh [$FFC0], a                                ; $43DA: $E0 $C0
    ret nz                                        ; $43DC: $C0

    nop                                           ; $43DD: $00
    nop                                           ; $43DE: $00
    nop                                           ; $43DF: $00
    rst RST_30                                    ; $43E0: $F7
    add sp, -$0F                                  ; $43E1: $E8 $F1
    ld c, $8E                                     ; $43E3: $0E $8E
    ld [hl], b                                    ; $43E5: $70
    inc b                                         ; $43E6: $04
    ld hl, sp+$3E                                 ; $43E7: $F8 $3E
    ret nz                                        ; $43E9: $C0

    rst RST_38                                    ; $43EA: $FF
    cp [hl]                                       ; $43EB: $BE
    sbc a                                         ; $43EC: $9F
    halt                                          ; $43ED: $76
    or [hl]                                       ; $43EE: $B6
    ld c, c                                       ; $43EF: $49
    ld d, d                                       ; $43F0: $52
    dec l                                         ; $43F1: $2D
    ld c, a                                       ; $43F2: $4F
    jr nc, jr_01A_442C                            ; $43F3: $30 $37

    ld c, $1B                                     ; $43F5: $0E $1B
    inc c                                         ; $43F7: $0C
    dec c                                         ; $43F8: $0D
    inc bc                                        ; $43F9: $03
    ld [$0B07], sp                                ; $43FA: $08 $07 $0B
    rlca                                          ; $43FD: $07
    rrca                                          ; $43FE: $0F
    nop                                           ; $43FF: $00
    add b                                         ; $4400: $80
    nop                                           ; $4401: $00
    add b                                         ; $4402: $80
    nop                                           ; $4403: $00
    nop                                           ; $4404: $00
    nop                                           ; $4405: $00
    nop                                           ; $4406: $00
    nop                                           ; $4407: $00
    add b                                         ; $4408: $80
    nop                                           ; $4409: $00
    ldh [$FF80], a                                ; $440A: $E0 $80
    ldh a, [$FFE0]                                ; $440C: $F0 $E0
    ldh a, [$FFE0]                                ; $440E: $F0 $E0
    ldh a, [rP1]                                  ; $4410: $F0 $00
    nop                                           ; $4412: $00
    nop                                           ; $4413: $00
    nop                                           ; $4414: $00
    nop                                           ; $4415: $00
    nop                                           ; $4416: $00
    nop                                           ; $4417: $00
    nop                                           ; $4418: $00
    nop                                           ; $4419: $00
    nop                                           ; $441A: $00
    nop                                           ; $441B: $00
    nop                                           ; $441C: $00
    nop                                           ; $441D: $00
    nop                                           ; $441E: $00
    nop                                           ; $441F: $00
    ld bc, $8200                                  ; $4420: $01 $00 $82
    ld bc, $8344                                  ; $4423: $01 $44 $83
    dec sp                                        ; $4426: $3B
    call nz, $F30C                                ; $4427: $C4 $0C $F3
    adc b                                         ; $442A: $88
    ld [hl], a                                    ; $442B: $77

jr_01A_442C:
    ld d, e                                       ; $442C: $53
    inc l                                         ; $442D: $2C
    ld l, $11                                     ; $442E: $2E $11
    rra                                           ; $4430: $1F
    rlca                                          ; $4431: $07
    rra                                           ; $4432: $1F
    nop                                           ; $4433: $00
    ld de, $170E                                  ; $4434: $11 $0E $17
    ld [$021F], sp                                ; $4437: $08 $1F $02
    rlca                                          ; $443A: $07
    ld bc, $0019                                  ; $443B: $01 $19 $00
    rla                                           ; $443E: $17
    ld [$0080], sp                                ; $443F: $08 $80 $00
    and b                                         ; $4442: $A0
    nop                                           ; $4443: $00
    ld d, a                                       ; $4444: $57
    and b                                         ; $4445: $A0

jr_01A_4446:
    ret c                                         ; $4446: $D8

    daa                                           ; $4447: $27
    ld a, $CF                                     ; $4448: $3E $CF
    ld a, a                                       ; $444A: $7F
    adc a                                         ; $444B: $8F
    sbc a                                         ; $444C: $9F
    ld l, a                                       ; $444D: $6F
    rst RST_18                                    ; $444E: $DF
    cpl                                           ; $444F: $2F
    cp a                                          ; $4450: $BF
    ld b, e                                       ; $4451: $43
    ld a, a                                       ; $4452: $7F
    and c                                         ; $4453: $A1
    ei                                            ; $4454: $FB
    ld h, l                                       ; $4455: $65
    di                                            ; $4456: $F3
    db $EC                                        ; $4457: $EC
    db $FD                                        ; $4458: $FD
    ld [bc], a                                    ; $4459: $02
    ld sp, hl                                     ; $445A: $F9
    sub $FF                                       ; $445B: $D6 $FF
    ld h, b                                       ; $445D: $60
    rst RST_38                                    ; $445E: $FF
    inc c                                         ; $445F: $0C
    nop                                           ; $4460: $00
    nop                                           ; $4461: $00
    ldh [rP1], a                                  ; $4462: $E0 $00
    jr nc, jr_01A_4446                            ; $4464: $30 $E0

    sbc b                                         ; $4466: $98
    ldh a, [$FF58]                                ; $4467: $F0 $58
    ldh a, [$FFFC]                                ; $4469: $F0 $FC
    ld hl, sp-$04                                 ; $446B: $F8 $FC
    ld hl, sp-$02                                 ; $446D: $F8 $FE
    db $FC                                        ; $446F: $FC
    cp $FC                                        ; $4470: $FE $FC
    cp $FC                                        ; $4472: $FE $FC
    rst RST_38                                    ; $4474: $FF
    cp $FF                                        ; $4475: $FE $FF
    cp $FF                                        ; $4477: $FE $FF
    ld a, [hl]                                    ; $4479: $7E
    rst RST_38                                    ; $447A: $FF
    ld a, [hl]                                    ; $447B: $7E
    rst RST_38                                    ; $447C: $FF
    ld a, [hl]                                    ; $447D: $7E
    rst RST_38                                    ; $447E: $FF
    nop                                           ; $447F: $00
    inc b                                         ; $4480: $04
    inc bc                                        ; $4481: $03
    inc b                                         ; $4482: $04
    inc bc                                        ; $4483: $03
    ld [bc], a                                    ; $4484: $02
    ld bc, $000F                                  ; $4485: $01 $0F $00
    rra                                           ; $4488: $1F
    ld c, $3F                                     ; $4489: $0E $3F
    ld c, $5F                                     ; $448B: $0E $5F
    daa                                           ; $448D: $27
    daa                                           ; $448E: $27
    dec de                                        ; $448F: $1B
    rra                                           ; $4490: $1F
    nop                                           ; $4491: $00
    dec b                                         ; $4492: $05
    inc bc                                        ; $4493: $03
    ld [bc], a                                    ; $4494: $02
    ld bc, $0106                                  ; $4495: $01 $06 $01
    rra                                           ; $4498: $1F
    ld b, $67                                     ; $4499: $06 $67
    rra                                           ; $449B: $1F
    adc a                                         ; $449C: $8F
    ld a, a                                       ; $449D: $7F
    rst RST_38                                    ; $449E: $FF
    nop                                           ; $449F: $00
    rst RST_00                                    ; $44A0: $C7
    ld a, [hl-]                                   ; $44A1: $3A
    rst RST_30                                    ; $44A2: $F7
    dec bc                                        ; $44A3: $0B
    sub e                                         ; $44A4: $93
    ld l, h                                       ; $44A5: $6C
    ld hl, $E3DE                                  ; $44A6: $21 $DE $E3
    inc e                                         ; $44A9: $1C
    rrca                                          ; $44AA: $0F
    ldh a, [$FFF5]                                ; $44AB: $F0 $F5
    ld [$C0FC], sp                                ; $44AD: $08 $FC $C0
    ret nz                                        ; $44B0: $C0

    nop                                           ; $44B1: $00
    ret nz                                        ; $44B2: $C0

    add b                                         ; $44B3: $80
    ret nz                                        ; $44B4: $C0

    add b                                         ; $44B5: $80
    ldh a, [$FF80]                                ; $44B6: $F0 $80
    ldh a, [rNR41]                                ; $44B8: $F0 $20
    ldh [$FFC0], a                                ; $44BA: $E0 $C0
    ldh [$FFC0], a                                ; $44BC: $E0 $C0
    ret nz                                        ; $44BE: $C0

    nop                                           ; $44BF: $00
    rst RST_38                                    ; $44C0: $FF
    nop                                           ; $44C1: $00
    xor b                                         ; $44C2: $A8
    ld d, b                                       ; $44C3: $50
    xor b                                         ; $44C4: $A8
    ld d, b                                       ; $44C5: $50
    jr @-$1E                                      ; $44C6: $18 $E0

    ld [$04F0], sp                                ; $44C8: $08 $F0 $04
    ld hl, sp+$0C                                 ; $44CB: $F8 $0C
    ldh a, [$FFBE]                                ; $44CD: $F0 $BE
    ld c, h                                       ; $44CF: $4C
    rst RST_38                                    ; $44D0: $FF
    inc a                                         ; $44D1: $3C
    rst RST_38                                    ; $44D2: $FF
    ld [hl], c                                    ; $44D3: $71
    ld [hl], e                                    ; $44D4: $73
    dec l                                         ; $44D5: $2D
    cpl                                           ; $44D6: $2F
    inc de                                        ; $44D7: $13
    ccf                                           ; $44D8: $3F
    nop                                           ; $44D9: $00
    nop                                           ; $44DA: $00
    nop                                           ; $44DB: $00
    nop                                           ; $44DC: $00
    nop                                           ; $44DD: $00
    nop                                           ; $44DE: $00
    nop                                           ; $44DF: $00
    ret nz                                        ; $44E0: $C0

    nop                                           ; $44E1: $00
    ldh a, [rLCDC]                                ; $44E2: $F0 $40
    ld hl, sp+$30                                 ; $44E4: $F8 $30
    ld hl, sp-$50                                 ; $44E6: $F8 $B0
    ld hl, sp-$50                                 ; $44E8: $F8 $B0
    ld hl, sp+$70                                 ; $44EA: $F8 $70
    ld a, h                                       ; $44EC: $7C
    jr c, @+$3E                                   ; $44ED: $38 $3C

    jr @+$3E                                      ; $44EF: $18 $3C

    jr @+$3A                                      ; $44F1: $18 $38

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
    nop                                           ; $4515: $00
    inc bc                                        ; $4516: $03
    nop                                           ; $4517: $00
    ld [bc], a                                    ; $4518: $02
    ld bc, $0102                                  ; $4519: $01 $02 $01
    ld bc, $0100                                  ; $451C: $01 $00 $01
    nop                                           ; $451F: $00
    rlca                                          ; $4520: $07
    ld bc, $0003                                  ; $4521: $01 $03 $00
    db $FC                                        ; $4524: $FC
    inc bc                                        ; $4525: $03
    add l                                         ; $4526: $85
    ld a, d                                       ; $4527: $7A
    ld [hl], a                                    ; $4528: $77
    ld [$010F], sp                                ; $4529: $08 $0F $01
    ld bc, $0100                                  ; $452C: $01 $00 $01
    nop                                           ; $452F: $00
    jp $BF00                                      ; $4530: $C3 $00 $BF


    ld b, e                                       ; $4533: $43
    ld c, a                                       ; $4534: $4F
    scf                                           ; $4535: $37
    ld c, a                                       ; $4536: $4F
    inc [hl]                                      ; $4537: $34
    cpl                                           ; $4538: $2F
    dec d                                         ; $4539: $15
    rra                                           ; $453A: $1F
    rlca                                          ; $453B: $07
    rlca                                          ; $453C: $07
    ld [bc], a                                    ; $453D: $02
    inc bc                                        ; $453E: $03
    nop                                           ; $453F: $00
    ld h, b                                       ; $4540: $60
    nop                                           ; $4541: $00
    xor b                                         ; $4542: $A8
    ld b, b                                       ; $4543: $40
    inc d                                         ; $4544: $14
    add sp, -$0B                                  ; $4545: $E8 $F5
    ld [$F10E], sp                                ; $4547: $08 $0E $F1
    rra                                           ; $454A: $1F
    db $E3                                        ; $454B: $E3
    rst RST_20                                    ; $454C: $E7
    dec de                                        ; $454D: $1B
    or a                                          ; $454E: $B7
    ld c, e                                       ; $454F: $4B
    rst RST_28                                    ; $4550: $EF
    db $D3                                        ; $4551: $D3
    rst RST_18                                    ; $4552: $DF
    add hl, hl                                    ; $4553: $29
    ld a, a                                       ; $4554: $7F
    sbc h                                         ; $4555: $9C
    rst RST_38                                    ; $4556: $FF
    inc a                                         ; $4557: $3C
    rst RST_38                                    ; $4558: $FF
    add e                                         ; $4559: $83
    rst RST_38                                    ; $455A: $FF
    ld [hl], e                                    ; $455B: $73
    rst RST_38                                    ; $455C: $FF
    inc c                                         ; $455D: $0C
    rst RST_38                                    ; $455E: $FF
    ld b, e                                       ; $455F: $43
    nop                                           ; $4560: $00
    nop                                           ; $4561: $00
    add b                                         ; $4562: $80
    nop                                           ; $4563: $00
    ret nz                                        ; $4564: $C0

    add b                                         ; $4565: $80
    ldh [$FFC0], a                                ; $4566: $E0 $C0
    ldh a, [$FFE0]                                ; $4568: $F0 $E0
    ldh a, [$FFC0]                                ; $456A: $F0 $C0
    ret z                                         ; $456C: $C8

    or b                                          ; $456D: $B0
    add sp, $10                                   ; $456E: $E8 $10
    ret c                                         ; $4570: $D8

    nop                                           ; $4571: $00
    add b                                         ; $4572: $80
    nop                                           ; $4573: $00
    ld b, b                                       ; $4574: $40
    add b                                         ; $4575: $80
    ld b, b                                       ; $4576: $40
    add b                                         ; $4577: $80
    and b                                         ; $4578: $A0
    ld b, b                                       ; $4579: $40
    and b                                         ; $457A: $A0
    ld b, b                                       ; $457B: $40
    and b                                         ; $457C: $A0
    ld b, b                                       ; $457D: $40
    ret nz                                        ; $457E: $C0

    nop                                           ; $457F: $00
    nop                                           ; $4580: $00
    nop                                           ; $4581: $00
    nop                                           ; $4582: $00
    nop                                           ; $4583: $00
    nop                                           ; $4584: $00
    nop                                           ; $4585: $00
    nop                                           ; $4586: $00
    nop                                           ; $4587: $00
    nop                                           ; $4588: $00
    nop                                           ; $4589: $00
    nop                                           ; $458A: $00
    nop                                           ; $458B: $00
    nop                                           ; $458C: $00
    nop                                           ; $458D: $00
    nop                                           ; $458E: $00
    nop                                           ; $458F: $00

jr_01A_4590:
    ret nz                                        ; $4590: $C0

    nop                                           ; $4591: $00
    and b                                         ; $4592: $A0
    ld b, b                                       ; $4593: $40
    sub c                                         ; $4594: $91
    ld h, b                                       ; $4595: $60
    ld c, [hl]                                    ; $4596: $4E
    ld sp, $3C43                                  ; $4597: $31 $43 $3C
    ld [hl+], a                                   ; $459A: $22
    dec e                                         ; $459B: $1D
    inc d                                         ; $459C: $14

jr_01A_459D:
    dec bc                                        ; $459D: $0B
    dec bc                                        ; $459E: $0B
    inc b                                         ; $459F: $04
    ld [hl], a                                    ; $45A0: $77
    set 7, a                                      ; $45A1: $CB $FF
    jr nc, jr_01A_459D                            ; $45A3: $30 $F8

    rst RST_30                                    ; $45A5: $F7
    ldh a, [$FFEF]                                ; $45A6: $F0 $EF
    ldh [$FFDF], a                                ; $45A8: $E0 $DF
    ldh [$FF1F], a                                ; $45AA: $E0 $1F
    ld a, b                                       ; $45AC: $78
    daa                                           ; $45AD: $27
    ld e, a                                       ; $45AE: $5F
    jr c, jr_01A_4590                             ; $45AF: $38 $DF

    ld a, $4F                                     ; $45B1: $3E $4F
    add hl, sp                                    ; $45B3: $39
    ccf                                           ; $45B4: $3F
    rla                                           ; $45B5: $17
    ld e, a                                       ; $45B6: $5F
    ld hl, $0073                                  ; $45B7: $21 $73 $00
    inc bc                                        ; $45BA: $03
    nop                                           ; $45BB: $00
    dec b                                         ; $45BC: $05
    ld [bc], a                                    ; $45BD: $02
    rrca                                          ; $45BE: $0F
    ld b, $E0                                     ; $45BF: $06 $E0
    nop                                           ; $45C1: $00
    jr @-$1E                                      ; $45C2: $18 $E0

    inc c                                         ; $45C4: $0C
    ld hl, sp+$56                                 ; $45C5: $F8 $56
    db $FC                                        ; $45C7: $FC
    xor e                                         ; $45C8: $AB
    cp $FD                                        ; $45C9: $FE $FD
    rst RST_38                                    ; $45CB: $FF
    rst RST_38                                    ; $45CC: $FF
    rst RST_38                                    ; $45CD: $FF
    rst RST_38                                    ; $45CE: $FF
    ccf                                           ; $45CF: $3F
    rst RST_38                                    ; $45D0: $FF
    rra                                           ; $45D1: $1F
    cp a                                          ; $45D2: $BF
    ld c, a                                       ; $45D3: $4F
    cp a                                          ; $45D4: $BF
    ld b, a                                       ; $45D5: $47
    rst RST_28                                    ; $45D6: $EF
    inc de                                        ; $45D7: $13
    rst RST_28                                    ; $45D8: $EF
    db $10                                        ; $45D9: $10
    ldh a, [$FFCF]                                ; $45DA: $F0 $CF
    db $F4                                        ; $45DC: $F4
    db $EB                                        ; $45DD: $EB
    db $F4                                        ; $45DE: $F4
    dec bc                                        ; $45DF: $0B
    ld a, [$7261]                                 ; $45E0: $FA $61 $72
    add c                                         ; $45E3: $81
    ld h, d                                       ; $45E4: $62
    add c                                         ; $45E5: $81
    ld h, l                                       ; $45E6: $65
    add d                                         ; $45E7: $82
    add $00                                       ; $45E8: $C6 $00
    add b                                         ; $45EA: $80
    nop                                           ; $45EB: $00
    or b                                          ; $45EC: $B0
    nop                                           ; $45ED: $00
    ldh a, [$FFA0]                                ; $45EE: $F0 $A0
    ld hl, sp-$80                                 ; $45F0: $F8 $80
    ld hl, sp-$50                                 ; $45F2: $F8 $B0
    ld hl, sp+$70                                 ; $45F4: $F8 $70
    ld [hl], b                                    ; $45F6: $70
    ldh [rSVBK], a                                ; $45F7: $E0 $70
    ldh [$FFE0], a                                ; $45F9: $E0 $E0
    ret nz                                        ; $45FB: $C0

    ldh [$FFC0], a                                ; $45FC: $E0 $C0
    ret nz                                        ; $45FE: $C0

    nop                                           ; $45FF: $00
    rrca                                          ; $4600: $0F
    ld bc, $0003                                  ; $4601: $01 $03 $00
    nop                                           ; $4604: $00
    nop                                           ; $4605: $00
    nop                                           ; $4606: $00
    nop                                           ; $4607: $00
    nop                                           ; $4608: $00
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
    nop                                           ; $4620: $00
    nop                                           ; $4621: $00
    nop                                           ; $4622: $00
    nop                                           ; $4623: $00
    ld a, [hl]                                    ; $4624: $7E
    nop                                           ; $4625: $00
    ld b, c                                       ; $4626: $41
    ld a, $38                                     ; $4627: $3E $38
    rlca                                          ; $4629: $07
    rlca                                          ; $462A: $07
    nop                                           ; $462B: $00
    nop                                           ; $462C: $00
    nop                                           ; $462D: $00
    nop                                           ; $462E: $00
    nop                                           ; $462F: $00
    ld h, c                                       ; $4630: $61

jr_01A_4631:
    nop                                           ; $4631: $00
    ld e, a                                       ; $4632: $5F
    ld hl, $1B27                                  ; $4633: $21 $27 $1B
    daa                                           ; $4636: $27
    ld a, [de]                                    ; $4637: $1A
    rla                                           ; $4638: $17
    ld a, [bc]                                    ; $4639: $0A
    rrca                                          ; $463A: $0F
    inc bc                                        ; $463B: $03
    inc bc                                        ; $463C: $03
    ld bc, $0001                                  ; $463D: $01 $01 $00
    inc bc                                        ; $4640: $03
    nop                                           ; $4641: $00
    dec b                                         ; $4642: $05
    ld [bc], a                                    ; $4643: $02
    adc b                                         ; $4644: $88
    rlca                                          ; $4645: $07
    ld [hl], a                                    ; $4646: $77
    adc b                                         ; $4647: $88
    jr jr_01A_4631                                ; $4648: $18 $E7

    db $10                                        ; $464A: $10
    rst RST_28                                    ; $464B: $EF
    and a                                         ; $464C: $A7
    ld e, b                                       ; $464D: $58
    ld e, l                                       ; $464E: $5D
    ld [hl+], a                                   ; $464F: $22
    ccf                                           ; $4650: $3F
    ld c, $FE                                     ; $4651: $0E $FE
    ld bc, $DC23                                  ; $4653: $01 $23 $DC
    rst RST_28                                    ; $4656: $EF
    pop de                                        ; $4657: $D1
    rst RST_38                                    ; $4658: $FF
    inc b                                         ; $4659: $04
    rst RST_38                                    ; $465A: $FF
    inc hl                                        ; $465B: $23
    cp a                                          ; $465C: $BF
    ld l, b                                       ; $465D: $68
    ld sp, hl                                     ; $465E: $F9
    sbc a                                         ; $465F: $9F
    ld b, c                                       ; $4660: $41
    nop                                           ; $4661: $00
    xor [hl]                                      ; $4662: $AE
    ld b, c                                       ; $4663: $41
    or b                                          ; $4664: $B0
    ld c, a                                       ; $4665: $4F
    ld h, d                                       ; $4666: $62
    sbc a                                         ; $4667: $9F
    push hl                                       ; $4668: $E5
    rra                                           ; $4669: $1F
    ccf                                           ; $466A: $3F
    rst RST_18                                    ; $466B: $DF
    xor a                                         ; $466C: $AF
    ld e, a                                       ; $466D: $5F
    ld a, a                                       ; $466E: $7F
    sbc a                                         ; $466F: $9F
    rst RST_38                                    ; $4670: $FF
    ld e, a                                       ; $4671: $5F
    rst RST_38                                    ; $4672: $FF
    rst RST_28                                    ; $4673: $EF
    rst RST_38                                    ; $4674: $FF
    ldh [rIE], a                                  ; $4675: $E0 $FF
    rra                                           ; $4677: $1F
    rst RST_38                                    ; $4678: $FF
    sbc a                                         ; $4679: $9F
    rst RST_38                                    ; $467A: $FF
    ld h, b                                       ; $467B: $60
    rst RST_38                                    ; $467C: $FF
    rra                                           ; $467D: $1F
    cp a                                          ; $467E: $BF
    ld e, a                                       ; $467F: $5F
    nop                                           ; $4680: $00
    nop                                           ; $4681: $00
    rst RST_38                                    ; $4682: $FF
    nop                                           ; $4683: $00
    cp a                                          ; $4684: $BF
    rst RST_38                                    ; $4685: $FF
    ld a, a                                       ; $4686: $7F
    rst RST_38                                    ; $4687: $FF
    rst RST_38                                    ; $4688: $FF
    rst RST_38                                    ; $4689: $FF
    rst RST_38                                    ; $468A: $FF
    rst RST_38                                    ; $468B: $FF
    rst RST_38                                    ; $468C: $FF
    rst RST_38                                    ; $468D: $FF
    rst RST_38                                    ; $468E: $FF
    rst RST_38                                    ; $468F: $FF
    rst RST_38                                    ; $4690: $FF
    rst RST_38                                    ; $4691: $FF
    rst RST_38                                    ; $4692: $FF
    ldh [$FFFB], a                                ; $4693: $E0 $FB
    dec b                                         ; $4695: $05
    db $ED                                        ; $4696: $ED
    db $10                                        ; $4697: $10
    db $D3                                        ; $4698: $D3
    add b                                         ; $4699: $80
    call nz, $8583                                ; $469A: $C4 $83 $85
    ld [bc], a                                    ; $469D: $02
    add l                                         ; $469E: $85
    ld [bc], a                                    ; $469F: $02
    nop                                           ; $46A0: $00
    nop                                           ; $46A1: $00
    add b                                         ; $46A2: $80
    nop                                           ; $46A3: $00
    ret nz                                        ; $46A4: $C0

    add b                                         ; $46A5: $80
    ld hl, sp-$80                                 ; $46A6: $F8 $80
    ret z                                         ; $46A8: $C8

    or b                                          ; $46A9: $B0
    ldh a, [$FF80]                                ; $46AA: $F0 $80
    ldh [$FF80], a                                ; $46AC: $E0 $80
    ldh [rLCDC], a                                ; $46AE: $E0 $40
    ldh [rLCDC], a                                ; $46B0: $E0 $40
    ldh [rLCDC], a                                ; $46B2: $E0 $40
    ldh [$FFC0], a                                ; $46B4: $E0 $C0
    ldh [rP1], a                                  ; $46B6: $E0 $00
    db $10                                        ; $46B8: $10
    ldh [rNR10], a                                ; $46B9: $E0 $10
    ldh [$FF90], a                                ; $46BB: $E0 $90
    ld h, b                                       ; $46BD: $60
    ld c, b                                       ; $46BE: $48
    jr nc, jr_01A_46C1                            ; $46BF: $30 $00

jr_01A_46C1:
    nop                                           ; $46C1: $00
    nop                                           ; $46C2: $00
    nop                                           ; $46C3: $00
    nop                                           ; $46C4: $00
    nop                                           ; $46C5: $00
    nop                                           ; $46C6: $00
    nop                                           ; $46C7: $00
    nop                                           ; $46C8: $00
    nop                                           ; $46C9: $00
    nop                                           ; $46CA: $00
    nop                                           ; $46CB: $00
    nop                                           ; $46CC: $00
    nop                                           ; $46CD: $00
    nop                                           ; $46CE: $00
    nop                                           ; $46CF: $00
    nop                                           ; $46D0: $00
    nop                                           ; $46D1: $00
    nop                                           ; $46D2: $00
    nop                                           ; $46D3: $00
    ld b, $00                                     ; $46D4: $06 $00
    dec b                                         ; $46D6: $05
    ld [bc], a                                    ; $46D7: $02
    inc b                                         ; $46D8: $04
    inc bc                                        ; $46D9: $03
    ld [bc], a                                    ; $46DA: $02
    ld bc, $0102                                  ; $46DB: $01 $02 $01
    ld bc, $FF00                                  ; $46DE: $01 $00 $FF
    rst RST_38                                    ; $46E1: $FF
    rst RST_38                                    ; $46E2: $FF
    ld a, a                                       ; $46E3: $7F
    rst RST_38                                    ; $46E4: $FF
    pop hl                                        ; $46E5: $E1
    rst RST_28                                    ; $46E6: $EF
    add h                                         ; $46E7: $84
    adc [hl]                                      ; $46E8: $8E
    ld bc, $0E9F                                  ; $46E9: $01 $9F $0E
    ccf                                           ; $46EC: $3F
    rrca                                          ; $46ED: $0F
    ld e, a                                       ; $46EE: $5F
    daa                                           ; $46EF: $27
    daa                                           ; $46F0: $27
    dec de                                        ; $46F1: $1B
    rra                                           ; $46F2: $1F
    nop                                           ; $46F3: $00
    dec b                                         ; $46F4: $05
    inc bc                                        ; $46F5: $03
    ld [bc], a                                    ; $46F6: $02
    ld bc, $0106                                  ; $46F7: $01 $06 $01
    rra                                           ; $46FA: $1F
    ld b, $67                                     ; $46FB: $06 $67
    rra                                           ; $46FD: $1F
    adc a                                         ; $46FE: $8F
    ld a, a                                       ; $46FF: $7F
    rst RST_38                                    ; $4700: $FF
    add b                                         ; $4701: $80
    rst RST_00                                    ; $4702: $C7
    dec sp                                        ; $4703: $3B
    inc bc                                        ; $4704: $03
    db $FC                                        ; $4705: $FC
    ld [bc], a                                    ; $4706: $02
    db $FD                                        ; $4707: $FD
    add h                                         ; $4708: $84
    ld a, e                                       ; $4709: $7B
    ld sp, hl                                     ; $470A: $F9
    add [hl]                                      ; $470B: $86
    rst RST_28                                    ; $470C: $EF
    pop bc                                        ; $470D: $C1
    rst RST_20                                    ; $470E: $E7
    jp Jump_000_03C7                              ; $470F: $C3 $C7 $03


    jp $C181                                      ; $4712: $C3 $81 $C1


    add b                                         ; $4715: $80
    ldh a, [$FF80]                                ; $4716: $F0 $80
    ldh a, [rNR41]                                ; $4718: $F0 $20
    ldh [$FFC0], a                                ; $471A: $E0 $C0
    ldh [$FFC0], a                                ; $471C: $E0 $C0
    ret nz                                        ; $471E: $C0

    nop                                           ; $471F: $00
    add [hl]                                      ; $4720: $86
    nop                                           ; $4721: $00
    add b                                         ; $4722: $80
    nop                                           ; $4723: $00
    add b                                         ; $4724: $80
    nop                                           ; $4725: $00
    add b                                         ; $4726: $80
    nop                                           ; $4727: $00
    ld b, b                                       ; $4728: $40
    add b                                         ; $4729: $80
    ldh [rP1], a                                  ; $472A: $E0 $00
    or $60                                        ; $472C: $F6 $60
    rst RST_38                                    ; $472E: $FF
    ldh [c], a                                    ; $472F: $E2
    rst RST_38                                    ; $4730: $FF
    jp hl                                         ; $4731: $E9


    rst RST_38                                    ; $4732: $FF
    db $ED                                        ; $4733: $ED
    rst RST_38                                    ; $4734: $FF
    sbc l                                         ; $4735: $9D
    cp a                                          ; $4736: $BF
    ld b, e                                       ; $4737: $43
    ld h, e                                       ; $4738: $63
    ld bc, $0001                                  ; $4739: $01 $01 $00
    ld bc, $0100                                  ; $473C: $01 $00 $01
    nop                                           ; $473F: $00
    ld h, h                                       ; $4740: $64
    jr @+$56                                      ; $4741: $18 $54

    jr z, @-$4A                                   ; $4743: $28 $B4

    ld c, b                                       ; $4745: $48
    call z, RST_00                                ; $4746: $CC $00 $00
    nop                                           ; $4749: $00
    nop                                           ; $474A: $00
    nop                                           ; $474B: $00
    nop                                           ; $474C: $00
    nop                                           ; $474D: $00
    add b                                         ; $474E: $80
    nop                                           ; $474F: $00
    ret nz                                        ; $4750: $C0

    add b                                         ; $4751: $80
    ret nz                                        ; $4752: $C0

    add b                                         ; $4753: $80
    ret nz                                        ; $4754: $C0

    add b                                         ; $4755: $80
    ret nz                                        ; $4756: $C0

    add b                                         ; $4757: $80
    ldh [$FFC0], a                                ; $4758: $E0 $C0
    ldh [$FFC0], a                                ; $475A: $E0 $C0
    ldh [$FFC0], a                                ; $475C: $E0 $C0
    ret nz                                        ; $475E: $C0

    nop                                           ; $475F: $00
    rst RST_38                                    ; $4760: $FF
    nop                                           ; $4761: $00
    nop                                           ; $4762: $00
    nop                                           ; $4763: $00
    nop                                           ; $4764: $00
    nop                                           ; $4765: $00
    nop                                           ; $4766: $00
    nop                                           ; $4767: $00
    nop                                           ; $4768: $00
    nop                                           ; $4769: $00
    nop                                           ; $476A: $00
    nop                                           ; $476B: $00
    nop                                           ; $476C: $00
    nop                                           ; $476D: $00
    nop                                           ; $476E: $00
    nop                                           ; $476F: $00
    nop                                           ; $4770: $00
    nop                                           ; $4771: $00
    nop                                           ; $4772: $00
    nop                                           ; $4773: $00
    nop                                           ; $4774: $00
    nop                                           ; $4775: $00
    nop                                           ; $4776: $00
    nop                                           ; $4777: $00
    nop                                           ; $4778: $00
    nop                                           ; $4779: $00
    nop                                           ; $477A: $00
    nop                                           ; $477B: $00
    nop                                           ; $477C: $00
    nop                                           ; $477D: $00
    nop                                           ; $477E: $00
    nop                                           ; $477F: $00
    nop                                           ; $4780: $00
    nop                                           ; $4781: $00
    nop                                           ; $4782: $00
    nop                                           ; $4783: $00
    nop                                           ; $4784: $00
    nop                                           ; $4785: $00
    nop                                           ; $4786: $00
    nop                                           ; $4787: $00
    nop                                           ; $4788: $00
    nop                                           ; $4789: $00
    rlca                                          ; $478A: $07
    nop                                           ; $478B: $00
    inc b                                         ; $478C: $04
    inc bc                                        ; $478D: $03
    inc bc                                        ; $478E: $03
    nop                                           ; $478F: $00
    nop                                           ; $4790: $00
    nop                                           ; $4791: $00
    nop                                           ; $4792: $00
    nop                                           ; $4793: $00
    nop                                           ; $4794: $00
    nop                                           ; $4795: $00
    ld b, $00                                     ; $4796: $06 $00
    dec b                                         ; $4798: $05
    ld [bc], a                                    ; $4799: $02
    ld [bc], a                                    ; $479A: $02
    ld bc, $0102                                  ; $479B: $01 $02 $01
    ld bc, $0000                                  ; $479E: $01 $00 $00
    nop                                           ; $47A1: $00
    ld bc, $E100                                  ; $47A2: $01 $00 $E1
    nop                                           ; $47A5: $00
    rra                                           ; $47A6: $1F
    ldh [$FF80], a                                ; $47A7: $E0 $80
    ld a, a                                       ; $47A9: $7F
    ld a, a                                       ; $47AA: $7F
    rrca                                          ; $47AB: $0F
    rrca                                          ; $47AC: $0F
    nop                                           ; $47AD: $00
    rrca                                          ; $47AE: $0F
    ld [bc], a                                    ; $47AF: $02
    dec de                                        ; $47B0: $1B
    ld b, $FF                                     ; $47B1: $06 $FF
    add hl, de                                    ; $47B3: $19
    ld a, a                                       ; $47B4: $7F
    cp a                                          ; $47B5: $BF
    ld a, a                                       ; $47B6: $7F
    and a                                         ; $47B7: $A7
    ld a, a                                       ; $47B8: $7F
    xor [hl]                                      ; $47B9: $AE
    cp $38                                        ; $47BA: $FE $38
    jr c, jr_01A_47CE                             ; $47BC: $38 $10

    jr jr_01A_47C0                                ; $47BE: $18 $00

jr_01A_47C0:
    jr jr_01A_47C2                                ; $47C0: $18 $00

jr_01A_47C2:
    ld [hl], h                                    ; $47C2: $74
    ld [$6C92], sp                                ; $47C3: $08 $92 $6C
    cp c                                          ; $47C6: $B9
    ld h, [hl]                                    ; $47C7: $66
    ld l, b                                       ; $47C8: $68
    rst RST_10                                    ; $47C9: $D7
    ld l, h                                       ; $47CA: $6C
    db $DB                                        ; $47CB: $DB
    sbc $39                                       ; $47CC: $DE $39

jr_01A_47CE:
    ld a, e                                       ; $47CE: $7B
    and h                                         ; $47CF: $A4
    db $E3                                        ; $47D0: $E3
    sbc l                                         ; $47D1: $9D
    rst RST_08                                    ; $47D2: $CF
    ld a, $FF                                     ; $47D3: $3E $FF
    ld a, [hl]                                    ; $47D5: $7E
    rst RST_08                                    ; $47D6: $CF
    ldh a, [$FF9F]                                ; $47D7: $F0 $9F
    xor $FF                                       ; $47D9: $EE $FF
    rst RST_08                                    ; $47DB: $CF
    rst RST_18                                    ; $47DC: $DF
    and a                                         ; $47DD: $A7
    rst RST_20                                    ; $47DE: $E7
    dec de                                        ; $47DF: $1B
    inc c                                         ; $47E0: $0C
    nop                                           ; $47E1: $00
    dec d                                         ; $47E2: $15
    ld [$1D22], sp                                ; $47E3: $08 $22 $1D
    sbc $21                                       ; $47E6: $DE $21
    ld h, c                                       ; $47E8: $61
    sbc [hl]                                      ; $47E9: $9E
    ld b, e                                       ; $47EA: $43
    cp h                                          ; $47EB: $BC
    sbc h                                         ; $47EC: $9C
    ld h, e                                       ; $47ED: $63
    halt                                          ; $47EE: $76
    adc c                                         ; $47EF: $89
    db $FD                                        ; $47F0: $FD
    ld a, [hl-]                                   ; $47F1: $3A
    ei                                            ; $47F2: $FB
    add l                                         ; $47F3: $85
    adc [hl]                                      ; $47F4: $8E
    ld [hl], e                                    ; $47F5: $73
    cp a                                          ; $47F6: $BF
    ld c, l                                       ; $47F7: $4D
    rst RST_38                                    ; $47F8: $FF
    db $10                                        ; $47F9: $10
    rst RST_18                                    ; $47FA: $DF
    xor a                                         ; $47FB: $AF
    rst RST_38                                    ; $47FC: $FF
    ret z                                         ; $47FD: $C8

    db $ED                                        ; $47FE: $ED
    jp nc, Jump_000_001C                          ; $47FF: $D2 $1C $00

    inc hl                                        ; $4802: $23
    inc e                                         ; $4803: $1C
    add sp, $3F                                   ; $4804: $E8 $3F
    db $FD                                        ; $4806: $FD
    ld a, a                                       ; $4807: $7F
    cp $7F                                        ; $4808: $FE $7F
    rst RST_38                                    ; $480A: $FF
    ld [hl], e                                    ; $480B: $73
    di                                            ; $480C: $F3
    ld l, h                                       ; $480D: $6C
    db $E4                                        ; $480E: $E4
    ld e, e                                       ; $480F: $5B
    jp hl                                         ; $4810: $E9


    ld d, $EB                                     ; $4811: $16 $EB
    sub h                                         ; $4813: $94
    ld a, e                                       ; $4814: $7B
    call nz, $D0FF                                ; $4815: $C4 $FF $D0
    ld a, [$F225]                                 ; $4818: $FA $25 $F2
    xor l                                         ; $481B: $AD
    rst RST_38                                    ; $481C: $FF
    ret nz                                        ; $481D: $C0

    db $FC                                        ; $481E: $FC
    ld hl, sp+$00                                 ; $481F: $F8 $00
    nop                                           ; $4821: $00
    nop                                           ; $4822: $00
    nop                                           ; $4823: $00
    ret nz                                        ; $4824: $C0

    nop                                           ; $4825: $00
    ld h, b                                       ; $4826: $60
    ret nz                                        ; $4827: $C0

    or b                                          ; $4828: $B0
    ldh [$FFD8], a                                ; $4829: $E0 $D8
    ldh a, [$FFFC]                                ; $482B: $F0 $FC
    ld hl, sp-$02                                 ; $482D: $F8 $FE
    ld a, h                                       ; $482F: $7C
    cp $20                                        ; $4830: $FE $20
    ld [hl], e                                    ; $4832: $73
    adc h                                         ; $4833: $8C
    ld e, l                                       ; $4834: $5D
    and d                                         ; $4835: $A2
    ld e, e                                       ; $4836: $5B
    and b                                         ; $4837: $A0

jr_01A_4838:
    call nc, $3428                                ; $4838: $D4 $28 $34
    ret z                                         ; $483B: $C8

    jp z, Jump_000_3A34                           ; $483C: $CA $34 $3A

    inc b                                         ; $483F: $04
    ld a, a                                       ; $4840: $7F
    jr nc, jr_01A_48C0                            ; $4841: $30 $7D

    jr c, jr_01A_48BD                             ; $4843: $38 $78

    jr nc, jr_01A_4838                            ; $4845: $30 $F1

    ld h, b                                       ; $4847: $60
    and $41                                       ; $4848: $E6 $41
    ret z                                         ; $484A: $C8

    rlca                                          ; $484B: $07
    rrca                                          ; $484C: $0F
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
    ldh a, [c]                                    ; $4860: $F2
    dec c                                         ; $4861: $0D
    ld a, e                                       ; $4862: $7B
    db $F4                                        ; $4863: $F4
    cp a                                          ; $4864: $BF
    ld [hl], c                                    ; $4865: $71
    rst RST_38                                    ; $4866: $FF
    ld bc, $FC7F                                  ; $4867: $01 $7F $FC
    cp $FC                                        ; $486A: $FE $FC
    db $FC                                        ; $486C: $FC
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
    ld a, h                                       ; $4880: $7C
    add b                                         ; $4881: $80
    ldh [c], a                                    ; $4882: $E2
    ld e, h                                       ; $4883: $5C
    pop bc                                        ; $4884: $C1
    cp [hl]                                       ; $4885: $BE
    ret nz                                        ; $4886: $C0

    cp a                                          ; $4887: $BF
    jp Jump_000_3F3C                              ; $4888: $C3 $3C $3F


    inc bc                                        ; $488B: $03
    rra                                           ; $488C: $1F
    rrca                                          ; $488D: $0F
    rrca                                          ; $488E: $0F
    nop                                           ; $488F: $00
    nop                                           ; $4890: $00
    nop                                           ; $4891: $00
    nop                                           ; $4892: $00
    nop                                           ; $4893: $00
    nop                                           ; $4894: $00
    nop                                           ; $4895: $00
    nop                                           ; $4896: $00
    nop                                           ; $4897: $00
    nop                                           ; $4898: $00
    nop                                           ; $4899: $00
    nop                                           ; $489A: $00
    nop                                           ; $489B: $00
    nop                                           ; $489C: $00
    nop                                           ; $489D: $00
    nop                                           ; $489E: $00
    nop                                           ; $489F: $00
    inc bc                                        ; $48A0: $03
    nop                                           ; $48A1: $00
    nop                                           ; $48A2: $00
    nop                                           ; $48A3: $00
    ldh [rP1], a                                  ; $48A4: $E0 $00
    ldh a, [$FF60]                                ; $48A6: $F0 $60
    ldh a, [$FF60]                                ; $48A8: $F0 $60
    ld hl, sp-$50                                 ; $48AA: $F8 $B0
    ld hl, sp-$50                                 ; $48AC: $F8 $B0
    ld hl, sp+$00                                 ; $48AE: $F8 $00
    nop                                           ; $48B0: $00
    nop                                           ; $48B1: $00
    nop                                           ; $48B2: $00
    nop                                           ; $48B3: $00
    nop                                           ; $48B4: $00
    nop                                           ; $48B5: $00
    nop                                           ; $48B6: $00
    nop                                           ; $48B7: $00
    nop                                           ; $48B8: $00
    nop                                           ; $48B9: $00
    nop                                           ; $48BA: $00
    nop                                           ; $48BB: $00
    nop                                           ; $48BC: $00

jr_01A_48BD:
    nop                                           ; $48BD: $00
    nop                                           ; $48BE: $00
    nop                                           ; $48BF: $00

jr_01A_48C0:
    nop                                           ; $48C0: $00
    nop                                           ; $48C1: $00
    nop                                           ; $48C2: $00
    nop                                           ; $48C3: $00
    ld a, [hl]                                    ; $48C4: $7E
    nop                                           ; $48C5: $00
    ld b, c                                       ; $48C6: $41
    ld a, $38                                     ; $48C7: $3E $38
    rlca                                          ; $48C9: $07
    rlca                                          ; $48CA: $07
    nop                                           ; $48CB: $00
    nop                                           ; $48CC: $00
    nop                                           ; $48CD: $00
    nop                                           ; $48CE: $00
    nop                                           ; $48CF: $00
    ld h, c                                       ; $48D0: $61
    nop                                           ; $48D1: $00
    ld e, a                                       ; $48D2: $5F
    ld hl, $1B27                                  ; $48D3: $21 $27 $1B
    daa                                           ; $48D6: $27
    ld a, [de]                                    ; $48D7: $1A
    rla                                           ; $48D8: $17
    ld a, [bc]                                    ; $48D9: $0A
    rrca                                          ; $48DA: $0F
    inc bc                                        ; $48DB: $03
    inc bc                                        ; $48DC: $03
    ld bc, $0001                                  ; $48DD: $01 $01 $00
    rlca                                          ; $48E0: $07
    nop                                           ; $48E1: $00
    dec c                                         ; $48E2: $0D
    ld [bc], a                                    ; $48E3: $02
    inc c                                         ; $48E4: $0C
    inc bc                                        ; $48E5: $03
    ld d, $0D                                     ; $48E6: $16 $0D
    ld d, $0D                                     ; $48E8: $16 $0D
    db $FD                                        ; $48EA: $FD
    ld [bc], a                                    ; $48EB: $02
    rlca                                          ; $48EC: $07
    ld a, [$F9FE]                                 ; $48ED: $FA $FE $F9
    db $FC                                        ; $48F0: $FC

jr_01A_48F1:
    inc bc                                        ; $48F1: $03
    rst RST_38                                    ; $48F2: $FF
    daa                                           ; $48F3: $27
    cp h                                          ; $48F4: $BC
    ld l, a                                       ; $48F5: $6F
    ld sp, hl                                     ; $48F6: $F9
    sbc a                                         ; $48F7: $9F
    rst RST_38                                    ; $48F8: $FF
    rst RST_38                                    ; $48F9: $FF
    rst RST_38                                    ; $48FA: $FF
    ld a, a                                       ; $48FB: $7F
    rst RST_38                                    ; $48FC: $FF
    pop hl                                        ; $48FD: $E1
    rst RST_28                                    ; $48FE: $EF
    add [hl]                                      ; $48FF: $86
    inc bc                                        ; $4900: $03
    nop                                           ; $4901: $00
    add l                                         ; $4902: $85
    ld [bc], a                                    ; $4903: $02
    ret z                                         ; $4904: $C8

    rlca                                          ; $4905: $07
    ld [hl], a                                    ; $4906: $77
    adc b                                         ; $4907: $88
    jr jr_01A_48F1                                ; $4908: $18 $E7

    db $10                                        ; $490A: $10
    rst RST_28                                    ; $490B: $EF
    and a                                         ; $490C: $A7
    ld e, b                                       ; $490D: $58
    db $DD                                        ; $490E: $DD
    ld [hl+], a                                   ; $490F: $22
    rst RST_38                                    ; $4910: $FF
    ld c, [hl]                                    ; $4911: $4E
    cp $61                                        ; $4912: $FE $61
    db $E3                                        ; $4914: $E3
    ld e, h                                       ; $4915: $5C
    rst RST_28                                    ; $4916: $EF
    sub e                                         ; $4917: $93
    rst RST_38                                    ; $4918: $FF
    add h                                         ; $4919: $84
    rst RST_28                                    ; $491A: $EF
    jp $C2E7                                      ; $491B: $C3 $E7 $C2


    db $E3                                        ; $491E: $E3
    nop                                           ; $491F: $00
    nop                                           ; $4920: $00
    nop                                           ; $4921: $00
    ld b, e                                       ; $4922: $43
    nop                                           ; $4923: $00
    or h                                          ; $4924: $B4
    ld b, e                                       ; $4925: $43
    sbc l                                         ; $4926: $9D
    ld h, a                                       ; $4927: $67

jr_01A_4928:
    ld a, a                                       ; $4928: $7F
    adc a                                         ; $4929: $8F
    rst RST_38                                    ; $492A: $FF
    rrca                                          ; $492B: $0F
    ccf                                           ; $492C: $3F
    adc $BE                                       ; $492D: $CE $BE
    ld c, l                                       ; $492F: $4D
    ld a, [hl]                                    ; $4930: $7E
    adc c                                         ; $4931: $89
    cp $61                                        ; $4932: $FE $61
    sub l                                         ; $4934: $95
    ld [$5BE4], a                                 ; $4935: $EA $E4 $5B
    rst RST_38                                    ; $4938: $FF
    nop                                           ; $4939: $00
    rst RST_38                                    ; $493A: $FF
    rst RST_28                                    ; $493B: $EF
    rst RST_38                                    ; $493C: $FF
    jr nc, jr_01A_497E                            ; $493D: $30 $3F

    sbc $00                                       ; $493F: $DE $00
    nop                                           ; $4941: $00
    add b                                         ; $4942: $80
    nop                                           ; $4943: $00
    ld h, b                                       ; $4944: $60
    add b                                         ; $4945: $80
    jr jr_01A_4928                                ; $4946: $18 $E0

    xor h                                         ; $4948: $AC
    ld hl, sp-$2A                                 ; $4949: $F8 $D6
    db $FC                                        ; $494B: $FC
    ei                                            ; $494C: $FB
    ld a, [hl]                                    ; $494D: $7E
    rst RST_38                                    ; $494E: $FF
    rra                                           ; $494F: $1F
    cp a                                          ; $4950: $BF
    ld c, a                                       ; $4951: $4F
    cp a                                          ; $4952: $BF
    ld b, h                                       ; $4953: $44
    xor [hl]                                      ; $4954: $AE
    ld d, c                                       ; $4955: $51
    ld l, a                                       ; $4956: $6F
    sub b                                         ; $4957: $90
    sub [hl]                                      ; $4958: $96
    ld l, b                                       ; $4959: $68
    db $F4                                        ; $495A: $F4
    ld [$000C], sp                                ; $495B: $08 $0C $00
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
    add b                                         ; $4974: $80
    nop                                           ; $4975: $00
    ret nz                                        ; $4976: $C0

    add b                                         ; $4977: $80
    ret nz                                        ; $4978: $C0

    nop                                           ; $4979: $00
    ld h, b                                       ; $497A: $60
    add b                                         ; $497B: $80
    and b                                         ; $497C: $A0
    ld b, b                                       ; $497D: $40

jr_01A_497E:
    ld h, b                                       ; $497E: $60
    nop                                           ; $497F: $00
    db $E3                                        ; $4980: $E3
    ld b, c                                       ; $4981: $41
    ld h, e                                       ; $4982: $63
    ld bc, $0307                                  ; $4983: $01 $07 $03
    rlca                                          ; $4986: $07
    ld [bc], a                                    ; $4987: $02
    ld b, $00                                     ; $4988: $06 $00
    nop                                           ; $498A: $00
    nop                                           ; $498B: $00
    nop                                           ; $498C: $00
    nop                                           ; $498D: $00
    nop                                           ; $498E: $00
    nop                                           ; $498F: $00
    nop                                           ; $4990: $00
    nop                                           ; $4991: $00
    nop                                           ; $4992: $00
    nop                                           ; $4993: $00
    nop                                           ; $4994: $00
    nop                                           ; $4995: $00
    nop                                           ; $4996: $00
    nop                                           ; $4997: $00
    nop                                           ; $4998: $00
    nop                                           ; $4999: $00
    nop                                           ; $499A: $00
    nop                                           ; $499B: $00
    nop                                           ; $499C: $00
    nop                                           ; $499D: $00
    nop                                           ; $499E: $00
    nop                                           ; $499F: $00
    db $E3                                        ; $49A0: $E3
    ret nz                                        ; $49A1: $C0

    call c, $A883                                 ; $49A2: $DC $83 $A8
    rla                                           ; $49A5: $17
    ld e, h                                       ; $49A6: $5C
    dec sp                                        ; $49A7: $3B

jr_01A_49A8:
    ld e, a                                       ; $49A8: $5F
    inc a                                         ; $49A9: $3C

jr_01A_49AA:
    ld a, a                                       ; $49AA: $7F
    ld a, $3F                                     ; $49AB: $3E $3F
    dec e                                         ; $49AD: $1D
    ccf                                           ; $49AE: $3F
    nop                                           ; $49AF: $00
    jr z, jr_01A_49C2                             ; $49B0: $28 $10

    jr nc, jr_01A_49B4                            ; $49B2: $30 $00

jr_01A_49B4:
    nop                                           ; $49B4: $00
    nop                                           ; $49B5: $00
    nop                                           ; $49B6: $00
    nop                                           ; $49B7: $00
    nop                                           ; $49B8: $00
    nop                                           ; $49B9: $00
    nop                                           ; $49BA: $00
    nop                                           ; $49BB: $00
    nop                                           ; $49BC: $00
    nop                                           ; $49BD: $00
    nop                                           ; $49BE: $00
    nop                                           ; $49BF: $00
    rst RST_28                                    ; $49C0: $EF
    db $10                                        ; $49C1: $10

jr_01A_49C2:
    rra                                           ; $49C2: $1F
    rst RST_28                                    ; $49C3: $EF
    rra                                           ; $49C4: $1F
    xor $0E                                       ; $49C5: $EE $0E
    push af                                       ; $49C7: $F5
    adc h                                         ; $49C8: $8C
    ld [hl], e                                    ; $49C9: $73
    db $FC                                        ; $49CA: $FC
    adc e                                         ; $49CB: $8B
    db $FC                                        ; $49CC: $FC
    db $DB                                        ; $49CD: $DB
    cp $3D                                        ; $49CE: $FE $3D
    ld a, $1D                                     ; $49D0: $3E $1D
    rra                                           ; $49D2: $1F
    inc c                                         ; $49D3: $0C
    inc e                                         ; $49D4: $1C
    dec bc                                        ; $49D5: $0B
    inc c                                         ; $49D6: $0C
    inc bc                                        ; $49D7: $03
    rrca                                          ; $49D8: $0F
    nop                                           ; $49D9: $00
    ld [bc], a                                    ; $49DA: $02
    ld bc, $0001                                  ; $49DB: $01 $01 $00
    nop                                           ; $49DE: $00
    nop                                           ; $49DF: $00
    ret nz                                        ; $49E0: $C0

    nop                                           ; $49E1: $00
    ldh [$FFC0], a                                ; $49E2: $E0 $C0
    ldh [rP1], a                                  ; $49E4: $E0 $00
    jr nz, jr_01A_49A8                            ; $49E6: $20 $C0

    jr nz, jr_01A_49AA                            ; $49E8: $20 $C0

    db $10                                        ; $49EA: $10
    ldh [rNR10], a                                ; $49EB: $E0 $10
    ldh [rNR10], a                                ; $49ED: $E0 $10
    ldh [rNR10], a                                ; $49EF: $E0 $10
    ldh [$FFF8], a                                ; $49F1: $E0 $F8
    db $10                                        ; $49F3: $10
    ld hl, sp-$10                                 ; $49F4: $F8 $F0
    ld a, b                                       ; $49F6: $78
    ldh [$FFE8], a                                ; $49F7: $E0 $E8
    db $10                                        ; $49F9: $10
    cp b                                          ; $49FA: $B8
    ld b, b                                       ; $49FB: $40
    ld hl, sp+$10                                 ; $49FC: $F8 $10
    ld hl, sp+$70                                 ; $49FE: $F8 $70
    ld a, h                                       ; $4A00: $7C
    jr nc, jr_01A_4A7F                            ; $4A01: $30 $7C

    ld [$387C], sp                                ; $4A03: $08 $7C $38
    ld a, h                                       ; $4A06: $7C
    jr c, @+$4E                                   ; $4A07: $38 $4C

    jr c, jr_01A_4A57                             ; $4A09: $38 $4C

    jr c, @+$5A                                   ; $4A0B: $38 $58

    jr nc, jr_01A_4A87                            ; $4A0D: $30 $78

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
    nop                                           ; $4A1C: $00
    nop                                           ; $4A1D: $00
    nop                                           ; $4A1E: $00
    nop                                           ; $4A1F: $00
    nop                                           ; $4A20: $00
    nop                                           ; $4A21: $00
    nop                                           ; $4A22: $00
    nop                                           ; $4A23: $00

Jump_01A_4A24:
    ld bc, $0100                                  ; $4A24: $01 $00 $01
    nop                                           ; $4A27: $00
    rra                                           ; $4A28: $1F
    nop                                           ; $4A29: $00
    db $10                                        ; $4A2A: $10
    rrca                                          ; $4A2B: $0F
    inc c                                         ; $4A2C: $0C
    inc bc                                        ; $4A2D: $03
    inc bc                                        ; $4A2E: $03
    nop                                           ; $4A2F: $00
    nop                                           ; $4A30: $00
    nop                                           ; $4A31: $00
    inc c                                         ; $4A32: $0C
    nop                                           ; $4A33: $00
    ld a, [bc]                                    ; $4A34: $0A
    inc b                                         ; $4A35: $04
    dec bc                                        ; $4A36: $0B
    inc b                                         ; $4A37: $04
    add hl, bc                                    ; $4A38: $09
    ld b, $07                                     ; $4A39: $06 $07
    ld bc, $0103                                  ; $4A3B: $01 $03 $01
    ld bc, $0300                                  ; $4A3E: $01 $00 $03
    nop                                           ; $4A41: $00
    dec b                                         ; $4A42: $05
    inc bc                                        ; $4A43: $03
    push bc                                       ; $4A44: $C5
    ld [bc], a                                    ; $4A45: $02
    dec sp                                        ; $4A46: $3B
    add $CB                                       ; $4A47: $C6 $CB
    ld [hl], $FF                                  ; $4A49: $36 $FF
    ld b, $1F                                     ; $4A4B: $06 $1F
    db $EC                                        ; $4A4D: $EC
    rst RST_38                                    ; $4A4E: $FF
    db $EC                                        ; $4A4F: $EC
    rst RST_38                                    ; $4A50: $FF
    inc b                                         ; $4A51: $04
    ld [hl], a                                    ; $4A52: $77
    ld [$2DD3], sp                                ; $4A53: $08 $D3 $2D
    ld sp, hl                                     ; $4A56: $F9

jr_01A_4A57:
    add $F8                                       ; $4A57: $C6 $F8
    rst RST_30                                    ; $4A59: $F7
    db $FC                                        ; $4A5A: $FC
    ei                                            ; $4A5B: $FB
    cp $FD                                        ; $4A5C: $FE $FD
    rst RST_38                                    ; $4A5E: $FF
    adc [hl]                                      ; $4A5F: $8E
    ret nz                                        ; $4A60: $C0

    nop                                           ; $4A61: $00
    ldh [rP1], a                                  ; $4A62: $E0 $00
    ldh [rP1], a                                  ; $4A64: $E0 $00
    ldh a, [rP1]                                  ; $4A66: $F0 $00
    ldh a, [rP1]                                  ; $4A68: $F0 $00
    ldh a, [rP1]                                  ; $4A6A: $F0 $00
    ldh a, [rP1]                                  ; $4A6C: $F0 $00
    ldh a, [rP1]                                  ; $4A6E: $F0 $00
    db $FC                                        ; $4A70: $FC
    nop                                           ; $4A71: $00
    push af                                       ; $4A72: $F5
    add sp, -$1E                                  ; $4A73: $E8 $E2
    db $DD                                        ; $4A75: $DD
    sbc $21                                       ; $4A76: $DE $21
    ld h, c                                       ; $4A78: $61
    sbc [hl]                                      ; $4A79: $9E
    ld b, e                                       ; $4A7A: $43
    cp h                                          ; $4A7B: $BC
    sbc h                                         ; $4A7C: $9C
    ld h, e                                       ; $4A7D: $63
    halt                                          ; $4A7E: $76

jr_01A_4A7F:
    adc c                                         ; $4A7F: $89
    rrca                                          ; $4A80: $0F
    nop                                           ; $4A81: $00
    ld sp, $CF0F                                  ; $4A82: $31 $0F $CF
    ccf                                           ; $4A85: $3F
    adc a                                         ; $4A86: $8F

jr_01A_4A87:
    ld a, [hl]                                    ; $4A87: $7E
    cp a                                          ; $4A88: $BF
    ld a, h                                       ; $4A89: $7C
    cp $7D                                        ; $4A8A: $FE $7D
    cp $79                                        ; $4A8C: $FE $79
    cp $39                                        ; $4A8E: $FE $39
    rst RST_38                                    ; $4A90: $FF
    nop                                           ; $4A91: $00
    rst RST_38                                    ; $4A92: $FF
    sbc d                                         ; $4A93: $9A
    rst RST_38                                    ; $4A94: $FF
    db $DB                                        ; $4A95: $DB
    ld a, a                                       ; $4A96: $7F
    db $DB                                        ; $4A97: $DB
    rst RST_38                                    ; $4A98: $FF
    or a                                          ; $4A99: $B7
    rst RST_38                                    ; $4A9A: $FF
    ld c, $8F                                     ; $4A9B: $0E $8F
    ld [hl], b                                    ; $4A9D: $70
    rlca                                          ; $4A9E: $07
    ld a, [$00FE]                                 ; $4A9F: $FA $FE $00
    rst RST_38                                    ; $4AA2: $FF
    db $FC                                        ; $4AA3: $FC
    rst RST_38                                    ; $4AA4: $FF
    db $FC                                        ; $4AA5: $FC
    db $FD                                        ; $4AA6: $FD
    ld a, [bc]                                    ; $4AA7: $0A
    db $FD                                        ; $4AA8: $FD
    ld [bc], a                                    ; $4AA9: $02
    cp l                                          ; $4AAA: $BD
    ld b, d                                       ; $4AAB: $42
    xor e                                         ; $4AAC: $AB
    ld d, h                                       ; $4AAD: $54
    ret z                                         ; $4AAE: $C8

    scf                                           ; $4AAF: $37
    rst RST_38                                    ; $4AB0: $FF
    nop                                           ; $4AB1: $00
    add b                                         ; $4AB2: $80
    nop                                           ; $4AB3: $00
    add b                                         ; $4AB4: $80
    nop                                           ; $4AB5: $00
    add b                                         ; $4AB6: $80
    nop                                           ; $4AB7: $00
    add b                                         ; $4AB8: $80
    nop                                           ; $4AB9: $00
    nop                                           ; $4ABA: $00
    nop                                           ; $4ABB: $00
    nop                                           ; $4ABC: $00
    nop                                           ; $4ABD: $00
    nop                                           ; $4ABE: $00
    nop                                           ; $4ABF: $00
    nop                                           ; $4AC0: $00
    nop                                           ; $4AC1: $00
    ret nz                                        ; $4AC2: $C0

    nop                                           ; $4AC3: $00
    ld b, b                                       ; $4AC4: $40
    add b                                         ; $4AC5: $80
    ret nz                                        ; $4AC6: $C0

    nop                                           ; $4AC7: $00
    ld b, b                                       ; $4AC8: $40
    add b                                         ; $4AC9: $80
    ld h, b                                       ; $4ACA: $60
    add b                                         ; $4ACB: $80
    ld d, b                                       ; $4ACC: $50
    and b                                         ; $4ACD: $A0
    ret nc                                        ; $4ACE: $D0

    jr nz, jr_01A_4AF9                            ; $4ACF: $20 $28

    ret nc                                        ; $4AD1: $D0

    add sp, $10                                   ; $4AD2: $E8 $10
    jr jr_01A_4AD6                                ; $4AD4: $18 $00

jr_01A_4AD6:
    nop                                           ; $4AD6: $00
    nop                                           ; $4AD7: $00
    nop                                           ; $4AD8: $00
    nop                                           ; $4AD9: $00
    nop                                           ; $4ADA: $00
    nop                                           ; $4ADB: $00
    nop                                           ; $4ADC: $00
    nop                                           ; $4ADD: $00
    nop                                           ; $4ADE: $00
    nop                                           ; $4ADF: $00
    rst RST_08                                    ; $4AE0: $CF
    ld [bc], a                                    ; $4AE1: $02
    ld c, $00                                     ; $4AE2: $0E $00
    inc e                                         ; $4AE4: $1C
    ld [$0018], sp                                ; $4AE5: $08 $18 $00
    nop                                           ; $4AE8: $00
    nop                                           ; $4AE9: $00
    nop                                           ; $4AEA: $00
    nop                                           ; $4AEB: $00
    nop                                           ; $4AEC: $00
    nop                                           ; $4AED: $00
    ld bc, $0300                                  ; $4AEE: $01 $00 $03
    ld bc, $0107                                  ; $4AF1: $01 $07 $01
    dec b                                         ; $4AF4: $05
    ld [bc], a                                    ; $4AF5: $02
    dec b                                         ; $4AF6: $05
    ld [bc], a                                    ; $4AF7: $02
    inc bc                                        ; $4AF8: $03

jr_01A_4AF9:
    nop                                           ; $4AF9: $00
    nop                                           ; $4AFA: $00
    nop                                           ; $4AFB: $00
    nop                                           ; $4AFC: $00
    nop                                           ; $4AFD: $00
    nop                                           ; $4AFE: $00
    nop                                           ; $4AFF: $00
    db $FD                                        ; $4B00: $FD
    ld a, [hl-]                                   ; $4B01: $3A
    ld a, e                                       ; $4B02: $7B
    dec b                                         ; $4B03: $05
    adc a                                         ; $4B04: $8F
    ld [hl], e                                    ; $4B05: $73
    cp [hl]                                       ; $4B06: $BE
    ld c, e                                       ; $4B07: $4B
    rst RST_38                                    ; $4B08: $FF
    dec de                                        ; $4B09: $1B
    ccf                                           ; $4B0A: $3F
    inc c                                         ; $4B0B: $0C
    rst RST_38                                    ; $4B0C: $FF
    ld [bc], a                                    ; $4B0D: $02
    cp $F1                                        ; $4B0E: $FE $F1
    rst RST_38                                    ; $4B10: $FF
    xor $FF                                       ; $4B11: $EE $FF
    ld e, a                                       ; $4B13: $5F
    ld a, a                                       ; $4B14: $7F
    add c                                         ; $4B15: $81
    ld l, e                                       ; $4B16: $6B
    sub h                                         ; $4B17: $94
    ld [$1F15], a                                 ; $4B18: $EA $15 $1F
    nop                                           ; $4B1B: $00
    rrca                                          ; $4B1C: $0F
    ld b, $0F                                     ; $4B1D: $06 $0F
    rlca                                          ; $4B1F: $07
    add e                                         ; $4B20: $83
    ld a, h                                       ; $4B21: $7C
    ldh [c], a                                    ; $4B22: $E2
    sbc h                                         ; $4B23: $9C
    cp $A0                                        ; $4B24: $FE $A0
    cp $34                                        ; $4B26: $FE $34
    cp $74                                        ; $4B28: $FE $74
    cp $F4                                        ; $4B2A: $FE $F4
    cp $0C                                        ; $4B2C: $FE $0C
    cp a                                          ; $4B2E: $BF
    ld e, $17                                     ; $4B2F: $1E $17
    ld c, $13                                     ; $4B31: $0E $13
    ld c, $0B                                     ; $4B33: $0E $0B
    ld b, $0F                                     ; $4B35: $06 $0F
    nop                                           ; $4B37: $00
    nop                                           ; $4B38: $00
    nop                                           ; $4B39: $00
    nop                                           ; $4B3A: $00
    nop                                           ; $4B3B: $00
    nop                                           ; $4B3C: $00
    nop                                           ; $4B3D: $00
    nop                                           ; $4B3E: $00
    nop                                           ; $4B3F: $00
    dec bc                                        ; $4B40: $0B
    ld b, $0B                                     ; $4B41: $06 $0B
    ld b, $0E                                     ; $4B43: $06 $0E
    nop                                           ; $4B45: $00
    nop                                           ; $4B46: $00
    nop                                           ; $4B47: $00

jr_01A_4B48:
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
    nop                                           ; $4B58: $00
    nop                                           ; $4B59: $00
    nop                                           ; $4B5A: $00

jr_01A_4B5B:
    nop                                           ; $4B5B: $00
    nop                                           ; $4B5C: $00
    nop                                           ; $4B5D: $00
    nop                                           ; $4B5E: $00
    nop                                           ; $4B5F: $00
    nop                                           ; $4B60: $00
    nop                                           ; $4B61: $00
    inc bc                                        ; $4B62: $03
    nop                                           ; $4B63: $00
    dec b                                         ; $4B64: $05
    ld [bc], a                                    ; $4B65: $02
    ld c, $03                                     ; $4B66: $0E $03
    inc de                                        ; $4B68: $13
    dec c                                         ; $4B69: $0D

jr_01A_4B6A:
    rra                                           ; $4B6A: $1F
    ld c, $2F                                     ; $4B6B: $0E $2F
    ld de, $1F23                                  ; $4B6D: $11 $23 $1F
    ccf                                           ; $4B70: $3F
    nop                                           ; $4B71: $00
    inc hl                                        ; $4B72: $23
    ld e, $2F                                     ; $4B73: $1E $2F
    ld e, $27                                     ; $4B75: $1E $27
    add hl, de                                    ; $4B77: $19
    dec de                                        ; $4B78: $1B
    rlca                                          ; $4B79: $07
    rla                                           ; $4B7A: $17
    rrca                                          ; $4B7B: $0F
    rrca                                          ; $4B7C: $0F
    ld b, $06                                     ; $4B7D: $06 $06
    nop                                           ; $4B7F: $00
    ld bc, $0200                                  ; $4B80: $01 $00 $02
    ld bc, $0285                                  ; $4B83: $01 $85 $02
    ld c, c                                       ; $4B86: $49
    add [hl]                                      ; $4B87: $86
    di                                            ; $4B88: $F3
    ld c, h                                       ; $4B89: $4C
    rst RST_00                                    ; $4B8A: $C7
    jr c, jr_01A_4B5B                             ; $4B8B: $38 $CE

    or c                                          ; $4B8D: $B1
    ld sp, hl                                     ; $4B8E: $F9
    ld b, $C3                                     ; $4B8F: $06 $C3
    inc a                                         ; $4B91: $3C
    rrca                                          ; $4B92: $0F
    pop af                                        ; $4B93: $F1
    rla                                           ; $4B94: $17
    db $EB                                        ; $4B95: $EB
    rst RST_38                                    ; $4B96: $FF
    rlca                                          ; $4B97: $07
    sbc a                                         ; $4B98: $9F
    db $FC                                        ; $4B99: $FC
    rst RST_38                                    ; $4B9A: $FF
    ei                                            ; $4B9B: $FB
    rst RST_38                                    ; $4B9C: $FF
    halt                                          ; $4B9D: $76
    rst RST_38                                    ; $4B9E: $FF
    ld h, c                                       ; $4B9F: $61
    add b                                         ; $4BA0: $80
    nop                                           ; $4BA1: $00
    add b                                         ; $4BA2: $80
    nop                                           ; $4BA3: $00
    ret nz                                        ; $4BA4: $C0

    nop                                           ; $4BA5: $00
    ld d, b                                       ; $4BA6: $50
    add b                                         ; $4BA7: $80
    jr c, jr_01A_4B6A                             ; $4BA8: $38 $C0

    ret c                                         ; $4BAA: $D8

    jr nz, jr_01A_4B48                            ; $4BAB: $20 $9B

    ld h, b                                       ; $4BAD: $60
    sbc a                                         ; $4BAE: $9F
    ld h, c                                       ; $4BAF: $61
    rst RST_38                                    ; $4BB0: $FF
    rlca                                          ; $4BB1: $07
    ld a, [$FFEF]                                 ; $4BB2: $FA $EF $FF
    rst RST_28                                    ; $4BB5: $EF
    rst RST_38                                    ; $4BB6: $FF
    cpl                                           ; $4BB7: $2F
    rst RST_38                                    ; $4BB8: $FF
    rst RST_08                                    ; $4BB9: $CF
    rst RST_38                                    ; $4BBA: $FF
    cp a                                          ; $4BBB: $BF
    rst RST_38                                    ; $4BBC: $FF
    ld a, a                                       ; $4BBD: $7F
    rst RST_38                                    ; $4BBE: $FF
    rst RST_38                                    ; $4BBF: $FF
    nop                                           ; $4BC0: $00
    nop                                           ; $4BC1: $00
    nop                                           ; $4BC2: $00
    nop                                           ; $4BC3: $00
    nop                                           ; $4BC4: $00
    nop                                           ; $4BC5: $00
    nop                                           ; $4BC6: $00
    nop                                           ; $4BC7: $00
    nop                                           ; $4BC8: $00
    nop                                           ; $4BC9: $00
    nop                                           ; $4BCA: $00
    nop                                           ; $4BCB: $00
    ret nz                                        ; $4BCC: $C0

    nop                                           ; $4BCD: $00
    ldh [$FFC0], a                                ; $4BCE: $E0 $C0
    sub b                                         ; $4BD0: $90
    ldh [$FF30], a                                ; $4BD1: $E0 $30
    ldh [$FFF0], a                                ; $4BD3: $E0 $F0
    ldh [$FFF0], a                                ; $4BD5: $E0 $F0
    ldh [$FFF0], a                                ; $4BD7: $E0 $F0
    ldh [$FFF0], a                                ; $4BD9: $E0 $F0
    ldh [$FFE0], a                                ; $4BDB: $E0 $E0
    ret nz                                        ; $4BDD: $C0

    ret nz                                        ; $4BDE: $C0

    nop                                           ; $4BDF: $00
    inc bc                                        ; $4BE0: $03
    nop                                           ; $4BE1: $00
    rlca                                          ; $4BE2: $07
    inc bc                                        ; $4BE3: $03
    rrca                                          ; $4BE4: $0F
    inc bc                                        ; $4BE5: $03
    rla                                           ; $4BE6: $17
    add hl, bc                                    ; $4BE7: $09
    add hl, bc                                    ; $4BE8: $09
    ld b, $07                                     ; $4BE9: $06 $07
    nop                                           ; $4BEB: $00
    ld [bc], a                                    ; $4BEC: $02
    ld bc, $0102                                  ; $4BED: $01 $02 $01
    rlca                                          ; $4BF0: $07
    nop                                           ; $4BF1: $00
    rrca                                          ; $4BF2: $0F
    rlca                                          ; $4BF3: $07
    rla                                           ; $4BF4: $17
    rrca                                          ; $4BF5: $0F
    ld l, a                                       ; $4BF6: $6F
    rra                                           ; $4BF7: $1F
    sbc a                                         ; $4BF8: $9F
    ld a, h                                       ; $4BF9: $7C
    db $FC                                        ; $4BFA: $FC
    nop                                           ; $4BFB: $00
    nop                                           ; $4BFC: $00
    nop                                           ; $4BFD: $00
    nop                                           ; $4BFE: $00

Jump_01A_4BFF:
    nop                                           ; $4BFF: $00
    ld a, a                                       ; $4C00: $7F
    nop                                           ; $4C01: $00
    rrca                                          ; $4C02: $0F
    nop                                           ; $4C03: $00
    ld sp, $C10E                                  ; $4C04: $31 $0E $C1
    ld a, $E1                                     ; $4C07: $3E $E1
    sbc [hl]                                      ; $4C09: $9E
    ldh a, [$FFEF]                                ; $4C0A: $F0 $EF
    rst RST_38                                    ; $4C0C: $FF
    or $FE                                        ; $4C0D: $F6 $FE
    ldh a, [$FFF0]                                ; $4C0F: $F0 $F0
    nop                                           ; $4C11: $00
    ldh [$FFC0], a                                ; $4C12: $E0 $C0
    ldh [$FFC0], a                                ; $4C14: $E0 $C0
    ldh a, [$FF80]                                ; $4C16: $F0 $80
    ldh a, [rNR41]                                ; $4C18: $F0 $20
    ldh [$FFC0], a                                ; $4C1A: $E0 $C0
    ldh [$FFC0], a                                ; $4C1C: $E0 $C0
    ret nz                                        ; $4C1E: $C0

    nop                                           ; $4C1F: $00
    rst RST_38                                    ; $4C20: $FF
    nop                                           ; $4C21: $00
    ld a, [hl]                                    ; $4C22: $7E
    cp h                                          ; $4C23: $BC
    ld a, [hl]                                    ; $4C24: $7E
    add b                                         ; $4C25: $80
    pop af                                        ; $4C26: $F1
    ld l, [hl]                                    ; $4C27: $6E
    pop hl                                        ; $4C28: $E1
    sbc $E1                                       ; $4C29: $DE $E1
    ld e, [hl]                                    ; $4C2B: $5E
    pop bc                                        ; $4C2C: $C1
    ld a, $41                                     ; $4C2D: $3E $41
    ld a, $7E                                     ; $4C2F: $3E $7E
    nop                                           ; $4C31: $00
    rst RST_38                                    ; $4C32: $FF
    ld a, h                                       ; $4C33: $7C
    rst RST_38                                    ; $4C34: $FF
    ld a, h                                       ; $4C35: $7C
    ld a, a                                       ; $4C36: $7F
    ld bc, $55AB                                  ; $4C37: $01 $AB $55
    rst RST_38                                    ; $4C3A: $FF
    inc bc                                        ; $4C3B: $03
    rrca                                          ; $4C3C: $0F
    nop                                           ; $4C3D: $00
    inc bc                                        ; $4C3E: $03
    ld bc, $40E0                                  ; $4C3F: $01 $E0 $40
    ldh [rLCDC], a                                ; $4C42: $E0 $40
    ldh a, [$FFC0]                                ; $4C44: $F0 $C0
    ld hl, sp+$10                                 ; $4C46: $F8 $10
    db $FC                                        ; $4C48: $FC
    ld a, b                                       ; $4C49: $78
    adc [hl]                                      ; $4C4A: $8E
    ld a, h                                       ; $4C4B: $7C
    cp $00                                        ; $4C4C: $FE $00
    nop                                           ; $4C4E: $00
    nop                                           ; $4C4F: $00
    nop                                           ; $4C50: $00
    nop                                           ; $4C51: $00
    nop                                           ; $4C52: $00
    nop                                           ; $4C53: $00
    nop                                           ; $4C54: $00
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
    nop                                           ; $4C60: $00
    nop                                           ; $4C61: $00
    nop                                           ; $4C62: $00
    nop                                           ; $4C63: $00
    nop                                           ; $4C64: $00
    nop                                           ; $4C65: $00
    nop                                           ; $4C66: $00
    nop                                           ; $4C67: $00
    nop                                           ; $4C68: $00
    nop                                           ; $4C69: $00
    nop                                           ; $4C6A: $00
    nop                                           ; $4C6B: $00
    nop                                           ; $4C6C: $00
    nop                                           ; $4C6D: $00
    nop                                           ; $4C6E: $00
    nop                                           ; $4C6F: $00
    ld bc, $0300                                  ; $4C70: $01 $00 $03
    nop                                           ; $4C73: $00
    inc b                                         ; $4C74: $04
    inc bc                                        ; $4C75: $03
    rlca                                          ; $4C76: $07
    inc bc                                        ; $4C77: $03
    dec bc                                        ; $4C78: $0B
    inc b                                         ; $4C79: $04
    ld [$0F07], sp                                ; $4C7A: $08 $07 $0F
    nop                                           ; $4C7D: $00
    ld [$0007], sp                                ; $4C7E: $08 $07 $00
    nop                                           ; $4C81: $00
    nop                                           ; $4C82: $00
    nop                                           ; $4C83: $00
    nop                                           ; $4C84: $00
    nop                                           ; $4C85: $00
    nop                                           ; $4C86: $00
    nop                                           ; $4C87: $00
    nop                                           ; $4C88: $00
    nop                                           ; $4C89: $00
    nop                                           ; $4C8A: $00
    nop                                           ; $4C8B: $00
    nop                                           ; $4C8C: $00
    nop                                           ; $4C8D: $00
    pop hl                                        ; $4C8E: $E1
    nop                                           ; $4C8F: $00
    ld d, d                                       ; $4C90: $52
    and c                                         ; $4C91: $A1
    cp h                                          ; $4C92: $BC
    db $D3                                        ; $4C93: $D3
    pop af                                        ; $4C94: $F1
    ld c, [hl]                                    ; $4C95: $4E
    di                                            ; $4C96: $F3
    xor h                                         ; $4C97: $AC
    cp $41                                        ; $4C98: $FE $41
    ldh a, [$FFCF]                                ; $4C9A: $F0 $CF
    jp $C53C                                      ; $4C9C: $C3 $3C $C5


    cp d                                          ; $4C9F: $BA
    nop                                           ; $4CA0: $00
    nop                                           ; $4CA1: $00
    nop                                           ; $4CA2: $00
    nop                                           ; $4CA3: $00
    nop                                           ; $4CA4: $00
    nop                                           ; $4CA5: $00
    nop                                           ; $4CA6: $00
    nop                                           ; $4CA7: $00
    nop                                           ; $4CA8: $00
    nop                                           ; $4CA9: $00
    ld h, b                                       ; $4CAA: $60
    nop                                           ; $4CAB: $00
    and b                                         ; $4CAC: $A0
    ld b, b                                       ; $4CAD: $40
    ld [hl], b                                    ; $4CAE: $70
    add b                                         ; $4CAF: $80
    ld d, h                                       ; $4CB0: $54
    and b                                         ; $4CB1: $A0
    adc $30                                       ; $4CB2: $CE $30
    or $08                                        ; $4CB4: $F6 $08
    and [hl]                                      ; $4CB6: $A6
    ld e, b                                       ; $4CB7: $58
    ld h, a                                       ; $4CB8: $67
    sbc b                                         ; $4CB9: $98
    rst RST_38                                    ; $4CBA: $FF
    ld bc, $7BFE                                  ; $4CBB: $01 $FE $7B
    rst RST_38                                    ; $4CBE: $FF
    ei                                            ; $4CBF: $FB
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
    ldh a, [rP1]                                  ; $4CD6: $F0 $00
    ld hl, sp+$70                                 ; $4CD8: $F8 $70
    db $E4                                        ; $4CDA: $E4
    ld hl, sp-$74                                 ; $4CDB: $F8 $8C
    ld hl, sp-$04                                 ; $4CDD: $F8 $FC
    ld hl, sp+$0B                                 ; $4CDF: $F8 $0B
    rlca                                          ; $4CE1: $07
    add hl, bc                                    ; $4CE2: $09
    ld b, $06                                     ; $4CE3: $06 $06
    ld bc, $0305                                  ; $4CE5: $01 $05 $03
    rrca                                          ; $4CE8: $0F
    dec b                                         ; $4CE9: $05
    rra                                           ; $4CEA: $1F
    ld b, $2F                                     ; $4CEB: $06 $2F
    inc de                                        ; $4CED: $13
    inc de                                        ; $4CEE: $13
    dec c                                         ; $4CEF: $0D
    rrca                                          ; $4CF0: $0F
    nop                                           ; $4CF1: $00
    ld bc, $0100                                  ; $4CF2: $01 $00 $01
    nop                                           ; $4CF5: $00
    rlca                                          ; $4CF6: $07
    nop                                           ; $4CF7: $00
    add hl, de                                    ; $4CF8: $19
    rlca                                          ; $4CF9: $07
    inc hl                                        ; $4CFA: $23
    rra                                           ; $4CFB: $1F
    ccf                                           ; $4CFC: $3F
    nop                                           ; $4CFD: $00
    nop                                           ; $4CFE: $00
    nop                                           ; $4CFF: $00
    rst RST_38                                    ; $4D00: $FF
    add c                                         ; $4D01: $81
    rst RST_20                                    ; $4D02: $E7
    ld a, a                                       ; $4D03: $7F
    rst RST_38                                    ; $4D04: $FF
    cp $FF                                        ; $4D05: $FE $FF
    db $DD                                        ; $4D07: $DD
    rst RST_38                                    ; $4D08: $FF
    sbc b                                         ; $4D09: $98
    rst RST_38                                    ; $4D0A: $FF
    ld b, b                                       ; $4D0B: $40
    ldh a, [$FFEF]                                ; $4D0C: $F0 $EF
    ldh a, [$FFEF]                                ; $4D0E: $F0 $EF
    db $FC                                        ; $4D10: $FC
    inc bc                                        ; $4D11: $03
    ld a, e                                       ; $4D12: $7B
    ldh a, [$FF7C]                                ; $4D13: $F0 $7C
    ldh [$FFFC], a                                ; $4D15: $E0 $FC
    ld [$F0FC], sp                                ; $4D17: $08 $FC $F0
    ld hl, sp-$10                                 ; $4D1A: $F8 $F0
    ldh a, [rP1]                                  ; $4D1C: $F0 $00
    nop                                           ; $4D1E: $00
    nop                                           ; $4D1F: $00
    rst RST_38                                    ; $4D20: $FF
    set 7, a                                      ; $4D21: $CB $FF
    inc sp                                        ; $4D23: $33
    rst RST_38                                    ; $4D24: $FF
    rst RST_28                                    ; $4D25: $EF
    rst RST_38                                    ; $4D26: $FF
    sbc a                                         ; $4D27: $9F
    rst RST_38                                    ; $4D28: $FF
    ld a, a                                       ; $4D29: $7F
    rst RST_38                                    ; $4D2A: $FF
    nop                                           ; $4D2B: $00
    ld e, a                                       ; $4D2C: $5F
    xor a                                         ; $4D2D: $AF
    ld e, a                                       ; $4D2E: $5F
    and b                                         ; $4D2F: $A0
    ld a, h                                       ; $4D30: $7C
    sbc e                                         ; $4D31: $9B
    ld a, b                                       ; $4D32: $78
    or a                                          ; $4D33: $B7
    ld hl, sp+$17                                 ; $4D34: $F8 $17
    jr c, jr_01A_4D3F                             ; $4D36: $38 $07

    dec b                                         ; $4D38: $05
    ld [bc], a                                    ; $4D39: $02
    rlca                                          ; $4D3A: $07
    ld bc, $0307                                  ; $4D3B: $01 $07 $03
    inc bc                                        ; $4D3E: $03

jr_01A_4D3F:
    nop                                           ; $4D3F: $00
    db $FC                                        ; $4D40: $FC
    ld hl, sp-$04                                 ; $4D41: $F8 $FC
    ld hl, sp-$04                                 ; $4D43: $F8 $FC
    ld hl, sp-$08                                 ; $4D45: $F8 $F8
    ldh a, [$FFF0]                                ; $4D47: $F0 $F0
    ret nz                                        ; $4D49: $C0

    ret nz                                        ; $4D4A: $C0

    nop                                           ; $4D4B: $00
    add b                                         ; $4D4C: $80
    nop                                           ; $4D4D: $00
    add b                                         ; $4D4E: $80
    nop                                           ; $4D4F: $00
    ld b, b                                       ; $4D50: $40
    add b                                         ; $4D51: $80
    ld b, b                                       ; $4D52: $40
    add b                                         ; $4D53: $80
    jr nz, @-$3E                                  ; $4D54: $20 $C0

    jr nz, @-$3E                                  ; $4D56: $20 $C0

    ldh [rP1], a                                  ; $4D58: $E0 $00
    ldh a, [$FFE0]                                ; $4D5A: $F0 $E0
    ldh a, [$FFE0]                                ; $4D5C: $F0 $E0
    ldh a, [rP1]                                  ; $4D5E: $F0 $00
    dec bc                                        ; $4D60: $0B
    rlca                                          ; $4D61: $07
    add hl, bc                                    ; $4D62: $09
    ld b, $06                                     ; $4D63: $06 $06
    ld bc, $0305                                  ; $4D65: $01 $05 $03
    rrca                                          ; $4D68: $0F
    dec b                                         ; $4D69: $05
    rra                                           ; $4D6A: $1F
    ld b, $2F                                     ; $4D6B: $06 $2F
    inc de                                        ; $4D6D: $13
    inc de                                        ; $4D6E: $13
    dec c                                         ; $4D6F: $0D
    rrca                                          ; $4D70: $0F
    nop                                           ; $4D71: $00
    ld bc, $0100                                  ; $4D72: $01 $00 $01
    nop                                           ; $4D75: $00
    ld bc, $0100                                  ; $4D76: $01 $00 $01
    nop                                           ; $4D79: $00
    ld [bc], a                                    ; $4D7A: $02
    ld bc, $0102                                  ; $4D7B: $01 $02 $01
    dec b                                         ; $4D7E: $05
    inc bc                                        ; $4D7F: $03
    rst RST_38                                    ; $4D80: $FF
    add c                                         ; $4D81: $81
    rst RST_20                                    ; $4D82: $E7
    ld a, a                                       ; $4D83: $7F
    rst RST_38                                    ; $4D84: $FF
    cp $FF                                        ; $4D85: $FE $FF
    db $DD                                        ; $4D87: $DD
    rst RST_38                                    ; $4D88: $FF
    sbc b                                         ; $4D89: $98
    rst RST_38                                    ; $4D8A: $FF
    ld b, b                                       ; $4D8B: $40
    ldh a, [$FFEF]                                ; $4D8C: $F0 $EF
    ldh a, [$FFEF]                                ; $4D8E: $F0 $EF
    db $FC                                        ; $4D90: $FC
    inc bc                                        ; $4D91: $03
    ld a, e                                       ; $4D92: $7B
    ldh a, [$FF7C]                                ; $4D93: $F0 $7C
    ldh [$FFFC], a                                ; $4D95: $E0 $FC
    ld [$F07C], sp                                ; $4D97: $08 $7C $F0
    ld hl, sp-$10                                 ; $4D9A: $F8 $F0
    ldh a, [$FFC0]                                ; $4D9C: $F0 $C0
    ret nz                                        ; $4D9E: $C0

    add b                                         ; $4D9F: $80
    rst RST_38                                    ; $4DA0: $FF
    set 7, a                                      ; $4DA1: $CB $FF
    inc sp                                        ; $4DA3: $33
    rst RST_38                                    ; $4DA4: $FF
    rst RST_28                                    ; $4DA5: $EF
    rst RST_38                                    ; $4DA6: $FF
    sbc a                                         ; $4DA7: $9F
    rst RST_38                                    ; $4DA8: $FF
    ld a, a                                       ; $4DA9: $7F
    rst RST_38                                    ; $4DAA: $FF
    nop                                           ; $4DAB: $00
    rst RST_18                                    ; $4DAC: $DF
    cpl                                           ; $4DAD: $2F
    ld e, a                                       ; $4DAE: $5F
    and b                                         ; $4DAF: $A0
    ld a, h                                       ; $4DB0: $7C
    sbc e                                         ; $4DB1: $9B
    ld a, b                                       ; $4DB2: $78
    or a                                          ; $4DB3: $B7
    ld hl, sp+$17                                 ; $4DB4: $F8 $17
    jr c, jr_01A_4DBF                             ; $4DB6: $38 $07

    dec b                                         ; $4DB8: $05
    ld [bc], a                                    ; $4DB9: $02
    rra                                           ; $4DBA: $1F
    ld bc, $133F                                  ; $4DBB: $01 $3F $13
    ccf                                           ; $4DBE: $3F

jr_01A_4DBF:
    dec c                                         ; $4DBF: $0D
    db $FC                                        ; $4DC0: $FC
    ld hl, sp-$04                                 ; $4DC1: $F8 $FC
    ld hl, sp-$04                                 ; $4DC3: $F8 $FC
    ld hl, sp-$08                                 ; $4DC5: $F8 $F8
    ldh a, [$FFF0]                                ; $4DC7: $F0 $F0
    ret nz                                        ; $4DC9: $C0

    ret nz                                        ; $4DCA: $C0

    nop                                           ; $4DCB: $00
    add b                                         ; $4DCC: $80
    nop                                           ; $4DCD: $00
    add b                                         ; $4DCE: $80
    nop                                           ; $4DCF: $00
    ld b, b                                       ; $4DD0: $40
    add b                                         ; $4DD1: $80
    ld b, b                                       ; $4DD2: $40
    add b                                         ; $4DD3: $80
    jr nz, @-$3E                                  ; $4DD4: $20 $C0

    jr nz, @-$3E                                  ; $4DD6: $20 $C0

    ldh [rP1], a                                  ; $4DD8: $E0 $00
    ldh a, [$FFE0]                                ; $4DDA: $F0 $E0
    ldh a, [$FFE0]                                ; $4DDC: $F0 $E0
    ldh a, [$FFE0]                                ; $4DDE: $F0 $E0
    ld a, $1C                                     ; $4DE0: $3E $1C
    inc a                                         ; $4DE2: $3C
    nop                                           ; $4DE3: $00
    nop                                           ; $4DE4: $00
    nop                                           ; $4DE5: $00
    nop                                           ; $4DE6: $00
    nop                                           ; $4DE7: $00
    nop                                           ; $4DE8: $00
    nop                                           ; $4DE9: $00
    nop                                           ; $4DEA: $00
    nop                                           ; $4DEB: $00
    nop                                           ; $4DEC: $00
    nop                                           ; $4DED: $00
    nop                                           ; $4DEE: $00
    nop                                           ; $4DEF: $00
    nop                                           ; $4DF0: $00
    nop                                           ; $4DF1: $00
    nop                                           ; $4DF2: $00
    nop                                           ; $4DF3: $00
    nop                                           ; $4DF4: $00
    nop                                           ; $4DF5: $00
    nop                                           ; $4DF6: $00
    nop                                           ; $4DF7: $00

jr_01A_4DF8:
    nop                                           ; $4DF8: $00
    nop                                           ; $4DF9: $00
    nop                                           ; $4DFA: $00
    nop                                           ; $4DFB: $00
    nop                                           ; $4DFC: $00
    nop                                           ; $4DFD: $00
    nop                                           ; $4DFE: $00
    nop                                           ; $4DFF: $00
    rst RST_38                                    ; $4E00: $FF
    jr nc, jr_01A_4DF8                            ; $4E01: $30 $F5

    ld c, d                                       ; $4E03: $4A
    rst RST_38                                    ; $4E04: $FF
    ld [hl], b                                    ; $4E05: $70
    ld hl, sp+$70                                 ; $4E06: $F8 $70
    ldh a, [$FF60]                                ; $4E08: $F0 $60
    ldh a, [$FF60]                                ; $4E0A: $F0 $60
    ldh [rP1], a                                  ; $4E0C: $E0 $00
    nop                                           ; $4E0E: $00
    nop                                           ; $4E0F: $00
    nop                                           ; $4E10: $00
    nop                                           ; $4E11: $00
    nop                                           ; $4E12: $00
    nop                                           ; $4E13: $00
    nop                                           ; $4E14: $00
    nop                                           ; $4E15: $00
    nop                                           ; $4E16: $00
    nop                                           ; $4E17: $00
    nop                                           ; $4E18: $00
    nop                                           ; $4E19: $00
    nop                                           ; $4E1A: $00

jr_01A_4E1B:
    nop                                           ; $4E1B: $00
    nop                                           ; $4E1C: $00
    nop                                           ; $4E1D: $00
    nop                                           ; $4E1E: $00
    nop                                           ; $4E1F: $00
    ret nz                                        ; $4E20: $C0

    nop                                           ; $4E21: $00
    ld b, b                                       ; $4E22: $40
    add b                                         ; $4E23: $80
    add b                                         ; $4E24: $80
    nop                                           ; $4E25: $00
    nop                                           ; $4E26: $00
    nop                                           ; $4E27: $00
    nop                                           ; $4E28: $00
    nop                                           ; $4E29: $00
    nop                                           ; $4E2A: $00
    nop                                           ; $4E2B: $00
    nop                                           ; $4E2C: $00
    nop                                           ; $4E2D: $00
    nop                                           ; $4E2E: $00
    nop                                           ; $4E2F: $00
    nop                                           ; $4E30: $00
    nop                                           ; $4E31: $00
    nop                                           ; $4E32: $00
    nop                                           ; $4E33: $00
    nop                                           ; $4E34: $00
    nop                                           ; $4E35: $00
    nop                                           ; $4E36: $00
    nop                                           ; $4E37: $00
    nop                                           ; $4E38: $00
    nop                                           ; $4E39: $00
    nop                                           ; $4E3A: $00
    nop                                           ; $4E3B: $00
    nop                                           ; $4E3C: $00
    nop                                           ; $4E3D: $00
    nop                                           ; $4E3E: $00
    nop                                           ; $4E3F: $00
    nop                                           ; $4E40: $00
    nop                                           ; $4E41: $00
    ld bc, $0300                                  ; $4E42: $01 $00 $03
    nop                                           ; $4E45: $00
    dec b                                         ; $4E46: $05
    ld [bc], a                                    ; $4E47: $02
    dec de                                        ; $4E48: $1B
    inc b                                         ; $4E49: $04
    ccf                                           ; $4E4A: $3F
    nop                                           ; $4E4B: $00
    ld a, a                                       ; $4E4C: $7F
    nop                                           ; $4E4D: $00
    ld a, a                                       ; $4E4E: $7F
    nop                                           ; $4E4F: $00
    ld a, $00                                     ; $4E50: $3E $00
    nop                                           ; $4E52: $00
    nop                                           ; $4E53: $00
    nop                                           ; $4E54: $00
    nop                                           ; $4E55: $00
    nop                                           ; $4E56: $00
    nop                                           ; $4E57: $00
    nop                                           ; $4E58: $00
    nop                                           ; $4E59: $00
    nop                                           ; $4E5A: $00
    nop                                           ; $4E5B: $00
    nop                                           ; $4E5C: $00
    nop                                           ; $4E5D: $00
    nop                                           ; $4E5E: $00
    nop                                           ; $4E5F: $00
    nop                                           ; $4E60: $00
    nop                                           ; $4E61: $00
    ld bc, $6F00                                  ; $4E62: $01 $00 $6F
    ld bc, $2E5F                                  ; $4E65: $01 $5F $2E
    ld c, [hl]                                    ; $4E68: $4E
    dec [hl]                                      ; $4E69: $35
    ld a, $0D                                     ; $4E6A: $3E $0D
    ld e, [hl]                                    ; $4E6C: $5E
    dec l                                         ; $4E6D: $2D
    sbc a                                         ; $4E6E: $9F
    halt                                          ; $4E6F: $76
    ld a, a                                       ; $4E70: $7F
    ld hl, sp-$01                                 ; $4E71: $F8 $FF
    ld hl, sp-$05                                 ; $4E73: $F8 $FB
    pop bc                                        ; $4E75: $C1
    jp $C301                                      ; $4E76: $C3 $01 $C3


    ld bc, $02C5                                  ; $4E79: $01 $C5 $02
    add $01                                       ; $4E7C: $C6 $01
    ld bc, $3800                                  ; $4E7E: $01 $00 $38
    nop                                           ; $4E81: $00
    ld h, $18                                     ; $4E82: $26 $18
    add hl, de                                    ; $4E84: $19
    ld b, $20                                     ; $4E85: $06 $20
    rra                                           ; $4E87: $1F
    ld e, h                                       ; $4E88: $5C
    inc hl                                        ; $4E89: $23
    ld l, b                                       ; $4E8A: $68
    rlca                                          ; $4E8B: $07
    rla                                           ; $4E8C: $17

jr_01A_4E8D:
    ld [$003C], sp                                ; $4E8D: $08 $3C $00
    ld c, b                                       ; $4E90: $48
    jr nc, jr_01A_4E1B                            ; $4E91: $30 $88

    ld [hl], b                                    ; $4E93: $70
    ld sp, hl                                     ; $4E94: $F9
    nop                                           ; $4E95: $00
    cp $F1                                        ; $4E96: $FE $F1
    db $FD                                        ; $4E98: $FD
    add d                                         ; $4E99: $82
    adc a                                         ; $4E9A: $8F
    ld [hl], h                                    ; $4E9B: $74
    rra                                           ; $4E9C: $1F
    xor $1F                                       ; $4E9D: $EE $1F
    ldh [c], a                                    ; $4E9F: $E2
    inc sp                                        ; $4EA0: $33
    call z, $BE41                                 ; $4EA1: $CC $41 $BE
    add c                                         ; $4EA4: $81
    ld a, [hl]                                    ; $4EA5: $7E
    add c                                         ; $4EA6: $81
    ld a, [hl]                                    ; $4EA7: $7E
    di                                            ; $4EA8: $F3
    adc l                                         ; $4EA9: $8D
    rst RST_38                                    ; $4EAA: $FF
    di                                            ; $4EAB: $F3
    rst RST_38                                    ; $4EAC: $FF
    ei                                            ; $4EAD: $FB
    rst RST_38                                    ; $4EAE: $FF
    ld de, $48BF                                  ; $4EAF: $11 $BF $48
    db $FC                                        ; $4EB2: $FC
    jr c, jr_01A_4EF1                             ; $4EB3: $38 $3C

    jr jr_01A_4EF3                                ; $4EB5: $18 $3C

    nop                                           ; $4EB7: $00
    ld a, [hl]                                    ; $4EB8: $7E
    inc a                                         ; $4EB9: $3C
    ld b, [hl]                                    ; $4EBA: $46
    inc a                                         ; $4EBB: $3C
    sbc [hl]                                      ; $4EBC: $9E
    ld a, h                                       ; $4EBD: $7C
    cp $00                                        ; $4EBE: $FE $00
    jr nz, jr_01A_4EC2                            ; $4EC0: $20 $00

jr_01A_4EC2:
    ld d, b                                       ; $4EC2: $50
    jr nz, jr_01A_4E8D                            ; $4EC3: $20 $C8

    jr nc, jr_01A_4EF5                            ; $4EC5: $30 $2E

    ret nc                                        ; $4EC7: $D0

jr_01A_4EC8:
    ld a, $CC                                     ; $4EC8: $3E $CC
    ld a, a                                       ; $4ECA: $7F
    cp [hl]                                       ; $4ECB: $BE
    rst RST_38                                    ; $4ECC: $FF
    ld a, [hl]                                    ; $4ECD: $7E
    rst RST_38                                    ; $4ECE: $FF
    ld a, a                                       ; $4ECF: $7F
    rst RST_38                                    ; $4ED0: $FF
    ld a, a                                       ; $4ED1: $7F
    ld a, [hl]                                    ; $4ED2: $7E
    ccf                                           ; $4ED3: $3F
    rst RST_38                                    ; $4ED4: $FF
    ccf                                           ; $4ED5: $3F
    cp $3F                                        ; $4ED6: $FE $3F
    rst RST_38                                    ; $4ED8: $FF
    rst RST_18                                    ; $4ED9: $DF

jr_01A_4EDA:
    rst RST_38                                    ; $4EDA: $FF
    sbc a                                         ; $4EDB: $9F
    rst RST_38                                    ; $4EDC: $FF
    xor a                                         ; $4EDD: $AF
    rst RST_38                                    ; $4EDE: $FF
    ld c, a                                       ; $4EDF: $4F
    rst RST_38                                    ; $4EE0: $FF
    and a                                         ; $4EE1: $A7
    rst RST_38                                    ; $4EE2: $FF
    or b                                          ; $4EE3: $B0
    rst RST_38                                    ; $4EE4: $FF
    cp a                                          ; $4EE5: $BF
    rst RST_38                                    ; $4EE6: $FF
    rra                                           ; $4EE7: $1F
    rst RST_38                                    ; $4EE8: $FF
    and a                                         ; $4EE9: $A7
    rst RST_38                                    ; $4EEA: $FF
    or b                                          ; $4EEB: $B0
    ldh a, [c]                                    ; $4EEC: $F2
    pop bc                                        ; $4EED: $C1
    ldh [c], a                                    ; $4EEE: $E2
    pop bc                                        ; $4EEF: $C1
    pop af                                        ; $4EF0: $F1

jr_01A_4EF1:
    ldh [$FFF8], a                                ; $4EF1: $E0 $F8

jr_01A_4EF3:
    jr nc, jr_01A_4F2D                            ; $4EF3: $30 $38

jr_01A_4EF5:
    nop                                           ; $4EF5: $00
    nop                                           ; $4EF6: $00
    nop                                           ; $4EF7: $00
    nop                                           ; $4EF8: $00
    nop                                           ; $4EF9: $00
    nop                                           ; $4EFA: $00
    nop                                           ; $4EFB: $00
    nop                                           ; $4EFC: $00
    nop                                           ; $4EFD: $00
    nop                                           ; $4EFE: $00
    nop                                           ; $4EFF: $00
    ld b, b                                       ; $4F00: $40
    add b                                         ; $4F01: $80
    ld b, b                                       ; $4F02: $40
    add b                                         ; $4F03: $80
    and b                                         ; $4F04: $A0
    ret nz                                        ; $4F05: $C0

    jr nz, jr_01A_4EC8                            ; $4F06: $20 $C0

    ld d, b                                       ; $4F08: $50
    ldh [$FF90], a                                ; $4F09: $E0 $90
    ldh [$FFF0], a                                ; $4F0B: $E0 $F0
    ldh [$FFEC], a                                ; $4F0D: $E0 $EC
    ret nc                                        ; $4F0F: $D0

    ldh [c], a                                    ; $4F10: $E2
    inc e                                         ; $4F11: $1C
    db $FD                                        ; $4F12: $FD
    jp nz, $A0D3                                  ; $4F13: $C2 $D3 $A0

    sub b                                         ; $4F16: $90
    ld h, b                                       ; $4F17: $60
    jr nz, jr_01A_4EDA                            ; $4F18: $20 $C0

    ldh [rP1], a                                  ; $4F1A: $E0 $00
    add b                                         ; $4F1C: $80
    nop                                           ; $4F1D: $00
    nop                                           ; $4F1E: $00
    nop                                           ; $4F1F: $00
    nop                                           ; $4F20: $00
    nop                                           ; $4F21: $00
    nop                                           ; $4F22: $00
    nop                                           ; $4F23: $00
    nop                                           ; $4F24: $00
    nop                                           ; $4F25: $00
    nop                                           ; $4F26: $00
    nop                                           ; $4F27: $00
    nop                                           ; $4F28: $00
    nop                                           ; $4F29: $00
    nop                                           ; $4F2A: $00
    nop                                           ; $4F2B: $00
    nop                                           ; $4F2C: $00

jr_01A_4F2D:
    nop                                           ; $4F2D: $00
    nop                                           ; $4F2E: $00
    nop                                           ; $4F2F: $00
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
    add b                                         ; $4F3C: $80
    nop                                           ; $4F3D: $00
    add b                                         ; $4F3E: $80
    nop                                           ; $4F3F: $00
    ld c, $00                                     ; $4F40: $0E $00
    add hl, bc                                    ; $4F42: $09
    ld b, $FE                                     ; $4F43: $06 $FE
    ld bc, $7887                                  ; $4F45: $01 $87 $78
    ld h, b                                       ; $4F48: $60
    rra                                           ; $4F49: $1F
    rra                                           ; $4F4A: $1F
    rlca                                          ; $4F4B: $07
    rlca                                          ; $4F4C: $07
    nop                                           ; $4F4D: $00
    ld h, e                                       ; $4F4E: $63
    nop                                           ; $4F4F: $00
    ld d, [hl]                                    ; $4F50: $56
    ld hl, $265F                                  ; $4F51: $21 $5F $26
    ld c, a                                       ; $4F54: $4F
    ld [hl], $3F                                  ; $4F55: $36 $3F
    ld c, $1F                                     ; $4F57: $0E $1F
    rrca                                          ; $4F59: $0F
    rrca                                          ; $4F5A: $0F
    inc b                                         ; $4F5B: $04
    ld b, $00                                     ; $4F5C: $06 $00
    nop                                           ; $4F5E: $00
    nop                                           ; $4F5F: $00
    ld e, $00                                     ; $4F60: $1E $00
    cpl                                           ; $4F62: $2F
    jr jr_01A_4F94                                ; $4F63: $18 $2F

    db $10                                        ; $4F65: $10
    rst RST_18                                    ; $4F66: $DF
    jr nc, jr_01A_4FC8                            ; $4F67: $30 $5F

    or b                                          ; $4F69: $B0
    rst RST_38                                    ; $4F6A: $FF
    jr nc, @+$01                                  ; $4F6B: $30 $FF

    ld h, b                                       ; $4F6D: $60
    rst RST_38                                    ; $4F6E: $FF
    ld h, b                                       ; $4F6F: $60
    rst RST_38                                    ; $4F70: $FF
    jr nz, @+$01                                  ; $4F71: $20 $FF

    inc b                                         ; $4F73: $04
    cp $5D                                        ; $4F74: $FE $5D
    db $FC                                        ; $4F76: $FC
    ld a, e                                       ; $4F77: $7B
    ld a, h                                       ; $4F78: $7C
    sbc e                                         ; $4F79: $9B
    add hl, de                                    ; $4F7A: $19
    and $86                                       ; $4F7B: $E6 $86
    ld a, c                                       ; $4F7D: $79
    call nz, Call_01A_643B                        ; $4F7E: $C4 $3B $64
    dec de                                        ; $4F81: $1B
    ld a, l                                       ; $4F82: $7D
    ld [bc], a                                    ; $4F83: $02
    db $EB                                        ; $4F84: $EB
    ld b, h                                       ; $4F85: $44
    add $01                                       ; $4F86: $C6 $01
    dec b                                         ; $4F88: $05
    ld [bc], a                                    ; $4F89: $02
    rlca                                          ; $4F8A: $07
    nop                                           ; $4F8B: $00
    ld [$3007], sp                                ; $4F8C: $08 $07 $30
    rrca                                          ; $4F8F: $0F
    ld e, h                                       ; $4F90: $5C
    inc hl                                        ; $4F91: $23
    ld c, [hl]                                    ; $4F92: $4E
    dec a                                         ; $4F93: $3D

jr_01A_4F94:
    ld a, a                                       ; $4F94: $7F
    ld a, $BF                                     ; $4F95: $3E $BF
    ld d, l                                       ; $4F97: $55
    rst RST_10                                    ; $4F98: $D7
    dec hl                                        ; $4F99: $2B
    ccf                                           ; $4F9A: $3F
    ld bc, $0207                                  ; $4F9B: $01 $07 $02
    rrca                                          ; $4F9E: $0F
    rlca                                          ; $4F9F: $07
    add b                                         ; $4FA0: $80
    nop                                           ; $4FA1: $00
    add b                                         ; $4FA2: $80
    nop                                           ; $4FA3: $00
    add b                                         ; $4FA4: $80
    nop                                           ; $4FA5: $00
    add b                                         ; $4FA6: $80
    nop                                           ; $4FA7: $00
    add b                                         ; $4FA8: $80
    nop                                           ; $4FA9: $00
    add b                                         ; $4FAA: $80
    nop                                           ; $4FAB: $00
    add c                                         ; $4FAC: $81
    nop                                           ; $4FAD: $00
    cp $01                                        ; $4FAE: $FE $01
    ld e, h                                       ; $4FB0: $5C
    and e                                         ; $4FB1: $A3
    db $DD                                        ; $4FB2: $DD
    dec hl                                        ; $4FB3: $2B
    ccf                                           ; $4FB4: $3F
    bit 7, a                                      ; $4FB5: $CB $7F
    adc e                                         ; $4FB7: $8B
    sbc a                                         ; $4FB8: $9F
    ld l, c                                       ; $4FB9: $69
    rst RST_18                                    ; $4FBA: $DF
    jr nz, @-$3F                                  ; $4FBB: $20 $BF

    ld e, h                                       ; $4FBD: $5C
    ld a, a                                       ; $4FBE: $7F
    cp [hl]                                       ; $4FBF: $BE
    ld a, a                                       ; $4FC0: $7F
    nop                                           ; $4FC1: $00
    adc a                                         ; $4FC2: $8F
    ld a, h                                       ; $4FC3: $7C
    ld a, l                                       ; $4FC4: $7D
    ld a, [$F27D]                                 ; $4FC5: $FA $7D $F2

jr_01A_4FC8:
    db $FD                                        ; $4FC8: $FD
    ldh [c], a                                    ; $4FC9: $E2
    db $EB                                        ; $4FCA: $EB
    call nc, $B7C8                                ; $4FCB: $D4 $C8 $B7
    rst RST_38                                    ; $4FCE: $FF
    add b                                         ; $4FCF: $80
    rst RST_38                                    ; $4FD0: $FF
    rrca                                          ; $4FD1: $0F
    rst RST_38                                    ; $4FD2: $FF
    ret nz                                        ; $4FD3: $C0

    ld hl, sp-$30                                 ; $4FD4: $F8 $D0
    ld hl, sp-$30                                 ; $4FD6: $F8 $D0
    ldh a, [$FFA0]                                ; $4FD8: $F0 $A0
    ldh a, [$FF60]                                ; $4FDA: $F0 $60
    ldh a, [rP1]                                  ; $4FDC: $F0 $00
    db $10                                        ; $4FDE: $10
    ldh [rP1], a                                  ; $4FDF: $E0 $00
    nop                                           ; $4FE1: $00
    nop                                           ; $4FE2: $00
    nop                                           ; $4FE3: $00
    nop                                           ; $4FE4: $00
    nop                                           ; $4FE5: $00
    nop                                           ; $4FE6: $00
    nop                                           ; $4FE7: $00
    nop                                           ; $4FE8: $00

jr_01A_4FE9:
    nop                                           ; $4FE9: $00
    nop                                           ; $4FEA: $00
    nop                                           ; $4FEB: $00
    ldh a, [rP1]                                  ; $4FEC: $F0 $00
    cp $E0                                        ; $4FEE: $FE $E0
    ldh a, [c]                                    ; $4FF0: $F2
    ld l, h                                       ; $4FF1: $6C
    ld a, h                                       ; $4FF2: $7C
    add b                                         ; $4FF3: $80
    ld h, b                                       ; $4FF4: $60
    add b                                         ; $4FF5: $80
    ld d, b                                       ; $4FF6: $50
    and b                                         ; $4FF7: $A0
    ret nc                                        ; $4FF8: $D0

    jr nz, jr_01A_5023                            ; $4FF9: $20 $28

    ret nc                                        ; $4FFB: $D0

    add sp, $10                                   ; $4FFC: $E8 $10
    sbc b                                         ; $4FFE: $98
    nop                                           ; $4FFF: $00
    rst RST_38                                    ; $5000: $FF
    ld e, [hl]                                    ; $5001: $5E
    di                                            ; $5002: $F3
    adc l                                         ; $5003: $8D
    rst RST_38                                    ; $5004: $FF
    jr nc, jr_01A_5046                            ; $5005: $30 $3F

    ret nz                                        ; $5007: $C0

    ld e, $ED                                     ; $5008: $1E $ED
    inc c                                         ; $500A: $0C
    di                                            ; $500B: $F3
    db $FC                                        ; $500C: $FC
    inc bc                                        ; $500D: $03
    add a                                         ; $500E: $87
    nop                                           ; $500F: $00
    ret                                           ; $5010: $C9


    add a                                         ; $5011: $87
    res 0, a                                      ; $5012: $CB $87
    rst RST_28                                    ; $5014: $EF
    add d                                         ; $5015: $82
    ld [$C745], a                                 ; $5016: $EA $45 $C7
    add b                                         ; $5019: $80
    ret nz                                        ; $501A: $C0

    add b                                         ; $501B: $80
    add b                                         ; $501C: $80
    nop                                           ; $501D: $00
    nop                                           ; $501E: $00

jr_01A_501F:
    nop                                           ; $501F: $00
    db $10                                        ; $5020: $10
    ldh [rNR10], a                                ; $5021: $E0 $10

jr_01A_5023:
    ldh [$FFD0], a                                ; $5023: $E0 $D0
    jr nz, jr_01A_501F                            ; $5025: $20 $F8

    ret nz                                        ; $5027: $C0

    db $FC                                        ; $5028: $FC
    ret z                                         ; $5029: $C8

    db $FC                                        ; $502A: $FC
    jr jr_01A_4FE9                                ; $502B: $18 $BC

    ld e, b                                       ; $502D: $58
    cp $34                                        ; $502E: $FE $34
    ld a, [hl]                                    ; $5030: $7E
    inc c                                         ; $5031: $0C
    ld a, c                                       ; $5032: $79
    ld a, $FD                                     ; $5033: $3E $FD
    ld a, [hl]                                    ; $5035: $7E
    cp $00                                        ; $5036: $FE $00
    nop                                           ; $5038: $00
    nop                                           ; $5039: $00
    nop                                           ; $503A: $00

jr_01A_503B:
    nop                                           ; $503B: $00
    nop                                           ; $503C: $00
    nop                                           ; $503D: $00
    nop                                           ; $503E: $00
    nop                                           ; $503F: $00
    rra                                           ; $5040: $1F
    rrca                                          ; $5041: $0F
    rra                                           ; $5042: $1F
    nop                                           ; $5043: $00
    nop                                           ; $5044: $00
    nop                                           ; $5045: $00

jr_01A_5046:
    nop                                           ; $5046: $00
    nop                                           ; $5047: $00
    nop                                           ; $5048: $00
    nop                                           ; $5049: $00
    nop                                           ; $504A: $00
    nop                                           ; $504B: $00
    nop                                           ; $504C: $00
    nop                                           ; $504D: $00
    nop                                           ; $504E: $00
    nop                                           ; $504F: $00
    nop                                           ; $5050: $00
    nop                                           ; $5051: $00
    nop                                           ; $5052: $00
    nop                                           ; $5053: $00
    nop                                           ; $5054: $00
    nop                                           ; $5055: $00
    nop                                           ; $5056: $00
    nop                                           ; $5057: $00
    nop                                           ; $5058: $00
    nop                                           ; $5059: $00
    nop                                           ; $505A: $00
    nop                                           ; $505B: $00
    nop                                           ; $505C: $00
    nop                                           ; $505D: $00
    nop                                           ; $505E: $00
    nop                                           ; $505F: $00
    nop                                           ; $5060: $00
    nop                                           ; $5061: $00
    nop                                           ; $5062: $00
    nop                                           ; $5063: $00
    rlca                                          ; $5064: $07
    nop                                           ; $5065: $00
    inc b                                         ; $5066: $04
    inc bc                                        ; $5067: $03
    inc bc                                        ; $5068: $03
    nop                                           ; $5069: $00
    dec b                                         ; $506A: $05
    ld [bc], a                                    ; $506B: $02
    rrca                                          ; $506C: $0F
    inc bc                                        ; $506D: $03
    ccf                                           ; $506E: $3F
    dec bc                                        ; $506F: $0B
    ld c, a                                       ; $5070: $4F
    dec a                                         ; $5071: $3D
    sbc a                                         ; $5072: $9F
    ld a, [hl]                                    ; $5073: $7E
    sbc a                                         ; $5074: $9F
    ld a, h                                       ; $5075: $7C
    db $FC                                        ; $5076: $FC
    ld [hl], b                                    ; $5077: $70
    ld [hl], b                                    ; $5078: $70
    nop                                           ; $5079: $00
    nop                                           ; $507A: $00
    nop                                           ; $507B: $00
    nop                                           ; $507C: $00

jr_01A_507D:
    nop                                           ; $507D: $00
    nop                                           ; $507E: $00
    nop                                           ; $507F: $00
    rra                                           ; $5080: $1F
    rrca                                          ; $5081: $0F
    rst RST_38                                    ; $5082: $FF
    jr jr_01A_507D                                ; $5083: $18 $F8

    rst RST_20                                    ; $5085: $E7
    pop hl                                        ; $5086: $E1
    ld e, [hl]                                    ; $5087: $5E
    pop hl                                        ; $5088: $E1
    sbc $E3                                       ; $5089: $DE $E3
    call c, Call_01A_6BF4                         ; $508B: $DC $F4 $6B
    ld hl, sp-$79                                 ; $508E: $F8 $87
    ld hl, sp-$79                                 ; $5090: $F8 $87
    sbc a                                         ; $5092: $9F
    ld [$0F1F], sp                                ; $5093: $08 $1F $0F
    rra                                           ; $5096: $1F
    rrca                                          ; $5097: $0F
    cpl                                           ; $5098: $2F
    db $10                                        ; $5099: $10
    dec [hl]                                      ; $509A: $35
    ld a, [bc]                                    ; $509B: $0A
    rrca                                          ; $509C: $0F
    nop                                           ; $509D: $00
    ld bc, $3800                                  ; $509E: $01 $00 $38
    nop                                           ; $50A1: $00
    ld h, $18                                     ; $50A2: $26 $18
    add hl, de                                    ; $50A4: $19
    ld b, $20                                     ; $50A5: $06 $20
    rra                                           ; $50A7: $1F
    ld e, h                                       ; $50A8: $5C
    inc hl                                        ; $50A9: $23
    ld l, b                                       ; $50AA: $68
    rlca                                          ; $50AB: $07
    rla                                           ; $50AC: $17
    ld [$003C], sp                                ; $50AD: $08 $3C $00
    ld c, b                                       ; $50B0: $48
    jr nc, jr_01A_503B                            ; $50B1: $30 $88

    ld [hl], b                                    ; $50B3: $70
    ld sp, hl                                     ; $50B4: $F9
    nop                                           ; $50B5: $00
    cp $F1                                        ; $50B6: $FE $F1
    db $FD                                        ; $50B8: $FD
    add d                                         ; $50B9: $82
    adc a                                         ; $50BA: $8F
    ld [hl], h                                    ; $50BB: $74
    rra                                           ; $50BC: $1F
    xor $1F                                       ; $50BD: $EE $1F
    ldh [c], a                                    ; $50BF: $E2
    jr nz, jr_01A_50C2                            ; $50C0: $20 $00

jr_01A_50C2:
    ld d, b                                       ; $50C2: $50
    jr nz, @-$36                                  ; $50C3: $20 $C8

    jr nc, jr_01A_50F5                            ; $50C5: $30 $2E

    ret nc                                        ; $50C7: $D0

    ld a, $CC                                     ; $50C8: $3E $CC
    ld a, a                                       ; $50CA: $7F
    cp [hl]                                       ; $50CB: $BE
    rst RST_38                                    ; $50CC: $FF
    ld a, [hl]                                    ; $50CD: $7E
    rst RST_38                                    ; $50CE: $FF
    ld a, a                                       ; $50CF: $7F
    rst RST_38                                    ; $50D0: $FF
    ld a, a                                       ; $50D1: $7F
    ld a, [hl]                                    ; $50D2: $7E
    ccf                                           ; $50D3: $3F
    rst RST_38                                    ; $50D4: $FF
    ccf                                           ; $50D5: $3F
    cp $3F                                        ; $50D6: $FE $3F
    rst RST_38                                    ; $50D8: $FF
    rst RST_18                                    ; $50D9: $DF
    rst RST_38                                    ; $50DA: $FF
    sbc a                                         ; $50DB: $9F
    rst RST_38                                    ; $50DC: $FF
    xor a                                         ; $50DD: $AF
    rst RST_38                                    ; $50DE: $FF
    ld c, a                                       ; $50DF: $4F
    nop                                           ; $50E0: $00
    nop                                           ; $50E1: $00
    nop                                           ; $50E2: $00
    nop                                           ; $50E3: $00
    nop                                           ; $50E4: $00
    nop                                           ; $50E5: $00
    add b                                         ; $50E6: $80
    nop                                           ; $50E7: $00
    add b                                         ; $50E8: $80
    nop                                           ; $50E9: $00
    ld b, b                                       ; $50EA: $40
    add b                                         ; $50EB: $80
    ld b, b                                       ; $50EC: $40
    add b                                         ; $50ED: $80
    and b                                         ; $50EE: $A0
    ret nz                                        ; $50EF: $C0

    jr nz, @-$3E                                  ; $50F0: $20 $C0

    ld d, b                                       ; $50F2: $50
    ldh [$FF90], a                                ; $50F3: $E0 $90

jr_01A_50F5:
    ldh [$FFF0], a                                ; $50F5: $E0 $F0
    ldh [$FFEC], a                                ; $50F7: $E0 $EC
    ret nc                                        ; $50F9: $D0

    ldh [c], a                                    ; $50FA: $E2
    inc e                                         ; $50FB: $1C
    db $FD                                        ; $50FC: $FD
    jp nz, $A0D3                                  ; $50FD: $C2 $D3 $A0

    ccf                                           ; $5100: $3F
    jp z, $EB1F                                   ; $5101: $CA $1F $EB

    rra                                           ; $5104: $1F
    db $EB                                        ; $5105: $EB
    rra                                           ; $5106: $1F
    pop hl                                        ; $5107: $E1
    ccf                                           ; $5108: $3F
    jp nz, $2BFF                                  ; $5109: $C2 $FF $2B

    rst RST_38                                    ; $510C: $FF
    xor b                                         ; $510D: $A8
    db $FC                                        ; $510E: $FC

jr_01A_510F:
    xor b                                         ; $510F: $A8
    db $FC                                        ; $5110: $FC
    jr jr_01A_510F                                ; $5111: $18 $FC

    ld hl, sp-$08                                 ; $5113: $F8 $F8
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
    cp $7D                                        ; $5120: $FE $7D
    cp $01                                        ; $5122: $FE $01
    rst RST_38                                    ; $5124: $FF
    db $FC                                        ; $5125: $FC
    db $FD                                        ; $5126: $FD
    ld a, [$76F9]                                 ; $5127: $FA $F9 $76
    ldh a, [c]                                    ; $512A: $F2
    inc c                                         ; $512B: $0C
    ld l, $10                                     ; $512C: $2E $10
    jr z, jr_01A_5140                             ; $512E: $28 $10

    stop                                          ; $5130: $10 $00
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

jr_01A_5140:
    nop                                           ; $5140: $00
    nop                                           ; $5141: $00
    nop                                           ; $5142: $00
    nop                                           ; $5143: $00
    nop                                           ; $5144: $00
    nop                                           ; $5145: $00
    nop                                           ; $5146: $00
    nop                                           ; $5147: $00
    nop                                           ; $5148: $00
    nop                                           ; $5149: $00
    nop                                           ; $514A: $00
    nop                                           ; $514B: $00
    nop                                           ; $514C: $00
    nop                                           ; $514D: $00
    ret nz                                        ; $514E: $C0

    nop                                           ; $514F: $00
    and b                                         ; $5150: $A0
    ld b, b                                       ; $5151: $40
    sub b                                         ; $5152: $90
    ld h, b                                       ; $5153: $60
    db $EC                                        ; $5154: $EC
    ld [hl], b                                    ; $5155: $70
    ld a, a                                       ; $5156: $7F
    inc a                                         ; $5157: $3C
    ld a, [hl]                                    ; $5158: $7E
    dec a                                         ; $5159: $3D
    ccf                                           ; $515A: $3F
    dec e                                         ; $515B: $1D
    rra                                           ; $515C: $1F
    dec c                                         ; $515D: $0D
    rra                                           ; $515E: $1F
    nop                                           ; $515F: $00
    nop                                           ; $5160: $00
    nop                                           ; $5161: $00
    nop                                           ; $5162: $00
    nop                                           ; $5163: $00
    nop                                           ; $5164: $00
    nop                                           ; $5165: $00
    nop                                           ; $5166: $00
    nop                                           ; $5167: $00
    nop                                           ; $5168: $00
    nop                                           ; $5169: $00
    nop                                           ; $516A: $00
    nop                                           ; $516B: $00
    nop                                           ; $516C: $00
    nop                                           ; $516D: $00
    jr jr_01A_5170                                ; $516E: $18 $00

jr_01A_5170:
    db $F4                                        ; $5170: $F4
    ld [$E41F], sp                                ; $5171: $08 $1F $E4
    rst RST_38                                    ; $5174: $FF
    xor $FF                                       ; $5175: $EE $FF
    xor $FF                                       ; $5177: $EE $FF
    sbc $FE                                       ; $5179: $DE $FE
    dec e                                         ; $517B: $1D
    ld a, $0D                                     ; $517C: $3E $0D
    rrca                                          ; $517E: $0F
    nop                                           ; $517F: $00
    nop                                           ; $5180: $00
    nop                                           ; $5181: $00
    ld [hl], b                                    ; $5182: $70
    nop                                           ; $5183: $00
    ld c, h                                       ; $5184: $4C
    jr nc, jr_01A_51BA                            ; $5185: $30 $33

    inc c                                         ; $5187: $0C
    ld b, b                                       ; $5188: $40
    ccf                                           ; $5189: $3F
    cp b                                          ; $518A: $B8
    ld b, a                                       ; $518B: $47

jr_01A_518C:
    ret nc                                        ; $518C: $D0

    rrca                                          ; $518D: $0F
    cpl                                           ; $518E: $2F
    db $10                                        ; $518F: $10
    ld a, c                                       ; $5190: $79
    nop                                           ; $5191: $00
    add c                                         ; $5192: $81
    nop                                           ; $5193: $00
    ld h, b                                       ; $5194: $60
    add b                                         ; $5195: $80
    inc de                                        ; $5196: $13
    ldh [$FF0D], a                                ; $5197: $E0 $0D
    ldh a, [c]                                    ; $5199: $F2
    dec bc                                        ; $519A: $0B
    push af                                       ; $519B: $F5
    rra                                           ; $519C: $1F
    jp hl                                         ; $519D: $E9


    cp a                                          ; $519E: $BF
    ld e, l                                       ; $519F: $5D
    nop                                           ; $51A0: $00
    nop                                           ; $51A1: $00
    ld b, b                                       ; $51A2: $40
    nop                                           ; $51A3: $00
    and b                                         ; $51A4: $A0
    ld b, b                                       ; $51A5: $40
    sub b                                         ; $51A6: $90
    ld h, b                                       ; $51A7: $60
    ld e, h                                       ; $51A8: $5C
    and b                                         ; $51A9: $A0
    ld a, h                                       ; $51AA: $7C
    sbc b                                         ; $51AB: $98
    cp $7C                                        ; $51AC: $FE $7C
    cp $FC                                        ; $51AE: $FE $FC
    rst RST_38                                    ; $51B0: $FF
    cp $FF                                        ; $51B1: $FE $FF
    cp $FC                                        ; $51B3: $FE $FC
    ld a, a                                       ; $51B5: $7F
    cp $7F                                        ; $51B6: $FE $7F
    db $FD                                        ; $51B8: $FD
    ld a, a                                       ; $51B9: $7F

jr_01A_51BA:
    cp $BF                                        ; $51BA: $FE $BF
    cp $3F                                        ; $51BC: $FE $3F
    rst RST_38                                    ; $51BE: $FF
    ld e, a                                       ; $51BF: $5F
    add b                                         ; $51C0: $80
    nop                                           ; $51C1: $00
    add b                                         ; $51C2: $80
    nop                                           ; $51C3: $00
    ld b, b                                       ; $51C4: $40
    add b                                         ; $51C5: $80
    ld b, b                                       ; $51C6: $40
    add b                                         ; $51C7: $80
    and b                                         ; $51C8: $A0
    ret nz                                        ; $51C9: $C0

    jr nz, jr_01A_518C                            ; $51CA: $20 $C0

    ldh [$FFC0], a                                ; $51CC: $E0 $C0
    ret c                                         ; $51CE: $D8

    and b                                         ; $51CF: $A0
    call nz, $FA38                                ; $51D0: $C4 $38 $FA
    add h                                         ; $51D3: $84
    and [hl]                                      ; $51D4: $A6
    ld b, b                                       ; $51D5: $40
    jr nz, @-$3E                                  ; $51D6: $20 $C0

    ld b, b                                       ; $51D8: $40
    add b                                         ; $51D9: $80
    ret nz                                        ; $51DA: $C0

    nop                                           ; $51DB: $00
    nop                                           ; $51DC: $00
    nop                                           ; $51DD: $00
    nop                                           ; $51DE: $00
    nop                                           ; $51DF: $00
    ld bc, $0300                                  ; $51E0: $01 $00 $03
    ld bc, $0305                                  ; $51E3: $01 $05 $03
    dec bc                                        ; $51E6: $0B
    rlca                                          ; $51E7: $07
    ld de, $1F0F                                  ; $51E8: $11 $0F $1F
    ld c, $0E                                     ; $51EB: $0E $0E
    nop                                           ; $51ED: $00
    nop                                           ; $51EE: $00
    nop                                           ; $51EF: $00
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
    inc bc                                        ; $5200: $03
    nop                                           ; $5201: $00
    rrca                                          ; $5202: $0F
    inc bc                                        ; $5203: $03
    rra                                           ; $5204: $1F
    rlca                                          ; $5205: $07
    daa                                           ; $5206: $27
    dec de                                        ; $5207: $1B
    dec sp                                        ; $5208: $3B
    dec b                                         ; $5209: $05
    ld d, l                                       ; $520A: $55
    ld a, [hl+]                                   ; $520B: $2A
    ld e, e                                       ; $520C: $5B
    inc [hl]                                      ; $520D: $34
    cp a                                          ; $520E: $BF
    ld a, b                                       ; $520F: $78
    cp [hl]                                       ; $5210: $BE
    ld a, h                                       ; $5211: $7C
    db $FC                                        ; $5212: $FC
    or b                                          ; $5213: $B0
    ldh a, [$FFC0]                                ; $5214: $F0 $C0
    ldh [$FFC0], a                                ; $5216: $E0 $C0
    ldh [$FF80], a                                ; $5218: $E0 $80
    add b                                         ; $521A: $80
    nop                                           ; $521B: $00
    nop                                           ; $521C: $00
    nop                                           ; $521D: $00
    nop                                           ; $521E: $00
    nop                                           ; $521F: $00
    ld a, a                                       ; $5220: $7F
    inc b                                         ; $5221: $04
    add a                                         ; $5222: $87
    ld a, c                                       ; $5223: $79
    inc bc                                        ; $5224: $03
    db $FD                                        ; $5225: $FD
    add e                                         ; $5226: $83
    ld a, l                                       ; $5227: $7D
    rst RST_00                                    ; $5228: $C7
    cp b                                          ; $5229: $B8
    rst RST_28                                    ; $522A: $EF
    rst RST_10                                    ; $522B: $D7
    rst RST_38                                    ; $522C: $FF
    rst RST_08                                    ; $522D: $CF
    rst RST_38                                    ; $522E: $FF
    cp [hl]                                       ; $522F: $BE
    cp $60                                        ; $5230: $FE $60
    ldh [rP1], a                                  ; $5232: $E0 $00
    nop                                           ; $5234: $00
    nop                                           ; $5235: $00
    nop                                           ; $5236: $00
    nop                                           ; $5237: $00
    nop                                           ; $5238: $00
    nop                                           ; $5239: $00
    nop                                           ; $523A: $00
    nop                                           ; $523B: $00
    nop                                           ; $523C: $00
    nop                                           ; $523D: $00
    nop                                           ; $523E: $00
    nop                                           ; $523F: $00
    rst RST_38                                    ; $5240: $FF
    sbc a                                         ; $5241: $9F
    rst RST_38                                    ; $5242: $FF
    ld c, a                                       ; $5243: $4F
    rst RST_38                                    ; $5244: $FF
    ld h, b                                       ; $5245: $60
    rst RST_38                                    ; $5246: $FF
    ld a, a                                       ; $5247: $7F
    rst RST_38                                    ; $5248: $FF
    ccf                                           ; $5249: $3F
    rst RST_38                                    ; $524A: $FF
    ld c, [hl]                                    ; $524B: $4E
    cp $61                                        ; $524C: $FE $61
    push hl                                       ; $524E: $E5
    ld [bc], a                                    ; $524F: $02
    dec b                                         ; $5250: $05
    ld [bc], a                                    ; $5251: $02
    ld [bc], a                                    ; $5252: $02
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
    rrca                                          ; $5260: $0F
    nop                                           ; $5261: $00
    inc de                                        ; $5262: $13
    rrca                                          ; $5263: $0F
    rla                                           ; $5264: $17
    rrca                                          ; $5265: $0F
    rra                                           ; $5266: $1F
    rrca                                          ; $5267: $0F
    rrca                                          ; $5268: $0F
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
    ld bc, $0100                                  ; $5280: $01 $00 $01
    nop                                           ; $5283: $00
    inc bc                                        ; $5284: $03
    nop                                           ; $5285: $00

jr_01A_5286:
    ld [bc], a                                    ; $5286: $02
    ld bc, $0001                                  ; $5287: $01 $01 $00
    inc bc                                        ; $528A: $03
    ld bc, $0007                                  ; $528B: $01 $07 $00
    ld a, [bc]                                    ; $528E: $0A
    dec b                                         ; $528F: $05
    ld e, $01                                     ; $5290: $1E $01
    dec hl                                        ; $5292: $2B
    dec d                                         ; $5293: $15
    rst RST_38                                    ; $5294: $FF
    ld sp, $BAFD                                  ; $5295: $31 $FD $BA
    rst RST_38                                    ; $5298: $FF
    cp h                                          ; $5299: $BC
    cp $C0                                        ; $529A: $FE $C0
    ldh a, [rP1]                                  ; $529C: $F0 $00
    nop                                           ; $529E: $00
    nop                                           ; $529F: $00
    inc e                                         ; $52A0: $1C
    nop                                           ; $52A1: $00
    inc de                                        ; $52A2: $13
    inc c                                         ; $52A3: $0C
    db $FC                                        ; $52A4: $FC
    inc bc                                        ; $52A5: $03
    rst RST_38                                    ; $52A6: $FF
    ld h, b                                       ; $52A7: $60
    di                                            ; $52A8: $F3
    ld l, h                                       ; $52A9: $6C
    ld hl, sp+$77                                 ; $52AA: $F8 $77
    ld hl, sp-$49                                 ; $52AC: $F8 $B7
    di                                            ; $52AE: $F3
    call z, $42FF                                 ; $52AF: $CC $FF $42
    ld c, a                                       ; $52B2: $4F
    or d                                          ; $52B3: $B2
    jp $E1BC                                      ; $52B4: $C3 $BC $E1


    sbc $E7                                       ; $52B7: $DE $E7
    reti                                          ; $52B9: $D9


    rst RST_28                                    ; $52BA: $EF
    pop de                                        ; $52BB: $D1
    di                                            ; $52BC: $F3
    dec c                                         ; $52BD: $0D
    rra                                           ; $52BE: $1F
    ld bc, $003C                                  ; $52BF: $01 $3C $00
    ld e, [hl]                                    ; $52C2: $5E
    jr nc, @+$60                                  ; $52C3: $30 $5E

    jr nz, jr_01A_5286                            ; $52C5: $20 $BF

    ld h, b                                       ; $52C7: $60
    cp a                                          ; $52C8: $BF
    ld h, b                                       ; $52C9: $60
    rst RST_38                                    ; $52CA: $FF
    ld h, b                                       ; $52CB: $60
    rst RST_38                                    ; $52CC: $FF
    jp Jump_01A_4BFF                              ; $52CD: $C3 $FF $4B


    ld a, a                                       ; $52D0: $7F
    or c                                          ; $52D1: $B1
    rst RST_30                                    ; $52D2: $F7
    ld [$A05F], sp                                ; $52D3: $08 $5F $A0
    rst RST_38                                    ; $52D6: $FF
    rlca                                          ; $52D7: $07
    rst RST_38                                    ; $52D8: $FF
    rst RST_38                                    ; $52D9: $FF
    rst RST_38                                    ; $52DA: $FF
    rst RST_38                                    ; $52DB: $FF
    rst RST_38                                    ; $52DC: $FF
    rst RST_38                                    ; $52DD: $FF
    rst RST_38                                    ; $52DE: $FF
    rst RST_38                                    ; $52DF: $FF
    add b                                         ; $52E0: $80
    nop                                           ; $52E1: $00
    jp $CD80                                      ; $52E2: $C3 $80 $CD


    add d                                         ; $52E5: $82
    pop af                                        ; $52E6: $F1
    adc [hl]                                      ; $52E7: $8E
    cp $00                                        ; $52E8: $FE $00
    rst RST_38                                    ; $52EA: $FF
    db $F4                                        ; $52EB: $F4
    cp $F9                                        ; $52EC: $FE $F9
    db $FD                                        ; $52EE: $FD
    ld a, [$F9F6]                                 ; $52EF: $FA $F6 $F9
    cp $F9                                        ; $52F2: $FE $F9
    and a                                         ; $52F4: $A7
    ld hl, sp+$44                                 ; $52F5: $F8 $44
    ld hl, sp+$08                                 ; $52F7: $F8 $08
    ldh a, [rSVBK]                                ; $52F9: $F0 $70
    add b                                         ; $52FB: $80
    add b                                         ; $52FC: $80
    nop                                           ; $52FD: $00
    nop                                           ; $52FE: $00
    nop                                           ; $52FF: $00
    add b                                         ; $5300: $80
    nop                                           ; $5301: $00
    ld b, b                                       ; $5302: $40
    add b                                         ; $5303: $80
    jr nz, @-$3E                                  ; $5304: $20 $C0

    db $10                                        ; $5306: $10
    ldh [$FF90], a                                ; $5307: $E0 $90
    ld h, b                                       ; $5309: $60
    ld c, b                                       ; $530A: $48
    jr nc, jr_01A_5335                            ; $530B: $30 $28

    db $10                                        ; $530D: $10
    jr jr_01A_5310                                ; $530E: $18 $00

jr_01A_5310:
    nop                                           ; $5310: $00
    nop                                           ; $5311: $00
    nop                                           ; $5312: $00
    nop                                           ; $5313: $00
    nop                                           ; $5314: $00
    nop                                           ; $5315: $00
    nop                                           ; $5316: $00
    nop                                           ; $5317: $00
    nop                                           ; $5318: $00
    nop                                           ; $5319: $00
    nop                                           ; $531A: $00
    nop                                           ; $531B: $00
    nop                                           ; $531C: $00
    nop                                           ; $531D: $00
    nop                                           ; $531E: $00
    nop                                           ; $531F: $00
    inc bc                                        ; $5320: $03
    ld bc, $0001                                  ; $5321: $01 $01 $00
    nop                                           ; $5324: $00
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

jr_01A_5335:
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
    rst RST_38                                    ; $5340: $FF
    rst RST_38                                    ; $5341: $FF
    cp $FF                                        ; $5342: $FE $FF
    db $FD                                        ; $5344: $FD
    rst RST_38                                    ; $5345: $FF
    rst RST_38                                    ; $5346: $FF
    nop                                           ; $5347: $00
    nop                                           ; $5348: $00
    nop                                           ; $5349: $00
    nop                                           ; $534A: $00
    nop                                           ; $534B: $00
    nop                                           ; $534C: $00
    nop                                           ; $534D: $00
    nop                                           ; $534E: $00
    nop                                           ; $534F: $00
    nop                                           ; $5350: $00
    nop                                           ; $5351: $00
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
    nop                                           ; $5360: $00
    nop                                           ; $5361: $00
    nop                                           ; $5362: $00
    nop                                           ; $5363: $00

jr_01A_5364:
    nop                                           ; $5364: $00
    nop                                           ; $5365: $00
    nop                                           ; $5366: $00
    nop                                           ; $5367: $00
    rrca                                          ; $5368: $0F

jr_01A_5369:
    nop                                           ; $5369: $00
    ld [$0707], sp                                ; $536A: $08 $07 $07
    nop                                           ; $536D: $00
    nop                                           ; $536E: $00
    nop                                           ; $536F: $00
    nop                                           ; $5370: $00
    nop                                           ; $5371: $00
    nop                                           ; $5372: $00
    nop                                           ; $5373: $00
    inc c                                         ; $5374: $0C
    nop                                           ; $5375: $00
    dec bc                                        ; $5376: $0B
    inc b                                         ; $5377: $04
    inc b                                         ; $5378: $04
    inc bc                                        ; $5379: $03
    inc b                                         ; $537A: $04
    inc bc                                        ; $537B: $03
    ld [bc], a                                    ; $537C: $02
    ld bc, $0001                                  ; $537D: $01 $01 $00
    dec h                                         ; $5380: $25
    jr jr_01A_5396                                ; $5381: $18 $13

    inc c                                         ; $5383: $0C
    ld de, $C90E                                  ; $5384: $11 $0E $C9
    ld b, $3E                                     ; $5387: $06 $3E
    pop bc                                        ; $5389: $C1
    inc b                                         ; $538A: $04
    ei                                            ; $538B: $FB
    rst RST_38                                    ; $538C: $FF
    jr @+$21                                      ; $538D: $18 $1F

    ld bc, $001F                                  ; $538F: $01 $1F $00
    inc a                                         ; $5392: $3C
    inc bc                                        ; $5393: $03
    db $FD                                        ; $5394: $FD
    ld a, [hl+]                                   ; $5395: $2A

jr_01A_5396:
    rst RST_38                                    ; $5396: $FF
    ld l, c                                       ; $5397: $69
    rst RST_38                                    ; $5398: $FF
    ld c, b                                       ; $5399: $48
    rst RST_38                                    ; $539A: $FF
    ld d, e                                       ; $539B: $53
    rst RST_38                                    ; $539C: $FF
    ld [hl], e                                    ; $539D: $73
    ld a, a                                       ; $539E: $7F
    dec l                                         ; $539F: $2D
    ldh [rP1], a                                  ; $53A0: $E0 $00
    jr c, jr_01A_5364                             ; $53A2: $38 $C0

    adc $30                                       ; $53A4: $CE $30
    dec c                                         ; $53A6: $0D
    ldh a, [c]                                    ; $53A7: $F2
    ld sp, hl                                     ; $53A8: $F9
    ld b, $06                                     ; $53A9: $06 $06
    ld hl, sp-$19                                 ; $53AB: $F8 $E7
    jr jr_01A_5369                                ; $53AD: $18 $BA

    ld b, l                                       ; $53AF: $45
    and $9B                                       ; $53B0: $E6 $9B
    rst RST_00                                    ; $53B2: $C7
    dec sp                                        ; $53B3: $3B
    ld a, a                                       ; $53B4: $7F
    add e                                         ; $53B5: $83
    rst RST_38                                    ; $53B6: $FF
    ld [hl], e                                    ; $53B7: $73
    ccf                                           ; $53B8: $3F
    ldh a, [rIE]                                  ; $53B9: $F0 $FF
    db $EC                                        ; $53BB: $EC
    db $FD                                        ; $53BC: $FD
    ld a, [de]                                    ; $53BD: $1A
    ld sp, hl                                     ; $53BE: $F9
    add [hl]                                      ; $53BF: $86
    nop                                           ; $53C0: $00
    nop                                           ; $53C1: $00
    nop                                           ; $53C2: $00
    nop                                           ; $53C3: $00
    nop                                           ; $53C4: $00
    nop                                           ; $53C5: $00
    ldh a, [rP1]                                  ; $53C6: $F0 $00
    ld [$ACF0], sp                                ; $53C8: $08 $F0 $AC
    ld hl, sp+$56                                 ; $53CB: $F8 $56
    db $FC                                        ; $53CD: $FC
    ld [$BF3C], a                                 ; $53CE: $EA $3C $BF
    ld b, [hl]                                    ; $53D1: $46
    xor a                                         ; $53D2: $AF
    ld d, [hl]                                    ; $53D3: $56
    xor a                                         ; $53D4: $AF
    ld d, d                                       ; $53D5: $52
    ld l, e                                       ; $53D6: $6B
    sub h                                         ; $53D7: $94
    ld a, [de]                                    ; $53D8: $1A
    db $E4                                        ; $53D9: $E4
    push hl                                       ; $53DA: $E5
    ld a, [de]                                    ; $53DB: $1A
    sbc l                                         ; $53DC: $9D
    ld [bc], a                                    ; $53DD: $02
    inc bc                                        ; $53DE: $03
    nop                                           ; $53DF: $00
    ccf                                           ; $53E0: $3F
    nop                                           ; $53E1: $00
    ld e, $01                                     ; $53E2: $1E $01
    ld h, d                                       ; $53E4: $62
    dec e                                         ; $53E5: $1D
    add e                                         ; $53E6: $83
    ld a, h                                       ; $53E7: $7C
    jp $E13D                                      ; $53E8: $C3 $3D $E1


    sbc $FF                                       ; $53EB: $DE $FF
    db $EC                                        ; $53ED: $EC
    db $FC                                        ; $53EE: $FC
    ldh [$FFE0], a                                ; $53EF: $E0 $E0
    nop                                           ; $53F1: $00
    pop bc                                        ; $53F2: $C1
    add b                                         ; $53F3: $80
    pop bc                                        ; $53F4: $C1
    add b                                         ; $53F5: $80
    ldh [rP1], a                                  ; $53F6: $E0 $00
    pop hl                                        ; $53F8: $E1
    ld b, b                                       ; $53F9: $40
    pop bc                                        ; $53FA: $C1
    add b                                         ; $53FB: $80
    ret nz                                        ; $53FC: $C0

    add b                                         ; $53FD: $80
    add b                                         ; $53FE: $80
    nop                                           ; $53FF: $00
    rst RST_38                                    ; $5400: $FF
    ldh a, [rIE]                                  ; $5401: $F0 $FF
    ld a, [hl]                                    ; $5403: $7E
    cp $7C                                        ; $5404: $FE $7C
    db $FC                                        ; $5406: $FC
    nop                                           ; $5407: $00
    ldh [c], a                                    ; $5408: $E2
    call c, $BCC2                                 ; $5409: $DC $C2 $BC
    jp nz, $82BC                                  ; $540C: $C2 $BC $82

    ld a, h                                       ; $540F: $7C
    add d                                         ; $5410: $82
    ld a, h                                       ; $5411: $7C
    db $FC                                        ; $5412: $FC
    nop                                           ; $5413: $00
    cp $F8                                        ; $5414: $FE $F8
    cp $F8                                        ; $5416: $FE $F8
    rst RST_38                                    ; $5418: $FF
    ld [bc], a                                    ; $5419: $02
    ld d, a                                       ; $541A: $57
    xor d                                         ; $541B: $AA
    rst RST_38                                    ; $541C: $FF
    ld b, $1F                                     ; $541D: $06 $1F
    nop                                           ; $541F: $00
    rlca                                          ; $5420: $07
    nop                                           ; $5421: $00
    rrca                                          ; $5422: $0F
    rlca                                          ; $5423: $07
    rra                                           ; $5424: $1F
    rlca                                          ; $5425: $07
    cpl                                           ; $5426: $2F
    inc de                                        ; $5427: $13
    inc de                                        ; $5428: $13
    dec c                                         ; $5429: $0D
    rrca                                          ; $542A: $0F
    nop                                           ; $542B: $00
    dec b                                         ; $542C: $05
    inc bc                                        ; $542D: $03
    dec b                                         ; $542E: $05
    inc bc                                        ; $542F: $03
    rlca                                          ; $5430: $07
    ld bc, $060F                                  ; $5431: $01 $0F $06
    rra                                           ; $5434: $1F
    rrca                                          ; $5435: $0F
    ld l, a                                       ; $5436: $6F
    rra                                           ; $5437: $1F
    sbc a                                         ; $5438: $9F
    ld a, h                                       ; $5439: $7C
    db $FC                                        ; $543A: $FC
    nop                                           ; $543B: $00
    nop                                           ; $543C: $00
    nop                                           ; $543D: $00
    nop                                           ; $543E: $00
    nop                                           ; $543F: $00
    nop                                           ; $5440: $00
    nop                                           ; $5441: $00
    nop                                           ; $5442: $00
    nop                                           ; $5443: $00
    nop                                           ; $5444: $00
    nop                                           ; $5445: $00
    nop                                           ; $5446: $00
    nop                                           ; $5447: $00
    nop                                           ; $5448: $00
    nop                                           ; $5449: $00
    nop                                           ; $544A: $00
    nop                                           ; $544B: $00
    nop                                           ; $544C: $00
    nop                                           ; $544D: $00
    nop                                           ; $544E: $00
    nop                                           ; $544F: $00
    nop                                           ; $5450: $00
    nop                                           ; $5451: $00
    nop                                           ; $5452: $00
    nop                                           ; $5453: $00
    nop                                           ; $5454: $00
    nop                                           ; $5455: $00
    nop                                           ; $5456: $00
    nop                                           ; $5457: $00
    nop                                           ; $5458: $00
    nop                                           ; $5459: $00
    nop                                           ; $545A: $00
    nop                                           ; $545B: $00
    jr nc, jr_01A_545E                            ; $545C: $30 $00

jr_01A_545E:
    jr z, jr_01A_5470                             ; $545E: $28 $10

    ld hl, sp+$60                                 ; $5460: $F8 $60
    cp $08                                        ; $5462: $FE $08
    adc a                                         ; $5464: $8F
    ld a, [hl]                                    ; $5465: $7E
    cp a                                          ; $5466: $BF
    ld a, [hl]                                    ; $5467: $7E
    rst RST_38                                    ; $5468: $FF
    nop                                           ; $5469: $00
    nop                                           ; $546A: $00
    nop                                           ; $546B: $00
    nop                                           ; $546C: $00
    nop                                           ; $546D: $00
    nop                                           ; $546E: $00
    nop                                           ; $546F: $00

jr_01A_5470:
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
    ld h, b                                       ; $5480: $60
    nop                                           ; $5481: $00
    ld d, b                                       ; $5482: $50
    jr nz, jr_01A_54CD                            ; $5483: $20 $48

    jr nc, jr_01A_54AE                            ; $5485: $30 $27

    jr @+$23                                      ; $5487: $18 $21

    ld e, $11                                     ; $5489: $1E $11
    ld c, $3A                                     ; $548B: $0E $3A
    dec d                                         ; $548D: $15
    db $FD                                        ; $548E: $FD
    ld a, [de]                                    ; $548F: $1A
    cp a                                          ; $5490: $BF
    ld e, h                                       ; $5491: $5C
    cp a                                          ; $5492: $BF
    ld e, [hl]                                    ; $5493: $5E
    ld a, $DD                                     ; $5494: $3E $DD
    cp $0D                                        ; $5496: $FE $0D
    rrca                                          ; $5498: $0F
    nop                                           ; $5499: $00
    nop                                           ; $549A: $00
    nop                                           ; $549B: $00
    nop                                           ; $549C: $00
    nop                                           ; $549D: $00
    nop                                           ; $549E: $00
    nop                                           ; $549F: $00
    ld e, [hl]                                    ; $54A0: $5E
    inc [hl]                                      ; $54A1: $34
    or d                                          ; $54A2: $B2
    ld l, h                                       ; $54A3: $6C
    or a                                          ; $54A4: $B7
    ld l, [hl]                                    ; $54A5: $6E
    rst RST_28                                    ; $54A6: $EF
    inc e                                         ; $54A7: $1C
    dec a                                         ; $54A8: $3D
    jp nc, $CEF1                                  ; $54A9: $D2 $F1 $CE

    rst RST_20                                    ; $54AC: $E7
    rra                                           ; $54AD: $1F

jr_01A_54AE:
    rst RST_38                                    ; $54AE: $FF

jr_01A_54AF:
    ccf                                           ; $54AF: $3F
    rst RST_20                                    ; $54B0: $E7
    ld a, a                                       ; $54B1: $7F
    rst RST_08                                    ; $54B2: $CF
    db $FC                                        ; $54B3: $FC
    rst RST_38                                    ; $54B4: $FF
    db $FC                                        ; $54B5: $FC
    rst RST_38                                    ; $54B6: $FF
    cp $FF                                        ; $54B7: $FE $FF
    ld c, $FF                                     ; $54B9: $0E $FF
    ldh a, [$FFF0]                                ; $54BB: $F0 $F0
    ret nz                                        ; $54BD: $C0

    ret nz                                        ; $54BE: $C0

    nop                                           ; $54BF: $00
    nop                                           ; $54C0: $00
    nop                                           ; $54C1: $00
    nop                                           ; $54C2: $00
    nop                                           ; $54C3: $00
    ldh a, [rP1]                                  ; $54C4: $F0 $00
    rrca                                          ; $54C6: $0F
    ldh a, [$FFC0]                                ; $54C7: $F0 $C0
    ccf                                           ; $54C9: $3F
    ccf                                           ; $54CA: $3F
    rlca                                          ; $54CB: $07
    rlca                                          ; $54CC: $07

jr_01A_54CD:
    nop                                           ; $54CD: $00
    rlca                                          ; $54CE: $07
    ld bc, $030D                                  ; $54CF: $01 $0D $03
    rst RST_38                                    ; $54D2: $FF
    inc c                                         ; $54D3: $0C
    ccf                                           ; $54D4: $3F
    rst RST_18                                    ; $54D5: $DF
    ccf                                           ; $54D6: $3F
    db $D3                                        ; $54D7: $D3
    cp a                                          ; $54D8: $BF
    ld d, a                                       ; $54D9: $57
    ld a, a                                       ; $54DA: $7F
    inc e                                         ; $54DB: $1C
    rra                                           ; $54DC: $1F
    dec bc                                        ; $54DD: $0B
    rrca                                          ; $54DE: $0F
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
    ld [bc], a                                    ; $54EE: $02
    ld bc, $0001                                  ; $54EF: $01 $01 $00
    nop                                           ; $54F2: $00
    nop                                           ; $54F3: $00
    nop                                           ; $54F4: $00
    nop                                           ; $54F5: $00
    nop                                           ; $54F6: $00
    nop                                           ; $54F7: $00
    inc bc                                        ; $54F8: $03
    nop                                           ; $54F9: $00
    ld [bc], a                                    ; $54FA: $02
    ld bc, $0001                                  ; $54FB: $01 $01 $00
    ld bc, $0000                                  ; $54FE: $01 $00 $00
    nop                                           ; $5501: $00
    nop                                           ; $5502: $00
    nop                                           ; $5503: $00
    nop                                           ; $5504: $00
    nop                                           ; $5505: $00
    nop                                           ; $5506: $00
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
    jr c, jr_01A_551E                             ; $551C: $38 $00

jr_01A_551E:
    ld c, h                                       ; $551E: $4C
    jr nc, @+$32                                  ; $551F: $30 $30

    nop                                           ; $5521: $00
    ld d, h                                       ; $5522: $54
    jr nz, jr_01A_54AF                            ; $5523: $20 $8A

    ld [hl], h                                    ; $5525: $74
    ld a, e                                       ; $5526: $7B
    add h                                         ; $5527: $84
    add a                                         ; $5528: $87
    ld a, c                                       ; $5529: $79
    rrca                                          ; $552A: $0F
    pop af                                        ; $552B: $F1
    ld [hl], e                                    ; $552C: $73
    adc l                                         ; $552D: $8D
    db $DB                                        ; $552E: $DB
    dec h                                         ; $552F: $25
    rst RST_30                                    ; $5530: $F7
    jp hl                                         ; $5531: $E9


    rst RST_28                                    ; $5532: $EF
    ld [de], a                                    ; $5533: $12
    inc a                                         ; $5534: $3C
    rst RST_00                                    ; $5535: $C7
    rst RST_38                                    ; $5536: $FF
    inc sp                                        ; $5537: $33
    rst RST_38                                    ; $5538: $FF
    ld h, b                                       ; $5539: $60
    rst RST_38                                    ; $553A: $FF
    rra                                           ; $553B: $1F
    ld a, a                                       ; $553C: $7F

jr_01A_553D:
    inc hl                                        ; $553D: $23
    scf                                           ; $553E: $37
    dec bc                                        ; $553F: $0B
    nop                                           ; $5540: $00
    nop                                           ; $5541: $00
    ld a, b                                       ; $5542: $78
    nop                                           ; $5543: $00
    and a                                         ; $5544: $A7
    ld a, b                                       ; $5545: $78
    push af                                       ; $5546: $F5
    rst RST_38                                    ; $5547: $FF
    ld a, [$FFFF]                                 ; $5548: $FA $FF $FF

jr_01A_554B:
    rst RST_38                                    ; $554B: $FF
    rst RST_38                                    ; $554C: $FF
    ldh [c], a                                    ; $554D: $E2
    xor $D1                                       ; $554E: $EE $D1
    ld [$EAD5], a                                 ; $5550: $EA $D5 $EA
    dec d                                         ; $5553: $15
    ei                                            ; $5554: $FB
    add h                                         ; $5555: $84
    rst RST_30                                    ; $5556: $F7
    jr nz, jr_01A_554B                            ; $5557: $20 $F2

    pop hl                                        ; $5559: $E1
    pop af                                        ; $555A: $F1
    jr nz, jr_01A_553D                            ; $555B: $20 $E0

    ret nz                                        ; $555D: $C0

    ldh [$FFC0], a                                ; $555E: $E0 $C0
    nop                                           ; $5560: $00
    nop                                           ; $5561: $00
    nop                                           ; $5562: $00
    nop                                           ; $5563: $00
    nop                                           ; $5564: $00
    nop                                           ; $5565: $00
    ret nz                                        ; $5566: $C0

    nop                                           ; $5567: $00
    ldh a, [$FFC0]                                ; $5568: $F0 $C0
    ld a, [hl]                                    ; $556A: $7E
    ldh a, [$FFF2]                                ; $556B: $F0 $F2
    inc l                                         ; $556D: $2C
    ld a, h                                       ; $556E: $7C
    add b                                         ; $556F: $80
    adc b                                         ; $5570: $88
    ld [hl], b                                    ; $5571: $70
    ld hl, sp+$00                                 ; $5572: $F8 $00
    adc b                                         ; $5574: $88
    ld [hl], b                                    ; $5575: $70
    ld [hl], b                                    ; $5576: $70
    add b                                         ; $5577: $80
    sub b                                         ; $5578: $90
    ld h, b                                       ; $5579: $60
    ld h, b                                       ; $557A: $60
    add b                                         ; $557B: $80
    ret nz                                        ; $557C: $C0

    nop                                           ; $557D: $00
    nop                                           ; $557E: $00
    nop                                           ; $557F: $00
    nop                                           ; $5580: $00
    nop                                           ; $5581: $00
    ld bc, $1E00                                  ; $5582: $01 $00 $1E
    ld bc, $1C3F                                  ; $5585: $01 $3F $1C
    ld a, a                                       ; $5588: $7F
    rra                                           ; $5589: $1F
    cp a                                          ; $558A: $BF
    ld c, a                                       ; $558B: $4F
    ld c, a                                       ; $558C: $4F
    scf                                           ; $558D: $37
    ccf                                           ; $558E: $3F
    nop                                           ; $558F: $00
    dec bc                                        ; $5590: $0B
    rlca                                          ; $5591: $07
    dec b                                         ; $5592: $05
    inc bc                                        ; $5593: $03
    ld [bc], a                                    ; $5594: $02
    ld bc, $020F                                  ; $5595: $01 $0F $02
    scf                                           ; $5598: $37
    rrca                                          ; $5599: $0F
    ld c, a                                       ; $559A: $4F
    ccf                                           ; $559B: $3F
    ld a, a                                       ; $559C: $7F
    nop                                           ; $559D: $00
    nop                                           ; $559E: $00
    nop                                           ; $559F: $00
    db $D3                                        ; $55A0: $D3
    inc l                                         ; $55A1: $2C
    rra                                           ; $55A2: $1F
    ldh [c], a                                    ; $55A3: $E2
    ld e, $ED                                     ; $55A4: $1E $ED
    ld c, $F5                                     ; $55A6: $0E $F5
    rst RST_38                                    ; $55A8: $FF
    ld [hl], c                                    ; $55A9: $71
    pop af                                        ; $55AA: $F1
    add b                                         ; $55AB: $80
    ret nz                                        ; $55AC: $C0

    add b                                         ; $55AD: $80
    add b                                         ; $55AE: $80
    nop                                           ; $55AF: $00
    ret nz                                        ; $55B0: $C0

    add b                                         ; $55B1: $80
    ret nz                                        ; $55B2: $C0

    add b                                         ; $55B3: $80
    ld hl, sp-$40                                 ; $55B4: $F8 $C0
    ld hl, sp+$10                                 ; $55B6: $F8 $10
    ldh a, [$FFE0]                                ; $55B8: $F0 $E0
    ldh a, [$FFE0]                                ; $55BA: $F0 $E0
    ldh [rP1], a                                  ; $55BC: $E0 $00
    nop                                           ; $55BE: $00
    nop                                           ; $55BF: $00
    ldh [rP1], a                                  ; $55C0: $E0 $00
    db $10                                        ; $55C2: $10
    ldh [$FF08], a                                ; $55C3: $E0 $08
    ldh a, [$FF3E]                                ; $55C5: $F0 $3E
    ret nz                                        ; $55C7: $C0

    ld a, a                                       ; $55C8: $7F
    cp [hl]                                       ; $55C9: $BE
    sbc a                                         ; $55CA: $9F
    halt                                          ; $55CB: $76
    or [hl]                                       ; $55CC: $B6
    ld c, c                                       ; $55CD: $49
    ld d, d                                       ; $55CE: $52
    dec l                                         ; $55CF: $2D
    ld c, a                                       ; $55D0: $4F
    jr nc, jr_01A_560E                            ; $55D1: $30 $3B

    rlca                                          ; $55D3: $07
    dec c                                         ; $55D4: $0D
    rlca                                          ; $55D5: $07
    rlca                                          ; $55D6: $07
    ld [bc], a                                    ; $55D7: $02
    inc bc                                        ; $55D8: $03
    ld bc, $0102                                  ; $55D9: $01 $02 $01
    ld bc, $0100                                  ; $55DC: $01 $00 $01
    nop                                           ; $55DF: $00
    add b                                         ; $55E0: $80
    nop                                           ; $55E1: $00
    add b                                         ; $55E2: $80
    nop                                           ; $55E3: $00
    add b                                         ; $55E4: $80
    nop                                           ; $55E5: $00
    add b                                         ; $55E6: $80
    nop                                           ; $55E7: $00
    ret nz                                        ; $55E8: $C0

    nop                                           ; $55E9: $00
    ldh [rLCDC], a                                ; $55EA: $E0 $40
    ld hl, sp-$20                                 ; $55EC: $F8 $E0
    inc a                                         ; $55EE: $3C
    ld hl, sp+$7C                                 ; $55EF: $F8 $7C
    ld hl, sp-$04                                 ; $55F1: $F8 $FC
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
    rrca                                          ; $5600: $0F
    nop                                           ; $5601: $00
    ld [$0707], sp                                ; $5602: $08 $07 $07
    nop                                           ; $5605: $00
    nop                                           ; $5606: $00
    nop                                           ; $5607: $00
    nop                                           ; $5608: $00
    nop                                           ; $5609: $00
    nop                                           ; $560A: $00
    nop                                           ; $560B: $00
    inc c                                         ; $560C: $0C
    nop                                           ; $560D: $00

jr_01A_560E:
    dec bc                                        ; $560E: $0B
    inc b                                         ; $560F: $04
    inc b                                         ; $5610: $04
    inc bc                                        ; $5611: $03
    inc b                                         ; $5612: $04
    inc bc                                        ; $5613: $03
    ld [bc], a                                    ; $5614: $02
    ld bc, $0001                                  ; $5615: $01 $01 $00
    ld bc, $0100                                  ; $5618: $01 $00 $01
    nop                                           ; $561B: $00
    ld bc, $0000                                  ; $561C: $01 $00 $00
    nop                                           ; $561F: $00
    nop                                           ; $5620: $00
    nop                                           ; $5621: $00
    nop                                           ; $5622: $00
    nop                                           ; $5623: $00
    inc c                                         ; $5624: $0C
    nop                                           ; $5625: $00
    ld a, [bc]                                    ; $5626: $0A
    inc b                                         ; $5627: $04
    add hl, bc                                    ; $5628: $09
    ld b, $04                                     ; $5629: $06 $04
    inc bc                                        ; $562B: $03
    inc b                                         ; $562C: $04
    inc bc                                        ; $562D: $03
    ld [bc], a                                    ; $562E: $02
    ld bc, $00C3                                  ; $562F: $01 $C3 $00
    ccf                                           ; $5632: $3F
    ret nz                                        ; $5633: $C0

    nop                                           ; $5634: $00
    rst RST_38                                    ; $5635: $FF
    rst RST_38                                    ; $5636: $FF
    rra                                           ; $5637: $1F
    rra                                           ; $5638: $1F
    nop                                           ; $5639: $00
    rra                                           ; $563A: $1F
    inc b                                         ; $563B: $04
    scf                                           ; $563C: $37
    inc c                                         ; $563D: $0C
    cp $31                                        ; $563E: $FE $31
    nop                                           ; $5640: $00
    nop                                           ; $5641: $00
    nop                                           ; $5642: $00
    nop                                           ; $5643: $00
    ld b, $00                                     ; $5644: $06 $00
    ld a, [bc]                                    ; $5646: $0A
    inc b                                         ; $5647: $04
    pop af                                        ; $5648: $F1
    ld c, $EF                                     ; $5649: $0E $EF
    db $10                                        ; $564B: $10
    jr nc, @-$2F                                  ; $564C: $30 $CF

    ld hl, $4EDE                                  ; $564E: $21 $DE $4E
    or c                                          ; $5651: $B1
    cp e                                          ; $5652: $BB
    ld b, h                                       ; $5653: $44
    cp $1D                                        ; $5654: $FE $1D
    db $FD                                        ; $5656: $FD
    ld [bc], a                                    ; $5657: $02
    rst RST_00                                    ; $5658: $C7
    add hl, sp                                    ; $5659: $39
    rst RST_18                                    ; $565A: $DF
    and e                                         ; $565B: $A3
    rst RST_38                                    ; $565C: $FF
    ld [$B77F], sp                                ; $565D: $08 $7F $B7
    nop                                           ; $5660: $00
    nop                                           ; $5661: $00
    nop                                           ; $5662: $00
    nop                                           ; $5663: $00
    nop                                           ; $5664: $00
    nop                                           ; $5665: $00
    add b                                         ; $5666: $80
    nop                                           ; $5667: $00
    ld b, b                                       ; $5668: $40
    add b                                         ; $5669: $80
    ld b, b                                       ; $566A: $40
    add b                                         ; $566B: $80
    call c, $E300                                 ; $566C: $DC $00 $E3
    inc e                                         ; $566F: $1C
    add sp, $3F                                   ; $5670: $E8 $3F
    db $FD                                        ; $5672: $FD
    ld a, a                                       ; $5673: $7F
    cp $7F                                        ; $5674: $FE $7F
    rst RST_38                                    ; $5676: $FF
    ld [hl], e                                    ; $5677: $73
    di                                            ; $5678: $F3
    ld l, h                                       ; $5679: $6C
    db $E4                                        ; $567A: $E4
    ld e, e                                       ; $567B: $5B
    jp hl                                         ; $567C: $E9


    ld d, $EB                                     ; $567D: $16 $EB
    ld d, h                                       ; $567F: $54
    ret nz                                        ; $5680: $C0

    nop                                           ; $5681: $00
    ld h, b                                       ; $5682: $60
    ret nz                                        ; $5683: $C0

    or b                                          ; $5684: $B0
    ldh [$FFD8], a                                ; $5685: $E0 $D8
    ldh a, [$FFFC]                                ; $5687: $F0 $FC
    ld hl, sp-$02                                 ; $5689: $F8 $FE
    ld a, h                                       ; $568B: $7C
    cp $20                                        ; $568C: $FE $20
    ld [hl], e                                    ; $568E: $73
    adc h                                         ; $568F: $8C
    ld e, l                                       ; $5690: $5D
    and d                                         ; $5691: $A2
    ld e, e                                       ; $5692: $5B
    and b                                         ; $5693: $A0
    call nc, $3428                                ; $5694: $D4 $28 $34
    ret z                                         ; $5697: $C8

    jp z, Jump_000_3A34                           ; $5698: $CA $34 $3A

    inc b                                         ; $569B: $04
    ld b, $00                                     ; $569C: $06 $00
    nop                                           ; $569E: $00
    nop                                           ; $569F: $00
    push af                                       ; $56A0: $F5
    ld l, e                                       ; $56A1: $6B
    rst RST_38                                    ; $56A2: $FF
    ld b, e                                       ; $56A3: $43
    rst RST_38                                    ; $56A4: $FF
    ld e, c                                       ; $56A5: $59
    ei                                            ; $56A6: $FB
    halt                                          ; $56A7: $76
    ei                                            ; $56A8: $FB
    daa                                           ; $56A9: $27
    ld a, a                                       ; $56AA: $7F
    adc a                                         ; $56AB: $8F
    sbc a                                         ; $56AC: $9F
    or $FF                                        ; $56AD: $F6 $FF
    ld a, b                                       ; $56AF: $78
    ld a, a                                       ; $56B0: $7F
    ld a, $3E                                     ; $56B1: $3E $3E
    inc c                                         ; $56B3: $0C
    inc c                                         ; $56B4: $0C
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
    rst RST_38                                    ; $56C0: $FF
    jp $B0CF                                      ; $56C1: $C3 $CF $B0


    push bc                                       ; $56C4: $C5
    cp d                                          ; $56C5: $BA
    push bc                                       ; $56C6: $C5
    ld a, [hl-]                                   ; $56C7: $3A
    rst RST_08                                    ; $56C8: $CF
    or l                                          ; $56C9: $B5
    xor a                                         ; $56CA: $AF
    ld d, $1E                                     ; $56CB: $16 $1E
    dec b                                         ; $56CD: $05
    ld b, $01                                     ; $56CE: $06 $01
    ld [bc], a                                    ; $56D0: $02
    ld bc, $0102                                  ; $56D1: $01 $02 $01
    rlca                                          ; $56D4: $07
    nop                                           ; $56D5: $00
    add hl, bc                                    ; $56D6: $09
    rlca                                          ; $56D7: $07
    dec bc                                        ; $56D8: $0B
    rlca                                          ; $56D9: $07
    rrca                                          ; $56DA: $0F
    dec b                                         ; $56DB: $05
    dec d                                         ; $56DC: $15
    ld a, [bc]                                    ; $56DD: $0A
    dec d                                         ; $56DE: $15
    ld a, [bc]                                    ; $56DF: $0A
    ei                                            ; $56E0: $FB
    add h                                         ; $56E1: $84
    rst RST_38                                    ; $56E2: $FF
    ldh a, [$FFFA]                                ; $56E3: $F0 $FA
    push hl                                       ; $56E5: $E5
    ldh a, [c]                                    ; $56E6: $F2
    dec c                                         ; $56E7: $0D
    rst RST_38                                    ; $56E8: $FF
    nop                                           ; $56E9: $00
    db $10                                        ; $56EA: $10
    ldh [rNR10], a                                ; $56EB: $E0 $10
    ldh [rNR10], a                                ; $56ED: $E0 $10
    ldh [rNR10], a                                ; $56EF: $E0 $10
    ldh [rNR10], a                                ; $56F1: $E0 $10
    ldh [$FF90], a                                ; $56F3: $E0 $90
    ld h, b                                       ; $56F5: $60
    ldh [$FF80], a                                ; $56F6: $E0 $80
    ldh [$FFC0], a                                ; $56F8: $E0 $C0
    ldh [rLCDC], a                                ; $56FA: $E0 $40
    ld h, b                                       ; $56FC: $60
    add b                                         ; $56FD: $80
    ld b, b                                       ; $56FE: $40
    add b                                         ; $56FF: $80
    ld a, [hl]                                    ; $5700: $7E
    ld [$1C3E], sp                                ; $5701: $08 $3E $1C
    ld e, $0C                                     ; $5704: $1E $0C
    ld e, $00                                     ; $5706: $1E $00
    ccf                                           ; $5708: $3F
    ld e, $47                                     ; $5709: $1E $47
    ld a, $5F                                     ; $570B: $3E $5F
    ld a, $7F                                     ; $570D: $3E $7F
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

jr_01A_571D:
    nop                                           ; $571D: $00
    nop                                           ; $571E: $00
    nop                                           ; $571F: $00
    nop                                           ; $5720: $00
    nop                                           ; $5721: $00
    nop                                           ; $5722: $00
    nop                                           ; $5723: $00
    rlca                                          ; $5724: $07
    nop                                           ; $5725: $00
    inc b                                         ; $5726: $04
    inc bc                                        ; $5727: $03
    ld bc, $8000                                  ; $5728: $01 $00 $80
    nop                                           ; $572B: $00
    ld [hl], b                                    ; $572C: $70
    add b                                         ; $572D: $80
    ld [$FFF0], sp                                ; $572E: $08 $F0 $FF
    ld a, b                                       ; $5731: $78
    ld hl, sp+$77                                 ; $5732: $F8 $77
    ld a, b                                       ; $5734: $78
    or a                                          ; $5735: $B7
    ld hl, sp-$49                                 ; $5736: $F8 $B7
    ld hl, sp+$37                                 ; $5738: $F8 $37
    ld [hl], $01                                  ; $573A: $36 $01
    ld bc, $0000                                  ; $573C: $01 $00 $00
    nop                                           ; $573F: $00
    nop                                           ; $5740: $00
    nop                                           ; $5741: $00
    nop                                           ; $5742: $00
    nop                                           ; $5743: $00
    nop                                           ; $5744: $00
    nop                                           ; $5745: $00
    nop                                           ; $5746: $00
    nop                                           ; $5747: $00
    add b                                         ; $5748: $80
    nop                                           ; $5749: $00
    ld e, a                                       ; $574A: $5F
    add b                                         ; $574B: $80
    jr nc, jr_01A_571D                            ; $574C: $30 $CF

    xor [hl]                                      ; $574E: $AE
    pop bc                                        ; $574F: $C1
    rst RST_38                                    ; $5750: $FF
    ldh [rP1], a                                  ; $5751: $E0 $00
    rst RST_38                                    ; $5753: $FF
    ld hl, sp-$01                                 ; $5754: $F8 $FF
    ret nz                                        ; $5756: $C0

    rst RST_38                                    ; $5757: $FF
    rst RST_38                                    ; $5758: $FF
    nop                                           ; $5759: $00
    ldh [$FFC0], a                                ; $575A: $E0 $C0
    ldh [rP1], a                                  ; $575C: $E0 $00
    nop                                           ; $575E: $00
    nop                                           ; $575F: $00
    nop                                           ; $5760: $00
    nop                                           ; $5761: $00
    nop                                           ; $5762: $00
    nop                                           ; $5763: $00
    nop                                           ; $5764: $00

jr_01A_5765:
    nop                                           ; $5765: $00
    nop                                           ; $5766: $00
    nop                                           ; $5767: $00
    ld a, a                                       ; $5768: $7F
    nop                                           ; $5769: $00
    ld b, b                                       ; $576A: $40
    ccf                                           ; $576B: $3F
    ld a, b                                       ; $576C: $78
    ccf                                           ; $576D: $3F
    ld a, a                                       ; $576E: $7F
    ccf                                           ; $576F: $3F
    ld a, a                                       ; $5770: $7F
    ccf                                           ; $5771: $3F
    inc a                                         ; $5772: $3C
    rra                                           ; $5773: $1F
    ccf                                           ; $5774: $3F
    rra                                           ; $5775: $1F
    ccf                                           ; $5776: $3F
    rra                                           ; $5777: $1F
    ld de, $1F0E                                  ; $5778: $11 $0E $1F
    ld bc, $0001                                  ; $577B: $01 $01 $00
    nop                                           ; $577E: $00
    nop                                           ; $577F: $00
    rra                                           ; $5780: $1F
    rrca                                          ; $5781: $0F
    rst RST_18                                    ; $5782: $DF
    rrca                                          ; $5783: $0F
    ccf                                           ; $5784: $3F
    jp $C837                                      ; $5785: $C3 $37 $C8


    cpl                                           ; $5788: $2F
    call nc, $CB3C                                ; $5789: $D4 $3C $CB
    jr c, jr_01A_5765                             ; $578C: $38 $D7

    ld hl, sp+$07                                 ; $578E: $F8 $07
    jr jr_01A_5799                                ; $5790: $18 $07

    db $10                                        ; $5792: $10
    rrca                                          ; $5793: $0F
    ld e, $01                                     ; $5794: $1E $01
    daa                                           ; $5796: $27
    ld e, $2F                                     ; $5797: $1E $2F

jr_01A_5799:
    rra                                           ; $5799: $1F
    ccf                                           ; $579A: $3F
    ld bc, $2A55                                  ; $579B: $01 $55 $2A
    ld a, a                                       ; $579E: $7F
    ld bc, $000C                                  ; $579F: $01 $0C $00
    ld a, [bc]                                    ; $57A2: $0A
    inc b                                         ; $57A3: $04
    add hl, bc                                    ; $57A4: $09
    ld b, $04                                     ; $57A5: $06 $04
    inc bc                                        ; $57A7: $03
    inc b                                         ; $57A8: $04
    inc bc                                        ; $57A9: $03
    ld [bc], a                                    ; $57AA: $02
    ld bc, $0001                                  ; $57AB: $01 $01 $00
    ld bc, $0100                                  ; $57AE: $01 $00 $01
    nop                                           ; $57B1: $00
    nop                                           ; $57B2: $00
    nop                                           ; $57B3: $00
    ld bc, $FF00                                  ; $57B4: $01 $00 $FF
    nop                                           ; $57B7: $00
    add a                                         ; $57B8: $87
    ld a, d                                       ; $57B9: $7A
    rla                                           ; $57BA: $17
    ld a, [bc]                                    ; $57BB: $0A
    rrca                                          ; $57BC: $0F
    ld [bc], a                                    ; $57BD: $02
    inc bc                                        ; $57BE: $03
    nop                                           ; $57BF: $00
    nop                                           ; $57C0: $00
    nop                                           ; $57C1: $00
    nop                                           ; $57C2: $00
    nop                                           ; $57C3: $00
    ld c, $00                                     ; $57C4: $0E $00
    or e                                          ; $57C6: $B3
    inc c                                         ; $57C7: $0C
    ld b, e                                       ; $57C8: $43
    cp h                                          ; $57C9: $BC
    ld a, [hl]                                    ; $57CA: $7E
    add c                                         ; $57CB: $81
    add c                                         ; $57CC: $81
    ld a, [hl]                                    ; $57CD: $7E
    add hl, sp                                    ; $57CE: $39
    add $EE                                       ; $57CF: $C6 $EE
    ld de, $66F9                                  ; $57D1: $11 $F9 $66
    pop af                                        ; $57D4: $F1
    ld c, $1F                                     ; $57D5: $0E $1F
    ldh [$FF7F], a                                ; $57D7: $E0 $7F
    sbc h                                         ; $57D9: $9C
    rst RST_08                                    ; $57DA: $CF
    ld a, h                                       ; $57DB: $7C
    rst RST_38                                    ; $57DC: $FF
    dec sp                                        ; $57DD: $3B
    rst RST_38                                    ; $57DE: $FF
    rst RST_00                                    ; $57DF: $C7
    nop                                           ; $57E0: $00
    nop                                           ; $57E1: $00
    nop                                           ; $57E2: $00
    nop                                           ; $57E3: $00
    nop                                           ; $57E4: $00
    nop                                           ; $57E5: $00
    add b                                         ; $57E6: $80
    nop                                           ; $57E7: $00
    ld b, b                                       ; $57E8: $40
    add b                                         ; $57E9: $80
    ld b, b                                       ; $57EA: $40
    add b                                         ; $57EB: $80
    add b                                         ; $57EC: $80
    nop                                           ; $57ED: $00
    cp $00                                        ; $57EE: $FE $00
    add c                                         ; $57F0: $81
    ld a, [hl]                                    ; $57F1: $7E
    ld [$FDFF], a                                 ; $57F2: $EA $FF $FD
    rst RST_38                                    ; $57F5: $FF
    rst RST_38                                    ; $57F6: $FF
    rst RST_38                                    ; $57F7: $FF
    rst RST_38                                    ; $57F8: $FF
    rst RST_38                                    ; $57F9: $FF
    rst RST_38                                    ; $57FA: $FF
    ccf                                           ; $57FB: $3F
    rst RST_38                                    ; $57FC: $FF
    sbc a                                         ; $57FD: $9F
    rst RST_38                                    ; $57FE: $FF
    sbc a                                         ; $57FF: $9F
    rst RST_38                                    ; $5800: $FF
    nop                                           ; $5801: $00
    rst RST_38                                    ; $5802: $FF
    ld a, [$E0FE]                                 ; $5803: $FA $FE $E0
    db $FC                                        ; $5806: $FC
    jr @+$01                                      ; $5807: $18 $FF

    inc a                                         ; $5809: $3C
    ld a, a                                       ; $580A: $7F
    cp h                                          ; $580B: $BC
    ld a, a                                       ; $580C: $7F
    sbc [hl]                                      ; $580D: $9E
    ld a, a                                       ; $580E: $7F
    adc [hl]                                      ; $580F: $8E
    ld c, a                                       ; $5810: $4F
    add a                                         ; $5811: $87
    ld b, a                                       ; $5812: $47
    add c                                         ; $5813: $81
    add c                                         ; $5814: $81
    nop                                           ; $5815: $00
    add b                                         ; $5816: $80
    nop                                           ; $5817: $00
    ret nz                                        ; $5818: $C0

    nop                                           ; $5819: $00
    ret nz                                        ; $581A: $C0

    nop                                           ; $581B: $00
    ret nz                                        ; $581C: $C0

    add b                                         ; $581D: $80
    ldh [$FF80], a                                ; $581E: $E0 $80
    rst RST_38                                    ; $5820: $FF
    ld a, a                                       ; $5821: $7F
    rst RST_38                                    ; $5822: $FF
    ld a, a                                       ; $5823: $7F
    ld a, a                                       ; $5824: $7F
    jr nc, jr_01A_58A3                            ; $5825: $30 $7C

    inc hl                                        ; $5827: $23
    or d                                          ; $5828: $B2
    ld c, l                                       ; $5829: $4D
    ld [bc], a                                    ; $582A: $02
    db $FD                                        ; $582B: $FD
    ld b, e                                       ; $582C: $43
    cp h                                          ; $582D: $BC
    ld b, d                                       ; $582E: $42
    cp h                                          ; $582F: $BC
    sub $28                                       ; $5830: $D6 $28
    call c, $F8A0                                 ; $5832: $DC $A0 $F8
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
    nop                                           ; $5840: $00
    nop                                           ; $5841: $00
    nop                                           ; $5842: $00
    nop                                           ; $5843: $00
    add b                                         ; $5844: $80
    nop                                           ; $5845: $00
    ld b, b                                       ; $5846: $40
    add b                                         ; $5847: $80
    ret nz                                        ; $5848: $C0

    add b                                         ; $5849: $80
    ldh [$FFC0], a                                ; $584A: $E0 $C0
    ldh [$FFC0], a                                ; $584C: $E0 $C0
    ldh a, [$FFE0]                                ; $584E: $F0 $E0
    ldh a, [$FFE0]                                ; $5850: $F0 $E0
    ldh a, [$FFE0]                                ; $5852: $F0 $E0
    ldh a, [$FFE0]                                ; $5854: $F0 $E0
    ldh a, [rP1]                                  ; $5856: $F0 $00
    sub b                                         ; $5858: $90
    ld h, b                                       ; $5859: $60
    ld d, b                                       ; $585A: $50
    and b                                         ; $585B: $A0
    ld d, b                                       ; $585C: $50
    and b                                         ; $585D: $A0
    ld [hl], b                                    ; $585E: $70
    add b                                         ; $585F: $80
    ld a, a                                       ; $5860: $7F
    ld a, [hl-]                                   ; $5861: $3A
    ccf                                           ; $5862: $3F
    ld b, $7F                                     ; $5863: $06 $7F
    inc a                                         ; $5865: $3C
    sbc [hl]                                      ; $5866: $9E
    ld a, h                                       ; $5867: $7C
    cp $00                                        ; $5868: $FE $00
    nop                                           ; $586A: $00
    nop                                           ; $586B: $00
    nop                                           ; $586C: $00
    nop                                           ; $586D: $00
    nop                                           ; $586E: $00
    nop                                           ; $586F: $00
    nop                                           ; $5870: $00
    nop                                           ; $5871: $00
    nop                                           ; $5872: $00
    nop                                           ; $5873: $00
    nop                                           ; $5874: $00
    nop                                           ; $5875: $00
    nop                                           ; $5876: $00
    nop                                           ; $5877: $00
    nop                                           ; $5878: $00
    nop                                           ; $5879: $00
    nop                                           ; $587A: $00
    nop                                           ; $587B: $00
    nop                                           ; $587C: $00
    nop                                           ; $587D: $00
    nop                                           ; $587E: $00
    nop                                           ; $587F: $00
    rlca                                          ; $5880: $07
    nop                                           ; $5881: $00
    inc b                                         ; $5882: $04
    inc bc                                        ; $5883: $03
    ld bc, $8000                                  ; $5884: $01 $00 $80
    nop                                           ; $5887: $00
    ld [hl], b                                    ; $5888: $70
    add b                                         ; $5889: $80
    ld c, b                                       ; $588A: $48
    or b                                          ; $588B: $B0
    rst RST_38                                    ; $588C: $FF
    ld a, b                                       ; $588D: $78
    ld hl, sp+$77                                 ; $588E: $F8 $77
    ld hl, sp-$49                                 ; $5890: $F8 $B7
    ld hl, sp-$49                                 ; $5892: $F8 $B7
    ld hl, sp+$37                                 ; $5894: $F8 $37
    ld [hl], $01                                  ; $5896: $36 $01
    ld bc, $0000                                  ; $5898: $01 $00 $00
    nop                                           ; $589B: $00
    nop                                           ; $589C: $00
    nop                                           ; $589D: $00
    nop                                           ; $589E: $00
    nop                                           ; $589F: $00
    add b                                         ; $58A0: $80
    nop                                           ; $58A1: $00
    ld b, c                                       ; $58A2: $41

jr_01A_58A3:
    add b                                         ; $58A3: $80
    ld hl, $A1C0                                  ; $58A4: $21 $C0 $A1
    ret nz                                        ; $58A7: $C0

    di                                            ; $58A8: $F3
    ldh [$FFFC], a                                ; $58A9: $E0 $FC
    ld [hl], e                                    ; $58AB: $73
    rst RST_38                                    ; $58AC: $FF
    ld [hl], a                                    ; $58AD: $77
    rst RST_38                                    ; $58AE: $FF
    ld [hl], a                                    ; $58AF: $77
    ld a, a                                       ; $58B0: $7F
    jr nc, jr_01A_592F                            ; $58B1: $30 $7C

    ld [$001C], sp                                ; $58B3: $08 $1C $00
    nop                                           ; $58B6: $00
    nop                                           ; $58B7: $00
    nop                                           ; $58B8: $00
    nop                                           ; $58B9: $00
    nop                                           ; $58BA: $00
    nop                                           ; $58BB: $00
    nop                                           ; $58BC: $00
    nop                                           ; $58BD: $00
    nop                                           ; $58BE: $00
    nop                                           ; $58BF: $00
    ld bc, $0100                                  ; $58C0: $01 $00 $01
    nop                                           ; $58C3: $00
    ld bc, $0100                                  ; $58C4: $01 $00 $01
    nop                                           ; $58C7: $00
    ld bc, $0000                                  ; $58C8: $01 $00 $00
    nop                                           ; $58CB: $00
    nop                                           ; $58CC: $00
    nop                                           ; $58CD: $00
    nop                                           ; $58CE: $00
    nop                                           ; $58CF: $00
    nop                                           ; $58D0: $00
    nop                                           ; $58D1: $00
    nop                                           ; $58D2: $00
    nop                                           ; $58D3: $00
    nop                                           ; $58D4: $00
    nop                                           ; $58D5: $00
    nop                                           ; $58D6: $00
    nop                                           ; $58D7: $00
    nop                                           ; $58D8: $00
    nop                                           ; $58D9: $00
    nop                                           ; $58DA: $00
    nop                                           ; $58DB: $00
    nop                                           ; $58DC: $00
    nop                                           ; $58DD: $00
    nop                                           ; $58DE: $00
    nop                                           ; $58DF: $00
    ret nz                                        ; $58E0: $C0

    nop                                           ; $58E1: $00
    and b                                         ; $58E2: $A0
    ld b, b                                       ; $58E3: $40
    sub c                                         ; $58E4: $91
    ld h, b                                       ; $58E5: $60
    ld c, [hl]                                    ; $58E6: $4E
    ld sp, $3C43                                  ; $58E7: $31 $43 $3C
    ld [hl+], a                                   ; $58EA: $22
    dec e                                         ; $58EB: $1D
    inc d                                         ; $58EC: $14
    dec bc                                        ; $58ED: $0B
    dec bc                                        ; $58EE: $0B
    inc b                                         ; $58EF: $04
    ccf                                           ; $58F0: $3F
    ld bc, $3C7F                                  ; $58F1: $01 $7F $3C
    db $FC                                        ; $58F4: $FC
    inc bc                                        ; $58F5: $03
    rst RST_38                                    ; $58F6: $FF
    ld a, b                                       ; $58F7: $78
    rst RST_38                                    ; $58F8: $FF
    cp $FF                                        ; $58F9: $FE $FF
    rst RST_38                                    ; $58FB: $FF
    rst RST_38                                    ; $58FC: $FF
    ld a, c                                       ; $58FD: $79
    ld a, e                                       ; $58FE: $7B
    or l                                          ; $58FF: $B5
    ld h, e                                       ; $5900: $63
    nop                                           ; $5901: $00
    xor a                                         ; $5902: $AF
    ld b, e                                       ; $5903: $43
    ld d, $EB                                     ; $5904: $16 $EB
    or $0B                                        ; $5906: $F6 $0B
    rrca                                          ; $5908: $0F
    di                                            ; $5909: $F3
    rra                                           ; $590A: $1F
    db $E3                                        ; $590B: $E3
    rst RST_20                                    ; $590C: $E7
    jr @-$47                                      ; $590D: $18 $B7

    ld c, e                                       ; $590F: $4B
    rst RST_28                                    ; $5910: $EF
    db $D3                                        ; $5911: $D3
    call c, Call_01A_7F27                         ; $5912: $DC $27 $7F
    sbc e                                         ; $5915: $9B
    rst RST_38                                    ; $5916: $FF
    ld a, d                                       ; $5917: $7A
    rst RST_38                                    ; $5918: $FF
    ld sp, $4EFF                                  ; $5919: $31 $FF $4E
    rst RST_38                                    ; $591C: $FF
    ccf                                           ; $591D: $3F
    rst RST_38                                    ; $591E: $FF
    adc [hl]                                      ; $591F: $8E
    rst RST_38                                    ; $5920: $FF
    nop                                           ; $5921: $00
    rst RST_38                                    ; $5922: $FF
    rst RST_38                                    ; $5923: $FF
    ccf                                           ; $5924: $3F
    rst RST_38                                    ; $5925: $FF
    ld a, a                                       ; $5926: $7F
    ld hl, sp-$03                                 ; $5927: $F8 $FD
    ldh [c], a                                    ; $5929: $E2
    or $E9                                        ; $592A: $F6 $E9
    ld a, [$FBE5]                                 ; $592C: $FA $E5 $FB

jr_01A_592F:
    call nz, Call_000_18FE                        ; $592F: $C4 $FE $18
    ld hl, sp-$60                                 ; $5932: $F8 $A0
    ldh [$FF80], a                                ; $5934: $E0 $80
    ret nz                                        ; $5936: $C0

    add b                                         ; $5937: $80
    add b                                         ; $5938: $80
    nop                                           ; $5939: $00
    add b                                         ; $593A: $80
    nop                                           ; $593B: $00
    add b                                         ; $593C: $80
    nop                                           ; $593D: $00
    add b                                         ; $593E: $80
    nop                                           ; $593F: $00
    nop                                           ; $5940: $00
    nop                                           ; $5941: $00
    nop                                           ; $5942: $00

jr_01A_5943:
    nop                                           ; $5943: $00
    nop                                           ; $5944: $00
    nop                                           ; $5945: $00
    nop                                           ; $5946: $00
    nop                                           ; $5947: $00
    nop                                           ; $5948: $00
    nop                                           ; $5949: $00
    nop                                           ; $594A: $00
    nop                                           ; $594B: $00
    add b                                         ; $594C: $80
    nop                                           ; $594D: $00
    ldh a, [$FF80]                                ; $594E: $F0 $80
    ret nc                                        ; $5950: $D0

    jr nz, jr_01A_5943                            ; $5951: $20 $F0

    nop                                           ; $5953: $00
    adc h                                         ; $5954: $8C
    ld [hl], b                                    ; $5955: $70
    add d                                         ; $5956: $82
    ld a, h                                       ; $5957: $7C
    sbc l                                         ; $5958: $9D
    ld h, d                                       ; $5959: $62
    cp e                                          ; $595A: $BB
    ld b, h                                       ; $595B: $44
    xor l                                         ; $595C: $AD
    ld b, d                                       ; $595D: $42
    add $00                                       ; $595E: $C6 $00
    rst RST_30                                    ; $5960: $F7
    ld l, b                                       ; $5961: $68
    ld h, a                                       ; $5962: $67
    dec de                                        ; $5963: $1B
    ld h, a                                       ; $5964: $67
    dec de                                        ; $5965: $1B
    rst RST_28                                    ; $5966: $EF
    ld d, h                                       ; $5967: $54
    rst RST_38                                    ; $5968: $FF
    ld l, h                                       ; $5969: $6C
    db $FC                                        ; $596A: $FC
    ld l, e                                       ; $596B: $6B
    db $FC                                        ; $596C: $FC
    inc hl                                        ; $596D: $23
    inc a                                         ; $596E: $3C
    dec bc                                        ; $596F: $0B
    rrca                                          ; $5970: $0F
    inc b                                         ; $5971: $04
    rrca                                          ; $5972: $0F
    inc b                                         ; $5973: $04
    rlca                                          ; $5974: $07
    inc bc                                        ; $5975: $03
    inc bc                                        ; $5976: $03
    nop                                           ; $5977: $00
    rrca                                          ; $5978: $0F
    inc bc                                        ; $5979: $03
    inc sp                                        ; $597A: $33
    rrca                                          ; $597B: $0F
    ld b, a                                       ; $597C: $47
    ccf                                           ; $597D: $3F
    ld a, a                                       ; $597E: $7F
    nop                                           ; $597F: $00
    cp l                                          ; $5980: $BD
    ld e, d                                       ; $5981: $5A
    sbc h                                         ; $5982: $9C
    ld h, e                                       ; $5983: $63
    sbc a                                         ; $5984: $9F
    ld h, b                                       ; $5985: $60
    rst RST_18                                    ; $5986: $DF
    xor e                                         ; $5987: $AB
    rst RST_38                                    ; $5988: $FF
    ret                                           ; $5989: $C9


    rst RST_38                                    ; $598A: $FF
    ld e, b                                       ; $598B: $58
    db $FC                                        ; $598C: $FC
    db $10                                        ; $598D: $10
    ldh a, [rLCDC]                                ; $598E: $F0 $40
    ldh [$FF80], a                                ; $5990: $E0 $80
    ldh [$FF80], a                                ; $5992: $E0 $80
    ldh [rLCDC], a                                ; $5994: $E0 $40
    ld a, b                                       ; $5996: $78
    ret nz                                        ; $5997: $C0

jr_01A_5998:
    ld hl, sp+$10                                 ; $5998: $F8 $10
    ldh a, [$FFE0]                                ; $599A: $F0 $E0
    ldh a, [$FFE0]                                ; $599C: $F0 $E0
    ldh [rP1], a                                  ; $599E: $E0 $00
    ldh a, [$FFE0]                                ; $59A0: $F0 $E0
    ld hl, sp+$00                                 ; $59A2: $F8 $00
    call nz, $82B8                                ; $59A4: $C4 $B8 $82
    ld a, h                                       ; $59A7: $7C
    sbc a                                         ; $59A8: $9F
    ld h, b                                       ; $59A9: $60
    rst RST_38                                    ; $59AA: $FF
    ld e, a                                       ; $59AB: $5F
    ld c, a                                       ; $59AC: $4F
    dec sp                                        ; $59AD: $3B
    ld e, e                                       ; $59AE: $5B
    inc h                                         ; $59AF: $24
    add hl, hl                                    ; $59B0: $29
    ld d, $27                                     ; $59B1: $16 $27
    jr jr_01A_59D0                                ; $59B3: $18 $1B

    rlca                                          ; $59B5: $07
    dec c                                         ; $59B6: $0D
    rlca                                          ; $59B7: $07
    rlca                                          ; $59B8: $07
    ld [bc], a                                    ; $59B9: $02
    ld b, $01                                     ; $59BA: $06 $01
    inc b                                         ; $59BC: $04
    inc bc                                        ; $59BD: $03
    dec b                                         ; $59BE: $05
    inc bc                                        ; $59BF: $03
    ldh a, [$FFE0]                                ; $59C0: $F0 $E0
    ldh a, [$FF60]                                ; $59C2: $F0 $60
    ld l, b                                       ; $59C4: $68
    sub b                                         ; $59C5: $90
    jr z, jr_01A_5998                             ; $59C6: $28 $D0

    ldh a, [rP1]                                  ; $59C8: $F0 $00
    ld [hl], b                                    ; $59CA: $70
    ldh [$FFB0], a                                ; $59CB: $E0 $B0
    ldh [$FFF8], a                                ; $59CD: $E0 $F8
    ld b, b                                       ; $59CF: $40

jr_01A_59D0:
    sbc $38                                       ; $59D0: $DE $38
    adc a                                         ; $59D2: $8F
    ld a, [hl]                                    ; $59D3: $7E
    cp a                                          ; $59D4: $BF
    ld a, [hl]                                    ; $59D5: $7E
    rst RST_38                                    ; $59D6: $FF
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
    nop                                           ; $59E2: $00
    nop                                           ; $59E3: $00
    nop                                           ; $59E4: $00
    nop                                           ; $59E5: $00
    nop                                           ; $59E6: $00
    nop                                           ; $59E7: $00
    nop                                           ; $59E8: $00
    nop                                           ; $59E9: $00
    nop                                           ; $59EA: $00
    nop                                           ; $59EB: $00
    nop                                           ; $59EC: $00
    nop                                           ; $59ED: $00
    nop                                           ; $59EE: $00
    nop                                           ; $59EF: $00
    nop                                           ; $59F0: $00
    nop                                           ; $59F1: $00
    nop                                           ; $59F2: $00
    nop                                           ; $59F3: $00
    nop                                           ; $59F4: $00
    nop                                           ; $59F5: $00
    ld bc, $0300                                  ; $59F6: $01 $00 $03
    ld bc, $0307                                  ; $59F9: $01 $07 $03
    rlca                                          ; $59FC: $07
    ld [bc], a                                    ; $59FD: $02
    rrca                                          ; $59FE: $0F
    ld b, $7D                                     ; $59FF: $06 $7D
    ccf                                           ; $5A01: $3F
    db $FD                                        ; $5A02: $FD
    ld a, a                                       ; $5A03: $7F
    jp hl                                         ; $5A04: $E9


    ld a, a                                       ; $5A05: $7F
    add sp, $7F                                   ; $5A06: $E8 $7F
    ret z                                         ; $5A08: $C8

    ld a, a                                       ; $5A09: $7F
    ret nz                                        ; $5A0A: $C0

    ld a, a                                       ; $5A0B: $7F
    ret nz                                        ; $5A0C: $C0

    ld a, a                                       ; $5A0D: $7F
    add b                                         ; $5A0E: $80
    ld a, a                                       ; $5A0F: $7F
    add b                                         ; $5A10: $80
    ld a, a                                       ; $5A11: $7F
    ld b, b                                       ; $5A12: $40
    ccf                                           ; $5A13: $3F
    ld b, b                                       ; $5A14: $40
    ccf                                           ; $5A15: $3F
    jr nz, jr_01A_5A37                            ; $5A16: $20 $1F

    db $10                                        ; $5A18: $10
    rrca                                          ; $5A19: $0F
    ld [$0607], sp                                ; $5A1A: $08 $07 $06
    ld bc, $0001                                  ; $5A1D: $01 $01 $00
    sbc b                                         ; $5A20: $98
    nop                                           ; $5A21: $00
    ld hl, sp-$70                                 ; $5A22: $F8 $90
    ldh a, [$FF60]                                ; $5A24: $F0 $60
    ldh [$FFC0], a                                ; $5A26: $E0 $C0
    rst RST_38                                    ; $5A28: $FF
    ret nz                                        ; $5A29: $C0

    ld sp, hl                                     ; $5A2A: $F9
    cp a                                          ; $5A2B: $BF
    cp $BF                                        ; $5A2C: $FE $BF
    rst RST_38                                    ; $5A2E: $FF
    ccf                                           ; $5A2F: $3F
    rst RST_38                                    ; $5A30: $FF
    ccf                                           ; $5A31: $3F
    rst RST_38                                    ; $5A32: $FF
    ccf                                           ; $5A33: $3F
    ld a, a                                       ; $5A34: $7F
    cp a                                          ; $5A35: $BF
    ccf                                           ; $5A36: $3F

jr_01A_5A37:
    ret nz                                        ; $5A37: $C0

    rrca                                          ; $5A38: $0F
    ldh a, [rP1]                                  ; $5A39: $F0 $00
    rst RST_38                                    ; $5A3B: $FF
    nop                                           ; $5A3C: $00
    rst RST_38                                    ; $5A3D: $FF
    nop                                           ; $5A3E: $00
    rst RST_38                                    ; $5A3F: $FF
    nop                                           ; $5A40: $00
    nop                                           ; $5A41: $00
    ld [bc], a                                    ; $5A42: $02
    nop                                           ; $5A43: $00
    dec b                                         ; $5A44: $05
    ld [bc], a                                    ; $5A45: $02

jr_01A_5A46:
    db $FD                                        ; $5A46: $FD
    ld [bc], a                                    ; $5A47: $02
    xor [hl]                                      ; $5A48: $AE
    ld sp, hl                                     ; $5A49: $F9
    ld e, [hl]                                    ; $5A4A: $5E
    pop hl                                        ; $5A4B: $E1
    rst RST_38                                    ; $5A4C: $FF
    call c, $BDFE                                 ; $5A4D: $DC $FE $BD
    rst RST_38                                    ; $5A50: $FF
    cp e                                          ; $5A51: $BB
    rst RST_38                                    ; $5A52: $FF
    cp c                                          ; $5A53: $B9
    db $FD                                        ; $5A54: $FD
    cp d                                          ; $5A55: $BA
    db $FC                                        ; $5A56: $FC
    dec sp                                        ; $5A57: $3B
    rst RST_38                                    ; $5A58: $FF
    nop                                           ; $5A59: $00
    nop                                           ; $5A5A: $00
    rst RST_38                                    ; $5A5B: $FF
    ld bc, $00FF                                  ; $5A5C: $01 $FF $00
    rst RST_38                                    ; $5A5F: $FF
    ret nz                                        ; $5A60: $C0

    nop                                           ; $5A61: $00
    and b                                         ; $5A62: $A0
    ld b, b                                       ; $5A63: $40
    ld d, c                                       ; $5A64: $51
    and b                                         ; $5A65: $A0
    xor [hl]                                      ; $5A66: $AE
    ld d, c                                       ; $5A67: $51
    ld hl, sp+$07                                 ; $5A68: $F8 $07
    ret c                                         ; $5A6A: $D8

    ld h, a                                       ; $5A6B: $67
    push de                                       ; $5A6C: $D5
    ld l, d                                       ; $5A6D: $6A
    ld l, d                                       ; $5A6E: $6A
    or h                                          ; $5A6F: $B4
    ld l, a                                       ; $5A70: $6F
    or b                                          ; $5A71: $B0
    cp a                                          ; $5A72: $BF
    ret nz                                        ; $5A73: $C0

    pop hl                                        ; $5A74: $E1
    ld e, [hl]                                    ; $5A75: $5E
    ld a, a                                       ; $5A76: $7F
    sub c                                         ; $5A77: $91
    rst RST_38                                    ; $5A78: $FF
    rrca                                          ; $5A79: $0F
    ld a, a                                       ; $5A7A: $7F
    cp $FF                                        ; $5A7B: $FE $FF
    rst RST_38                                    ; $5A7D: $FF
    rlca                                          ; $5A7E: $07
    rst RST_38                                    ; $5A7F: $FF
    ld h, b                                       ; $5A80: $60
    nop                                           ; $5A81: $00
    and b                                         ; $5A82: $A0
    ld b, b                                       ; $5A83: $40
    jr nz, jr_01A_5A46                            ; $5A84: $20 $C0

    ld b, b                                       ; $5A86: $40
    add b                                         ; $5A87: $80
    ld b, b                                       ; $5A88: $40
    add b                                         ; $5A89: $80
    add b                                         ; $5A8A: $80
    nop                                           ; $5A8B: $00
    nop                                           ; $5A8C: $00
    nop                                           ; $5A8D: $00
    nop                                           ; $5A8E: $00
    nop                                           ; $5A8F: $00
    ld a, [hl]                                    ; $5A90: $7E
    nop                                           ; $5A91: $00
    ldh a, [c]                                    ; $5A92: $F2
    inc c                                         ; $5A93: $0C
    db $FC                                        ; $5A94: $FC
    ld h, b                                       ; $5A95: $60
    xor $C0                                       ; $5A96: $EE $C0
    cp $8C                                        ; $5A98: $FE $8C
    db $FC                                        ; $5A9A: $FC
    ld a, b                                       ; $5A9B: $78
    cp $E0                                        ; $5A9C: $FE $E0
    rst RST_38                                    ; $5A9E: $FF
    add [hl]                                      ; $5A9F: $86
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
    ld b, $00                                     ; $5AB4: $06 $00
    rrca                                          ; $5AB6: $0F
    inc b                                         ; $5AB7: $04
    rra                                           ; $5AB8: $1F
    add hl, bc                                    ; $5AB9: $09
    ccf                                           ; $5ABA: $3F
    rra                                           ; $5ABB: $1F
    ccf                                           ; $5ABC: $3F
    rra                                           ; $5ABD: $1F
    ld a, a                                       ; $5ABE: $7F
    ccf                                           ; $5ABF: $3F
    nop                                           ; $5AC0: $00
    rst RST_38                                    ; $5AC1: $FF
    nop                                           ; $5AC2: $00
    rst RST_38                                    ; $5AC3: $FF
    nop                                           ; $5AC4: $00
    rst RST_38                                    ; $5AC5: $FF
    nop                                           ; $5AC6: $00
    rst RST_38                                    ; $5AC7: $FF
    nop                                           ; $5AC8: $00
    rst RST_38                                    ; $5AC9: $FF
    ret nz                                        ; $5ACA: $C0

    ccf                                           ; $5ACB: $3F
    inc a                                         ; $5ACC: $3C
    inc bc                                        ; $5ACD: $03
    inc bc                                        ; $5ACE: $03
    nop                                           ; $5ACF: $00
    nop                                           ; $5AD0: $00
    nop                                           ; $5AD1: $00
    nop                                           ; $5AD2: $00
    nop                                           ; $5AD3: $00
    inc bc                                        ; $5AD4: $03
    nop                                           ; $5AD5: $00
    inc c                                         ; $5AD6: $0C
    inc bc                                        ; $5AD7: $03
    ld de, $1F0F                                  ; $5AD8: $11 $0F $1F
    nop                                           ; $5ADB: $00
    nop                                           ; $5ADC: $00
    nop                                           ; $5ADD: $00
    nop                                           ; $5ADE: $00
    nop                                           ; $5ADF: $00
    nop                                           ; $5AE0: $00
    rst RST_38                                    ; $5AE1: $FF
    nop                                           ; $5AE2: $00
    rst RST_38                                    ; $5AE3: $FF
    ld bc, $00FF                                  ; $5AE4: $01 $FF $00
    rst RST_38                                    ; $5AE7: $FF
    nop                                           ; $5AE8: $00
    rst RST_38                                    ; $5AE9: $FF
    nop                                           ; $5AEA: $00
    rst RST_38                                    ; $5AEB: $FF
    nop                                           ; $5AEC: $00
    rst RST_38                                    ; $5AED: $FF
    rst RST_38                                    ; $5AEE: $FF
    nop                                           ; $5AEF: $00
    ld a, h                                       ; $5AF0: $7C

jr_01A_5AF1:
    jr c, jr_01A_5AF1                             ; $5AF1: $38 $FE

jr_01A_5AF3:
    jr nc, jr_01A_5AF3                            ; $5AF3: $30 $FE

    call nz, $F8FC                                ; $5AF5: $C4 $FC $F8
    db $FC                                        ; $5AF8: $FC
    ld hl, sp-$08                                 ; $5AF9: $F8 $F8
    nop                                           ; $5AFB: $00
    nop                                           ; $5AFC: $00
    nop                                           ; $5AFD: $00
    nop                                           ; $5AFE: $00
    nop                                           ; $5AFF: $00
    rra                                           ; $5B00: $1F
    rst RST_38                                    ; $5B01: $FF
    ld a, a                                       ; $5B02: $7F
    rst RST_38                                    ; $5B03: $FF
    db $FC                                        ; $5B04: $FC
    rst RST_38                                    ; $5B05: $FF
    inc bc                                        ; $5B06: $03
    rst RST_38                                    ; $5B07: $FF
    rrca                                          ; $5B08: $0F
    rst RST_38                                    ; $5B09: $FF
    ld a, a                                       ; $5B0A: $7F
    ld hl, sp-$05                                 ; $5B0B: $F8 $FB
    dec b                                         ; $5B0D: $05
    ld b, a                                       ; $5B0E: $47
    dec sp                                        ; $5B0F: $3B
    cpl                                           ; $5B10: $2F
    rla                                           ; $5B11: $17
    rra                                           ; $5B12: $1F
    rlca                                          ; $5B13: $07
    rlca                                          ; $5B14: $07
    nop                                           ; $5B15: $00
    ld [bc], a                                    ; $5B16: $02
    ld bc, $0001                                  ; $5B17: $01 $01 $00
    nop                                           ; $5B1A: $00
    nop                                           ; $5B1B: $00
    nop                                           ; $5B1C: $00
    nop                                           ; $5B1D: $00
    nop                                           ; $5B1E: $00
    nop                                           ; $5B1F: $00
    cp $1C                                        ; $5B20: $FE $1C
    db $FC                                        ; $5B22: $FC
    ld hl, sp-$08                                 ; $5B23: $F8 $F8
    ldh a, [$FFF0]                                ; $5B25: $F0 $F0
    ret nz                                        ; $5B27: $C0

    ret nz                                        ; $5B28: $C0

    nop                                           ; $5B29: $00
    ldh [$FFC0], a                                ; $5B2A: $E0 $C0
    or $E0                                        ; $5B2C: $F6 $E0
    rst RST_38                                    ; $5B2E: $FF
    jp nc, $B8FF                                  ; $5B2F: $D2 $FF $B8

    rst RST_38                                    ; $5B32: $FF
    cp l                                          ; $5B33: $BD
    rst RST_38                                    ; $5B34: $FF
    dec a                                         ; $5B35: $3D
    rst RST_38                                    ; $5B36: $FF
    inc bc                                        ; $5B37: $03
    add e                                         ; $5B38: $83
    ld bc, $0001                                  ; $5B39: $01 $01 $00
    inc bc                                        ; $5B3C: $03
    ld bc, $0003                                  ; $5B3D: $01 $03 $00
    ret nz                                        ; $5B40: $C0

    nop                                           ; $5B41: $00
    ldh [rP1], a                                  ; $5B42: $E0 $00
    ldh [rP1], a                                  ; $5B44: $E0 $00
    ldh [rP1], a                                  ; $5B46: $E0 $00
    ldh [rP1], a                                  ; $5B48: $E0 $00
    ldh a, [$FF80]                                ; $5B4A: $F0 $80
    ldh a, [$FF80]                                ; $5B4C: $F0 $80
    ldh a, [$FF80]                                ; $5B4E: $F0 $80
    ldh [rP1], a                                  ; $5B50: $E0 $00
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
    nop                                           ; $5B60: $00
    nop                                           ; $5B61: $00
    nop                                           ; $5B62: $00
    nop                                           ; $5B63: $00
    nop                                           ; $5B64: $00
    nop                                           ; $5B65: $00
    nop                                           ; $5B66: $00
    nop                                           ; $5B67: $00
    nop                                           ; $5B68: $00
    nop                                           ; $5B69: $00
    nop                                           ; $5B6A: $00
    nop                                           ; $5B6B: $00
    nop                                           ; $5B6C: $00
    nop                                           ; $5B6D: $00
    nop                                           ; $5B6E: $00
    nop                                           ; $5B6F: $00
    ld bc, $0600                                  ; $5B70: $01 $00 $06
    ld bc, $0708                                  ; $5B73: $01 $08 $07
    db $10                                        ; $5B76: $10
    rrca                                          ; $5B77: $0F
    inc hl                                        ; $5B78: $23
    inc e                                         ; $5B79: $1C
    ld c, [hl]                                    ; $5B7A: $4E
    ld sp, $42B5                                  ; $5B7B: $31 $B5 $42
    add $00                                       ; $5B7E: $C6 $00
    nop                                           ; $5B80: $00
    nop                                           ; $5B81: $00
    nop                                           ; $5B82: $00
    nop                                           ; $5B83: $00
    nop                                           ; $5B84: $00
    nop                                           ; $5B85: $00
    nop                                           ; $5B86: $00
    nop                                           ; $5B87: $00
    nop                                           ; $5B88: $00
    nop                                           ; $5B89: $00
    rrca                                          ; $5B8A: $0F
    nop                                           ; $5B8B: $00
    ld a, a                                       ; $5B8C: $7F
    rrca                                          ; $5B8D: $0F
    add b                                         ; $5B8E: $80
    ld a, a                                       ; $5B8F: $7F
    nop                                           ; $5B90: $00
    rst RST_38                                    ; $5B91: $FF
    nop                                           ; $5B92: $00
    rst RST_38                                    ; $5B93: $FF
    nop                                           ; $5B94: $00
    rst RST_38                                    ; $5B95: $FF
    jr @-$17                                      ; $5B96: $18 $E7

    ld [hl], c                                    ; $5B98: $71
    adc [hl]                                      ; $5B99: $8E
    and [hl]                                      ; $5B9A: $A6
    jr jr_01A_5BF5                                ; $5B9B: $18 $58

    jr nz, @+$62                                  ; $5B9D: $20 $60

    nop                                           ; $5B9F: $00
    rst RST_38                                    ; $5BA0: $FF
    nop                                           ; $5BA1: $00
    rst RST_38                                    ; $5BA2: $FF
    ld sp, hl                                     ; $5BA3: $F9
    dec a                                         ; $5BA4: $3D
    ld a, [$FAFD]                                 ; $5BA5: $FA $FD $FA
    ld [bc], a                                    ; $5BA8: $02
    db $FD                                        ; $5BA9: $FD
    ld e, $E1                                     ; $5BAA: $1E $E1
    ccf                                           ; $5BAC: $3F
    call c, Call_000_3DFE                         ; $5BAD: $DC $FE $3D
    rst RST_38                                    ; $5BB0: $FF
    dec sp                                        ; $5BB1: $3B
    rst RST_38                                    ; $5BB2: $FF
    add hl, sp                                    ; $5BB3: $39
    db $FD                                        ; $5BB4: $FD
    ld a, [hl-]                                   ; $5BB5: $3A
    ld a, h                                       ; $5BB6: $7C
    dec sp                                        ; $5BB7: $3B
    ld a, a                                       ; $5BB8: $7F
    scf                                           ; $5BB9: $37
    ld a, a                                       ; $5BBA: $7F
    daa                                           ; $5BBB: $27
    ccf                                           ; $5BBC: $3F
    rrca                                          ; $5BBD: $0F
    ccf                                           ; $5BBE: $3F
    ld bc, $00C0                                  ; $5BBF: $01 $C0 $00
    cp h                                          ; $5BC2: $BC
    ld b, b                                       ; $5BC3: $40
    ld e, a                                       ; $5BC4: $5F
    xor h                                         ; $5BC5: $AC
    xor [hl]                                      ; $5BC6: $AE
    ld d, c                                       ; $5BC7: $51
    ld hl, sp+$07                                 ; $5BC8: $F8 $07
    ret c                                         ; $5BCA: $D8

    ld h, a                                       ; $5BCB: $67
    push de                                       ; $5BCC: $D5
    ld l, d                                       ; $5BCD: $6A
    ld l, e                                       ; $5BCE: $6B
    or l                                          ; $5BCF: $B5
    ld l, a                                       ; $5BD0: $6F
    or [hl]                                       ; $5BD1: $B6
    cp a                                          ; $5BD2: $BF
    ret nz                                        ; $5BD3: $C0

    ldh [$FF5F], a                                ; $5BD4: $E0 $5F
    ld a, a                                       ; $5BD6: $7F
    sbc a                                         ; $5BD7: $9F
    ccf                                           ; $5BD8: $3F
    ret nz                                        ; $5BD9: $C0

    rst RST_38                                    ; $5BDA: $FF
    db $E4                                        ; $5BDB: $E4
    dec a                                         ; $5BDC: $3D
    or $9F                                        ; $5BDD: $F6 $9F
    ld sp, hl                                     ; $5BDF: $F9
    ld h, b                                       ; $5BE0: $60
    nop                                           ; $5BE1: $00
    and b                                         ; $5BE2: $A0
    ld b, b                                       ; $5BE3: $40
    jr nz, @-$3E                                  ; $5BE4: $20 $C0

    ld b, b                                       ; $5BE6: $40
    add b                                         ; $5BE7: $80
    ld b, b                                       ; $5BE8: $40
    add b                                         ; $5BE9: $80
    ldh a, [rLCDC]                                ; $5BEA: $F0 $40
    db $FC                                        ; $5BEC: $FC
    ldh a, [$FFFE]                                ; $5BED: $F0 $FE
    db $FC                                        ; $5BEF: $FC
    rst RST_38                                    ; $5BF0: $FF
    add d                                         ; $5BF1: $82
    add e                                         ; $5BF2: $83
    ld a, h                                       ; $5BF3: $7C
    inc e                                         ; $5BF4: $1C

jr_01A_5BF5:
    ldh [$FFE0], a                                ; $5BF5: $E0 $E0
    nop                                           ; $5BF7: $00
    add b                                         ; $5BF8: $80
    nop                                           ; $5BF9: $00
    nop                                           ; $5BFA: $00
    nop                                           ; $5BFB: $00
    add [hl]                                      ; $5BFC: $86
    nop                                           ; $5BFD: $00
    ld a, [$0784]                                 ; $5BFE: $FA $84 $07
    nop                                           ; $5C01: $00
    ld a, [bc]                                    ; $5C02: $0A
    dec b                                         ; $5C03: $05
    ld d, $0D                                     ; $5C04: $16 $0D
    ld d, $0D                                     ; $5C06: $16 $0D
    rra                                           ; $5C08: $1F
    ld c, $2F                                     ; $5C09: $0E $2F
    rla                                           ; $5C0B: $17
    ccf                                           ; $5C0C: $3F
    nop                                           ; $5C0D: $00
    rlca                                          ; $5C0E: $07
    inc bc                                        ; $5C0F: $03
    inc bc                                        ; $5C10: $03
    ld bc, $0107                                  ; $5C11: $01 $07 $01
    rra                                           ; $5C14: $1F
    ld b, $67                                     ; $5C15: $06 $67
    rra                                           ; $5C17: $1F
    adc a                                         ; $5C18: $8F
    ld a, a                                       ; $5C19: $7F
    rst RST_38                                    ; $5C1A: $FF
    nop                                           ; $5C1B: $00
    nop                                           ; $5C1C: $00
    nop                                           ; $5C1D: $00
    nop                                           ; $5C1E: $00
    nop                                           ; $5C1F: $00
    rst RST_38                                    ; $5C20: $FF
    ld l, a                                       ; $5C21: $6F

jr_01A_5C22:
    ld a, a                                       ; $5C22: $7F
    sbc a                                         ; $5C23: $9F

jr_01A_5C24:
    ccf                                           ; $5C24: $3F
    call c, $C33F                                 ; $5C25: $DC $3F $C3
    dec bc                                        ; $5C28: $0B
    db $F4                                        ; $5C29: $F4
    ld hl, sp+$07                                 ; $5C2A: $F8 $07
    call nz, $C203                                ; $5C2C: $C4 $03 $C2
    add c                                         ; $5C2F: $81
    pop hl                                        ; $5C30: $E1
    ret nz                                        ; $5C31: $C0

    ldh a, [$FF80]                                ; $5C32: $F0 $80
    ldh a, [rNR41]                                ; $5C34: $F0 $20
    ldh [$FFC0], a                                ; $5C36: $E0 $C0
    ldh [$FFC0], a                                ; $5C38: $E0 $C0
    ret nz                                        ; $5C3A: $C0

    nop                                           ; $5C3B: $00
    nop                                           ; $5C3C: $00
    nop                                           ; $5C3D: $00
    nop                                           ; $5C3E: $00
    nop                                           ; $5C3F: $00
    rst RST_38                                    ; $5C40: $FF
    cp $FF                                        ; $5C41: $FE $FF
    ldh a, [c]                                    ; $5C43: $F2
    rst RST_38                                    ; $5C44: $FF
    ld a, [hl-]                                   ; $5C45: $3A
    rst RST_38                                    ; $5C46: $FF
    adc $FE                                       ; $5C47: $CE $FE
    db $F4                                        ; $5C49: $F4
    rst RST_38                                    ; $5C4A: $FF
    ld [bc], a                                    ; $5C4B: $02
    rra                                           ; $5C4C: $1F
    rst RST_28                                    ; $5C4D: $EF
    ccf                                           ; $5C4E: $3F
    sbc $7F                                       ; $5C4F: $DE $7F
    cp l                                          ; $5C51: $BD
    rst RST_38                                    ; $5C52: $FF
    dec a                                         ; $5C53: $3D
    ccf                                           ; $5C54: $3F
    ld bc, $0817                                  ; $5C55: $01 $17 $08
    inc c                                         ; $5C58: $0C
    nop                                           ; $5C59: $00
    nop                                           ; $5C5A: $00
    nop                                           ; $5C5B: $00
    nop                                           ; $5C5C: $00
    nop                                           ; $5C5D: $00
    nop                                           ; $5C5E: $00
    nop                                           ; $5C5F: $00
    jr nz, jr_01A_5C22                            ; $5C60: $20 $C0

    jr nz, jr_01A_5C24                            ; $5C62: $20 $C0

    ld b, b                                       ; $5C64: $40
    add b                                         ; $5C65: $80
    add b                                         ; $5C66: $80
    nop                                           ; $5C67: $00
    nop                                           ; $5C68: $00
    nop                                           ; $5C69: $00
    nop                                           ; $5C6A: $00
    nop                                           ; $5C6B: $00
    or b                                          ; $5C6C: $B0
    nop                                           ; $5C6D: $00
    cp $90                                        ; $5C6E: $FE $90
    rst RST_38                                    ; $5C70: $FF
    ret nz                                        ; $5C71: $C0

    rst RST_38                                    ; $5C72: $FF
    add sp, -$01                                  ; $5C73: $E8 $FF
    add sp, -$01                                  ; $5C75: $E8 $FF
    jr jr_01A_5C98                                ; $5C77: $18 $1F

    inc c                                         ; $5C79: $0C
    rrca                                          ; $5C7A: $0F
    inc b                                         ; $5C7B: $04
    rra                                           ; $5C7C: $1F
    inc c                                         ; $5C7D: $0C
    rra                                           ; $5C7E: $1F
    nop                                           ; $5C7F: $00
    add b                                         ; $5C80: $80
    nop                                           ; $5C81: $00
    add b                                         ; $5C82: $80
    nop                                           ; $5C83: $00
    add b                                         ; $5C84: $80
    nop                                           ; $5C85: $00
    nop                                           ; $5C86: $00
    nop                                           ; $5C87: $00
    nop                                           ; $5C88: $00
    nop                                           ; $5C89: $00
    nop                                           ; $5C8A: $00
    nop                                           ; $5C8B: $00
    nop                                           ; $5C8C: $00
    nop                                           ; $5C8D: $00
    nop                                           ; $5C8E: $00
    nop                                           ; $5C8F: $00
    nop                                           ; $5C90: $00
    nop                                           ; $5C91: $00
    nop                                           ; $5C92: $00
    nop                                           ; $5C93: $00
    nop                                           ; $5C94: $00
    nop                                           ; $5C95: $00
    nop                                           ; $5C96: $00
    nop                                           ; $5C97: $00

jr_01A_5C98:
    nop                                           ; $5C98: $00
    nop                                           ; $5C99: $00
    nop                                           ; $5C9A: $00
    nop                                           ; $5C9B: $00
    nop                                           ; $5C9C: $00
    nop                                           ; $5C9D: $00
    nop                                           ; $5C9E: $00
    nop                                           ; $5C9F: $00
    nop                                           ; $5CA0: $00
    nop                                           ; $5CA1: $00
    ld [bc], a                                    ; $5CA2: $02
    nop                                           ; $5CA3: $00
    dec b                                         ; $5CA4: $05
    ld [bc], a                                    ; $5CA5: $02

jr_01A_5CA6:
    dec e                                         ; $5CA6: $1D
    ld [bc], a                                    ; $5CA7: $02
    ld a, $1D                                     ; $5CA8: $3E $1D
    ld a, [hl]                                    ; $5CAA: $7E
    ld hl, $5CFF                                  ; $5CAB: $21 $FF $5C
    cp $3D                                        ; $5CAE: $FE $3D
    rst RST_38                                    ; $5CB0: $FF
    dec sp                                        ; $5CB1: $3B
    rst RST_38                                    ; $5CB2: $FF
    add hl, sp                                    ; $5CB3: $39
    db $FD                                        ; $5CB4: $FD
    ld a, [hl-]                                   ; $5CB5: $3A
    ld a, h                                       ; $5CB6: $7C
    dec sp                                        ; $5CB7: $3B
    ld a, a                                       ; $5CB8: $7F
    scf                                           ; $5CB9: $37
    ld a, a                                       ; $5CBA: $7F
    daa                                           ; $5CBB: $27
    ccf                                           ; $5CBC: $3F
    rrca                                          ; $5CBD: $0F
    ccf                                           ; $5CBE: $3F
    ld bc, $00C0                                  ; $5CBF: $01 $C0 $00
    and b                                         ; $5CC2: $A0
    ld b, b                                       ; $5CC3: $40
    ld d, c                                       ; $5CC4: $51
    and b                                         ; $5CC5: $A0
    xor [hl]                                      ; $5CC6: $AE
    ld d, c                                       ; $5CC7: $51
    ld hl, sp+$07                                 ; $5CC8: $F8 $07
    ret c                                         ; $5CCA: $D8

    ld h, a                                       ; $5CCB: $67
    push de                                       ; $5CCC: $D5
    ld l, d                                       ; $5CCD: $6A
    ld l, d                                       ; $5CCE: $6A
    or l                                          ; $5CCF: $B5
    ld l, a                                       ; $5CD0: $6F
    or b                                          ; $5CD1: $B0
    cp a                                          ; $5CD2: $BF
    ret nz                                        ; $5CD3: $C0

    ldh [$FF5F], a                                ; $5CD4: $E0 $5F
    ld a, a                                       ; $5CD6: $7F
    sbc a                                         ; $5CD7: $9F
    ccf                                           ; $5CD8: $3F
    ret nz                                        ; $5CD9: $C0

    rst RST_38                                    ; $5CDA: $FF
    db $E4                                        ; $5CDB: $E4
    dec a                                         ; $5CDC: $3D
    or $9F                                        ; $5CDD: $F6 $9F
    ld sp, hl                                     ; $5CDF: $F9
    ld h, b                                       ; $5CE0: $60
    nop                                           ; $5CE1: $00
    and b                                         ; $5CE2: $A0
    ld b, b                                       ; $5CE3: $40
    jr nz, jr_01A_5CA6                            ; $5CE4: $20 $C0

    ld b, b                                       ; $5CE6: $40
    add b                                         ; $5CE7: $80
    ld [hl], b                                    ; $5CE8: $70
    add b                                         ; $5CE9: $80
    adc b                                         ; $5CEA: $88
    ld [hl], b                                    ; $5CEB: $70
    ld l, b                                       ; $5CEC: $68
    sub b                                         ; $5CED: $90
    ld l, b                                       ; $5CEE: $68
    sub b                                         ; $5CEF: $90
    ld a, [hl]                                    ; $5CF0: $7E
    add b                                         ; $5CF1: $80
    add d                                         ; $5CF2: $82
    ld a, h                                       ; $5CF3: $7C
    inc e                                         ; $5CF4: $1C
    ldh [$FFE0], a                                ; $5CF5: $E0 $E0
    nop                                           ; $5CF7: $00
    add b                                         ; $5CF8: $80
    nop                                           ; $5CF9: $00
    nop                                           ; $5CFA: $00
    nop                                           ; $5CFB: $00
    add [hl]                                      ; $5CFC: $86
    nop                                           ; $5CFD: $00
    ld a, [$0F84]                                 ; $5CFE: $FA $84 $0F
    nop                                           ; $5D01: $00
    ld [$0707], sp                                ; $5D02: $08 $07 $07
    nop                                           ; $5D05: $00
    nop                                           ; $5D06: $00
    nop                                           ; $5D07: $00
    nop                                           ; $5D08: $00

jr_01A_5D09:
    nop                                           ; $5D09: $00
    nop                                           ; $5D0A: $00
    nop                                           ; $5D0B: $00
    inc c                                         ; $5D0C: $0C
    nop                                           ; $5D0D: $00
    dec bc                                        ; $5D0E: $0B
    inc b                                         ; $5D0F: $04
    inc b                                         ; $5D10: $04
    inc bc                                        ; $5D11: $03
    inc bc                                        ; $5D12: $03
    nop                                           ; $5D13: $00
    rlca                                          ; $5D14: $07
    inc bc                                        ; $5D15: $03
    rrca                                          ; $5D16: $0F
    inc bc                                        ; $5D17: $03
    rla                                           ; $5D18: $17
    add hl, bc                                    ; $5D19: $09
    add hl, bc                                    ; $5D1A: $09
    ld b, $07                                     ; $5D1B: $06 $07
    nop                                           ; $5D1D: $00
    ld bc, $3000                                  ; $5D1E: $01 $00 $30
    nop                                           ; $5D21: $00
    jr z, @+$12                                   ; $5D22: $28 $10

    dec h                                         ; $5D24: $25
    jr jr_01A_5D3A                                ; $5D25: $18 $13

    inc c                                         ; $5D27: $0C
    ld de, $C90E                                  ; $5D28: $11 $0E $C9
    ld b, $3E                                     ; $5D2B: $06 $3E
    pop bc                                        ; $5D2D: $C1
    inc b                                         ; $5D2E: $04
    ei                                            ; $5D2F: $FB
    rst RST_38                                    ; $5D30: $FF
    jr jr_01A_5D52                                ; $5D31: $18 $1F

    ld bc, $001F                                  ; $5D33: $01 $1F $00
    inc a                                         ; $5D36: $3C
    inc bc                                        ; $5D37: $03
    db $FD                                        ; $5D38: $FD
    ld a, [hl+]                                   ; $5D39: $2A

jr_01A_5D3A:
    rst RST_38                                    ; $5D3A: $FF
    ld l, c                                       ; $5D3B: $69
    rst RST_38                                    ; $5D3C: $FF
    ld [$93FF], sp                                ; $5D3D: $08 $FF $93
    ldh [rP1], a                                  ; $5D40: $E0 $00
    jr c, @-$3E                                   ; $5D42: $38 $C0

    adc $30                                       ; $5D44: $CE $30
    dec c                                         ; $5D46: $0D
    ldh a, [c]                                    ; $5D47: $F2
    ld sp, hl                                     ; $5D48: $F9
    ld b, $06                                     ; $5D49: $06 $06
    ld hl, sp-$19                                 ; $5D4B: $F8 $E7
    jr jr_01A_5D09                                ; $5D4D: $18 $BA

    ld b, l                                       ; $5D4F: $45
    and $9B                                       ; $5D50: $E6 $9B

jr_01A_5D52:
    rst RST_00                                    ; $5D52: $C7
    dec sp                                        ; $5D53: $3B
    ld a, a                                       ; $5D54: $7F
    add e                                         ; $5D55: $83
    rst RST_38                                    ; $5D56: $FF
    ld [hl], e                                    ; $5D57: $73
    ccf                                           ; $5D58: $3F
    ldh a, [rIE]                                  ; $5D59: $F0 $FF
    db $EC                                        ; $5D5B: $EC
    db $FD                                        ; $5D5C: $FD
    ld a, [de]                                    ; $5D5D: $1A
    ld sp, hl                                     ; $5D5E: $F9
    add [hl]                                      ; $5D5F: $86
    nop                                           ; $5D60: $00
    nop                                           ; $5D61: $00
    nop                                           ; $5D62: $00
    nop                                           ; $5D63: $00
    nop                                           ; $5D64: $00
    nop                                           ; $5D65: $00
    ldh a, [rP1]                                  ; $5D66: $F0 $00
    ld [$ACF0], sp                                ; $5D68: $08 $F0 $AC
    ld hl, sp+$56                                 ; $5D6B: $F8 $56
    db $FC                                        ; $5D6D: $FC
    ld [$BF3C], a                                 ; $5D6E: $EA $3C $BF
    ld b, [hl]                                    ; $5D71: $46
    xor a                                         ; $5D72: $AF
    ld d, [hl]                                    ; $5D73: $56
    xor a                                         ; $5D74: $AF
    ld d, d                                       ; $5D75: $52
    ld l, e                                       ; $5D76: $6B
    sub h                                         ; $5D77: $94
    ld a, [de]                                    ; $5D78: $1A
    db $E4                                        ; $5D79: $E4
    push hl                                       ; $5D7A: $E5
    ld a, [de]                                    ; $5D7B: $1A
    sbc l                                         ; $5D7C: $9D
    ld [bc], a                                    ; $5D7D: $02
    inc bc                                        ; $5D7E: $03
    nop                                           ; $5D7F: $00
    inc bc                                        ; $5D80: $03
    ld bc, $0107                                  ; $5D81: $01 $07 $01
    rra                                           ; $5D84: $1F
    ld b, $67                                     ; $5D85: $06 $67
    rra                                           ; $5D87: $1F
    adc a                                         ; $5D88: $8F
    ld a, a                                       ; $5D89: $7F
    rst RST_38                                    ; $5D8A: $FF
    nop                                           ; $5D8B: $00
    nop                                           ; $5D8C: $00
    nop                                           ; $5D8D: $00
    nop                                           ; $5D8E: $00
    nop                                           ; $5D8F: $00
    nop                                           ; $5D90: $00
    nop                                           ; $5D91: $00
    nop                                           ; $5D92: $00
    nop                                           ; $5D93: $00
    nop                                           ; $5D94: $00
    nop                                           ; $5D95: $00
    nop                                           ; $5D96: $00
    nop                                           ; $5D97: $00
    nop                                           ; $5D98: $00
    nop                                           ; $5D99: $00
    nop                                           ; $5D9A: $00
    nop                                           ; $5D9B: $00
    nop                                           ; $5D9C: $00
    nop                                           ; $5D9D: $00
    nop                                           ; $5D9E: $00
    nop                                           ; $5D9F: $00
    rst RST_38                                    ; $5DA0: $FF
    db $E3                                        ; $5DA1: $E3
    rst RST_38                                    ; $5DA2: $FF
    push af                                       ; $5DA3: $F5
    rst RST_38                                    ; $5DA4: $FF
    ldh a, [$FFF6]                                ; $5DA5: $F0 $F6
    add hl, bc                                    ; $5DA7: $09
    ldh a, [c]                                    ; $5DA8: $F2
    db $ED                                        ; $5DA9: $ED
    ei                                            ; $5DAA: $FB
    db $E4                                        ; $5DAB: $E4
    rst RST_30                                    ; $5DAC: $F7
    pop bc                                        ; $5DAD: $C1
    rst RST_30                                    ; $5DAE: $F7
    ld hl, $C0E1                                  ; $5DAF: $21 $E1 $C0
    ldh [$FFC0], a                                ; $5DB2: $E0 $C0
    ret nz                                        ; $5DB4: $C0

    nop                                           ; $5DB5: $00
    nop                                           ; $5DB6: $00
    nop                                           ; $5DB7: $00
    nop                                           ; $5DB8: $00
    nop                                           ; $5DB9: $00
    nop                                           ; $5DBA: $00
    nop                                           ; $5DBB: $00
    nop                                           ; $5DBC: $00
    nop                                           ; $5DBD: $00
    nop                                           ; $5DBE: $00
    nop                                           ; $5DBF: $00
    rst RST_38                                    ; $5DC0: $FF
    ldh a, [rIE]                                  ; $5DC1: $F0 $FF
    ld a, [hl]                                    ; $5DC3: $7E
    cp $7C                                        ; $5DC4: $FE $7C
    ld a, h                                       ; $5DC6: $7C
    add b                                         ; $5DC7: $80
    jp nz, $833C                                  ; $5DC8: $C2 $3C $83

    ld a, h                                       ; $5DCB: $7C
    add a                                         ; $5DCC: $87
    ld a, e                                       ; $5DCD: $7B
    add a                                         ; $5DCE: $87
    ld a, e                                       ; $5DCF: $7B
    rst RST_38                                    ; $5DD0: $FF
    dec b                                         ; $5DD1: $05
    rst RST_38                                    ; $5DD2: $FF
    ld a, l                                       ; $5DD3: $7D
    ld a, a                                       ; $5DD4: $7F
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
    add b                                         ; $5DE0: $80
    nop                                           ; $5DE1: $00
    add b                                         ; $5DE2: $80
    nop                                           ; $5DE3: $00
    ret nz                                        ; $5DE4: $C0

    add b                                         ; $5DE5: $80
    ret nz                                        ; $5DE6: $C0

    add b                                         ; $5DE7: $80
    ret nz                                        ; $5DE8: $C0

    nop                                           ; $5DE9: $00
    nop                                           ; $5DEA: $00
    nop                                           ; $5DEB: $00
    nop                                           ; $5DEC: $00
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
    db $FC                                        ; $5E00: $FC
    nop                                           ; $5E01: $00
    add e                                         ; $5E02: $83
    ld a, h                                       ; $5E03: $7C
    ld [hl], b                                    ; $5E04: $70
    rrca                                          ; $5E05: $0F
    rrca                                          ; $5E06: $0F
    ld bc, $0001                                  ; $5E07: $01 $01 $00
    ld bc, $C300                                  ; $5E0A: $01 $00 $C3
    nop                                           ; $5E0D: $00
    cp a                                          ; $5E0E: $BF
    ld b, e                                       ; $5E0F: $43
    ld c, a                                       ; $5E10: $4F
    scf                                           ; $5E11: $37
    ld c, a                                       ; $5E12: $4F
    inc [hl]                                      ; $5E13: $34
    cpl                                           ; $5E14: $2F
    dec d                                         ; $5E15: $15
    rra                                           ; $5E16: $1F
    rlca                                          ; $5E17: $07
    rlca                                          ; $5E18: $07
    ld [bc], a                                    ; $5E19: $02
    inc bc                                        ; $5E1A: $03
    nop                                           ; $5E1B: $00
    nop                                           ; $5E1C: $00
    nop                                           ; $5E1D: $00
    nop                                           ; $5E1E: $00
    nop                                           ; $5E1F: $00
    rla                                           ; $5E20: $17
    dec c                                         ; $5E21: $0D
    inc l                                         ; $5E22: $2C
    dec de                                        ; $5E23: $1B
    dec l                                         ; $5E24: $2D
    dec de                                        ; $5E25: $1B
    ei                                            ; $5E26: $FB
    rlca                                          ; $5E27: $07
    rrca                                          ; $5E28: $0F
    db $F4                                        ; $5E29: $F4
    db $FC                                        ; $5E2A: $FC
    di                                            ; $5E2B: $F3
    ld sp, hl                                     ; $5E2C: $F9
    rlca                                          ; $5E2D: $07
    rst RST_38                                    ; $5E2E: $FF
    ld c, a                                       ; $5E2F: $4F
    ld a, c                                       ; $5E30: $79
    rst RST_18                                    ; $5E31: $DF
    di                                            ; $5E32: $F3
    ccf                                           ; $5E33: $3F
    rst RST_38                                    ; $5E34: $FF
    rst RST_38                                    ; $5E35: $FF
    rst RST_38                                    ; $5E36: $FF
    rst RST_38                                    ; $5E37: $FF

Call_01A_5E38:
    rst RST_38                                    ; $5E38: $FF
    jp Jump_000_3CFF                              ; $5E39: $C3 $FF $3C


    db $FC                                        ; $5E3C: $FC
    ldh a, [$FFF0]                                ; $5E3D: $F0 $F0
    nop                                           ; $5E3F: $00
    jr jr_01A_5E42                                ; $5E40: $18 $00

jr_01A_5E42:
    sub h                                         ; $5E42: $94
    ld [$0C92], sp                                ; $5E43: $08 $92 $0C
    ret                                           ; $5E46: $C9


    add [hl]                                      ; $5E47: $86
    ret z                                         ; $5E48: $C8

    rlca                                          ; $5E49: $07
    ld b, h                                       ; $5E4A: $44
    add e                                         ; $5E4B: $83
    ld c, [hl]                                    ; $5E4C: $4E
    add l                                         ; $5E4D: $85
    rst RST_38                                    ; $5E4E: $FF
    add $EF                                       ; $5E4F: $C6 $EF
    rst RST_10                                    ; $5E51: $D7
    rst RST_28                                    ; $5E52: $EF
    rst RST_10                                    ; $5E53: $D7
    rst RST_08                                    ; $5E54: $CF
    scf                                           ; $5E55: $37
    rst RST_38                                    ; $5E56: $FF
    nop                                           ; $5E57: $00
    rst RST_18                                    ; $5E58: $DF
    adc [hl]                                      ; $5E59: $8E

jr_01A_5E5A:
    rst RST_38                                    ; $5E5A: $FF
    adc a                                         ; $5E5B: $8F
    rst RST_18                                    ; $5E5C: $DF
    daa                                           ; $5E5D: $27
    ld h, a                                       ; $5E5E: $67
    dec de                                        ; $5E5F: $1B
    inc c                                         ; $5E60: $0C
    nop                                           ; $5E61: $00
    dec d                                         ; $5E62: $15
    ld [$1D22], sp                                ; $5E63: $08 $22 $1D
    sbc $21                                       ; $5E66: $DE $21
    ld h, c                                       ; $5E68: $61
    sbc [hl]                                      ; $5E69: $9E
    ld b, e                                       ; $5E6A: $43
    cp h                                          ; $5E6B: $BC
    sbc h                                         ; $5E6C: $9C
    ld h, e                                       ; $5E6D: $63
    halt                                          ; $5E6E: $76
    adc c                                         ; $5E6F: $89
    db $FD                                        ; $5E70: $FD
    ld a, [hl-]                                   ; $5E71: $3A
    ei                                            ; $5E72: $FB
    add h                                         ; $5E73: $84
    adc a                                         ; $5E74: $8F
    ld [hl], c                                    ; $5E75: $71
    cp a                                          ; $5E76: $BF
    ld c, h                                       ; $5E77: $4C
    rst RST_38                                    ; $5E78: $FF
    jr jr_01A_5E5A                                ; $5E79: $18 $DF

    and a                                         ; $5E7B: $A7
    rst RST_38                                    ; $5E7C: $FF
    ret z                                         ; $5E7D: $C8

    db $ED                                        ; $5E7E: $ED
    jp nc, RST_00                                 ; $5E7F: $D2 $00 $00

    ld e, $00                                     ; $5E82: $1E $00
    xor c                                         ; $5E84: $A9
    ld e, $FD                                     ; $5E85: $1E $FD
    ccf                                           ; $5E87: $3F
    cp $7F                                        ; $5E88: $FE $7F
    rst RST_38                                    ; $5E8A: $FF
    ld a, a                                       ; $5E8B: $7F
    rst RST_38                                    ; $5E8C: $FF
    ld a, b                                       ; $5E8D: $78
    ei                                            ; $5E8E: $FB
    ld [hl], h                                    ; $5E8F: $74
    ld a, [$FA75]                                 ; $5E90: $FA $75 $FA
    add l                                         ; $5E93: $85
    ld a, $E1                                     ; $5E94: $3E $E1
    db $FD                                        ; $5E96: $FD

jr_01A_5E97:
    ret z                                         ; $5E97: $C8

    db $FC                                        ; $5E98: $FC
    jr c, jr_01A_5E97                             ; $5E99: $38 $FC

    ret z                                         ; $5E9B: $C8

    ld hl, sp-$10                                 ; $5E9C: $F8 $F0
    ld hl, sp-$10                                 ; $5E9E: $F8 $F0
    nop                                           ; $5EA0: $00
    nop                                           ; $5EA1: $00
    nop                                           ; $5EA2: $00
    nop                                           ; $5EA3: $00
    nop                                           ; $5EA4: $00
    nop                                           ; $5EA5: $00
    ret nz                                        ; $5EA6: $C0

    nop                                           ; $5EA7: $00
    ld [hl], b                                    ; $5EA8: $70
    ret nz                                        ; $5EA9: $C0

    cp h                                          ; $5EAA: $BC
    ldh a, [$FFDF]                                ; $5EAB: $F0 $DF
    db $FC                                        ; $5EAD: $FC
    db $FC                                        ; $5EAE: $FC
    adc e                                         ; $5EAF: $8B
    sbc a                                         ; $5EB0: $9F
    ld h, b                                       ; $5EB1: $60
    and d                                         ; $5EB2: $A2
    ld e, h                                       ; $5EB3: $5C
    cp [hl]                                       ; $5EB4: $BE
    ld b, b                                       ; $5EB5: $40
    ldh [c], a                                    ; $5EB6: $E2
    inc e                                         ; $5EB7: $1C
    call c, $A420                                 ; $5EB8: $DC $20 $A4
    ld e, b                                       ; $5EBB: $58
    ld e, b                                       ; $5EBC: $58
    jr nz, jr_01A_5EEF                            ; $5EBD: $20 $30

    nop                                           ; $5EBF: $00
    rst RST_38                                    ; $5EC0: $FF
    nop                                           ; $5EC1: $00
    rla                                           ; $5EC2: $17
    rrca                                          ; $5EC3: $0F

jr_01A_5EC4:
    dec bc                                        ; $5EC4: $0B
    rlca                                          ; $5EC5: $07
    rlca                                          ; $5EC6: $07
    nop                                           ; $5EC7: $00
    add hl, de                                    ; $5EC8: $19
    rlca                                          ; $5EC9: $07
    inc hl                                        ; $5ECA: $23
    rra                                           ; $5ECB: $1F
    ccf                                           ; $5ECC: $3F
    nop                                           ; $5ECD: $00
    nop                                           ; $5ECE: $00
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
    nop                                           ; $5EDD: $00
    nop                                           ; $5EDE: $00
    nop                                           ; $5EDF: $00
    daa                                           ; $5EE0: $27
    ret c                                         ; $5EE1: $D8

    cp [hl]                                       ; $5EE2: $BE
    ld b, l                                       ; $5EE3: $45
    db $FC                                        ; $5EE4: $FC
    dec de                                        ; $5EE5: $1B
    db $FC                                        ; $5EE6: $FC
    dec de                                        ; $5EE7: $1B
    db $FC                                        ; $5EE8: $FC
    jp $F0FB                                      ; $5EE9: $C3 $FB $F0


    ld hl, sp+$00                                 ; $5EEC: $F8 $00
    nop                                           ; $5EEE: $00

jr_01A_5EEF:
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
    ret nz                                        ; $5F00: $C0

    nop                                           ; $5F01: $00
    jr nz, jr_01A_5EC4                            ; $5F02: $20 $C0

    dec de                                        ; $5F04: $1B
    ldh [rIF], a                                  ; $5F05: $E0 $0F
    pop af                                        ; $5F07: $F1
    rra                                           ; $5F08: $1F
    db $ED                                        ; $5F09: $ED
    ccf                                           ; $5F0A: $3F
    sbc $FF                                       ; $5F0B: $DE $FF
    ld a, $3F                                     ; $5F0D: $3E $3F
    nop                                           ; $5F0F: $00
    nop                                           ; $5F10: $00
    nop                                           ; $5F11: $00
    nop                                           ; $5F12: $00
    nop                                           ; $5F13: $00
    nop                                           ; $5F14: $00
    nop                                           ; $5F15: $00
    nop                                           ; $5F16: $00
    nop                                           ; $5F17: $00
    nop                                           ; $5F18: $00
    nop                                           ; $5F19: $00
    nop                                           ; $5F1A: $00
    nop                                           ; $5F1B: $00
    nop                                           ; $5F1C: $00
    nop                                           ; $5F1D: $00
    nop                                           ; $5F1E: $00
    nop                                           ; $5F1F: $00
    add b                                         ; $5F20: $80
    nop                                           ; $5F21: $00
    ret nz                                        ; $5F22: $C0

    add b                                         ; $5F23: $80
    ret nz                                        ; $5F24: $C0

    add b                                         ; $5F25: $80
    ldh [$FFC0], a                                ; $5F26: $E0 $C0
    ldh [$FFC0], a                                ; $5F28: $E0 $C0
    ldh [rP1], a                                  ; $5F2A: $E0 $00
    nop                                           ; $5F2C: $00
    nop                                           ; $5F2D: $00
    nop                                           ; $5F2E: $00
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
    nop                                           ; $5F39: $00
    nop                                           ; $5F3A: $00
    nop                                           ; $5F3B: $00
    nop                                           ; $5F3C: $00
    nop                                           ; $5F3D: $00
    nop                                           ; $5F3E: $00
    nop                                           ; $5F3F: $00
    nop                                           ; $5F40: $00
    nop                                           ; $5F41: $00
    nop                                           ; $5F42: $00
    nop                                           ; $5F43: $00
    nop                                           ; $5F44: $00
    nop                                           ; $5F45: $00
    nop                                           ; $5F46: $00
    nop                                           ; $5F47: $00
    nop                                           ; $5F48: $00
    nop                                           ; $5F49: $00
    nop                                           ; $5F4A: $00
    nop                                           ; $5F4B: $00
    nop                                           ; $5F4C: $00
    nop                                           ; $5F4D: $00
    nop                                           ; $5F4E: $00
    nop                                           ; $5F4F: $00
    nop                                           ; $5F50: $00
    nop                                           ; $5F51: $00
    nop                                           ; $5F52: $00
    nop                                           ; $5F53: $00
    nop                                           ; $5F54: $00
    nop                                           ; $5F55: $00
    nop                                           ; $5F56: $00
    nop                                           ; $5F57: $00
    nop                                           ; $5F58: $00
    nop                                           ; $5F59: $00
    nop                                           ; $5F5A: $00
    nop                                           ; $5F5B: $00
    ld c, $00                                     ; $5F5C: $0E $00
    inc de                                        ; $5F5E: $13
    inc c                                         ; $5F5F: $0C
    nop                                           ; $5F60: $00
    nop                                           ; $5F61: $00
    nop                                           ; $5F62: $00
    nop                                           ; $5F63: $00
    nop                                           ; $5F64: $00
    nop                                           ; $5F65: $00
    nop                                           ; $5F66: $00
    nop                                           ; $5F67: $00
    nop                                           ; $5F68: $00
    nop                                           ; $5F69: $00
    nop                                           ; $5F6A: $00
    nop                                           ; $5F6B: $00
    nop                                           ; $5F6C: $00
    nop                                           ; $5F6D: $00
    nop                                           ; $5F6E: $00
    nop                                           ; $5F6F: $00
    nop                                           ; $5F70: $00
    nop                                           ; $5F71: $00
    nop                                           ; $5F72: $00
    nop                                           ; $5F73: $00
    nop                                           ; $5F74: $00
    nop                                           ; $5F75: $00
    nop                                           ; $5F76: $00
    nop                                           ; $5F77: $00
    nop                                           ; $5F78: $00
    nop                                           ; $5F79: $00
    nop                                           ; $5F7A: $00
    nop                                           ; $5F7B: $00
    add b                                         ; $5F7C: $80
    nop                                           ; $5F7D: $00
    add b                                         ; $5F7E: $80
    nop                                           ; $5F7F: $00
    nop                                           ; $5F80: $00
    nop                                           ; $5F81: $00
    inc bc                                        ; $5F82: $03
    nop                                           ; $5F83: $00
    rrca                                          ; $5F84: $0F
    inc bc                                        ; $5F85: $03
    rra                                           ; $5F86: $1F
    rrca                                          ; $5F87: $0F
    inc hl                                        ; $5F88: $23
    rra                                           ; $5F89: $1F
    cpl                                           ; $5F8A: $2F
    rra                                           ; $5F8B: $1F
    ccf                                           ; $5F8C: $3F
    nop                                           ; $5F8D: $00
    nop                                           ; $5F8E: $00
    nop                                           ; $5F8F: $00
    nop                                           ; $5F90: $00
    nop                                           ; $5F91: $00
    nop                                           ; $5F92: $00
    nop                                           ; $5F93: $00
    nop                                           ; $5F94: $00
    nop                                           ; $5F95: $00
    nop                                           ; $5F96: $00
    nop                                           ; $5F97: $00
    nop                                           ; $5F98: $00
    nop                                           ; $5F99: $00
    nop                                           ; $5F9A: $00
    nop                                           ; $5F9B: $00
    nop                                           ; $5F9C: $00
    nop                                           ; $5F9D: $00
    nop                                           ; $5F9E: $00
    nop                                           ; $5F9F: $00
    rrca                                          ; $5FA0: $0F
    nop                                           ; $5FA1: $00
    inc de                                        ; $5FA2: $13
    dec c                                         ; $5FA3: $0D
    ccf                                           ; $5FA4: $3F
    inc bc                                        ; $5FA5: $03
    db $D3                                        ; $5FA6: $D3
    dec l                                         ; $5FA7: $2D
    cp a                                          ; $5FA8: $BF
    ld h, c                                       ; $5FA9: $61
    ld sp, hl                                     ; $5FAA: $F9
    halt                                          ; $5FAB: $76
    rst RST_38                                    ; $5FAC: $FF
    add b                                         ; $5FAD: $80
    ldh [rP1], a                                  ; $5FAE: $E0 $00
    add b                                         ; $5FB0: $80
    nop                                           ; $5FB1: $00
    nop                                           ; $5FB2: $00
    nop                                           ; $5FB3: $00
    nop                                           ; $5FB4: $00
    nop                                           ; $5FB5: $00
    nop                                           ; $5FB6: $00
    nop                                           ; $5FB7: $00
    nop                                           ; $5FB8: $00
    nop                                           ; $5FB9: $00
    nop                                           ; $5FBA: $00
    nop                                           ; $5FBB: $00
    nop                                           ; $5FBC: $00
    nop                                           ; $5FBD: $00
    nop                                           ; $5FBE: $00
    nop                                           ; $5FBF: $00
    ld a, [bc]                                    ; $5FC0: $0A
    rlca                                          ; $5FC1: $07
    dec de                                        ; $5FC2: $1B
    rrca                                          ; $5FC3: $0F
    rra                                           ; $5FC4: $1F
    add hl, bc                                    ; $5FC5: $09
    dec l                                         ; $5FC6: $2D
    ld a, [de]                                    ; $5FC7: $1A
    dec [hl]                                      ; $5FC8: $35
    ld a, [de]                                    ; $5FC9: $1A
    ld a, c                                       ; $5FCA: $79
    ld b, $B9                                     ; $5FCB: $06 $B9
    ld b, [hl]                                    ; $5FCD: $46
    cp e                                          ; $5FCE: $BB
    ld d, l                                       ; $5FCF: $55
    cp a                                          ; $5FD0: $BF
    ld e, e                                       ; $5FD1: $5B
    cp a                                          ; $5FD2: $BF
    ld e, d                                       ; $5FD3: $5A
    rst RST_18                                    ; $5FD4: $DF
    xor b                                         ; $5FD5: $A8
    rst RST_28                                    ; $5FD6: $EF
    add d                                         ; $5FD7: $82
    rst RST_08                                    ; $5FD8: $CF
    ld bc, $0103                                  ; $5FD9: $01 $03 $01
    ld bc, $0000                                  ; $5FDC: $01 $00 $00
    nop                                           ; $5FDF: $00
    ld l, a                                       ; $5FE0: $6F
    ld sp, hl                                     ; $5FE1: $F9
    ld c, a                                       ; $5FE2: $4F
    db $FD                                        ; $5FE3: $FD
    ld e, a                                       ; $5FE4: $5F
    db $E4                                        ; $5FE5: $E4
    ld l, a                                       ; $5FE6: $6F
    sub $EF                                       ; $5FE7: $D6 $EF
    ld d, $E7                                     ; $5FE9: $16 $E7
    ret c                                         ; $5FEB: $D8

    rst RST_20                                    ; $5FEC: $E7
    reti                                          ; $5FED: $D9


    rst RST_30                                    ; $5FEE: $F7
    ld a, [hl+]                                   ; $5FEF: $2A
    rst RST_38                                    ; $5FF0: $FF
    ld [hl-], a                                   ; $5FF1: $32
    ccf                                           ; $5FF2: $3F
    sub $3F                                       ; $5FF3: $D6 $3F
    push bc                                       ; $5FF5: $C5
    ccf                                           ; $5FF6: $3F
    pop de                                        ; $5FF7: $D1
    rst RST_38                                    ; $5FF8: $FF
    ld l, $FF                                     ; $5FF9: $2E $FF
    cpl                                           ; $5FFB: $2F
    rst RST_38                                    ; $5FFC: $FF
    ret nz                                        ; $5FFD: $C0

    ret nz                                        ; $5FFE: $C0

    nop                                           ; $5FFF: $00
    db $FC                                        ; $6000: $FC
    cp b                                          ; $6001: $B8
    ld hl, sp-$60                                 ; $6002: $F8 $A0
    ld hl, sp+$10                                 ; $6004: $F8 $10
    ldh a, [$FFE0]                                ; $6006: $F0 $E0
    ldh [rP1], a                                  ; $6008: $E0 $00
    db $FC                                        ; $600A: $FC
    add b                                         ; $600B: $80
    add d                                         ; $600C: $82
    ld a, h                                       ; $600D: $7C
    add a                                         ; $600E: $87
    ld a, d                                       ; $600F: $7A
    adc a                                         ; $6010: $8F
    halt                                          ; $6011: $76

jr_01A_6012:
    rst RST_38                                    ; $6012: $FF
    ld c, $FF                                     ; $6013: $0E $FF
    xor $FE                                       ; $6015: $EE $FE
    call c, Call_000_00FE                         ; $6017: $DC $FE $00
    call nc, $D888                                ; $601A: $D4 $88 $D8
    nop                                           ; $601D: $00
    nop                                           ; $601E: $00
    nop                                           ; $601F: $00
    nop                                           ; $6020: $00
    nop                                           ; $6021: $00
    nop                                           ; $6022: $00
    nop                                           ; $6023: $00
    nop                                           ; $6024: $00
    nop                                           ; $6025: $00
    nop                                           ; $6026: $00
    nop                                           ; $6027: $00
    nop                                           ; $6028: $00
    nop                                           ; $6029: $00
    nop                                           ; $602A: $00
    nop                                           ; $602B: $00
    ret nz                                        ; $602C: $C0

    nop                                           ; $602D: $00
    and b                                         ; $602E: $A0
    ld b, b                                       ; $602F: $40
    sub c                                         ; $6030: $91
    ld h, b                                       ; $6031: $60
    ld c, [hl]                                    ; $6032: $4E
    ld sp, $3C43                                  ; $6033: $31 $43 $3C
    ld [hl+], a                                   ; $6036: $22
    dec e                                         ; $6037: $1D
    inc a                                         ; $6038: $3C
    inc bc                                        ; $6039: $03
    ld a, a                                       ; $603A: $7F
    jr c, @+$01                                   ; $603B: $38 $FF

    ld h, c                                       ; $603D: $61
    rst RST_28                                    ; $603E: $EF
    ld e, $00                                     ; $603F: $1E $00
    nop                                           ; $6041: $00
    nop                                           ; $6042: $00
    nop                                           ; $6043: $00
    nop                                           ; $6044: $00
    nop                                           ; $6045: $00
    nop                                           ; $6046: $00
    nop                                           ; $6047: $00
    nop                                           ; $6048: $00
    nop                                           ; $6049: $00
    nop                                           ; $604A: $00
    nop                                           ; $604B: $00
    ld h, e                                       ; $604C: $63
    nop                                           ; $604D: $00
    xor a                                         ; $604E: $AF
    ld b, e                                       ; $604F: $43
    ld d, $EB                                     ; $6050: $16 $EB
    or $0B                                        ; $6052: $F6 $0B
    rrca                                          ; $6054: $0F
    di                                            ; $6055: $F3
    rra                                           ; $6056: $1F
    db $E3                                        ; $6057: $E3
    rst RST_20                                    ; $6058: $E7
    jr jr_01A_6012                                ; $6059: $18 $B7

    ld c, e                                       ; $605B: $4B
    rst RST_28                                    ; $605C: $EF
    db $D3                                        ; $605D: $D3
    call c, Call_000_0027                         ; $605E: $DC $27 $00
    nop                                           ; $6061: $00
    nop                                           ; $6062: $00
    nop                                           ; $6063: $00
    nop                                           ; $6064: $00
    nop                                           ; $6065: $00
    nop                                           ; $6066: $00
    nop                                           ; $6067: $00
    nop                                           ; $6068: $00
    nop                                           ; $6069: $00
    rst RST_38                                    ; $606A: $FF
    nop                                           ; $606B: $00
    rst RST_38                                    ; $606C: $FF
    rst RST_38                                    ; $606D: $FF
    ccf                                           ; $606E: $3F
    rst RST_38                                    ; $606F: $FF
    ld a, a                                       ; $6070: $7F
    ld hl, sp-$03                                 ; $6071: $F8 $FD
    ldh [c], a                                    ; $6073: $E2
    or $E9                                        ; $6074: $F6 $E9
    ld a, [$FBE5]                                 ; $6076: $FA $E5 $FB
    call nz, Call_000_18FE                        ; $6079: $C4 $FE $18
    ld hl, sp-$60                                 ; $607C: $F8 $A0
    ldh [$FF80], a                                ; $607E: $E0 $80
    nop                                           ; $6080: $00

jr_01A_6081:
    nop                                           ; $6081: $00
    nop                                           ; $6082: $00
    nop                                           ; $6083: $00
    nop                                           ; $6084: $00
    nop                                           ; $6085: $00
    nop                                           ; $6086: $00
    nop                                           ; $6087: $00
    nop                                           ; $6088: $00
    nop                                           ; $6089: $00
    add b                                         ; $608A: $80
    nop                                           ; $608B: $00
    ldh a, [$FF80]                                ; $608C: $F0 $80
    ret nc                                        ; $608E: $D0

    jr nz, jr_01A_6081                            ; $608F: $20 $F0

    nop                                           ; $6091: $00
    adc h                                         ; $6092: $8C
    ld [hl], b                                    ; $6093: $70
    add d                                         ; $6094: $82
    ld a, h                                       ; $6095: $7C
    sbc l                                         ; $6096: $9D
    ld h, d                                       ; $6097: $62
    cp e                                          ; $6098: $BB
    ld b, h                                       ; $6099: $44
    xor l                                         ; $609A: $AD
    ld b, d                                       ; $609B: $42
    add $00                                       ; $609C: $C6 $00
    nop                                           ; $609E: $00
    nop                                           ; $609F: $00
    dec de                                        ; $60A0: $1B
    ld b, $37                                     ; $60A1: $06 $37
    ld a, [de]                                    ; $60A3: $1A
    ccf                                           ; $60A4: $3F
    dec c                                         ; $60A5: $0D
    ccf                                           ; $60A6: $3F
    ld [de], a                                    ; $60A7: $12
    rra                                           ; $60A8: $1F
    add hl, bc                                    ; $60A9: $09
    add hl, de                                    ; $60AA: $19
    ld b, $09                                     ; $60AB: $06 $09
    ld b, $13                                     ; $60AD: $06 $13
    inc c                                         ; $60AF: $0C
    ld h, $19                                     ; $60B0: $26 $19
    ld c, d                                       ; $60B2: $4A
    ld sp, $42B5                                  ; $60B3: $31 $B5 $42
    rst RST_18                                    ; $60B6: $DF
    nop                                           ; $60B7: $00
    db $10                                        ; $60B8: $10
    rrca                                          ; $60B9: $0F
    ld [$0407], sp                                ; $60BA: $08 $07 $04
    inc bc                                        ; $60BD: $03
    inc bc                                        ; $60BE: $03
    nop                                           ; $60BF: $00
    ld e, l                                       ; $60C0: $5D
    or a                                          ; $60C1: $B7
    ei                                            ; $60C2: $FB
    or [hl]                                       ; $60C3: $B6
    rst RST_38                                    ; $60C4: $FF
    dec c                                         ; $60C5: $0D
    sbc a                                         ; $60C6: $9F
    ld h, e                                       ; $60C7: $63
    sbc a                                         ; $60C8: $9F
    ld h, l                                       ; $60C9: $65
    rra                                           ; $60CA: $1F
    db $ED                                        ; $60CB: $ED
    scf                                           ; $60CC: $37
    jp z, $AC57                                   ; $60CD: $CA $57 $AC

    ld l, a                                       ; $60D0: $6F
    sbc h                                         ; $60D1: $9C
    rst RST_18                                    ; $60D2: $DF
    ld a, [hl-]                                   ; $60D3: $3A
    rst RST_18                                    ; $60D4: $DF
    ld [hl], d                                    ; $60D5: $72
    ld a, a                                       ; $60D6: $7F
    and d                                         ; $60D7: $A2
    rst RST_38                                    ; $60D8: $FF
    ld [hl+], a                                   ; $60D9: $22
    xor $44                                       ; $60DA: $EE $44
    xor $40                                       ; $60DC: $EE $40
    ldh [rP1], a                                  ; $60DE: $E0 $00
    rst RST_38                                    ; $60E0: $FF
    ld l, a                                       ; $60E1: $6F
    rst RST_38                                    ; $60E2: $FF
    rlca                                          ; $60E3: $07
    add a                                         ; $60E4: $87
    inc bc                                        ; $60E5: $03
    add e                                         ; $60E6: $83
    nop                                           ; $60E7: $00
    rst RST_00                                    ; $60E8: $C7
    add b                                         ; $60E9: $80
    ret z                                         ; $60EA: $C8

    rlca                                          ; $60EB: $07
    sub b                                         ; $60EC: $90
    rrca                                          ; $60ED: $0F
    rra                                           ; $60EE: $1F
    nop                                           ; $60EF: $00
    inc hl                                        ; $60F0: $23
    rra                                           ; $60F1: $1F
    cpl                                           ; $60F2: $2F
    rra                                           ; $60F3: $1F
    ccf                                           ; $60F4: $3F
    rla                                           ; $60F5: $17
    scf                                           ; $60F6: $37
    add hl, bc                                    ; $60F7: $09
    ld d, l                                       ; $60F8: $55
    ld a, [hl+]                                   ; $60F9: $2A
    ld e, h                                       ; $60FA: $5C
    ld [hl+], a                                   ; $60FB: $22
    ld [hl+], a                                   ; $60FC: $22
    nop                                           ; $60FD: $00
    nop                                           ; $60FE: $00
    nop                                           ; $60FF: $00
    rst RST_38                                    ; $6100: $FF
    ldh a, [$FFF8]                                ; $6101: $F0 $F8
    rst RST_20                                    ; $6103: $E7
    add sp, -$69                                  ; $6104: $E8 $97
    add sp, $57                                   ; $6106: $E8 $57
    ld sp, hl                                     ; $6108: $F9
    ld b, [hl]                                    ; $6109: $46
    ld a, e                                       ; $610A: $7B
    or h                                          ; $610B: $B4
    ld a, a                                       ; $610C: $7F
    and e                                         ; $610D: $A3
    ld a, a                                       ; $610E: $7F
    add [hl]                                      ; $610F: $86
    cp $50                                        ; $6110: $FE $50
    ld hl, sp+$50                                 ; $6112: $F8 $50
    ld hl, sp+$50                                 ; $6114: $F8 $50
    ld hl, sp+$30                                 ; $6116: $F8 $30
    ld hl, sp-$10                                 ; $6118: $F8 $F0
    ld hl, sp+$70                                 ; $611A: $F8 $70
    ld a, b                                       ; $611C: $78
    jr nc, jr_01A_618F                            ; $611D: $30 $70

    nop                                           ; $611F: $00
    ret nc                                        ; $6120: $D0

    ld h, b                                       ; $6121: $60
    ld l, b                                       ; $6122: $68
    or b                                          ; $6123: $B0
    ld l, b                                       ; $6124: $68
    or b                                          ; $6125: $B0
    ld hl, sp+$70                                 ; $6126: $F8 $70
    ld hl, sp-$10                                 ; $6128: $F8 $F0
    db $F4                                        ; $612A: $F4
    ld [$80DC], sp                                ; $612B: $08 $DC $80
    add b                                         ; $612E: $80
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
    nop                                           ; $6140: $00
    nop                                           ; $6141: $00
    nop                                           ; $6142: $00
    nop                                           ; $6143: $00
    nop                                           ; $6144: $00
    nop                                           ; $6145: $00
    nop                                           ; $6146: $00
    nop                                           ; $6147: $00
    nop                                           ; $6148: $00
    nop                                           ; $6149: $00
    nop                                           ; $614A: $00
    nop                                           ; $614B: $00
    nop                                           ; $614C: $00
    nop                                           ; $614D: $00
    nop                                           ; $614E: $00
    nop                                           ; $614F: $00
    nop                                           ; $6150: $00
    nop                                           ; $6151: $00
    nop                                           ; $6152: $00
    nop                                           ; $6153: $00
    nop                                           ; $6154: $00
    nop                                           ; $6155: $00
    nop                                           ; $6156: $00
    nop                                           ; $6157: $00
    rrca                                          ; $6158: $0F
    nop                                           ; $6159: $00
    scf                                           ; $615A: $37
    dec c                                         ; $615B: $0D
    ld a, d                                       ; $615C: $7A
    dec l                                         ; $615D: $2D
    xor a                                         ; $615E: $AF
    ld [hl], l                                    ; $615F: $75
    nop                                           ; $6160: $00
    nop                                           ; $6161: $00
    jr nc, jr_01A_6164                            ; $6162: $30 $00

jr_01A_6164:
    jr z, jr_01A_6176                             ; $6164: $28 $10

    inc h                                         ; $6166: $24
    jr jr_01A_617C                                ; $6167: $18 $13

    inc c                                         ; $6169: $0C
    db $10                                        ; $616A: $10
    rrca                                          ; $616B: $0F
    ld [$0507], sp                                ; $616C: $08 $07 $05
    ld [bc], a                                    ; $616F: $02
    ld [bc], a                                    ; $6170: $02
    ld bc, $0003                                  ; $6171: $01 $03 $00
    rrca                                          ; $6174: $0F
    inc bc                                        ; $6175: $03

jr_01A_6176:
    inc de                                        ; $6176: $13
    ld c, $E7                                     ; $6177: $0E $E7
    ld e, $7F                                     ; $6179: $1E $7F
    rst RST_28                                    ; $617B: $EF

jr_01A_617C:
    xor a                                         ; $617C: $AF
    db $D3                                        ; $617D: $D3
    ld [hl], a                                    ; $617E: $77
    db $DB                                        ; $617F: $DB
    nop                                           ; $6180: $00
    nop                                           ; $6181: $00
    jr jr_01A_6184                                ; $6182: $18 $00

jr_01A_6184:
    dec hl                                        ; $6184: $2B
    db $10                                        ; $6185: $10
    ld b, l                                       ; $6186: $45
    ld a, [hl-]                                   ; $6187: $3A
    cp l                                          ; $6188: $BD
    ld b, d                                       ; $6189: $42
    jp $873C                                      ; $618A: $C3 $3C $87


    ld a, b                                       ; $618D: $78
    add hl, sp                                    ; $618E: $39

jr_01A_618F:
    add $ED                                       ; $618F: $C6 $ED
    ld [de], a                                    ; $6191: $12
    ei                                            ; $6192: $FB
    ld [hl], h                                    ; $6193: $74
    rst RST_30                                    ; $6194: $F7
    add hl, bc                                    ; $6195: $09
    rra                                           ; $6196: $1F
    and $7F                                       ; $6197: $E6 $7F
    sbc [hl]                                      ; $6199: $9E
    rst RST_38                                    ; $619A: $FF
    inc c                                         ; $619B: $0C
    rst RST_38                                    ; $619C: $FF
    db $D3                                        ; $619D: $D3
    rst RST_38                                    ; $619E: $FF
    adc a                                         ; $619F: $8F
    ccf                                           ; $61A0: $3F
    nop                                           ; $61A1: $00
    rst RST_38                                    ; $61A2: $FF
    ccf                                           ; $61A3: $3F
    rst RST_08                                    ; $61A4: $CF
    rst RST_38                                    ; $61A5: $FF
    sbc a                                         ; $61A6: $9F
    cp $BF                                        ; $61A7: $FE $BF
    ld hl, sp-$03                                 ; $61A9: $F8 $FD
    ld a, [$F9FE]                                 ; $61AB: $FA $FE $F9
    cp $31                                        ; $61AE: $FE $31
    rst RST_38                                    ; $61B0: $FF
    add $FE                                       ; $61B1: $C6 $FE
    add sp, $38                                   ; $61B3: $E8 $38
    ldh [$FFF0], a                                ; $61B5: $E0 $F0
    ldh [$FFE0], a                                ; $61B7: $E0 $E0
    add b                                         ; $61B9: $80
    ldh [rLCDC], a                                ; $61BA: $E0 $40
    ldh [$FFC0], a                                ; $61BC: $E0 $C0
    jp Jump_000_0080                              ; $61BE: $C3 $80 $00


    nop                                           ; $61C1: $00
    nop                                           ; $61C2: $00
    nop                                           ; $61C3: $00
    nop                                           ; $61C4: $00
    nop                                           ; $61C5: $00
    nop                                           ; $61C6: $00
    nop                                           ; $61C7: $00
    nop                                           ; $61C8: $00
    nop                                           ; $61C9: $00
    nop                                           ; $61CA: $00
    nop                                           ; $61CB: $00
    ldh [rP1], a                                  ; $61CC: $E0 $00
    db $FC                                        ; $61CE: $FC
    ldh [$FFF4], a                                ; $61CF: $E0 $F4
    ret z                                         ; $61D1: $C8

    db $FC                                        ; $61D2: $FC
    nop                                           ; $61D3: $00
    ld h, e                                       ; $61D4: $63
    sbc h                                         ; $61D5: $9C
    and b                                         ; $61D6: $A0
    ld e, a                                       ; $61D7: $5F
    and a                                         ; $61D8: $A7
    ld e, b                                       ; $61D9: $58
    xor $11                                       ; $61DA: $EE $11
    xor e                                         ; $61DC: $AB
    db $10                                        ; $61DD: $10
    ld sp, $0000                                  ; $61DE: $31 $00 $00
    nop                                           ; $61E1: $00
    nop                                           ; $61E2: $00
    nop                                           ; $61E3: $00
    nop                                           ; $61E4: $00
    nop                                           ; $61E5: $00
    nop                                           ; $61E6: $00
    nop                                           ; $61E7: $00
    nop                                           ; $61E8: $00
    nop                                           ; $61E9: $00
    nop                                           ; $61EA: $00
    nop                                           ; $61EB: $00
    nop                                           ; $61EC: $00
    nop                                           ; $61ED: $00
    nop                                           ; $61EE: $00
    nop                                           ; $61EF: $00
    nop                                           ; $61F0: $00
    nop                                           ; $61F1: $00
    nop                                           ; $61F2: $00
    nop                                           ; $61F3: $00
    nop                                           ; $61F4: $00
    nop                                           ; $61F5: $00
    add b                                         ; $61F6: $80
    nop                                           ; $61F7: $00
    ld b, b                                       ; $61F8: $40
    add b                                         ; $61F9: $80
    ret nz                                        ; $61FA: $C0

    nop                                           ; $61FB: $00
    ld b, b                                       ; $61FC: $40
    add b                                         ; $61FD: $80
    add b                                         ; $61FE: $80
    nop                                           ; $61FF: $00
    ld [bc], a                                    ; $6200: $02
    ld bc, $0304                                  ; $6201: $01 $04 $03
    rlca                                          ; $6204: $07
    nop                                           ; $6205: $00
    rrca                                          ; $6206: $0F
    rlca                                          ; $6207: $07
    rra                                           ; $6208: $1F
    inc c                                         ; $6209: $0C
    rra                                           ; $620A: $1F
    ld b, $07                                     ; $620B: $06 $07
    inc bc                                        ; $620D: $03
    rlca                                          ; $620E: $07
    inc bc                                        ; $620F: $03
    db $E3                                        ; $6210: $E3
    ld bc, $61FF                                  ; $6211: $01 $FF $61
    ld a, a                                       ; $6214: $7F
    dec a                                         ; $6215: $3D
    ccf                                           ; $6216: $3F
    dec e                                         ; $6217: $1D
    rra                                           ; $6218: $1F
    dec bc                                        ; $6219: $0B
    rrca                                          ; $621A: $0F
    inc bc                                        ; $621B: $03
    rlca                                          ; $621C: $07
    inc bc                                        ; $621D: $03
    rlca                                          ; $621E: $07
    nop                                           ; $621F: $00
    nop                                           ; $6220: $00
    nop                                           ; $6221: $00
    nop                                           ; $6222: $00
    nop                                           ; $6223: $00
    nop                                           ; $6224: $00
    nop                                           ; $6225: $00
    jr nc, jr_01A_6228                            ; $6226: $30 $00

jr_01A_6228:
    pop de                                        ; $6228: $D1
    jr nz, jr_01A_624C                            ; $6229: $20 $21

    ret nz                                        ; $622B: $C0

    ld hl, $E2C0                                  ; $622C: $21 $C0 $E2
    ld bc, $C1E2                                  ; $622F: $01 $E2 $C1
    ldh a, [c]                                    ; $6232: $F2
    ld h, c                                       ; $6233: $61
    cp $63                                        ; $6234: $FE $63
    xor $D3                                       ; $6236: $EE $D3
    cp $DB                                        ; $6238: $FE $DB
    cp $E3                                        ; $623A: $FE $E3
    cp $F3                                        ; $623C: $FE $F3
    rst RST_18                                    ; $623E: $DF
    ld hl, sp+$00                                 ; $623F: $F8 $00
    nop                                           ; $6241: $00
    nop                                           ; $6242: $00
    nop                                           ; $6243: $00

jr_01A_6244:
    nop                                           ; $6244: $00
    nop                                           ; $6245: $00
    ret nz                                        ; $6246: $C0

    nop                                           ; $6247: $00
    ld b, b                                       ; $6248: $40
    add b                                         ; $6249: $80
    ld b, b                                       ; $624A: $40
    add b                                         ; $624B: $80

jr_01A_624C:
    ld b, b                                       ; $624C: $40
    add b                                         ; $624D: $80
    ld b, b                                       ; $624E: $40
    add b                                         ; $624F: $80
    ld b, b                                       ; $6250: $40
    add b                                         ; $6251: $80
    add b                                         ; $6252: $80
    nop                                           ; $6253: $00
    add b                                         ; $6254: $80
    nop                                           ; $6255: $00
    add b                                         ; $6256: $80
    nop                                           ; $6257: $00
    add b                                         ; $6258: $80
    nop                                           ; $6259: $00
    ldh [rP1], a                                  ; $625A: $E0 $00
    sbc b                                         ; $625C: $98
    ld h, b                                       ; $625D: $60
    db $E4                                        ; $625E: $E4
    ld a, b                                       ; $625F: $78
    sub [hl]                                      ; $6260: $96
    ei                                            ; $6261: $FB
    db $D3                                        ; $6262: $D3
    db $FD                                        ; $6263: $FD
    ei                                            ; $6264: $FB
    db $FD                                        ; $6265: $FD
    ld sp, hl                                     ; $6266: $F9
    ld a, $7F                                     ; $6267: $3E $7F
    jr jr_01A_62C6                                ; $6269: $18 $5B

    jr nz, jr_01A_62BC                            ; $626B: $20 $4F

    inc sp                                        ; $626D: $33
    daa                                           ; $626E: $27
    jr jr_01A_6292                                ; $626F: $18 $21

    ld e, $11                                     ; $6271: $1E $11
    ld c, $0A                                     ; $6273: $0E $0A
    dec b                                         ; $6275: $05
    dec b                                         ; $6276: $05
    ld [bc], a                                    ; $6277: $02
    inc bc                                        ; $6278: $03
    nop                                           ; $6279: $00
    ld bc, $0200                                  ; $627A: $01 $00 $02
    ld bc, $0102                                  ; $627D: $01 $02 $01
    add sp, $30                                   ; $6280: $E8 $30
    jr c, jr_01A_6244                             ; $6282: $38 $C0

    or b                                          ; $6284: $B0
    ldh [$FFE0], a                                ; $6285: $E0 $E0
    add b                                         ; $6287: $80
    or b                                          ; $6288: $B0
    nop                                           ; $6289: $00
    call nc, $8A20                                ; $628A: $D4 $20 $8A
    ld [hl], h                                    ; $628D: $74
    ld a, d                                       ; $628E: $7A
    add h                                         ; $628F: $84
    add a                                         ; $6290: $87
    ld a, b                                       ; $6291: $78

jr_01A_6292:
    rrca                                          ; $6292: $0F
    pop af                                        ; $6293: $F1
    ld [hl], e                                    ; $6294: $73
    adc h                                         ; $6295: $8C
    db $DB                                        ; $6296: $DB
    inc h                                         ; $6297: $24
    rst RST_30                                    ; $6298: $F7
    add sp, -$11                                  ; $6299: $E8 $EF
    ld d, $39                                     ; $629B: $16 $39
    adc $FF                                       ; $629D: $CE $FF
    scf                                           ; $629F: $37
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
    nop                                           ; $62AA: $00
    nop                                           ; $62AB: $00
    nop                                           ; $62AC: $00
    nop                                           ; $62AD: $00
    jr c, jr_01A_62B0                             ; $62AE: $38 $00

jr_01A_62B0:
    add $38                                       ; $62B0: $C6 $38
    pop de                                        ; $62B2: $D1
    ld a, [hl]                                    ; $62B3: $7E
    ld a, [$FDFF]                                 ; $62B4: $FA $FF $FD
    rst RST_38                                    ; $62B7: $FF
    rst RST_38                                    ; $62B8: $FF
    rst RST_20                                    ; $62B9: $E7
    rst RST_20                                    ; $62BA: $E7
    reti                                          ; $62BB: $D9


jr_01A_62BC:
    ret                                           ; $62BC: $C9


    or [hl]                                       ; $62BD: $B6
    db $D3                                        ; $62BE: $D3
    inc l                                         ; $62BF: $2C
    nop                                           ; $62C0: $00
    nop                                           ; $62C1: $00
    nop                                           ; $62C2: $00
    nop                                           ; $62C3: $00
    nop                                           ; $62C4: $00
    nop                                           ; $62C5: $00

jr_01A_62C6:
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
    nop                                           ; $62D1: $00
    add b                                         ; $62D2: $80
    nop                                           ; $62D3: $00
    ret nz                                        ; $62D4: $C0

    add b                                         ; $62D5: $80
    ld h, b                                       ; $62D6: $60
    ret nz                                        ; $62D7: $C0

    or b                                          ; $62D8: $B0
    ldh [$FFF8], a                                ; $62D9: $E0 $F8
    ldh a, [$FFFC]                                ; $62DB: $F0 $FC
    ld hl, sp-$04                                 ; $62DD: $F8 $FC
    ld b, b                                       ; $62DF: $40
    ld bc, $0000                                  ; $62E0: $01 $00 $00
    nop                                           ; $62E3: $00
    nop                                           ; $62E4: $00
    nop                                           ; $62E5: $00
    nop                                           ; $62E6: $00
    nop                                           ; $62E7: $00
    nop                                           ; $62E8: $00
    nop                                           ; $62E9: $00
    nop                                           ; $62EA: $00
    nop                                           ; $62EB: $00
    ld bc, $0F00                                  ; $62EC: $01 $00 $0F
    ld bc, $091F                                  ; $62EF: $01 $1F $09
    dec sp                                        ; $62F2: $3B
    inc b                                         ; $62F3: $04
    ld [hl], a                                    ; $62F4: $77
    ld l, $7F                                     ; $62F5: $2E $7F
    ld l, $9F                                     ; $62F7: $2E $9F
    ld [hl], b                                    ; $62F9: $70
    cp [hl]                                       ; $62FA: $BE
    ld a, h                                       ; $62FB: $7C
    cp $00                                        ; $62FC: $FE $00
    nop                                           ; $62FE: $00
    nop                                           ; $62FF: $00
    rst RST_38                                    ; $6300: $FF
    jr nz, jr_01A_6342                            ; $6301: $20 $3F

    rra                                           ; $6303: $1F
    rra                                           ; $6304: $1F
    ld bc, $050B                                  ; $6305: $01 $0B $05
    dec c                                         ; $6308: $0D
    ld [bc], a                                    ; $6309: $02
    scf                                           ; $630A: $37
    add hl, bc                                    ; $630B: $09
    rst RST_00                                    ; $630C: $C7
    dec sp                                        ; $630D: $3B
    add e                                         ; $630E: $83
    ld a, l                                       ; $630F: $7D
    jp $E2BC                                      ; $6310: $C3 $BC $E2


    ld e, h                                       ; $6313: $5C
    ld a, h                                       ; $6314: $7C
    and b                                         ; $6315: $A0
    or b                                          ; $6316: $B0
    ld b, b                                       ; $6317: $40
    ret nc                                        ; $6318: $D0

    jr nz, jr_01A_637B                            ; $6319: $20 $60

    nop                                           ; $631B: $00
    nop                                           ; $631C: $00
    nop                                           ; $631D: $00
    nop                                           ; $631E: $00
    nop                                           ; $631F: $00
    db $EB                                        ; $6320: $EB
    ld d, h                                       ; $6321: $54
    ei                                            ; $6322: $FB
    ld h, h                                       ; $6323: $64
    rst RST_38                                    ; $6324: $FF
    add b                                         ; $6325: $80
    ld a, [$F2E5]                                 ; $6326: $FA $E5 $F2
    dec c                                         ; $6329: $0D
    rst RST_08                                    ; $632A: $CF
    or d                                          ; $632B: $B2
    add a                                         ; $632C: $87
    ld a, b                                       ; $632D: $78
    adc l                                         ; $632E: $8D
    ld [hl], d                                    ; $632F: $72
    adc h                                         ; $6330: $8C
    ld [hl], e                                    ; $6331: $73
    ld a, a                                       ; $6332: $7F
    nop                                           ; $6333: $00
    ld bc, $0000                                  ; $6334: $01 $00 $00
    nop                                           ; $6337: $00
    nop                                           ; $6338: $00
    nop                                           ; $6339: $00
    nop                                           ; $633A: $00
    nop                                           ; $633B: $00
    nop                                           ; $633C: $00
    nop                                           ; $633D: $00
    nop                                           ; $633E: $00
    nop                                           ; $633F: $00
    ld [hl], e                                    ; $6340: $73
    adc h                                         ; $6341: $8C

jr_01A_6342:
    ld e, l                                       ; $6342: $5D
    and d                                         ; $6343: $A2
    ld e, e                                       ; $6344: $5B
    and b                                         ; $6345: $A0
    call nc, $3428                                ; $6346: $D4 $28 $34
    ret z                                         ; $6349: $C8

    ld [$7A14], a                                 ; $634A: $EA $14 $7A
    add h                                         ; $634D: $84
    ld l, $D0                                     ; $634E: $2E $D0
    ldh a, [rP1]                                  ; $6350: $F0 $00
    ld [hl], b                                    ; $6352: $70
    ldh [$FFB0], a                                ; $6353: $E0 $B0
    ldh [$FFF8], a                                ; $6355: $E0 $F8
    ld b, b                                       ; $6357: $40
    sbc $38                                       ; $6358: $DE $38
    adc a                                         ; $635A: $8F
    ld a, [hl]                                    ; $635B: $7E
    cp a                                          ; $635C: $BF
    ld a, [hl]                                    ; $635D: $7E
    rst RST_38                                    ; $635E: $FF
    nop                                           ; $635F: $00
    ld bc, $0100                                  ; $6360: $01 $00 $01
    nop                                           ; $6363: $00
    ld bc, $0000                                  ; $6364: $01 $00 $00
    nop                                           ; $6367: $00
    ld bc, $0100                                  ; $6368: $01 $00 $01
    nop                                           ; $636B: $00
    ld [bc], a                                    ; $636C: $02
    ld bc, $0102                                  ; $636D: $01 $02 $01
    inc bc                                        ; $6370: $03
    ld bc, $0107                                  ; $6371: $01 $07 $01
    dec bc                                        ; $6374: $0B
    dec b                                         ; $6375: $05
    inc de                                        ; $6376: $13
    ld c, $2F                                     ; $6377: $0E $2F
    rra                                           ; $6379: $1F
    ld a, a                                       ; $637A: $7F

jr_01A_637B:
    ccf                                           ; $637B: $3F
    ld a, a                                       ; $637C: $7F
    ld a, $7E                                     ; $637D: $3E $7E
    nop                                           ; $637F: $00
    nop                                           ; $6380: $00
    nop                                           ; $6381: $00
    ld bc, $0200                                  ; $6382: $01 $00 $02
    ld bc, $0305                                  ; $6385: $01 $05 $03
    dec b                                         ; $6388: $05
    inc bc                                        ; $6389: $03
    rrca                                          ; $638A: $0F
    rlca                                          ; $638B: $07
    rrca                                          ; $638C: $0F
    inc b                                         ; $638D: $04
    ld e, $0D                                     ; $638E: $1E $0D
    sbc h                                         ; $6390: $9C
    dec bc                                        ; $6391: $0B
    ld a, h                                       ; $6392: $7C
    sub e                                         ; $6393: $93
    add hl, de                                    ; $6394: $19
    and $86                                       ; $6395: $E6 $86
    ld a, c                                       ; $6397: $79
    ld b, h                                       ; $6398: $44
    cp e                                          ; $6399: $BB
    db $E4                                        ; $639A: $E4
    db $DB                                        ; $639B: $DB
    db $FD                                        ; $639C: $FD
    jp nz, $B4FB                                  ; $639D: $C2 $FB $B4

    ld a, $00                                     ; $63A0: $3E $00
    rst RST_08                                    ; $63A2: $CF
    ld a, $3F                                     ; $63A3: $3E $3F
    db $FC                                        ; $63A5: $FC
    ld a, a                                       ; $63A6: $7F
    ld hl, sp-$06                                 ; $63A7: $F8 $FA
    push hl                                       ; $63A9: $E5
    ldh a, [c]                                    ; $63AA: $F2
    db $ED                                        ; $63AB: $ED
    rst RST_38                                    ; $63AC: $FF
    ldh [$FFF4], a                                ; $63AD: $E0 $F4
    add sp, -$16                                  ; $63AF: $E8 $EA
    inc d                                         ; $63B1: $14
    ld d, [hl]                                    ; $63B2: $56
    xor b                                         ; $63B3: $A8
    jp c, Jump_000_3C24                           ; $63B4: $DA $24 $3C

    ret nz                                        ; $63B7: $C0

    ld a, b                                       ; $63B8: $78
    add b                                         ; $63B9: $80
    sbc h                                         ; $63BA: $9C
    ld h, b                                       ; $63BB: $60
    call c, $BE28                                 ; $63BC: $DC $28 $BE
    ld c, h                                       ; $63BF: $4C
    nop                                           ; $63C0: $00
    nop                                           ; $63C1: $00
    nop                                           ; $63C2: $00
    nop                                           ; $63C3: $00
    nop                                           ; $63C4: $00
    nop                                           ; $63C5: $00
    nop                                           ; $63C6: $00
    nop                                           ; $63C7: $00
    nop                                           ; $63C8: $00
    nop                                           ; $63C9: $00
    nop                                           ; $63CA: $00
    nop                                           ; $63CB: $00
    nop                                           ; $63CC: $00
    nop                                           ; $63CD: $00
    ret nz                                        ; $63CE: $C0

    nop                                           ; $63CF: $00
    ld h, b                                       ; $63D0: $60
    add b                                         ; $63D1: $80
    ld e, b                                       ; $63D2: $58
    and b                                         ; $63D3: $A0
    ld e, b                                       ; $63D4: $58
    and b                                         ; $63D5: $A0
    call nc, $3428                                ; $63D6: $D4 $28 $34
    ret z                                         ; $63D9: $C8

    jp z, Jump_000_3A34                           ; $63DA: $CA $34 $3A

    inc b                                         ; $63DD: $04
    ld b, $00                                     ; $63DE: $06 $00
    cp $79                                        ; $63E0: $FE $79
    db $FD                                        ; $63E2: $FD
    ld a, d                                       ; $63E3: $7A
    rst RST_38                                    ; $63E4: $FF
    ld h, b                                       ; $63E5: $60
    db $E3                                        ; $63E6: $E3
    ld e, a                                       ; $63E7: $5F
    rst RST_08                                    ; $63E8: $CF
    ccf                                           ; $63E9: $3F
    rst RST_18                                    ; $63EA: $DF
    cp a                                          ; $63EB: $BF
    rst RST_38                                    ; $63EC: $FF
    ccf                                           ; $63ED: $3F
    ld a, a                                       ; $63EE: $7F
    inc a                                         ; $63EF: $3C
    ld a, h                                       ; $63F0: $7C
    inc sp                                        ; $63F1: $33
    db $F4                                        ; $63F2: $F4
    rrca                                          ; $63F3: $0F
    or [hl]                                       ; $63F4: $B6
    ld e, a                                       ; $63F5: $5F
    ld a, [$EB9F]                                 ; $63F6: $FA $9F $EB
    ccf                                           ; $63F9: $3F
    ld l, a                                       ; $63FA: $6F
    or e                                          ; $63FB: $B3
    ei                                            ; $63FC: $FB
    inc h                                         ; $63FD: $24
    di                                            ; $63FE: $F3
    ld c, l                                       ; $63FF: $4D
    ld a, d                                       ; $6400: $7A
    sbc h                                         ; $6401: $9C
    or $58                                        ; $6402: $F6 $58
    cp $E0                                        ; $6404: $FE $E0
    cp $EC                                        ; $6406: $FE $EC
    db $FC                                        ; $6408: $FC
    ld l, b                                       ; $6409: $68
    db $FC                                        ; $640A: $FC
    sbc b                                         ; $640B: $98
    ld hl, sp-$50                                 ; $640C: $F8 $B0
    ei                                            ; $640E: $FB
    and b                                         ; $640F: $A0
    rst RST_38                                    ; $6410: $FF
    inc bc                                        ; $6411: $03
    ld sp, hl                                     ; $6412: $F9
    rst RST_00                                    ; $6413: $C7
    set 6, h                                      ; $6414: $CB $F4
    db $DD                                        ; $6416: $DD
    ld a, [$FBD4]                                 ; $6417: $FA $D4 $FB
    rst RST_30                                    ; $641A: $F7
    db $FC                                        ; $641B: $FC
    rst RST_38                                    ; $641C: $FF
    call z, $34CE                                 ; $641D: $CC $CE $34
    ld bc, $0F00                                  ; $6420: $01 $00 $0F
    ld bc, $091F                                  ; $6423: $01 $1F $09
    dec sp                                        ; $6426: $3B
    inc b                                         ; $6427: $04
    ld [hl], a                                    ; $6428: $77
    ld l, $7F                                     ; $6429: $2E $7F
    ld l, $9F                                     ; $642B: $2E $9F
    ld [hl], b                                    ; $642D: $70
    cp [hl]                                       ; $642E: $BE
    ld a, h                                       ; $642F: $7C
    cp $00                                        ; $6430: $FE $00
    nop                                           ; $6432: $00
    nop                                           ; $6433: $00
    nop                                           ; $6434: $00
    nop                                           ; $6435: $00
    nop                                           ; $6436: $00
    nop                                           ; $6437: $00
    nop                                           ; $6438: $00
    nop                                           ; $6439: $00
    nop                                           ; $643A: $00

Call_01A_643B:
    nop                                           ; $643B: $00
    nop                                           ; $643C: $00
    nop                                           ; $643D: $00
    nop                                           ; $643E: $00
    nop                                           ; $643F: $00
    di                                            ; $6440: $F3
    ld l, h                                       ; $6441: $6C
    ld [hl], a                                    ; $6442: $77
    dec hl                                        ; $6443: $2B
    scf                                           ; $6444: $37
    dec bc                                        ; $6445: $0B
    rla                                           ; $6446: $17
    dec bc                                        ; $6447: $0B
    rla                                           ; $6448: $17
    ld a, [bc]                                    ; $6449: $0A
    ld d, $09                                     ; $644A: $16 $09
    ld c, $05                                     ; $644C: $0E $05
    ld b, $01                                     ; $644E: $06 $01
    inc bc                                        ; $6450: $03
    nop                                           ; $6451: $00
    ld bc, $0000                                  ; $6452: $01 $00 $00
    nop                                           ; $6455: $00
    nop                                           ; $6456: $00
    nop                                           ; $6457: $00
    nop                                           ; $6458: $00
    nop                                           ; $6459: $00

jr_01A_645A:
    nop                                           ; $645A: $00
    nop                                           ; $645B: $00
    nop                                           ; $645C: $00
    nop                                           ; $645D: $00
    nop                                           ; $645E: $00
    nop                                           ; $645F: $00
    rst RST_08                                    ; $6460: $CF
    or d                                          ; $6461: $B2
    rst RST_28                                    ; $6462: $EF
    ld d, $EE                                     ; $6463: $16 $EE
    call nc, $D0EC                                ; $6465: $D4 $EC $D0
    add sp, -$30                                  ; $6468: $E8 $D0
    add sp, $50                                   ; $646A: $E8 $50
    ld l, b                                       ; $646C: $68
    sub b                                         ; $646D: $90
    ld [hl], b                                    ; $646E: $70
    and b                                         ; $646F: $A0
    ld h, b                                       ; $6470: $60
    add b                                         ; $6471: $80
    ret nz                                        ; $6472: $C0

    nop                                           ; $6473: $00
    add b                                         ; $6474: $80
    nop                                           ; $6475: $00
    nop                                           ; $6476: $00
    nop                                           ; $6477: $00
    nop                                           ; $6478: $00
    nop                                           ; $6479: $00
    nop                                           ; $647A: $00
    nop                                           ; $647B: $00
    nop                                           ; $647C: $00
    nop                                           ; $647D: $00
    nop                                           ; $647E: $00
    nop                                           ; $647F: $00
    ldh [rP1], a                                  ; $6480: $E0 $00
    ldh a, [$FFE0]                                ; $6482: $F0 $E0
    ld hl, sp+$60                                 ; $6484: $F8 $60
    ld l, b                                       ; $6486: $68
    sub b                                         ; $6487: $90
    jr z, jr_01A_645A                             ; $6488: $28 $D0

    ldh a, [rP1]                                  ; $648A: $F0 $00
    ld [hl], b                                    ; $648C: $70
    ldh [$FFB0], a                                ; $648D: $E0 $B0
    ldh [$FFF8], a                                ; $648F: $E0 $F8
    ld b, b                                       ; $6491: $40
    sbc $38                                       ; $6492: $DE $38
    adc a                                         ; $6494: $8F
    ld a, [hl]                                    ; $6495: $7E
    cp a                                          ; $6496: $BF
    ld a, [hl]                                    ; $6497: $7E
    rst RST_38                                    ; $6498: $FF
    nop                                           ; $6499: $00
    nop                                           ; $649A: $00
    nop                                           ; $649B: $00
    nop                                           ; $649C: $00
    nop                                           ; $649D: $00
    nop                                           ; $649E: $00
    nop                                           ; $649F: $00
    ld bc, $0300                                  ; $64A0: $01 $00 $03
    ld bc, $0103                                  ; $64A3: $01 $03 $01
    dec b                                         ; $64A6: $05
    inc bc                                        ; $64A7: $03
    ld b, $03                                     ; $64A8: $06 $03
    inc bc                                        ; $64AA: $03
    nop                                           ; $64AB: $00
    inc bc                                        ; $64AC: $03
    nop                                           ; $64AD: $00
    rlca                                          ; $64AE: $07
    ld [bc], a                                    ; $64AF: $02
    rlca                                          ; $64B0: $07
    inc bc                                        ; $64B1: $03
    rlca                                          ; $64B2: $07
    inc bc                                        ; $64B3: $03
    rlca                                          ; $64B4: $07
    ld bc, $0001                                  ; $64B5: $01 $01 $00
    nop                                           ; $64B8: $00
    nop                                           ; $64B9: $00
    nop                                           ; $64BA: $00
    nop                                           ; $64BB: $00
    nop                                           ; $64BC: $00
    nop                                           ; $64BD: $00

jr_01A_64BE:
    nop                                           ; $64BE: $00
    nop                                           ; $64BF: $00
    set 7, a                                      ; $64C0: $CB $FF
    ld l, e                                       ; $64C2: $6B
    rst RST_38                                    ; $64C3: $FF
    db $EB                                        ; $64C4: $EB
    inc a                                         ; $64C5: $3C
    cp l                                          ; $64C6: $BD
    ld e, d                                       ; $64C7: $5A
    cp l                                          ; $64C8: $BD
    ld b, d                                       ; $64C9: $42
    inc a                                         ; $64CA: $3C
    db $DB                                        ; $64CB: $DB
    inc a                                         ; $64CC: $3C
    db $DB                                        ; $64CD: $DB
    ld a, [hl]                                    ; $64CE: $7E
    and l                                         ; $64CF: $A5
    rst RST_38                                    ; $64D0: $FF
    ld h, [hl]                                    ; $64D1: $66
    rst RST_20                                    ; $64D2: $E7
    ld e, d                                       ; $64D3: $5A
    rst RST_20                                    ; $64D4: $E7
    jr jr_01A_64BE                                ; $64D5: $18 $E7

    ld e, d                                       ; $64D7: $5A
    ld a, [hl]                                    ; $64D8: $7E
    inc h                                         ; $64D9: $24
    ld a, [hl]                                    ; $64DA: $7E
    inc h                                         ; $64DB: $24
    inc a                                         ; $64DC: $3C
    jr jr_01A_64F7                                ; $64DD: $18 $18

    nop                                           ; $64DF: $00
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
    ld b, $00                                     ; $64EA: $06 $00
    dec b                                         ; $64EC: $05
    ld [bc], a                                    ; $64ED: $02
    inc b                                         ; $64EE: $04
    inc bc                                        ; $64EF: $03
    ld [bc], a                                    ; $64F0: $02
    ld bc, $0102                                  ; $64F1: $01 $02 $01
    ld bc, $0000                                  ; $64F4: $01 $00 $00

jr_01A_64F7:
    nop                                           ; $64F7: $00
    nop                                           ; $64F8: $00
    nop                                           ; $64F9: $00
    nop                                           ; $64FA: $00

jr_01A_64FB:
    nop                                           ; $64FB: $00
    inc a                                         ; $64FC: $3C
    nop                                           ; $64FD: $00
    rst RST_18                                    ; $64FE: $DF
    inc a                                         ; $64FF: $3C
    nop                                           ; $6500: $00
    nop                                           ; $6501: $00
    nop                                           ; $6502: $00
    nop                                           ; $6503: $00
    nop                                           ; $6504: $00
    nop                                           ; $6505: $00
    nop                                           ; $6506: $00
    nop                                           ; $6507: $00
    nop                                           ; $6508: $00
    nop                                           ; $6509: $00
    inc bc                                        ; $650A: $03
    nop                                           ; $650B: $00
    dec b                                         ; $650C: $05
    ld [bc], a                                    ; $650D: $02
    adc b                                         ; $650E: $88
    rlca                                          ; $650F: $07
    ld [hl], a                                    ; $6510: $77
    adc b                                         ; $6511: $88
    jr jr_01A_64FB                                ; $6512: $18 $E7

    db $10                                        ; $6514: $10
    rst RST_28                                    ; $6515: $EF
    and a                                         ; $6516: $A7
    ld e, b                                       ; $6517: $58
    ld e, l                                       ; $6518: $5D
    ld [hl+], a                                   ; $6519: $22
    ccf                                           ; $651A: $3F
    ld c, $FE                                     ; $651B: $0E $FE
    ld bc, $DCE3                                  ; $651D: $01 $E3 $DC
    nop                                           ; $6520: $00
    nop                                           ; $6521: $00
    nop                                           ; $6522: $00
    nop                                           ; $6523: $00
    nop                                           ; $6524: $00
    nop                                           ; $6525: $00
    nop                                           ; $6526: $00
    nop                                           ; $6527: $00
    ld bc, $0600                                  ; $6528: $01 $00 $06
    ld bc, $0748                                  ; $652B: $01 $48 $07
    or d                                          ; $652E: $B2
    ld c, a                                       ; $652F: $4F
    or a                                          ; $6530: $B7
    ld c, a                                       ; $6531: $4F
    ld a, a                                       ; $6532: $7F
    adc a                                         ; $6533: $8F
    rst RST_38                                    ; $6534: $FF
    rrca                                          ; $6535: $0F
    ccf                                           ; $6536: $3F
    rst RST_08                                    ; $6537: $CF
    cp a                                          ; $6538: $BF
    ld d, a                                       ; $6539: $57
    ld a, a                                       ; $653A: $7F
    sbc b                                         ; $653B: $98
    rst RST_38                                    ; $653C: $FF
    ld l, e                                       ; $653D: $6B
    cp a                                          ; $653E: $BF
    db $EB                                        ; $653F: $EB
    nop                                           ; $6540: $00
    nop                                           ; $6541: $00
    nop                                           ; $6542: $00
    nop                                           ; $6543: $00
    nop                                           ; $6544: $00
    nop                                           ; $6545: $00
    nop                                           ; $6546: $00
    nop                                           ; $6547: $00
    rst RST_38                                    ; $6548: $FF
    nop                                           ; $6549: $00
    cp a                                          ; $654A: $BF
    cp $1F                                        ; $654B: $FE $1F
    cp $BF                                        ; $654D: $FE $BF
    cp $7F                                        ; $654F: $FE $7F
    ld hl, sp-$06                                 ; $6551: $F8 $FA
    push hl                                       ; $6553: $E5
    ldh a, [c]                                    ; $6554: $F2
    call $80FF                                    ; $6555: $CD $FF $80
    push de                                       ; $6558: $D5
    adc d                                         ; $6559: $8A
    adc $00                                       ; $655A: $CE $00
    ldh a, [rLCDC]                                ; $655C: $F0 $40
    db $FC                                        ; $655E: $FC
    ld [hl], b                                    ; $655F: $70
    nop                                           ; $6560: $00
    nop                                           ; $6561: $00
    nop                                           ; $6562: $00
    nop                                           ; $6563: $00
    nop                                           ; $6564: $00
    nop                                           ; $6565: $00
    nop                                           ; $6566: $00
    nop                                           ; $6567: $00
    nop                                           ; $6568: $00
    nop                                           ; $6569: $00
    ret nz                                        ; $656A: $C0

    nop                                           ; $656B: $00
    ld a, h                                       ; $656C: $7C
    add b                                         ; $656D: $80
    ld d, h                                       ; $656E: $54
    xor b                                         ; $656F: $A8
    ld e, b                                       ; $6570: $58
    and b                                         ; $6571: $A0
    call nc, $3428                                ; $6572: $D4 $28 $34
    ret z                                         ; $6575: $C8

    jp z, Jump_000_3A34                           ; $6576: $CA $34 $3A

    inc b                                         ; $6579: $04
    ld b, $00                                     ; $657A: $06 $00
    nop                                           ; $657C: $00
    nop                                           ; $657D: $00
    nop                                           ; $657E: $00
    nop                                           ; $657F: $00
    rst RST_28                                    ; $6580: $EF
    ld d, c                                       ; $6581: $51
    rst RST_38                                    ; $6582: $FF
    add l                                         ; $6583: $85
    rst RST_38                                    ; $6584: $FF
    or [hl]                                       ; $6585: $B6
    rst RST_38                                    ; $6586: $FF
    sub $FF                                       ; $6587: $D6 $FF
    ret c                                         ; $6589: $D8

    ld hl, sp+$00                                 ; $658A: $F8 $00
    ret nz                                        ; $658C: $C0

    nop                                           ; $658D: $00
    ldh [rLCDC], a                                ; $658E: $E0 $40
    ldh [rLCDC], a                                ; $6590: $E0 $40
    ldh [$FFC0], a                                ; $6592: $E0 $C0
    ldh [$FF80], a                                ; $6594: $E0 $80
    add b                                         ; $6596: $80
    nop                                           ; $6597: $00
    nop                                           ; $6598: $00
    nop                                           ; $6599: $00
    nop                                           ; $659A: $00
    nop                                           ; $659B: $00
    nop                                           ; $659C: $00
    nop                                           ; $659D: $00
    nop                                           ; $659E: $00
    nop                                           ; $659F: $00
    ld a, a                                       ; $65A0: $7F
    db $EB                                        ; $65A1: $EB
    rst RST_38                                    ; $65A2: $FF
    sub $FF                                       ; $65A3: $D6 $FF
    ld c, $FE                                     ; $65A5: $0E $FE
    ld sp, hl                                     ; $65A7: $F9
    ld hl, sp+$17                                 ; $65A8: $F8 $17
    jr nc, jr_01A_65BB                            ; $65AA: $30 $0F

    ld e, b                                       ; $65AC: $58
    scf                                           ; $65AD: $37
    ld e, a                                       ; $65AE: $5F
    jr c, @+$81                                   ; $65AF: $38 $7F

    ld a, $3F                                     ; $65B1: $3E $3F
    dec e                                         ; $65B3: $1D
    ld e, a                                       ; $65B4: $5F

jr_01A_65B5:
    inc hl                                        ; $65B5: $23
    ld [hl], e                                    ; $65B6: $73
    nop                                           ; $65B7: $00
    nop                                           ; $65B8: $00
    nop                                           ; $65B9: $00
    nop                                           ; $65BA: $00

jr_01A_65BB:
    nop                                           ; $65BB: $00
    nop                                           ; $65BC: $00
    nop                                           ; $65BD: $00
    nop                                           ; $65BE: $00
    nop                                           ; $65BF: $00
    rst RST_38                                    ; $65C0: $FF
    inc e                                         ; $65C1: $1C
    rst RST_38                                    ; $65C2: $FF
    ld h, a                                       ; $65C3: $67
    rst RST_38                                    ; $65C4: $FF
    db $10                                        ; $65C5: $10
    ld e, $E8                                     ; $65C6: $1E $E8
    add hl, de                                    ; $65C8: $19
    and $18                                       ; $65C9: $E6 $18
    rst RST_20                                    ; $65CB: $E7
    jr jr_01A_65B5                                ; $65CC: $18 $E7

    ld hl, sp+$07                                 ; $65CE: $F8 $07
    db $FC                                        ; $65D0: $FC
    sbc e                                         ; $65D1: $9B
    rst RST_38                                    ; $65D2: $FF
    db $EC                                        ; $65D3: $EC
    rst RST_38                                    ; $65D4: $FF
    xor $FF                                       ; $65D5: $EE $FF
    rrca                                          ; $65D7: $0F
    rrca                                          ; $65D8: $0F
    inc bc                                        ; $65D9: $03
    inc bc                                        ; $65DA: $03
    nop                                           ; $65DB: $00
    nop                                           ; $65DC: $00
    nop                                           ; $65DD: $00
    nop                                           ; $65DE: $00
    nop                                           ; $65DF: $00
    nop                                           ; $65E0: $00
    nop                                           ; $65E1: $00
    add b                                         ; $65E2: $80
    nop                                           ; $65E3: $00
    add b                                         ; $65E4: $80
    nop                                           ; $65E5: $00
    nop                                           ; $65E6: $00
    nop                                           ; $65E7: $00
    add b                                         ; $65E8: $80
    nop                                           ; $65E9: $00
    ld h, b                                       ; $65EA: $60
    add b                                         ; $65EB: $80
    ld a, b                                       ; $65EC: $78
    and b                                         ; $65ED: $A0
    ld a, h                                       ; $65EE: $7C
    or b                                          ; $65EF: $B0
    rst RST_38                                    ; $65F0: $FF
    ld [hl], h                                    ; $65F1: $74
    rst RST_38                                    ; $65F2: $FF
    rst RST_30                                    ; $65F3: $F7
    rst RST_38                                    ; $65F4: $FF
    rst RST_28                                    ; $65F5: $EF
    rst RST_38                                    ; $65F6: $FF
    rrca                                          ; $65F7: $0F
    rst RST_08                                    ; $65F8: $CF
    add b                                         ; $65F9: $80
    ret nz                                        ; $65FA: $C0

    add b                                         ; $65FB: $80
    ret nz                                        ; $65FC: $C0

    nop                                           ; $65FD: $00
    nop                                           ; $65FE: $00
    nop                                           ; $65FF: $00
    ret nz                                        ; $6600: $C0

    nop                                           ; $6601: $00
    ldh a, [$FFC0]                                ; $6602: $F0 $C0
    ld hl, sp+$30                                 ; $6604: $F8 $30
    ld hl, sp-$50                                 ; $6606: $F8 $B0
    db $FC                                        ; $6608: $FC
    ld a, b                                       ; $6609: $78
    cp $7C                                        ; $660A: $FE $7C
    ld a, a                                       ; $660C: $7F
    ld c, $0F                                     ; $660D: $0E $0F
    ld [bc], a                                    ; $660F: $02
    inc bc                                        ; $6610: $03
    nop                                           ; $6611: $00
    nop                                           ; $6612: $00
    nop                                           ; $6613: $00
    nop                                           ; $6614: $00
    nop                                           ; $6615: $00
    nop                                           ; $6616: $00
    nop                                           ; $6617: $00
    nop                                           ; $6618: $00
    nop                                           ; $6619: $00
    nop                                           ; $661A: $00
    nop                                           ; $661B: $00
    nop                                           ; $661C: $00
    nop                                           ; $661D: $00
    nop                                           ; $661E: $00
    nop                                           ; $661F: $00
    inc b                                         ; $6620: $04
    inc bc                                        ; $6621: $03
    ld a, l                                       ; $6622: $7D
    inc bc                                        ; $6623: $03
    ld b, e                                       ; $6624: $43
    ccf                                           ; $6625: $3F
    ld e, a                                       ; $6626: $5F
    ccf                                           ; $6627: $3F
    daa                                           ; $6628: $27
    rra                                           ; $6629: $1F
    add hl, de                                    ; $662A: $19
    rlca                                          ; $662B: $07
    ld e, $01                                     ; $662C: $1E $01
    dec h                                         ; $662E: $25
    jr jr_01A_665B                                ; $662F: $18 $2A

    dec e                                         ; $6631: $1D
    dec l                                         ; $6632: $2D
    rra                                           ; $6633: $1F
    cpl                                           ; $6634: $2F
    rra                                           ; $6635: $1F
    rla                                           ; $6636: $17
    rrca                                          ; $6637: $0F
    dec bc                                        ; $6638: $0B
    rlca                                          ; $6639: $07
    dec b                                         ; $663A: $05
    inc bc                                        ; $663B: $03
    ld [bc], a                                    ; $663C: $02
    ld bc, $0001                                  ; $663D: $01 $01 $00
    rlca                                          ; $6640: $07
    nop                                           ; $6641: $00
    ld [$9707], sp                                ; $6642: $08 $07 $97
    rrca                                          ; $6645: $0F
    ld [hl], a                                    ; $6646: $77
    adc a                                         ; $6647: $8F
    adc a                                         ; $6648: $8F
    rst RST_38                                    ; $6649: $FF
    rst RST_38                                    ; $664A: $FF
    rst RST_38                                    ; $664B: $FF
    rst RST_38                                    ; $664C: $FF
    rst RST_38                                    ; $664D: $FF
    rst RST_08                                    ; $664E: $CF
    rst RST_38                                    ; $664F: $FF
    rst RST_00                                    ; $6650: $C7
    rst RST_38                                    ; $6651: $FF
    inc bc                                        ; $6652: $03
    rst RST_38                                    ; $6653: $FF
    ld bc, $00FF                                  ; $6654: $01 $FF $00
    rst RST_38                                    ; $6657: $FF
    nop                                           ; $6658: $00
    rst RST_38                                    ; $6659: $FF
    add b                                         ; $665A: $80

jr_01A_665B:
    rst RST_38                                    ; $665B: $FF
    ldh [rIE], a                                  ; $665C: $E0 $FF
    ld hl, sp-$01                                 ; $665E: $F8 $FF
    add b                                         ; $6660: $80
    nop                                           ; $6661: $00
    ld b, b                                       ; $6662: $40
    add b                                         ; $6663: $80
    and b                                         ; $6664: $A0
    ret nz                                        ; $6665: $C0

    and b                                         ; $6666: $A0
    ret nz                                        ; $6667: $C0

    ret nc                                        ; $6668: $D0

    ldh [$FFD0], a                                ; $6669: $E0 $D0
    ldh [$FFD0], a                                ; $666B: $E0 $D0
    ldh [$FFD0], a                                ; $666D: $E0 $D0
    ldh [$FFD0], a                                ; $666F: $E0 $D0
    ldh [$FFD3], a                                ; $6671: $E0 $D3
    ldh [$FFDC], a                                ; $6673: $E0 $DC
    db $E3                                        ; $6675: $E3
    ldh [rIE], a                                  ; $6676: $E0 $FF
    ld a, h                                       ; $6678: $7C
    rst RST_38                                    ; $6679: $FF
    inc a                                         ; $667A: $3C
    rst RST_38                                    ; $667B: $FF
    inc e                                         ; $667C: $1C
    rst RST_38                                    ; $667D: $FF
    inc c                                         ; $667E: $0C
    rst RST_38                                    ; $667F: $FF
    inc bc                                        ; $6680: $03
    nop                                           ; $6681: $00
    inc b                                         ; $6682: $04
    inc bc                                        ; $6683: $03
    jr jr_01A_668D                                ; $6684: $18 $07

    ldh [$FF1F], a                                ; $6686: $E0 $1F
    sub b                                         ; $6688: $90
    ld a, a                                       ; $6689: $7F
    ld h, b                                       ; $668A: $60
    rst RST_38                                    ; $668B: $FF
    pop hl                                        ; $668C: $E1

jr_01A_668D:
    rst RST_38                                    ; $668D: $FF
    jp $87FF                                      ; $668E: $C3 $FF $87


    rst RST_38                                    ; $6691: $FF
    adc a                                         ; $6692: $8F
    rst RST_38                                    ; $6693: $FF
    rra                                           ; $6694: $1F
    rst RST_38                                    ; $6695: $FF
    ccf                                           ; $6696: $3F
    rst RST_38                                    ; $6697: $FF
    ld a, h                                       ; $6698: $7C
    rst RST_38                                    ; $6699: $FF
    db $FD                                        ; $669A: $FD
    cp $01                                        ; $669B: $FE $01
    cp $C2                                        ; $669D: $FE $C2
    db $FC                                        ; $669F: $FC
    add b                                         ; $66A0: $80
    nop                                           ; $66A1: $00
    ld b, b                                       ; $66A2: $40
    add b                                         ; $66A3: $80
    inc a                                         ; $66A4: $3C
    ret nz                                        ; $66A5: $C0

    inc bc                                        ; $66A6: $03
    db $FC                                        ; $66A7: $FC
    ld a, h                                       ; $66A8: $7C
    rst RST_38                                    ; $66A9: $FF
    rst RST_38                                    ; $66AA: $FF
    rst RST_38                                    ; $66AB: $FF
    rst RST_38                                    ; $66AC: $FF
    rst RST_38                                    ; $66AD: $FF
    rst RST_38                                    ; $66AE: $FF
    rst RST_38                                    ; $66AF: $FF
    rst RST_38                                    ; $66B0: $FF
    rst RST_38                                    ; $66B1: $FF
    rst RST_38                                    ; $66B2: $FF
    rst RST_38                                    ; $66B3: $FF
    rst RST_38                                    ; $66B4: $FF
    rst RST_38                                    ; $66B5: $FF
    rst RST_38                                    ; $66B6: $FF
    rst RST_38                                    ; $66B7: $FF
    ld bc, $FEFF                                  ; $66B8: $01 $FF $FE
    ld bc, $0001                                  ; $66BB: $01 $01 $00
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
    add b                                         ; $66C8: $80
    nop                                           ; $66C9: $00
    ld b, b                                       ; $66CA: $40
    add b                                         ; $66CB: $80
    ld b, b                                       ; $66CC: $40
    add b                                         ; $66CD: $80
    ld b, b                                       ; $66CE: $40
    add b                                         ; $66CF: $80
    ld b, b                                       ; $66D0: $40
    add b                                         ; $66D1: $80
    and b                                         ; $66D2: $A0
    ret nz                                        ; $66D3: $C0

    ret nc                                        ; $66D4: $D0

    ldh [$FFD0], a                                ; $66D5: $E0 $D0
    ldh [$FFE8], a                                ; $66D7: $E0 $E8
    ldh a, [$FFE8]                                ; $66D9: $F0 $E8
    ldh a, [$FF08]                                ; $66DB: $F0 $08
    ldh a, [$FFF0]                                ; $66DD: $F0 $F0
    nop                                           ; $66DF: $00
    sbc h                                         ; $66E0: $9C
    rst RST_38                                    ; $66E1: $FF
    ld l, a                                       ; $66E2: $6F
    sbc a                                         ; $66E3: $9F
    xor e                                         ; $66E4: $AB
    rra                                           ; $66E5: $1F
    ld d, l                                       ; $66E6: $55
    dec sp                                        ; $66E7: $3B
    ld c, d                                       ; $66E8: $4A
    ld sp, $0132                                  ; $66E9: $31 $32 $01
    ld b, $01                                     ; $66EC: $06 $01
    dec bc                                        ; $66EE: $0B
    rlca                                          ; $66EF: $07
    ld d, $0F                                     ; $66F0: $16 $0F
    jr z, jr_01A_6713                             ; $66F2: $28 $1F

    ld e, b                                       ; $66F4: $58
    ccf                                           ; $66F5: $3F
    jr z, jr_01A_6717                             ; $66F6: $28 $1F

    db $10                                        ; $66F8: $10
    rrca                                          ; $66F9: $0F
    inc c                                         ; $66FA: $0C
    inc bc                                        ; $66FB: $03
    ld [bc], a                                    ; $66FC: $02
    ld bc, $030D                                  ; $66FD: $01 $0D $03
    dec b                                         ; $6700: $05
    rst RST_38                                    ; $6701: $FF
    ld bc, $C0FF                                  ; $6702: $01 $FF $C0
    rst RST_38                                    ; $6705: $FF
    ldh a, [c]                                    ; $6706: $F2
    db $FD                                        ; $6707: $FD
    db $FD                                        ; $6708: $FD
    ld a, [$FDF2]                                 ; $6709: $FA $F2 $FD
    ret nz                                        ; $670C: $C0

    rst RST_38                                    ; $670D: $FF
    dec b                                         ; $670E: $05
    rst RST_38                                    ; $670F: $FF
    dec c                                         ; $6710: $0D
    rst RST_38                                    ; $6711: $FF
    dec e                                         ; $6712: $1D

jr_01A_6713:
    rst RST_38                                    ; $6713: $FF
    ccf                                           ; $6714: $3F
    rst RST_38                                    ; $6715: $FF
    inc a                                         ; $6716: $3C

jr_01A_6717:
    rst RST_38                                    ; $6717: $FF
    ld h, e                                       ; $6718: $63
    db $FC                                        ; $6719: $FC
    call c, $D8E0                                 ; $671A: $DC $E0 $D8
    ldh [$FFC4], a                                ; $671D: $E0 $C4
    ld hl, sp-$05                                 ; $671F: $F8 $FB
    db $FC                                        ; $6721: $FC
    jr c, @+$01                                   ; $6722: $38 $FF

    adc a                                         ; $6724: $8F
    rst RST_38                                    ; $6725: $FF
    jp $E1FF                                      ; $6726: $C3 $FF $E1


    rst RST_38                                    ; $6729: $FF
    jr nc, @+$01                                  ; $672A: $30 $FF

    reti                                          ; $672C: $D9


    ccf                                           ; $672D: $3F
    daa                                           ; $672E: $27
    rra                                           ; $672F: $1F
    dec de                                        ; $6730: $1B
    rlca                                          ; $6731: $07
    dec b                                         ; $6732: $05
    inc bc                                        ; $6733: $03
    ld [bc], a                                    ; $6734: $02
    ld bc, $0102                                  ; $6735: $01 $02 $01
    ld [bc], a                                    ; $6738: $02
    ld bc, $0102                                  ; $6739: $01 $02 $01
    ld [bc], a                                    ; $673C: $02
    ld bc, $0000                                  ; $673D: $01 $00 $00
    ret nz                                        ; $6740: $C0

    nop                                           ; $6741: $00
    jr nz, @-$3E                                  ; $6742: $20 $C0

    ret nc                                        ; $6744: $D0

    ldh [$FFD0], a                                ; $6745: $E0 $D0
    ldh [$FFC8], a                                ; $6747: $E0 $C8
    ldh a, [$FFC8]                                ; $6749: $F0 $C8
    ldh a, [$FFD0]                                ; $674B: $F0 $D0
    ldh [$FFD0], a                                ; $674D: $E0 $D0
    ldh [$FFD0], a                                ; $674F: $E0 $D0
    ldh [$FFEC], a                                ; $6751: $E0 $EC
    ldh a, [$FFF2]                                ; $6753: $F0 $F2
    db $FC                                        ; $6755: $FC
    db $FD                                        ; $6756: $FD
    cp $FD                                        ; $6757: $FE $FD
    cp $FD                                        ; $6759: $FE $FD
    cp $00                                        ; $675B: $FE $00
    nop                                           ; $675D: $00
    nop                                           ; $675E: $00
    nop                                           ; $675F: $00
    inc sp                                        ; $6760: $33
    rrca                                          ; $6761: $0F
    ld c, a                                       ; $6762: $4F
    ccf                                           ; $6763: $3F
    cp a                                          ; $6764: $BF
    ld a, a                                       ; $6765: $7F
    cp a                                          ; $6766: $BF
    ld a, a                                       ; $6767: $7F
    nop                                           ; $6768: $00
    nop                                           ; $6769: $00
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
    nop                                           ; $6778: $00
    nop                                           ; $6779: $00
    nop                                           ; $677A: $00
    nop                                           ; $677B: $00
    nop                                           ; $677C: $00
    nop                                           ; $677D: $00
    nop                                           ; $677E: $00
    nop                                           ; $677F: $00
    db $F4                                        ; $6780: $F4
    ld hl, sp-$18                                 ; $6781: $F8 $E8
    ldh a, [$FFE8]                                ; $6783: $F0 $E8
    ldh a, [$FFD0]                                ; $6785: $F0 $D0
    ldh [rP1], a                                  ; $6787: $E0 $00
    nop                                           ; $6789: $00
    nop                                           ; $678A: $00
    nop                                           ; $678B: $00
    nop                                           ; $678C: $00
    nop                                           ; $678D: $00
    nop                                           ; $678E: $00
    nop                                           ; $678F: $00
    nop                                           ; $6790: $00
    nop                                           ; $6791: $00
    nop                                           ; $6792: $00
    nop                                           ; $6793: $00
    nop                                           ; $6794: $00
    nop                                           ; $6795: $00
    nop                                           ; $6796: $00
    nop                                           ; $6797: $00
    nop                                           ; $6798: $00
    nop                                           ; $6799: $00
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
    nop                                           ; $67A6: $00
    nop                                           ; $67A7: $00
    nop                                           ; $67A8: $00
    nop                                           ; $67A9: $00
    nop                                           ; $67AA: $00
    nop                                           ; $67AB: $00
    nop                                           ; $67AC: $00
    nop                                           ; $67AD: $00
    nop                                           ; $67AE: $00
    nop                                           ; $67AF: $00
    nop                                           ; $67B0: $00
    nop                                           ; $67B1: $00
    nop                                           ; $67B2: $00
    nop                                           ; $67B3: $00
    nop                                           ; $67B4: $00
    nop                                           ; $67B5: $00
    nop                                           ; $67B6: $00
    nop                                           ; $67B7: $00
    nop                                           ; $67B8: $00
    nop                                           ; $67B9: $00
    nop                                           ; $67BA: $00
    nop                                           ; $67BB: $00
    nop                                           ; $67BC: $00
    nop                                           ; $67BD: $00
    rlca                                          ; $67BE: $07
    nop                                           ; $67BF: $00
    nop                                           ; $67C0: $00
    nop                                           ; $67C1: $00
    ld c, $00                                     ; $67C2: $0E $00
    add hl, bc                                    ; $67C4: $09
    ld b, $FE                                     ; $67C5: $06 $FE
    ld bc, $7887                                  ; $67C7: $01 $87 $78
    ld h, b                                       ; $67CA: $60
    rra                                           ; $67CB: $1F
    rra                                           ; $67CC: $1F
    rlca                                          ; $67CD: $07
    rlca                                          ; $67CE: $07
    nop                                           ; $67CF: $00
    ld h, e                                       ; $67D0: $63
    nop                                           ; $67D1: $00
    ld d, [hl]                                    ; $67D2: $56
    ld hl, $265F                                  ; $67D3: $21 $5F $26
    ld c, a                                       ; $67D6: $4F
    ld [hl], $3F                                  ; $67D7: $36 $3F
    ld c, $1F                                     ; $67D9: $0E $1F
    rrca                                          ; $67DB: $0F

jr_01A_67DC:
    rrca                                          ; $67DC: $0F
    inc b                                         ; $67DD: $04
    ld b, $00                                     ; $67DE: $06 $00
    ld e, $00                                     ; $67E0: $1E $00
    cpl                                           ; $67E2: $2F
    jr jr_01A_6814                                ; $67E3: $18 $2F

    db $10                                        ; $67E5: $10
    rst RST_18                                    ; $67E6: $DF
    jr nc, jr_01A_6848                            ; $67E7: $30 $5F

    or b                                          ; $67E9: $B0
    rst RST_38                                    ; $67EA: $FF
    jr nc, @+$01                                  ; $67EB: $30 $FF

    ld h, b                                       ; $67ED: $60
    rst RST_38                                    ; $67EE: $FF
    ld h, b                                       ; $67EF: $60
    rst RST_38                                    ; $67F0: $FF
    jr nz, @+$01                                  ; $67F1: $20 $FF

    inc b                                         ; $67F3: $04
    cp $5D                                        ; $67F4: $FE $5D
    db $FC                                        ; $67F6: $FC
    ld a, e                                       ; $67F7: $7B
    ld a, h                                       ; $67F8: $7C
    sbc e                                         ; $67F9: $9B
    add hl, de                                    ; $67FA: $19
    and $86                                       ; $67FB: $E6 $86
    ld a, c                                       ; $67FD: $79
    call nz, $803B                                ; $67FE: $C4 $3B $80
    nop                                           ; $6801: $00
    add b                                         ; $6802: $80
    nop                                           ; $6803: $00
    add b                                         ; $6804: $80
    nop                                           ; $6805: $00
    add b                                         ; $6806: $80
    nop                                           ; $6807: $00
    add b                                         ; $6808: $80
    nop                                           ; $6809: $00
    add b                                         ; $680A: $80
    nop                                           ; $680B: $00
    add c                                         ; $680C: $81
    nop                                           ; $680D: $00
    cp $01                                        ; $680E: $FE $01
    ld e, h                                       ; $6810: $5C
    and e                                         ; $6811: $A3
    db $DD                                        ; $6812: $DD
    dec hl                                        ; $6813: $2B

jr_01A_6814:
    ccf                                           ; $6814: $3F
    bit 7, a                                      ; $6815: $CB $7F
    adc e                                         ; $6817: $8B
    sbc a                                         ; $6818: $9F
    ld l, c                                       ; $6819: $69
    rst RST_18                                    ; $681A: $DF
    jr nz, jr_01A_67DC                            ; $681B: $20 $BF

    ld e, h                                       ; $681D: $5C
    ld a, a                                       ; $681E: $7F
    cp [hl]                                       ; $681F: $BE
    nop                                           ; $6820: $00
    nop                                           ; $6821: $00
    nop                                           ; $6822: $00
    nop                                           ; $6823: $00
    nop                                           ; $6824: $00
    nop                                           ; $6825: $00
    nop                                           ; $6826: $00
    nop                                           ; $6827: $00
    nop                                           ; $6828: $00
    nop                                           ; $6829: $00
    nop                                           ; $682A: $00
    nop                                           ; $682B: $00
    nop                                           ; $682C: $00
    nop                                           ; $682D: $00
    nop                                           ; $682E: $00
    nop                                           ; $682F: $00
    nop                                           ; $6830: $00
    nop                                           ; $6831: $00
    nop                                           ; $6832: $00
    nop                                           ; $6833: $00
    ld a, a                                       ; $6834: $7F
    nop                                           ; $6835: $00
    adc a                                         ; $6836: $8F
    ld a, a                                       ; $6837: $7F
    ld a, a                                       ; $6838: $7F
    rst RST_38                                    ; $6839: $FF
    ld a, a                                       ; $683A: $7F
    ldh a, [rIE]                                  ; $683B: $F0 $FF
    ldh [$FFF5], a                                ; $683D: $E0 $F5
    ld [$0000], a                                 ; $683F: $EA $00 $00
    nop                                           ; $6842: $00
    nop                                           ; $6843: $00
    nop                                           ; $6844: $00
    nop                                           ; $6845: $00

jr_01A_6846:
    nop                                           ; $6846: $00
    nop                                           ; $6847: $00

jr_01A_6848:
    nop                                           ; $6848: $00
    nop                                           ; $6849: $00

jr_01A_684A:
    nop                                           ; $684A: $00
    nop                                           ; $684B: $00
    ld hl, sp+$00                                 ; $684C: $F8 $00
    rst RST_38                                    ; $684E: $FF
    ldh a, [$FFFD]                                ; $684F: $F0 $FD
    ldh a, [c]                                    ; $6851: $F2
    rst RST_30                                    ; $6852: $F7
    jr z, jr_01A_684A                             ; $6853: $28 $F5

    ld a, [bc]                                    ; $6855: $0A
    push af                                       ; $6856: $F5
    ld a, [bc]                                    ; $6857: $0A
    xor l                                         ; $6858: $AD
    ld d, d                                       ; $6859: $52
    inc hl                                        ; $685A: $23
    call c, Call_000_03FC                         ; $685B: $DC $FC $03
    inc bc                                        ; $685E: $03
    nop                                           ; $685F: $00
    nop                                           ; $6860: $00
    nop                                           ; $6861: $00
    nop                                           ; $6862: $00
    nop                                           ; $6863: $00
    nop                                           ; $6864: $00
    nop                                           ; $6865: $00
    nop                                           ; $6866: $00
    nop                                           ; $6867: $00
    nop                                           ; $6868: $00
    nop                                           ; $6869: $00
    nop                                           ; $686A: $00
    nop                                           ; $686B: $00
    nop                                           ; $686C: $00
    nop                                           ; $686D: $00
    nop                                           ; $686E: $00
    nop                                           ; $686F: $00
    nop                                           ; $6870: $00
    nop                                           ; $6871: $00
    nop                                           ; $6872: $00
    nop                                           ; $6873: $00
    add b                                         ; $6874: $80
    nop                                           ; $6875: $00
    ld b, b                                       ; $6876: $40
    add b                                         ; $6877: $80
    ld b, b                                       ; $6878: $40
    add b                                         ; $6879: $80
    and b                                         ; $687A: $A0
    ld b, b                                       ; $687B: $40
    and b                                         ; $687C: $A0
    ld b, b                                       ; $687D: $40
    ld h, b                                       ; $687E: $60
    nop                                           ; $687F: $00
    ld h, h                                       ; $6880: $64
    dec de                                        ; $6881: $1B
    ld a, l                                       ; $6882: $7D
    ld [bc], a                                    ; $6883: $02
    db $EB                                        ; $6884: $EB
    ld b, h                                       ; $6885: $44
    add $01                                       ; $6886: $C6 $01
    dec b                                         ; $6888: $05
    ld [bc], a                                    ; $6889: $02
    rra                                           ; $688A: $1F
    nop                                           ; $688B: $00
    ccf                                           ; $688C: $3F
    inc e                                         ; $688D: $1C
    ld a, a                                       ; $688E: $7F
    rra                                           ; $688F: $1F
    cp a                                          ; $6890: $BF
    ld c, a                                       ; $6891: $4F
    ld c, a                                       ; $6892: $4F
    scf                                           ; $6893: $37
    ccf                                           ; $6894: $3F
    nop                                           ; $6895: $00
    dec bc                                        ; $6896: $0B

Jump_01A_6897:
    rlca                                          ; $6897: $07
    dec b                                         ; $6898: $05
    inc bc                                        ; $6899: $03
    dec c                                         ; $689A: $0D
    inc bc                                        ; $689B: $03
    ccf                                           ; $689C: $3F
    inc c                                         ; $689D: $0C
    rst RST_08                                    ; $689E: $CF
    ccf                                           ; $689F: $3F
    ld a, c                                       ; $68A0: $79
    xor a                                         ; $68A1: $AF
    rst RST_38                                    ; $68A2: $FF
    ld b, [hl]                                    ; $68A3: $46
    rst RST_38                                    ; $68A4: $FF
    jr jr_01A_6846                                ; $68A5: $18 $9F

    ld h, b                                       ; $68A7: $60
    rst RST_00                                    ; $68A8: $C7
    cp e                                          ; $68A9: $BB
    rst RST_20                                    ; $68AA: $E7
    db $DD                                        ; $68AB: $DD
    rst RST_38                                    ; $68AC: $FF
    ret c                                         ; $68AD: $D8

    ld hl, sp+$00                                 ; $68AE: $F8 $00
    ret nz                                        ; $68B0: $C0

    add b                                         ; $68B1: $80
    ret nz                                        ; $68B2: $C0

    add b                                         ; $68B3: $80
    ldh a, [$FF80]                                ; $68B4: $F0 $80
    ldh a, [rNR41]                                ; $68B6: $F0 $20
    ldh [$FFC0], a                                ; $68B8: $E0 $C0

jr_01A_68BA:
    ldh [$FFC0], a                                ; $68BA: $E0 $C0
    ret nz                                        ; $68BC: $C0

    nop                                           ; $68BD: $00
    nop                                           ; $68BE: $00
    nop                                           ; $68BF: $00
    ld a, [$FBE5]                                 ; $68C0: $FA $E5 $FB
    db $E4                                        ; $68C3: $E4
    rst RST_38                                    ; $68C4: $FF
    nop                                           ; $68C5: $00
    db $FC                                        ; $68C6: $FC
    ld l, b                                       ; $68C7: $68
    db $FC                                        ; $68C8: $FC
    ld l, b                                       ; $68C9: $68
    db $FC                                        ; $68CA: $FC
    ld l, b                                       ; $68CB: $68
    ld hl, sp-$30                                 ; $68CC: $F8 $D0
    cp $00                                        ; $68CE: $FE $00
    rst RST_08                                    ; $68D0: $CF
    or b                                          ; $68D1: $B0
    sbc a                                         ; $68D2: $9F
    ld l, a                                       ; $68D3: $6F
    and a                                         ; $68D4: $A7
    ld e, l                                       ; $68D5: $5D
    db $ED                                        ; $68D6: $ED
    ld d, d                                       ; $68D7: $52
    ld [hl], h                                    ; $68D8: $74
    dec hl                                        ; $68D9: $2B
    inc sp                                        ; $68DA: $33
    inc c                                         ; $68DB: $0C
    dec c                                         ; $68DC: $0D
    inc bc                                        ; $68DD: $03
    ld b, $03                                     ; $68DE: $06 $03
    ldh [rP1], a                                  ; $68E0: $E0 $00
    ldh a, [$FFE0]                                ; $68E2: $F0 $E0
    ldh a, [$FF60]                                ; $68E4: $F0 $60
    ld l, b                                       ; $68E6: $68
    sub b                                         ; $68E7: $90
    jr z, jr_01A_68BA                             ; $68E8: $28 $D0

    ldh a, [rP1]                                  ; $68EA: $F0 $00
    ld [hl], b                                    ; $68EC: $70
    ldh [$FFB0], a                                ; $68ED: $E0 $B0
    ldh [$FFF8], a                                ; $68EF: $E0 $F8
    ld b, b                                       ; $68F1: $40
    sbc $38                                       ; $68F2: $DE $38
    adc a                                         ; $68F4: $8F
    ld a, [hl]                                    ; $68F5: $7E
    cp a                                          ; $68F6: $BF
    ld a, [hl]                                    ; $68F7: $7E
    rst RST_38                                    ; $68F8: $FF
    nop                                           ; $68F9: $00
    nop                                           ; $68FA: $00
    nop                                           ; $68FB: $00
    nop                                           ; $68FC: $00
    nop                                           ; $68FD: $00
    nop                                           ; $68FE: $00
    nop                                           ; $68FF: $00
    adc a                                         ; $6900: $8F
    ld a, a                                       ; $6901: $7F
    rst RST_38                                    ; $6902: $FF
    nop                                           ; $6903: $00
    nop                                           ; $6904: $00
    nop                                           ; $6905: $00
    nop                                           ; $6906: $00
    nop                                           ; $6907: $00
    nop                                           ; $6908: $00
    nop                                           ; $6909: $00
    nop                                           ; $690A: $00
    nop                                           ; $690B: $00
    nop                                           ; $690C: $00
    nop                                           ; $690D: $00
    nop                                           ; $690E: $00
    nop                                           ; $690F: $00
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
    ld bc, $0100                                  ; $6920: $01 $00 $01
    nop                                           ; $6923: $00
    rra                                           ; $6924: $1F
    nop                                           ; $6925: $00
    db $10                                        ; $6926: $10
    rrca                                          ; $6927: $0F
    inc c                                         ; $6928: $0C
    inc bc                                        ; $6929: $03
    inc bc                                        ; $692A: $03
    nop                                           ; $692B: $00
    nop                                           ; $692C: $00
    nop                                           ; $692D: $00
    inc c                                         ; $692E: $0C
    nop                                           ; $692F: $00
    ld a, [bc]                                    ; $6930: $0A
    inc b                                         ; $6931: $04
    dec bc                                        ; $6932: $0B
    inc b                                         ; $6933: $04
    add hl, bc                                    ; $6934: $09
    ld b, $07                                     ; $6935: $06 $07
    ld bc, $0103                                  ; $6937: $01 $03 $01
    ld bc, $0000                                  ; $693A: $01 $00 $00
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
    inc bc                                        ; $694C: $03
    nop                                           ; $694D: $00
    dec b                                         ; $694E: $05
    inc bc                                        ; $694F: $03
    push bc                                       ; $6950: $C5
    ld [bc], a                                    ; $6951: $02
    dec sp                                        ; $6952: $3B
    add $CB                                       ; $6953: $C6 $CB
    ld [hl], $FF                                  ; $6955: $36 $FF
    ld b, $1F                                     ; $6957: $06 $1F
    db $EC                                        ; $6959: $EC
    rst RST_38                                    ; $695A: $FF
    db $EC                                        ; $695B: $EC
    rst RST_38                                    ; $695C: $FF
    inc b                                         ; $695D: $04
    ld a, a                                       ; $695E: $7F
    ld [bc], a                                    ; $695F: $02
    and $00                                       ; $6960: $E6 $00
    push af                                       ; $6962: $F5
    ld [bc], a                                    ; $6963: $02
    db $F4                                        ; $6964: $F4
    inc bc                                        ; $6965: $03
    ldh a, [c]                                    ; $6966: $F2
    ld bc, $01F2                                  ; $6967: $01 $F2 $01
    pop af                                        ; $696A: $F1
    nop                                           ; $696B: $00
    ldh a, [rP1]                                  ; $696C: $F0 $00
    ld sp, hl                                     ; $696E: $F9
    nop                                           ; $696F: $00
    rst RST_38                                    ; $6970: $FF
    ld bc, $1BE7                                  ; $6971: $01 $E7 $1B
    rst RST_00                                    ; $6974: $C7
    dec sp                                        ; $6975: $3B
    rst RST_00                                    ; $6976: $C7
    cp e                                          ; $6977: $BB
    rst RST_00                                    ; $6978: $C7
    cp e                                          ; $6979: $BB
    rst RST_38                                    ; $697A: $FF
    add e                                         ; $697B: $83
    jp Jump_000_0101                              ; $697C: $C3 $01 $01


    nop                                           ; $697F: $00
    nop                                           ; $6980: $00

jr_01A_6981:
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
    nop                                           ; $698C: $00
    nop                                           ; $698D: $00
    nop                                           ; $698E: $00
    nop                                           ; $698F: $00
    inc bc                                        ; $6990: $03
    nop                                           ; $6991: $00
    dec b                                         ; $6992: $05
    ld [bc], a                                    ; $6993: $02
    adc b                                         ; $6994: $88
    rlca                                          ; $6995: $07
    ld [hl], a                                    ; $6996: $77
    adc b                                         ; $6997: $88
    jr jr_01A_6981                                ; $6998: $18 $E7

    db $10                                        ; $699A: $10
    rst RST_28                                    ; $699B: $EF
    and a                                         ; $699C: $A7
    ld e, b                                       ; $699D: $58
    db $DD                                        ; $699E: $DD
    ld [hl+], a                                   ; $699F: $22
    nop                                           ; $69A0: $00
    nop                                           ; $69A1: $00
    nop                                           ; $69A2: $00
    nop                                           ; $69A3: $00
    nop                                           ; $69A4: $00
    nop                                           ; $69A5: $00
    nop                                           ; $69A6: $00
    nop                                           ; $69A7: $00
    nop                                           ; $69A8: $00
    nop                                           ; $69A9: $00
    nop                                           ; $69AA: $00
    nop                                           ; $69AB: $00
    nop                                           ; $69AC: $00
    nop                                           ; $69AD: $00
    nop                                           ; $69AE: $00
    nop                                           ; $69AF: $00
    nop                                           ; $69B0: $00
    nop                                           ; $69B1: $00
    ld b, b                                       ; $69B2: $40
    nop                                           ; $69B3: $00
    and b                                         ; $69B4: $A0
    ld b, b                                       ; $69B5: $40
    and b                                         ; $69B6: $A0
    ld b, b                                       ; $69B7: $40
    ld h, b                                       ; $69B8: $60
    add b                                         ; $69B9: $80
    ldh [rP1], a                                  ; $69BA: $E0 $00
    cpl                                           ; $69BC: $2F
    ret nz                                        ; $69BD: $C0

    cp [hl]                                       ; $69BE: $BE
    ld b, a                                       ; $69BF: $47
    rst RST_18                                    ; $69C0: $DF
    ld a, [hl+]                                   ; $69C1: $2A
    rst RST_38                                    ; $69C2: $FF
    adc $FF                                       ; $69C3: $CE $FF
    rst RST_38                                    ; $69C5: $FF
    rst RST_38                                    ; $69C6: $FF
    rst RST_38                                    ; $69C7: $FF
    rst RST_38                                    ; $69C8: $FF
    rst RST_38                                    ; $69C9: $FF
    rst RST_38                                    ; $69CA: $FF
    add l                                         ; $69CB: $85
    rst RST_08                                    ; $69CC: $CF
    inc b                                         ; $69CD: $04
    ld c, $04                                     ; $69CE: $0E $04
    inc e                                         ; $69D0: $1C
    ld [$0018], sp                                ; $69D1: $08 $18 $00
    nop                                           ; $69D4: $00
    nop                                           ; $69D5: $00
    nop                                           ; $69D6: $00
    nop                                           ; $69D7: $00
    nop                                           ; $69D8: $00
    nop                                           ; $69D9: $00
    nop                                           ; $69DA: $00
    nop                                           ; $69DB: $00
    nop                                           ; $69DC: $00
    nop                                           ; $69DD: $00
    nop                                           ; $69DE: $00
    nop                                           ; $69DF: $00
    rst RST_38                                    ; $69E0: $FF
    adc $FE                                       ; $69E1: $CE $FE
    pop bc                                        ; $69E3: $C1
    db $E3                                        ; $69E4: $E3
    call c, $93EF                                 ; $69E5: $DC $EF $93
    db $FC                                        ; $69E8: $FC
    ld b, a                                       ; $69E9: $47
    rst RST_38                                    ; $69EA: $FF
    ld [hl], a                                    ; $69EB: $77
    rst RST_38                                    ; $69EC: $FF
    ld b, b                                       ; $69ED: $40
    rst RST_38                                    ; $69EE: $FF
    ld a, $7F                                     ; $69EF: $3E $7F
    inc hl                                        ; $69F1: $23
    scf                                           ; $69F2: $37
    ld [$0B17], sp                                ; $69F3: $08 $17 $0B
    rra                                           ; $69F6: $1F
    nop                                           ; $69F7: $00
    ccf                                           ; $69F8: $3F
    rrca                                          ; $69F9: $0F
    ld c, a                                       ; $69FA: $4F
    ld [hl], $4E                                  ; $69FB: $36 $4E
    dec [hl]                                      ; $69FD: $35
    ld c, [hl]                                    ; $69FE: $4E
    ld sp, $8F7F                                  ; $69FF: $31 $7F $8F
    rst RST_38                                    ; $6A02: $FF
    rrca                                          ; $6A03: $0F
    rst RST_38                                    ; $6A04: $FF
    ld c, a                                       ; $6A05: $4F
    rst RST_38                                    ; $6A06: $FF
    adc a                                         ; $6A07: $8F
    rst RST_38                                    ; $6A08: $FF
    and c                                         ; $6A09: $A1
    rst RST_38                                    ; $6A0A: $FF
    or b                                          ; $6A0B: $B0
    db $FC                                        ; $6A0C: $FC
    ld [hl], e                                    ; $6A0D: $73
    ei                                            ; $6A0E: $FB
    ld [hl], h                                    ; $6A0F: $74
    cp $81                                        ; $6A10: $FE $81
    push af                                       ; $6A12: $F5
    ldh [c], a                                    ; $6A13: $E2
    and $00                                       ; $6A14: $E6 $00
    ret nz                                        ; $6A16: $C0

    nop                                           ; $6A17: $00
    ldh [$FFC0], a                                ; $6A18: $E0 $C0
    pop hl                                        ; $6A1A: $E1
    nop                                           ; $6A1B: $00
    ld [de], a                                    ; $6A1C: $12
    pop hl                                        ; $6A1D: $E1
    ld [de], a                                    ; $6A1E: $12
    pop hl                                        ; $6A1F: $E1
    ld bc, $0300                                  ; $6A20: $01 $00 $03
    ld bc, $0107                                  ; $6A23: $01 $07 $01
    dec bc                                        ; $6A26: $0B
    inc b                                         ; $6A27: $04
    inc b                                         ; $6A28: $04
    inc bc                                        ; $6A29: $03
    inc bc                                        ; $6A2A: $03
    nop                                           ; $6A2B: $00
    ld bc, $0100                                  ; $6A2C: $01 $00 $01
    nop                                           ; $6A2F: $00
    inc bc                                        ; $6A30: $03
    nop                                           ; $6A31: $00
    rrca                                          ; $6A32: $0F
    ld [bc], a                                    ; $6A33: $02
    inc sp                                        ; $6A34: $33
    rrca                                          ; $6A35: $0F
    ld b, a                                       ; $6A36: $47
    ccf                                           ; $6A37: $3F
    ld a, a                                       ; $6A38: $7F
    nop                                           ; $6A39: $00
    nop                                           ; $6A3A: $00
    nop                                           ; $6A3B: $00
    nop                                           ; $6A3C: $00
    nop                                           ; $6A3D: $00
    nop                                           ; $6A3E: $00
    nop                                           ; $6A3F: $00
    ld bc, $0100                                  ; $6A40: $01 $00 $01
    nop                                           ; $6A43: $00
    rra                                           ; $6A44: $1F
    nop                                           ; $6A45: $00
    db $10                                        ; $6A46: $10
    rrca                                          ; $6A47: $0F
    inc c                                         ; $6A48: $0C
    inc bc                                        ; $6A49: $03
    inc bc                                        ; $6A4A: $03
    nop                                           ; $6A4B: $00
    nop                                           ; $6A4C: $00
    nop                                           ; $6A4D: $00
    inc c                                         ; $6A4E: $0C
    nop                                           ; $6A4F: $00
    ld a, [bc]                                    ; $6A50: $0A
    inc b                                         ; $6A51: $04
    dec bc                                        ; $6A52: $0B
    inc b                                         ; $6A53: $04
    add hl, bc                                    ; $6A54: $09
    ld b, $07                                     ; $6A55: $06 $07
    ld bc, $0103                                  ; $6A57: $01 $03 $01
    ld bc, $0000                                  ; $6A5A: $01 $00 $00
    nop                                           ; $6A5D: $00
    nop                                           ; $6A5E: $00
    nop                                           ; $6A5F: $00
    nop                                           ; $6A60: $00
    nop                                           ; $6A61: $00
    nop                                           ; $6A62: $00
    nop                                           ; $6A63: $00
    nop                                           ; $6A64: $00
    nop                                           ; $6A65: $00
    nop                                           ; $6A66: $00
    nop                                           ; $6A67: $00
    nop                                           ; $6A68: $00
    nop                                           ; $6A69: $00
    nop                                           ; $6A6A: $00
    nop                                           ; $6A6B: $00
    inc bc                                        ; $6A6C: $03
    nop                                           ; $6A6D: $00
    dec b                                         ; $6A6E: $05
    inc bc                                        ; $6A6F: $03
    push bc                                       ; $6A70: $C5
    ld [bc], a                                    ; $6A71: $02
    dec sp                                        ; $6A72: $3B
    add $CB                                       ; $6A73: $C6 $CB
    ld [hl], $FF                                  ; $6A75: $36 $FF
    ld b, $1F                                     ; $6A77: $06 $1F
    db $EC                                        ; $6A79: $EC
    rst RST_38                                    ; $6A7A: $FF
    db $EC                                        ; $6A7B: $EC
    rst RST_38                                    ; $6A7C: $FF
    inc b                                         ; $6A7D: $04
    ld a, a                                       ; $6A7E: $7F
    ld [bc], a                                    ; $6A7F: $02
    nop                                           ; $6A80: $00
    nop                                           ; $6A81: $00
    nop                                           ; $6A82: $00
    nop                                           ; $6A83: $00
    nop                                           ; $6A84: $00
    nop                                           ; $6A85: $00
    nop                                           ; $6A86: $00
    nop                                           ; $6A87: $00
    nop                                           ; $6A88: $00
    nop                                           ; $6A89: $00
    nop                                           ; $6A8A: $00
    nop                                           ; $6A8B: $00
    ret nz                                        ; $6A8C: $C0

    nop                                           ; $6A8D: $00
    ldh [rP1], a                                  ; $6A8E: $E0 $00
    ldh [rP1], a                                  ; $6A90: $E0 $00
    ldh a, [rP1]                                  ; $6A92: $F0 $00
    ldh a, [rP1]                                  ; $6A94: $F0 $00
    ldh a, [rP1]                                  ; $6A96: $F0 $00
    ldh a, [rP1]                                  ; $6A98: $F0 $00
    ldh a, [rP1]                                  ; $6A9A: $F0 $00
    ldh a, [rP1]                                  ; $6A9C: $F0 $00
    ld sp, hl                                     ; $6A9E: $F9
    nop                                           ; $6A9F: $00
    nop                                           ; $6AA0: $00
    nop                                           ; $6AA1: $00
    nop                                           ; $6AA2: $00
    nop                                           ; $6AA3: $00
    nop                                           ; $6AA4: $00
    nop                                           ; $6AA5: $00
    nop                                           ; $6AA6: $00
    nop                                           ; $6AA7: $00
    nop                                           ; $6AA8: $00
    nop                                           ; $6AA9: $00
    nop                                           ; $6AAA: $00
    nop                                           ; $6AAB: $00
    nop                                           ; $6AAC: $00
    nop                                           ; $6AAD: $00
    nop                                           ; $6AAE: $00
    nop                                           ; $6AAF: $00
    ld b, $00                                     ; $6AB0: $06 $00
    ld b, $00                                     ; $6AB2: $06 $00
    ld l, c                                       ; $6AB4: $69
    ld b, $59                                     ; $6AB5: $06 $59
    ld h, $59                                     ; $6AB7: $26 $59
    ld h, $30                                     ; $6AB9: $26 $30
    rrca                                          ; $6ABB: $0F
    jr nc, jr_01A_6ACD                            ; $6ABC: $30 $0F

    jp hl                                         ; $6ABE: $E9


    ld d, $00                                     ; $6ABF: $16 $00
    nop                                           ; $6AC1: $00
    nop                                           ; $6AC2: $00
    nop                                           ; $6AC3: $00
    nop                                           ; $6AC4: $00
    nop                                           ; $6AC5: $00
    nop                                           ; $6AC6: $00
    nop                                           ; $6AC7: $00
    nop                                           ; $6AC8: $00
    nop                                           ; $6AC9: $00
    nop                                           ; $6ACA: $00
    nop                                           ; $6ACB: $00
    nop                                           ; $6ACC: $00

jr_01A_6ACD:
    nop                                           ; $6ACD: $00
    nop                                           ; $6ACE: $00
    nop                                           ; $6ACF: $00
    nop                                           ; $6AD0: $00
    nop                                           ; $6AD1: $00
    nop                                           ; $6AD2: $00
    nop                                           ; $6AD3: $00
    ld h, b                                       ; $6AD4: $60
    nop                                           ; $6AD5: $00
    and b                                         ; $6AD6: $A0
    ld b, b                                       ; $6AD7: $40
    and b                                         ; $6AD8: $A0
    ld b, b                                       ; $6AD9: $40
    ret nz                                        ; $6ADA: $C0

    nop                                           ; $6ADB: $00
    rst RST_08                                    ; $6ADC: $CF
    nop                                           ; $6ADD: $00
    ld a, [hl]                                    ; $6ADE: $7E
    add a                                         ; $6ADF: $87
    rst RST_18                                    ; $6AE0: $DF
    ld a, [hl+]                                   ; $6AE1: $2A
    rst RST_38                                    ; $6AE2: $FF
    adc $FF                                       ; $6AE3: $CE $FF
    rst RST_38                                    ; $6AE5: $FF
    rst RST_38                                    ; $6AE6: $FF
    rst RST_38                                    ; $6AE7: $FF
    rst RST_38                                    ; $6AE8: $FF
    rst RST_38                                    ; $6AE9: $FF
    rst RST_38                                    ; $6AEA: $FF
    add l                                         ; $6AEB: $85
    rst RST_08                                    ; $6AEC: $CF
    inc b                                         ; $6AED: $04
    ld c, $04                                     ; $6AEE: $0E $04
    inc e                                         ; $6AF0: $1C
    ld [$0018], sp                                ; $6AF1: $08 $18 $00
    nop                                           ; $6AF4: $00
    nop                                           ; $6AF5: $00
    nop                                           ; $6AF6: $00
    nop                                           ; $6AF7: $00
    nop                                           ; $6AF8: $00
    nop                                           ; $6AF9: $00
    nop                                           ; $6AFA: $00
    nop                                           ; $6AFB: $00
    nop                                           ; $6AFC: $00
    nop                                           ; $6AFD: $00
    nop                                           ; $6AFE: $00
    nop                                           ; $6AFF: $00
    rst RST_38                                    ; $6B00: $FF
    ld bc, $1BE7                                  ; $6B01: $01 $E7 $1B
    rst RST_00                                    ; $6B04: $C7
    dec sp                                        ; $6B05: $3B
    rst RST_00                                    ; $6B06: $C7
    cp e                                          ; $6B07: $BB
    rst RST_00                                    ; $6B08: $C7
    cp e                                          ; $6B09: $BB
    rst RST_38                                    ; $6B0A: $FF
    add e                                         ; $6B0B: $83
    jp Jump_000_0101                              ; $6B0C: $C3 $01 $01


    nop                                           ; $6B0F: $00
    nop                                           ; $6B10: $00
    nop                                           ; $6B11: $00
    nop                                           ; $6B12: $00
    nop                                           ; $6B13: $00
    nop                                           ; $6B14: $00
    nop                                           ; $6B15: $00
    nop                                           ; $6B16: $00
    nop                                           ; $6B17: $00
    nop                                           ; $6B18: $00
    nop                                           ; $6B19: $00
    nop                                           ; $6B1A: $00
    nop                                           ; $6B1B: $00
    nop                                           ; $6B1C: $00
    nop                                           ; $6B1D: $00
    nop                                           ; $6B1E: $00
    nop                                           ; $6B1F: $00
    or $E9                                        ; $6B20: $F6 $E9
    rst RST_38                                    ; $6B22: $FF
    ret nc                                        ; $6B23: $D0

    ld sp, hl                                     ; $6B24: $F9
    add $F9                                       ; $6B25: $C6 $F9
    or [hl]                                       ; $6B27: $B6
    cp $71                                        ; $6B28: $FE $71
    rst RST_38                                    ; $6B2A: $FF
    ld [hl], a                                    ; $6B2B: $77
    rst RST_38                                    ; $6B2C: $FF
    ld b, b                                       ; $6B2D: $40
    rst RST_38                                    ; $6B2E: $FF
    ld a, $7F                                     ; $6B2F: $3E $7F
    inc hl                                        ; $6B31: $23
    scf                                           ; $6B32: $37
    ld [$0B17], sp                                ; $6B33: $08 $17 $0B
    rra                                           ; $6B36: $1F
    nop                                           ; $6B37: $00
    ccf                                           ; $6B38: $3F
    rrca                                          ; $6B39: $0F
    ld c, a                                       ; $6B3A: $4F
    ld [hl], $4E                                  ; $6B3B: $36 $4E
    dec [hl]                                      ; $6B3D: $35
    ld c, [hl]                                    ; $6B3E: $4E
    ld sp, $4FFF                                  ; $6B3F: $31 $FF $4F
    rst RST_38                                    ; $6B42: $FF
    adc a                                         ; $6B43: $8F
    rst RST_38                                    ; $6B44: $FF
    ld c, a                                       ; $6B45: $4F
    rst RST_38                                    ; $6B46: $FF
    adc a                                         ; $6B47: $8F
    rst RST_38                                    ; $6B48: $FF
    and c                                         ; $6B49: $A1
    rst RST_38                                    ; $6B4A: $FF
    or b                                          ; $6B4B: $B0
    db $FC                                        ; $6B4C: $FC
    ld [hl], e                                    ; $6B4D: $73
    ei                                            ; $6B4E: $FB
    ld [hl], h                                    ; $6B4F: $74
    cp $81                                        ; $6B50: $FE $81
    push af                                       ; $6B52: $F5
    ldh [c], a                                    ; $6B53: $E2
    and $00                                       ; $6B54: $E6 $00
    ret nz                                        ; $6B56: $C0

    nop                                           ; $6B57: $00
    ldh [$FFC0], a                                ; $6B58: $E0 $C0
    pop hl                                        ; $6B5A: $E1
    nop                                           ; $6B5B: $00
    ld [de], a                                    ; $6B5C: $12
    pop hl                                        ; $6B5D: $E1
    ld [de], a                                    ; $6B5E: $12
    pop hl                                        ; $6B5F: $E1
    ld bc, $0300                                  ; $6B60: $01 $00 $03
    ld bc, $0107                                  ; $6B63: $01 $07 $01
    dec bc                                        ; $6B66: $0B
    inc b                                         ; $6B67: $04
    inc b                                         ; $6B68: $04
    inc bc                                        ; $6B69: $03
    inc bc                                        ; $6B6A: $03
    nop                                           ; $6B6B: $00
    ld bc, $0100                                  ; $6B6C: $01 $00 $01
    nop                                           ; $6B6F: $00
    inc bc                                        ; $6B70: $03
    nop                                           ; $6B71: $00
    rrca                                          ; $6B72: $0F
    ld [bc], a                                    ; $6B73: $02
    inc sp                                        ; $6B74: $33
    rrca                                          ; $6B75: $0F
    ld b, a                                       ; $6B76: $47
    ccf                                           ; $6B77: $3F
    ld a, a                                       ; $6B78: $7F
    nop                                           ; $6B79: $00
    nop                                           ; $6B7A: $00
    nop                                           ; $6B7B: $00
    nop                                           ; $6B7C: $00
    nop                                           ; $6B7D: $00
    nop                                           ; $6B7E: $00
    nop                                           ; $6B7F: $00
    nop                                           ; $6B80: $00
    nop                                           ; $6B81: $00
    nop                                           ; $6B82: $00
    nop                                           ; $6B83: $00
    nop                                           ; $6B84: $00
    nop                                           ; $6B85: $00
    nop                                           ; $6B86: $00
    nop                                           ; $6B87: $00
    nop                                           ; $6B88: $00
    nop                                           ; $6B89: $00
    nop                                           ; $6B8A: $00
    nop                                           ; $6B8B: $00
    ldh [rP1], a                                  ; $6B8C: $E0 $00
    sub b                                         ; $6B8E: $90
    ldh [$FF88], a                                ; $6B8F: $E0 $88
    ldh a, [$FFC8]                                ; $6B91: $F0 $C8
    ldh a, [$FFA4]                                ; $6B93: $F0 $A4
    ld hl, sp-$3C                                 ; $6B95: $F8 $C4
    ld hl, sp-$16                                 ; $6B97: $F8 $EA
    db $FC                                        ; $6B99: $FC
    or $FC                                        ; $6B9A: $F6 $FC
    rst RST_38                                    ; $6B9C: $FF
    ld a, [hl]                                    ; $6B9D: $7E
    rst RST_38                                    ; $6B9E: $FF
    ld a, [hl]                                    ; $6B9F: $7E
    ld a, a                                       ; $6BA0: $7F
    cp [hl]                                       ; $6BA1: $BE
    rst RST_38                                    ; $6BA2: $FF
    ld a, $7F                                     ; $6BA3: $3E $7F
    ld a, $7F                                     ; $6BA5: $3E $7F
    jr nz, jr_01A_6C24                            ; $6BA7: $20 $7B

    inc b                                         ; $6BA9: $04
    adc d                                         ; $6BAA: $8A
    ld [hl], h                                    ; $6BAB: $74
    ld b, $F8                                     ; $6BAC: $06 $F8
    call nz, $E438                                ; $6BAE: $C4 $38 $E4
    jr @+$2C                                      ; $6BB1: $18 $2A

    inc d                                         ; $6BB3: $14
    ld a, [hl+]                                   ; $6BB4: $2A
    inc d                                         ; $6BB5: $14
    ld d, h                                       ; $6BB6: $54
    jr z, jr_01A_6C21                             ; $6BB7: $28 $68

    nop                                           ; $6BB9: $00
    nop                                           ; $6BBA: $00
    nop                                           ; $6BBB: $00
    nop                                           ; $6BBC: $00
    nop                                           ; $6BBD: $00
    nop                                           ; $6BBE: $00
    nop                                           ; $6BBF: $00

jr_01A_6BC0:
    add d                                         ; $6BC0: $82
    ld a, l                                       ; $6BC1: $7D
    add d                                         ; $6BC2: $82
    ld a, l                                       ; $6BC3: $7D
    push hl                                       ; $6BC4: $E5
    jr jr_01A_6BC0                                ; $6BC5: $18 $F9

    ret nz                                        ; $6BC7: $C0

    ld sp, hl                                     ; $6BC8: $F9
    ldh a, [$FFFD]                                ; $6BC9: $F0 $FD
    ld hl, sp-$04                                 ; $6BCB: $F8 $FC
    ld a, b                                       ; $6BCD: $78
    ld hl, sp+$00                                 ; $6BCE: $F8 $00
    ld [hl], b                                    ; $6BD0: $70
    ldh [rSVBK], a                                ; $6BD1: $E0 $70
    ldh [$FFF8], a                                ; $6BD3: $E0 $F8
    ret nz                                        ; $6BD5: $C0

    ld hl, sp+$10                                 ; $6BD6: $F8 $10
    ldh a, [$FFE0]                                ; $6BD8: $F0 $E0
    ldh a, [$FFE0]                                ; $6BDA: $F0 $E0
    ldh [rP1], a                                  ; $6BDC: $E0 $00
    nop                                           ; $6BDE: $00
    nop                                           ; $6BDF: $00
    ld a, [bc]                                    ; $6BE0: $0A
    pop af                                        ; $6BE1: $F1
    dec bc                                        ; $6BE2: $0B
    ldh a, [$FF7C]                                ; $6BE3: $F0 $7C
    add b                                         ; $6BE5: $80
    cp $7C                                        ; $6BE6: $FE $7C
    ld a, $EC                                     ; $6BE8: $3E $EC
    ld l, l                                       ; $6BEA: $6D
    sub d                                         ; $6BEB: $92
    and l                                         ; $6BEC: $A5
    ld e, d                                       ; $6BED: $5A
    sbc [hl]                                      ; $6BEE: $9E
    ld h, b                                       ; $6BEF: $60
    ld a, [hl]                                    ; $6BF0: $7E
    inc e                                         ; $6BF1: $1C
    ld l, $1C                                     ; $6BF2: $2E $1C

Call_01A_6BF4:
    ld d, $0C                                     ; $6BF4: $16 $0C
    rra                                           ; $6BF6: $1F
    nop                                           ; $6BF7: $00
    rra                                           ; $6BF8: $1F
    rrca                                          ; $6BF9: $0F
    ld de, $170F                                  ; $6BFA: $11 $0F $17
    rrca                                          ; $6BFD: $0F
    rra                                           ; $6BFE: $1F
    nop                                           ; $6BFF: $00
    ret nz                                        ; $6C00: $C0

    nop                                           ; $6C01: $00
    ldh [$FFC0], a                                ; $6C02: $E0 $C0
    ldh [$FFC0], a                                ; $6C04: $E0 $C0
    ldh [rP1], a                                  ; $6C06: $E0 $00
    nop                                           ; $6C08: $00
    nop                                           ; $6C09: $00
    nop                                           ; $6C0A: $00
    nop                                           ; $6C0B: $00
    nop                                           ; $6C0C: $00
    nop                                           ; $6C0D: $00
    nop                                           ; $6C0E: $00
    nop                                           ; $6C0F: $00
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
    nop                                           ; $6C20: $00

jr_01A_6C21:
    nop                                           ; $6C21: $00
    nop                                           ; $6C22: $00
    nop                                           ; $6C23: $00

jr_01A_6C24:
    ccf                                           ; $6C24: $3F
    nop                                           ; $6C25: $00
    jr nz, jr_01A_6C47                            ; $6C26: $20 $1F

    inc e                                         ; $6C28: $1C
    inc bc                                        ; $6C29: $03
    inc bc                                        ; $6C2A: $03
    nop                                           ; $6C2B: $00
    nop                                           ; $6C2C: $00
    nop                                           ; $6C2D: $00
    nop                                           ; $6C2E: $00
    nop                                           ; $6C2F: $00
    jr nc, jr_01A_6C32                            ; $6C30: $30 $00

jr_01A_6C32:
    cpl                                           ; $6C32: $2F
    db $10                                        ; $6C33: $10
    inc de                                        ; $6C34: $13
    dec c                                         ; $6C35: $0D
    inc de                                        ; $6C36: $13
    dec c                                         ; $6C37: $0D
    dec bc                                        ; $6C38: $0B
    dec b                                         ; $6C39: $05
    rlca                                          ; $6C3A: $07
    ld bc, $0001                                  ; $6C3B: $01 $01 $00
    nop                                           ; $6C3E: $00
    nop                                           ; $6C3F: $00
    dec bc                                        ; $6C40: $0B
    ld b, $FE                                     ; $6C41: $06 $FE
    ld bc, $FD03                                  ; $6C43: $01 $03 $FD
    rst RST_38                                    ; $6C46: $FF

jr_01A_6C47:
    ld a, h                                       ; $6C47: $7C
    ld a, [hl]                                    ; $6C48: $7E
    ld bc, $137F                                  ; $6C49: $01 $7F $13
    sbc $37                                       ; $6C4C: $DE $37
    db $FC                                        ; $6C4E: $FC
    rst RST_08                                    ; $6C4F: $CF
    rst RST_38                                    ; $6C50: $FF
    rst RST_38                                    ; $6C51: $FF
    rst RST_38                                    ; $6C52: $FF
    ccf                                           ; $6C53: $3F
    rst RST_38                                    ; $6C54: $FF
    ld [hl], b                                    ; $6C55: $70
    rst RST_30                                    ; $6C56: $F7
    jp $87CF                                      ; $6C57: $C3 $CF $87


    rst RST_18                                    ; $6C5A: $DF
    ld b, $3E                                     ; $6C5B: $06 $3E
    jr jr_01A_6C77                                ; $6C5D: $18 $18

    nop                                           ; $6C5F: $00
    add b                                         ; $6C60: $80
    nop                                           ; $6C61: $00
    pop bc                                        ; $6C62: $C1
    nop                                           ; $6C63: $00
    db $E3                                        ; $6C64: $E3
    ld b, c                                       ; $6C65: $41
    daa                                           ; $6C66: $27
    jp $E377                                      ; $6C67: $C3 $77 $E3


    rst RST_38                                    ; $6C6A: $FF
    jp Jump_000_2BD7                              ; $6C6B: $C3 $D7 $2B


    inc de                                        ; $6C6E: $13
    db $ED                                        ; $6C6F: $ED
    ld a, e                                       ; $6C70: $7B
    push af                                       ; $6C71: $F5
    ei                                            ; $6C72: $FB
    db $F4                                        ; $6C73: $F4
    ld a, h                                       ; $6C74: $7C
    ld hl, sp-$04                                 ; $6C75: $F8 $FC

jr_01A_6C77:
    ret nz                                        ; $6C77: $C0

    ldh [$FFC0], a                                ; $6C78: $E0 $C0
    ldh a, [$FFE0]                                ; $6C7A: $F0 $E0
    ldh a, [$FFE0]                                ; $6C7C: $F0 $E0
    ldh [rP1], a                                  ; $6C7E: $E0 $00
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
    ld b, $00                                     ; $6C90: $06 $00
    dec d                                         ; $6C92: $15
    ld [bc], a                                    ; $6C93: $02
    jr z, jr_01A_6CAD                             ; $6C94: $28 $17

    cpl                                           ; $6C96: $2F
    db $10                                        ; $6C97: $10
    db $10                                        ; $6C98: $10
    rrca                                          ; $6C99: $0F
    jr jr_01A_6CA3                                ; $6C9A: $18 $07

    daa                                           ; $6C9C: $27
    jr jr_01A_6CCC                                ; $6C9D: $18 $2D

    ld [de], a                                    ; $6C9F: $12
    nop                                           ; $6CA0: $00
    nop                                           ; $6CA1: $00
    nop                                           ; $6CA2: $00

jr_01A_6CA3:
    nop                                           ; $6CA3: $00
    nop                                           ; $6CA4: $00
    nop                                           ; $6CA5: $00
    nop                                           ; $6CA6: $00
    nop                                           ; $6CA7: $00
    nop                                           ; $6CA8: $00
    nop                                           ; $6CA9: $00
    nop                                           ; $6CAA: $00
    nop                                           ; $6CAB: $00
    nop                                           ; $6CAC: $00

jr_01A_6CAD:
    nop                                           ; $6CAD: $00
    nop                                           ; $6CAE: $00
    nop                                           ; $6CAF: $00
    inc bc                                        ; $6CB0: $03
    nop                                           ; $6CB1: $00
    dec b                                         ; $6CB2: $05
    ld [bc], a                                    ; $6CB3: $02
    adc c                                         ; $6CB4: $89
    ld b, $72                                     ; $6CB5: $06 $72
    adc h                                         ; $6CB7: $8C
    jp nz, $443C                                  ; $6CB8: $C2 $3C $44

    cp b                                          ; $6CBB: $B8
    cpl                                           ; $6CBC: $2F
    ret nc                                        ; $6CBD: $D0

    sbc $27                                       ; $6CBE: $DE $27
    rst RST_30                                    ; $6CC0: $F7
    dec bc                                        ; $6CC1: $0B
    ei                                            ; $6CC2: $FB
    call nc, $C1FE                                ; $6CC3: $D4 $FE $C1
    rst RST_38                                    ; $6CC6: $FF
    or [hl]                                       ; $6CC7: $B6
    db $FC                                        ; $6CC8: $FC
    ld [hl], a                                    ; $6CC9: $77
    rst RST_38                                    ; $6CCA: $FF
    ld [hl], a                                    ; $6CCB: $77

jr_01A_6CCC:
    rst RST_38                                    ; $6CCC: $FF
    ld b, b                                       ; $6CCD: $40
    rst RST_38                                    ; $6CCE: $FF
    cp [hl]                                       ; $6CCF: $BE
    rst RST_38                                    ; $6CD0: $FF
    inc hl                                        ; $6CD1: $23
    ld [hl], a                                    ; $6CD2: $77
    ld [$0B17], sp                                ; $6CD3: $08 $17 $0B
    rra                                           ; $6CD6: $1F
    nop                                           ; $6CD7: $00
    ccf                                           ; $6CD8: $3F
    rrca                                          ; $6CD9: $0F
    ld c, a                                       ; $6CDA: $4F
    ld [hl], $4E                                  ; $6CDB: $36 $4E
    dec [hl]                                      ; $6CDD: $35
    ld c, [hl]                                    ; $6CDE: $4E
    ld sp, $8FFF                                  ; $6CDF: $31 $FF $8F
    rst RST_38                                    ; $6CE2: $FF
    rrca                                          ; $6CE3: $0F
    ccf                                           ; $6CE4: $3F
    rst RST_08                                    ; $6CE5: $CF
    cp a                                          ; $6CE6: $BF
    ld c, a                                       ; $6CE7: $4F
    rst RST_38                                    ; $6CE8: $FF
    add c                                         ; $6CE9: $81
    rst RST_38                                    ; $6CEA: $FF
    or b                                          ; $6CEB: $B0
    db $FC                                        ; $6CEC: $FC
    ld [hl], e                                    ; $6CED: $73
    ei                                            ; $6CEE: $FB
    ld [hl], h                                    ; $6CEF: $74
    cp $81                                        ; $6CF0: $FE $81
    push af                                       ; $6CF2: $F5
    ldh [c], a                                    ; $6CF3: $E2
    and $00                                       ; $6CF4: $E6 $00
    ret nz                                        ; $6CF6: $C0

    nop                                           ; $6CF7: $00
    ldh [$FFC0], a                                ; $6CF8: $E0 $C0
    pop hl                                        ; $6CFA: $E1
    nop                                           ; $6CFB: $00
    ld [de], a                                    ; $6CFC: $12
    pop hl                                        ; $6CFD: $E1
    ld [de], a                                    ; $6CFE: $12
    pop hl                                        ; $6CFF: $E1
    ret nz                                        ; $6D00: $C0

    add b                                         ; $6D01: $80
    add b                                         ; $6D02: $80
    nop                                           ; $6D03: $00
    nop                                           ; $6D04: $00
    nop                                           ; $6D05: $00
    ld bc, $0300                                  ; $6D06: $01 $00 $03
    ld bc, $0107                                  ; $6D09: $01 $07 $01
    dec bc                                        ; $6D0C: $0B
    inc b                                         ; $6D0D: $04
    inc b                                         ; $6D0E: $04
    inc bc                                        ; $6D0F: $03
    inc bc                                        ; $6D10: $03
    nop                                           ; $6D11: $00
    ld bc, $0100                                  ; $6D12: $01 $00 $01
    nop                                           ; $6D15: $00
    inc bc                                        ; $6D16: $03
    nop                                           ; $6D17: $00
    rrca                                          ; $6D18: $0F
    ld [bc], a                                    ; $6D19: $02
    inc sp                                        ; $6D1A: $33
    rrca                                          ; $6D1B: $0F
    ld b, a                                       ; $6D1C: $47
    ccf                                           ; $6D1D: $3F
    ld a, a                                       ; $6D1E: $7F
    nop                                           ; $6D1F: $00
    nop                                           ; $6D20: $00
    nop                                           ; $6D21: $00
    nop                                           ; $6D22: $00
    nop                                           ; $6D23: $00
    nop                                           ; $6D24: $00
    nop                                           ; $6D25: $00
    nop                                           ; $6D26: $00
    nop                                           ; $6D27: $00
    nop                                           ; $6D28: $00
    nop                                           ; $6D29: $00
    nop                                           ; $6D2A: $00
    nop                                           ; $6D2B: $00
    nop                                           ; $6D2C: $00
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
    inc bc                                        ; $6D38: $03
    nop                                           ; $6D39: $00
    inc b                                         ; $6D3A: $04
    inc bc                                        ; $6D3B: $03
    dec b                                         ; $6D3C: $05
    inc bc                                        ; $6D3D: $03
    dec bc                                        ; $6D3E: $0B
    ld b, $00                                     ; $6D3F: $06 $00
    nop                                           ; $6D41: $00
    nop                                           ; $6D42: $00
    nop                                           ; $6D43: $00
    nop                                           ; $6D44: $00
    nop                                           ; $6D45: $00
    nop                                           ; $6D46: $00
    nop                                           ; $6D47: $00
    ld bc, $0600                                  ; $6D48: $01 $00 $06
    ld bc, $060B                                  ; $6D4B: $01 $0B $06
    dec de                                        ; $6D4E: $1B
    ld b, $2F                                     ; $6D4F: $06 $2F
    ld a, [de]                                    ; $6D51: $1A
    scf                                           ; $6D52: $37
    dec c                                         ; $6D53: $0D
    cpl                                           ; $6D54: $2F
    ld [de], a                                    ; $6D55: $12
    rra                                           ; $6D56: $1F
    ld [$0609], sp                                ; $6D57: $08 $09 $06
    add hl, bc                                    ; $6D5A: $09
    ld b, $13                                     ; $6D5B: $06 $13
    inc c                                         ; $6D5D: $0C
    ld h, $19                                     ; $6D5E: $26 $19
    ld bc, $0300                                  ; $6D60: $01 $00 $03
    ld bc, $0307                                  ; $6D63: $01 $07 $03
    rlca                                          ; $6D66: $07
    inc bc                                        ; $6D67: $03
    rst RST_38                                    ; $6D68: $FF
    inc bc                                        ; $6D69: $03
    ld b, a                                       ; $6D6A: $47
    cp c                                          ; $6D6B: $B9
    ld d, l                                       ; $6D6C: $55
    cp d                                          ; $6D6D: $BA
    ld e, e                                       ; $6D6E: $5B
    or a                                          ; $6D6F: $B7
    rst RST_38                                    ; $6D70: $FF
    or a                                          ; $6D71: $B7
    rst RST_38                                    ; $6D72: $FF
    adc [hl]                                      ; $6D73: $8E
    sbc a                                         ; $6D74: $9F
    ld l, h                                       ; $6D75: $6C
    sub a                                         ; $6D76: $97
    ld l, a                                       ; $6D77: $6F
    rla                                           ; $6D78: $17
    rst RST_28                                    ; $6D79: $EF
    ccf                                           ; $6D7A: $3F
    adc $5F                                       ; $6D7B: $CE $5F
    xor h                                         ; $6D7D: $AC
    ld a, a                                       ; $6D7E: $7F
    sbc d                                         ; $6D7F: $9A
    rst RST_30                                    ; $6D80: $F7
    dec bc                                        ; $6D81: $0B
    ei                                            ; $6D82: $FB
    call nc, $C1FE                                ; $6D83: $D4 $FE $C1
    rst RST_38                                    ; $6D86: $FF
    or [hl]                                       ; $6D87: $B6
    db $FC                                        ; $6D88: $FC
    ld [hl], a                                    ; $6D89: $77
    rst RST_38                                    ; $6D8A: $FF
    ld [hl], a                                    ; $6D8B: $77
    rst RST_38                                    ; $6D8C: $FF
    ld b, b                                       ; $6D8D: $40
    rst RST_38                                    ; $6D8E: $FF
    ld a, $FF                                     ; $6D8F: $3E $FF
    inc hl                                        ; $6D91: $23
    ld [hl], a                                    ; $6D92: $77
    adc b                                         ; $6D93: $88
    sub a                                         ; $6D94: $97
    dec bc                                        ; $6D95: $0B
    sbc a                                         ; $6D96: $9F
    nop                                           ; $6D97: $00
    cp a                                          ; $6D98: $BF
    rrca                                          ; $6D99: $0F
    rst RST_08                                    ; $6D9A: $CF
    ld [hl], $4E                                  ; $6D9B: $36 $4E
    dec [hl]                                      ; $6D9D: $35
    ld c, [hl]                                    ; $6D9E: $4E
    ld sp, $8FFF                                  ; $6D9F: $31 $FF $8F
    rst RST_38                                    ; $6DA2: $FF
    rrca                                          ; $6DA3: $0F
    ccf                                           ; $6DA4: $3F
    rst RST_08                                    ; $6DA5: $CF
    cp a                                          ; $6DA6: $BF
    ld c, a                                       ; $6DA7: $4F
    rst RST_38                                    ; $6DA8: $FF
    add c                                         ; $6DA9: $81
    rst RST_38                                    ; $6DAA: $FF
    or b                                          ; $6DAB: $B0
    db $FC                                        ; $6DAC: $FC
    ld [hl], e                                    ; $6DAD: $73
    ei                                            ; $6DAE: $FB
    ld [hl], h                                    ; $6DAF: $74
    cp $81                                        ; $6DB0: $FE $81
    push af                                       ; $6DB2: $F5
    ldh [c], a                                    ; $6DB3: $E2
    and $00                                       ; $6DB4: $E6 $00
    ret nz                                        ; $6DB6: $C0

    nop                                           ; $6DB7: $00
    ldh [$FFC0], a                                ; $6DB8: $E0 $C0
    pop hl                                        ; $6DBA: $E1
    nop                                           ; $6DBB: $00
    ld [de], a                                    ; $6DBC: $12
    pop hl                                        ; $6DBD: $E1
    ld [de], a                                    ; $6DBE: $12
    pop hl                                        ; $6DBF: $E1
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
    nop                                           ; $6DCA: $00
    nop                                           ; $6DCB: $00
    nop                                           ; $6DCC: $00
    nop                                           ; $6DCD: $00
    nop                                           ; $6DCE: $00
    nop                                           ; $6DCF: $00
    ld b, $00                                     ; $6DD0: $06 $00
    dec d                                         ; $6DD2: $15
    ld [bc], a                                    ; $6DD3: $02
    jr z, jr_01A_6DED                             ; $6DD4: $28 $17

    cpl                                           ; $6DD6: $2F
    db $10                                        ; $6DD7: $10
    db $10                                        ; $6DD8: $10
    rrca                                          ; $6DD9: $0F
    jr jr_01A_6DE3                                ; $6DDA: $18 $07

    daa                                           ; $6DDC: $27
    jr jr_01A_6E0C                                ; $6DDD: $18 $2D

    ld [de], a                                    ; $6DDF: $12
    nop                                           ; $6DE0: $00
    nop                                           ; $6DE1: $00
    nop                                           ; $6DE2: $00

jr_01A_6DE3:
    nop                                           ; $6DE3: $00
    nop                                           ; $6DE4: $00
    nop                                           ; $6DE5: $00
    nop                                           ; $6DE6: $00
    nop                                           ; $6DE7: $00
    nop                                           ; $6DE8: $00
    nop                                           ; $6DE9: $00
    nop                                           ; $6DEA: $00
    nop                                           ; $6DEB: $00
    nop                                           ; $6DEC: $00

jr_01A_6DED:
    nop                                           ; $6DED: $00
    nop                                           ; $6DEE: $00
    nop                                           ; $6DEF: $00
    inc bc                                        ; $6DF0: $03
    nop                                           ; $6DF1: $00
    dec b                                         ; $6DF2: $05
    ld [bc], a                                    ; $6DF3: $02
    adc c                                         ; $6DF4: $89
    ld b, $72                                     ; $6DF5: $06 $72
    adc h                                         ; $6DF7: $8C
    jp nz, $443C                                  ; $6DF8: $C2 $3C $44

    cp b                                          ; $6DFB: $B8
    cpl                                           ; $6DFC: $2F
    ret nc                                        ; $6DFD: $D0

    sbc $27                                       ; $6DFE: $DE $27
    rst RST_38                                    ; $6E00: $FF
    ld [hl], $FE                                  ; $6E01: $36 $FE
    ld [hl], h                                    ; $6E03: $74
    rst RST_38                                    ; $6E04: $FF
    ld l, h                                       ; $6E05: $6C
    rst RST_38                                    ; $6E06: $FF
    ld l, c                                       ; $6E07: $69
    rst RST_38                                    ; $6E08: $FF
    ld [hl], c                                    ; $6E09: $71
    ei                                            ; $6E0A: $FB
    inc b                                         ; $6E0B: $04

jr_01A_6E0C:
    inc b                                         ; $6E0C: $04
    inc bc                                        ; $6E0D: $03
    inc bc                                        ; $6E0E: $03
    nop                                           ; $6E0F: $00
    ld bc, $0100                                  ; $6E10: $01 $00 $01
    nop                                           ; $6E13: $00
    inc bc                                        ; $6E14: $03
    nop                                           ; $6E15: $00
    rrca                                          ; $6E16: $0F
    ld [bc], a                                    ; $6E17: $02
    inc sp                                        ; $6E18: $33
    rrca                                          ; $6E19: $0F
    ld b, a                                       ; $6E1A: $47
    ccf                                           ; $6E1B: $3F
    ld a, a                                       ; $6E1C: $7F
    nop                                           ; $6E1D: $00
    nop                                           ; $6E1E: $00
    nop                                           ; $6E1F: $00
    ld c, d                                       ; $6E20: $4A
    ld sp, $42B5                                  ; $6E21: $31 $B5 $42
    rst RST_00                                    ; $6E24: $C7
    nop                                           ; $6E25: $00
    inc b                                         ; $6E26: $04
    inc bc                                        ; $6E27: $03
    ld [$0F07], sp                                ; $6E28: $08 $07 $0F
    nop                                           ; $6E2B: $00
    nop                                           ; $6E2C: $00
    nop                                           ; $6E2D: $00
    nop                                           ; $6E2E: $00
    nop                                           ; $6E2F: $00
    nop                                           ; $6E30: $00
    nop                                           ; $6E31: $00
    nop                                           ; $6E32: $00
    nop                                           ; $6E33: $00
    nop                                           ; $6E34: $00
    nop                                           ; $6E35: $00
    nop                                           ; $6E36: $00
    nop                                           ; $6E37: $00
    nop                                           ; $6E38: $00
    nop                                           ; $6E39: $00
    nop                                           ; $6E3A: $00
    nop                                           ; $6E3B: $00
    nop                                           ; $6E3C: $00
    nop                                           ; $6E3D: $00
    nop                                           ; $6E3E: $00
    nop                                           ; $6E3F: $00
    ld a, a                                       ; $6E40: $7F
    nop                                           ; $6E41: $00
    add b                                         ; $6E42: $80
    ld a, a                                       ; $6E43: $7F
    sub d                                         ; $6E44: $92
    ld l, l                                       ; $6E45: $6D
    sub d                                         ; $6E46: $92
    ld l, l                                       ; $6E47: $6D
    cp a                                          ; $6E48: $BF
    ld b, b                                       ; $6E49: $40
    sub d                                         ; $6E4A: $92
    ld l, l                                       ; $6E4B: $6D
    sub d                                         ; $6E4C: $92
    ld l, l                                       ; $6E4D: $6D
    add d                                         ; $6E4E: $82
    ld a, l                                       ; $6E4F: $7D
    add h                                         ; $6E50: $84
    ld a, e                                       ; $6E51: $7B
    sbc b                                         ; $6E52: $98
    ld h, a                                       ; $6E53: $67
    add b                                         ; $6E54: $80
    ld a, a                                       ; $6E55: $7F
    ld h, c                                       ; $6E56: $61
    ld e, $11                                     ; $6E57: $1E $11
    ld c, $09                                     ; $6E59: $0E $09
    ld b, $05                                     ; $6E5B: $06 $05
    ld [bc], a                                    ; $6E5D: $02
    inc bc                                        ; $6E5E: $03
    nop                                           ; $6E5F: $00
    rst RST_38                                    ; $6E60: $FF
    nop                                           ; $6E61: $00
    nop                                           ; $6E62: $00
    rst RST_38                                    ; $6E63: $FF
    ret nz                                        ; $6E64: $C0

    ccf                                           ; $6E65: $3F
    rra                                           ; $6E66: $1F
    ldh [$FF80], a                                ; $6E67: $E0 $80
    ld a, a                                       ; $6E69: $7F
    nop                                           ; $6E6A: $00
    rst RST_38                                    ; $6E6B: $FF
    nop                                           ; $6E6C: $00
    rst RST_38                                    ; $6E6D: $FF
    nop                                           ; $6E6E: $00
    rst RST_38                                    ; $6E6F: $FF
    rra                                           ; $6E70: $1F
    ldh [rP1], a                                  ; $6E71: $E0 $00
    rst RST_38                                    ; $6E73: $FF
    nop                                           ; $6E74: $00
    rst RST_38                                    ; $6E75: $FF
    rst RST_38                                    ; $6E76: $FF
    nop                                           ; $6E77: $00
    nop                                           ; $6E78: $00
    nop                                           ; $6E79: $00
    nop                                           ; $6E7A: $00
    nop                                           ; $6E7B: $00
    nop                                           ; $6E7C: $00
    nop                                           ; $6E7D: $00
    nop                                           ; $6E7E: $00
    nop                                           ; $6E7F: $00
    rst RST_38                                    ; $6E80: $FF
    nop                                           ; $6E81: $00
    nop                                           ; $6E82: $00
    rst RST_38                                    ; $6E83: $FF
    ld [$88F7], sp                                ; $6E84: $08 $F7 $88
    ld [hl], a                                    ; $6E87: $77
    sbc [hl]                                      ; $6E88: $9E
    ld h, c                                       ; $6E89: $61
    adc c                                         ; $6E8A: $89
    halt                                          ; $6E8B: $76
    adc c                                         ; $6E8C: $89
    halt                                          ; $6E8D: $76
    adc c                                         ; $6E8E: $89
    halt                                          ; $6E8F: $76
    sub c                                         ; $6E90: $91
    ld l, [hl]                                    ; $6E91: $6E
    ld d, $E9                                     ; $6E92: $16 $E9
    nop                                           ; $6E94: $00
    rst RST_38                                    ; $6E95: $FF
    rst RST_38                                    ; $6E96: $FF
    nop                                           ; $6E97: $00
    nop                                           ; $6E98: $00
    nop                                           ; $6E99: $00
    nop                                           ; $6E9A: $00
    nop                                           ; $6E9B: $00
    nop                                           ; $6E9C: $00
    nop                                           ; $6E9D: $00
    nop                                           ; $6E9E: $00
    nop                                           ; $6E9F: $00
    cp $00                                        ; $6EA0: $FE $00
    ld bc, $61FE                                  ; $6EA2: $01 $FE $61
    sbc [hl]                                      ; $6EA5: $9E
    adc l                                         ; $6EA6: $8D
    ld [hl], d                                    ; $6EA7: $72
    ld c, l                                       ; $6EA8: $4D
    or d                                          ; $6EA9: $B2
    ld c, l                                       ; $6EAA: $4D
    or d                                          ; $6EAB: $B2
    dec l                                         ; $6EAC: $2D
    jp nc, $DE21                                  ; $6EAD: $D2 $21 $DE

    dec c                                         ; $6EB0: $0D
    ldh a, [c]                                    ; $6EB1: $F2
    dec c                                         ; $6EB2: $0D
    ldh a, [c]                                    ; $6EB3: $F2
    ld bc, $FEFE                                  ; $6EB4: $01 $FE $FE
    nop                                           ; $6EB7: $00
    nop                                           ; $6EB8: $00
    nop                                           ; $6EB9: $00
    nop                                           ; $6EBA: $00
    nop                                           ; $6EBB: $00
    nop                                           ; $6EBC: $00
    nop                                           ; $6EBD: $00
    nop                                           ; $6EBE: $00
    nop                                           ; $6EBF: $00
    ld bc, $0600                                  ; $6EC0: $01 $00 $06
    ld bc, $060B                                  ; $6EC3: $01 $0B $06
    dec de                                        ; $6EC6: $1B
    ld b, $2F                                     ; $6EC7: $06 $2F
    ld a, [de]                                    ; $6EC9: $1A
    scf                                           ; $6ECA: $37
    dec c                                         ; $6ECB: $0D
    cpl                                           ; $6ECC: $2F
    ld [de], a                                    ; $6ECD: $12
    rra                                           ; $6ECE: $1F
    ld [$0609], sp                                ; $6ECF: $08 $09 $06
    add hl, bc                                    ; $6ED2: $09
    ld b, $13                                     ; $6ED3: $06 $13
    inc c                                         ; $6ED5: $0C
    ld h, $19                                     ; $6ED6: $26 $19
    ld c, d                                       ; $6ED8: $4A
    ld sp, $42B5                                  ; $6ED9: $31 $B5 $42
    rst RST_00                                    ; $6EDC: $C7
    nop                                           ; $6EDD: $00
    inc b                                         ; $6EDE: $04
    inc bc                                        ; $6EDF: $03
    ld bc, $0300                                  ; $6EE0: $01 $00 $03
    ld bc, $0307                                  ; $6EE3: $01 $07 $03
    rlca                                          ; $6EE6: $07
    inc bc                                        ; $6EE7: $03
    rst RST_38                                    ; $6EE8: $FF
    inc bc                                        ; $6EE9: $03
    ld b, a                                       ; $6EEA: $47
    cp c                                          ; $6EEB: $B9
    ld d, l                                       ; $6EEC: $55
    cp d                                          ; $6EED: $BA
    ld e, e                                       ; $6EEE: $5B
    or a                                          ; $6EEF: $B7
    rst RST_38                                    ; $6EF0: $FF
    or a                                          ; $6EF1: $B7
    rst RST_38                                    ; $6EF2: $FF
    adc [hl]                                      ; $6EF3: $8E
    sbc a                                         ; $6EF4: $9F
    ld l, h                                       ; $6EF5: $6C
    sub a                                         ; $6EF6: $97
    ld l, a                                       ; $6EF7: $6F
    rla                                           ; $6EF8: $17
    rst RST_28                                    ; $6EF9: $EF
    ccf                                           ; $6EFA: $3F
    adc $5F                                       ; $6EFB: $CE $5F
    xor h                                         ; $6EFD: $AC
    ld a, a                                       ; $6EFE: $7F
    sbc d                                         ; $6EFF: $9A
    ld b, $00                                     ; $6F00: $06 $00
    dec d                                         ; $6F02: $15
    ld [bc], a                                    ; $6F03: $02
    jr z, jr_01A_6F1D                             ; $6F04: $28 $17

    cpl                                           ; $6F06: $2F
    db $10                                        ; $6F07: $10
    db $10                                        ; $6F08: $10
    rrca                                          ; $6F09: $0F
    jr jr_01A_6F13                                ; $6F0A: $18 $07

    daa                                           ; $6F0C: $27
    jr jr_01A_6F3C                                ; $6F0D: $18 $2D

    ld [de], a                                    ; $6F0F: $12
    rst RST_30                                    ; $6F10: $F7
    dec bc                                        ; $6F11: $0B
    ei                                            ; $6F12: $FB

jr_01A_6F13:
    call nc, $C1FE                                ; $6F13: $D4 $FE $C1
    rst RST_38                                    ; $6F16: $FF
    or [hl]                                       ; $6F17: $B6
    db $FC                                        ; $6F18: $FC
    ld [hl], a                                    ; $6F19: $77
    rst RST_38                                    ; $6F1A: $FF
    ld [hl], a                                    ; $6F1B: $77
    rst RST_38                                    ; $6F1C: $FF

jr_01A_6F1D:
    ld b, b                                       ; $6F1D: $40
    rst RST_38                                    ; $6F1E: $FF
    ld a, $03                                     ; $6F1F: $3E $03
    nop                                           ; $6F21: $00
    dec b                                         ; $6F22: $05
    ld [bc], a                                    ; $6F23: $02
    adc c                                         ; $6F24: $89
    ld b, $72                                     ; $6F25: $06 $72
    adc h                                         ; $6F27: $8C
    jp nz, $443C                                  ; $6F28: $C2 $3C $44

    cp b                                          ; $6F2B: $B8
    cpl                                           ; $6F2C: $2F
    ret nc                                        ; $6F2D: $D0

    sbc $27                                       ; $6F2E: $DE $27
    rst RST_38                                    ; $6F30: $FF
    adc a                                         ; $6F31: $8F
    rst RST_38                                    ; $6F32: $FF
    rrca                                          ; $6F33: $0F
    ccf                                           ; $6F34: $3F
    rst RST_08                                    ; $6F35: $CF
    cp a                                          ; $6F36: $BF
    ld c, a                                       ; $6F37: $4F
    rst RST_38                                    ; $6F38: $FF
    add c                                         ; $6F39: $81
    rst RST_38                                    ; $6F3A: $FF
    or b                                          ; $6F3B: $B0

jr_01A_6F3C:
    db $FC                                        ; $6F3C: $FC
    ld [hl], e                                    ; $6F3D: $73
    ei                                            ; $6F3E: $FB
    ld [hl], h                                    ; $6F3F: $74
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
    ldh [rP1], a                                  ; $6F4C: $E0 $00
    sub b                                         ; $6F4E: $90
    ldh [$FF88], a                                ; $6F4F: $E0 $88
    ldh a, [$FFC8]                                ; $6F51: $F0 $C8
    ldh a, [$FFA4]                                ; $6F53: $F0 $A4
    ld hl, sp-$3C                                 ; $6F55: $F8 $C4
    ld hl, sp-$16                                 ; $6F57: $F8 $EA
    db $FC                                        ; $6F59: $FC
    or $FC                                        ; $6F5A: $F6 $FC
    rst RST_38                                    ; $6F5C: $FF
    ld a, [hl]                                    ; $6F5D: $7E
    rst RST_38                                    ; $6F5E: $FF
    ld a, [hl]                                    ; $6F5F: $7E
    rst RST_38                                    ; $6F60: $FF
    inc hl                                        ; $6F61: $23
    ld [hl], a                                    ; $6F62: $77
    adc b                                         ; $6F63: $88
    sub a                                         ; $6F64: $97
    dec bc                                        ; $6F65: $0B
    sbc a                                         ; $6F66: $9F
    nop                                           ; $6F67: $00
    cp a                                          ; $6F68: $BF
    rrca                                          ; $6F69: $0F
    rst RST_08                                    ; $6F6A: $CF
    ld [hl], $4E                                  ; $6F6B: $36 $4E
    dec [hl]                                      ; $6F6D: $35
    ld c, [hl]                                    ; $6F6E: $4E
    ld sp, $7D82                                  ; $6F6F: $31 $82 $7D
    add d                                         ; $6F72: $82
    ld a, l                                       ; $6F73: $7D
    push hl                                       ; $6F74: $E5
    jr @-$05                                      ; $6F75: $18 $F9

    ret nz                                        ; $6F77: $C0

    ld sp, hl                                     ; $6F78: $F9
    ldh a, [$FFFD]                                ; $6F79: $F0 $FD
    ld hl, sp-$04                                 ; $6F7B: $F8 $FC
    ld a, b                                       ; $6F7D: $78
    ld hl, sp+$00                                 ; $6F7E: $F8 $00
    cp $81                                        ; $6F80: $FE $81
    push af                                       ; $6F82: $F5
    ldh [c], a                                    ; $6F83: $E2
    and $00                                       ; $6F84: $E6 $00
    ret nz                                        ; $6F86: $C0

    nop                                           ; $6F87: $00
    ldh [$FFC0], a                                ; $6F88: $E0 $C0
    pop hl                                        ; $6F8A: $E1
    nop                                           ; $6F8B: $00
    ld [de], a                                    ; $6F8C: $12
    pop hl                                        ; $6F8D: $E1
    ld [de], a                                    ; $6F8E: $12
    pop hl                                        ; $6F8F: $E1
    ld a, [bc]                                    ; $6F90: $0A
    pop af                                        ; $6F91: $F1
    dec bc                                        ; $6F92: $0B
    ldh a, [$FF7C]                                ; $6F93: $F0 $7C
    add b                                         ; $6F95: $80
    cp $7C                                        ; $6F96: $FE $7C
    ld a, $EC                                     ; $6F98: $3E $EC
    ld l, l                                       ; $6F9A: $6D
    sub d                                         ; $6F9B: $92
    and l                                         ; $6F9C: $A5
    ld e, d                                       ; $6F9D: $5A
    sbc [hl]                                      ; $6F9E: $9E
    ld h, b                                       ; $6F9F: $60
    ld a, a                                       ; $6FA0: $7F
    cp [hl]                                       ; $6FA1: $BE
    rst RST_38                                    ; $6FA2: $FF
    ld a, $7F                                     ; $6FA3: $3E $7F
    ld a, $7F                                     ; $6FA5: $3E $7F
    jr nz, jr_01A_7024                            ; $6FA7: $20 $7B

    inc b                                         ; $6FA9: $04
    adc d                                         ; $6FAA: $8A
    ld [hl], h                                    ; $6FAB: $74
    ld b, $F8                                     ; $6FAC: $06 $F8
    call nz, $E438                                ; $6FAE: $C4 $38 $E4
    jr jr_01A_6FDD                                ; $6FB1: $18 $2A

    inc d                                         ; $6FB3: $14
    ld a, [hl+]                                   ; $6FB4: $2A
    inc d                                         ; $6FB5: $14
    ld d, h                                       ; $6FB6: $54
    jr z, jr_01A_7021                             ; $6FB7: $28 $68

    nop                                           ; $6FB9: $00
    nop                                           ; $6FBA: $00
    nop                                           ; $6FBB: $00
    nop                                           ; $6FBC: $00
    nop                                           ; $6FBD: $00
    nop                                           ; $6FBE: $00
    nop                                           ; $6FBF: $00
    xor a                                         ; $6FC0: $AF
    inc de                                        ; $6FC1: $13
    ld e, a                                       ; $6FC2: $5F
    daa                                           ; $6FC3: $27
    ld a, a                                       ; $6FC4: $7F
    ld b, $4F                                     ; $6FC5: $06 $4F
    ld [hl], $8F                                  ; $6FC7: $36 $8F
    ld [hl], a                                    ; $6FC9: $77
    rst RST_38                                    ; $6FCA: $FF
    nop                                           ; $6FCB: $00
    nop                                           ; $6FCC: $00
    nop                                           ; $6FCD: $00
    nop                                           ; $6FCE: $00
    nop                                           ; $6FCF: $00
    nop                                           ; $6FD0: $00
    nop                                           ; $6FD1: $00
    nop                                           ; $6FD2: $00
    nop                                           ; $6FD3: $00
    nop                                           ; $6FD4: $00
    nop                                           ; $6FD5: $00
    nop                                           ; $6FD6: $00
    nop                                           ; $6FD7: $00
    inc bc                                        ; $6FD8: $03
    nop                                           ; $6FD9: $00
    inc b                                         ; $6FDA: $04
    inc bc                                        ; $6FDB: $03
    rlca                                          ; $6FDC: $07

jr_01A_6FDD:
    nop                                           ; $6FDD: $00
    nop                                           ; $6FDE: $00
    nop                                           ; $6FDF: $00
    ld hl, sp+$67                                 ; $6FE0: $F8 $67
    add sp, $47                                   ; $6FE2: $E8 $47
    cp $C1                                        ; $6FE4: $FE $C1
    rst RST_38                                    ; $6FE6: $FF
    sbc h                                         ; $6FE7: $9C
    rst RST_38                                    ; $6FE8: $FF
    rra                                           ; $6FE9: $1F
    cp a                                          ; $6FEA: $BF
    ld c, a                                       ; $6FEB: $4F
    ld c, a                                       ; $6FEC: $4F
    scf                                           ; $6FED: $37
    ccf                                           ; $6FEE: $3F
    nop                                           ; $6FEF: $00
    rla                                           ; $6FF0: $17
    ld c, $17                                     ; $6FF1: $0E $17
    ld c, $3F                                     ; $6FF3: $0E $3F
    inc c                                         ; $6FF5: $0C
    rst RST_38                                    ; $6FF6: $FF
    ld hl, $FE3F                                  ; $6FF7: $21 $3F $FE
    ld a, a                                       ; $6FFA: $7F
    cp $FE                                        ; $6FFB: $FE $FE
    nop                                           ; $6FFD: $00
    nop                                           ; $6FFE: $00
    nop                                           ; $6FFF: $00
    ldh [$FFC0], a                                ; $7000: $E0 $C0
    ldh [$FFC0], a                                ; $7002: $E0 $C0
    ld h, b                                       ; $7004: $60
    ret nz                                        ; $7005: $C0

    ldh a, [rP1]                                  ; $7006: $F0 $00
    db $FC                                        ; $7008: $FC
    ldh a, [rNR34]                                ; $7009: $F0 $1E
    db $FC                                        ; $700B: $FC
    ld a, [hl]                                    ; $700C: $7E
    db $FC                                        ; $700D: $FC
    cp $00                                        ; $700E: $FE $00
    nop                                           ; $7010: $00
    nop                                           ; $7011: $00
    nop                                           ; $7012: $00
    nop                                           ; $7013: $00
    nop                                           ; $7014: $00
    nop                                           ; $7015: $00
    nop                                           ; $7016: $00
    nop                                           ; $7017: $00
    nop                                           ; $7018: $00
    nop                                           ; $7019: $00
    nop                                           ; $701A: $00
    nop                                           ; $701B: $00
    nop                                           ; $701C: $00
    nop                                           ; $701D: $00
    nop                                           ; $701E: $00
    nop                                           ; $701F: $00
    rlca                                          ; $7020: $07

jr_01A_7021:
    ld bc, $0102                                  ; $7021: $01 $02 $01

jr_01A_7024:
    add c                                         ; $7024: $81
    nop                                           ; $7025: $00
    add c                                         ; $7026: $81
    nop                                           ; $7027: $00
    ld bc, $0100                                  ; $7028: $01 $00 $01
    nop                                           ; $702B: $00
    ld bc, $0100                                  ; $702C: $01 $00 $01
    nop                                           ; $702F: $00
    nop                                           ; $7030: $00
    nop                                           ; $7031: $00
    nop                                           ; $7032: $00
    nop                                           ; $7033: $00
    nop                                           ; $7034: $00
    nop                                           ; $7035: $00
    nop                                           ; $7036: $00
    nop                                           ; $7037: $00
    nop                                           ; $7038: $00
    nop                                           ; $7039: $00
    nop                                           ; $703A: $00
    nop                                           ; $703B: $00
    nop                                           ; $703C: $00
    nop                                           ; $703D: $00
    nop                                           ; $703E: $00
    nop                                           ; $703F: $00
    ld c, $00                                     ; $7040: $0E $00
    rra                                           ; $7042: $1F
    nop                                           ; $7043: $00
    rra                                           ; $7044: $1F
    nop                                           ; $7045: $00
    ccf                                           ; $7046: $3F
    nop                                           ; $7047: $00
    ccf                                           ; $7048: $3F
    nop                                           ; $7049: $00

jr_01A_704A:
    ld a, a                                       ; $704A: $7F
    nop                                           ; $704B: $00
    ld a, a                                       ; $704C: $7F

jr_01A_704D:
    nop                                           ; $704D: $00
    rst RST_38                                    ; $704E: $FF
    nop                                           ; $704F: $00
    rst RST_38                                    ; $7050: $FF
    nop                                           ; $7051: $00
    ld a, a                                       ; $7052: $7F
    nop                                           ; $7053: $00
    ccf                                           ; $7054: $3F
    nop                                           ; $7055: $00
    ld a, a                                       ; $7056: $7F
    nop                                           ; $7057: $00
    ccf                                           ; $7058: $3F
    nop                                           ; $7059: $00
    rra                                           ; $705A: $1F
    nop                                           ; $705B: $00
    rlca                                          ; $705C: $07
    ld bc, $0003                                  ; $705D: $01 $03 $00
    nop                                           ; $7060: $00
    nop                                           ; $7061: $00
    add b                                         ; $7062: $80
    nop                                           ; $7063: $00
    ldh a, [rP1]                                  ; $7064: $F0 $00
    di                                            ; $7066: $F3
    nop                                           ; $7067: $00
    db $FC                                        ; $7068: $FC
    inc bc                                        ; $7069: $03
    db $FC                                        ; $706A: $FC
    inc bc                                        ; $706B: $03
    rst RST_38                                    ; $706C: $FF
    nop                                           ; $706D: $00
    rst RST_38                                    ; $706E: $FF
    nop                                           ; $706F: $00
    rst RST_38                                    ; $7070: $FF
    ld [bc], a                                    ; $7071: $02
    rst RST_38                                    ; $7072: $FF
    ld [bc], a                                    ; $7073: $02
    rst RST_38                                    ; $7074: $FF
    inc bc                                        ; $7075: $03
    rst RST_38                                    ; $7076: $FF
    rlca                                          ; $7077: $07
    rst RST_38                                    ; $7078: $FF
    inc bc                                        ; $7079: $03
    sbc a                                         ; $707A: $9F
    ld h, h                                       ; $707B: $64
    adc a                                         ; $707C: $8F
    ld [hl], b                                    ; $707D: $70
    adc l                                         ; $707E: $8D
    ld [hl], d                                    ; $707F: $72
    nop                                           ; $7080: $00
    nop                                           ; $7081: $00
    nop                                           ; $7082: $00
    nop                                           ; $7083: $00
    nop                                           ; $7084: $00
    nop                                           ; $7085: $00
    ldh [rP1], a                                  ; $7086: $E0 $00
    jr nz, jr_01A_704A                            ; $7088: $20 $C0

    ret nz                                        ; $708A: $C0

    nop                                           ; $708B: $00
    nop                                           ; $708C: $00
    nop                                           ; $708D: $00
    nop                                           ; $708E: $00
    nop                                           ; $708F: $00
    nop                                           ; $7090: $00
    nop                                           ; $7091: $00
    nop                                           ; $7092: $00
    nop                                           ; $7093: $00
    adc h                                         ; $7094: $8C
    nop                                           ; $7095: $00
    sub h                                         ; $7096: $94
    ld [$18A4], sp                                ; $7097: $08 $A4 $18
    ret z                                         ; $709A: $C8

    jr nc, jr_01A_709D                            ; $709B: $30 $00

jr_01A_709D:
    ldh a, [rNR10]                                ; $709D: $F0 $10
    ldh [rP1], a                                  ; $709F: $E0 $00
    nop                                           ; $70A1: $00
    ld bc, $0300                                  ; $70A2: $01 $00 $03
    ld bc, $0207                                  ; $70A5: $01 $07 $02
    rlca                                          ; $70A8: $07
    ld [bc], a                                    ; $70A9: $02
    rlca                                          ; $70AA: $07
    ld [bc], a                                    ; $70AB: $02
    rlca                                          ; $70AC: $07
    ld [bc], a                                    ; $70AD: $02
    rlca                                          ; $70AE: $07
    ld [bc], a                                    ; $70AF: $02
    rlca                                          ; $70B0: $07
    ld [bc], a                                    ; $70B1: $02
    rlca                                          ; $70B2: $07
    inc bc                                        ; $70B3: $03
    inc bc                                        ; $70B4: $03
    ld bc, $000F                                  ; $70B5: $01 $0F $00
    rla                                           ; $70B8: $17
    rrca                                          ; $70B9: $0F
    cpl                                           ; $70BA: $2F
    db $10                                        ; $70BB: $10
    ccf                                           ; $70BC: $3F
    db $10                                        ; $70BD: $10
    ld e, [hl]                                    ; $70BE: $5E
    jr nz, jr_01A_704D                            ; $70BF: $20 $8C

    ld [hl], e                                    ; $70C1: $73
    rst RST_38                                    ; $70C2: $FF
    nop                                           ; $70C3: $00
    rst RST_38                                    ; $70C4: $FF
    ld a, d                                       ; $70C5: $7A
    rst RST_38                                    ; $70C6: $FF
    db $FC                                        ; $70C7: $FC
    cp $FD                                        ; $70C8: $FE $FD
    cp $FD                                        ; $70CA: $FE $FD
    rst RST_38                                    ; $70CC: $FF
    db $FC                                        ; $70CD: $FC
    rst RST_38                                    ; $70CE: $FF
    db $FC                                        ; $70CF: $FC
    rst RST_38                                    ; $70D0: $FF
    ld a, e                                       ; $70D1: $7B
    rst RST_38                                    ; $70D2: $FF
    nop                                           ; $70D3: $00
    rst RST_38                                    ; $70D4: $FF
    ld b, a                                       ; $70D5: $47
    rst RST_28                                    ; $70D6: $EF
    ld de, $96EF                                  ; $70D7: $11 $EF $96
    rst RST_38                                    ; $70DA: $FF
    nop                                           ; $70DB: $00
    rst RST_38                                    ; $70DC: $FF
    rra                                           ; $70DD: $1F
    sbc a                                         ; $70DE: $9F
    ld l, h                                       ; $70DF: $6C
    and b                                         ; $70E0: $A0
    ld b, b                                       ; $70E1: $40
    ld b, b                                       ; $70E2: $40
    add b                                         ; $70E3: $80
    ret nz                                        ; $70E4: $C0

    nop                                           ; $70E5: $00
    ldh [rP1], a                                  ; $70E6: $E0 $00
    ldh [rP1], a                                  ; $70E8: $E0 $00
    ldh [rP1], a                                  ; $70EA: $E0 $00
    ldh [rLCDC], a                                ; $70EC: $E0 $40
    ldh a, [$FFE0]                                ; $70EE: $F0 $E0
    rst RST_30                                    ; $70F0: $F7
    ld h, b                                       ; $70F1: $60
    ld sp, hl                                     ; $70F2: $F9
    ld h, [hl]                                    ; $70F3: $66
    cp $1F                                        ; $70F4: $FE $1F
    cp $87                                        ; $70F6: $FE $87
    rst RST_38                                    ; $70F8: $FF
    inc hl                                        ; $70F9: $23
    rst RST_30                                    ; $70FA: $F7
    add hl, de                                    ; $70FB: $19
    db $FD                                        ; $70FC: $FD
    add [hl]                                      ; $70FD: $86
    rst RST_38                                    ; $70FE: $FF
    ld bc, $0000                                  ; $70FF: $01 $00 $00
    nop                                           ; $7102: $00
    nop                                           ; $7103: $00
    add b                                         ; $7104: $80
    nop                                           ; $7105: $00
    add b                                         ; $7106: $80
    nop                                           ; $7107: $00
    add b                                         ; $7108: $80
    nop                                           ; $7109: $00
    add b                                         ; $710A: $80
    nop                                           ; $710B: $00
    nop                                           ; $710C: $00
    nop                                           ; $710D: $00
    add b                                         ; $710E: $80
    nop                                           ; $710F: $00
    ret nz                                        ; $7110: $C0

    add b                                         ; $7111: $80
    ret nz                                        ; $7112: $C0

    nop                                           ; $7113: $00
    ret nz                                        ; $7114: $C0

    nop                                           ; $7115: $00
    ret nz                                        ; $7116: $C0

    nop                                           ; $7117: $00
    nop                                           ; $7118: $00
    nop                                           ; $7119: $00
    nop                                           ; $711A: $00
    nop                                           ; $711B: $00
    nop                                           ; $711C: $00
    nop                                           ; $711D: $00
    nop                                           ; $711E: $00
    nop                                           ; $711F: $00
    ld a, h                                       ; $7120: $7C
    jr nz, jr_01A_719B                            ; $7121: $20 $78

    jr nz, jr_01A_719E                            ; $7123: $20 $79

    jr nz, jr_01A_71A0                            ; $7125: $20 $79

    nop                                           ; $7127: $00
    inc bc                                        ; $7128: $03
    nop                                           ; $7129: $00
    rlca                                          ; $712A: $07
    inc bc                                        ; $712B: $03
    rrca                                          ; $712C: $0F
    inc bc                                        ; $712D: $03
    rla                                           ; $712E: $17
    add hl, bc                                    ; $712F: $09
    add hl, bc                                    ; $7130: $09
    ld b, $07                                     ; $7131: $06 $07
    nop                                           ; $7133: $00
    ld [bc], a                                    ; $7134: $02
    ld bc, $0102                                  ; $7135: $01 $02 $01
    inc bc                                        ; $7138: $03
    ld bc, $0003                                  ; $7139: $01 $03 $00
    rlca                                          ; $713C: $07
    inc bc                                        ; $713D: $03
    rlca                                          ; $713E: $07
    inc bc                                        ; $713F: $03
    sbc h                                         ; $7140: $9C
    ld l, e                                       ; $7141: $6B
    sbc h                                         ; $7142: $9C
    ld h, e                                       ; $7143: $63
    inc b                                         ; $7144: $04
    ei                                            ; $7145: $FB
    inc b                                         ; $7146: $04
    ei                                            ; $7147: $FB
    jp z, $F331                                   ; $7148: $CA $31 $F3

    add b                                         ; $714B: $80
    ldh a, [c]                                    ; $714C: $F2
    pop hl                                        ; $714D: $E1
    ld a, [$F9F1]                                 ; $714E: $FA $F1 $F9
    ldh a, [$FFF1]                                ; $7151: $F0 $F1
    nop                                           ; $7153: $00
    ldh [$FFC0], a                                ; $7154: $E0 $C0
    ldh [$FFC0], a                                ; $7156: $E0 $C0
    ldh a, [$FF80]                                ; $7158: $F0 $80
    ldh a, [rNR41]                                ; $715A: $F0 $20
    ldh [$FFC0], a                                ; $715C: $E0 $C0
    ldh [$FFC0], a                                ; $715E: $E0 $C0
    ccf                                           ; $7160: $3F
    ret nz                                        ; $7161: $C0

    ccf                                           ; $7162: $3F
    ret nz                                        ; $7163: $C0

    rra                                           ; $7164: $1F
    ldh [$FF1F], a                                ; $7165: $E0 $1F
    ldh [$FFFC], a                                ; $7167: $E0 $FC
    nop                                           ; $7169: $00
    db $FC                                        ; $716A: $FC
    ld hl, sp+$7C                                 ; $716B: $F8 $7C
    ret c                                         ; $716D: $D8

    jp c, Jump_01A_4A24                           ; $716E: $DA $24 $4A

    or h                                          ; $7171: $B4
    inc a                                         ; $7172: $3C
    ret nz                                        ; $7173: $C0

    db $FC                                        ; $7174: $FC

jr_01A_7175:
    jr c, jr_01A_71D3                             ; $7175: $38 $5C

    jr c, jr_01A_71A5                             ; $7177: $38 $2C

    jr jr_01A_71B9                                ; $7179: $18 $3E

    nop                                           ; $717B: $00
    ccf                                           ; $717C: $3F
    ld e, $3F                                     ; $717D: $1E $3F
    ld e, $7E                                     ; $717F: $1E $7E
    jr c, @+$7A                                   ; $7181: $38 $78

    jr nc, jr_01A_7175                            ; $7183: $30 $F0

    ld h, b                                       ; $7185: $60
    ldh [rP1], a                                  ; $7186: $E0 $00
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

jr_01A_719B:
    nop                                           ; $719B: $00
    nop                                           ; $719C: $00
    nop                                           ; $719D: $00

jr_01A_719E:
    nop                                           ; $719E: $00
    nop                                           ; $719F: $00

jr_01A_71A0:
    ld hl, sp+$70                                 ; $71A0: $F8 $70
    db $FC                                        ; $71A2: $FC
    ld a, b                                       ; $71A3: $78
    ld a, h                                       ; $71A4: $7C

jr_01A_71A5:
    jr c, jr_01A_7223                             ; $71A5: $38 $7C

    jr c, jr_01A_71E5                             ; $71A7: $38 $3C

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

jr_01A_71B9:
    nop                                           ; $71B9: $00
    nop                                           ; $71BA: $00
    nop                                           ; $71BB: $00
    nop                                           ; $71BC: $00
    nop                                           ; $71BD: $00
    nop                                           ; $71BE: $00
    nop                                           ; $71BF: $00
    rlca                                          ; $71C0: $07
    ld bc, $0609                                  ; $71C1: $01 $09 $06
    add hl, bc                                    ; $71C4: $09
    rlca                                          ; $71C5: $07
    ld de, $130F                                  ; $71C6: $11 $0F $13
    ld c, $13                                     ; $71C9: $0E $13
    ld c, $26                                     ; $71CB: $0E $26
    inc e                                         ; $71CD: $1C
    inc l                                         ; $71CE: $2C
    jr jr_01A_71FD                                ; $71CF: $18 $2C

    jr jr_01A_722B                                ; $71D1: $18 $58

jr_01A_71D3:
    jr nc, jr_01A_722D                            ; $71D3: $30 $58

    jr nc, jr_01A_7227                            ; $71D5: $30 $50

    jr nz, jr_01A_722A                            ; $71D7: $20 $51

    jr nz, jr_01A_722D                            ; $71D9: $20 $52

    ld hl, $0334                                  ; $71DB: $21 $34 $03
    rlca                                          ; $71DE: $07
    nop                                           ; $71DF: $00
    ld d, e                                       ; $71E0: $53
    cp a                                          ; $71E1: $BF
    ld a, e                                       ; $71E2: $7B
    cp a                                          ; $71E3: $BF
    rst RST_38                                    ; $71E4: $FF

jr_01A_71E5:
    ld a, a                                       ; $71E5: $7F
    rst RST_38                                    ; $71E6: $FF
    ld [hl], a                                    ; $71E7: $77
    rst RST_38                                    ; $71E8: $FF
    dec sp                                        ; $71E9: $3B
    rst RST_38                                    ; $71EA: $FF
    dec de                                        ; $71EB: $1B
    rst RST_38                                    ; $71EC: $FF
    ld l, a                                       ; $71ED: $6F
    rst RST_18                                    ; $71EE: $DF
    cpl                                           ; $71EF: $2F
    ld a, a                                       ; $71F0: $7F
    ld e, $7F                                     ; $71F1: $1E $7F
    ld a, $7E                                     ; $71F3: $3E $7E
    inc a                                         ; $71F5: $3C
    cp $2C                                        ; $71F6: $FE $2C
    ld a, [hl]                                    ; $71F8: $7E
    and h                                         ; $71F9: $A4
    ld a, $DC                                     ; $71FA: $3E $DC
    ccf                                           ; $71FC: $3F

jr_01A_71FD:
    adc $CF                                       ; $71FD: $CE $CF
    nop                                           ; $71FF: $00
    cp $70                                        ; $7200: $FE $70
    cp $BC                                        ; $7202: $FE $BC
    cp $9C                                        ; $7204: $FE $9C
    cp $6C                                        ; $7206: $FE $6C
    db $FC                                        ; $7208: $FC
    add sp, -$08                                  ; $7209: $E8 $F8
    ldh [$FFE0], a                                ; $720B: $E0 $E0
    add b                                         ; $720D: $80
    ldh a, [$FF60]                                ; $720E: $F0 $60
    ldh a, [$FF60]                                ; $7210: $F0 $60
    ld a, b                                       ; $7212: $78
    jr nc, jr_01A_724D                            ; $7213: $30 $38

    db $10                                        ; $7215: $10
    inc a                                         ; $7216: $3C
    jr jr_01A_7255                                ; $7217: $18 $3C

    jr @+$1A                                      ; $7219: $18 $18

    nop                                           ; $721B: $00
    nop                                           ; $721C: $00
    nop                                           ; $721D: $00
    nop                                           ; $721E: $00
    nop                                           ; $721F: $00
    nop                                           ; $7220: $00
    nop                                           ; $7221: $00
    nop                                           ; $7222: $00

jr_01A_7223:
    nop                                           ; $7223: $00
    nop                                           ; $7224: $00
    nop                                           ; $7225: $00
    nop                                           ; $7226: $00

jr_01A_7227:
    nop                                           ; $7227: $00
    nop                                           ; $7228: $00
    nop                                           ; $7229: $00

jr_01A_722A:
    nop                                           ; $722A: $00

jr_01A_722B:
    nop                                           ; $722B: $00
    nop                                           ; $722C: $00

jr_01A_722D:
    nop                                           ; $722D: $00
    nop                                           ; $722E: $00
    nop                                           ; $722F: $00
    nop                                           ; $7230: $00
    nop                                           ; $7231: $00
    jr nc, jr_01A_7234                            ; $7232: $30 $00

jr_01A_7234:
    dec hl                                        ; $7234: $2B
    db $10                                        ; $7235: $10
    cp $01                                        ; $7236: $FE $01
    sub a                                         ; $7238: $97
    ld a, d                                       ; $7239: $7A
    ld h, d                                       ; $723A: $62
    dec e                                         ; $723B: $1D
    dec e                                         ; $723C: $1D
    ld b, $06                                     ; $723D: $06 $06
    inc bc                                        ; $723F: $03
    rla                                           ; $7240: $17
    rrca                                          ; $7241: $0F
    rla                                           ; $7242: $17
    rrca                                          ; $7243: $0F
    inc de                                        ; $7244: $13
    rrca                                          ; $7245: $0F
    dec d                                         ; $7246: $15
    rrca                                          ; $7247: $0F
    dec bc                                        ; $7248: $0B
    rlca                                          ; $7249: $07
    add hl, bc                                    ; $724A: $09
    rlca                                          ; $724B: $07
    dec a                                         ; $724C: $3D

jr_01A_724D:
    inc bc                                        ; $724D: $03
    daa                                           ; $724E: $27
    jr jr_01A_726F                                ; $724F: $18 $1E

    ld bc, $0639                                  ; $7251: $01 $39 $06
    ret nz                                        ; $7254: $C0

jr_01A_7255:
    ccf                                           ; $7255: $3F
    ldh a, [rIF]                                  ; $7256: $F0 $0F
    jp hl                                         ; $7258: $E9


    ld d, $7E                                     ; $7259: $16 $7E
    pop bc                                        ; $725B: $C1
    rlca                                          ; $725C: $07
    ld hl, sp-$69                                 ; $725D: $F8 $97
    ld a, [hl]                                    ; $725F: $7E
    ldh a, [$FF80]                                ; $7260: $F0 $80
    ldh a, [$FFC0]                                ; $7262: $F0 $C0
    ei                                            ; $7264: $FB
    ldh a, [rIE]                                  ; $7265: $F0 $FF
    ldh a, [rIE]                                  ; $7267: $F0 $FF
    ldh a, [rIE]                                  ; $7269: $F0 $FF
    ldh a, [$FF7C]                                ; $726B: $F0 $7C
    db $E3                                        ; $726D: $E3
    db $F4                                        ; $726E: $F4

jr_01A_726F:
    dec bc                                        ; $726F: $0B
    push af                                       ; $7270: $F5
    ld e, e                                       ; $7271: $5B
    ld a, [hl]                                    ; $7272: $7E
    adc e                                         ; $7273: $8B
    rst RST_08                                    ; $7274: $CF
    inc sp                                        ; $7275: $33
    adc $33                                       ; $7276: $CE $33
    ld a, a                                       ; $7278: $7F
    adc l                                         ; $7279: $8D
    rst RST_38                                    ; $727A: $FF
    ld e, [hl]                                    ; $727B: $5E
    rst RST_38                                    ; $727C: $FF
    ld e, $FF                                     ; $727D: $1E $FF
    ld l, [hl]                                    ; $727F: $6E
    nop                                           ; $7280: $00
    nop                                           ; $7281: $00
    nop                                           ; $7282: $00
    nop                                           ; $7283: $00
    ld hl, sp+$00                                 ; $7284: $F8 $00
    add $38                                       ; $7286: $C6 $38
    pop af                                        ; $7288: $F1
    ld e, $FE                                     ; $7289: $1E $FE
    rrca                                          ; $728B: $0F
    ccf                                           ; $728C: $3F
    rst RST_08                                    ; $728D: $CF
    sbc a                                         ; $728E: $9F
    rst RST_28                                    ; $728F: $EF
    ld a, l                                       ; $7290: $7D
    rst RST_20                                    ; $7291: $E7
    rst RST_38                                    ; $7292: $FF
    ret nz                                        ; $7293: $C0

    ld a, h                                       ; $7294: $7C
    rst RST_18                                    ; $7295: $DF
    cp $DF                                        ; $7296: $FE $DF
    db $FD                                        ; $7298: $FD
    rst RST_18                                    ; $7299: $DF
    cp $EF                                        ; $729A: $FE $EF
    rst RST_38                                    ; $729C: $FF
    rst RST_28                                    ; $729D: $EF
    rst RST_38                                    ; $729E: $FF
    cpl                                           ; $729F: $2F
    ccf                                           ; $72A0: $3F
    ld bc, $197F                                  ; $72A1: $01 $7F $19
    ld a, a                                       ; $72A4: $7F
    ld bc, HeaderManufacturerCode                 ; $72A5: $01 $3F $01
    ccf                                           ; $72A8: $3F
    nop                                           ; $72A9: $00
    ld a, $00                                     ; $72AA: $3E $00
    ld a, $00                                     ; $72AC: $3E $00
    ld a, h                                       ; $72AE: $7C
    nop                                           ; $72AF: $00
    ld sp, hl                                     ; $72B0: $F9
    nop                                           ; $72B1: $00
    pop af                                        ; $72B2: $F1
    nop                                           ; $72B3: $00
    ld [bc], a                                    ; $72B4: $02
    ld bc, $0003                                  ; $72B5: $01 $03 $00
    nop                                           ; $72B8: $00
    nop                                           ; $72B9: $00
    nop                                           ; $72BA: $00
    nop                                           ; $72BB: $00
    nop                                           ; $72BC: $00
    nop                                           ; $72BD: $00
    nop                                           ; $72BE: $00
    nop                                           ; $72BF: $00
    rst RST_38                                    ; $72C0: $FF
    db $ED                                        ; $72C1: $ED
    rst RST_38                                    ; $72C2: $FF
    pop hl                                        ; $72C3: $E1
    rst RST_38                                    ; $72C4: $FF
    call c, $B8DC                                 ; $72C5: $DC $DC $B8
    call c, Call_01A_5E38                         ; $72C8: $DC $38 $5E
    inc [hl]                                      ; $72CB: $34
    cp $44                                        ; $72CC: $FE $44
    db $FC                                        ; $72CE: $FC
    ld a, b                                       ; $72CF: $78
    ld hl, sp-$10                                 ; $72D0: $F8 $F0
    ldh a, [$FFE0]                                ; $72D2: $F0 $E0
    ld h, b                                       ; $72D4: $60
    ret nz                                        ; $72D5: $C0

    ret nz                                        ; $72D6: $C0

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
    add b                                         ; $72E8: $80
    nop                                           ; $72E9: $00
    ret nz                                        ; $72EA: $C0

    add b                                         ; $72EB: $80
    ldh [$FFC0], a                                ; $72EC: $E0 $C0
    ldh a, [$FFE0]                                ; $72EE: $F0 $E0
    ld a, b                                       ; $72F0: $78
    sub b                                         ; $72F1: $90
    call c, Call_000_2E28                         ; $72F2: $DC $28 $2E
    call nc, $E69F                                ; $72F5: $D4 $9F $E6
    ld e, a                                       ; $72F8: $5F
    db $EB                                        ; $72F9: $EB
    rst RST_18                                    ; $72FA: $DF
    db $ED                                        ; $72FB: $ED
    rst RST_18                                    ; $72FC: $DF
    db $ED                                        ; $72FD: $ED
    rst RST_38                                    ; $72FE: $FF
    db $ED                                        ; $72FF: $ED
    nop                                           ; $7300: $00
    nop                                           ; $7301: $00
    inc c                                         ; $7302: $0C
    nop                                           ; $7303: $00
    inc e                                         ; $7304: $1C
    ld [$183C], sp                                ; $7305: $08 $3C $18
    db $FC                                        ; $7308: $FC
    jr c, @-$02                                   ; $7309: $38 $FC

    ld hl, sp-$08                                 ; $730B: $F8 $F8
    ldh a, [$FFF8]                                ; $730D: $F0 $F8
    ldh a, [$FFF0]                                ; $730F: $F0 $F0
    ldh [$FFE0], a                                ; $7311: $E0 $E0
    ret nz                                        ; $7313: $C0

    ret nz                                        ; $7314: $C0

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
    inc c                                         ; $732A: $0C
    nop                                           ; $732B: $00
    ld a, [bc]                                    ; $732C: $0A
    inc b                                         ; $732D: $04
    ld a, [bc]                                    ; $732E: $0A
    inc b                                         ; $732F: $04
    rra                                           ; $7330: $1F
    nop                                           ; $7331: $00
    rra                                           ; $7332: $1F
    rrca                                          ; $7333: $0F
    rra                                           ; $7334: $1F
    rrca                                          ; $7335: $0F
    rra                                           ; $7336: $1F
    rrca                                          ; $7337: $0F
    rra                                           ; $7338: $1F
    rrca                                          ; $7339: $0F
    rra                                           ; $733A: $1F
    rrca                                          ; $733B: $0F
    rra                                           ; $733C: $1F
    rrca                                          ; $733D: $0F
    rra                                           ; $733E: $1F
    rrca                                          ; $733F: $0F
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
    add b                                         ; $7350: $80
    nop                                           ; $7351: $00
    ret nz                                        ; $7352: $C0

    add b                                         ; $7353: $80
    ret nz                                        ; $7354: $C0

    nop                                           ; $7355: $00
    ldh a, [rP1]                                  ; $7356: $F0 $00
    adc b                                         ; $7358: $88
    ld [hl], b                                    ; $7359: $70
    ldh a, [rP1]                                  ; $735A: $F0 $00
    adc b                                         ; $735C: $88
    ld [hl], b                                    ; $735D: $70
    ld hl, sp+$00                                 ; $735E: $F8 $00
    nop                                           ; $7360: $00
    nop                                           ; $7361: $00
    nop                                           ; $7362: $00
    nop                                           ; $7363: $00
    rlca                                          ; $7364: $07
    nop                                           ; $7365: $00
    jr @+$09                                      ; $7366: $18 $07

    daa                                           ; $7368: $27
    rra                                           ; $7369: $1F
    ld e, a                                       ; $736A: $5F
    jr nz, @+$62                                  ; $736B: $20 $60

    nop                                           ; $736D: $00
    jr jr_01A_7370                                ; $736E: $18 $00

jr_01A_7370:
    rla                                           ; $7370: $17
    ld [$0609], sp                                ; $7371: $08 $09 $06
    add hl, bc                                    ; $7374: $09
    ld b, $05                                     ; $7375: $06 $05
    ld [bc], a                                    ; $7377: $02
    inc bc                                        ; $7378: $03
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
    ld bc, $0100                                  ; $738C: $01 $00 $01
    nop                                           ; $738F: $00
    ld [bc], a                                    ; $7390: $02
    ld bc, $01FF                                  ; $7391: $01 $FF $01
    ld bc, $01FE                                  ; $7394: $01 $FE $01
    cp $FF                                        ; $7397: $FE $FF
    cp $FF                                        ; $7399: $FE $FF
    nop                                           ; $739B: $00
    ccf                                           ; $739C: $3F
    add hl, bc                                    ; $739D: $09
    ld l, a                                       ; $739E: $6F
    dec de                                        ; $739F: $1B
    nop                                           ; $73A0: $00
    nop                                           ; $73A1: $00
    ld l, a                                       ; $73A2: $6F
    nop                                           ; $73A3: $00
    cp a                                          ; $73A4: $BF
    ld b, b                                       ; $73A5: $40
    cp a                                          ; $73A6: $BF
    ld b, b                                       ; $73A7: $40
    xor a                                         ; $73A8: $AF
    ld d, b                                       ; $73A9: $50
    rst RST_28                                    ; $73AA: $EF
    ld d, c                                       ; $73AB: $51
    ld e, a                                       ; $73AC: $5F
    and c                                         ; $73AD: $A1

jr_01A_73AE:
    db $D3                                        ; $73AE: $D3
    xor l                                         ; $73AF: $AD
    cp e                                          ; $73B0: $BB
    ld h, l                                       ; $73B1: $65
    cp a                                          ; $73B2: $BF
    ld [hl], c                                    ; $73B3: $71
    ld a, a                                       ; $73B4: $7F
    pop hl                                        ; $73B5: $E1
    rst RST_28                                    ; $73B6: $EF
    sub c                                         ; $73B7: $91
    adc a                                         ; $73B8: $8F
    ld [hl], c                                    ; $73B9: $71
    ccf                                           ; $73BA: $3F
    ld sp, hl                                     ; $73BB: $F9
    rst RST_38                                    ; $73BC: $FF
    ld hl, sp+$3F                                 ; $73BD: $F8 $3F
    ld hl, sp+$7F                                 ; $73BF: $F8 $7F
    nop                                           ; $73C1: $00
    ret                                           ; $73C2: $C9


    ld [hl], $FB                                  ; $73C3: $36 $FB
    ld b, h                                       ; $73C5: $44
    cp $F8                                        ; $73C6: $FE $F8
    cp $F8                                        ; $73C8: $FE $F8
    db $FD                                        ; $73CA: $FD
    ldh a, [c]                                    ; $73CB: $F2
    cp $E3                                        ; $73CC: $FE $E3
    rst RST_38                                    ; $73CE: $FF
    ei                                            ; $73CF: $FB
    rst RST_38                                    ; $73D0: $FF
    ei                                            ; $73D1: $FB
    ld a, a                                       ; $73D2: $7F
    ei                                            ; $73D3: $FB
    ld a, a                                       ; $73D4: $7F
    ld sp, hl                                     ; $73D5: $F9
    ccf                                           ; $73D6: $3F
    ld hl, sp-$41                                 ; $73D7: $F8 $BF
    ld hl, sp-$01                                 ; $73D9: $F8 $FF
    ld a, [$F7FF]                                 ; $73DB: $FA $FF $F7
    rst RST_38                                    ; $73DE: $FF
    inc bc                                        ; $73DF: $03
    ret nz                                        ; $73E0: $C0

    nop                                           ; $73E1: $00
    ld b, b                                       ; $73E2: $40
    add b                                         ; $73E3: $80
    add b                                         ; $73E4: $80
    nop                                           ; $73E5: $00
    nop                                           ; $73E6: $00
    nop                                           ; $73E7: $00
    nop                                           ; $73E8: $00
    nop                                           ; $73E9: $00
    ret nz                                        ; $73EA: $C0

    nop                                           ; $73EB: $00
    jr nc, jr_01A_73AE                            ; $73EC: $30 $C0

    ld c, b                                       ; $73EE: $48
    ldh a, [$FFB8]                                ; $73EF: $F0 $B8
    ldh a, [$FFFC]                                ; $73F1: $F0 $FC
    ldh a, [$FFFE]                                ; $73F3: $F0 $FE
    ld d, h                                       ; $73F5: $54
    rst RST_38                                    ; $73F6: $FF
    ld [bc], a                                    ; $73F7: $02
    rst RST_38                                    ; $73F8: $FF
    inc b                                         ; $73F9: $04
    rst RST_38                                    ; $73FA: $FF
    dec b                                         ; $73FB: $05
    rst RST_38                                    ; $73FC: $FF
    or $FF                                        ; $73FD: $F6 $FF
    or $FE                                        ; $73FF: $F6 $FE
    ld h, a                                       ; $7401: $67
    rst RST_38                                    ; $7402: $FF
    rst RST_38                                    ; $7403: $FF
    rst RST_38                                    ; $7404: $FF
    sbc a                                         ; $7405: $9F
    rst RST_38                                    ; $7406: $FF
    cp b                                          ; $7407: $B8
    ei                                            ; $7408: $FB
    ldh [$FFE7], a                                ; $7409: $E0 $E7
    ld b, c                                       ; $740B: $41
    ld a, a                                       ; $740C: $7F
    rlca                                          ; $740D: $07
    rra                                           ; $740E: $1F
    ld c, $0E                                     ; $740F: $0E $0E
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
    ld a, a                                       ; $7420: $7F
    pop hl                                        ; $7421: $E1
    rst RST_38                                    ; $7422: $FF
    rst RST_20                                    ; $7423: $E7
    rst RST_38                                    ; $7424: $FF
    di                                            ; $7425: $F3
    ei                                            ; $7426: $FB
    ld [hl], b                                    ; $7427: $70
    ldh a, [$FF80]                                ; $7428: $F0 $80
    ret nz                                        ; $742A: $C0

    add b                                         ; $742B: $80
    add b                                         ; $742C: $80
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
    rst RST_38                                    ; $7440: $FF
    dec b                                         ; $7441: $05
    rst RST_38                                    ; $7442: $FF
    db $FC                                        ; $7443: $FC
    rst RST_38                                    ; $7444: $FF
    rst RST_38                                    ; $7445: $FF
    rst RST_38                                    ; $7446: $FF
    rst RST_38                                    ; $7447: $FF
    rst RST_38                                    ; $7448: $FF
    nop                                           ; $7449: $00
    rlca                                          ; $744A: $07
    nop                                           ; $744B: $00
    rlca                                          ; $744C: $07
    nop                                           ; $744D: $00
    rrca                                          ; $744E: $0F
    nop                                           ; $744F: $00
    rra                                           ; $7450: $1F
    nop                                           ; $7451: $00
    rra                                           ; $7452: $1F
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
    rst RST_38                                    ; $7460: $FF
    or $FF                                        ; $7461: $F6 $FF
    ld c, $FF                                     ; $7463: $0E $FF
    ld a, c                                       ; $7465: $79
    rst RST_38                                    ; $7466: $FF
    or e                                          ; $7467: $B3
    rst RST_38                                    ; $7468: $FF
    rrca                                          ; $7469: $0F
    rst RST_18                                    ; $746A: $DF
    rrca                                          ; $746B: $0F
    rst RST_18                                    ; $746C: $DF
    rrca                                          ; $746D: $0F
    rst RST_28                                    ; $746E: $EF
    ld de, $56A9                                  ; $746F: $11 $A9 $56
    rst RST_38                                    ; $7472: $FF
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
    add b                                         ; $7488: $80
    nop                                           ; $7489: $00
    add b                                         ; $748A: $80
    nop                                           ; $748B: $00
    ret nz                                        ; $748C: $C0

    add b                                         ; $748D: $80
    ret nz                                        ; $748E: $C0

Jump_01A_748F:
    add b                                         ; $748F: $80
    ldh [rLCDC], a                                ; $7490: $E0 $40
    ldh a, [$FF60]                                ; $7492: $F0 $60
    ld hl, sp+$70                                 ; $7494: $F8 $70
    db $FC                                        ; $7496: $FC
    ld a, b                                       ; $7497: $78
    cp $7C                                        ; $7498: $FE $7C
    rst RST_38                                    ; $749A: $FF
    ld e, $9F                                     ; $749B: $1E $9F
    nop                                           ; $749D: $00
    add b                                         ; $749E: $80
    nop                                           ; $749F: $00
    nop                                           ; $74A0: $00
    nop                                           ; $74A1: $00
    ld b, b                                       ; $74A2: $40
    nop                                           ; $74A3: $00
    jr nc, jr_01A_74A6                            ; $74A4: $30 $00

jr_01A_74A6:
    inc a                                         ; $74A6: $3C
    db $10                                        ; $74A7: $10
    rra                                           ; $74A8: $1F
    inc c                                         ; $74A9: $0C
    dec de                                        ; $74AA: $1B
    rrca                                          ; $74AB: $0F
    inc c                                         ; $74AC: $0C
    rlca                                          ; $74AD: $07
    inc c                                         ; $74AE: $0C
    rlca                                          ; $74AF: $07
    ld b, $03                                     ; $74B0: $06 $03
    ld b, $03                                     ; $74B2: $06 $03
    inc bc                                        ; $74B4: $03
    ld bc, $0103                                  ; $74B5: $01 $03 $01
    ld bc, $0100                                  ; $74B8: $01 $00 $01
    nop                                           ; $74BB: $00
    nop                                           ; $74BC: $00
    nop                                           ; $74BD: $00
    nop                                           ; $74BE: $00
    nop                                           ; $74BF: $00
    ld bc, $0100                                  ; $74C0: $01 $00 $01
    nop                                           ; $74C3: $00
    ld bc, $0100                                  ; $74C4: $01 $00 $01
    nop                                           ; $74C7: $00
    ld bc, $8100                                  ; $74C8: $01 $00 $81
    nop                                           ; $74CB: $00
    pop hl                                        ; $74CC: $E1
    add b                                         ; $74CD: $80
    ld a, c                                       ; $74CE: $79
    ldh [$FF1F], a                                ; $74CF: $E0 $1F
    ld hl, sp+$07                                 ; $74D1: $F8 $07
    cp $01                                        ; $74D3: $FE $01
    rst RST_38                                    ; $74D5: $FF
    nop                                           ; $74D6: $00
    rst RST_38                                    ; $74D7: $FF
    add b                                         ; $74D8: $80
    rst RST_38                                    ; $74D9: $FF
    add b                                         ; $74DA: $80
    rst RST_38                                    ; $74DB: $FF
    ret nz                                        ; $74DC: $C0

    ld a, a                                       ; $74DD: $7F
    ret nz                                        ; $74DE: $C0

    ld a, a                                       ; $74DF: $7F
    or d                                          ; $74E0: $B2
    pop hl                                        ; $74E1: $E1
    sbc e                                         ; $74E2: $9B
    ldh a, [$FF8E]                                ; $74E3: $F0 $8E
    ld sp, hl                                     ; $74E5: $F9
    sub a                                         ; $74E6: $97
    db $EC                                        ; $74E7: $EC
    or e                                          ; $74E8: $B3
    adc $D9                                       ; $74E9: $CE $D9
    and a                                         ; $74EB: $A7
    and h                                         ; $74EC: $A4
    db $DB                                        ; $74ED: $DB
    sbc a                                         ; $74EE: $9F
    ldh [$FF84], a                                ; $74EF: $E0 $84
    ei                                            ; $74F1: $FB
    add d                                         ; $74F2: $82
    db $FD                                        ; $74F3: $FD
    add [hl]                                      ; $74F4: $86
    ld sp, hl                                     ; $74F5: $F9
    nop                                           ; $74F6: $00
    rst RST_38                                    ; $74F7: $FF
    nop                                           ; $74F8: $00

jr_01A_74F9:
    rst RST_38                                    ; $74F9: $FF
    nop                                           ; $74FA: $00

jr_01A_74FB:
    rst RST_38                                    ; $74FB: $FF
    nop                                           ; $74FC: $00
    rst RST_38                                    ; $74FD: $FF
    nop                                           ; $74FE: $00
    rst RST_38                                    ; $74FF: $FF
    ei                                            ; $7500: $FB
    ld b, l                                       ; $7501: $45
    rst RST_38                                    ; $7502: $FF
    ld a, [de]                                    ; $7503: $1A
    ccf                                           ; $7504: $3F
    jp nz, Jump_01A_748F                          ; $7505: $C2 $8F $74

    call z, $FAB7                                 ; $7508: $CC $B7 $FA
    ld c, l                                       ; $750B: $4D
    rst RST_38                                    ; $750C: $FF
    adc b                                         ; $750D: $88
    ld hl, sp+$57                                 ; $750E: $F8 $57
    ld h, b                                       ; $7510: $60
    cp a                                          ; $7511: $BF
    ld b, b                                       ; $7512: $40
    cp a                                          ; $7513: $BF
    ld [hl], b                                    ; $7514: $70
    adc a                                         ; $7515: $8F
    ld d, b                                       ; $7516: $50
    xor a                                         ; $7517: $AF
    jr nz, jr_01A_74F9                            ; $7518: $20 $DF

    jr nz, jr_01A_74FB                            ; $751A: $20 $DF

    nop                                           ; $751C: $00
    rst RST_38                                    ; $751D: $FF
    nop                                           ; $751E: $00
    rst RST_38                                    ; $751F: $FF
    ei                                            ; $7520: $FB
    pop hl                                        ; $7521: $E1
    ei                                            ; $7522: $FB
    ld hl, $23FF                                  ; $7523: $21 $FF $23
    ld a, a                                       ; $7526: $7F
    and e                                         ; $7527: $A3
    cp a                                          ; $7528: $BF
    ld h, a                                       ; $7529: $67
    cp a                                          ; $752A: $BF
    ld h, l                                       ; $752B: $65
    cp l                                          ; $752C: $BD
    ld l, e                                       ; $752D: $6B
    ld a, l                                       ; $752E: $7D
    xor e                                         ; $752F: $AB
    inc sp                                        ; $7530: $33
    db $FD                                        ; $7531: $FD
    inc l                                         ; $7532: $2C
    di                                            ; $7533: $F3
    inc b                                         ; $7534: $04
    ei                                            ; $7535: $FB
    ld [bc], a                                    ; $7536: $02
    db $FD                                        ; $7537: $FD
    ld bc, $00FE                                  ; $7538: $01 $FE $00
    rst RST_38                                    ; $753B: $FF
    nop                                           ; $753C: $00
    rst RST_38                                    ; $753D: $FF
    nop                                           ; $753E: $00
    rst RST_38                                    ; $753F: $FF
    add b                                         ; $7540: $80
    nop                                           ; $7541: $00
    add c                                         ; $7542: $81
    nop                                           ; $7543: $00
    add e                                         ; $7544: $83
    ld bc, $0386                                  ; $7545: $01 $86 $03
    call z, $D807                                 ; $7548: $CC $07 $D8
    rrca                                          ; $754B: $0F
    or c                                          ; $754C: $B1
    ld e, a                                       ; $754D: $5F
    pop hl                                        ; $754E: $E1
    ccf                                           ; $754F: $3F
    jp $C37E                                      ; $7550: $C3 $7E $C3


    cp [hl]                                       ; $7553: $BE
    ld b, [hl]                                    ; $7554: $46
    cp h                                          ; $7555: $BC
    and [hl]                                      ; $7556: $A6
    ld e, h                                       ; $7557: $5C
    inc e                                         ; $7558: $1C
    add sp, $1C                                   ; $7559: $E8 $1C
    ld hl, sp+$3C                                 ; $755B: $F8 $3C
    ldh a, [$FF0C]                                ; $755D: $F0 $0C
    ldh a, [rP1]                                  ; $755F: $F0 $00

jr_01A_7561:
    nop                                           ; $7561: $00
    add c                                         ; $7562: $81
    nop                                           ; $7563: $00
    ld b, d                                       ; $7564: $42
    add b                                         ; $7565: $80
    ld b, [hl]                                    ; $7566: $46
    add b                                         ; $7567: $80
    xor h                                         ; $7568: $AC
    ld b, b                                       ; $7569: $40
    cp h                                          ; $756A: $BC
    ld c, b                                       ; $756B: $48
    ld a, b                                       ; $756C: $78
    db $10                                        ; $756D: $10
    ld a, b                                       ; $756E: $78
    jr nc, jr_01A_7561                            ; $756F: $30 $F0

    ld h, b                                       ; $7571: $60
    or b                                          ; $7572: $B0
    ldh [$FF60], a                                ; $7573: $E0 $60
    ret nz                                        ; $7575: $C0

    ld h, b                                       ; $7576: $60
    ret nz                                        ; $7577: $C0

    ret nz                                        ; $7578: $C0

    add b                                         ; $7579: $80
    ret nz                                        ; $757A: $C0

    add b                                         ; $757B: $80
    add b                                         ; $757C: $80
    nop                                           ; $757D: $00
    add b                                         ; $757E: $80
    nop                                           ; $757F: $00
    ld a, a                                       ; $7580: $7F
    nop                                           ; $7581: $00
    ld b, e                                       ; $7582: $43
    inc a                                         ; $7583: $3C
    jr nc, jr_01A_7595                            ; $7584: $30 $0F

    rrca                                          ; $7586: $0F
    inc bc                                        ; $7587: $03
    inc bc                                        ; $7588: $03
    nop                                           ; $7589: $00
    ld sp, $2B00                                  ; $758A: $31 $00 $2B
    db $10                                        ; $758D: $10
    cpl                                           ; $758E: $2F
    inc de                                        ; $758F: $13
    daa                                           ; $7590: $27
    dec de                                        ; $7591: $1B
    rra                                           ; $7592: $1F
    rlca                                          ; $7593: $07
    rrca                                          ; $7594: $0F

jr_01A_7595:
    rlca                                          ; $7595: $07
    rlca                                          ; $7596: $07
    ld [bc], a                                    ; $7597: $02
    inc bc                                        ; $7598: $03
    nop                                           ; $7599: $00
    ld bc, $0100                                  ; $759A: $01 $00 $01
    nop                                           ; $759D: $00
    ld bc, $2F00                                  ; $759E: $01 $00 $2F
    ret c                                         ; $75A1: $D8

    rst RST_38                                    ; $75A2: $FF
    jr jr_01A_7624                                ; $75A3: $18 $7F

    or b                                          ; $75A5: $B0
    rst RST_38                                    ; $75A6: $FF
    or b                                          ; $75A7: $B0
    rst RST_38                                    ; $75A8: $FF
    db $10                                        ; $75A9: $10
    rst RST_38                                    ; $75AA: $FF
    ld [bc], a                                    ; $75AB: $02
    ld a, a                                       ; $75AC: $7F
    xor [hl]                                      ; $75AD: $AE
    cp $3D                                        ; $75AE: $FE $3D
    cp [hl]                                       ; $75B0: $BE
    ld c, l                                       ; $75B1: $4D
    adc h                                         ; $75B2: $8C
    ld [hl], e                                    ; $75B3: $73
    jp $E2BC                                      ; $75B4: $C3 $BC $E2


    dec e                                         ; $75B7: $1D
    ld [hl-], a                                   ; $75B8: $32
    dec c                                         ; $75B9: $0D
    cp [hl]                                       ; $75BA: $BE
    ld bc, $A2F5                                  ; $75BB: $01 $F5 $A2
    db $E3                                        ; $75BE: $E3
    ret nz                                        ; $75BF: $C0

    ret nz                                        ; $75C0: $C0

    nop                                           ; $75C1: $00
    ret nz                                        ; $75C2: $C0

    nop                                           ; $75C3: $00
    ret nz                                        ; $75C4: $C0

    nop                                           ; $75C5: $00
    ret nz                                        ; $75C6: $C0

    nop                                           ; $75C7: $00
    ret nz                                        ; $75C8: $C0

    nop                                           ; $75C9: $00
    ret nz                                        ; $75CA: $C0

    nop                                           ; $75CB: $00
    ld a, a                                       ; $75CC: $7F
    add b                                         ; $75CD: $80
    ld l, $D1                                     ; $75CE: $2E $D1
    ld l, [hl]                                    ; $75D0: $6E
    sub l                                         ; $75D1: $95
    sbc a                                         ; $75D2: $9F
    ld h, l                                       ; $75D3: $65
    ccf                                           ; $75D4: $3F
    push bc                                       ; $75D5: $C5
    ld c, a                                       ; $75D6: $4F
    or h                                          ; $75D7: $B4
    ld l, a                                       ; $75D8: $6F
    sub b                                         ; $75D9: $90
    rst RST_18                                    ; $75DA: $DF
    ld l, $BF                                     ; $75DB: $2E $BF
    ld e, [hl]                                    ; $75DD: $5E
    ld a, a                                       ; $75DE: $7F
    xor l                                         ; $75DF: $AD
    nop                                           ; $75E0: $00
    nop                                           ; $75E1: $00
    nop                                           ; $75E2: $00
    nop                                           ; $75E3: $00
    nop                                           ; $75E4: $00
    nop                                           ; $75E5: $00
    nop                                           ; $75E6: $00
    nop                                           ; $75E7: $00
    ccf                                           ; $75E8: $3F
    nop                                           ; $75E9: $00
    rst RST_10                                    ; $75EA: $D7
    cpl                                           ; $75EB: $2F
    ccf                                           ; $75EC: $3F
    rst RST_28                                    ; $75ED: $EF
    ccf                                           ; $75EE: $3F
    ret z                                         ; $75EF: $C8

    rst RST_38                                    ; $75F0: $FF
    ret nz                                        ; $75F1: $C0

    ld a, [$FAA5]                                 ; $75F2: $FA $A5 $FA
    and l                                         ; $75F5: $A5
    ei                                            ; $75F6: $FB
    ld h, h                                       ; $75F7: $64
    rst RST_38                                    ; $75F8: $FF
    ld h, b                                       ; $75F9: $60
    db $FC                                        ; $75FA: $FC
    add sp, -$03                                  ; $75FB: $E8 $FD
    add sp, -$03                                  ; $75FD: $E8 $FD
    ld l, b                                       ; $75FF: $68
    nop                                           ; $7600: $00
    nop                                           ; $7601: $00
    nop                                           ; $7602: $00
    nop                                           ; $7603: $00
    nop                                           ; $7604: $00
    nop                                           ; $7605: $00

jr_01A_7606:
    nop                                           ; $7606: $00
    nop                                           ; $7607: $00
    ld hl, sp+$00                                 ; $7608: $F8 $00
    rst RST_38                                    ; $760A: $FF
    ldh a, [$FFFD]                                ; $760B: $F0 $FD
    ldh a, [c]                                    ; $760D: $F2
    rst RST_30                                    ; $760E: $F7
    jr z, jr_01A_7606                             ; $760F: $28 $F5

    ld a, [bc]                                    ; $7611: $0A
    push af                                       ; $7612: $F5
    ld a, [bc]                                    ; $7613: $0A
    xor l                                         ; $7614: $AD
    ld d, d                                       ; $7615: $52
    inc hl                                        ; $7616: $23
    call c, Call_000_03FC                         ; $7617: $DC $FC $03
    add e                                         ; $761A: $83
    nop                                           ; $761B: $00
    add b                                         ; $761C: $80
    nop                                           ; $761D: $00
    add b                                         ; $761E: $80
    nop                                           ; $761F: $00
    nop                                           ; $7620: $00
    nop                                           ; $7621: $00
    nop                                           ; $7622: $00
    nop                                           ; $7623: $00

jr_01A_7624:
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
    ld bc, $0200                                  ; $7638: $01 $00 $02
    ld bc, $01E2                                  ; $763B: $01 $E2 $01
    sbc l                                         ; $763E: $9D
    ld h, e                                       ; $763F: $63
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
    ldh [rP1], a                                  ; $7658: $E0 $00
    ldh a, [$FF80]                                ; $765A: $F0 $80
    ldh a, [rP1]                                  ; $765C: $F0 $00
    ld hl, sp+$00                                 ; $765E: $F8 $00
    add b                                         ; $7660: $80
    nop                                           ; $7661: $00
    add b                                         ; $7662: $80
    nop                                           ; $7663: $00
    ld b, b                                       ; $7664: $40
    add b                                         ; $7665: $80
    ld h, b                                       ; $7666: $60
    add b                                         ; $7667: $80
    ret nc                                        ; $7668: $D0

    and b                                         ; $7669: $A0
    ret z                                         ; $766A: $C8

    or b                                          ; $766B: $B0
    ld h, a                                       ; $766C: $67
    sbc b                                         ; $766D: $98
    pop hl                                        ; $766E: $E1
    sbc [hl]                                      ; $766F: $9E
    sub c                                         ; $7670: $91
    ld c, $BA                                     ; $7671: $0E $BA
    dec d                                         ; $7673: $15
    db $FD                                        ; $7674: $FD
    ld a, [de]                                    ; $7675: $1A
    cp a                                          ; $7676: $BF
    ld e, h                                       ; $7677: $5C
    ccf                                           ; $7678: $3F
    sbc $3E                                       ; $7679: $DE $3E
    db $DD                                        ; $767B: $DD
    cp $0D                                        ; $767C: $FE $0D
    rrca                                          ; $767E: $0F
    nop                                           ; $767F: $00
    add d                                         ; $7680: $82
    ld bc, $8345                                  ; $7681: $01 $45 $83
    dec sp                                        ; $7684: $3B
    add $9E                                       ; $7685: $C6 $9E
    jp hl                                         ; $7687: $E9


    ld hl, sp+$67                                 ; $7688: $F8 $67
    di                                            ; $768A: $F3
    rrca                                          ; $768B: $0F
    ld a, [hl]                                    ; $768C: $7E
    rst RST_18                                    ; $768D: $DF
    ld hl, sp+$5F                                 ; $768E: $F8 $5F
    pop af                                        ; $7690: $F1
    cp a                                          ; $7691: $BF
    rst RST_38                                    ; $7692: $FF
    rst RST_38                                    ; $7693: $FF
    rst RST_38                                    ; $7694: $FF
    rst RST_38                                    ; $7695: $FF
    rst RST_38                                    ; $7696: $FF
    cp $FE                                        ; $7697: $FE $FE
    ld a, l                                       ; $7699: $7D
    ld a, [hl]                                    ; $769A: $7E
    dec a                                         ; $769B: $3D
    ld a, a                                       ; $769C: $7F
    inc e                                         ; $769D: $1C
    cp $6C                                        ; $769E: $FE $6C
    nop                                           ; $76A0: $00
    nop                                           ; $76A1: $00
    ld [hl], b                                    ; $76A2: $70
    nop                                           ; $76A3: $00
    ld c, h                                       ; $76A4: $4C
    jr nc, jr_01A_76DA                            ; $76A5: $30 $33

    inc c                                         ; $76A7: $0C
    inc c                                         ; $76A8: $0C
    rlca                                          ; $76A9: $07
    ld b, $03                                     ; $76AA: $06 $03
    add e                                         ; $76AC: $83
    ld bc, $8041                                  ; $76AD: $01 $41 $80
    jr nz, @-$3E                                  ; $76B0: $20 $C0

    rra                                           ; $76B2: $1F
    ldh [$FF3F], a                                ; $76B3: $E0 $3F
    call c, $26FF                                 ; $76B5: $DC $FF $26
    rst RST_38                                    ; $76B8: $FF
    cpl                                           ; $76B9: $2F
    ld a, a                                       ; $76BA: $7F
    ccf                                           ; $76BB: $3F
    ld a, a                                       ; $76BC: $7F

jr_01A_76BD:
    ld hl, $0031                                  ; $76BD: $21 $31 $00
    ccf                                           ; $76C0: $3F
    jr @+$3E                                      ; $76C1: $18 $3C

    jr jr_01A_76BD                                ; $76C3: $18 $F8

    jr nc, @-$0E                                  ; $76C5: $30 $F0

    ld h, b                                       ; $76C7: $60
    ld h, b                                       ; $76C8: $60
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

jr_01A_76DA:
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
    jr jr_01A_7700                                ; $76FE: $18 $00

jr_01A_7700:
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
    ld bc, $0100                                  ; $7716: $01 $00 $01
    nop                                           ; $7719: $00
    ld bc, $0100                                  ; $771A: $01 $00 $01
    nop                                           ; $771D: $00
    ld bc, $0000                                  ; $771E: $01 $00 $00
    nop                                           ; $7721: $00
    nop                                           ; $7722: $00
    nop                                           ; $7723: $00
    nop                                           ; $7724: $00
    nop                                           ; $7725: $00
    ld bc, $0600                                  ; $7726: $01 $00 $06
    ld bc, $050A                                  ; $7729: $01 $0A $05
    ld a, [bc]                                    ; $772C: $0A

jr_01A_772D:
    dec b                                         ; $772D: $05
    rra                                           ; $772E: $1F
    nop                                           ; $772F: $00
    db $10                                        ; $7730: $10
    rrca                                          ; $7731: $0F
    inc hl                                        ; $7732: $23
    rra                                           ; $7733: $1F
    dec h                                         ; $7734: $25

jr_01A_7735:
    rra                                           ; $7735: $1F
    dec hl                                        ; $7736: $2B
    rra                                           ; $7737: $1F
    ld e, a                                       ; $7738: $5F
    ccf                                           ; $7739: $3F
    ld l, a                                       ; $773A: $6F
    ccf                                           ; $773B: $3F
    ld a, a                                       ; $773C: $7F
    ccf                                           ; $773D: $3F
    ld a, a                                       ; $773E: $7F
    ccf                                           ; $773F: $3F
    nop                                           ; $7740: $00
    nop                                           ; $7741: $00
    nop                                           ; $7742: $00
    nop                                           ; $7743: $00
    ldh [rP1], a                                  ; $7744: $E0 $00
    jr @-$1E                                      ; $7746: $18 $E0

    inc b                                         ; $7748: $04
    ld hl, sp+$14                                 ; $7749: $F8 $14
    add sp, $3C                                   ; $774B: $E8 $3C
    ret nz                                        ; $774D: $C0

    db $F4                                        ; $774E: $F4

jr_01A_774F:
    ld [$D8E4], sp                                ; $774F: $08 $E4 $D8
    ld hl, sp-$80                                 ; $7752: $F8 $80
    ret nz                                        ; $7754: $C0

    add b                                         ; $7755: $80
    ret nz                                        ; $7756: $C0

    add b                                         ; $7757: $80
    ret nz                                        ; $7758: $C0

    add b                                         ; $7759: $80
    ldh a, [rP1]                                  ; $775A: $F0 $00
    ret z                                         ; $775C: $C8

    jr nc, jr_01A_774F                            ; $775D: $30 $F0

    nop                                           ; $775F: $00
    rst RST_38                                    ; $7760: $FF
    ld a, a                                       ; $7761: $7F
    rst RST_38                                    ; $7762: $FF
    ld a, [hl]                                    ; $7763: $7E
    cp $7D                                        ; $7764: $FE $7D
    cp $7D                                        ; $7766: $FE $7D

jr_01A_7768:
    rst RST_38                                    ; $7768: $FF
    ld a, [hl]                                    ; $7769: $7E

jr_01A_776A:
    rst RST_38                                    ; $776A: $FF
    ld [hl], b                                    ; $776B: $70
    ld a, a                                       ; $776C: $7F
    ld l, $3F                                     ; $776D: $2E $3F
    ld e, $3F                                     ; $776F: $1E $3F
    dec e                                         ; $7771: $1D
    ccf                                           ; $7772: $3F
    inc e                                         ; $7773: $1C
    ld a, $1D                                     ; $7774: $3E $1D
    ld a, $1D                                     ; $7776: $3E $1D
    ccf                                           ; $7778: $3F
    dec de                                        ; $7779: $1B
    ccf                                           ; $777A: $3F
    inc de                                        ; $777B: $13
    rra                                           ; $777C: $1F
    rlca                                          ; $777D: $07
    rra                                           ; $777E: $1F
    nop                                           ; $777F: $00
    add sp, $10                                   ; $7780: $E8 $10
    ret c                                         ; $7782: $D8

    jr nz, jr_01A_772D                            ; $7783: $20 $A8

    ld d, b                                       ; $7785: $50
    rst RST_10                                    ; $7786: $D7
    jr z, jr_01A_7805                             ; $7787: $28 $7C

    add e                                         ; $7789: $83
    ld l, h                                       ; $778A: $6C
    or e                                          ; $778B: $B3
    ld [$3535], a                                 ; $778C: $EA $35 $35
    jp c, $D8B6                                   ; $778F: $DA $B6 $D8

    rst RST_18                                    ; $7792: $DF
    ldh [$FFF0], a                                ; $7793: $E0 $F0
    cpl                                           ; $7795: $2F
    ccf                                           ; $7796: $3F
    rst RST_08                                    ; $7797: $CF
    sbc a                                         ; $7798: $9F
    ldh [rIE], a                                  ; $7799: $E0 $FF
    ldh a, [c]                                    ; $779B: $F2
    sbc [hl]                                      ; $779C: $9E
    ei                                            ; $779D: $FB
    rst RST_08                                    ; $779E: $CF
    db $FC                                        ; $779F: $FC
    jr nc, jr_01A_77A2                            ; $77A0: $30 $00

jr_01A_77A2:
    ld d, b                                       ; $77A2: $50
    jr nz, jr_01A_7735                            ; $77A3: $20 $90

    ld h, b                                       ; $77A5: $60
    jr nz, jr_01A_7768                            ; $77A6: $20 $C0

    jr nz, jr_01A_776A                            ; $77A8: $20 $C0

    ld b, b                                       ; $77AA: $40
    add b                                         ; $77AB: $80
    add b                                         ; $77AC: $80
    nop                                           ; $77AD: $00
    nop                                           ; $77AE: $00
    nop                                           ; $77AF: $00
    ccf                                           ; $77B0: $3F
    nop                                           ; $77B1: $00
    pop bc                                        ; $77B2: $C1
    ld a, $0E                                     ; $77B3: $3E $0E
    ldh a, [$FFF0]                                ; $77B5: $F0 $F0
    add b                                         ; $77B7: $80
    ret nz                                        ; $77B8: $C0

    nop                                           ; $77B9: $00
    add b                                         ; $77BA: $80
    nop                                           ; $77BB: $00
    jp $FD00                                      ; $77BC: $C3 $00 $FD


    jp nz, Jump_000_0003                          ; $77BF: $C2 $03 $00

    rlca                                          ; $77C2: $07
    ld [bc], a                                    ; $77C3: $02
    ld a, [bc]                                    ; $77C4: $0A
    rlca                                          ; $77C5: $07
    dec c                                         ; $77C6: $0D
    inc bc                                        ; $77C7: $03
    dec de                                        ; $77C8: $1B
    dec c                                         ; $77C9: $0D
    rra                                           ; $77CA: $1F
    ld b, $1F                                     ; $77CB: $06 $1F
    add hl, bc                                    ; $77CD: $09
    rrca                                          ; $77CE: $0F
    inc b                                         ; $77CF: $04
    inc c                                         ; $77D0: $0C
    inc bc                                        ; $77D1: $03
    inc b                                         ; $77D2: $04
    inc bc                                        ; $77D3: $03
    add hl, bc                                    ; $77D4: $09
    ld b, $13                                     ; $77D5: $06 $13
    inc c                                         ; $77D7: $0C
    dec h                                         ; $77D8: $25
    jr @+$5C                                      ; $77D9: $18 $5A

    ld hl, $006F                                  ; $77DB: $21 $6F $00
    ld [$AE07], sp                                ; $77DE: $08 $07 $AE
    ld e, e                                       ; $77E1: $5B
    db $FD                                        ; $77E2: $FD
    ld e, e                                       ; $77E3: $5B
    rst RST_38                                    ; $77E4: $FF
    add [hl]                                      ; $77E5: $86
    rst RST_08                                    ; $77E6: $CF
    ld sp, $B2CF                                  ; $77E7: $31 $CF $B2
    adc a                                         ; $77EA: $8F
    halt                                          ; $77EB: $76
    sbc e                                         ; $77EC: $9B
    ld h, l                                       ; $77ED: $65
    xor e                                         ; $77EE: $AB
    ld d, [hl]                                    ; $77EF: $56
    scf                                           ; $77F0: $37
    adc $6F                                       ; $77F1: $CE $6F
    sbc l                                         ; $77F3: $9D
    rst RST_28                                    ; $77F4: $EF
    add hl, sp                                    ; $77F5: $39
    cp a                                          ; $77F6: $BF
    ld d, c                                       ; $77F7: $51
    ld a, a                                       ; $77F8: $7F
    sub c                                         ; $77F9: $91
    ld [hl], a                                    ; $77FA: $77
    and d                                         ; $77FB: $A2
    ld [hl], a                                    ; $77FC: $77
    and b                                         ; $77FD: $A0
    ldh a, [rP1]                                  ; $77FE: $F0 $00
    ld hl, sp-$50                                 ; $7800: $F8 $B0
    ldh a, [rP1]                                  ; $7802: $F0 $00
    ret nz                                        ; $7804: $C0

jr_01A_7805:
    add b                                         ; $7805: $80
    ret nz                                        ; $7806: $C0

    add b                                         ; $7807: $80
    ldh [$FFC0], a                                ; $7808: $E0 $C0
    ldh [$FF80], a                                ; $780A: $E0 $80
    ret nz                                        ; $780C: $C0

    nop                                           ; $780D: $00
    add b                                         ; $780E: $80
    nop                                           ; $780F: $00
    add b                                         ; $7810: $80
    nop                                           ; $7811: $00
    add b                                         ; $7812: $80
    nop                                           ; $7813: $00
    add b                                         ; $7814: $80
    nop                                           ; $7815: $00
    add b                                         ; $7816: $80
    nop                                           ; $7817: $00
    add b                                         ; $7818: $80
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
    ld b, $00                                     ; $7828: $06 $00
    dec b                                         ; $782A: $05
    ld [bc], a                                    ; $782B: $02
    inc b                                         ; $782C: $04
    inc bc                                        ; $782D: $03
    ld [bc], a                                    ; $782E: $02
    ld bc, $0001                                  ; $782F: $01 $01 $00
    nop                                           ; $7832: $00
    nop                                           ; $7833: $00
    ld bc, $0300                                  ; $7834: $01 $00 $03
    ld bc, $01FF                                  ; $7837: $01 $FF $01
    ld [hl], a                                    ; $783A: $77
    sbc $AA                                       ; $783B: $DE $AA
    db $DD                                        ; $783D: $DD
    rst RST_30                                    ; $783E: $F7
    ld e, l                                       ; $783F: $5D
    nop                                           ; $7840: $00
    nop                                           ; $7841: $00
    nop                                           ; $7842: $00
    nop                                           ; $7843: $00
    inc c                                         ; $7844: $0C
    nop                                           ; $7845: $00
    dec sp                                        ; $7846: $3B
    inc b                                         ; $7847: $04
    ld d, c                                       ; $7848: $51
    ld l, $F3                                     ; $7849: $2E $F3
    inc c                                         ; $784B: $0C
    ld h, h                                       ; $784C: $64
    sbc e                                         ; $784D: $9B
    add hl, de                                    ; $784E: $19
    and $12                                       ; $784F: $E6 $12
    db $ED                                        ; $7851: $ED
    sub e                                         ; $7852: $93
    ld l, h                                       ; $7853: $6C
    or $89                                        ; $7854: $F6 $89
    db $ED                                        ; $7856: $ED
    jp nc, $E5FB                                  ; $7857: $D2 $FB $E5

    di                                            ; $785A: $F3
    db $EC                                        ; $785B: $EC
    rst RST_38                                    ; $785C: $FF
    ld h, d                                       ; $785D: $62
    ld a, a                                       ; $785E: $7F
    cp b                                          ; $785F: $B8
    ccf                                           ; $7860: $3F
    ret nc                                        ; $7861: $D0

    ld a, a                                       ; $7862: $7F
    sbc e                                         ; $7863: $9B
    ld a, a                                       ; $7864: $7F
    xor e                                         ; $7865: $AB
    cp a                                          ; $7866: $BF
    ld l, e                                       ; $7867: $6B
    ld a, a                                       ; $7868: $7F
    db $EB                                        ; $7869: $EB
    rst RST_38                                    ; $786A: $FF
    sub $FF                                       ; $786B: $D6 $FF
    ld c, $FE                                     ; $786D: $0E $FE
    ld sp, hl                                     ; $786F: $F9
    ld hl, sp+$17                                 ; $7870: $F8 $17
    jr nc, jr_01A_7883                            ; $7872: $30 $0F

    ld e, b                                       ; $7874: $58
    scf                                           ; $7875: $37
    ld e, a                                       ; $7876: $5F

jr_01A_7877:
    jr c, jr_01A_78F8                             ; $7877: $38 $7F

    ld a, $3F                                     ; $7879: $3E $3F
    dec e                                         ; $787B: $1D
    ld e, a                                       ; $787C: $5F
    inc hl                                        ; $787D: $23
    ld [hl], e                                    ; $787E: $73
    nop                                           ; $787F: $00
    db $FC                                        ; $7880: $FC
    ld [hl], b                                    ; $7881: $70
    rst RST_38                                    ; $7882: $FF

jr_01A_7883:
    inc e                                         ; $7883: $1C
    rst RST_38                                    ; $7884: $FF
    ld h, a                                       ; $7885: $67
    rst RST_38                                    ; $7886: $FF
    db $10                                        ; $7887: $10
    ld e, $E8                                     ; $7888: $1E $E8
    add hl, de                                    ; $788A: $19
    and $18                                       ; $788B: $E6 $18
    rst RST_20                                    ; $788D: $E7
    jr jr_01A_7877                                ; $788E: $18 $E7

    ld hl, sp+$07                                 ; $7890: $F8 $07
    db $FC                                        ; $7892: $FC
    sbc e                                         ; $7893: $9B
    rst RST_38                                    ; $7894: $FF
    db $EC                                        ; $7895: $EC
    rst RST_38                                    ; $7896: $FF
    xor $FF                                       ; $7897: $EE $FF
    rrca                                          ; $7899: $0F
    rrca                                          ; $789A: $0F
    inc bc                                        ; $789B: $03
    inc bc                                        ; $789C: $03
    nop                                           ; $789D: $00
    nop                                           ; $789E: $00
    nop                                           ; $789F: $00
    add b                                         ; $78A0: $80
    nop                                           ; $78A1: $00
    add b                                         ; $78A2: $80
    nop                                           ; $78A3: $00
    nop                                           ; $78A4: $00
    nop                                           ; $78A5: $00
    add b                                         ; $78A6: $80
    nop                                           ; $78A7: $00
    ld h, b                                       ; $78A8: $60
    add b                                         ; $78A9: $80
    ld a, b                                       ; $78AA: $78
    and b                                         ; $78AB: $A0
    ld a, h                                       ; $78AC: $7C
    or b                                          ; $78AD: $B0
    rst RST_38                                    ; $78AE: $FF
    ld [hl], h                                    ; $78AF: $74
    rst RST_38                                    ; $78B0: $FF
    rst RST_30                                    ; $78B1: $F7
    rst RST_38                                    ; $78B2: $FF
    rst RST_28                                    ; $78B3: $EF
    rst RST_38                                    ; $78B4: $FF
    rrca                                          ; $78B5: $0F
    rst RST_08                                    ; $78B6: $CF
    add b                                         ; $78B7: $80
    ret nz                                        ; $78B8: $C0

    add b                                         ; $78B9: $80
    ret nz                                        ; $78BA: $C0

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
    ld bc, $0300                                  ; $78C8: $01 $00 $03
    ld bc, $0305                                  ; $78CB: $01 $05 $03
    dec bc                                        ; $78CE: $0B
    rlca                                          ; $78CF: $07
    inc de                                        ; $78D0: $13
    rrca                                          ; $78D1: $0F
    rla                                           ; $78D2: $17
    rrca                                          ; $78D3: $0F
    daa                                           ; $78D4: $27
    rra                                           ; $78D5: $1F
    rst RST_28                                    ; $78D6: $EF
    rra                                           ; $78D7: $1F
    rst RST_28                                    ; $78D8: $EF
    ld e, a                                       ; $78D9: $5F
    ld a, a                                       ; $78DA: $7F
    sbc a                                         ; $78DB: $9F
    ld a, a                                       ; $78DC: $7F
    sbc a                                         ; $78DD: $9F
    rst RST_38                                    ; $78DE: $FF
    rrca                                          ; $78DF: $0F
    cp $30                                        ; $78E0: $FE $30
    cp $F8                                        ; $78E2: $FE $F8
    ei                                            ; $78E4: $FB

jr_01A_78E5:
    db $F4                                        ; $78E5: $F4
    ld a, [$FAF5]                                 ; $78E6: $FA $F5 $FA
    push bc                                       ; $78E9: $C5
    sub $A9                                       ; $78EA: $D6 $A9
    sub c                                         ; $78EC: $91
    ld l, [hl]                                    ; $78ED: $6E
    cp $01                                        ; $78EE: $FE $01
    xor c                                         ; $78F0: $A9
    ld d, b                                       ; $78F1: $50
    ret nc                                        ; $78F2: $D0

    jr nz, jr_01A_78E5                            ; $78F3: $20 $F0

    nop                                           ; $78F5: $00
    ret nz                                        ; $78F6: $C0

    add b                                         ; $78F7: $80

jr_01A_78F8:
    ret nz                                        ; $78F8: $C0

    add b                                         ; $78F9: $80
    add b                                         ; $78FA: $80
    nop                                           ; $78FB: $00
    ret nz                                        ; $78FC: $C0

    nop                                           ; $78FD: $00
    ldh a, [rLCDC]                                ; $78FE: $F0 $40
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
    add b                                         ; $7912: $80
    nop                                           ; $7913: $00
    ret nz                                        ; $7914: $C0

    nop                                           ; $7915: $00
    and b                                         ; $7916: $A0
    ld b, b                                       ; $7917: $40
    and b                                         ; $7918: $A0
    ld b, b                                       ; $7919: $40
    ld d, b                                       ; $791A: $50
    and b                                         ; $791B: $A0
    ret nc                                        ; $791C: $D0

    jr nz, jr_01A_794F                            ; $791D: $20 $30

    nop                                           ; $791F: $00
    ret nz                                        ; $7920: $C0

    nop                                           ; $7921: $00
    ldh a, [$FFC0]                                ; $7922: $F0 $C0
    ld hl, sp+$30                                 ; $7924: $F8 $30
    ld hl, sp-$50                                 ; $7926: $F8 $B0
    db $FC                                        ; $7928: $FC
    ld a, b                                       ; $7929: $78
    cp $7C                                        ; $792A: $FE $7C
    ld a, a                                       ; $792C: $7F
    ld c, $0F                                     ; $792D: $0E $0F
    ld [bc], a                                    ; $792F: $02
    inc bc                                        ; $7930: $03
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

jr_01A_794F:
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
    rrca                                          ; $795C: $0F
    nop                                           ; $795D: $00
    ld sp, $040E                                  ; $795E: $31 $0E $04
    inc bc                                        ; $7961: $03
    ld [bc], a                                    ; $7962: $02
    ld bc, $0001                                  ; $7963: $01 $01 $00
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
    ld [bc], a                                    ; $7980: $02
    ld bc, $0304                                  ; $7981: $01 $04 $03
    rlca                                          ; $7984: $07
    nop                                           ; $7985: $00
    rrca                                          ; $7986: $0F
    rlca                                          ; $7987: $07
    rra                                           ; $7988: $1F
    inc c                                         ; $7989: $0C
    rra                                           ; $798A: $1F
    ld b, $07                                     ; $798B: $06 $07
    inc bc                                        ; $798D: $03
    rlca                                          ; $798E: $07
    inc bc                                        ; $798F: $03
    db $E3                                        ; $7990: $E3
    ld bc, $61FF                                  ; $7991: $01 $FF $61
    ld a, a                                       ; $7994: $7F
    dec a                                         ; $7995: $3D
    ccf                                           ; $7996: $3F
    dec e                                         ; $7997: $1D
    rra                                           ; $7998: $1F
    dec bc                                        ; $7999: $0B
    rrca                                          ; $799A: $0F
    inc bc                                        ; $799B: $03
    rlca                                          ; $799C: $07
    inc bc                                        ; $799D: $03
    rlca                                          ; $799E: $07
    nop                                           ; $799F: $00
    nop                                           ; $79A0: $00
    nop                                           ; $79A1: $00
    nop                                           ; $79A2: $00
    nop                                           ; $79A3: $00
    jr nc, jr_01A_79A6                            ; $79A4: $30 $00

jr_01A_79A6:
    pop de                                        ; $79A6: $D1
    jr nz, @+$23                                  ; $79A7: $20 $21

    ret nz                                        ; $79A9: $C0

    ld hl, $E2C0                                  ; $79AA: $21 $C0 $E2
    ld bc, $C1E2                                  ; $79AD: $01 $E2 $C1
    ldh a, [c]                                    ; $79B0: $F2
    ld h, c                                       ; $79B1: $61
    cp $63                                        ; $79B2: $FE $63
    xor $D3                                       ; $79B4: $EE $D3
    cp $DB                                        ; $79B6: $FE $DB
    cp $E3                                        ; $79B8: $FE $E3
    cp $F3                                        ; $79BA: $FE $F3
    rst RST_18                                    ; $79BC: $DF
    ld hl, sp-$35                                 ; $79BD: $F8 $CB
    db $FD                                        ; $79BF: $FD
    db $D3                                        ; $79C0: $D3
    db $FD                                        ; $79C1: $FD
    ei                                            ; $79C2: $FB
    db $FD                                        ; $79C3: $FD
    ld sp, hl                                     ; $79C4: $F9
    ld a, $7F                                     ; $79C5: $3E $7F
    jr jr_01A_7A24                                ; $79C7: $18 $5B

    jr nz, jr_01A_7A1A                            ; $79C9: $20 $4F

    inc sp                                        ; $79CB: $33
    daa                                           ; $79CC: $27
    jr jr_01A_79F0                                ; $79CD: $18 $21

    ld e, $11                                     ; $79CF: $1E $11
    ld c, $0A                                     ; $79D1: $0E $0A
    dec b                                         ; $79D3: $05
    dec b                                         ; $79D4: $05
    ld [bc], a                                    ; $79D5: $02
    inc bc                                        ; $79D6: $03
    nop                                           ; $79D7: $00
    ld bc, $0200                                  ; $79D8: $01 $00 $02
    ld bc, $0102                                  ; $79DB: $01 $02 $01
    inc bc                                        ; $79DE: $03
    nop                                           ; $79DF: $00
    nop                                           ; $79E0: $00
    nop                                           ; $79E1: $00
    ret nz                                        ; $79E2: $C0

    nop                                           ; $79E3: $00
    ld b, b                                       ; $79E4: $40
    add b                                         ; $79E5: $80
    ld b, b                                       ; $79E6: $40
    add b                                         ; $79E7: $80
    ld b, b                                       ; $79E8: $40
    add b                                         ; $79E9: $80
    ld b, b                                       ; $79EA: $40
    add b                                         ; $79EB: $80
    ld b, b                                       ; $79EC: $40
    add b                                         ; $79ED: $80
    add b                                         ; $79EE: $80
    nop                                           ; $79EF: $00

jr_01A_79F0:
    add b                                         ; $79F0: $80
    nop                                           ; $79F1: $00
    add b                                         ; $79F2: $80
    nop                                           ; $79F3: $00
    add b                                         ; $79F4: $80
    nop                                           ; $79F5: $00
    ldh [rP1], a                                  ; $79F6: $E0 $00
    sbc b                                         ; $79F8: $98
    ld h, b                                       ; $79F9: $60
    db $E4                                        ; $79FA: $E4
    ld a, b                                       ; $79FB: $78
    ld [hl], h                                    ; $79FC: $74
    sbc b                                         ; $79FD: $98
    sbc h                                         ; $79FE: $9C
    ldh [rSB], a                                  ; $79FF: $E0 $01
    nop                                           ; $7A01: $00
    ld c, $01                                     ; $7A02: $0E $01
    inc d                                         ; $7A04: $14
    dec bc                                        ; $7A05: $0B
    ld l, $1D                                     ; $7A06: $2E $1D
    cpl                                           ; $7A08: $2F
    ld e, $3F                                     ; $7A09: $1E $3F
    rra                                           ; $7A0B: $1F
    rra                                           ; $7A0C: $1F
    ld c, $1F                                     ; $7A0D: $0E $1F
    nop                                           ; $7A0F: $00
    inc d                                         ; $7A10: $14
    ld [$0018], sp                                ; $7A11: $08 $18 $00
    nop                                           ; $7A14: $00
    nop                                           ; $7A15: $00
    nop                                           ; $7A16: $00
    nop                                           ; $7A17: $00
    nop                                           ; $7A18: $00
    nop                                           ; $7A19: $00

jr_01A_7A1A:
    nop                                           ; $7A1A: $00
    nop                                           ; $7A1B: $00
    nop                                           ; $7A1C: $00
    nop                                           ; $7A1D: $00
    nop                                           ; $7A1E: $00
    nop                                           ; $7A1F: $00
    or b                                          ; $7A20: $B0
    ldh [$FFE0], a                                ; $7A21: $E0 $E0
    add b                                         ; $7A23: $80

jr_01A_7A24:
    or b                                          ; $7A24: $B0
    nop                                           ; $7A25: $00
    call nc, $8A20                                ; $7A26: $D4 $20 $8A
    ld [hl], h                                    ; $7A29: $74
    ld a, d                                       ; $7A2A: $7A
    add h                                         ; $7A2B: $84
    add a                                         ; $7A2C: $87
    ld a, b                                       ; $7A2D: $78
    rrca                                          ; $7A2E: $0F
    pop af                                        ; $7A2F: $F1
    ld [hl], e                                    ; $7A30: $73
    adc h                                         ; $7A31: $8C
    db $DB                                        ; $7A32: $DB
    inc h                                         ; $7A33: $24
    rst RST_30                                    ; $7A34: $F7
    add sp, -$11                                  ; $7A35: $E8 $EF
    ld d, $39                                     ; $7A37: $16 $39
    adc $FF                                       ; $7A39: $CE $FF
    scf                                           ; $7A3B: $37
    rst RST_38                                    ; $7A3C: $FF
    ld b, b                                       ; $7A3D: $40
    ld a, a                                       ; $7A3E: $7F
    ld a, $7F                                     ; $7A3F: $3E $7F
    ld b, $EF                                     ; $7A41: $06 $EF
    rla                                           ; $7A43: $17
    scf                                           ; $7A44: $37
    ret z                                         ; $7A45: $C8

    rra                                           ; $7A46: $1F
    and $1F                                       ; $7A47: $E6 $1F
    db $EC                                        ; $7A49: $EC
    adc $35                                       ; $7A4A: $CE $35
    cp $41                                        ; $7A4C: $FE $41
    cp $ED                                        ; $7A4E: $FE $ED
    rst RST_38                                    ; $7A50: $FF
    ld e, $1F                                     ; $7A51: $1E $1F
    ld c, $0F                                     ; $7A53: $0E $0F
    ld b, $0F                                     ; $7A55: $06 $0F
    ld b, $07                                     ; $7A57: $06 $07
    ld [bc], a                                    ; $7A59: $02
    rlca                                          ; $7A5A: $07
    ld [bc], a                                    ; $7A5B: $02
    inc bc                                        ; $7A5C: $03
    nop                                           ; $7A5D: $00
    nop                                           ; $7A5E: $00
    nop                                           ; $7A5F: $00
    jr c, jr_01A_7A62                             ; $7A60: $38 $00

jr_01A_7A62:
    add $38                                       ; $7A62: $C6 $38
    pop de                                        ; $7A64: $D1
    ld a, [hl]                                    ; $7A65: $7E
    ld a, [$FDFF]                                 ; $7A66: $FA $FF $FD
    rst RST_38                                    ; $7A69: $FF
    rst RST_38                                    ; $7A6A: $FF
    rst RST_20                                    ; $7A6B: $E7
    rst RST_20                                    ; $7A6C: $E7
    reti                                          ; $7A6D: $D9


    ret                                           ; $7A6E: $C9


    or [hl]                                       ; $7A6F: $B6
    db $D3                                        ; $7A70: $D3
    inc l                                         ; $7A71: $2C
    sub $A9                                       ; $7A72: $D6 $A9
    or $C9                                        ; $7A74: $F6 $C9
    cp $01                                        ; $7A76: $FE $01
    push af                                       ; $7A78: $F5
    jp z, $1BE4                                   ; $7A79: $CA $E4 $1B

    ei                                            ; $7A7C: $FB
    nop                                           ; $7A7D: $00
    adc b                                         ; $7A7E: $88
    ld [hl], b                                    ; $7A7F: $70
    db $10                                        ; $7A80: $10
    ldh [$FF08], a                                ; $7A81: $E0 $08
    ldh a, [$FF08]                                ; $7A83: $F0 $08
    ldh a, [$FF7C]                                ; $7A85: $F0 $7C
    add b                                         ; $7A87: $80
    cp $7C                                        ; $7A88: $FE $7C
    ld a, $EC                                     ; $7A8A: $3E $EC
    ld l, l                                       ; $7A8C: $6D
    sub d                                         ; $7A8D: $92
    and l                                         ; $7A8E: $A5
    ld e, d                                       ; $7A8F: $5A
    sbc a                                         ; $7A90: $9F
    ld h, b                                       ; $7A91: $60
    ld [hl], a                                    ; $7A92: $77
    ld c, $1B                                     ; $7A93: $0E $1B
    ld c, $0F                                     ; $7A95: $0E $0F
    inc b                                         ; $7A97: $04
    rlca                                          ; $7A98: $07
    inc bc                                        ; $7A99: $03
    rlca                                          ; $7A9A: $07
    inc bc                                        ; $7A9B: $03
    rlca                                          ; $7A9C: $07
    inc bc                                        ; $7A9D: $03
    inc bc                                        ; $7A9E: $03
    ld bc, $0000                                  ; $7A9F: $01 $00 $00
    add b                                         ; $7AA2: $80
    nop                                           ; $7AA3: $00
    ret nz                                        ; $7AA4: $C0

    add b                                         ; $7AA5: $80
    ld h, b                                       ; $7AA6: $60
    ret nz                                        ; $7AA7: $C0

    or b                                          ; $7AA8: $B0
    ldh [$FFF8], a                                ; $7AA9: $E0 $F8
    ldh a, [$FFFC]                                ; $7AAB: $F0 $FC
    ld hl, sp-$04                                 ; $7AAD: $F8 $FC
    ld b, b                                       ; $7AAF: $40
    and $18                                       ; $7AB0: $E6 $18
    cp d                                          ; $7AB2: $BA
    ld b, h                                       ; $7AB3: $44
    or [hl]                                       ; $7AB4: $B6
    ld b, b                                       ; $7AB5: $40
    xor b                                         ; $7AB6: $A8
    ld d, b                                       ; $7AB7: $50
    ld l, b                                       ; $7AB8: $68
    sub b                                         ; $7AB9: $90
    call nc, $3428                                ; $7ABA: $D4 $28 $34
    ld [$000C], sp                                ; $7ABD: $08 $0C $00
    ldh [$FF80], a                                ; $7AC0: $E0 $80
    ldh a, [rNR41]                                ; $7AC2: $F0 $20
    ldh a, [$FFE0]                                ; $7AC4: $F0 $E0
    ld hl, sp-$10                                 ; $7AC6: $F8 $F0
    ld hl, sp-$10                                 ; $7AC8: $F8 $F0
    ld hl, sp+$70                                 ; $7ACA: $F8 $70
    ld hl, sp+$70                                 ; $7ACC: $F8 $70
    ld hl, sp+$70                                 ; $7ACE: $F8 $70
    ld [hl], b                                    ; $7AD0: $70
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
    adc a                                         ; $7AE0: $8F
    rlca                                          ; $7AE1: $07
    adc a                                         ; $7AE2: $8F
    ld b, $1E                                     ; $7AE3: $06 $1E
    inc c                                         ; $7AE5: $0C
    inc e                                         ; $7AE6: $1C
    ld [$0018], sp                                ; $7AE7: $08 $18 $00
    nop                                           ; $7AEA: $00
    nop                                           ; $7AEB: $00
    nop                                           ; $7AEC: $00
    nop                                           ; $7AED: $00
    nop                                           ; $7AEE: $00
    nop                                           ; $7AEF: $00
    jr jr_01A_7AF2                                ; $7AF0: $18 $00

jr_01A_7AF2:
    ld e, $08                                     ; $7AF2: $1E $08
    rrca                                          ; $7AF4: $0F
    ld b, $07                                     ; $7AF5: $06 $07
    inc bc                                        ; $7AF7: $03
    inc bc                                        ; $7AF8: $03
    ld bc, $0001                                  ; $7AF9: $01 $01 $00
    nop                                           ; $7AFC: $00
    nop                                           ; $7AFD: $00
    nop                                           ; $7AFE: $00
    nop                                           ; $7AFF: $00
    add c                                         ; $7B00: $81
    nop                                           ; $7B01: $00
    inc bc                                        ; $7B02: $03
    nop                                           ; $7B03: $00
    dec b                                         ; $7B04: $05
    ld [bc], a                                    ; $7B05: $02
    inc b                                         ; $7B06: $04
    inc bc                                        ; $7B07: $03
    inc b                                         ; $7B08: $04
    inc bc                                        ; $7B09: $03
    inc b                                         ; $7B0A: $04
    inc bc                                        ; $7B0B: $03
    inc b                                         ; $7B0C: $04
    inc bc                                        ; $7B0D: $03
    ld h, d                                       ; $7B0E: $62
    ld bc, $2077                                  ; $7B0F: $01 $77 $20
    inc a                                         ; $7B12: $3C
    inc de                                        ; $7B13: $13
    cp h                                          ; $7B14: $BC

jr_01A_7B15:
    dec de                                        ; $7B15: $1B
    rst RST_38                                    ; $7B16: $FF
    sbc b                                         ; $7B17: $98
    ld a, l                                       ; $7B18: $7D
    ldh [c], a                                    ; $7B19: $E2
    sbc a                                         ; $7B1A: $9F
    ld hl, sp-$39                                 ; $7B1B: $F8 $C7
    ld a, [hl]                                    ; $7B1D: $7E
    ld h, c                                       ; $7B1E: $61
    ccf                                           ; $7B1F: $3F
    ld a, a                                       ; $7B20: $7F
    add b                                         ; $7B21: $80
    cp $3C                                        ; $7B22: $FE $3C
    cp $E0                                        ; $7B24: $FE $E0
    ldh [c], a                                    ; $7B26: $E2
    ld e, h                                       ; $7B27: $5C
    jp nz, Jump_01A_413C                          ; $7B28: $C2 $3C $41

    cp [hl]                                       ; $7B2B: $BE
    ld b, c                                       ; $7B2C: $41
    cp [hl]                                       ; $7B2D: $BE
    ld hl, $E1DE                                  ; $7B2E: $21 $DE $E1
    ld e, $7E                                     ; $7B31: $1E $7E
    add c                                         ; $7B33: $81
    ld b, b                                       ; $7B34: $40
    cp a                                          ; $7B35: $BF
    pop bc                                        ; $7B36: $C1
    ld a, $7E                                     ; $7B37: $3E $7E
    add c                                         ; $7B39: $81
    xor e                                         ; $7B3A: $AB
    ld d, h                                       ; $7B3B: $54
    ld a, $C1                                     ; $7B3C: $3E $C1
    sbc b                                         ; $7B3E: $98
    ld h, a                                       ; $7B3F: $67
    nop                                           ; $7B40: $00
    nop                                           ; $7B41: $00
    nop                                           ; $7B42: $00
    nop                                           ; $7B43: $00
    nop                                           ; $7B44: $00
    nop                                           ; $7B45: $00
    nop                                           ; $7B46: $00

jr_01A_7B47:
    nop                                           ; $7B47: $00
    nop                                           ; $7B48: $00
    nop                                           ; $7B49: $00
    nop                                           ; $7B4A: $00
    nop                                           ; $7B4B: $00
    inc c                                         ; $7B4C: $0C
    nop                                           ; $7B4D: $00
    inc e                                         ; $7B4E: $1C
    ld [$1038], sp                                ; $7B4F: $08 $38 $10
    ld sp, hl                                     ; $7B52: $F9
    jr nc, jr_01A_7B47                            ; $7B53: $30 $F2

    ld h, c                                       ; $7B55: $61
    push af                                       ; $7B56: $F5
    ld h, e                                       ; $7B57: $63
    jp hl                                         ; $7B58: $E9


    ld b, a                                       ; $7B59: $47
    di                                            ; $7B5A: $F3
    ld c, [hl]                                    ; $7B5B: $4E
    db $E3                                        ; $7B5C: $E3
    ld e, [hl]                                    ; $7B5D: $5E
    add $3C                                       ; $7B5E: $C6 $3C
    jr nc, jr_01A_7B62                            ; $7B60: $30 $00

jr_01A_7B62:
    ld [hl], b                                    ; $7B62: $70
    jr nz, jr_01A_7B15                            ; $7B63: $20 $B0

    ld h, b                                       ; $7B65: $60
    ld h, b                                       ; $7B66: $60
    ret nz                                        ; $7B67: $C0

    ld h, b                                       ; $7B68: $60
    ret nz                                        ; $7B69: $C0

    ret nz                                        ; $7B6A: $C0

    add b                                         ; $7B6B: $80
    ret nz                                        ; $7B6C: $C0

    add b                                         ; $7B6D: $80
    add b                                         ; $7B6E: $80
    nop                                           ; $7B6F: $00
    sbc b                                         ; $7B70: $98
    nop                                           ; $7B71: $00
    ld a, b                                       ; $7B72: $78
    db $10                                        ; $7B73: $10
    ldh a, [$FF60]                                ; $7B74: $F0 $60
    ldh [$FFC0], a                                ; $7B76: $E0 $C0
    ret nz                                        ; $7B78: $C0

    add b                                         ; $7B79: $80
    add b                                         ; $7B7A: $80
    nop                                           ; $7B7B: $00
    nop                                           ; $7B7C: $00
    nop                                           ; $7B7D: $00
    nop                                           ; $7B7E: $00
    nop                                           ; $7B7F: $00
    call z, $F607                                 ; $7B80: $CC $07 $F6
    ld b, e                                       ; $7B83: $43
    ld a, a                                       ; $7B84: $7F
    ld sp, $1E3F                                  ; $7B85: $31 $3F $1E
    inc e                                         ; $7B88: $1C
    rrca                                          ; $7B89: $0F
    ld c, $07                                     ; $7B8A: $0E $07
    rlca                                          ; $7B8C: $07
    ld bc, $0001                                  ; $7B8D: $01 $01 $00
    nop                                           ; $7B90: $00
    nop                                           ; $7B91: $00
    nop                                           ; $7B92: $00
    nop                                           ; $7B93: $00
    nop                                           ; $7B94: $00
    nop                                           ; $7B95: $00
    nop                                           ; $7B96: $00
    nop                                           ; $7B97: $00
    nop                                           ; $7B98: $00
    nop                                           ; $7B99: $00
    nop                                           ; $7B9A: $00
    nop                                           ; $7B9B: $00
    nop                                           ; $7B9C: $00
    nop                                           ; $7B9D: $00
    nop                                           ; $7B9E: $00
    nop                                           ; $7B9F: $00
    dec sp                                        ; $7BA0: $3B
    call nz, $BC43                                ; $7BA1: $C4 $43 $BC
    inc bc                                        ; $7BA4: $03
    db $FC                                        ; $7BA5: $FC
    add c                                         ; $7BA6: $81
    cp $80                                        ; $7BA7: $FE $80
    rst RST_38                                    ; $7BA9: $FF
    nop                                           ; $7BAA: $00
    rst RST_38                                    ; $7BAB: $FF
    add b                                         ; $7BAC: $80
    rst RST_38                                    ; $7BAD: $FF
    ldh [$FF7F], a                                ; $7BAE: $E0 $7F
    ld a, a                                       ; $7BB0: $7F
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
    ld hl, $D3DF                                  ; $7BC0: $21 $DF $D3
    ld l, $03                                     ; $7BC3: $2E $03
    cp $07                                        ; $7BC5: $FE $07
    db $FD                                        ; $7BC7: $FD
    rlca                                          ; $7BC8: $07
    rst RST_38                                    ; $7BC9: $FF
    inc bc                                        ; $7BCA: $03
    rst RST_38                                    ; $7BCB: $FF
    rrca                                          ; $7BCC: $0F
    db $FC                                        ; $7BCD: $FC
    inc a                                         ; $7BCE: $3C
    ldh a, [$FFF0]                                ; $7BCF: $F0 $F0
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
    rst RST_38                                    ; $7BE0: $FF
    nop                                           ; $7BE1: $00
    rst RST_38                                    ; $7BE2: $FF
    ld a, a                                       ; $7BE3: $7F
    ldh [$FF7F], a                                ; $7BE4: $E0 $7F
    ld a, h                                       ; $7BE6: $7C
    rra                                           ; $7BE7: $1F
    rra                                           ; $7BE8: $1F
    inc bc                                        ; $7BE9: $03
    inc bc                                        ; $7BEA: $03
    nop                                           ; $7BEB: $00
    jr nc, jr_01A_7BEE                            ; $7BEC: $30 $00

jr_01A_7BEE:
    ccf                                           ; $7BEE: $3F
    db $10                                        ; $7BEF: $10
    rra                                           ; $7BF0: $1F
    rrca                                          ; $7BF1: $0F
    ld c, $07                                     ; $7BF2: $0E $07
    rlca                                          ; $7BF4: $07
    ld bc, $0001                                  ; $7BF5: $01 $01 $00
    nop                                           ; $7BF8: $00
    nop                                           ; $7BF9: $00
    nop                                           ; $7BFA: $00
    nop                                           ; $7BFB: $00
    nop                                           ; $7BFC: $00
    nop                                           ; $7BFD: $00
    nop                                           ; $7BFE: $00
    nop                                           ; $7BFF: $00
    rst RST_38                                    ; $7C00: $FF
    nop                                           ; $7C01: $00
    rst RST_38                                    ; $7C02: $FF
    rst RST_38                                    ; $7C03: $FF
    nop                                           ; $7C04: $00
    rst RST_38                                    ; $7C05: $FF
    nop                                           ; $7C06: $00
    rst RST_38                                    ; $7C07: $FF
    ret nz                                        ; $7C08: $C0

    rst RST_38                                    ; $7C09: $FF
    ld hl, sp+$3F                                 ; $7C0A: $F8 $3F
    dec a                                         ; $7C0C: $3D
    rlca                                          ; $7C0D: $07
    ld a, [$FF0F]                                 ; $7C0E: $FA $0F $FF
    rst RST_38                                    ; $7C11: $FF
    rra                                           ; $7C12: $1F
    rst RST_38                                    ; $7C13: $FF
    sub e                                         ; $7C14: $93
    rst RST_38                                    ; $7C15: $FF
    rst RST_30                                    ; $7C16: $F7
    ld a, a                                       ; $7C17: $7F
    ld a, h                                       ; $7C18: $7C
    rra                                           ; $7C19: $1F
    dec de                                        ; $7C1A: $1B
    rrca                                          ; $7C1B: $0F
    rrca                                          ; $7C1C: $0F
    inc bc                                        ; $7C1D: $03
    inc bc                                        ; $7C1E: $03
    nop                                           ; $7C1F: $00
    cp a                                          ; $7C20: $BF
    rst RST_38                                    ; $7C21: $FF
    rst RST_20                                    ; $7C22: $E7
    rst RST_38                                    ; $7C23: $FF
    adc a                                         ; $7C24: $8F
    rst RST_38                                    ; $7C25: $FF
    jr nc, @+$01                                  ; $7C26: $30 $FF

    nop                                           ; $7C28: $00
    rst RST_38                                    ; $7C29: $FF
    rst RST_00                                    ; $7C2A: $C7
    rst RST_38                                    ; $7C2B: $FF
    ccf                                           ; $7C2C: $3F
    rst RST_38                                    ; $7C2D: $FF
    ld h, a                                       ; $7C2E: $67
    rst RST_38                                    ; $7C2F: $FF
    rst RST_08                                    ; $7C30: $CF
    rst RST_38                                    ; $7C31: $FF
    db $FC                                        ; $7C32: $FC
    rst RST_38                                    ; $7C33: $FF
    rst RST_38                                    ; $7C34: $FF
    rst RST_38                                    ; $7C35: $FF
    rrca                                          ; $7C36: $0F
    rst RST_38                                    ; $7C37: $FF
    rst RST_30                                    ; $7C38: $F7
    rst RST_38                                    ; $7C39: $FF
    rst RST_08                                    ; $7C3A: $CF
    rst RST_38                                    ; $7C3B: $FF
    rst RST_38                                    ; $7C3C: $FF
    rst RST_38                                    ; $7C3D: $FF
    rst RST_38                                    ; $7C3E: $FF
    nop                                           ; $7C3F: $00
    rst RST_38                                    ; $7C40: $FF
    rst RST_38                                    ; $7C41: $FF
    ldh [rIE], a                                  ; $7C42: $E0 $FF
    cp $FF                                        ; $7C44: $FE $FF
    nop                                           ; $7C46: $00
    rst RST_38                                    ; $7C47: $FF
    rst RST_38                                    ; $7C48: $FF
    rst RST_38                                    ; $7C49: $FF
    rst RST_38                                    ; $7C4A: $FF
    db $FC                                        ; $7C4B: $FC
    db $F4                                        ; $7C4C: $F4
    ei                                            ; $7C4D: $FB
    dec sp                                        ; $7C4E: $3B
    rst RST_00                                    ; $7C4F: $C7
    rst RST_28                                    ; $7C50: $EF
    rst RST_30                                    ; $7C51: $F7
    rrca                                          ; $7C52: $0F
    rst RST_30                                    ; $7C53: $F7
    adc a                                         ; $7C54: $8F
    rst RST_30                                    ; $7C55: $F7
    rst RST_38                                    ; $7C56: $FF
    add a                                         ; $7C57: $87
    add a                                         ; $7C58: $87
    ei                                            ; $7C59: $FB
    ei                                            ; $7C5A: $FB
    db $FC                                        ; $7C5B: $FC
    rst RST_38                                    ; $7C5C: $FF
    rst RST_38                                    ; $7C5D: $FF
    rst RST_38                                    ; $7C5E: $FF
    nop                                           ; $7C5F: $00
    rst RST_38                                    ; $7C60: $FF
    db $FC                                        ; $7C61: $FC
    inc [hl]                                      ; $7C62: $34
    sra h                                         ; $7C63: $CB $2C
    db $D3                                        ; $7C65: $D3
    inc l                                         ; $7C66: $2C
    db $D3                                        ; $7C67: $D3
    ld hl, sp-$19                                 ; $7C68: $F8 $E7
    ld hl, sp+$07                                 ; $7C6A: $F8 $07
    ld [hl], h                                    ; $7C6C: $74
    set 7, e                                      ; $7C6D: $CB $FB
    db $E4                                        ; $7C6F: $E4
    rst RST_38                                    ; $7C70: $FF
    ldh [$FFFC], a                                ; $7C71: $E0 $FC
    db $EB                                        ; $7C73: $EB
    db $FC                                        ; $7C74: $FC
    db $E3                                        ; $7C75: $E3
    rst RST_38                                    ; $7C76: $FF
    db $E4                                        ; $7C77: $E4
    rst RST_38                                    ; $7C78: $FF
    ret c                                         ; $7C79: $D8

    rst RST_38                                    ; $7C7A: $FF
    inc bc                                        ; $7C7B: $03
    rst RST_38                                    ; $7C7C: $FF
    rst RST_18                                    ; $7C7D: $DF
    rst RST_38                                    ; $7C7E: $FF
    inc c                                         ; $7C7F: $0C
    rst RST_38                                    ; $7C80: $FF
    nop                                           ; $7C81: $00
    or b                                          ; $7C82: $B0
    ld c, a                                       ; $7C83: $4F
    ret nc                                        ; $7C84: $D0

    cpl                                           ; $7C85: $2F
    db $D3                                        ; $7C86: $D3
    cpl                                           ; $7C87: $2F
    ld h, b                                       ; $7C88: $60
    sbc a                                         ; $7C89: $9F
    ld a, b                                       ; $7C8A: $78
    add a                                         ; $7C8B: $87
    cp h                                          ; $7C8C: $BC
    ld e, e                                       ; $7C8D: $5B
    ld a, [hl]                                    ; $7C8E: $7E
    cp l                                          ; $7C8F: $BD
    cp $0D                                        ; $7C90: $FE $0D
    cp $35                                        ; $7C92: $FE $35
    rst RST_08                                    ; $7C94: $CF
    jr c, @+$01                                   ; $7C95: $38 $FF

    ld a, b                                       ; $7C97: $78
    ld a, [$FB15]                                 ; $7C98: $FA $15 $FB
    db $E4                                        ; $7C9B: $E4
    db $FD                                        ; $7C9C: $FD
    ldh [c], a                                    ; $7C9D: $E2
    db $FD                                        ; $7C9E: $FD
    ld e, d                                       ; $7C9F: $5A
    rst RST_38                                    ; $7CA0: $FF
    nop                                           ; $7CA1: $00
    rra                                           ; $7CA2: $1F
    db $FC                                        ; $7CA3: $FC
    db $FC                                        ; $7CA4: $FC
    ldh [rIE], a                                  ; $7CA5: $E0 $FF
    nop                                           ; $7CA7: $00
    rst RST_38                                    ; $7CA8: $FF
    rst RST_38                                    ; $7CA9: $FF
    rlca                                          ; $7CAA: $07
    db $FC                                        ; $7CAB: $FC
    rra                                           ; $7CAC: $1F
    rst RST_38                                    ; $7CAD: $FF
    ccf                                           ; $7CAE: $3F
    ldh [rNR32], a                                ; $7CAF: $E0 $1C
    ld hl, sp+$78                                 ; $7CB1: $F8 $78
    ret nz                                        ; $7CB3: $C0

    db $FC                                        ; $7CB4: $FC
    jr nc, jr_01A_7D35                            ; $7CB5: $30 $7E

    add b                                         ; $7CB7: $80
    ldh [rP1], a                                  ; $7CB8: $E0 $00
    or b                                          ; $7CBA: $B0
    ld b, b                                       ; $7CBB: $40
    ld a, h                                       ; $7CBC: $7C
    sub b                                         ; $7CBD: $90
    cp [hl]                                       ; $7CBE: $BE
    ld b, b                                       ; $7CBF: $40
    nop                                           ; $7CC0: $00
    nop                                           ; $7CC1: $00
    nop                                           ; $7CC2: $00
    nop                                           ; $7CC3: $00

jr_01A_7CC4:
    nop                                           ; $7CC4: $00
    nop                                           ; $7CC5: $00
    nop                                           ; $7CC6: $00
    nop                                           ; $7CC7: $00
    nop                                           ; $7CC8: $00
    nop                                           ; $7CC9: $00
    nop                                           ; $7CCA: $00
    nop                                           ; $7CCB: $00
    nop                                           ; $7CCC: $00
    nop                                           ; $7CCD: $00
    nop                                           ; $7CCE: $00
    nop                                           ; $7CCF: $00
    ldh [rP1], a                                  ; $7CD0: $E0 $00
    ret nz                                        ; $7CD2: $C0

    nop                                           ; $7CD3: $00
    nop                                           ; $7CD4: $00
    nop                                           ; $7CD5: $00
    ldh [rP1], a                                  ; $7CD6: $E0 $00
    ret nz                                        ; $7CD8: $C0

    nop                                           ; $7CD9: $00
    nop                                           ; $7CDA: $00
    nop                                           ; $7CDB: $00
    ret nz                                        ; $7CDC: $C0

    nop                                           ; $7CDD: $00
    ldh a, [rP1]                                  ; $7CDE: $F0 $00
    nop                                           ; $7CE0: $00
    nop                                           ; $7CE1: $00
    nop                                           ; $7CE2: $00
    nop                                           ; $7CE3: $00
    nop                                           ; $7CE4: $00
    nop                                           ; $7CE5: $00
    nop                                           ; $7CE6: $00
    nop                                           ; $7CE7: $00
    nop                                           ; $7CE8: $00
    nop                                           ; $7CE9: $00
    nop                                           ; $7CEA: $00
    nop                                           ; $7CEB: $00
    nop                                           ; $7CEC: $00
    nop                                           ; $7CED: $00
    nop                                           ; $7CEE: $00
    nop                                           ; $7CEF: $00
    nop                                           ; $7CF0: $00
    nop                                           ; $7CF1: $00
    nop                                           ; $7CF2: $00
    nop                                           ; $7CF3: $00
    nop                                           ; $7CF4: $00
    nop                                           ; $7CF5: $00
    nop                                           ; $7CF6: $00
    nop                                           ; $7CF7: $00
    ld a, b                                       ; $7CF8: $78
    nop                                           ; $7CF9: $00
    ld a, a                                       ; $7CFA: $7F
    jr c, jr_01A_7CC4                             ; $7CFB: $38 $C7

    ld a, a                                       ; $7CFD: $7F
    rst RST_18                                    ; $7CFE: $DF
    ld a, a                                       ; $7CFF: $7F
    nop                                           ; $7D00: $00
    nop                                           ; $7D01: $00
    nop                                           ; $7D02: $00
    nop                                           ; $7D03: $00
    nop                                           ; $7D04: $00
    nop                                           ; $7D05: $00
    nop                                           ; $7D06: $00
    nop                                           ; $7D07: $00
    nop                                           ; $7D08: $00
    nop                                           ; $7D09: $00
    nop                                           ; $7D0A: $00
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
    rst RST_38                                    ; $7D1A: $FF
    nop                                           ; $7D1B: $00
    sbc [hl]                                      ; $7D1C: $9E
    ldh [rIE], a                                  ; $7D1D: $E0 $FF
    cp $00                                        ; $7D1F: $FE $00
    nop                                           ; $7D21: $00
    nop                                           ; $7D22: $00
    nop                                           ; $7D23: $00
    nop                                           ; $7D24: $00
    nop                                           ; $7D25: $00
    nop                                           ; $7D26: $00
    nop                                           ; $7D27: $00
    nop                                           ; $7D28: $00
    nop                                           ; $7D29: $00
    nop                                           ; $7D2A: $00
    nop                                           ; $7D2B: $00
    nop                                           ; $7D2C: $00
    nop                                           ; $7D2D: $00
    nop                                           ; $7D2E: $00
    nop                                           ; $7D2F: $00
    nop                                           ; $7D30: $00
    nop                                           ; $7D31: $00
    nop                                           ; $7D32: $00
    nop                                           ; $7D33: $00
    nop                                           ; $7D34: $00

jr_01A_7D35:
    nop                                           ; $7D35: $00
    nop                                           ; $7D36: $00
    nop                                           ; $7D37: $00
    nop                                           ; $7D38: $00
    nop                                           ; $7D39: $00
    ret nz                                        ; $7D3A: $C0

    nop                                           ; $7D3B: $00
    nop                                           ; $7D3C: $00
    nop                                           ; $7D3D: $00
    rst RST_38                                    ; $7D3E: $FF
    nop                                           ; $7D3F: $00
    rra                                           ; $7D40: $1F
    nop                                           ; $7D41: $00
    daa                                           ; $7D42: $27
    inc e                                         ; $7D43: $1C
    ld l, a                                       ; $7D44: $6F
    rra                                           ; $7D45: $1F
    cp a                                          ; $7D46: $BF
    ld c, a                                       ; $7D47: $4F
    rst RST_08                                    ; $7D48: $CF
    scf                                           ; $7D49: $37
    ccf                                           ; $7D4A: $3F
    nop                                           ; $7D4B: $00
    dec bc                                        ; $7D4C: $0B
    rlca                                          ; $7D4D: $07
    dec b                                         ; $7D4E: $05
    inc bc                                        ; $7D4F: $03
    ld [bc], a                                    ; $7D50: $02
    ld bc, $020F                                  ; $7D51: $01 $0F $02
    scf                                           ; $7D54: $37
    rrca                                          ; $7D55: $0F
    ld c, a                                       ; $7D56: $4F
    ccf                                           ; $7D57: $3F
    ld a, a                                       ; $7D58: $7F
    nop                                           ; $7D59: $00
    nop                                           ; $7D5A: $00
    nop                                           ; $7D5B: $00
    nop                                           ; $7D5C: $00
    nop                                           ; $7D5D: $00
    nop                                           ; $7D5E: $00
    nop                                           ; $7D5F: $00
    dec a                                         ; $7D60: $3D
    ld [bc], a                                    ; $7D61: $02
    ld a, l                                       ; $7D62: $7D
    ld a, [bc]                                    ; $7D63: $0A
    adc a                                         ; $7D64: $8F
    ld [hl], b                                    ; $7D65: $70
    rlca                                          ; $7D66: $07
    ei                                            ; $7D67: $FB
    add a                                         ; $7D68: $87
    ld a, d                                       ; $7D69: $7A
    rst RST_00                                    ; $7D6A: $C7
    cp d                                          ; $7D6B: $BA
    rst RST_38                                    ; $7D6C: $FF
    add b                                         ; $7D6D: $80
    add b                                         ; $7D6E: $80
    nop                                           ; $7D6F: $00
    ret nz                                        ; $7D70: $C0

    add b                                         ; $7D71: $80
    ret nz                                        ; $7D72: $C0

    add b                                         ; $7D73: $80
    ld hl, sp-$40                                 ; $7D74: $F8 $C0
    ld hl, sp+$10                                 ; $7D76: $F8 $10
    ldh a, [$FFE0]                                ; $7D78: $F0 $E0
    ldh a, [$FFE0]                                ; $7D7A: $F0 $E0
    ldh [rP1], a                                  ; $7D7C: $E0 $00
    nop                                           ; $7D7E: $00
    nop                                           ; $7D7F: $00
    cp $39                                        ; $7D80: $FE $39
    rst RST_38                                    ; $7D82: $FF
    adc h                                         ; $7D83: $8C
    call z, $87B0                                 ; $7D84: $CC $B0 $87
    ld a, b                                       ; $7D87: $78
    rrca                                          ; $7D88: $0F
    rst RST_30                                    ; $7D89: $F7
    inc de                                        ; $7D8A: $13
    xor $D6                                       ; $7D8B: $EE $D6
    add hl, hl                                    ; $7D8D: $29
    ld a, [hl-]                                   ; $7D8E: $3A
    dec b                                         ; $7D8F: $05
    add hl, bc                                    ; $7D90: $09
    ld b, $07                                     ; $7D91: $06 $07
    nop                                           ; $7D93: $00
    ld bc, $0000                                  ; $7D94: $01 $00 $00
    nop                                           ; $7D97: $00
    nop                                           ; $7D98: $00
    nop                                           ; $7D99: $00
    nop                                           ; $7D9A: $00
    nop                                           ; $7D9B: $00
    nop                                           ; $7D9C: $00
    nop                                           ; $7D9D: $00
    nop                                           ; $7D9E: $00
    nop                                           ; $7D9F: $00
    ret nz                                        ; $7DA0: $C0

    nop                                           ; $7DA1: $00
    nop                                           ; $7DA2: $00
    nop                                           ; $7DA3: $00
    nop                                           ; $7DA4: $00
    nop                                           ; $7DA5: $00
    ret nz                                        ; $7DA6: $C0

    nop                                           ; $7DA7: $00
    ldh [$FFC0], a                                ; $7DA8: $E0 $C0
    ldh [$FFC0], a                                ; $7DAA: $E0 $C0
    ret nc                                        ; $7DAC: $D0

    jr nz, jr_01A_7DFF                            ; $7DAD: $20 $50

    and b                                         ; $7DAF: $A0
    ldh a, [rP1]                                  ; $7DB0: $F0 $00
    ld [hl], b                                    ; $7DB2: $70
    ldh [$FFB8], a                                ; $7DB3: $E0 $B8
    ldh [$FFFC], a                                ; $7DB5: $E0 $FC
    ld c, b                                       ; $7DB7: $48
    ld a, a                                       ; $7DB8: $7F
    inc a                                         ; $7DB9: $3C
    ld b, a                                       ; $7DBA: $47
    ccf                                           ; $7DBB: $3F
    cpl                                           ; $7DBC: $2F
    rra                                           ; $7DBD: $1F
    ccf                                           ; $7DBE: $3F
    nop                                           ; $7DBF: $00
    add b                                         ; $7DC0: $80
    nop                                           ; $7DC1: $00
    add b                                         ; $7DC2: $80
    nop                                           ; $7DC3: $00
    add b                                         ; $7DC4: $80
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
    nop                                           ; $7DDE: $00
    nop                                           ; $7DDF: $00
    nop                                           ; $7DE0: $00
    nop                                           ; $7DE1: $00
    nop                                           ; $7DE2: $00
    nop                                           ; $7DE3: $00
    db $FC                                        ; $7DE4: $FC
    nop                                           ; $7DE5: $00
    add e                                         ; $7DE6: $83
    ld a, h                                       ; $7DE7: $7C
    ld [hl], b                                    ; $7DE8: $70
    rrca                                          ; $7DE9: $0F
    rrca                                          ; $7DEA: $0F
    ld bc, $0001                                  ; $7DEB: $01 $01 $00
    ld bc, $C300                                  ; $7DEE: $01 $00 $C3
    nop                                           ; $7DF1: $00
    cp a                                          ; $7DF2: $BF
    ld b, e                                       ; $7DF3: $43
    ld c, a                                       ; $7DF4: $4F
    scf                                           ; $7DF5: $37
    ld c, a                                       ; $7DF6: $4F
    inc [hl]                                      ; $7DF7: $34
    cpl                                           ; $7DF8: $2F
    dec d                                         ; $7DF9: $15
    rra                                           ; $7DFA: $1F
    rlca                                          ; $7DFB: $07
    rlca                                          ; $7DFC: $07
    ld [bc], a                                    ; $7DFD: $02
    inc bc                                        ; $7DFE: $03

jr_01A_7DFF:
    nop                                           ; $7DFF: $00
    rla                                           ; $7E00: $17
    dec c                                         ; $7E01: $0D
    inc l                                         ; $7E02: $2C
    dec de                                        ; $7E03: $1B
    dec l                                         ; $7E04: $2D
    dec de                                        ; $7E05: $1B
    ei                                            ; $7E06: $FB
    rlca                                          ; $7E07: $07
    rrca                                          ; $7E08: $0F
    db $F4                                        ; $7E09: $F4
    db $FC                                        ; $7E0A: $FC
    di                                            ; $7E0B: $F3
    ld sp, hl                                     ; $7E0C: $F9
    rlca                                          ; $7E0D: $07
    rst RST_38                                    ; $7E0E: $FF
    ld c, a                                       ; $7E0F: $4F
    ld a, c                                       ; $7E10: $79
    rst RST_18                                    ; $7E11: $DF
    di                                            ; $7E12: $F3
    ccf                                           ; $7E13: $3F
    rst RST_38                                    ; $7E14: $FF
    rst RST_38                                    ; $7E15: $FF
    rst RST_38                                    ; $7E16: $FF
    rst RST_38                                    ; $7E17: $FF
    rst RST_38                                    ; $7E18: $FF
    jp Jump_000_3CFF                              ; $7E19: $C3 $FF $3C


    db $FC                                        ; $7E1C: $FC
    ldh a, [$FFF0]                                ; $7E1D: $F0 $F0
    nop                                           ; $7E1F: $00
    nop                                           ; $7E20: $00
    nop                                           ; $7E21: $00
    nop                                           ; $7E22: $00
    nop                                           ; $7E23: $00
    add b                                         ; $7E24: $80
    nop                                           ; $7E25: $00
    add b                                         ; $7E26: $80
    nop                                           ; $7E27: $00
    ret nz                                        ; $7E28: $C0

    add b                                         ; $7E29: $80

jr_01A_7E2A:
    ret nz                                        ; $7E2A: $C0

    nop                                           ; $7E2B: $00
    ld b, b                                       ; $7E2C: $40
    add b                                         ; $7E2D: $80
    ld b, c                                       ; $7E2E: $41
    add b                                         ; $7E2F: $80
    ldh [c], a                                    ; $7E30: $E2
    pop bc                                        ; $7E31: $C1
    db $FD                                        ; $7E32: $FD
    jp $DBE7                                      ; $7E33: $C3 $E7 $DB


    rst RST_00                                    ; $7E36: $C7
    dec sp                                        ; $7E37: $3B
    rst RST_00                                    ; $7E38: $C7
    dec sp                                        ; $7E39: $3B
    rst RST_38                                    ; $7E3A: $FF
    add e                                         ; $7E3B: $83
    jp $C181                                      ; $7E3C: $C3 $81 $C1


    nop                                           ; $7E3F: $00
    ld bc, $1A00                                  ; $7E40: $01 $00 $1A
    ld bc, $0916                                  ; $7E43: $01 $16 $09
    ld d, $09                                     ; $7E46: $16 $09
    inc c                                         ; $7E48: $0C
    inc bc                                        ; $7E49: $03
    db $EC                                        ; $7E4A: $EC
    inc bc                                        ; $7E4B: $03
    ld a, [hl-]                                   ; $7E4C: $3A

jr_01A_7E4D:
    push hl                                       ; $7E4D: $E5
    db $FD                                        ; $7E4E: $FD
    ldh a, [c]                                    ; $7E4F: $F2
    rst RST_38                                    ; $7E50: $FF
    ldh a, [$FFFE]                                ; $7E51: $F0 $FE
    push af                                       ; $7E53: $F5
    cp $F1                                        ; $7E54: $FE $F1
    rst RST_38                                    ; $7E56: $FF
    ldh a, [c]                                    ; $7E57: $F2
    rst RST_38                                    ; $7E58: $FF
    db $EC                                        ; $7E59: $EC
    rst RST_38                                    ; $7E5A: $FF
    ld bc, $0F1F                                  ; $7E5B: $01 $1F $0F
    rrca                                          ; $7E5E: $0F
    ld b, $80                                     ; $7E5F: $06 $80
    nop                                           ; $7E61: $00
    ld e, b                                       ; $7E62: $58
    add b                                         ; $7E63: $80
    ld l, b                                       ; $7E64: $68
    sub b                                         ; $7E65: $90
    ld l, b                                       ; $7E66: $68
    sub b                                         ; $7E67: $90
    jr nc, jr_01A_7E2A                            ; $7E68: $30 $C0

    inc a                                         ; $7E6A: $3C
    ret nz                                        ; $7E6B: $C0

    ld e, [hl]                                    ; $7E6C: $5E
    xor h                                         ; $7E6D: $AC
    cp a                                          ; $7E6E: $BF
    ld e, [hl]                                    ; $7E6F: $5E
    rst RST_38                                    ; $7E70: $FF
    ld b, $7F                                     ; $7E71: $06 $7F
    sbc d                                         ; $7E73: $9A
    ld h, a                                       ; $7E74: $67
    sbc h                                         ; $7E75: $9C
    rst RST_38                                    ; $7E76: $FF
    inc a                                         ; $7E77: $3C
    db $FD                                        ; $7E78: $FD
    ld a, [bc]                                    ; $7E79: $0A
    db $FD                                        ; $7E7A: $FD
    ldh a, [c]                                    ; $7E7B: $F2
    cp $F1                                        ; $7E7C: $FE $F1
    cp $2D                                        ; $7E7E: $FE $2D
    nop                                           ; $7E80: $00
    nop                                           ; $7E81: $00
    nop                                           ; $7E82: $00
    nop                                           ; $7E83: $00
    nop                                           ; $7E84: $00
    nop                                           ; $7E85: $00
    nop                                           ; $7E86: $00
    nop                                           ; $7E87: $00
    nop                                           ; $7E88: $00
    nop                                           ; $7E89: $00
    nop                                           ; $7E8A: $00
    nop                                           ; $7E8B: $00
    nop                                           ; $7E8C: $00
    nop                                           ; $7E8D: $00
    nop                                           ; $7E8E: $00
    nop                                           ; $7E8F: $00
    nop                                           ; $7E90: $00
    nop                                           ; $7E91: $00
    nop                                           ; $7E92: $00
    nop                                           ; $7E93: $00
    ld h, b                                       ; $7E94: $60
    nop                                           ; $7E95: $00
    and b                                         ; $7E96: $A0
    ld b, b                                       ; $7E97: $40
    ld [hl], b                                    ; $7E98: $70
    add b                                         ; $7E99: $80
    ret nc                                        ; $7E9A: $D0

    jr nz, jr_01A_7E4D                            ; $7E9B: $20 $B0

    ld b, b                                       ; $7E9D: $40
    ret nc                                        ; $7E9E: $D0

    jr nz, jr_01A_7EA1                            ; $7E9F: $20 $00

jr_01A_7EA1:
    nop                                           ; $7EA1: $00
    nop                                           ; $7EA2: $00
    nop                                           ; $7EA3: $00
    nop                                           ; $7EA4: $00
    nop                                           ; $7EA5: $00
    nop                                           ; $7EA6: $00
    nop                                           ; $7EA7: $00
    nop                                           ; $7EA8: $00
    nop                                           ; $7EA9: $00
    nop                                           ; $7EAA: $00
    nop                                           ; $7EAB: $00
    nop                                           ; $7EAC: $00
    nop                                           ; $7EAD: $00
    nop                                           ; $7EAE: $00
    nop                                           ; $7EAF: $00
    nop                                           ; $7EB0: $00
    nop                                           ; $7EB1: $00
    nop                                           ; $7EB2: $00
    nop                                           ; $7EB3: $00
    nop                                           ; $7EB4: $00
    nop                                           ; $7EB5: $00
    nop                                           ; $7EB6: $00
    nop                                           ; $7EB7: $00
    nop                                           ; $7EB8: $00
    nop                                           ; $7EB9: $00
    nop                                           ; $7EBA: $00
    nop                                           ; $7EBB: $00
    ld c, $00                                     ; $7EBC: $0E $00
    inc de                                        ; $7EBE: $13
    inc c                                         ; $7EBF: $0C
    nop                                           ; $7EC0: $00
    nop                                           ; $7EC1: $00
    nop                                           ; $7EC2: $00
    nop                                           ; $7EC3: $00
    nop                                           ; $7EC4: $00
    nop                                           ; $7EC5: $00
    nop                                           ; $7EC6: $00
    nop                                           ; $7EC7: $00
    nop                                           ; $7EC8: $00
    nop                                           ; $7EC9: $00
    nop                                           ; $7ECA: $00
    nop                                           ; $7ECB: $00
    nop                                           ; $7ECC: $00
    nop                                           ; $7ECD: $00
    nop                                           ; $7ECE: $00
    nop                                           ; $7ECF: $00
    nop                                           ; $7ED0: $00
    nop                                           ; $7ED1: $00
    nop                                           ; $7ED2: $00
    nop                                           ; $7ED3: $00
    nop                                           ; $7ED4: $00
    nop                                           ; $7ED5: $00
    nop                                           ; $7ED6: $00
    nop                                           ; $7ED7: $00
    nop                                           ; $7ED8: $00
    nop                                           ; $7ED9: $00
    nop                                           ; $7EDA: $00
    nop                                           ; $7EDB: $00
    nop                                           ; $7EDC: $00
    nop                                           ; $7EDD: $00
    ld h, b                                       ; $7EDE: $60
    nop                                           ; $7EDF: $00
    rrca                                          ; $7EE0: $0F
    nop                                           ; $7EE1: $00
    cp $0D                                        ; $7EE2: $FE $0D
    ldh a, [c]                                    ; $7EE4: $F2

jr_01A_7EE5:
    db $ED                                        ; $7EE5: $ED
    ld h, h                                       ; $7EE6: $64
    sbc e                                         ; $7EE7: $9B
    call nz, $293B                                ; $7EE8: $C4 $3B $29
    sub $39                                       ; $7EEB: $D6 $39
    add $59                                       ; $7EED: $C6 $59
    and [hl]                                      ; $7EEF: $A6
    ld a, a                                       ; $7EF0: $7F
    add b                                         ; $7EF1: $80
    ld bc, $01FE                                  ; $7EF2: $01 $FE $01
    rst RST_38                                    ; $7EF5: $FF
    rra                                           ; $7EF6: $1F
    pop hl                                        ; $7EF7: $E1
    ld a, a                                       ; $7EF8: $7F
    add b                                         ; $7EF9: $80
    rst RST_38                                    ; $7EFA: $FF
    nop                                           ; $7EFB: $00
    rst RST_38                                    ; $7EFC: $FF
    nop                                           ; $7EFD: $00
    rst RST_18                                    ; $7EFE: $DF
    ld h, b                                       ; $7EFF: $60
    nop                                           ; $7F00: $00
    nop                                           ; $7F01: $00
    inc bc                                        ; $7F02: $03
    nop                                           ; $7F03: $00
    rlca                                          ; $7F04: $07
    ld [bc], a                                    ; $7F05: $02
    rrca                                          ; $7F06: $0F
    inc b                                         ; $7F07: $04
    inc e                                         ; $7F08: $1C
    dec bc                                        ; $7F09: $0B
    jr c, jr_01A_7F23                             ; $7F0A: $38 $17

    ld l, h                                       ; $7F0C: $6C
    inc sp                                        ; $7F0D: $33
    call nz, $E47B                                ; $7F0E: $C4 $7B $E4
    sbc e                                         ; $7F11: $9B
    ld e, b                                       ; $7F12: $58
    and a                                         ; $7F13: $A7
    jr nc, jr_01A_7EE5                            ; $7F14: $30 $CF

    db $10                                        ; $7F16: $10
    rst RST_28                                    ; $7F17: $EF
    inc c                                         ; $7F18: $0C
    di                                            ; $7F19: $F3
    inc b                                         ; $7F1A: $04
    ei                                            ; $7F1B: $FB
    inc bc                                        ; $7F1C: $03
    db $FC                                        ; $7F1D: $FC
    nop                                           ; $7F1E: $00
    rst RST_38                                    ; $7F1F: $FF
    ld bc, $01FF                                  ; $7F20: $01 $FF $01

jr_01A_7F23:
    rst RST_38                                    ; $7F23: $FF
    inc bc                                        ; $7F24: $03
    rst RST_38                                    ; $7F25: $FF
    inc bc                                        ; $7F26: $03

Call_01A_7F27:
    cp $63                                        ; $7F27: $FE $63
    sbc [hl]                                      ; $7F29: $9E
    ld d, a                                       ; $7F2A: $57
    xor h                                         ; $7F2B: $AC
    ld c, a                                       ; $7F2C: $4F
    or h                                          ; $7F2D: $B4
    daa                                           ; $7F2E: $27
    ret c                                         ; $7F2F: $D8

    ld hl, $11DE                                  ; $7F30: $21 $DE $11
    xor $0A                                       ; $7F33: $EE $0A
    push af                                       ; $7F35: $F5
    dec b                                         ; $7F36: $05
    ld a, [$FC07]                                 ; $7F37: $FA $07 $FC
    rlca                                          ; $7F3A: $07
    db $FC                                        ; $7F3B: $FC
    ld b, $FD                                     ; $7F3C: $06 $FD
    ld b, $FD                                     ; $7F3E: $06 $FD
    rlca                                          ; $7F40: $07
    db $FC                                        ; $7F41: $FC
    inc bc                                        ; $7F42: $03
    cp $03                                        ; $7F43: $FE $03
    cp $01                                        ; $7F45: $FE $01
    rst RST_38                                    ; $7F47: $FF
    ld bc, $00FF                                  ; $7F48: $01 $FF $00
    rst RST_38                                    ; $7F4B: $FF
    inc bc                                        ; $7F4C: $03
    db $FC                                        ; $7F4D: $FC
    sbc l                                         ; $7F4E: $9D

jr_01A_7F4F:
    ldh [c], a                                    ; $7F4F: $E2
    db $EC                                        ; $7F50: $EC
    ld d, e                                       ; $7F51: $53
    ld [hl], a                                    ; $7F52: $77
    jr jr_01A_7F4F                                ; $7F53: $18 $FA

    ld c, l                                       ; $7F55: $4D
    db $FD                                        ; $7F56: $FD
    ld d, d                                       ; $7F57: $52
    ccf                                           ; $7F58: $3F
    ldh [$FF7D], a                                ; $7F59: $E0 $7D
    ld hl, sp-$04                                 ; $7F5B: $F8 $FC
    nop                                           ; $7F5D: $00
    nop                                           ; $7F5E: $00
    nop                                           ; $7F5F: $00
    ld a, a                                       ; $7F60: $7F
    jr nz, @+$40                                  ; $7F61: $20 $3E

    dec e                                         ; $7F63: $1D
    inc e                                         ; $7F64: $1C
    inc bc                                        ; $7F65: $03
    sub a                                         ; $7F66: $97
    ld [$049B], sp                                ; $7F67: $08 $9B $04
    rst RST_28                                    ; $7F6A: $EF
    sub e                                         ; $7F6B: $93
    rst RST_08                                    ; $7F6C: $CF
    ld [hl], $27                                  ; $7F6D: $36 $27
    jp c, Jump_01A_6897                           ; $7F6F: $DA $97 $68

    ld c, h                                       ; $7F72: $4C
    or b                                          ; $7F73: $B0
    cp h                                          ; $7F74: $BC
    ld b, b                                       ; $7F75: $40
    ld h, [hl]                                    ; $7F76: $66
    sbc h                                         ; $7F77: $9C
    or a                                          ; $7F78: $B7
    ld e, d                                       ; $7F79: $5A
    cp $24                                        ; $7F7A: $FE $24
    ld [hl], $00                                  ; $7F7C: $36 $00
    nop                                           ; $7F7E: $00
    nop                                           ; $7F7F: $00
    ld bc, $0300                                  ; $7F80: $01 $00 $03
    ld bc, $0103                                  ; $7F83: $01 $03 $01
    ld b, $03                                     ; $7F86: $06 $03
    ld b, $03                                     ; $7F88: $06 $03
    inc c                                         ; $7F8A: $0C
    rlca                                          ; $7F8B: $07
    inc c                                         ; $7F8C: $0C
    rlca                                          ; $7F8D: $07
    jr @+$11                                      ; $7F8E: $18 $0F

    jr @+$11                                      ; $7F90: $18 $0F

    jr @+$11                                      ; $7F92: $18 $0F

    jr nc, jr_01A_7FB5                            ; $7F94: $30 $1F

    jr nc, jr_01A_7FB7                            ; $7F96: $30 $1F

    jr nc, @+$21                                  ; $7F98: $30 $1F

    jr nc, @+$21                                  ; $7F9A: $30 $1F

    jr nc, jr_01A_7FBD                            ; $7F9C: $30 $1F

    jr nc, @+$21                                  ; $7F9E: $30 $1F

    jr nc, @+$21                                  ; $7FA0: $30 $1F

    jr nc, jr_01A_7FC3                            ; $7FA2: $30 $1F

    jr nc, @+$21                                  ; $7FA4: $30 $1F

    jr nc, jr_01A_7FC7                            ; $7FA6: $30 $1F

    jr nc, jr_01A_7FC9                            ; $7FA8: $30 $1F

    jr nc, jr_01A_7FCB                            ; $7FAA: $30 $1F

    jr nc, jr_01A_7FCD                            ; $7FAC: $30 $1F

    jr @+$11                                      ; $7FAE: $18 $0F

    jr @+$11                                      ; $7FB0: $18 $0F

    jr jr_01A_7FC3                                ; $7FB2: $18 $0F

    inc c                                         ; $7FB4: $0C

jr_01A_7FB5:
    rlca                                          ; $7FB5: $07
    inc c                                         ; $7FB6: $0C

jr_01A_7FB7:
    rlca                                          ; $7FB7: $07
    ld b, $03                                     ; $7FB8: $06 $03
    ld b, $03                                     ; $7FBA: $06 $03
    inc bc                                        ; $7FBC: $03

jr_01A_7FBD:
    ld bc, $0001                                  ; $7FBD: $01 $01 $00
    ld bc, $0100                                  ; $7FC0: $01 $00 $01

jr_01A_7FC3:
    nop                                           ; $7FC3: $00
    ld bc, $0000                                  ; $7FC4: $01 $00 $00

jr_01A_7FC7:
    nop                                           ; $7FC7: $00
    nop                                           ; $7FC8: $00

jr_01A_7FC9:
    nop                                           ; $7FC9: $00
    nop                                           ; $7FCA: $00

jr_01A_7FCB:
    nop                                           ; $7FCB: $00
    nop                                           ; $7FCC: $00

jr_01A_7FCD:
    nop                                           ; $7FCD: $00
    nop                                           ; $7FCE: $00
    nop                                           ; $7FCF: $00
    nop                                           ; $7FD0: $00
    nop                                           ; $7FD1: $00
    nop                                           ; $7FD2: $00
    nop                                           ; $7FD3: $00
    nop                                           ; $7FD4: $00
    nop                                           ; $7FD5: $00
    nop                                           ; $7FD6: $00
    nop                                           ; $7FD7: $00
    nop                                           ; $7FD8: $00
    nop                                           ; $7FD9: $00
    nop                                           ; $7FDA: $00
    nop                                           ; $7FDB: $00
    nop                                           ; $7FDC: $00
    nop                                           ; $7FDD: $00
    nop                                           ; $7FDE: $00
    nop                                           ; $7FDF: $00
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
