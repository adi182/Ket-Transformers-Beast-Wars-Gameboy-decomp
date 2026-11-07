; Disassembly of "original.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $021", ROMX[$4000], BANK[$21]

    nop                                           ; $4000: $00
    nop                                           ; $4001: $00
    inc bc                                        ; $4002: $03
    nop                                           ; $4003: $00
    inc bc                                        ; $4004: $03
    ld bc, $000F                                  ; $4005: $01 $0F $00
    rra                                           ; $4008: $1F
    ld b, $27                                     ; $4009: $06 $27
    add hl, de                                    ; $400B: $19
    cpl                                           ; $400C: $2F
    ld d, $1F                                     ; $400D: $16 $1F
    ld bc, $040F                                  ; $400F: $01 $0F $04
    inc b                                         ; $4012: $04
    inc bc                                        ; $4013: $03
    ld [$0807], sp                                ; $4014: $08 $07 $08
    rlca                                          ; $4017: $07
    ld [$0407], sp                                ; $4018: $08 $07 $04
    inc bc                                        ; $401B: $03
    inc bc                                        ; $401C: $03
    nop                                           ; $401D: $00
    nop                                           ; $401E: $00
    nop                                           ; $401F: $00
    inc bc                                        ; $4020: $03
    nop                                           ; $4021: $00
    inc bc                                        ; $4022: $03
    ld bc, $0306                                  ; $4023: $01 $06 $03
    ld b, $03                                     ; $4026: $06 $03
    inc c                                         ; $4028: $0C
    rlca                                          ; $4029: $07
    ld [$0F07], sp                                ; $402A: $08 $07 $0F
    nop                                           ; $402D: $00
    inc e                                         ; $402E: $1C
    dec bc                                        ; $402F: $0B
    cp a                                          ; $4030: $BF
    ld [$ADFF], sp                                ; $4031: $08 $FF $AD
    rst RST_38                                    ; $4034: $FF
    sbc e                                         ; $4035: $9B
    rst RST_38                                    ; $4036: $FF
    ld b, a                                       ; $4037: $47
    rst RST_38                                    ; $4038: $FF
    rst RST_00                                    ; $4039: $C7
    rst RST_00                                    ; $403A: $C7
    dec sp                                        ; $403B: $3B
    rlca                                          ; $403C: $07
    ei                                            ; $403D: $FB
    inc bc                                        ; $403E: $03
    db $FD                                        ; $403F: $FD
    ldh [rP1], a                                  ; $4040: $E0 $00

jr_021_4042:
    ldh [$FFC0], a                                ; $4042: $E0 $C0
    jr nz, @-$3E                                  ; $4044: $20 $C0

    ld b, c                                       ; $4046: $41
    add b                                         ; $4047: $80
    ld b, d                                       ; $4048: $42
    add c                                         ; $4049: $81
    add h                                         ; $404A: $84
    inc bc                                        ; $404B: $03
    ret z                                         ; $404C: $C8

    rlca                                          ; $404D: $07
    ldh a, [rVBK]                                 ; $404E: $F0 $4F
    rst RST_38                                    ; $4050: $FF
    add b                                         ; $4051: $80
    db $FC                                        ; $4052: $FC
    or a                                          ; $4053: $B7
    ld hl, sp+$4F                                 ; $4054: $F8 $4F
    rst RST_38                                    ; $4056: $FF
    db $F4                                        ; $4057: $F4
    rst RST_38                                    ; $4058: $FF
    add b                                         ; $4059: $80
    rst RST_38                                    ; $405A: $FF
    ret nz                                        ; $405B: $C0

    rst RST_38                                    ; $405C: $FF
    inc l                                         ; $405D: $2C
    rst RST_38                                    ; $405E: $FF
    inc c                                         ; $405F: $0C
    inc a                                         ; $4060: $3C
    nop                                           ; $4061: $00
    ld a, [hl]                                    ; $4062: $7E
    inc a                                         ; $4063: $3C
    add [hl]                                      ; $4064: $86
    ld a, h                                       ; $4065: $7C
    ld b, $FC                                     ; $4066: $06 $FC
    ld b, $FC                                     ; $4068: $06 $FC
    ld b, $FC                                     ; $406A: $06 $FC
    ld b, $FC                                     ; $406C: $06 $FC
    inc c                                         ; $406E: $0C
    ld hl, sp-$28                                 ; $406F: $F8 $D8
    jr nc, jr_021_40A3                            ; $4071: $30 $30

    ret nz                                        ; $4073: $C0

    ldh [rP1], a                                  ; $4074: $E0 $00
    ldh [rP1], a                                  ; $4076: $E0 $00
    ldh [rP1], a                                  ; $4078: $E0 $00
    ret nz                                        ; $407A: $C0

    nop                                           ; $407B: $00
    db $FC                                        ; $407C: $FC
    nop                                           ; $407D: $00
    ldh a, [c]                                    ; $407E: $F2
    inc c                                         ; $407F: $0C
    inc bc                                        ; $4080: $03
    db $FC                                        ; $4081: $FC
    ld [bc], a                                    ; $4082: $02
    db $FD                                        ; $4083: $FD
    inc c                                         ; $4084: $0C
    di                                            ; $4085: $F3
    ld a, b                                       ; $4086: $78
    add a                                         ; $4087: $87
    rst RST_30                                    ; $4088: $F7
    jr c, jr_021_4042                             ; $4089: $38 $B7

    ld a, e                                       ; $408B: $7B
    ld [hl], a                                    ; $408C: $77
    dec sp                                        ; $408D: $3B
    rst RST_38                                    ; $408E: $FF
    nop                                           ; $408F: $00
    ld a, $DD                                     ; $4090: $3E $DD
    inc e                                         ; $4092: $1C
    db $EB                                        ; $4093: $EB
    dec e                                         ; $4094: $1D
    ld [$807F], a                                 ; $4095: $EA $7F $80
    rst RST_38                                    ; $4098: $FF
    ld a, d                                       ; $4099: $7A
    rst RST_38                                    ; $409A: $FF
    ld a, [$FAFF]                                 ; $409B: $FA $FF $FA
    rst RST_38                                    ; $409E: $FF
    ld a, [$BB7C]                                 ; $409F: $FA $7C $BB
    ld a, b                                       ; $40A2: $78

jr_021_40A3:
    or a                                          ; $40A3: $B7
    ld [hl], b                                    ; $40A4: $70
    adc a                                         ; $40A5: $8F
    rst RST_38                                    ; $40A6: $FF
    ld l, a                                       ; $40A7: $6F
    rst RST_38                                    ; $40A8: $FF
    rst RST_18                                    ; $40A9: $DF
    rst RST_38                                    ; $40AA: $FF
    add b                                         ; $40AB: $80
    ret nz                                        ; $40AC: $C0

    nop                                           ; $40AD: $00
    ret nz                                        ; $40AE: $C0

    nop                                           ; $40AF: $00
    jr nz, @-$3E                                  ; $40B0: $20 $C0

    db $10                                        ; $40B2: $10
    ldh [$FFFC], a                                ; $40B3: $E0 $FC
    nop                                           ; $40B5: $00
    ld e, h                                       ; $40B6: $5C
    xor b                                         ; $40B7: $A8
    db $FC                                        ; $40B8: $FC
    ld [$A85C], sp                                ; $40B9: $08 $5C $A8
    db $FC                                        ; $40BC: $FC
    ld [$E81C], sp                                ; $40BD: $08 $1C $E8
    add hl, de                                    ; $40C0: $19
    or $19                                        ; $40C1: $F6 $19
    or $19                                        ; $40C3: $F6 $19
    or $F9                                        ; $40C5: $F6 $F9
    or $F9                                        ; $40C7: $F6 $F9
    or $F2                                        ; $40C9: $F6 $F2
    inc c                                         ; $40CB: $0C
    ld a, h                                       ; $40CC: $7C
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
    ld bc, $0600                                  ; $40E0: $01 $00 $06
    ld bc, $0718                                  ; $40E3: $01 $18 $07
    inc l                                         ; $40E6: $2C
    inc de                                        ; $40E7: $13
    inc a                                         ; $40E8: $3C
    inc bc                                        ; $40E9: $03
    cpl                                           ; $40EA: $2F
    db $10                                        ; $40EB: $10
    rra                                           ; $40EC: $1F
    rlca                                          ; $40ED: $07
    rrca                                          ; $40EE: $0F

Call_021_40EF:
    inc bc                                        ; $40EF: $03
    inc bc                                        ; $40F0: $03
    nop                                           ; $40F1: $00
    nop                                           ; $40F2: $00
    nop                                           ; $40F3: $00
    nop                                           ; $40F4: $00
    nop                                           ; $40F5: $00
    ld bc, $0100                                  ; $40F6: $01 $00 $01
    nop                                           ; $40F9: $00
    nop                                           ; $40FA: $00
    nop                                           ; $40FB: $00
    nop                                           ; $40FC: $00
    nop                                           ; $40FD: $00
    nop                                           ; $40FE: $00
    nop                                           ; $40FF: $00
    rst RST_38                                    ; $4100: $FF
    jr nc, @-$47                                  ; $4101: $30 $B7

    ld c, b                                       ; $4103: $48
    add hl, bc                                    ; $4104: $09
    ldh a, [$FFF0]                                ; $4105: $F0 $F0
    nop                                           ; $4107: $00
    nop                                           ; $4108: $00
    nop                                           ; $4109: $00
    nop                                           ; $410A: $00
    nop                                           ; $410B: $00
    nop                                           ; $410C: $00
    nop                                           ; $410D: $00
    nop                                           ; $410E: $00
    nop                                           ; $410F: $00
    nop                                           ; $4110: $00
    nop                                           ; $4111: $00
    nop                                           ; $4112: $00
    nop                                           ; $4113: $00
    nop                                           ; $4114: $00
    nop                                           ; $4115: $00
    nop                                           ; $4116: $00
    nop                                           ; $4117: $00
    nop                                           ; $4118: $00
    nop                                           ; $4119: $00
    nop                                           ; $411A: $00
    nop                                           ; $411B: $00
    nop                                           ; $411C: $00
    nop                                           ; $411D: $00
    nop                                           ; $411E: $00
    nop                                           ; $411F: $00
    jr @-$1E                                      ; $4120: $18 $E0

    ld hl, sp+$00                                 ; $4122: $F8 $00
    ld [$88F0], sp                                ; $4124: $08 $F0 $88
    ld [hl], b                                    ; $4127: $70
    adc b                                         ; $4128: $88
    ld [hl], b                                    ; $4129: $70
    ld [hl], b                                    ; $412A: $70
    nop                                           ; $412B: $00
    nop                                           ; $412C: $00
    nop                                           ; $412D: $00
    nop                                           ; $412E: $00
    nop                                           ; $412F: $00
    nop                                           ; $4130: $00
    nop                                           ; $4131: $00
    nop                                           ; $4132: $00
    nop                                           ; $4133: $00
    nop                                           ; $4134: $00
    nop                                           ; $4135: $00
    nop                                           ; $4136: $00
    nop                                           ; $4137: $00
    nop                                           ; $4138: $00
    nop                                           ; $4139: $00
    nop                                           ; $413A: $00
    nop                                           ; $413B: $00

Jump_021_413C:
    nop                                           ; $413C: $00
    nop                                           ; $413D: $00
    nop                                           ; $413E: $00
    nop                                           ; $413F: $00
    nop                                           ; $4140: $00
    nop                                           ; $4141: $00
    nop                                           ; $4142: $00
    nop                                           ; $4143: $00
    ld bc, $0100                                  ; $4144: $01 $00 $01
    nop                                           ; $4147: $00
    ld b, $01                                     ; $4148: $06 $01
    rrca                                          ; $414A: $0F
    nop                                           ; $414B: $00
    rrca                                          ; $414C: $0F
    nop                                           ; $414D: $00
    rra                                           ; $414E: $1F
    nop                                           ; $414F: $00
    ld e, $00                                     ; $4150: $1E $00
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
    nop                                           ; $415E: $00
    nop                                           ; $415F: $00
    nop                                           ; $4160: $00
    nop                                           ; $4161: $00
    nop                                           ; $4162: $00
    nop                                           ; $4163: $00
    jr jr_021_4166                                ; $4164: $18 $00

jr_021_4166:
    rla                                           ; $4166: $17
    ld [$1D22], sp                                ; $4167: $08 $22 $1D
    ld hl, $411E                                  ; $416A: $21 $1E $41
    ld a, $40                                     ; $416D: $3E $40
    ccf                                           ; $416F: $3F
    add h                                         ; $4170: $84
    ld a, a                                       ; $4171: $7F
    add e                                         ; $4172: $83
    ld a, a                                       ; $4173: $7F
    dec bc                                        ; $4174: $0B
    rst RST_38                                    ; $4175: $FF
    and a                                         ; $4176: $A7
    ld a, a                                       ; $4177: $7F
    rst RST_38                                    ; $4178: $FF
    ccf                                           ; $4179: $3F
    ld a, a                                       ; $417A: $7F
    add b                                         ; $417B: $80
    add b                                         ; $417C: $80
    nop                                           ; $417D: $00
    add b                                         ; $417E: $80
    nop                                           ; $417F: $00
    nop                                           ; $4180: $00
    nop                                           ; $4181: $00
    nop                                           ; $4182: $00
    nop                                           ; $4183: $00
    ld bc, $0700                                  ; $4184: $01 $00 $07
    ld bc, $031E                                  ; $4187: $01 $1E $03
    ld a, $1B                                     ; $418A: $3E $1B
    ld h, [hl]                                    ; $418C: $66
    dec sp                                        ; $418D: $3B
    jp $C37D                                      ; $418E: $C3 $7D $C3


    ld a, l                                       ; $4191: $7D
    pop bc                                        ; $4192: $C1
    ld a, [hl]                                    ; $4193: $7E
    ld h, c                                       ; $4194: $61
    ld a, $61                                     ; $4195: $3E $61
    ld a, $32                                     ; $4197: $3E $32
    dec e                                         ; $4199: $1D
    ld [hl-], a                                   ; $419A: $32
    dec e                                         ; $419B: $1D
    ld a, [hl-]                                   ; $419C: $3A
    dec c                                         ; $419D: $0D
    ld a, [hl+]                                   ; $419E: $2A
    dec d                                         ; $419F: $15
    jr c, jr_021_41A2                             ; $41A0: $38 $00

jr_021_41A2:
    ld hl, sp+$30                                 ; $41A2: $F8 $30
    ret z                                         ; $41A4: $C8

    ldh a, [$FF08]                                ; $41A5: $F0 $08
    ldh a, [$FF08]                                ; $41A7: $F0 $08
    ldh a, [$FF08]                                ; $41A9: $F0 $08
    ldh a, [$FF08]                                ; $41AB: $F0 $08
    ldh a, [$FF08]                                ; $41AD: $F0 $08
    ldh a, [$FF08]                                ; $41AF: $F0 $08
    ldh a, [$FF88]                                ; $41B1: $F0 $88
    ldh a, [$FF88]                                ; $41B3: $F0 $88
    ld [hl], b                                    ; $41B5: $70
    ld c, b                                       ; $41B6: $48
    or b                                          ; $41B7: $B0
    ld a, b                                       ; $41B8: $78
    add b                                         ; $41B9: $80
    inc c                                         ; $41BA: $0C
    ldh a, [rDIV]                                 ; $41BB: $F0 $04
    ld hl, sp+$04                                 ; $41BD: $F8 $04
    ld hl, sp-$64                                 ; $41BF: $F8 $9C
    ld h, e                                       ; $41C1: $63
    add [hl]                                      ; $41C2: $86
    ld a, e                                       ; $41C3: $7B
    add e                                         ; $41C4: $83
    ld a, l                                       ; $41C5: $7D

jr_021_41C6:
    adc a                                         ; $41C6: $8F
    ld [hl], d                                    ; $41C7: $72

jr_021_41C8:
    sbc a                                         ; $41C8: $9F
    ld l, l                                       ; $41C9: $6D
    ld e, a                                       ; $41CA: $5F
    ld h, $37                                     ; $41CB: $26 $37
    add hl, de                                    ; $41CD: $19
    scf                                           ; $41CE: $37
    add hl, de                                    ; $41CF: $19
    ccf                                           ; $41D0: $3F
    ld d, $3F                                     ; $41D1: $16 $3F
    ld [bc], a                                    ; $41D3: $02
    rst RST_08                                    ; $41D4: $CF
    ld sp, $F907                                  ; $41D5: $31 $07 $F9
    rrca                                          ; $41D8: $0F
    ld hl, sp+$27                                 ; $41D9: $F8 $27
    db $FC                                        ; $41DB: $FC
    rla                                           ; $41DC: $17
    db $FC                                        ; $41DD: $FC
    cp a                                          ; $41DE: $BF
    ld a, h                                       ; $41DF: $7C
    dec bc                                        ; $41E0: $0B
    ldh a, [rNR33]                                ; $41E1: $F0 $1D
    ldh a, [c]                                    ; $41E3: $F2
    ei                                            ; $41E4: $FB
    db $E4                                        ; $41E5: $E4
    ldh a, [c]                                    ; $41E6: $F2
    dec c                                         ; $41E7: $0D
    or $89                                        ; $41E8: $F6 $89
    and $59                                       ; $41EA: $E6 $59
    db $EC                                        ; $41EC: $EC
    sub e                                         ; $41ED: $93
    db $FC                                        ; $41EE: $FC
    ld h, e                                       ; $41EF: $63
    cp $FD                                        ; $41F0: $FE $FD
    rst RST_38                                    ; $41F2: $FF
    db $FC                                        ; $41F3: $FC
    rst RST_38                                    ; $41F4: $FF
    ld a, l                                       ; $41F5: $7D
    rst RST_38                                    ; $41F6: $FF
    ld a, l                                       ; $41F7: $7D
    rst RST_38                                    ; $41F8: $FF
    cp h                                          ; $41F9: $BC
    cp $80                                        ; $41FA: $FE $80
    cp $9C                                        ; $41FC: $FE $9C
    rst RST_38                                    ; $41FE: $FF
    nop                                           ; $41FF: $00
    ret nz                                        ; $4200: $C0

    nop                                           ; $4201: $00
    ret nz                                        ; $4202: $C0

    nop                                           ; $4203: $00
    jr nz, jr_021_41C6                            ; $4204: $20 $C0

    jr nc, jr_021_41C8                            ; $4206: $30 $C0

    ld c, a                                       ; $4208: $4F
    or b                                          ; $4209: $B0
    add a                                         ; $420A: $87
    ld a, b                                       ; $420B: $78
    adc a                                         ; $420C: $8F
    ld [hl], a                                    ; $420D: $77
    sbc a                                         ; $420E: $9F
    ld h, b                                       ; $420F: $60
    sbc a                                         ; $4210: $9F
    ld l, [hl]                                    ; $4211: $6E
    sbc a                                         ; $4212: $9F
    ld h, b                                       ; $4213: $60
    rst RST_38                                    ; $4214: $FF
    ld c, $9F                                     ; $4215: $0E $9F
    nop                                           ; $4217: $00
    rrca                                          ; $4218: $0F
    rlca                                          ; $4219: $07
    rlca                                          ; $421A: $07
    nop                                           ; $421B: $00
    nop                                           ; $421C: $00
    nop                                           ; $421D: $00
    nop                                           ; $421E: $00
    nop                                           ; $421F: $00
    nop                                           ; $4220: $00
    nop                                           ; $4221: $00
    nop                                           ; $4222: $00
    nop                                           ; $4223: $00
    nop                                           ; $4224: $00
    nop                                           ; $4225: $00
    nop                                           ; $4226: $00
    nop                                           ; $4227: $00
    db $FC                                        ; $4228: $FC
    nop                                           ; $4229: $00
    and h                                         ; $422A: $A4
    ld e, b                                       ; $422B: $58
    sub d                                         ; $422C: $92
    ld l, h                                       ; $422D: $6C
    sub d                                         ; $422E: $92
    ld l, h                                       ; $422F: $6C
    sub h                                         ; $4230: $94
    ld l, b                                       ; $4231: $68
    sbc b                                         ; $4232: $98
    ld h, b                                       ; $4233: $60
    ldh [rP1], a                                  ; $4234: $E0 $00
    add b                                         ; $4236: $80
    nop                                           ; $4237: $00
    add b                                         ; $4238: $80
    nop                                           ; $4239: $00
    nop                                           ; $423A: $00
    nop                                           ; $423B: $00

Jump_021_423C:
    nop                                           ; $423C: $00
    nop                                           ; $423D: $00
    nop                                           ; $423E: $00
    nop                                           ; $423F: $00
    cp [hl]                                       ; $4240: $BE
    ld a, b                                       ; $4241: $78
    ld a, c                                       ; $4242: $79
    and b                                         ; $4243: $A0
    ldh [c], a                                    ; $4244: $E2
    add c                                         ; $4245: $81
    call c, $EE83                                 ; $4246: $DC $83 $EE
    sub c                                         ; $4249: $91
    xor a                                         ; $424A: $AF
    ld [de], a                                    ; $424B: $12
    scf                                           ; $424C: $37
    ld a, [bc]                                    ; $424D: $0A
    cpl                                           ; $424E: $2F
    ld d, $3F                                     ; $424F: $16 $3F
    ld b, $17                                     ; $4251: $06 $17
    ld a, [bc]                                    ; $4253: $0A
    rla                                           ; $4254: $17
    ld a, [bc]                                    ; $4255: $0A
    rla                                           ; $4256: $17
    dec bc                                        ; $4257: $0B
    rla                                           ; $4258: $17
    dec bc                                        ; $4259: $0B
    rla                                           ; $425A: $17
    dec bc                                        ; $425B: $0B
    rra                                           ; $425C: $1F
    inc bc                                        ; $425D: $03
    daa                                           ; $425E: $27
    dec de                                        ; $425F: $1B
    rst RST_38                                    ; $4260: $FF
    ld a, $7F                                     ; $4261: $3E $7F
    cp b                                          ; $4263: $B8
    add hl, sp                                    ; $4264: $39
    sub $31                                       ; $4265: $D6 $31
    adc $61                                       ; $4267: $CE $61
    sbc [hl]                                      ; $4269: $9E
    pop hl                                        ; $426A: $E1
    ld e, $72                                     ; $426B: $1E $72
    adc h                                         ; $426D: $8C
    ld a, [hl]                                    ; $426E: $7E
    sub b                                         ; $426F: $90
    cp [hl]                                       ; $4270: $BE
    ld e, h                                       ; $4271: $5C
    ld a, [hl]                                    ; $4272: $7E
    cp h                                          ; $4273: $BC
    cp $3C                                        ; $4274: $FE $3C
    cp [hl]                                       ; $4276: $BE
    ld e, h                                       ; $4277: $5C
    cp [hl]                                       ; $4278: $BE
    ld e, h                                       ; $4279: $5C
    cp [hl]                                       ; $427A: $BE
    ld e, h                                       ; $427B: $5C
    cp a                                          ; $427C: $BF
    ld e, [hl]                                    ; $427D: $5E
    cp a                                          ; $427E: $BF
    ld e, [hl]                                    ; $427F: $5E
    inc hl                                        ; $4280: $23
    inc e                                         ; $4281: $1C
    ld b, a                                       ; $4282: $47
    jr c, jr_021_42CE                             ; $4283: $38 $49

    jr nc, jr_021_42F9                            ; $4285: $30 $72

    ld bc, $0102                                  ; $4287: $01 $02 $01
    inc bc                                        ; $428A: $03
    nop                                           ; $428B: $00
    nop                                           ; $428C: $00
    nop                                           ; $428D: $00
    nop                                           ; $428E: $00
    nop                                           ; $428F: $00
    nop                                           ; $4290: $00
    nop                                           ; $4291: $00
    nop                                           ; $4292: $00
    nop                                           ; $4293: $00
    nop                                           ; $4294: $00
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
    rst RST_38                                    ; $42A0: $FF
    ld e, $3F                                     ; $42A1: $1E $3F
    ret c                                         ; $42A3: $D8

    jr @-$1E                                      ; $42A4: $18 $E0

    jr nc, @-$3E                                  ; $42A6: $30 $C0

    ld b, b                                       ; $42A8: $40
    add b                                         ; $42A9: $80
    add b                                         ; $42AA: $80
    nop                                           ; $42AB: $00
    nop                                           ; $42AC: $00
    nop                                           ; $42AD: $00
    nop                                           ; $42AE: $00
    nop                                           ; $42AF: $00
    nop                                           ; $42B0: $00
    nop                                           ; $42B1: $00
    nop                                           ; $42B2: $00
    nop                                           ; $42B3: $00
    nop                                           ; $42B4: $00
    nop                                           ; $42B5: $00
    nop                                           ; $42B6: $00
    nop                                           ; $42B7: $00
    nop                                           ; $42B8: $00
    nop                                           ; $42B9: $00
    nop                                           ; $42BA: $00
    nop                                           ; $42BB: $00
    nop                                           ; $42BC: $00
    nop                                           ; $42BD: $00
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

jr_021_42CE:
    nop                                           ; $42CE: $00
    nop                                           ; $42CF: $00
    nop                                           ; $42D0: $00
    nop                                           ; $42D1: $00
    nop                                           ; $42D2: $00
    nop                                           ; $42D3: $00
    nop                                           ; $42D4: $00
    nop                                           ; $42D5: $00
    nop                                           ; $42D6: $00
    nop                                           ; $42D7: $00
    nop                                           ; $42D8: $00
    nop                                           ; $42D9: $00
    ld bc, $0300                                  ; $42DA: $01 $00 $03
    nop                                           ; $42DD: $00
    ld bc, $0000                                  ; $42DE: $01 $00 $00
    nop                                           ; $42E1: $00
    nop                                           ; $42E2: $00
    nop                                           ; $42E3: $00
    nop                                           ; $42E4: $00
    nop                                           ; $42E5: $00
    nop                                           ; $42E6: $00
    nop                                           ; $42E7: $00
    nop                                           ; $42E8: $00
    nop                                           ; $42E9: $00
    nop                                           ; $42EA: $00
    nop                                           ; $42EB: $00
    nop                                           ; $42EC: $00
    nop                                           ; $42ED: $00
    dec de                                        ; $42EE: $1B
    nop                                           ; $42EF: $00
    ld l, a                                       ; $42F0: $6F
    ld de, $00FF                                  ; $42F1: $11 $FF $00
    rst RST_38                                    ; $42F4: $FF
    nop                                           ; $42F5: $00
    rst RST_38                                    ; $42F6: $FF
    nop                                           ; $42F7: $00
    ld a, [hl]                                    ; $42F8: $7E

jr_021_42F9:
    ld bc, $001B                                  ; $42F9: $01 $1B $00
    nop                                           ; $42FC: $00
    nop                                           ; $42FD: $00
    nop                                           ; $42FE: $00

Jump_021_42FF:
    nop                                           ; $42FF: $00
    nop                                           ; $4300: $00
    nop                                           ; $4301: $00
    nop                                           ; $4302: $00
    nop                                           ; $4303: $00
    nop                                           ; $4304: $00
    nop                                           ; $4305: $00
    inc c                                         ; $4306: $0C
    nop                                           ; $4307: $00
    ld a, $0C                                     ; $4308: $3E $0C
    rst RST_38                                    ; $430A: $FF
    ld a, $FB                                     ; $430B: $3E $FB
    cp $98                                        ; $430D: $FE $98
    ld a, a                                       ; $430F: $7F
    ld c, b                                       ; $4310: $48
    cp a                                          ; $4311: $BF
    ld c, b                                       ; $4312: $48
    cp a                                          ; $4313: $BF
    ld b, b                                       ; $4314: $40
    cp a                                          ; $4315: $BF
    add b                                         ; $4316: $80
    ld a, a                                       ; $4317: $7F
    add l                                         ; $4318: $85
    cp $ED                                        ; $4319: $FE $ED
    ld a, $3F                                     ; $431B: $3E $3F
    inc c                                         ; $431D: $0C
    inc c                                         ; $431E: $0C
    nop                                           ; $431F: $00
    nop                                           ; $4320: $00
    nop                                           ; $4321: $00
    nop                                           ; $4322: $00
    nop                                           ; $4323: $00
    rrca                                          ; $4324: $0F
    nop                                           ; $4325: $00
    rra                                           ; $4326: $1F
    dec bc                                        ; $4327: $0B
    ld e, $07                                     ; $4328: $1E $07
    rst RST_38                                    ; $432A: $FF
    nop                                           ; $432B: $00
    rst RST_38                                    ; $432C: $FF
    db $FC                                        ; $432D: $FC
    or a                                          ; $432E: $B7
    ld a, [hl]                                    ; $432F: $7E
    sub e                                         ; $4330: $93
    ld a, [hl]                                    ; $4331: $7E
    add c                                         ; $4332: $81
    ld a, [hl]                                    ; $4333: $7E
    add c                                         ; $4334: $81
    ld a, [hl]                                    ; $4335: $7E
    add c                                         ; $4336: $81
    ld a, [hl]                                    ; $4337: $7E
    add a                                         ; $4338: $87
    db $FC                                        ; $4339: $FC
    rst RST_38                                    ; $433A: $FF
    nop                                           ; $433B: $00
    nop                                           ; $433C: $00
    nop                                           ; $433D: $00
    nop                                           ; $433E: $00
    nop                                           ; $433F: $00
    rra                                           ; $4340: $1F
    nop                                           ; $4341: $00
    jr nc, jr_021_4363                            ; $4342: $30 $1F

    ldh [$FF3F], a                                ; $4344: $E0 $3F
    ld h, b                                       ; $4346: $60

jr_021_4347:
    cp a                                          ; $4347: $BF
    ldh [$FF3F], a                                ; $4348: $E0 $3F
    ldh [$FF3F], a                                ; $434A: $E0 $3F
    pop af                                        ; $434C: $F1
    ld e, [hl]                                    ; $434D: $5E
    rst RST_38                                    ; $434E: $FF
    ld b, b                                       ; $434F: $40
    rst RST_38                                    ; $4350: $FF
    ld d, c                                       ; $4351: $51
    rst RST_38                                    ; $4352: $FF
    ld e, [hl]                                    ; $4353: $5E
    rst RST_38                                    ; $4354: $FF
    ld e, [hl]                                    ; $4355: $5E
    rst RST_38                                    ; $4356: $FF
    ld e, [hl]                                    ; $4357: $5E
    rst RST_38                                    ; $4358: $FF
    ld e, a                                       ; $4359: $5F
    rst RST_38                                    ; $435A: $FF
    nop                                           ; $435B: $00

jr_021_435C:
    ld a, a                                       ; $435C: $7F
    ld e, $9E                                     ; $435D: $1E $9E
    ld l, l                                       ; $435F: $6D
    inc bc                                        ; $4360: $03
    nop                                           ; $4361: $00
    rst RST_08                                    ; $4362: $CF

jr_021_4363:
    inc bc                                        ; $4363: $03
    ld a, h                                       ; $4364: $7C
    adc a                                         ; $4365: $8F
    jr nc, jr_021_4347                            ; $4366: $30 $DF

    ret nz                                        ; $4368: $C0

    ccf                                           ; $4369: $3F
    add b                                         ; $436A: $80
    ld a, a                                       ; $436B: $7F
    add b                                         ; $436C: $80
    ld a, a                                       ; $436D: $7F
    rst RST_38                                    ; $436E: $FF
    nop                                           ; $436F: $00
    jp z, $CAB5                                   ; $4370: $CA $B5 $CA

    dec [hl]                                      ; $4373: $35
    ld c, d                                       ; $4374: $4A
    or l                                          ; $4375: $B5
    ld c, e                                       ; $4376: $4B
    or h                                          ; $4377: $B4
    ld c, [hl]                                    ; $4378: $4E
    or b                                          ; $4379: $B0
    cp $00                                        ; $437A: $FE $00
    ld a, [$FE3C]                                 ; $437C: $FA $3C $FE
    inc c                                         ; $437F: $0C
    nop                                           ; $4380: $00
    nop                                           ; $4381: $00
    adc h                                         ; $4382: $8C
    nop                                           ; $4383: $00
    call c, Call_021_7C88                         ; $4384: $DC $88 $7C
    ret z                                         ; $4387: $C8

    ld l, h                                       ; $4388: $6C
    ret c                                         ; $4389: $D8

    inc a                                         ; $438A: $3C
    add sp, $3C                                   ; $438B: $E8 $3C
    add sp, -$08                                  ; $438D: $E8 $F8
    nop                                           ; $438F: $00
    or b                                          ; $4390: $B0
    ld b, b                                       ; $4391: $40
    and b                                         ; $4392: $A0
    ld b, b                                       ; $4393: $40
    ret nz                                        ; $4394: $C0

    nop                                           ; $4395: $00
    add b                                         ; $4396: $80
    nop                                           ; $4397: $00
    nop                                           ; $4398: $00
    nop                                           ; $4399: $00
    nop                                           ; $439A: $00
    nop                                           ; $439B: $00
    nop                                           ; $439C: $00
    nop                                           ; $439D: $00
    nop                                           ; $439E: $00
    nop                                           ; $439F: $00
    ld bc, $0100                                  ; $43A0: $01 $00 $01
    nop                                           ; $43A3: $00

jr_021_43A4:
    inc bc                                        ; $43A4: $03
    ld bc, $0007                                  ; $43A5: $01 $07 $00
    rrca                                          ; $43A8: $0F
    nop                                           ; $43A9: $00
    dec bc                                        ; $43AA: $0B
    inc b                                         ; $43AB: $04
    dec c                                         ; $43AC: $0D
    ld [bc], a                                    ; $43AD: $02
    rlca                                          ; $43AE: $07
    nop                                           ; $43AF: $00
    nop                                           ; $43B0: $00
    nop                                           ; $43B1: $00
    nop                                           ; $43B2: $00
    nop                                           ; $43B3: $00
    nop                                           ; $43B4: $00
    nop                                           ; $43B5: $00
    nop                                           ; $43B6: $00
    nop                                           ; $43B7: $00
    nop                                           ; $43B8: $00
    nop                                           ; $43B9: $00
    nop                                           ; $43BA: $00
    nop                                           ; $43BB: $00
    nop                                           ; $43BC: $00
    nop                                           ; $43BD: $00
    nop                                           ; $43BE: $00
    nop                                           ; $43BF: $00
    inc e                                         ; $43C0: $1C
    db $E3                                        ; $43C1: $E3
    inc a                                         ; $43C2: $3C
    db $D3                                        ; $43C3: $D3
    db $FC                                        ; $43C4: $FC
    dec hl                                        ; $43C5: $2B
    rst RST_38                                    ; $43C6: $FF
    call nc, Call_000_23FF                        ; $43C7: $D4 $FF $23
    rst RST_38                                    ; $43CA: $FF
    ld b, b                                       ; $43CB: $40
    rst RST_28                                    ; $43CC: $EF
    ld de, $C837                                  ; $43CD: $11 $37 $C8
    sbc h                                         ; $43D0: $9C
    ld h, e                                       ; $43D1: $63
    ld a, [hl]                                    ; $43D2: $7E
    dec b                                         ; $43D3: $05
    ld b, a                                       ; $43D4: $47
    jr c, jr_021_435C                             ; $43D5: $38 $85

    ld a, b                                       ; $43D7: $78
    ld a, [$0301]                                 ; $43D8: $FA $01 $03
    nop                                           ; $43DB: $00
    nop                                           ; $43DC: $00
    nop                                           ; $43DD: $00
    nop                                           ; $43DE: $00
    nop                                           ; $43DF: $00
    ld l, $C0                                     ; $43E0: $2E $C0
    jr nz, jr_021_43A4                            ; $43E2: $20 $C0

    ld b, b                                       ; $43E4: $40
    add b                                         ; $43E5: $80
    ldh [rLCDC], a                                ; $43E6: $E0 $40
    ldh a, [$FFA0]                                ; $43E8: $F0 $A0
    ld hl, sp+$70                                 ; $43EA: $F8 $70
    db $FC                                        ; $43EC: $FC
    ld hl, sp-$02                                 ; $43ED: $F8 $FE
    ld a, h                                       ; $43EF: $7C
    rst RST_38                                    ; $43F0: $FF
    cp [hl]                                       ; $43F1: $BE
    rst RST_38                                    ; $43F2: $FF
    ld e, [hl]                                    ; $43F3: $5E
    ld a, [hl]                                    ; $43F4: $7E
    xor h                                         ; $43F5: $AC
    cp $10                                        ; $43F6: $FE $10
    ld a, [de]                                    ; $43F8: $1A
    db $E4                                        ; $43F9: $E4
    inc b                                         ; $43FA: $04
    ld hl, sp-$08                                 ; $43FB: $F8 $F8
    nop                                           ; $43FD: $00
    nop                                           ; $43FE: $00
    nop                                           ; $43FF: $00
    nop                                           ; $4400: $00
    nop                                           ; $4401: $00
    add b                                         ; $4402: $80
    nop                                           ; $4403: $00
    ld h, b                                       ; $4404: $60
    nop                                           ; $4405: $00
    ld a, b                                       ; $4406: $78
    jr nz, jr_021_4447                            ; $4407: $20 $3E

    jr jr_021_4442                                ; $4409: $18 $37

    ld e, $19                                     ; $440B: $1E $19
    rrca                                          ; $440D: $0F
    jr jr_021_441F                                ; $440E: $18 $0F

    inc c                                         ; $4410: $0C
    rlca                                          ; $4411: $07
    inc c                                         ; $4412: $0C
    rlca                                          ; $4413: $07
    ld b, $03                                     ; $4414: $06 $03
    ld b, $03                                     ; $4416: $06 $03
    inc bc                                        ; $4418: $03
    ld bc, $0103                                  ; $4419: $01 $03 $01
    ld bc, $0100                                  ; $441C: $01 $00 $01

jr_021_441F:
    nop                                           ; $441F: $00
    rra                                           ; $4420: $1F
    ld bc, $051F                                  ; $4421: $01 $1F $05
    rra                                           ; $4424: $1F
    dec b                                         ; $4425: $05
    rra                                           ; $4426: $1F
    dec b                                         ; $4427: $05
    rla                                           ; $4428: $17
    add hl, bc                                    ; $4429: $09
    inc de                                        ; $442A: $13
    dec c                                         ; $442B: $0D
    db $D3                                        ; $442C: $D3
    dec c                                         ; $442D: $0D
    di                                            ; $442E: $F3
    call $F13F                                    ; $442F: $CD $3F $F1
    rrca                                          ; $4432: $0F
    db $FD                                        ; $4433: $FD
    inc bc                                        ; $4434: $03
    rst RST_38                                    ; $4435: $FF
    nop                                           ; $4436: $00
    rst RST_38                                    ; $4437: $FF
    nop                                           ; $4438: $00
    rst RST_38                                    ; $4439: $FF
    nop                                           ; $443A: $00
    rst RST_38                                    ; $443B: $FF
    add b                                         ; $443C: $80
    rst RST_38                                    ; $443D: $FF
    add b                                         ; $443E: $80
    rst RST_38                                    ; $443F: $FF
    ld h, a                                       ; $4440: $67
    ret c                                         ; $4441: $D8

jr_021_4442:
    ld hl, sp+$27                                 ; $4442: $F8 $27
    ld a, d                                       ; $4444: $7A
    sub l                                         ; $4445: $95
    ld c, [hl]                                    ; $4446: $4E

jr_021_4447:
    cp c                                          ; $4447: $B9
    rst RST_00                                    ; $4448: $C7
    inc a                                         ; $4449: $3C
    ld h, e                                       ; $444A: $63
    sbc [hl]                                      ; $444B: $9E
    and c                                         ; $444C: $A1
    ld e, a                                       ; $444D: $5F
    and c                                         ; $444E: $A1
    ld e, [hl]                                    ; $444F: $5E
    ld d, c                                       ; $4450: $51
    xor [hl]                                      ; $4451: $AE
    db $10                                        ; $4452: $10
    rst RST_28                                    ; $4453: $EF
    db $10                                        ; $4454: $10
    rst RST_28                                    ; $4455: $EF
    db $10                                        ; $4456: $10
    rst RST_28                                    ; $4457: $EF
    db $10                                        ; $4458: $10
    rst RST_28                                    ; $4459: $EF
    nop                                           ; $445A: $00
    rst RST_38                                    ; $445B: $FF
    nop                                           ; $445C: $00
    rst RST_38                                    ; $445D: $FF
    nop                                           ; $445E: $00
    rst RST_38                                    ; $445F: $FF
    cp $7B                                        ; $4460: $FE $7B
    ld a, h                                       ; $4462: $7C
    or a                                          ; $4463: $B7
    inc a                                         ; $4464: $3C
    rst RST_10                                    ; $4465: $D7
    inc a                                         ; $4466: $3C
    set 3, e                                      ; $4467: $CB $DB
    inc c                                         ; $4469: $0C
    ld sp, $B11E                                  ; $446A: $31 $1E $B1
    ld e, $E0                                     ; $446D: $1E $E0
    cp a                                          ; $446F: $BF
    ld b, b                                       ; $4470: $40
    rst RST_38                                    ; $4471: $FF
    add b                                         ; $4472: $80
    ld a, a                                       ; $4473: $7F
    nop                                           ; $4474: $00
    rst RST_38                                    ; $4475: $FF
    nop                                           ; $4476: $00

jr_021_4477:
    rst RST_38                                    ; $4477: $FF
    nop                                           ; $4478: $00

jr_021_4479:
    rst RST_38                                    ; $4479: $FF
    nop                                           ; $447A: $00
    rst RST_38                                    ; $447B: $FF
    nop                                           ; $447C: $00
    rst RST_38                                    ; $447D: $FF
    nop                                           ; $447E: $00
    rst RST_38                                    ; $447F: $FF
    ld [hl], a                                    ; $4480: $77
    jp nz, Jump_021_42FF                          ; $4481: $C2 $FF $42

    rst RST_28                                    ; $4484: $EF
    ld d, [hl]                                    ; $4485: $56
    rst RST_38                                    ; $4486: $FF
    ld b, [hl]                                    ; $4487: $46
    rst RST_38                                    ; $4488: $FF
    ld c, d                                       ; $4489: $4A
    ld a, a                                       ; $448A: $7F
    jp z, $DE73                                   ; $448B: $CA $73 $DE

    di                                            ; $448E: $F3
    ld e, [hl]                                    ; $448F: $5E
    db $E3                                        ; $4490: $E3
    ld a, [hl]                                    ; $4491: $7E
    ld d, e                                       ; $4492: $53
    rst RST_28                                    ; $4493: $EF
    ld d, d                                       ; $4494: $52
    xor a                                         ; $4495: $AF
    jr nz, jr_021_4477                            ; $4496: $20 $DF

    jr nz, jr_021_4479                            ; $4498: $20 $DF

    nop                                           ; $449A: $00
    rst RST_38                                    ; $449B: $FF
    nop                                           ; $449C: $00
    rst RST_38                                    ; $449D: $FF
    nop                                           ; $449E: $00
    rst RST_38                                    ; $449F: $FF
    cp l                                          ; $44A0: $BD
    db $FC                                        ; $44A1: $FC
    ld d, e                                       ; $44A2: $53
    ld [hl], c                                    ; $44A3: $71
    ld [hl], $33                                  ; $44A4: $36 $33
    inc c                                         ; $44A6: $0C
    rlca                                          ; $44A7: $07
    ld e, c                                       ; $44A8: $59
    rrca                                          ; $44A9: $0F
    ld [hl], c                                    ; $44AA: $71
    rra                                           ; $44AB: $1F
    db $E3                                        ; $44AC: $E3
    ld a, $C3                                     ; $44AD: $3E $C3
    ld a, [hl]                                    ; $44AF: $7E
    add $BC                                       ; $44B0: $C6 $BC
    ld b, [hl]                                    ; $44B2: $46
    cp h                                          ; $44B3: $BC
    inc c                                         ; $44B4: $0C
    ld hl, sp+$0C                                 ; $44B5: $F8 $0C
    ld hl, sp+$18                                 ; $44B7: $F8 $18
    ldh a, [rNR23]                                ; $44B9: $F0 $18
    ldh a, [$FF30]                                ; $44BB: $F0 $30
    ldh [$FF30], a                                ; $44BD: $E0 $30

jr_021_44BF:
    ldh [rP1], a                                  ; $44BF: $E0 $00
    nop                                           ; $44C1: $00
    ld [bc], a                                    ; $44C2: $02
    nop                                           ; $44C3: $00
    inc b                                         ; $44C4: $04
    nop                                           ; $44C5: $00
    inc c                                         ; $44C6: $0C
    nop                                           ; $44C7: $00
    jr jr_021_44CA                                ; $44C8: $18 $00

jr_021_44CA:
    jr c, jr_021_44DC                             ; $44CA: $38 $10

    ld [hl], b                                    ; $44CC: $70
    jr nz, jr_021_44BF                            ; $44CD: $20 $F0

    ld h, b                                       ; $44CF: $60
    ldh [$FFC0], a                                ; $44D0: $E0 $C0
    ld h, b                                       ; $44D2: $60
    ret nz                                        ; $44D3: $C0

    ret nz                                        ; $44D4: $C0

    add b                                         ; $44D5: $80
    ret nz                                        ; $44D6: $C0

    add b                                         ; $44D7: $80
    add b                                         ; $44D8: $80
    nop                                           ; $44D9: $00
    add b                                         ; $44DA: $80
    nop                                           ; $44DB: $00

jr_021_44DC:
    nop                                           ; $44DC: $00
    nop                                           ; $44DD: $00
    nop                                           ; $44DE: $00
    nop                                           ; $44DF: $00
    or c                                          ; $44E0: $B1
    rst RST_38                                    ; $44E1: $FF
    ld l, b                                       ; $44E2: $68
    rst RST_38                                    ; $44E3: $FF
    ld l, $F9                                     ; $44E4: $2E $F9
    jp hl                                         ; $44E6: $E9


    cp $1B                                        ; $44E7: $FE $1B
    db $FC                                        ; $44E9: $FC
    rrca                                          ; $44EA: $0F
    ld sp, hl                                     ; $44EB: $F9
    dec c                                         ; $44EC: $0D
    cp $0F                                        ; $44ED: $FE $0F
    cp $FB                                        ; $44EF: $FE $FB
    db $FC                                        ; $44F1: $FC
    ld c, a                                       ; $44F2: $4F
    or c                                          ; $44F3: $B1
    ld c, a                                       ; $44F4: $4F
    or e                                          ; $44F5: $B3
    ld c, a                                       ; $44F6: $4F
    or e                                          ; $44F7: $B3
    ld c, a                                       ; $44F8: $4F
    or e                                          ; $44F9: $B3
    ld c, e                                       ; $44FA: $4B
    or l                                          ; $44FB: $B5
    pop af                                        ; $44FC: $F1
    ld c, $C3                                     ; $44FD: $0E $C3
    cp [hl]                                       ; $44FF: $BE
    ld sp, hl                                     ; $4500: $F9
    ld d, $FF                                     ; $4501: $16 $FF
    ld d, c                                       ; $4503: $51
    ld a, a                                       ; $4504: $7F
    cp [hl]                                       ; $4505: $BE
    cp $31                                        ; $4506: $FE $31
    cp [hl]                                       ; $4508: $BE
    ld c, l                                       ; $4509: $4D
    call nz, $FEBB                                ; $450A: $C4 $BB $FE
    pop bc                                        ; $450D: $C1
    ld sp, hl                                     ; $450E: $F9
    sub $FF                                       ; $450F: $D6 $FF
    nop                                           ; $4511: $00
    adc a                                         ; $4512: $8F
    halt                                          ; $4513: $76
    rst RST_08                                    ; $4514: $CF
    ld a, d                                       ; $4515: $7A
    rst RST_38                                    ; $4516: $FF
    cp b                                          ; $4517: $B8
    ld sp, hl                                     ; $4518: $F9
    add $F7                                       ; $4519: $C6 $F7
    db $ED                                        ; $451B: $ED
    rst RST_30                                    ; $451C: $F7
    db $ED                                        ; $451D: $ED
    rst RST_38                                    ; $451E: $FF
    ld [bc], a                                    ; $451F: $02
    ld [$92F0], sp                                ; $4520: $08 $F0 $92
    ld h, b                                       ; $4523: $60
    sub d                                         ; $4524: $92
    ld h, b                                       ; $4525: $60
    ld h, [hl]                                    ; $4526: $66
    add b                                         ; $4527: $80
    ld a, [hl]                                    ; $4528: $7E
    add b                                         ; $4529: $80
    ld h, d                                       ; $452A: $62
    sbc h                                         ; $452B: $9C
    ldh a, [c]                                    ; $452C: $F2
    ld c, h                                       ; $452D: $4C
    db $E4                                        ; $452E: $E4
    sbc b                                         ; $452F: $98
    xor $10                                       ; $4530: $EE $10
    jp hl                                         ; $4532: $E9


    ld d, [hl]                                    ; $4533: $56
    ldh a, [rVBK]                                 ; $4534: $F0 $4F
    ldh [$FFDF], a                                ; $4536: $E0 $DF
    pop hl                                        ; $4538: $E1
    sbc $E1                                       ; $4539: $DE $E1
    ld e, [hl]                                    ; $453B: $5E
    ld [hl], e                                    ; $453C: $73
    call z, Call_021_40EF                         ; $453D: $CC $EF $40
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
    add b                                         ; $454A: $80
    add b                                         ; $454B: $80
    add b                                         ; $454C: $80
    add b                                         ; $454D: $80
    ret nz                                        ; $454E: $C0

    ret nz                                        ; $454F: $C0

    call nz, $ACC4                                ; $4550: $C4 $C4 $AC
    db $EC                                        ; $4553: $EC
    or h                                          ; $4554: $B4
    db $FC                                        ; $4555: $FC
    db $E4                                        ; $4556: $E4
    db $FC                                        ; $4557: $FC
    sbc [hl]                                      ; $4558: $9E
    cp $0A                                        ; $4559: $FE $0A
    cp $1E                                        ; $455B: $FE $1E
    cp $14                                        ; $455D: $FE $14
    db $FC                                        ; $455F: $FC
    dec de                                        ; $4560: $1B
    dec de                                        ; $4561: $1B
    dec d                                         ; $4562: $15
    rra                                           ; $4563: $1F
    dec d                                         ; $4564: $15
    rra                                           ; $4565: $1F
    rra                                           ; $4566: $1F
    rra                                           ; $4567: $1F
    ld c, $0F                                     ; $4568: $0E $0F
    ld a, [bc]                                    ; $456A: $0A
    rrca                                          ; $456B: $0F
    ld b, $07                                     ; $456C: $06 $07
    ld b, $07                                     ; $456E: $06 $07
    rlca                                          ; $4570: $07
    rlca                                          ; $4571: $07
    inc b                                         ; $4572: $04
    inc bc                                        ; $4573: $03
    inc b                                         ; $4574: $04
    inc bc                                        ; $4575: $03
    inc b                                         ; $4576: $04
    inc bc                                        ; $4577: $03
    ld b, $01                                     ; $4578: $06 $01
    inc de                                        ; $457A: $13
    nop                                           ; $457B: $00
    inc de                                        ; $457C: $13
    ld bc, $0117                                  ; $457D: $01 $17 $01
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
    nop                                           ; $4590: $00
    nop                                           ; $4591: $00
    inc bc                                        ; $4592: $03
    nop                                           ; $4593: $00
    rlca                                          ; $4594: $07
    inc bc                                        ; $4595: $03
    inc b                                         ; $4596: $04
    inc bc                                        ; $4597: $03
    inc b                                         ; $4598: $04
    inc bc                                        ; $4599: $03
    inc d                                         ; $459A: $14
    inc de                                        ; $459B: $13
    inc d                                         ; $459C: $14
    inc de                                        ; $459D: $13
    dec d                                         ; $459E: $15
    inc de                                        ; $459F: $13
    nop                                           ; $45A0: $00
    nop                                           ; $45A1: $00
    nop                                           ; $45A2: $00
    nop                                           ; $45A3: $00
    nop                                           ; $45A4: $00
    nop                                           ; $45A5: $00
    nop                                           ; $45A6: $00
    nop                                           ; $45A7: $00
    nop                                           ; $45A8: $00
    nop                                           ; $45A9: $00
    nop                                           ; $45AA: $00
    nop                                           ; $45AB: $00
    nop                                           ; $45AC: $00
    nop                                           ; $45AD: $00
    nop                                           ; $45AE: $00
    nop                                           ; $45AF: $00
    ld [$8800], sp                                ; $45B0: $08 $00 $88
    nop                                           ; $45B3: $00
    ld hl, sp-$80                                 ; $45B4: $F8 $80
    ld a, b                                       ; $45B6: $78
    ldh [rNR23], a                                ; $45B7: $E0 $18
    ldh a, [$FF8C]                                ; $45B9: $F0 $8C
    ld hl, sp-$6A                                 ; $45BB: $F8 $96
    db $FC                                        ; $45BD: $FC
    sub e                                         ; $45BE: $93
    cp $00                                        ; $45BF: $FE $00
    nop                                           ; $45C1: $00
    nop                                           ; $45C2: $00
    nop                                           ; $45C3: $00
    nop                                           ; $45C4: $00
    nop                                           ; $45C5: $00
    nop                                           ; $45C6: $00
    nop                                           ; $45C7: $00
    nop                                           ; $45C8: $00
    nop                                           ; $45C9: $00
    nop                                           ; $45CA: $00
    nop                                           ; $45CB: $00
    nop                                           ; $45CC: $00
    nop                                           ; $45CD: $00
    nop                                           ; $45CE: $00
    nop                                           ; $45CF: $00
    nop                                           ; $45D0: $00
    nop                                           ; $45D1: $00
    nop                                           ; $45D2: $00
    nop                                           ; $45D3: $00
    nop                                           ; $45D4: $00
    nop                                           ; $45D5: $00
    ld [$0800], sp                                ; $45D6: $08 $00 $08
    nop                                           ; $45D9: $00
    adc c                                         ; $45DA: $89
    nop                                           ; $45DB: $00
    adc l                                         ; $45DC: $8D
    nop                                           ; $45DD: $00
    sbc a                                         ; $45DE: $9F
    ld bc, $0000                                  ; $45DF: $01 $00 $00
    nop                                           ; $45E2: $00
    nop                                           ; $45E3: $00
    nop                                           ; $45E4: $00
    nop                                           ; $45E5: $00
    nop                                           ; $45E6: $00
    nop                                           ; $45E7: $00
    nop                                           ; $45E8: $00
    nop                                           ; $45E9: $00
    nop                                           ; $45EA: $00
    nop                                           ; $45EB: $00
    nop                                           ; $45EC: $00
    nop                                           ; $45ED: $00
    nop                                           ; $45EE: $00
    nop                                           ; $45EF: $00
    add b                                         ; $45F0: $80
    nop                                           ; $45F1: $00
    ldh a, [rP1]                                  ; $45F2: $F0 $00
    ld hl, sp+$30                                 ; $45F4: $F8 $30
    ret z                                         ; $45F6: $C8

    ld [hl], b                                    ; $45F7: $70
    ret z                                         ; $45F8: $C8

    ld [hl], b                                    ; $45F9: $70
    adc b                                         ; $45FA: $88
    ldh a, [$FF88]                                ; $45FB: $F0 $88
    ldh a, [$FF08]                                ; $45FD: $F0 $08
    ldh a, [rP1]                                  ; $45FF: $F0 $00
    nop                                           ; $4601: $00
    nop                                           ; $4602: $00
    nop                                           ; $4603: $00
    nop                                           ; $4604: $00
    nop                                           ; $4605: $00
    nop                                           ; $4606: $00
    nop                                           ; $4607: $00
    nop                                           ; $4608: $00
    nop                                           ; $4609: $00
    nop                                           ; $460A: $00
    nop                                           ; $460B: $00
    inc c                                         ; $460C: $0C
    nop                                           ; $460D: $00
    rrca                                          ; $460E: $0F
    inc b                                         ; $460F: $04
    rlca                                          ; $4610: $07
    ld bc, $001F                                  ; $4611: $01 $1F $00
    rra                                           ; $4614: $1F
    dec c                                         ; $4615: $0D
    rrca                                          ; $4616: $0F
    inc bc                                        ; $4617: $03
    rra                                           ; $4618: $1F
    dec c                                         ; $4619: $0D
    rra                                           ; $461A: $1F
    ld bc, $0207                                  ; $461B: $01 $07 $02
    rlca                                          ; $461E: $07
    nop                                           ; $461F: $00
    nop                                           ; $4620: $00
    nop                                           ; $4621: $00
    nop                                           ; $4622: $00
    nop                                           ; $4623: $00
    nop                                           ; $4624: $00
    nop                                           ; $4625: $00
    nop                                           ; $4626: $00
    nop                                           ; $4627: $00
    nop                                           ; $4628: $00
    nop                                           ; $4629: $00
    nop                                           ; $462A: $00
    nop                                           ; $462B: $00
    nop                                           ; $462C: $00
    nop                                           ; $462D: $00
    nop                                           ; $462E: $00
    nop                                           ; $462F: $00
    ret nz                                        ; $4630: $C0

    nop                                           ; $4631: $00
    rst RST_38                                    ; $4632: $FF
    ret nz                                        ; $4633: $C0

Call_021_4634:
    ldh [$FF5F], a                                ; $4634: $E0 $5F
    ldh a, [c]                                    ; $4636: $F2
    ld e, a                                       ; $4637: $5F
    rst RST_38                                    ; $4638: $FF
    rst RST_18                                    ; $4639: $DF
    ldh [$FFDF], a                                ; $463A: $E0 $DF
    ldh [$FFDF], a                                ; $463C: $E0 $DF
    rst RST_38                                    ; $463E: $FF
    nop                                           ; $463F: $00
    ld [hl], b                                    ; $4640: $70
    nop                                           ; $4641: $00
    db $FC                                        ; $4642: $FC
    ld [hl], b                                    ; $4643: $70
    adc [hl]                                      ; $4644: $8E
    ld a, h                                       ; $4645: $7C
    add e                                         ; $4646: $83
    ld a, [hl]                                    ; $4647: $7E
    add c                                         ; $4648: $81
    ld a, a                                       ; $4649: $7F
    add b                                         ; $464A: $80
    ld a, a                                       ; $464B: $7F
    add b                                         ; $464C: $80
    ld a, a                                       ; $464D: $7F
    ld b, b                                       ; $464E: $40
    ccf                                           ; $464F: $3F
    inc a                                         ; $4650: $3C
    inc bc                                        ; $4651: $03
    ld b, e                                       ; $4652: $43
    inc a                                         ; $4653: $3C
    ld h, [hl]                                    ; $4654: $66
    rra                                           ; $4655: $1F
    ld [hl], e                                    ; $4656: $73
    rrca                                          ; $4657: $0F
    ld sp, hl                                     ; $4658: $F9
    rlca                                          ; $4659: $07
    ld a, $C3                                     ; $465A: $3E $C3
    ccf                                           ; $465C: $3F
    db $DB                                        ; $465D: $DB
    rst RST_38                                    ; $465E: $FF
    db $DD                                        ; $465F: $DD
    add b                                         ; $4660: $80
    nop                                           ; $4661: $00
    ret nz                                        ; $4662: $C0

    add b                                         ; $4663: $80
    ld h, e                                       ; $4664: $63
    ret nz                                        ; $4665: $C0

    ccf                                           ; $4666: $3F
    ldh [c], a                                    ; $4667: $E2
    rra                                           ; $4668: $1F
    ld [$F70F], a                                 ; $4669: $EA $0F $F7
    cp a                                          ; $466C: $BF
    ld b, [hl]                                    ; $466D: $46
    ld [hl], a                                    ; $466E: $77
    adc c                                         ; $466F: $89
    ld hl, sp-$49                                 ; $4670: $F8 $B7
    ld a, a                                       ; $4672: $7F
    sbc b                                         ; $4673: $98
    ccf                                           ; $4674: $3F
    jp c, $C0BF                                   ; $4675: $DA $BF $C0

    ld sp, $F9CE                                  ; $4678: $31 $CE $F9
    cpl                                           ; $467B: $2F
    rst RST_38                                    ; $467C: $FF
    ld [hl], a                                    ; $467D: $77
    rst RST_38                                    ; $467E: $FF
    ld a, b                                       ; $467F: $78
    ld c, $00                                     ; $4680: $0E $00
    rrca                                          ; $4682: $0F
    ld b, $19                                     ; $4683: $06 $19
    ld c, $19                                     ; $4685: $0E $19
    ld c, $31                                     ; $4687: $0E $31
    ld e, $31                                     ; $4689: $1E $31
    ld e, $E1                                     ; $468B: $1E $E1
    ld a, $21                                     ; $468D: $3E $21
    sbc $F2                                       ; $468F: $DE $F2
    inc l                                         ; $4691: $2C
    ldh a, [c]                                    ; $4692: $F2
    call z, Call_000_30CC                         ; $4693: $CC $CC $30
    rst RST_08                                    ; $4696: $CF
    or b                                          ; $4697: $B0
    adc h                                         ; $4698: $8C
    ld [hl], e                                    ; $4699: $73
    sbc $2D                                       ; $469A: $DE $2D
    inc a                                         ; $469C: $3C
    db $DB                                        ; $469D: $DB
    db $FD                                        ; $469E: $FD
    ld [bc], a                                    ; $469F: $02
    add b                                         ; $46A0: $80
    nop                                           ; $46A1: $00
    ld b, b                                       ; $46A2: $40
    add b                                         ; $46A3: $80
    ld b, b                                       ; $46A4: $40
    add b                                         ; $46A5: $80
    add b                                         ; $46A6: $80
    nop                                           ; $46A7: $00
    call c, Call_000_3E00                         ; $46A8: $DC $00 $3E
    call z, Call_000_00FE                         ; $46AB: $CC $FE $00
    rst RST_38                                    ; $46AE: $FF
    ld d, h                                       ; $46AF: $54
    rst RST_38                                    ; $46B0: $FF
    xor d                                         ; $46B1: $AA
    rst RST_38                                    ; $46B2: $FF
    xor d                                         ; $46B3: $AA
    cp $7C                                        ; $46B4: $FE $7C
    db $FC                                        ; $46B6: $FC
    nop                                           ; $46B7: $00
    nop                                           ; $46B8: $00

Call_021_46B9:
    nop                                           ; $46B9: $00
    nop                                           ; $46BA: $00
    nop                                           ; $46BB: $00
    ldh [rP1], a                                  ; $46BC: $E0 $00
    ld hl, sp+$60                                 ; $46BE: $F8 $60
    ld a, $DD                                     ; $46C0: $3E $DD

jr_021_46C2:
    ccf                                           ; $46C2: $3F
    ret nz                                        ; $46C3: $C0

    ret c                                         ; $46C4: $D8

    rrca                                          ; $46C5: $0F
    jr nc, jr_021_46E7                            ; $46C6: $30 $1F

    jr nc, jr_021_46E9                            ; $46C8: $30 $1F

    ld h, b                                       ; $46CA: $60
    ccf                                           ; $46CB: $3F
    ld h, b                                       ; $46CC: $60
    ccf                                           ; $46CD: $3F
    ret nz                                        ; $46CE: $C0

    ld a, a                                       ; $46CF: $7F
    reti                                          ; $46D0: $D9


    ld h, a                                       ; $46D1: $67
    rst RST_28                                    ; $46D2: $EF
    ld d, b                                       ; $46D3: $50
    ld l, a                                       ; $46D4: $6F
    sub a                                         ; $46D5: $97
    ccf                                           ; $46D6: $3F
    rst RST_00                                    ; $46D7: $C7
    cpl                                           ; $46D8: $2F
    db $D3                                        ; $46D9: $D3
    scf                                           ; $46DA: $37
    set 7, e                                      ; $46DB: $CB $FB
    dec b                                         ; $46DD: $05
    dec bc                                        ; $46DE: $0B
    dec b                                         ; $46DF: $05
    ld a, [hl]                                    ; $46E0: $7E
    cp l                                          ; $46E1: $BD
    ld a, $DD                                     ; $46E2: $3E $DD
    ld a, a                                       ; $46E4: $7F
    sbc $DF                                       ; $46E5: $DE $DF

jr_021_46E7:
    add b                                         ; $46E7: $80
    rst RST_38                                    ; $46E8: $FF

jr_021_46E9:
    rrca                                          ; $46E9: $0F
    rrca                                          ; $46EA: $0F
    rst RST_30                                    ; $46EB: $F7
    rst RST_00                                    ; $46EC: $C7
    dec sp                                        ; $46ED: $3B
    rst RST_20                                    ; $46EE: $E7
    ret c                                         ; $46EF: $D8

    ld hl, sp-$40                                 ; $46F0: $F8 $C0
    ldh a, [$FFE0]                                ; $46F2: $F0 $E0
    ldh a, [$FFE0]                                ; $46F4: $F0 $E0
    ld hl, sp-$10                                 ; $46F6: $F8 $F0
    ld hl, sp-$10                                 ; $46F8: $F8 $F0
    db $FC                                        ; $46FA: $FC
    ld hl, sp-$04                                 ; $46FB: $F8 $FC
    ld h, b                                       ; $46FD: $60
    ldh [rP1], a                                  ; $46FE: $E0 $00
    push hl                                       ; $4700: $E5
    jp c, $59E6                                   ; $4701: $DA $E6 $59

    db $FD                                        ; $4704: $FD
    ld a, [hl-]                                   ; $4705: $3A
    add hl, sp                                    ; $4706: $39
    add $D9                                       ; $4707: $C6 $D9
    and $E7                                       ; $4709: $E6 $E7
    ret nz                                        ; $470B: $C0

    pop hl                                        ; $470C: $E1
    ret nz                                        ; $470D: $C0

    ldh [rP1], a                                  ; $470E: $E0 $00
    db $DB                                        ; $4710: $DB
    and b                                         ; $4711: $A0
    add a                                         ; $4712: $87
    ld a, b                                       ; $4713: $78
    adc d                                         ; $4714: $8A
    ld [hl], l                                    ; $4715: $75
    adc a                                         ; $4716: $8F
    ld [hl], b                                    ; $4717: $70
    ld l, d                                       ; $4718: $6A
    dec d                                         ; $4719: $15
    rra                                           ; $471A: $1F
    nop                                           ; $471B: $00
    ld c, $01                                     ; $471C: $0E $01
    rrca                                          ; $471E: $0F
    ld b, $FE                                     ; $471F: $06 $FE
    jr jr_021_46C2                                ; $4721: $18 $9F

    ld h, [hl]                                    ; $4723: $66
    rlca                                          ; $4724: $07
    ld sp, hl                                     ; $4725: $F9
    ld bc, $80FE                                  ; $4726: $01 $FE $80
    ld a, a                                       ; $4729: $7F
    ldh [$FF9F], a                                ; $472A: $E0 $9F
    ld hl, sp+$67                                 ; $472C: $F8 $67
    ld a, a                                       ; $472E: $7F
    jr @+$21                                      ; $472F: $18 $1F

    ld b, $06                                     ; $4731: $06 $06
    nop                                           ; $4733: $00
    nop                                           ; $4734: $00
    nop                                           ; $4735: $00
    nop                                           ; $4736: $00
    nop                                           ; $4737: $00
    nop                                           ; $4738: $00
    nop                                           ; $4739: $00
    nop                                           ; $473A: $00
    nop                                           ; $473B: $00
    nop                                           ; $473C: $00
    nop                                           ; $473D: $00
    nop                                           ; $473E: $00
    nop                                           ; $473F: $00
    add b                                         ; $4740: $80
    nop                                           ; $4741: $00
    ret nz                                        ; $4742: $C0

    add b                                         ; $4743: $80
    ret nz                                        ; $4744: $C0

    nop                                           ; $4745: $00
    ld b, b                                       ; $4746: $40
    add b                                         ; $4747: $80
    and b                                         ; $4748: $A0
    ld b, b                                       ; $4749: $40
    sub b                                         ; $474A: $90
    ld h, b                                       ; $474B: $60
    ld [$04F0], sp                                ; $474C: $08 $F0 $04
    ld hl, sp-$7C                                 ; $474F: $F8 $84
    ld a, b                                       ; $4751: $78
    db $FC                                        ; $4752: $FC
    nop                                           ; $4753: $00
    nop                                           ; $4754: $00
    nop                                           ; $4755: $00
    nop                                           ; $4756: $00
    nop                                           ; $4757: $00
    nop                                           ; $4758: $00
    nop                                           ; $4759: $00
    nop                                           ; $475A: $00
    nop                                           ; $475B: $00
    nop                                           ; $475C: $00
    nop                                           ; $475D: $00
    nop                                           ; $475E: $00
    nop                                           ; $475F: $00
    scf                                           ; $4760: $37
    dec bc                                        ; $4761: $0B
    scf                                           ; $4762: $37
    dec bc                                        ; $4763: $0B
    ld c, e                                       ; $4764: $4B
    dec [hl]                                      ; $4765: $35
    add a                                         ; $4766: $87
    ld a, b                                       ; $4767: $78
    db $FC                                        ; $4768: $FC
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
    nop                                           ; $478A: $00
    nop                                           ; $478B: $00
    ld bc, $0100                                  ; $478C: $01 $00 $01
    nop                                           ; $478F: $00
    ld bc, $0100                                  ; $4790: $01 $00 $01
    nop                                           ; $4793: $00
    ld bc, $0100                                  ; $4794: $01 $00 $01
    nop                                           ; $4797: $00
    nop                                           ; $4798: $00
    nop                                           ; $4799: $00
    nop                                           ; $479A: $00
    nop                                           ; $479B: $00
    nop                                           ; $479C: $00
    nop                                           ; $479D: $00
    nop                                           ; $479E: $00
    nop                                           ; $479F: $00
    rlca                                          ; $47A0: $07
    ld bc, $0001                                  ; $47A1: $01 $01 $00
    nop                                           ; $47A4: $00
    nop                                           ; $47A5: $00
    nop                                           ; $47A6: $00
    nop                                           ; $47A7: $00
    nop                                           ; $47A8: $00
    nop                                           ; $47A9: $00
    nop                                           ; $47AA: $00
    nop                                           ; $47AB: $00
    nop                                           ; $47AC: $00
    nop                                           ; $47AD: $00
    nop                                           ; $47AE: $00
    nop                                           ; $47AF: $00
    nop                                           ; $47B0: $00
    nop                                           ; $47B1: $00
    nop                                           ; $47B2: $00
    nop                                           ; $47B3: $00
    nop                                           ; $47B4: $00
    nop                                           ; $47B5: $00
    nop                                           ; $47B6: $00
    nop                                           ; $47B7: $00
    nop                                           ; $47B8: $00
    nop                                           ; $47B9: $00
    nop                                           ; $47BA: $00
    nop                                           ; $47BB: $00
    nop                                           ; $47BC: $00
    nop                                           ; $47BD: $00
    nop                                           ; $47BE: $00
    nop                                           ; $47BF: $00
    ld [hl], b                                    ; $47C0: $70
    nop                                           ; $47C1: $00
    ld a, b                                       ; $47C2: $78
    ld [hl], b                                    ; $47C3: $70
    ld c, a                                       ; $47C4: $4F
    ld a, b                                       ; $47C5: $78
    ld c, a                                       ; $47C6: $4F
    ld a, a                                       ; $47C7: $7F
    jr c, jr_021_4809                             ; $47C8: $38 $3F

    ld a, b                                       ; $47CA: $78
    ld a, a                                       ; $47CB: $7F
    sub [hl]                                      ; $47CC: $96
    rst RST_38                                    ; $47CD: $FF
    sub d                                         ; $47CE: $92
    rst RST_38                                    ; $47CF: $FF
    ld [hl], b                                    ; $47D0: $70
    ld a, a                                       ; $47D1: $7F
    sub b                                         ; $47D2: $90
    rst RST_38                                    ; $47D3: $FF
    sub b                                         ; $47D4: $90
    rst RST_38                                    ; $47D5: $FF
    ld a, b                                       ; $47D6: $78
    ld a, a                                       ; $47D7: $7F
    daa                                           ; $47D8: $27
    ccf                                           ; $47D9: $3F
    daa                                           ; $47DA: $27
    inc a                                         ; $47DB: $3C
    inc a                                         ; $47DC: $3C
    jr c, jr_021_4817                             ; $47DD: $38 $38

    nop                                           ; $47DF: $00
    nop                                           ; $47E0: $00
    nop                                           ; $47E1: $00
    nop                                           ; $47E2: $00
    nop                                           ; $47E3: $00
    add b                                         ; $47E4: $80
    nop                                           ; $47E5: $00
    rst RST_38                                    ; $47E6: $FF
    add b                                         ; $47E7: $80
    ld a, a                                       ; $47E8: $7F
    rst RST_38                                    ; $47E9: $FF
    ld b, b                                       ; $47EA: $40
    rst RST_38                                    ; $47EB: $FF
    ld b, b                                       ; $47EC: $40
    rst RST_38                                    ; $47ED: $FF
    ld [hl], e                                    ; $47EE: $73
    rst RST_38                                    ; $47EF: $FF
    ld a, a                                       ; $47F0: $7F
    rst RST_38                                    ; $47F1: $FF
    ld a, a                                       ; $47F2: $7F
    rst RST_38                                    ; $47F3: $FF
    ld b, b                                       ; $47F4: $40
    rst RST_38                                    ; $47F5: $FF
    ld b, b                                       ; $47F6: $40
    rst RST_38                                    ; $47F7: $FF
    rst RST_38                                    ; $47F8: $FF
    rst RST_38                                    ; $47F9: $FF
    rst RST_38                                    ; $47FA: $FF
    nop                                           ; $47FB: $00
    nop                                           ; $47FC: $00
    nop                                           ; $47FD: $00
    nop                                           ; $47FE: $00
    nop                                           ; $47FF: $00
    inc e                                         ; $4800: $1C
    nop                                           ; $4801: $00
    ccf                                           ; $4802: $3F
    nop                                           ; $4803: $00
    ccf                                           ; $4804: $3F
    nop                                           ; $4805: $00
    ccf                                           ; $4806: $3F
    nop                                           ; $4807: $00
    scf                                           ; $4808: $37

jr_021_4809:
    ld [$0C33], sp                                ; $4809: $08 $33 $0C
    ld sp, $180E                                  ; $480C: $31 $0E $18
    rlca                                          ; $480F: $07
    rrca                                          ; $4810: $0F
    nop                                           ; $4811: $00
    rst RST_38                                    ; $4812: $FF
    nop                                           ; $4813: $00
    ld sp, hl                                     ; $4814: $F9
    and $1E                                       ; $4815: $E6 $1E

jr_021_4817:
    ld sp, hl                                     ; $4817: $F9
    rra                                           ; $4818: $1F
    cp $10                                        ; $4819: $FE $10
    rst RST_38                                    ; $481B: $FF
    ldh a, [rIE]                                  ; $481C: $F0 $FF
    ldh a, [rIE]                                  ; $481E: $F0 $FF
    add b                                         ; $4820: $80
    nop                                           ; $4821: $00
    ret nz                                        ; $4822: $C0

    nop                                           ; $4823: $00
    ldh [rP1], a                                  ; $4824: $E0 $00
    ldh a, [rP1]                                  ; $4826: $F0 $00
    ld hl, sp+$00                                 ; $4828: $F8 $00
    rst RST_38                                    ; $482A: $FF
    nop                                           ; $482B: $00
    ld a, l                                       ; $482C: $7D
    add d                                         ; $482D: $82
    cp $01                                        ; $482E: $FE $01
    cp $01                                        ; $4830: $FE $01
    ld a, l                                       ; $4832: $7D
    add d                                         ; $4833: $82
    ld [hl-], a                                   ; $4834: $32
    call Call_021_46B9                            ; $4835: $CD $B9 $46
    sbc c                                         ; $4838: $99
    ld h, [hl]                                    ; $4839: $66
    sbc a                                         ; $483A: $9F
    ld h, b                                       ; $483B: $60
    sbc h                                         ; $483C: $9C
    ld h, e                                       ; $483D: $63
    cp $81                                        ; $483E: $FE $81
    inc bc                                        ; $4840: $03
    nop                                           ; $4841: $00
    ld [bc], a                                    ; $4842: $02
    ld bc, $0205                                  ; $4843: $01 $05 $02
    dec b                                         ; $4846: $05
    ld [bc], a                                    ; $4847: $02
    dec bc                                        ; $4848: $0B
    inc b                                         ; $4849: $04
    dec bc                                        ; $484A: $0B

jr_021_484B:
    inc b                                         ; $484B: $04
    rst RST_30                                    ; $484C: $F7
    ld [$807F], sp                                ; $484D: $08 $7F $80
    ld a, a                                       ; $4850: $7F
    add b                                         ; $4851: $80
    rra                                           ; $4852: $1F
    ldh [$FF7F], a                                ; $4853: $E0 $7F
    add b                                         ; $4855: $80
    rst RST_38                                    ; $4856: $FF
    ld h, b                                       ; $4857: $60
    ccf                                           ; $4858: $3F
    ret nz                                        ; $4859: $C0

    rst RST_38                                    ; $485A: $FF
    nop                                           ; $485B: $00
    ld a, a                                       ; $485C: $7F
    add b                                         ; $485D: $80
    rst RST_38                                    ; $485E: $FF
    nop                                           ; $485F: $00
    add b                                         ; $4860: $80
    nop                                           ; $4861: $00
    ret nz                                        ; $4862: $C0

    nop                                           ; $4863: $00
    ret nz                                        ; $4864: $C0

    nop                                           ; $4865: $00
    ret nz                                        ; $4866: $C0

    nop                                           ; $4867: $00
    ret nz                                        ; $4868: $C0

    nop                                           ; $4869: $00
    ret nz                                        ; $486A: $C0

    nop                                           ; $486B: $00
    ret nz                                        ; $486C: $C0

    nop                                           ; $486D: $00
    ret nz                                        ; $486E: $C0

    nop                                           ; $486F: $00
    add b                                         ; $4870: $80
    nop                                           ; $4871: $00
    add b                                         ; $4872: $80
    nop                                           ; $4873: $00
    nop                                           ; $4874: $00
    nop                                           ; $4875: $00
    ldh [rP1], a                                  ; $4876: $E0 $00
    ret nc                                        ; $4878: $D0

    jr nz, jr_021_484B                            ; $4879: $20 $D0

    jr nz, @-$5E                                  ; $487B: $20 $A0

    ld b, b                                       ; $487D: $40
    rst RST_30                                    ; $487E: $F7
    nop                                           ; $487F: $00

jr_021_4880:
    db $10                                        ; $4880: $10
    rst RST_38                                    ; $4881: $FF
    rra                                           ; $4882: $1F
    rst RST_38                                    ; $4883: $FF
    rst RST_38                                    ; $4884: $FF
    ldh [$FFEE], a                                ; $4885: $E0 $EE
    ld bc, $030C                                  ; $4887: $01 $0C $03
    inc e                                         ; $488A: $1C
    inc bc                                        ; $488B: $03
    add hl, de                                    ; $488C: $19
    ld b, $39                                     ; $488D: $06 $39
    ld b, $3F                                     ; $488F: $06 $3F
    nop                                           ; $4891: $00
    ld a, a                                       ; $4892: $7F
    nop                                           ; $4893: $00
    ld a, a                                       ; $4894: $7F
    nop                                           ; $4895: $00
    ld a, a                                       ; $4896: $7F
    nop                                           ; $4897: $00
    ld a, a                                       ; $4898: $7F
    nop                                           ; $4899: $00
    ld a, a                                       ; $489A: $7F
    nop                                           ; $489B: $00
    ld a, a                                       ; $489C: $7F
    nop                                           ; $489D: $00
    inc bc                                        ; $489E: $03
    nop                                           ; $489F: $00
    ld [hl], a                                    ; $48A0: $77
    adc b                                         ; $48A1: $88
    ld [hl], e                                    ; $48A2: $73
    adc h                                         ; $48A3: $8C
    ld sp, hl                                     ; $48A4: $F9
    ld b, $FD                                     ; $48A5: $06 $FD
    ld [bc], a                                    ; $48A7: $02
    rst RST_38                                    ; $48A8: $FF
    nop                                           ; $48A9: $00
    rst RST_30                                    ; $48AA: $F7
    nop                                           ; $48AB: $00
    db $FC                                        ; $48AC: $FC
    inc bc                                        ; $48AD: $03
    jp nz, $F73D                                  ; $48AE: $C2 $3D $F7

    ld [$00FF], sp                                ; $48B1: $08 $FF $00
    cp $00                                        ; $48B4: $FE $00
    db $FC                                        ; $48B6: $FC
    nop                                           ; $48B7: $00
    db $FC                                        ; $48B8: $FC
    nop                                           ; $48B9: $00
    cp $00                                        ; $48BA: $FE $00
    cp $00                                        ; $48BC: $FE $00
    rst RST_38                                    ; $48BE: $FF
    nop                                           ; $48BF: $00
    db $FD                                        ; $48C0: $FD
    ld [bc], a                                    ; $48C1: $02
    db $FD                                        ; $48C2: $FD
    ld [bc], a                                    ; $48C3: $02
    rst RST_38                                    ; $48C4: $FF
    nop                                           ; $48C5: $00
    rst RST_08                                    ; $48C6: $CF
    jr nc, jr_021_4880                            ; $48C7: $30 $B7

    ld a, b                                       ; $48C9: $78
    cp c                                          ; $48CA: $B9
    ld [hl], b                                    ; $48CB: $70
    ld hl, sp+$30                                 ; $48CC: $F8 $30
    ld hl, sp+$00                                 ; $48CE: $F8 $00
    or $08                                        ; $48D0: $F6 $08
    ld h, e                                       ; $48D2: $63
    sbc h                                         ; $48D3: $9C
    ld a, a                                       ; $48D4: $7F
    add b                                         ; $48D5: $80
    rst RST_38                                    ; $48D6: $FF
    nop                                           ; $48D7: $00
    rra                                           ; $48D8: $1F
    nop                                           ; $48D9: $00
    rlca                                          ; $48DA: $07
    nop                                           ; $48DB: $00
    inc bc                                        ; $48DC: $03
    nop                                           ; $48DD: $00
    inc bc                                        ; $48DE: $03
    nop                                           ; $48DF: $00
    db $FC                                        ; $48E0: $FC
    inc bc                                        ; $48E1: $03
    rst RST_38                                    ; $48E2: $FF
    nop                                           ; $48E3: $00
    push af                                       ; $48E4: $F5
    ld a, [bc]                                    ; $48E5: $0A
    rst RST_18                                    ; $48E6: $DF
    jr nz, @+$01                                  ; $48E7: $20 $FF

    nop                                           ; $48E9: $00
    rst RST_38                                    ; $48EA: $FF
    nop                                           ; $48EB: $00
    ld a, a                                       ; $48EC: $7F
    nop                                           ; $48ED: $00
    nop                                           ; $48EE: $00
    nop                                           ; $48EF: $00
    ret nz                                        ; $48F0: $C0

    nop                                           ; $48F1: $00
    ld hl, sp+$00                                 ; $48F2: $F8 $00
    cp $00                                        ; $48F4: $FE $00
    rst RST_38                                    ; $48F6: $FF
    nop                                           ; $48F7: $00
    rst RST_38                                    ; $48F8: $FF
    nop                                           ; $48F9: $00
    rst RST_38                                    ; $48FA: $FF
    nop                                           ; $48FB: $00
    rst RST_38                                    ; $48FC: $FF
    nop                                           ; $48FD: $00
    rst RST_38                                    ; $48FE: $FF
    nop                                           ; $48FF: $00
    add b                                         ; $4900: $80
    nop                                           ; $4901: $00
    add b                                         ; $4902: $80
    nop                                           ; $4903: $00
    ret nz                                        ; $4904: $C0

    nop                                           ; $4905: $00
    ret nz                                        ; $4906: $C0

    nop                                           ; $4907: $00
    ret nz                                        ; $4908: $C0

    nop                                           ; $4909: $00
    add b                                         ; $490A: $80
    nop                                           ; $490B: $00
    nop                                           ; $490C: $00
    nop                                           ; $490D: $00
    nop                                           ; $490E: $00
    nop                                           ; $490F: $00
    nop                                           ; $4910: $00
    nop                                           ; $4911: $00
    nop                                           ; $4912: $00
    nop                                           ; $4913: $00
    nop                                           ; $4914: $00
    nop                                           ; $4915: $00
    add b                                         ; $4916: $80
    nop                                           ; $4917: $00
    ldh [rP1], a                                  ; $4918: $E0 $00
    ldh a, [rP1]                                  ; $491A: $F0 $00
    ldh a, [rP1]                                  ; $491C: $F0 $00
    ldh a, [rP1]                                  ; $491E: $F0 $00
    inc bc                                        ; $4920: $03
    nop                                           ; $4921: $00
    inc bc                                        ; $4922: $03
    nop                                           ; $4923: $00
    rlca                                          ; $4924: $07
    nop                                           ; $4925: $00
    rrca                                          ; $4926: $0F
    nop                                           ; $4927: $00
    rrca                                          ; $4928: $0F
    nop                                           ; $4929: $00
    nop                                           ; $492A: $00
    nop                                           ; $492B: $00
    nop                                           ; $492C: $00
    nop                                           ; $492D: $00
    nop                                           ; $492E: $00
    nop                                           ; $492F: $00
    nop                                           ; $4930: $00
    nop                                           ; $4931: $00
    nop                                           ; $4932: $00
    nop                                           ; $4933: $00
    nop                                           ; $4934: $00
    nop                                           ; $4935: $00
    nop                                           ; $4936: $00
    nop                                           ; $4937: $00
    nop                                           ; $4938: $00
    nop                                           ; $4939: $00
    nop                                           ; $493A: $00
    nop                                           ; $493B: $00
    nop                                           ; $493C: $00
    nop                                           ; $493D: $00
    nop                                           ; $493E: $00
    nop                                           ; $493F: $00
    rst RST_38                                    ; $4940: $FF
    nop                                           ; $4941: $00
    ld hl, sp+$00                                 ; $4942: $F8 $00
    ret nz                                        ; $4944: $C0

    nop                                           ; $4945: $00
    nop                                           ; $4946: $00
    nop                                           ; $4947: $00
    nop                                           ; $4948: $00
    nop                                           ; $4949: $00
    nop                                           ; $494A: $00
    nop                                           ; $494B: $00
    nop                                           ; $494C: $00
    nop                                           ; $494D: $00
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
    rst RST_38                                    ; $4960: $FF
    nop                                           ; $4961: $00
    ld a, a                                       ; $4962: $7F
    nop                                           ; $4963: $00
    rra                                           ; $4964: $1F
    nop                                           ; $4965: $00
    rlca                                          ; $4966: $07
    nop                                           ; $4967: $00
    ld bc, $0000                                  ; $4968: $01 $00 $00
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
    nop                                           ; $4976: $00
    nop                                           ; $4977: $00
    nop                                           ; $4978: $00
    nop                                           ; $4979: $00
    nop                                           ; $497A: $00
    nop                                           ; $497B: $00
    nop                                           ; $497C: $00
    nop                                           ; $497D: $00
    nop                                           ; $497E: $00
    nop                                           ; $497F: $00
    ld hl, sp+$00                                 ; $4980: $F8 $00
    db $FC                                        ; $4982: $FC
    nop                                           ; $4983: $00
    cp $00                                        ; $4984: $FE $00
    rst RST_38                                    ; $4986: $FF
    nop                                           ; $4987: $00
    cp a                                          ; $4988: $BF
    nop                                           ; $4989: $00
    ccf                                           ; $498A: $3F
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
    ld bc, $0000                                  ; $49A0: $01 $00 $00
    nop                                           ; $49A3: $00
    nop                                           ; $49A4: $00
    nop                                           ; $49A5: $00
    nop                                           ; $49A6: $00
    nop                                           ; $49A7: $00
    nop                                           ; $49A8: $00
    nop                                           ; $49A9: $00
    nop                                           ; $49AA: $00
    nop                                           ; $49AB: $00
    nop                                           ; $49AC: $00
    nop                                           ; $49AD: $00
    nop                                           ; $49AE: $00
    nop                                           ; $49AF: $00
    nop                                           ; $49B0: $00
    nop                                           ; $49B1: $00
    nop                                           ; $49B2: $00
    nop                                           ; $49B3: $00
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
    inc e                                         ; $49C0: $1C
    nop                                           ; $49C1: $00
    cpl                                           ; $49C2: $2F
    inc d                                         ; $49C3: $14
    cpl                                           ; $49C4: $2F
    ld d, $6F                                     ; $49C5: $16 $6F
    rla                                           ; $49C7: $17
    rst RST_30                                    ; $49C8: $F7
    ld l, e                                       ; $49C9: $6B
    rst RST_30                                    ; $49CA: $F7
    ld [$F0FF], a                                 ; $49CB: $EA $FF $F0
    rst RST_38                                    ; $49CE: $FF
    adc $FF                                       ; $49CF: $CE $FF
    or c                                          ; $49D1: $B1
    pop af                                        ; $49D2: $F1
    ld l, [hl]                                    ; $49D3: $6E
    cp $41                                        ; $49D4: $FE $41
    pop hl                                        ; $49D6: $E1
    sbc $C1                                       ; $49D7: $DE $C1
    cp [hl]                                       ; $49D9: $BE
    pop bc                                        ; $49DA: $C1
    cp [hl]                                       ; $49DB: $BE
    db $E3                                        ; $49DC: $E3
    inc e                                         ; $49DD: $1C
    ld a, a                                       ; $49DE: $7F
    and d                                         ; $49DF: $A2
    ccf                                           ; $49E0: $3F
    call c, $C83F                                 ; $49E1: $DC $3F $C8
    ld e, a                                       ; $49E4: $5F
    and l                                         ; $49E5: $A5
    ld e, h                                       ; $49E6: $5C
    and e                                         ; $49E7: $A3
    sbc a                                         ; $49E8: $9F
    ld h, b                                       ; $49E9: $60
    cp b                                          ; $49EA: $B8
    ld d, a                                       ; $49EB: $57
    ld a, b                                       ; $49EC: $78
    or a                                          ; $49ED: $B7
    ldh a, [rIF]                                  ; $49EE: $F0 $0F
    db $10                                        ; $49F0: $10
    rrca                                          ; $49F1: $0F
    db $10                                        ; $49F2: $10
    rrca                                          ; $49F3: $0F
    inc c                                         ; $49F4: $0C
    inc bc                                        ; $49F5: $03
    dec bc                                        ; $49F6: $0B
    inc b                                         ; $49F7: $04
    dec b                                         ; $49F8: $05
    ld [bc], a                                    ; $49F9: $02
    dec b                                         ; $49FA: $05
    ld [bc], a                                    ; $49FB: $02
    dec b                                         ; $49FC: $05
    ld [bc], a                                    ; $49FD: $02
    dec c                                         ; $49FE: $0D
    ld [bc], a                                    ; $49FF: $02
    add a                                         ; $4A00: $87
    ld a, b                                       ; $4A01: $78
    call nz, Call_000_3838                        ; $4A02: $C4 $38 $38
    ret nz                                        ; $4A05: $C0

    ld e, $E8                                     ; $4A06: $1E $E8
    rra                                           ; $4A08: $1F
    xor $1F                                       ; $4A09: $EE $1F
    rst RST_28                                    ; $4A0B: $EF
    ccf                                           ; $4A0C: $3F
    reti                                          ; $4A0D: $D9


    ccf                                           ; $4A0E: $3F
    ret c                                         ; $4A0F: $D8

    rst RST_38                                    ; $4A10: $FF
    ld e, $FE                                     ; $4A11: $1E $FE
    ldh [$FFF8], a                                ; $4A13: $E0 $F8
    ldh a, [$FFF8]                                ; $4A15: $F0 $F8
    ldh a, [$FFF8]                                ; $4A17: $F0 $F8
    ldh a, [$FFF8]                                ; $4A19: $F0 $F8
    ret nz                                        ; $4A1B: $C0

    ret nz                                        ; $4A1C: $C0

    nop                                           ; $4A1D: $00
    nop                                           ; $4A1E: $00
    nop                                           ; $4A1F: $00
    rst RST_38                                    ; $4A20: $FF
    inc a                                         ; $4A21: $3C
    cp h                                          ; $4A22: $BC
    ld d, b                                       ; $4A23: $50
    ldh a, [rP1]                                  ; $4A24: $F0 $00
    nop                                           ; $4A26: $00
    nop                                           ; $4A27: $00
    nop                                           ; $4A28: $00
    nop                                           ; $4A29: $00
    add b                                         ; $4A2A: $80
    nop                                           ; $4A2B: $00
    add b                                         ; $4A2C: $80
    nop                                           ; $4A2D: $00
    nop                                           ; $4A2E: $00
    nop                                           ; $4A2F: $00
    nop                                           ; $4A30: $00
    nop                                           ; $4A31: $00
    nop                                           ; $4A32: $00
    nop                                           ; $4A33: $00
    nop                                           ; $4A34: $00
    nop                                           ; $4A35: $00
    nop                                           ; $4A36: $00
    nop                                           ; $4A37: $00
    nop                                           ; $4A38: $00
    nop                                           ; $4A39: $00
    nop                                           ; $4A3A: $00
    nop                                           ; $4A3B: $00
    nop                                           ; $4A3C: $00
    nop                                           ; $4A3D: $00
    nop                                           ; $4A3E: $00
    nop                                           ; $4A3F: $00
    rla                                           ; $4A40: $17
    dec bc                                        ; $4A41: $0B
    dec bc                                        ; $4A42: $0B
    dec b                                         ; $4A43: $05
    dec bc                                        ; $4A44: $0B
    dec b                                         ; $4A45: $05
    dec b                                         ; $4A46: $05
    ld [bc], a                                    ; $4A47: $02
    dec b                                         ; $4A48: $05
    ld [bc], a                                    ; $4A49: $02
    inc bc                                        ; $4A4A: $03
    nop                                           ; $4A4B: $00
    inc bc                                        ; $4A4C: $03
    nop                                           ; $4A4D: $00
    inc b                                         ; $4A4E: $04
    inc bc                                        ; $4A4F: $03
    inc b                                         ; $4A50: $04
    inc bc                                        ; $4A51: $03
    ld [$0807], sp                                ; $4A52: $08 $07 $08
    rlca                                          ; $4A55: $07
    db $10                                        ; $4A56: $10
    rrca                                          ; $4A57: $0F
    db $10                                        ; $4A58: $10
    rrca                                          ; $4A59: $0F
    db $10                                        ; $4A5A: $10
    rrca                                          ; $4A5B: $0F
    add hl, de                                    ; $4A5C: $19
    ld b, $07                                     ; $4A5D: $06 $07
    nop                                           ; $4A5F: $00
    nop                                           ; $4A60: $00
    nop                                           ; $4A61: $00
    nop                                           ; $4A62: $00
    nop                                           ; $4A63: $00
    nop                                           ; $4A64: $00
    nop                                           ; $4A65: $00
    nop                                           ; $4A66: $00
    nop                                           ; $4A67: $00
    nop                                           ; $4A68: $00
    nop                                           ; $4A69: $00
    nop                                           ; $4A6A: $00
    nop                                           ; $4A6B: $00
    nop                                           ; $4A6C: $00
    nop                                           ; $4A6D: $00
    nop                                           ; $4A6E: $00
    nop                                           ; $4A6F: $00
    nop                                           ; $4A70: $00
    nop                                           ; $4A71: $00
    nop                                           ; $4A72: $00
    nop                                           ; $4A73: $00
    nop                                           ; $4A74: $00
    nop                                           ; $4A75: $00
    nop                                           ; $4A76: $00
    nop                                           ; $4A77: $00
    ld bc, $0300                                  ; $4A78: $01 $00 $03
    ld bc, $031F                                  ; $4A7B: $01 $1F $03
    rla                                           ; $4A7E: $17
    dec bc                                        ; $4A7F: $0B
    inc de                                        ; $4A80: $13
    inc c                                         ; $4A81: $0C
    ld hl, $3F1E                                  ; $4A82: $21 $1E $3F
    nop                                           ; $4A85: $00
    nop                                           ; $4A86: $00
    nop                                           ; $4A87: $00
    nop                                           ; $4A88: $00
    nop                                           ; $4A89: $00
    nop                                           ; $4A8A: $00
    nop                                           ; $4A8B: $00
    nop                                           ; $4A8C: $00
    nop                                           ; $4A8D: $00
    nop                                           ; $4A8E: $00
    nop                                           ; $4A8F: $00
    nop                                           ; $4A90: $00
    nop                                           ; $4A91: $00
    nop                                           ; $4A92: $00
    nop                                           ; $4A93: $00
    nop                                           ; $4A94: $00
    nop                                           ; $4A95: $00
    nop                                           ; $4A96: $00
    nop                                           ; $4A97: $00
    nop                                           ; $4A98: $00
    nop                                           ; $4A99: $00
    nop                                           ; $4A9A: $00
    nop                                           ; $4A9B: $00
    nop                                           ; $4A9C: $00
    nop                                           ; $4A9D: $00
    nop                                           ; $4A9E: $00
    nop                                           ; $4A9F: $00
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
    ldh a, [rP1]                                  ; $4AAE: $F0 $00
    rst RST_38                                    ; $4AB0: $FF
    ld [hl], b                                    ; $4AB1: $70
    ld hl, sp+$17                                 ; $4AB2: $F8 $17
    db $FC                                        ; $4AB4: $FC
    ld d, a                                       ; $4AB5: $57
    rst RST_38                                    ; $4AB6: $FF
    rst RST_30                                    ; $4AB7: $F7
    ld hl, sp+$77                                 ; $4AB8: $F8 $77
    ld hl, sp+$77                                 ; $4ABA: $F8 $77
    rst RST_38                                    ; $4ABC: $FF
    add b                                         ; $4ABD: $80
    ret nz                                        ; $4ABE: $C0

    nop                                           ; $4ABF: $00
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
    inc bc                                        ; $4ACC: $03
    nop                                           ; $4ACD: $00
    inc bc                                        ; $4ACE: $03
    ld bc, $0001                                  ; $4ACF: $01 $01 $00
    rlca                                          ; $4AD2: $07
    nop                                           ; $4AD3: $00
    rlca                                          ; $4AD4: $07
    inc bc                                        ; $4AD5: $03
    inc bc                                        ; $4AD6: $03
    nop                                           ; $4AD7: $00
    rlca                                          ; $4AD8: $07
    inc bc                                        ; $4AD9: $03
    rlca                                          ; $4ADA: $07
    nop                                           ; $4ADB: $00
    ld bc, $0100                                  ; $4ADC: $01 $00 $01
    nop                                           ; $4ADF: $00
    rrca                                          ; $4AE0: $0F
    nop                                           ; $4AE1: $00
    db $10                                        ; $4AE2: $10
    rrca                                          ; $4AE3: $0F
    add hl, de                                    ; $4AE4: $19
    rlca                                          ; $4AE5: $07
    inc e                                         ; $4AE6: $1C
    inc bc                                        ; $4AE7: $03
    cp $01                                        ; $4AE8: $FE $01
    rrca                                          ; $4AEA: $0F
    ldh a, [$FF8F]                                ; $4AEB: $F0 $8F
    or $FF                                        ; $4AED: $F6 $FF
    rst RST_30                                    ; $4AEF: $F7
    rrca                                          ; $4AF0: $0F
    rst RST_30                                    ; $4AF1: $F7
    rrca                                          ; $4AF2: $0F
    ldh a, [$FFF6]                                ; $4AF3: $F0 $F6
    inc bc                                        ; $4AF5: $03
    inc c                                         ; $4AF6: $0C
    rlca                                          ; $4AF7: $07
    inc c                                         ; $4AF8: $0C
    rlca                                          ; $4AF9: $07
    jr jr_021_4B0B                                ; $4AFA: $18 $0F

    jr jr_021_4B0D                                ; $4AFC: $18 $0F

    jr nc, jr_021_4B1F                            ; $4AFE: $30 $1F

    rlca                                          ; $4B00: $07
    nop                                           ; $4B01: $00
    rlca                                          ; $4B02: $07
    ld [bc], a                                    ; $4B03: $02
    jp $A701                                      ; $4B04: $C3 $01 $A7


    pop bc                                        ; $4B07: $C1

jr_021_4B08:
    db $DD                                        ; $4B08: $DD
    ldh [c], a                                    ; $4B09: $E2
    ld a, [hl]                                    ; $4B0A: $7E

jr_021_4B0B:
    db $ED                                        ; $4B0B: $ED
    sbc a                                         ; $4B0C: $9F

jr_021_4B0D:
    and $CF                                       ; $4B0D: $E6 $CF
    or $EF                                        ; $4B0F: $F6 $EF
    ld [hl], b                                    ; $4B11: $70
    adc h                                         ; $4B12: $8C
    ld [hl], e                                    ; $4B13: $73
    cp $0B                                        ; $4B14: $FE $0B
    ccf                                           ; $4B16: $3F
    db $DD                                        ; $4B17: $DD
    ccf                                           ; $4B18: $3F
    sbc $1F                                       ; $4B19: $DE $1F
    rst RST_28                                    ; $4B1B: $EF
    rrca                                          ; $4B1C: $0F
    rst RST_30                                    ; $4B1D: $F7
    rra                                           ; $4B1E: $1F

jr_021_4B1F:
    rst RST_30                                    ; $4B1F: $F7
    ldh a, [rP1]                                  ; $4B20: $F0 $00
    ret z                                         ; $4B22: $C8

    or b                                          ; $4B23: $B0
    db $FC                                        ; $4B24: $FC
    adc b                                         ; $4B25: $88
    db $FC                                        ; $4B26: $FC
    ldh a, [$FFF2]                                ; $4B27: $F0 $F2
    adc h                                         ; $4B29: $8C
    di                                            ; $4B2A: $F3
    ld l, h                                       ; $4B2B: $6C
    inc hl                                        ; $4B2C: $23
    call c, $0BF7                                 ; $4B2D: $DC $F7 $0B
    rst RST_08                                    ; $4B30: $CF
    or [hl]                                       ; $4B31: $B6
    rst RST_38                                    ; $4B32: $FF
    nop                                           ; $4B33: $00
    ld a, c                                       ; $4B34: $79
    or [hl]                                       ; $4B35: $B6
    ld a, c                                       ; $4B36: $79
    sub $FF                                       ; $4B37: $D6 $FF
    adc $CE                                       ; $4B39: $CE $CE
    ld sp, $79B6                                  ; $4B3B: $31 $B6 $79
    cp c                                          ; $4B3E: $B9
    ld [hl], b                                    ; $4B3F: $70
    ldh [rP1], a                                  ; $4B40: $E0 $00
    sub b                                         ; $4B42: $90
    ld h, b                                       ; $4B43: $60
    sub b                                         ; $4B44: $90
    ld h, b                                       ; $4B45: $60
    jr nz, jr_021_4B08                            ; $4B46: $20 $C0

    ld [hl], a                                    ; $4B48: $77
    add b                                         ; $4B49: $80
    ld c, a                                       ; $4B4A: $4F
    or e                                          ; $4B4B: $B3
    cp a                                          ; $4B4C: $BF
    ld b, b                                       ; $4B4D: $40
    ld a, a                                       ; $4B4E: $7F
    sub l                                         ; $4B4F: $95
    ld a, a                                       ; $4B50: $7F
    xor d                                         ; $4B51: $AA
    ld a, a                                       ; $4B52: $7F
    xor d                                         ; $4B53: $AA
    rst RST_38                                    ; $4B54: $FF
    rra                                           ; $4B55: $1F
    ld a, a                                       ; $4B56: $7F
    nop                                           ; $4B57: $00
    nop                                           ; $4B58: $00
    nop                                           ; $4B59: $00
    nop                                           ; $4B5A: $00
    nop                                           ; $4B5B: $00
    ret nz                                        ; $4B5C: $C0

    nop                                           ; $4B5D: $00
    ld [hl], b                                    ; $4B5E: $70
    add b                                         ; $4B5F: $80
    jr nc, jr_021_4B81                            ; $4B60: $30 $1F

    ld [hl], b                                    ; $4B62: $70
    rra                                           ; $4B63: $1F
    ld e, a                                       ; $4B64: $5F
    cpl                                           ; $4B65: $2F
    ld c, a                                       ; $4B66: $4F
    jr nc, jr_021_4BAA                            ; $4B67: $30 $41

    ld a, $47                                     ; $4B69: $3E $47
    jr c, jr_021_4BE6                             ; $4B6B: $38 $79

    nop                                           ; $4B6D: $00
    ld bc, $0300                                  ; $4B6E: $01 $00 $03
    ld bc, $0103                                  ; $4B71: $01 $03 $01
    inc bc                                        ; $4B74: $03
    ld bc, $0207                                  ; $4B75: $01 $07 $02
    rlca                                          ; $4B78: $07
    ld [bc], a                                    ; $4B79: $02
    rlca                                          ; $4B7A: $07
    ld [bc], a                                    ; $4B7B: $02
    ld c, $05                                     ; $4B7C: $0E $05
    rrca                                          ; $4B7E: $0F
    inc b                                         ; $4B7F: $04
    scf                                           ; $4B80: $37

jr_021_4B81:
    ldh [$FF67], a                                ; $4B81: $E0 $67
    ret nz                                        ; $4B83: $C0

    ret z                                         ; $4B84: $C8

    add a                                         ; $4B85: $87
    adc b                                         ; $4B86: $88
    rlca                                          ; $4B87: $07
    db $10                                        ; $4B88: $10
    rrca                                          ; $4B89: $0F
    inc a                                         ; $4B8A: $3C
    inc bc                                        ; $4B8B: $03
    ld [$FF15], a                                 ; $4B8C: $EA $15 $FF
    add b                                         ; $4B8F: $80
    db $EB                                        ; $4B90: $EB
    sub h                                         ; $4B91: $94
    sbc a                                         ; $4B92: $9F
    ld h, d                                       ; $4B93: $62
    add a                                         ; $4B94: $87
    ld a, d                                       ; $4B95: $7A
    adc [hl]                                      ; $4B96: $8E
    ld [hl], h                                    ; $4B97: $74
    ld c, $F4                                     ; $4B98: $0E $F4
    ld c, $F4                                     ; $4B9A: $0E $F4
    inc e                                         ; $4B9C: $1C
    add sp, $1C                                   ; $4B9D: $E8 $1C
    add sp, -$08                                  ; $4B9F: $E8 $F8
    or b                                          ; $4BA1: $B0
    db $FC                                        ; $4BA2: $FC
    nop                                           ; $4BA3: $00
    ei                                            ; $4BA4: $FB
    ld [hl], h                                    ; $4BA5: $74
    ld a, b                                       ; $4BA6: $78
    or a                                          ; $4BA7: $B7
    ld a, b                                       ; $4BA8: $78
    or a                                          ; $4BA9: $B7

jr_021_4BAA:
    ld a, b                                       ; $4BAA: $78
    add a                                         ; $4BAB: $87
    add a                                         ; $4BAC: $87
    nop                                           ; $4BAD: $00
    add a                                         ; $4BAE: $87
    inc bc                                        ; $4BAF: $03
    rlca                                          ; $4BB0: $07
    inc bc                                        ; $4BB1: $03
    rlca                                          ; $4BB2: $07
    inc bc                                        ; $4BB3: $03
    rlca                                          ; $4BB4: $07
    inc bc                                        ; $4BB5: $03
    rlca                                          ; $4BB6: $07
    inc bc                                        ; $4BB7: $03
    rlca                                          ; $4BB8: $07
    inc bc                                        ; $4BB9: $03
    rrca                                          ; $4BBA: $0F
    rlca                                          ; $4BBB: $07
    rrca                                          ; $4BBC: $0F
    rlca                                          ; $4BBD: $07
    rrca                                          ; $4BBE: $0F
    rlca                                          ; $4BBF: $07
    add sp, $10                                   ; $4BC0: $E8 $10
    add sp, -$70                                  ; $4BC2: $E8 $90
    ret c                                         ; $4BC4: $D8

    and b                                         ; $4BC5: $A0
    add sp, -$30                                  ; $4BC6: $E8 $D0
    ld hl, sp-$40                                 ; $4BC8: $F8 $C0
    ret nc                                        ; $4BCA: $D0

    and b                                         ; $4BCB: $A0
    ret nc                                        ; $4BCC: $D0

    and b                                         ; $4BCD: $A0
    ret nc                                        ; $4BCE: $D0

    and b                                         ; $4BCF: $A0
    ret nc                                        ; $4BD0: $D0

    and b                                         ; $4BD1: $A0
    ret nc                                        ; $4BD2: $D0

    and b                                         ; $4BD3: $A0
    ldh a, [$FF80]                                ; $4BD4: $F0 $80
    ret z                                         ; $4BD6: $C8

    or b                                          ; $4BD7: $B0
    call nz, $6238                                ; $4BD8: $C4 $38 $62
    inc e                                         ; $4BDB: $1C
    ld e, $00                                     ; $4BDC: $1E $00
    nop                                           ; $4BDE: $00
    nop                                           ; $4BDF: $00
    nop                                           ; $4BE0: $00
    nop                                           ; $4BE1: $00
    nop                                           ; $4BE2: $00
    nop                                           ; $4BE3: $00
    nop                                           ; $4BE4: $00
    nop                                           ; $4BE5: $00

jr_021_4BE6:
    nop                                           ; $4BE6: $00
    nop                                           ; $4BE7: $00

jr_021_4BE8:
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
    add b                                         ; $4BF4: $80
    nop                                           ; $4BF5: $00
    add b                                         ; $4BF6: $80
    nop                                           ; $4BF7: $00
    ret nz                                        ; $4BF8: $C0

    nop                                           ; $4BF9: $00
    ret nz                                        ; $4BFA: $C0

    add b                                         ; $4BFB: $80
    ret nz                                        ; $4BFC: $C0

    add b                                         ; $4BFD: $80
    add b                                         ; $4BFE: $80
    nop                                           ; $4BFF: $00
    ld b, $01                                     ; $4C00: $06 $01
    inc b                                         ; $4C02: $04
    inc bc                                        ; $4C03: $03
    ld [$0F07], sp                                ; $4C04: $08 $07 $0F
    nop                                           ; $4C07: $00
    nop                                           ; $4C08: $00
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
    nop                                           ; $4C1D: $00
    nop                                           ; $4C1E: $00
    nop                                           ; $4C1F: $00
    cp b                                          ; $4C20: $B8
    ld d, b                                       ; $4C21: $50
    ld a, b                                       ; $4C22: $78
    sub b                                         ; $4C23: $90
    jr c, jr_021_4BE6                             ; $4C24: $38 $C0

    jr nz, jr_021_4BE8                            ; $4C26: $20 $C0

    ldh [rP1], a                                  ; $4C28: $E0 $00
    nop                                           ; $4C2A: $00
    nop                                           ; $4C2B: $00
    nop                                           ; $4C2C: $00
    nop                                           ; $4C2D: $00
    nop                                           ; $4C2E: $00
    nop                                           ; $4C2F: $00
    nop                                           ; $4C30: $00
    nop                                           ; $4C31: $00
    nop                                           ; $4C32: $00
    nop                                           ; $4C33: $00
    nop                                           ; $4C34: $00
    nop                                           ; $4C35: $00
    nop                                           ; $4C36: $00

jr_021_4C37:
    nop                                           ; $4C37: $00
    nop                                           ; $4C38: $00
    nop                                           ; $4C39: $00
    nop                                           ; $4C3A: $00
    nop                                           ; $4C3B: $00
    nop                                           ; $4C3C: $00
    nop                                           ; $4C3D: $00
    nop                                           ; $4C3E: $00
    nop                                           ; $4C3F: $00
    rrca                                          ; $4C40: $0F
    ld bc, $0001                                  ; $4C41: $01 $01 $00
    nop                                           ; $4C44: $00
    nop                                           ; $4C45: $00
    nop                                           ; $4C46: $00
    nop                                           ; $4C47: $00
    nop                                           ; $4C48: $00
    nop                                           ; $4C49: $00
    nop                                           ; $4C4A: $00
    nop                                           ; $4C4B: $00
    nop                                           ; $4C4C: $00
    nop                                           ; $4C4D: $00
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
    inc bc                                        ; $4C70: $03
    nop                                           ; $4C71: $00
    dec b                                         ; $4C72: $05
    ld [bc], a                                    ; $4C73: $02
    dec bc                                        ; $4C74: $0B

jr_021_4C75:
    ld b, $0B                                     ; $4C75: $06 $0B
    ld b, $17                                     ; $4C77: $06 $17
    ld c, $17                                     ; $4C79: $0E $17
    ld c, $2F                                     ; $4C7B: $0E $2F
    ld e, $2F                                     ; $4C7D: $1E $2F
    ld e, $17                                     ; $4C7F: $1E $17
    rrca                                          ; $4C81: $0F
    cpl                                           ; $4C82: $2F
    rra                                           ; $4C83: $1F
    cpl                                           ; $4C84: $2F
    rra                                           ; $4C85: $1F
    cpl                                           ; $4C86: $2F
    rra                                           ; $4C87: $1F
    cpl                                           ; $4C88: $2F
    rra                                           ; $4C89: $1F
    cpl                                           ; $4C8A: $2F
    inc e                                         ; $4C8B: $1C
    inc e                                         ; $4C8C: $1C
    ld [$000D], sp                                ; $4C8D: $08 $0D $00
    inc bc                                        ; $4C90: $03
    ld bc, $0003                                  ; $4C91: $01 $03 $00
    inc bc                                        ; $4C94: $03
    ld bc, $0003                                  ; $4C95: $01 $03 $00
    inc bc                                        ; $4C98: $03
    ld bc, $0003                                  ; $4C99: $01 $03 $00
    inc bc                                        ; $4C9C: $03
    ld bc, $0001                                  ; $4C9D: $01 $01 $00
    or b                                          ; $4CA0: $B0
    nop                                           ; $4CA1: $00
    ret nc                                        ; $4CA2: $D0

    jr nz, jr_021_4C75                            ; $4CA3: $20 $D0

    jr nz, jr_021_4C37                            ; $4CA5: $20 $90

    ld h, b                                       ; $4CA7: $60
    sub b                                         ; $4CA8: $90
    ld h, b                                       ; $4CA9: $60
    and b                                         ; $4CAA: $A0
    ld b, b                                       ; $4CAB: $40
    and b                                         ; $4CAC: $A0
    ld b, b                                       ; $4CAD: $40
    ldh a, [rP1]                                  ; $4CAE: $F0 $00
    rst RST_38                                    ; $4CB0: $FF
    ld [hl], b                                    ; $4CB1: $70
    ld hl, sp+$17                                 ; $4CB2: $F8 $17
    db $FC                                        ; $4CB4: $FC
    sub a                                         ; $4CB5: $97
    rst RST_38                                    ; $4CB6: $FF
    rla                                           ; $4CB7: $17
    ld hl, sp-$69                                 ; $4CB8: $F8 $97
    ld hl, sp+$17                                 ; $4CBA: $F8 $17
    cp a                                          ; $4CBC: $BF
    ld b, b                                       ; $4CBD: $40
    ldh [rP1], a                                  ; $4CBE: $E0 $00
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
    inc bc                                        ; $4CCC: $03
    nop                                           ; $4CCD: $00
    rra                                           ; $4CCE: $1F
    inc bc                                        ; $4CCF: $03
    ld a, h                                       ; $4CD0: $7C
    rra                                           ; $4CD1: $1F
    rst RST_38                                    ; $4CD2: $FF
    nop                                           ; $4CD3: $00
    inc bc                                        ; $4CD4: $03
    nop                                           ; $4CD5: $00
    rrca                                          ; $4CD6: $0F
    inc bc                                        ; $4CD7: $03
    inc a                                         ; $4CD8: $3C
    rrca                                          ; $4CD9: $0F
    ld a, a                                       ; $4CDA: $7F
    nop                                           ; $4CDB: $00
    nop                                           ; $4CDC: $00
    nop                                           ; $4CDD: $00
    nop                                           ; $4CDE: $00
    nop                                           ; $4CDF: $00
    nop                                           ; $4CE0: $00
    nop                                           ; $4CE1: $00
    nop                                           ; $4CE2: $00
    nop                                           ; $4CE3: $00
    nop                                           ; $4CE4: $00
    nop                                           ; $4CE5: $00
    nop                                           ; $4CE6: $00
    nop                                           ; $4CE7: $00
    nop                                           ; $4CE8: $00
    nop                                           ; $4CE9: $00
    ld a, a                                       ; $4CEA: $7F
    nop                                           ; $4CEB: $00
    rst RST_38                                    ; $4CEC: $FF
    ld a, a                                       ; $4CED: $7F
    add b                                         ; $4CEE: $80
    rst RST_38                                    ; $4CEF: $FF
    nop                                           ; $4CF0: $00
    rst RST_38                                    ; $4CF1: $FF
    ldh a, [$FF3F]                                ; $4CF2: $F0 $3F
    ret nz                                        ; $4CF4: $C0

    rst RST_38                                    ; $4CF5: $FF
    ld bc, $00FF                                  ; $4CF6: $01 $FF $00
    rst RST_38                                    ; $4CF9: $FF
    db $FC                                        ; $4CFA: $FC
    ccf                                           ; $4CFB: $3F
    ccf                                           ; $4CFC: $3F
    inc bc                                        ; $4CFD: $03
    inc bc                                        ; $4CFE: $03
    nop                                           ; $4CFF: $00
    nop                                           ; $4D00: $00
    nop                                           ; $4D01: $00
    nop                                           ; $4D02: $00
    nop                                           ; $4D03: $00
    nop                                           ; $4D04: $00
    nop                                           ; $4D05: $00
    nop                                           ; $4D06: $00
    nop                                           ; $4D07: $00
    nop                                           ; $4D08: $00
    nop                                           ; $4D09: $00
    nop                                           ; $4D0A: $00
    nop                                           ; $4D0B: $00
    ldh a, [rP1]                                  ; $4D0C: $F0 $00
    cp $F0                                        ; $4D0E: $FE $F0
    rrca                                          ; $4D10: $0F
    cp $3F                                        ; $4D11: $FE $3F
    rst RST_38                                    ; $4D13: $FF
    rlca                                          ; $4D14: $07
    rst RST_38                                    ; $4D15: $FF
    ld hl, sp-$01                                 ; $4D16: $F8 $FF
    ld a, a                                       ; $4D18: $7F
    rst RST_38                                    ; $4D19: $FF
    rra                                           ; $4D1A: $1F
    rst RST_38                                    ; $4D1B: $FF
    add a                                         ; $4D1C: $87
    rst RST_38                                    ; $4D1D: $FF
    di                                            ; $4D1E: $F3
    ld a, a                                       ; $4D1F: $7F
    add b                                         ; $4D20: $80
    nop                                           ; $4D21: $00
    ldh [$FF80], a                                ; $4D22: $E0 $80
    ldh a, [$FFE0]                                ; $4D24: $F0 $E0
    ld hl, sp-$10                                 ; $4D26: $F8 $F0
    inc a                                         ; $4D28: $3C
    ld hl, sp-$24                                 ; $4D29: $F8 $DC
    ld hl, sp-$16                                 ; $4D2B: $F8 $EA
    db $FC                                        ; $4D2D: $FC
    ldh a, [c]                                    ; $4D2E: $F2
    db $FC                                        ; $4D2F: $FC
    jp z, $E2FC                                   ; $4D30: $CA $FC $E2

    db $FC                                        ; $4D33: $FC
    ldh a, [c]                                    ; $4D34: $F2
    ld a, h                                       ; $4D35: $7C
    ld a, d                                       ; $4D36: $7A
    inc e                                         ; $4D37: $1C
    ld e, d                                       ; $4D38: $5A
    inc h                                         ; $4D39: $24
    and $00                                       ; $4D3A: $E6 $00
    ldh [$FFC0], a                                ; $4D3C: $E0 $C0
    ldh [$FFC0], a                                ; $4D3E: $E0 $C0
    rst RST_38                                    ; $4D40: $FF
    rrca                                          ; $4D41: $0F
    ccf                                           ; $4D42: $3F
    pop bc                                        ; $4D43: $C1
    rrca                                          ; $4D44: $0F
    ldh a, [rSC]                                  ; $4D45: $F0 $02
    db $FC                                        ; $4D47: $FC
    inc bc                                        ; $4D48: $03
    db $FC                                        ; $4D49: $FC
    rlca                                          ; $4D4A: $07
    ei                                            ; $4D4B: $FB
    rlca                                          ; $4D4C: $07
    ei                                            ; $4D4D: $FB
    rrca                                          ; $4D4E: $0F
    rst RST_30                                    ; $4D4F: $F7
    rst RST_08                                    ; $4D50: $CF
    scf                                           ; $4D51: $37
    ccf                                           ; $4D52: $3F
    rrca                                          ; $4D53: $0F
    rrca                                          ; $4D54: $0F
    rlca                                          ; $4D55: $07
    rrca                                          ; $4D56: $0F
    ld bc, $040B                                  ; $4D57: $01 $0B $04
    inc c                                         ; $4D5A: $0C
    nop                                           ; $4D5B: $00
    nop                                           ; $4D5C: $00
    nop                                           ; $4D5D: $00
    nop                                           ; $4D5E: $00
    nop                                           ; $4D5F: $00
    ldh [$FFC0], a                                ; $4D60: $E0 $C0
    ret nz                                        ; $4D62: $C0

    add b                                         ; $4D63: $80
    ret nz                                        ; $4D64: $C0

    add b                                         ; $4D65: $80
    add b                                         ; $4D66: $80
    nop                                           ; $4D67: $00
    nop                                           ; $4D68: $00
    nop                                           ; $4D69: $00
    nop                                           ; $4D6A: $00
    nop                                           ; $4D6B: $00
    nop                                           ; $4D6C: $00
    nop                                           ; $4D6D: $00
    nop                                           ; $4D6E: $00
    nop                                           ; $4D6F: $00
    nop                                           ; $4D70: $00
    nop                                           ; $4D71: $00
    nop                                           ; $4D72: $00
    nop                                           ; $4D73: $00
    nop                                           ; $4D74: $00
    nop                                           ; $4D75: $00
    nop                                           ; $4D76: $00
    nop                                           ; $4D77: $00
    nop                                           ; $4D78: $00
    nop                                           ; $4D79: $00
    nop                                           ; $4D7A: $00
    nop                                           ; $4D7B: $00
    nop                                           ; $4D7C: $00
    nop                                           ; $4D7D: $00
    nop                                           ; $4D7E: $00
    nop                                           ; $4D7F: $00
    ld bc, $0200                                  ; $4D80: $01 $00 $02
    ld bc, $0304                                  ; $4D83: $01 $04 $03
    inc b                                         ; $4D86: $04
    inc bc                                        ; $4D87: $03
    inc b                                         ; $4D88: $04
    inc bc                                        ; $4D89: $03
    dec b                                         ; $4D8A: $05
    ld [bc], a                                    ; $4D8B: $02
    rlca                                          ; $4D8C: $07
    nop                                           ; $4D8D: $00
    rlca                                          ; $4D8E: $07
    nop                                           ; $4D8F: $00
    rrca                                          ; $4D90: $0F
    inc bc                                        ; $4D91: $03
    rra                                           ; $4D92: $1F
    ld a, [bc]                                    ; $4D93: $0A
    rra                                           ; $4D94: $1F
    inc c                                         ; $4D95: $0C
    dec c                                         ; $4D96: $0D
    ld [bc], a                                    ; $4D97: $02
    inc b                                         ; $4D98: $04
    inc bc                                        ; $4D99: $03
    inc b                                         ; $4D9A: $04
    inc bc                                        ; $4D9B: $03
    inc b                                         ; $4D9C: $04
    inc bc                                        ; $4D9D: $03
    inc bc                                        ; $4D9E: $03
    nop                                           ; $4D9F: $00
    ld bc, $0300                                  ; $4DA0: $01 $00 $03
    ld bc, $027F                                  ; $4DA3: $01 $7F $02
    rst RST_20                                    ; $4DA6: $E7
    add hl, de                                    ; $4DA7: $19
    pop af                                        ; $4DA8: $F1
    ld c, $FC                                     ; $4DA9: $0E $FC
    rlca                                          ; $4DAB: $07
    ld a, e                                       ; $4DAC: $7B
    rlca                                          ; $4DAD: $07
    ld a, l                                       ; $4DAE: $7D
    inc bc                                        ; $4DAF: $03
    db $FC                                        ; $4DB0: $FC
    inc de                                        ; $4DB1: $13
    ld a, a                                       ; $4DB2: $7F
    cp e                                          ; $4DB3: $BB
    ld a, a                                       ; $4DB4: $7F
    add l                                         ; $4DB5: $85
    ld b, [hl]                                    ; $4DB6: $46
    cp c                                          ; $4DB7: $B9
    inc hl                                        ; $4DB8: $23
    call c, Call_000_1DE2                         ; $4DB9: $DC $E2 $1D
    cp $01                                        ; $4DBC: $FE $01
    cp $0D                                        ; $4DBE: $FE $0D
    rra                                           ; $4DC0: $1F
    nop                                           ; $4DC1: $00
    ld a, h                                       ; $4DC2: $7C
    inc de                                        ; $4DC3: $13
    cp $75                                        ; $4DC4: $FE $75
    rst RST_38                                    ; $4DC6: $FF
    db $E4                                        ; $4DC7: $E4

jr_021_4DC8:
    rst RST_38                                    ; $4DC8: $FF
    rst RST_28                                    ; $4DC9: $EF
    rst RST_38                                    ; $4DCA: $FF
    ld b, h                                       ; $4DCB: $44
    db $ED                                        ; $4DCC: $ED
    sub d                                         ; $4DCD: $92
    jp hl                                         ; $4DCE: $E9


    ld d, [hl]                                    ; $4DCF: $56
    ld a, d                                       ; $4DD0: $7A
    add l                                         ; $4DD1: $85
    rst RST_38                                    ; $4DD2: $FF
    cp b                                          ; $4DD3: $B8
    ccf                                           ; $4DD4: $3F
    call c, $C13F                                 ; $4DD5: $DC $3F $C1
    and e                                         ; $4DD8: $A3

jr_021_4DD9:
    db $DD                                        ; $4DD9: $DD
    ld [hl], e                                    ; $4DDA: $73
    sbc [hl]                                      ; $4DDB: $9E
    rst RST_38                                    ; $4DDC: $FF
    ld l, [hl]                                    ; $4DDD: $6E
    cp $71                                        ; $4DDE: $FE $71
    ld bc, $1E00                                  ; $4DE0: $01 $00 $1E
    ld bc, $1C23                                  ; $4DE3: $01 $23 $1C
    ld b, e                                       ; $4DE6: $43
    inc a                                         ; $4DE7: $3C
    add l                                         ; $4DE8: $85
    ld a, d                                       ; $4DE9: $7A
    add l                                         ; $4DEA: $85
    ld a, d                                       ; $4DEB: $7A
    ld c, l                                       ; $4DEC: $4D
    or [hl]                                       ; $4DED: $B6

jr_021_4DEE:
    db $ED                                        ; $4DEE: $ED
    ld d, $FA                                     ; $4DEF: $16 $FA
    call z, $2CDA                                 ; $4DF1: $CC $DA $2C
    sub h                                         ; $4DF4: $94
    ld l, b                                       ; $4DF5: $68
    inc e                                         ; $4DF6: $1C
    ldh [$FFBC], a                                ; $4DF7: $E0 $BC
    ld e, b                                       ; $4DF9: $58
    ld a, b                                       ; $4DFA: $78
    or b                                          ; $4DFB: $B0
    ld hl, sp+$00                                 ; $4DFC: $F8 $00
    ret z                                         ; $4DFE: $C8

    jr nc, jr_021_4DD9                            ; $4DFF: $30 $D8

    or b                                          ; $4E01: $B0
    ldh a, [$FFA0]                                ; $4E02: $F0 $A0
    ldh [rP1], a                                  ; $4E04: $E0 $00
    jr nz, jr_021_4DC8                            ; $4E06: $20 $C0

    ldh [$FFC0], a                                ; $4E08: $E0 $C0
    ldh [$FFC0], a                                ; $4E0A: $E0 $C0
    ldh a, [$FF80]                                ; $4E0C: $F0 $80
    ldh a, [rLCDC]                                ; $4E0E: $F0 $40
    ldh a, [$FFC0]                                ; $4E10: $F0 $C0
    ret nc                                        ; $4E12: $D0

    jr nz, @-$2E                                  ; $4E13: $20 $D0

    jr nz, jr_021_4E67                            ; $4E15: $20 $50

    and b                                         ; $4E17: $A0
    ld h, b                                       ; $4E18: $60
    add b                                         ; $4E19: $80
    ldh [rP1], a                                  ; $4E1A: $E0 $00
    ld hl, sp+$00                                 ; $4E1C: $F8 $00
    ld a, b                                       ; $4E1E: $78
    sub b                                         ; $4E1F: $90
    rst RST_38                                    ; $4E20: $FF
    ld h, l                                       ; $4E21: $65
    rst RST_38                                    ; $4E22: $FF
    jr nz, @+$01                                  ; $4E23: $20 $FF

    ld b, $FF                                     ; $4E25: $06 $FF
    ld b, $FE                                     ; $4E27: $06 $FE
    ldh a, [$FFF0]                                ; $4E29: $F0 $F0
    nop                                           ; $4E2B: $00
    jr nz, jr_021_4DEE                            ; $4E2C: $20 $C0

    ret nz                                        ; $4E2E: $C0

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
    ld a, [hl]                                    ; $4E40: $7E
    cp c                                          ; $4E41: $B9
    cp $9D                                        ; $4E42: $FE $9D
    sbc a                                         ; $4E44: $9F
    nop                                           ; $4E45: $00
    rra                                           ; $4E46: $1F
    ld [$0718], sp                                ; $4E47: $08 $18 $07
    ld [$0807], sp                                ; $4E4A: $08 $07 $08
    rlca                                          ; $4E4D: $07
    ld [$1F07], sp                                ; $4E4E: $08 $07 $1F
    ld [$091E], sp                                ; $4E51: $08 $1E $09
    dec e                                         ; $4E54: $1D
    ld a, [bc]                                    ; $4E55: $0A
    ld a, $11                                     ; $4E56: $3E $11
    ccf                                           ; $4E58: $3F
    inc d                                         ; $4E59: $14
    ld a, $15                                     ; $4E5A: $3E $15
    ccf                                           ; $4E5C: $3F
    ld a, [de]                                    ; $4E5D: $1A
    ld a, a                                       ; $4E5E: $7F
    ld a, [hl-]                                   ; $4E5F: $3A
    ld hl, sp+$10                                 ; $4E60: $F8 $10
    sbc h                                         ; $4E62: $9C
    ld l, b                                       ; $4E63: $68
    inc e                                         ; $4E64: $1C
    add sp, $1C                                   ; $4E65: $E8 $1C

jr_021_4E67:
    add sp, $0E                                   ; $4E67: $E8 $0E
    db $F4                                        ; $4E69: $F4
    ld c, $F4                                     ; $4E6A: $0E $F4
    adc [hl]                                      ; $4E6C: $8E
    ld [hl], h                                    ; $4E6D: $74
    add a                                         ; $4E6E: $87
    ld a, d                                       ; $4E6F: $7A
    rst RST_18                                    ; $4E70: $DF
    and d                                         ; $4E71: $A2
    and $98                                       ; $4E72: $E6 $98
    jp nz, Jump_021_423C                          ; $4E74: $C2 $3C $42

    inc a                                         ; $4E77: $3C
    ld [hl+], a                                   ; $4E78: $22
    inc e                                         ; $4E79: $1C
    ld [de], a                                    ; $4E7A: $12
    inc c                                         ; $4E7B: $0C
    ld c, $00                                     ; $4E7C: $0E $00
    nop                                           ; $4E7E: $00
    nop                                           ; $4E7F: $00
    ld a, a                                       ; $4E80: $7F
    ld a, [hl-]                                   ; $4E81: $3A
    ld a, a                                       ; $4E82: $7F
    dec a                                         ; $4E83: $3D
    ld a, a                                       ; $4E84: $7F
    ld bc, $0609                                  ; $4E85: $01 $09 $06
    rlca                                          ; $4E88: $07
    nop                                           ; $4E89: $00
    ld bc, $0000                                  ; $4E8A: $01 $00 $00
    nop                                           ; $4E8D: $00
    nop                                           ; $4E8E: $00
    nop                                           ; $4E8F: $00
    nop                                           ; $4E90: $00
    nop                                           ; $4E91: $00
    nop                                           ; $4E92: $00
    nop                                           ; $4E93: $00
    nop                                           ; $4E94: $00
    nop                                           ; $4E95: $00
    nop                                           ; $4E96: $00
    nop                                           ; $4E97: $00
    nop                                           ; $4E98: $00
    nop                                           ; $4E99: $00
    nop                                           ; $4E9A: $00
    nop                                           ; $4E9B: $00
    nop                                           ; $4E9C: $00
    nop                                           ; $4E9D: $00
    nop                                           ; $4E9E: $00
    nop                                           ; $4E9F: $00
    nop                                           ; $4EA0: $00
    nop                                           ; $4EA1: $00
    nop                                           ; $4EA2: $00
    nop                                           ; $4EA3: $00
    nop                                           ; $4EA4: $00
    nop                                           ; $4EA5: $00
    nop                                           ; $4EA6: $00
    nop                                           ; $4EA7: $00
    nop                                           ; $4EA8: $00
    nop                                           ; $4EA9: $00
    nop                                           ; $4EAA: $00
    nop                                           ; $4EAB: $00
    ld e, $00                                     ; $4EAC: $1E $00
    ld a, $0C                                     ; $4EAE: $3E $0C
    ld a, a                                       ; $4EB0: $7F
    inc d                                         ; $4EB1: $14
    ld a, [hl]                                    ; $4EB2: $7E
    ld hl, $197E                                  ; $4EB3: $21 $7E $19
    ld a, [hl]                                    ; $4EB6: $7E
    ld hl, $197E                                  ; $4EB7: $21 $7E $19
    ld a, [hl]                                    ; $4EBA: $7E
    ld hl, $033C                                  ; $4EBB: $21 $3C $03
    inc bc                                        ; $4EBE: $03
    nop                                           ; $4EBF: $00
    nop                                           ; $4EC0: $00
    nop                                           ; $4EC1: $00
    nop                                           ; $4EC2: $00
    nop                                           ; $4EC3: $00
    nop                                           ; $4EC4: $00
    nop                                           ; $4EC5: $00
    nop                                           ; $4EC6: $00
    nop                                           ; $4EC7: $00
    nop                                           ; $4EC8: $00
    nop                                           ; $4EC9: $00
    ccf                                           ; $4ECA: $3F
    nop                                           ; $4ECB: $00
    ld h, $19                                     ; $4ECC: $26 $19
    cpl                                           ; $4ECE: $2F
    ld d, $FF                                     ; $4ECF: $16 $FF
    rlca                                          ; $4ED1: $07
    rra                                           ; $4ED2: $1F
    ldh [$FF3C], a                                ; $4ED3: $E0 $3C
    db $DB                                        ; $4ED5: $DB
    ld a, $DB                                     ; $4ED6: $3E $DB
    ccf                                           ; $4ED8: $3F
    db $DD                                        ; $4ED9: $DD
    rra                                           ; $4EDA: $1F
    ldh [$FF0D], a                                ; $4EDB: $E0 $0D
    ldh a, [$FFF1]                                ; $4EDD: $F0 $F1
    nop                                           ; $4EDF: $00
    ld e, $00                                     ; $4EE0: $1E $00
    add hl, sp                                    ; $4EE2: $39
    ld d, $7C                                     ; $4EE3: $16 $7C
    inc de                                        ; $4EE5: $13
    cp $5D                                        ; $4EE6: $FE $5D
    ld a, [hl]                                    ; $4EE8: $7E
    ld sp, $0D7E                                  ; $4EE9: $31 $7E $0D
    push bc                                       ; $4EEC: $C5
    ld a, [hl-]                                   ; $4EED: $3A
    ld h, a                                       ; $4EEE: $67
    sbc c                                         ; $4EEF: $99
    rst RST_28                                    ; $4EF0: $EF
    inc de                                        ; $4EF1: $13
    rst RST_38                                    ; $4EF2: $FF
    nop                                           ; $4EF3: $00
    ld sp, hl                                     ; $4EF4: $F9
    ld l, [hl]                                    ; $4EF5: $6E
    di                                            ; $4EF6: $F3
    ld e, [hl]                                    ; $4EF7: $5E
    rst RST_38                                    ; $4EF8: $FF
    sbc l                                         ; $4EF9: $9D
    sbc a                                         ; $4EFA: $9F
    ld h, e                                       ; $4EFB: $63
    ld l, a                                       ; $4EFC: $6F
    rst RST_30                                    ; $4EFD: $F7
    ld l, a                                       ; $4EFE: $6F
    rst RST_30                                    ; $4EFF: $F7
    nop                                           ; $4F00: $00
    nop                                           ; $4F01: $00
    nop                                           ; $4F02: $00
    nop                                           ; $4F03: $00
    add b                                         ; $4F04: $80
    nop                                           ; $4F05: $00
    add b                                         ; $4F06: $80
    nop                                           ; $4F07: $00
    ld b, a                                       ; $4F08: $47
    add b                                         ; $4F09: $80
    ld e, b                                       ; $4F0A: $58
    add a                                         ; $4F0B: $87
    ldh [$FF1F], a                                ; $4F0C: $E0 $1F
    pop hl                                        ; $4F0E: $E1
    sbc $C3                                       ; $4F0F: $DE $C3
    cp h                                          ; $4F11: $BC
    rst RST_00                                    ; $4F12: $C7
    jr c, @-$37                                   ; $4F13: $38 $C7

    cp e                                          ; $4F15: $BB
    rst RST_08                                    ; $4F16: $CF
    or e                                          ; $4F17: $B3
    rst RST_38                                    ; $4F18: $FF
    jp $D0FB                                      ; $4F19: $C3 $FB $D0


    call z, $8CB8                                 ; $4F1C: $CC $B8 $8C
    ld a, b                                       ; $4F1F: $78
    nop                                           ; $4F20: $00
    nop                                           ; $4F21: $00
    nop                                           ; $4F22: $00
    nop                                           ; $4F23: $00
    nop                                           ; $4F24: $00
    nop                                           ; $4F25: $00
    nop                                           ; $4F26: $00
    nop                                           ; $4F27: $00
    ret nz                                        ; $4F28: $C0

    nop                                           ; $4F29: $00
    ld h, b                                       ; $4F2A: $60
    add b                                         ; $4F2B: $80
    pop hl                                        ; $4F2C: $E1
    nop                                           ; $4F2D: $00
    rst RST_38                                    ; $4F2E: $FF
    ld bc, $7E81                                  ; $4F2F: $01 $81 $7E
    add c                                         ; $4F32: $81
    ld a, [hl]                                    ; $4F33: $7E
    ret nz                                        ; $4F34: $C0

    cp a                                          ; $4F35: $BF
    ret nz                                        ; $4F36: $C0

    cp a                                          ; $4F37: $BF
    ret nz                                        ; $4F38: $C0

    cp a                                          ; $4F39: $BF
    ret nz                                        ; $4F3A: $C0

    ccf                                           ; $4F3B: $3F
    ld b, b                                       ; $4F3C: $40
    ccf                                           ; $4F3D: $3F
    ccf                                           ; $4F3E: $3F
    nop                                           ; $4F3F: $00
    nop                                           ; $4F40: $00
    nop                                           ; $4F41: $00
    nop                                           ; $4F42: $00
    nop                                           ; $4F43: $00
    nop                                           ; $4F44: $00
    nop                                           ; $4F45: $00
    nop                                           ; $4F46: $00
    nop                                           ; $4F47: $00
    nop                                           ; $4F48: $00
    nop                                           ; $4F49: $00
    nop                                           ; $4F4A: $00
    nop                                           ; $4F4B: $00
    nop                                           ; $4F4C: $00
    nop                                           ; $4F4D: $00
    ld hl, sp+$00                                 ; $4F4E: $F8 $00
    ld hl, sp-$50                                 ; $4F50: $F8 $B0
    db $FC                                        ; $4F52: $FC
    adc b                                         ; $4F53: $88
    db $FC                                        ; $4F54: $FC
    cp b                                          ; $4F55: $B8
    db $FC                                        ; $4F56: $FC

jr_021_4F57:
    nop                                           ; $4F57: $00
    db $FC                                        ; $4F58: $FC
    jr c, jr_021_4F57                             ; $4F59: $38 $FC

    nop                                           ; $4F5B: $00
    ld hl, sp+$30                                 ; $4F5C: $F8 $30
    ldh a, [rP1]                                  ; $4F5E: $F0 $00
    ld a, a                                       ; $4F60: $7F
    scf                                           ; $4F61: $37
    ld a, a                                       ; $4F62: $7F
    nop                                           ; $4F63: $00
    ld a, a                                       ; $4F64: $7F
    inc a                                         ; $4F65: $3C
    cp h                                          ; $4F66: $BC
    ld e, e                                       ; $4F67: $5B
    cp h                                          ; $4F68: $BC
    ld e, e                                       ; $4F69: $5B
    sbc h                                         ; $4F6A: $9C

jr_021_4F6B:
    ld h, e                                       ; $4F6B: $63
    adc h                                         ; $4F6C: $8C
    ld [hl], e                                    ; $4F6D: $73
    adc h                                         ; $4F6E: $8C
    ld [hl], e                                    ; $4F6F: $73
    ei                                            ; $4F70: $FB
    nop                                           ; $4F71: $00
    db $FD                                        ; $4F72: $FD
    ld a, b                                       ; $4F73: $78
    rst RST_38                                    ; $4F74: $FF
    ld a, b                                       ; $4F75: $78
    rst RST_38                                    ; $4F76: $FF
    ld a, c                                       ; $4F77: $79
    rst RST_38                                    ; $4F78: $FF
    ld a, c                                       ; $4F79: $79
    db $FD                                        ; $4F7A: $FD
    ld a, b                                       ; $4F7B: $78
    ld sp, hl                                     ; $4F7C: $F9
    ld [hl], b                                    ; $4F7D: $70
    ld sp, hl                                     ; $4F7E: $F9
    ld [hl], b                                    ; $4F7F: $70
    jp $C37E                                      ; $4F80: $C3 $7E $C3


    ld a, [hl]                                    ; $4F83: $7E
    pop hl                                        ; $4F84: $E1
    ccf                                           ; $4F85: $3F
    ld h, c                                       ; $4F86: $61
    cp a                                          ; $4F87: $BF
    ld [hl], b                                    ; $4F88: $70
    sbc a                                         ; $4F89: $9F
    jr nc, jr_021_4F6B                            ; $4F8A: $30 $DF

    add hl, sp                                    ; $4F8C: $39
    rst RST_08                                    ; $4F8D: $CF

jr_021_4F8E:
    rst RST_38                                    ; $4F8E: $FF
    ld c, $5E                                     ; $4F8F: $0E $5E
    and c                                         ; $4F91: $A1

jr_021_4F92:
    cp $05                                        ; $4F92: $FE $05

jr_021_4F94:
    ld e, [hl]                                    ; $4F94: $5E
    and l                                         ; $4F95: $A5
    rst RST_20                                    ; $4F96: $E7
    ld a, [de]                                    ; $4F97: $1A
    add a                                         ; $4F98: $87
    ld a, d                                       ; $4F99: $7A
    rst RST_00                                    ; $4F9A: $C7
    cp d                                          ; $4F9B: $BA
    jp $C3BD                                      ; $4F9C: $C3 $BD $C3


    cp l                                          ; $4F9F: $BD
    rlca                                          ; $4FA0: $07
    nop                                           ; $4FA1: $00
    dec bc                                        ; $4FA2: $0B
    inc b                                         ; $4FA3: $04
    rrca                                          ; $4FA4: $0F
    nop                                           ; $4FA5: $00
    dec bc                                        ; $4FA6: $0B
    inc b                                         ; $4FA7: $04
    ld b, $01                                     ; $4FA8: $06 $01
    ld [bc], a                                    ; $4FAA: $02
    ld bc, $0102                                  ; $4FAB: $01 $02 $01
    ld [bc], a                                    ; $4FAE: $02
    ld bc, $0102                                  ; $4FAF: $01 $02 $01
    ld [bc], a                                    ; $4FB2: $02
    ld bc, $0106                                  ; $4FB3: $01 $06 $01
    ld a, [bc]                                    ; $4FB6: $0A
    dec b                                         ; $4FB7: $05
    ld de, $1F0E                                  ; $4FB8: $11 $0E $1F
    nop                                           ; $4FBB: $00
    nop                                           ; $4FBC: $00
    nop                                           ; $4FBD: $00
    nop                                           ; $4FBE: $00
    nop                                           ; $4FBF: $00
    add b                                         ; $4FC0: $80
    nop                                           ; $4FC1: $00
    add b                                         ; $4FC2: $80
    nop                                           ; $4FC3: $00
    ret nz                                        ; $4FC4: $C0

    add b                                         ; $4FC5: $80
    ret nz                                        ; $4FC6: $C0

    add b                                         ; $4FC7: $80
    ldh [$FF80], a                                ; $4FC8: $E0 $80
    and b                                         ; $4FCA: $A0
    ld b, b                                       ; $4FCB: $40
    jr nz, jr_021_4F8E                            ; $4FCC: $20 $C0

    jr nz, @-$3E                                  ; $4FCE: $20 $C0

    jr nz, jr_021_4F92                            ; $4FD0: $20 $C0

    jr nz, jr_021_4F94                            ; $4FD2: $20 $C0

    ldh [rP1], a                                  ; $4FD4: $E0 $00
    nop                                           ; $4FD6: $00
    nop                                           ; $4FD7: $00
    add b                                         ; $4FD8: $80
    nop                                           ; $4FD9: $00
    add b                                         ; $4FDA: $80
    nop                                           ; $4FDB: $00
    add b                                         ; $4FDC: $80
    nop                                           ; $4FDD: $00
    ret nz                                        ; $4FDE: $C0

    add b                                         ; $4FDF: $80
    ld hl, sp+$70                                 ; $4FE0: $F8 $70
    db $FC                                        ; $4FE2: $FC
    ld a, b                                       ; $4FE3: $78
    db $FC                                        ; $4FE4: $FC
    ld a, b                                       ; $4FE5: $78
    db $FC                                        ; $4FE6: $FC
    nop                                           ; $4FE7: $00
    add b                                         ; $4FE8: $80
    nop                                           ; $4FE9: $00
    nop                                           ; $4FEA: $00
    nop                                           ; $4FEB: $00
    nop                                           ; $4FEC: $00
    nop                                           ; $4FED: $00
    nop                                           ; $4FEE: $00
    nop                                           ; $4FEF: $00
    nop                                           ; $4FF0: $00
    nop                                           ; $4FF1: $00
    nop                                           ; $4FF2: $00
    nop                                           ; $4FF3: $00
    nop                                           ; $4FF4: $00
    nop                                           ; $4FF5: $00
    nop                                           ; $4FF6: $00
    nop                                           ; $4FF7: $00
    nop                                           ; $4FF8: $00
    nop                                           ; $4FF9: $00
    nop                                           ; $4FFA: $00
    nop                                           ; $4FFB: $00
    nop                                           ; $4FFC: $00
    nop                                           ; $4FFD: $00
    nop                                           ; $4FFE: $00
    nop                                           ; $4FFF: $00
    db $E3                                        ; $5000: $E3
    ld e, l                                       ; $5001: $5D
    pop hl                                        ; $5002: $E1
    ld e, [hl]                                    ; $5003: $5E
    ld [hl], a                                    ; $5004: $77
    jr z, @+$7B                                   ; $5005: $28 $79

    ld h, $70                                     ; $5007: $26 $70
    rrca                                          ; $5009: $0F
    db $10                                        ; $500A: $10
    rrca                                          ; $500B: $0F
    rra                                           ; $500C: $1F
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
    ret nz                                        ; $5020: $C0

    add b                                         ; $5021: $80
    add b                                         ; $5022: $80
    nop                                           ; $5023: $00
    add b                                         ; $5024: $80
    nop                                           ; $5025: $00
    ld b, b                                       ; $5026: $40
    add b                                         ; $5027: $80
    ret nz                                        ; $5028: $C0

    nop                                           ; $5029: $00
    nop                                           ; $502A: $00
    nop                                           ; $502B: $00
    nop                                           ; $502C: $00
    nop                                           ; $502D: $00
    nop                                           ; $502E: $00
    nop                                           ; $502F: $00
    nop                                           ; $5030: $00
    nop                                           ; $5031: $00
    nop                                           ; $5032: $00
    nop                                           ; $5033: $00
    nop                                           ; $5034: $00
    nop                                           ; $5035: $00
    nop                                           ; $5036: $00
    nop                                           ; $5037: $00
    nop                                           ; $5038: $00
    nop                                           ; $5039: $00
    nop                                           ; $503A: $00
    nop                                           ; $503B: $00
    nop                                           ; $503C: $00
    nop                                           ; $503D: $00
    nop                                           ; $503E: $00
    nop                                           ; $503F: $00
    ld sp, hl                                     ; $5040: $F9
    ld [hl], $3D                                  ; $5041: $36 $3D
    ld b, $07                                     ; $5043: $06 $07
    inc bc                                        ; $5045: $03
    inc bc                                        ; $5046: $03
    nop                                           ; $5047: $00
    ld [bc], a                                    ; $5048: $02

jr_021_5049:
    ld bc, $0102                                  ; $5049: $01 $02 $01
    ld bc, $0100                                  ; $504C: $01 $00 $01
    nop                                           ; $504F: $00
    ld bc, $0200                                  ; $5050: $01 $00 $02
    ld bc, $0102                                  ; $5053: $01 $02 $01
    ld [bc], a                                    ; $5056: $02
    ld bc, $0102                                  ; $5057: $01 $02 $01
    ld e, $01                                     ; $505A: $1E $01
    cpl                                           ; $505C: $2F
    db $10                                        ; $505D: $10
    ccf                                           ; $505E: $3F
    ld bc, $DDF3                                  ; $505F: $01 $F3 $DD
    rst RST_20                                    ; $5062: $E7
    cp l                                          ; $5063: $BD
    rst RST_38                                    ; $5064: $FF
    dec sp                                        ; $5065: $3B
    ccf                                           ; $5066: $3F
    rst RST_00                                    ; $5067: $C7
    rst RST_18                                    ; $5068: $DF
    rst RST_28                                    ; $5069: $EF
    rst RST_18                                    ; $506A: $DF
    xor $FF                                       ; $506B: $EE $FF
    db $DD                                        ; $506D: $DD
    rst RST_38                                    ; $506E: $FF
    ld bc, $F0FF                                  ; $506F: $01 $FF $F0
    pop af                                        ; $5072: $F1
    ld l, [hl]                                    ; $5073: $6E
    pop af                                        ; $5074: $F1
    ld l, [hl]                                    ; $5075: $6E
    ld [hl], b                                    ; $5076: $70
    adc a                                         ; $5077: $8F
    jr nc, jr_021_5049                            ; $5078: $30 $CF

    inc sp                                        ; $507A: $33
    call z, $02ED                                 ; $507B: $CC $ED $02
    rst RST_30                                    ; $507E: $F7
    ldh [$FFFC], a                                ; $507F: $E0 $FC
    ld a, b                                       ; $5081: $78
    ld hl, sp+$70                                 ; $5082: $F8 $70
    ldh a, [$FF80]                                ; $5084: $F0 $80
    ldh a, [$FFA0]                                ; $5086: $F0 $A0
    sbc b                                         ; $5088: $98
    ld [hl], b                                    ; $5089: $70
    jr @-$0E                                      ; $508A: $18 $F0

    inc c                                         ; $508C: $0C
    ld hl, sp+$0C                                 ; $508D: $F8 $0C
    ld hl, sp-$7A                                 ; $508F: $F8 $86
    db $FC                                        ; $5091: $FC
    add [hl]                                      ; $5092: $86
    db $FC                                        ; $5093: $FC
    jp $C37E                                      ; $5094: $C3 $7E $C3


    ld a, [hl]                                    ; $5097: $7E
    rst RST_20                                    ; $5098: $E7
    ld a, $FE                                     ; $5099: $3E $FE
    add hl, sp                                    ; $509B: $39
    ld a, b                                       ; $509C: $78
    add a                                         ; $509D: $87
    ld hl, sp+$17                                 ; $509E: $F8 $17
    cpl                                           ; $50A0: $2F
    ld de, $051B                                  ; $50A1: $11 $1B $05
    dec bc                                        ; $50A4: $0B
    dec b                                         ; $50A5: $05
    dec bc                                        ; $50A6: $0B
    dec b                                         ; $50A7: $05
    dec bc                                        ; $50A8: $0B
    dec b                                         ; $50A9: $05
    dec bc                                        ; $50AA: $0B
    dec b                                         ; $50AB: $05
    dec bc                                        ; $50AC: $0B
    dec b                                         ; $50AD: $05
    dec de                                        ; $50AE: $1B
    dec b                                         ; $50AF: $05
    dec hl                                        ; $50B0: $2B
    dec d                                         ; $50B1: $15
    ld b, a                                       ; $50B2: $47
    jr c, jr_021_5133                             ; $50B3: $38 $7E

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
    db $FD                                        ; $50C0: $FD
    ldh [c], a                                    ; $50C1: $E2
    rst RST_38                                    ; $50C2: $FF
    db $E4                                        ; $50C3: $E4
    cp $E5                                        ; $50C4: $FE $E5
    rst RST_30                                    ; $50C6: $F7
    ldh [c], a                                    ; $50C7: $E2
    rst RST_20                                    ; $50C8: $E7
    jp nz, $C2E7                                  ; $50C9: $C2 $E7 $C2

    db $E3                                        ; $50CC: $E3
    pop bc                                        ; $50CD: $C1
    di                                            ; $50CE: $F3
    pop hl                                        ; $50CF: $E1
    pop af                                        ; $50D0: $F1
    ldh [$FFF1], a                                ; $50D1: $E0 $F1
    nop                                           ; $50D3: $00
    ld bc, $0000                                  ; $50D4: $01 $00 $00
    nop                                           ; $50D7: $00
    nop                                           ; $50D8: $00
    nop                                           ; $50D9: $00
    nop                                           ; $50DA: $00
    nop                                           ; $50DB: $00
    nop                                           ; $50DC: $00
    nop                                           ; $50DD: $00
    nop                                           ; $50DE: $00
    nop                                           ; $50DF: $00
    ld a, b                                       ; $50E0: $78
    sub a                                         ; $50E1: $97
    sbc h                                         ; $50E2: $9C
    ld l, e                                       ; $50E3: $6B
    rra                                           ; $50E4: $1F
    add sp, $1C                                   ; $50E5: $E8 $1C
    add sp, $0E                                   ; $50E7: $E8 $0E
    db $F4                                        ; $50E9: $F4
    ld c, $F4                                     ; $50EA: $0E $F4
    adc [hl]                                      ; $50EC: $8E
    ld [hl], h                                    ; $50ED: $74
    add a                                         ; $50EE: $87
    ld a, d                                       ; $50EF: $7A
    rst RST_18                                    ; $50F0: $DF
    and d                                         ; $50F1: $A2
    and $98                                       ; $50F2: $E6 $98
    jp nz, Jump_021_413C                          ; $50F4: $C2 $3C $41

    ld a, $7F                                     ; $50F7: $3E $7F
    nop                                           ; $50F9: $00
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
    add b                                         ; $5108: $80
    nop                                           ; $5109: $00
    add b                                         ; $510A: $80
    nop                                           ; $510B: $00
    add b                                         ; $510C: $80
    nop                                           ; $510D: $00
    add b                                         ; $510E: $80
    nop                                           ; $510F: $00
    add b                                         ; $5110: $80
    nop                                           ; $5111: $00
    add b                                         ; $5112: $80
    nop                                           ; $5113: $00
    add b                                         ; $5114: $80
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
    nop                                           ; $5120: $00
    nop                                           ; $5121: $00
    nop                                           ; $5122: $00
    nop                                           ; $5123: $00
    add b                                         ; $5124: $80
    nop                                           ; $5125: $00
    add b                                         ; $5126: $80
    nop                                           ; $5127: $00
    ld a, h                                       ; $5128: $7C
    add b                                         ; $5129: $80
    ld a, [hl]                                    ; $512A: $7E
    cp h                                          ; $512B: $BC
    ld a, a                                       ; $512C: $7F
    cp [hl]                                       ; $512D: $BE
    ld a, a                                       ; $512E: $7F
    cp [hl]                                       ; $512F: $BE
    ld a, a                                       ; $5130: $7F
    cp a                                          ; $5131: $BF
    ld a, a                                       ; $5132: $7F

jr_021_5133:
    cp a                                          ; $5133: $BF
    ld l, a                                       ; $5134: $6F
    cp a                                          ; $5135: $BF
    rst RST_20                                    ; $5136: $E7
    ld a, a                                       ; $5137: $7F
    rst RST_30                                    ; $5138: $F7
    ld a, a                                       ; $5139: $7F
    ld [hl], e                                    ; $513A: $73
    cp a                                          ; $513B: $BF
    ld a, c                                       ; $513C: $79
    sbc a                                         ; $513D: $9F
    ld sp, hl                                     ; $513E: $F9
    rra                                           ; $513F: $1F
    rst RST_30                                    ; $5140: $F7
    ret c                                         ; $5141: $D8

    rst RST_38                                    ; $5142: $FF
    ret nz                                        ; $5143: $C0

    rst RST_38                                    ; $5144: $FF
    ret c                                         ; $5145: $D8

    rst RST_38                                    ; $5146: $FF
    cp b                                          ; $5147: $B8
    rst RST_38                                    ; $5148: $FF
    jr nc, jr_021_51C1                            ; $5149: $30 $76

    adc b                                         ; $514B: $88

jr_021_514C:
    ld h, c                                       ; $514C: $61
    sbc [hl]                                      ; $514D: $9E

jr_021_514E:
    ret nz                                        ; $514E: $C0

    ccf                                           ; $514F: $3F

jr_021_5150:
    add b                                         ; $5150: $80
    ld a, a                                       ; $5151: $7F

jr_021_5152:
    ret nz                                        ; $5152: $C0

    rst RST_38                                    ; $5153: $FF
    ldh a, [$FF3F]                                ; $5154: $F0 $3F
    inc a                                         ; $5156: $3C
    rrca                                          ; $5157: $0F
    xor a                                         ; $5158: $AF
    inc de                                        ; $5159: $13
    sub e                                         ; $515A: $93
    inc c                                         ; $515B: $0C
    ld d, c                                       ; $515C: $51
    adc [hl]                                      ; $515D: $8E
    ld c, c                                       ; $515E: $49
    add [hl]                                      ; $515F: $86
    ld hl, sp+$1F                                 ; $5160: $F8 $1F
    db $FC                                        ; $5162: $FC
    rra                                           ; $5163: $1F
    db $FC                                        ; $5164: $FC
    ccf                                           ; $5165: $3F
    inc e                                         ; $5166: $1C
    rst RST_38                                    ; $5167: $FF
    inc c                                         ; $5168: $0C
    rst RST_38                                    ; $5169: $FF
    adc h                                         ; $516A: $8C
    ld a, a                                       ; $516B: $7F
    add h                                         ; $516C: $84
    ld a, a                                       ; $516D: $7F
    add h                                         ; $516E: $84
    ld a, a                                       ; $516F: $7F
    ld b, b                                       ; $5170: $40
    cp a                                          ; $5171: $BF
    ld b, h                                       ; $5172: $44
    cp e                                          ; $5173: $BB
    ld h, $D9                                     ; $5174: $26 $D9
    ld h, $D9                                     ; $5176: $26 $D9
    ld [hl], $C9                                  ; $5178: $36 $C9
    push af                                       ; $517A: $F5
    ret z                                         ; $517B: $C8

    push de                                       ; $517C: $D5
    jr z, jr_021_51BC                             ; $517D: $28 $3D

    nop                                           ; $517F: $00
    add b                                         ; $5180: $80
    nop                                           ; $5181: $00
    add b                                         ; $5182: $80
    nop                                           ; $5183: $00
    ld b, b                                       ; $5184: $40
    add b                                         ; $5185: $80
    ld b, b                                       ; $5186: $40
    add b                                         ; $5187: $80
    ld b, b                                       ; $5188: $40
    add b                                         ; $5189: $80
    jr nz, jr_021_514C                            ; $518A: $20 $C0

    jr nz, jr_021_514E                            ; $518C: $20 $C0

    jr nz, jr_021_5150                            ; $518E: $20 $C0

    jr nz, jr_021_5152                            ; $5190: $20 $C0

    db $10                                        ; $5192: $10
    ldh [rNR10], a                                ; $5193: $E0 $10
    ldh [rNR10], a                                ; $5195: $E0 $10
    ldh [rNR10], a                                ; $5197: $E0 $10
    ldh [rNR10], a                                ; $5199: $E0 $10
    ldh [rNR10], a                                ; $519B: $E0 $10
    ldh [rNR10], a                                ; $519D: $E0 $10
    ldh [rNR10], a                                ; $519F: $E0 $10
    ldh [rNR10], a                                ; $51A1: $E0 $10
    ldh [rNR10], a                                ; $51A3: $E0 $10
    ldh [rNR10], a                                ; $51A5: $E0 $10
    ldh [rNR10], a                                ; $51A7: $E0 $10
    ldh [rNR10], a                                ; $51A9: $E0 $10
    ldh [rNR10], a                                ; $51AB: $E0 $10
    ldh [rNR41], a                                ; $51AD: $E0 $20
    ret nz                                        ; $51AF: $C0

    and b                                         ; $51B0: $A0
    ld b, b                                       ; $51B1: $40
    and b                                         ; $51B2: $A0
    ld b, b                                       ; $51B3: $40
    and b                                         ; $51B4: $A0
    ld b, b                                       ; $51B5: $40
    ret nz                                        ; $51B6: $C0

    nop                                           ; $51B7: $00
    ret nz                                        ; $51B8: $C0

    nop                                           ; $51B9: $00
    ret nz                                        ; $51BA: $C0

    nop                                           ; $51BB: $00

jr_021_51BC:
    add b                                         ; $51BC: $80
    nop                                           ; $51BD: $00
    add b                                         ; $51BE: $80
    nop                                           ; $51BF: $00
    jp hl                                         ; $51C0: $E9


jr_021_51C1:
    ld b, $BD                                     ; $51C1: $06 $BD
    ld b, d                                       ; $51C3: $42
    db $FD                                        ; $51C4: $FD
    ld a, [bc]                                    ; $51C5: $0A
    cp l                                          ; $51C6: $BD
    ld c, d                                       ; $51C7: $4A
    adc $34                                       ; $51C8: $CE $34
    ld c, $F4                                     ; $51CA: $0E $F4
    adc [hl]                                      ; $51CC: $8E
    ld [hl], h                                    ; $51CD: $74
    add a                                         ; $51CE: $87
    ld a, d                                       ; $51CF: $7A
    add a                                         ; $51D0: $87
    ld a, d                                       ; $51D1: $7A
    rst RST_00                                    ; $51D2: $C7
    cp d                                          ; $51D3: $BA
    jp $EFBD                                      ; $51D4: $C3 $BD $EF


    ld d, c                                       ; $51D7: $51
    di                                            ; $51D8: $F3
    ld c, h                                       ; $51D9: $4C
    pop hl                                        ; $51DA: $E1
    ld e, $20                                     ; $51DB: $1E $20
    rra                                           ; $51DD: $1F
    ccf                                           ; $51DE: $3F
    nop                                           ; $51DF: $00
    nop                                           ; $51E0: $00
    nop                                           ; $51E1: $00
    nop                                           ; $51E2: $00
    nop                                           ; $51E3: $00
    ld [$1800], sp                                ; $51E4: $08 $00 $18
    nop                                           ; $51E7: $00
    jr jr_021_51EA                                ; $51E8: $18 $00

jr_021_51EA:
    jr c, jr_021_51FC                             ; $51EA: $38 $10

    jr c, jr_021_51FE                             ; $51EC: $38 $10

    ld e, b                                       ; $51EE: $58
    jr nc, jr_021_524C                            ; $51EF: $30 $5B

    jr nc, jr_021_5250                            ; $51F1: $30 $5D

    ld [hl-], a                                   ; $51F3: $32
    ld e, l                                       ; $51F4: $5D
    ld a, [hl-]                                   ; $51F5: $3A
    ld e, l                                       ; $51F6: $5D
    ld a, [hl-]                                   ; $51F7: $3A
    ld e, l                                       ; $51F8: $5D
    ld a, [hl-]                                   ; $51F9: $3A
    ld l, $1D                                     ; $51FA: $2E $1D

jr_021_51FC:
    ccf                                           ; $51FC: $3F
    nop                                           ; $51FD: $00

jr_021_51FE:
    cpl                                           ; $51FE: $2F
    rla                                           ; $51FF: $17
    nop                                           ; $5200: $00
    nop                                           ; $5201: $00
    nop                                           ; $5202: $00
    nop                                           ; $5203: $00
    nop                                           ; $5204: $00
    nop                                           ; $5205: $00
    nop                                           ; $5206: $00
    nop                                           ; $5207: $00
    inc bc                                        ; $5208: $03
    nop                                           ; $5209: $00
    inc bc                                        ; $520A: $03
    ld bc, $0306                                  ; $520B: $01 $06 $03
    ld b, $03                                     ; $520E: $06 $03
    inc c                                         ; $5210: $0C
    rlca                                          ; $5211: $07
    ld e, $01                                     ; $5212: $1E $01
    add hl, sp                                    ; $5214: $39
    ld d, $7D                                     ; $5215: $16 $7D
    ld [de], a                                    ; $5217: $12
    rst RST_38                                    ; $5218: $FF
    ld e, h                                       ; $5219: $5C
    rst RST_38                                    ; $521A: $FF
    jr nc, @+$01                                  ; $521B: $30 $FF

    dec bc                                        ; $521D: $0B
    rst RST_28                                    ; $521E: $EF
    rla                                           ; $521F: $17
    nop                                           ; $5220: $00
    nop                                           ; $5221: $00
    inc bc                                        ; $5222: $03
    nop                                           ; $5223: $00
    ld [bc], a                                    ; $5224: $02
    ld bc, $0102                                  ; $5225: $01 $02 $01
    db $E3                                        ; $5228: $E3
    ld bc, $C1E3                                  ; $5229: $01 $E3 $C1
    scf                                           ; $522C: $37
    jp $A75F                                      ; $522D: $C3 $5F $A7


    ld e, a                                       ; $5230: $5F
    xor a                                         ; $5231: $AF
    sbc a                                         ; $5232: $9F
    ld l, a                                       ; $5233: $6F
    cp a                                          ; $5234: $BF
    ld e, a                                       ; $5235: $5F
    ld a, $DF                                     ; $5236: $3E $DF
    ld a, [hl]                                    ; $5238: $7E
    adc a                                         ; $5239: $8F
    db $ED                                        ; $523A: $ED
    ld d, $FA                                     ; $523B: $16 $FA
    push hl                                       ; $523D: $E5
    rst RST_38                                    ; $523E: $FF
    ret z                                         ; $523F: $C8

    cpl                                           ; $5240: $2F
    inc de                                        ; $5241: $13
    rra                                           ; $5242: $1F
    inc bc                                        ; $5243: $03
    rrca                                          ; $5244: $0F

jr_021_5245:
    nop                                           ; $5245: $00
    inc b                                         ; $5246: $04
    inc bc                                        ; $5247: $03
    ld [$0807], sp                                ; $5248: $08 $07 $08
    rlca                                          ; $524B: $07

jr_021_524C:
    ld [$0407], sp                                ; $524C: $08 $07 $04
    inc bc                                        ; $524F: $03

jr_021_5250:
    inc bc                                        ; $5250: $03
    nop                                           ; $5251: $00
    nop                                           ; $5252: $00
    nop                                           ; $5253: $00
    nop                                           ; $5254: $00
    nop                                           ; $5255: $00
    nop                                           ; $5256: $00
    nop                                           ; $5257: $00
    ld bc, $0100                                  ; $5258: $01 $00 $01
    nop                                           ; $525B: $00
    ld bc, $0100                                  ; $525C: $01 $00 $01
    nop                                           ; $525F: $00
    rst RST_38                                    ; $5260: $FF
    rst RST_00                                    ; $5261: $C7
    rst RST_08                                    ; $5262: $CF
    scf                                           ; $5263: $37
    rrca                                          ; $5264: $0F
    rst RST_30                                    ; $5265: $F7
    rlca                                          ; $5266: $07

jr_021_5267:
    ei                                            ; $5267: $FB
    rlca                                          ; $5268: $07
    ld a, [$FD02]                                 ; $5269: $FA $02 $FD
    inc c                                         ; $526C: $0C
    di                                            ; $526D: $F3
    ld a, a                                       ; $526E: $7F
    add b                                         ; $526F: $80
    rst RST_28                                    ; $5270: $EF
    ld [hl], a                                    ; $5271: $77
    rst RST_38                                    ; $5272: $FF
    ld l, [hl]                                    ; $5273: $6E
    rst RST_38                                    ; $5274: $FF
    nop                                           ; $5275: $00
    rst RST_38                                    ; $5276: $FF
    ld a, b                                       ; $5277: $78
    ld a, b                                       ; $5278: $78
    or a                                          ; $5279: $B7
    ld a, b                                       ; $527A: $78
    or a                                          ; $527B: $B7
    jr c, jr_021_5245                             ; $527C: $38 $C7

    jr jr_021_5267                                ; $527E: $18 $E7

    rrca                                          ; $5280: $0F
    nop                                           ; $5281: $00
    rla                                           ; $5282: $17
    ld [$001F], sp                                ; $5283: $08 $1F $00
    rla                                           ; $5286: $17
    ld [$020D], sp                                ; $5287: $08 $0D $02
    dec b                                         ; $528A: $05
    ld [bc], a                                    ; $528B: $02
    dec b                                         ; $528C: $05
    ld [bc], a                                    ; $528D: $02
    dec b                                         ; $528E: $05
    ld [bc], a                                    ; $528F: $02
    dec b                                         ; $5290: $05
    ld [bc], a                                    ; $5291: $02
    dec b                                         ; $5292: $05
    ld [bc], a                                    ; $5293: $02
    dec c                                         ; $5294: $0D
    ld [bc], a                                    ; $5295: $02
    dec d                                         ; $5296: $15
    ld a, [bc]                                    ; $5297: $0A
    inc hl                                        ; $5298: $23
    inc e                                         ; $5299: $1C
    ccf                                           ; $529A: $3F
    nop                                           ; $529B: $00
    nop                                           ; $529C: $00
    nop                                           ; $529D: $00
    nop                                           ; $529E: $00
    nop                                           ; $529F: $00
    add hl, de                                    ; $52A0: $19
    and $F6                                       ; $52A1: $E6 $F6
    ld bc, $F0FB                                  ; $52A3: $01 $FB $F0
    cp $F1                                        ; $52A6: $FE $F1
    rst RST_38                                    ; $52A8: $FF
    ldh a, [c]                                    ; $52A9: $F2
    rst RST_38                                    ; $52AA: $FF
    ldh a, [c]                                    ; $52AB: $F2
    ei                                            ; $52AC: $FB
    pop af                                        ; $52AD: $F1
    di                                            ; $52AE: $F3
    pop hl                                        ; $52AF: $E1
    di                                            ; $52B0: $F3
    pop hl                                        ; $52B1: $E1
    pop af                                        ; $52B2: $F1
    ldh [$FFF9], a                                ; $52B3: $E0 $F9
    ldh a, [$FFF8]                                ; $52B5: $F0 $F8
    ldh a, [$FFF8]                                ; $52B7: $F0 $F8
    nop                                           ; $52B9: $00
    nop                                           ; $52BA: $00
    nop                                           ; $52BB: $00
    nop                                           ; $52BC: $00
    nop                                           ; $52BD: $00
    nop                                           ; $52BE: $00
    nop                                           ; $52BF: $00
    add b                                         ; $52C0: $80
    nop                                           ; $52C1: $00
    add b                                         ; $52C2: $80
    nop                                           ; $52C3: $00
    nop                                           ; $52C4: $00
    nop                                           ; $52C5: $00
    nop                                           ; $52C6: $00
    nop                                           ; $52C7: $00
    add b                                         ; $52C8: $80
    nop                                           ; $52C9: $00
    add b                                         ; $52CA: $80
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
    nop                                           ; $52DA: $00
    nop                                           ; $52DB: $00
    nop                                           ; $52DC: $00
    nop                                           ; $52DD: $00
    nop                                           ; $52DE: $00
    nop                                           ; $52DF: $00
    rst RST_30                                    ; $52E0: $F7
    ret c                                         ; $52E1: $D8

    rst RST_38                                    ; $52E2: $FF
    ret nz                                        ; $52E3: $C0

    rst RST_38                                    ; $52E4: $FF
    ret c                                         ; $52E5: $D8

    rst RST_38                                    ; $52E6: $FF
    cp b                                          ; $52E7: $B8
    cp $30                                        ; $52E8: $FE $30
    halt                                          ; $52EA: $76
    adc b                                         ; $52EB: $88
    ld h, c                                       ; $52EC: $61
    sbc [hl]                                      ; $52ED: $9E
    ret nz                                        ; $52EE: $C0

    ccf                                           ; $52EF: $3F
    add b                                         ; $52F0: $80
    ld a, a                                       ; $52F1: $7F
    ret nz                                        ; $52F2: $C0

    rst RST_38                                    ; $52F3: $FF
    ldh a, [$FF3F]                                ; $52F4: $F0 $3F
    inc a                                         ; $52F6: $3C
    rrca                                          ; $52F7: $0F
    adc a                                         ; $52F8: $8F
    inc bc                                        ; $52F9: $03
    add e                                         ; $52FA: $83
    nop                                           ; $52FB: $00
    ld b, b                                       ; $52FC: $40
    add b                                         ; $52FD: $80
    ld b, b                                       ; $52FE: $40
    add b                                         ; $52FF: $80
    nop                                           ; $5300: $00
    nop                                           ; $5301: $00
    nop                                           ; $5302: $00
    nop                                           ; $5303: $00
    add b                                         ; $5304: $80
    nop                                           ; $5305: $00
    add b                                         ; $5306: $80
    nop                                           ; $5307: $00
    ld a, h                                       ; $5308: $7C
    add b                                         ; $5309: $80
    ld a, [hl]                                    ; $530A: $7E
    cp h                                          ; $530B: $BC
    ld b, d                                       ; $530C: $42
    cp h                                          ; $530D: $BC
    ld b, d                                       ; $530E: $42
    cp h                                          ; $530F: $BC
    ld b, d                                       ; $5310: $42
    cp h                                          ; $5311: $BC
    ld b, d                                       ; $5312: $42
    cp h                                          ; $5313: $BC
    ld b, d                                       ; $5314: $42
    cp h                                          ; $5315: $BC
    add h                                         ; $5316: $84
    ld a, b                                       ; $5317: $78
    adc b                                         ; $5318: $88
    ld [hl], b                                    ; $5319: $70
    ld d, b                                       ; $531A: $50
    and b                                         ; $531B: $A0
    ld h, b                                       ; $531C: $60
    add b                                         ; $531D: $80
    ldh [rP1], a                                  ; $531E: $E0 $00
    ldh [rP1], a                                  ; $5320: $E0 $00
    ldh [rP1], a                                  ; $5322: $E0 $00
    add b                                         ; $5324: $80
    nop                                           ; $5325: $00
    nop                                           ; $5326: $00
    nop                                           ; $5327: $00
    nop                                           ; $5328: $00
    nop                                           ; $5329: $00
    nop                                           ; $532A: $00
    nop                                           ; $532B: $00
    add b                                         ; $532C: $80
    nop                                           ; $532D: $00
    ld h, b                                       ; $532E: $60
    add b                                         ; $532F: $80
    db $10                                        ; $5330: $10
    ldh [rNR32], a                                ; $5331: $E0 $1C
    ldh a, [rNR30]                                ; $5333: $F0 $1A
    db $F4                                        ; $5335: $F4
    add hl, de                                    ; $5336: $19
    and $31                                       ; $5337: $E6 $31
    xor $E0                                       ; $5339: $EE $E0
    rst RST_18                                    ; $533B: $DF
    ret nz                                        ; $533C: $C0

    ccf                                           ; $533D: $3F
    ccf                                           ; $533E: $3F
    nop                                           ; $533F: $00
    ldh [rP1], a                                  ; $5340: $E0 $00
    cp h                                          ; $5342: $BC
    ld b, b                                       ; $5343: $40
    db $FC                                        ; $5344: $FC
    ld [$48BC], sp                                ; $5345: $08 $BC $48
    adc $34                                       ; $5348: $CE $34
    ld c, $F4                                     ; $534A: $0E $F4
    adc [hl]                                      ; $534C: $8E
    ld [hl], h                                    ; $534D: $74
    add a                                         ; $534E: $87
    ld a, d                                       ; $534F: $7A
    add a                                         ; $5350: $87
    ld a, d                                       ; $5351: $7A
    rst RST_00                                    ; $5352: $C7
    cp d                                          ; $5353: $BA
    jp $EFBD                                      ; $5354: $C3 $BD $EF


    ld d, c                                       ; $5357: $51
    di                                            ; $5358: $F3
    ld c, h                                       ; $5359: $4C
    pop hl                                        ; $535A: $E1
    ld e, $20                                     ; $535B: $1E $20
    rra                                           ; $535D: $1F
    ccf                                           ; $535E: $3F
    nop                                           ; $535F: $00
    nop                                           ; $5360: $00
    nop                                           ; $5361: $00
    nop                                           ; $5362: $00
    nop                                           ; $5363: $00
    nop                                           ; $5364: $00
    nop                                           ; $5365: $00
    nop                                           ; $5366: $00
    nop                                           ; $5367: $00
    nop                                           ; $5368: $00
    nop                                           ; $5369: $00
    add b                                         ; $536A: $80
    nop                                           ; $536B: $00
    add b                                         ; $536C: $80
    nop                                           ; $536D: $00
    nop                                           ; $536E: $00
    nop                                           ; $536F: $00
    nop                                           ; $5370: $00
    nop                                           ; $5371: $00
    nop                                           ; $5372: $00
    nop                                           ; $5373: $00
    nop                                           ; $5374: $00
    nop                                           ; $5375: $00
    nop                                           ; $5376: $00
    nop                                           ; $5377: $00
    nop                                           ; $5378: $00
    nop                                           ; $5379: $00
    nop                                           ; $537A: $00
    nop                                           ; $537B: $00
    nop                                           ; $537C: $00
    nop                                           ; $537D: $00
    nop                                           ; $537E: $00
    nop                                           ; $537F: $00
    jr nc, jr_021_53A1                            ; $5380: $30 $1F

    jr nc, jr_021_53A3                            ; $5382: $30 $1F

    ld h, b                                       ; $5384: $60
    ccf                                           ; $5385: $3F
    ld h, b                                       ; $5386: $60
    ccf                                           ; $5387: $3F
    ret nz                                        ; $5388: $C0

    ld a, a                                       ; $5389: $7F
    pop bc                                        ; $538A: $C1
    ld a, [hl]                                    ; $538B: $7E
    jp $C67C                                      ; $538C: $C3 $7C $C6


    ld a, c                                       ; $538F: $79
    call $CE77                                    ; $5390: $CD $77 $CE
    ld [hl], a                                    ; $5393: $77
    db $DD                                        ; $5394: $DD
    ld l, a                                       ; $5395: $6F
    ld a, e                                       ; $5396: $7B
    cpl                                           ; $5397: $2F
    ld a, h                                       ; $5398: $7C
    cpl                                           ; $5399: $2F
    dec sp                                        ; $539A: $3B
    rrca                                          ; $539B: $0F
    rrca                                          ; $539C: $0F
    rlca                                          ; $539D: $07
    rlca                                          ; $539E: $07
    nop                                           ; $539F: $00
    rlca                                          ; $53A0: $07

jr_021_53A1:
    db $FC                                        ; $53A1: $FC
    rrca                                          ; $53A2: $0F

jr_021_53A3:
    ld hl, sp+$0F                                 ; $53A3: $F8 $0F
    ld a, [$817F]                                 ; $53A5: $FA $7F $81
    or a                                          ; $53A8: $B7
    ld c, b                                       ; $53A9: $48
    ld a, d                                       ; $53AA: $7A
    or l                                          ; $53AB: $B5
    rst RST_38                                    ; $53AC: $FF
    nop                                           ; $53AD: $00
    ld a, a                                       ; $53AE: $7F
    rst RST_38                                    ; $53AF: $FF
    ret nz                                        ; $53B0: $C0

    rst RST_38                                    ; $53B1: $FF
    ld h, b                                       ; $53B2: $60
    rst RST_38                                    ; $53B3: $FF
    sub b                                         ; $53B4: $90
    rst RST_38                                    ; $53B5: $FF
    ld de, $9EFF                                  ; $53B6: $11 $FF $9E
    rst RST_38                                    ; $53B9: $FF
    db $10                                        ; $53BA: $10
    rst RST_38                                    ; $53BB: $FF
    rst RST_38                                    ; $53BC: $FF
    rst RST_38                                    ; $53BD: $FF
    rst RST_38                                    ; $53BE: $FF
    nop                                           ; $53BF: $00
    call $E7B0                                    ; $53C0: $CD $B0 $E7
    sbc c                                         ; $53C3: $99
    or $E9                                        ; $53C4: $F6 $E9
    ldh a, [c]                                    ; $53C6: $F2
    adc l                                         ; $53C7: $8D
    ld hl, sp+$67                                 ; $53C8: $F8 $67
    daa                                           ; $53CA: $27
    ret c                                         ; $53CB: $D8

    rst RST_38                                    ; $53CC: $FF
    rlca                                          ; $53CD: $07
    ld hl, sp-$01                                 ; $53CE: $F8 $FF
    ld h, b                                       ; $53D0: $60
    rst RST_38                                    ; $53D1: $FF
    jr nz, @+$01                                  ; $53D2: $20 $FF

    jr nz, @+$01                                  ; $53D4: $20 $FF

    ldh [rIE], a                                  ; $53D6: $E0 $FF
    jr nz, @+$01                                  ; $53D8: $20 $FF

    ccf                                           ; $53DA: $3F
    rst RST_38                                    ; $53DB: $FF
    rst RST_38                                    ; $53DC: $FF
    ldh a, [rIE]                                  ; $53DD: $F0 $FF
    nop                                           ; $53DF: $00
    add b                                         ; $53E0: $80
    rst RST_38                                    ; $53E1: $FF
    nop                                           ; $53E2: $00
    rst RST_38                                    ; $53E3: $FF
    inc bc                                        ; $53E4: $03
    db $FC                                        ; $53E5: $FC
    rrca                                          ; $53E6: $0F
    di                                            ; $53E7: $F3
    ld a, h                                       ; $53E8: $7C
    adc a                                         ; $53E9: $8F
    ldh a, [$FF7F]                                ; $53EA: $F0 $7F
    add b                                         ; $53EC: $80
    rst RST_38                                    ; $53ED: $FF
    nop                                           ; $53EE: $00
    rst RST_38                                    ; $53EF: $FF
    nop                                           ; $53F0: $00
    rst RST_38                                    ; $53F1: $FF
    ld bc, $07FF                                  ; $53F2: $01 $FF $07
    cp $1E                                        ; $53F5: $FE $1E
    ld hl, sp+$7B                                 ; $53F7: $F8 $7B
    db $E4                                        ; $53F9: $E4
    ldh [$FF9F], a                                ; $53FA: $E0 $9F
    add b                                         ; $53FC: $80
    ld a, a                                       ; $53FD: $7F
    ret nz                                        ; $53FE: $C0

    rst RST_38                                    ; $53FF: $FF
    ld l, h                                       ; $5400: $6C
    cp b                                          ; $5401: $B8
    ret c                                         ; $5402: $D8

    ld [hl], b                                    ; $5403: $70
    sbc e                                         ; $5404: $9B
    ldh a, [$FF3F]                                ; $5405: $F0 $3F
    ldh [c], a                                    ; $5407: $E2
    ld a, [hl]                                    ; $5408: $7E
    call z, $B8FC                                 ; $5409: $CC $FC $B8
    ret c                                         ; $540C: $D8

    ldh a, [$FF30]                                ; $540D: $F0 $30
    ldh [$FF60], a                                ; $540F: $E0 $60
    ret nz                                        ; $5411: $C0

    ret nz                                        ; $5412: $C0

    add b                                         ; $5413: $80
    add b                                         ; $5414: $80
    nop                                           ; $5415: $00
    nop                                           ; $5416: $00
    nop                                           ; $5417: $00
    nop                                           ; $5418: $00
    nop                                           ; $5419: $00
    ret nz                                        ; $541A: $C0

    nop                                           ; $541B: $00
    ld h, b                                       ; $541C: $60
    ret nz                                        ; $541D: $C0

    ld h, b                                       ; $541E: $60
    ret nz                                        ; $541F: $C0

    nop                                           ; $5420: $00
    nop                                           ; $5421: $00
    nop                                           ; $5422: $00
    nop                                           ; $5423: $00
    nop                                           ; $5424: $00
    nop                                           ; $5425: $00
    nop                                           ; $5426: $00
    nop                                           ; $5427: $00
    nop                                           ; $5428: $00
    nop                                           ; $5429: $00
    nop                                           ; $542A: $00
    nop                                           ; $542B: $00
    nop                                           ; $542C: $00
    nop                                           ; $542D: $00
    nop                                           ; $542E: $00
    nop                                           ; $542F: $00
    nop                                           ; $5430: $00
    nop                                           ; $5431: $00
    nop                                           ; $5432: $00
    nop                                           ; $5433: $00
    nop                                           ; $5434: $00
    nop                                           ; $5435: $00
    ld bc, $0300                                  ; $5436: $01 $00 $03
    ld bc, $0306                                  ; $5439: $01 $06 $03
    inc c                                         ; $543C: $0C
    rlca                                          ; $543D: $07
    jr jr_021_544F                                ; $543E: $18 $0F

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

jr_021_544F:
    nop                                           ; $544F: $00
    rlca                                          ; $5450: $07
    nop                                           ; $5451: $00
    rra                                           ; $5452: $1F
    rlca                                          ; $5453: $07
    ld a, e                                       ; $5454: $7B
    ld e, $EF                                     ; $5455: $1E $EF
    ld a, h                                       ; $5457: $7C
    sbc a                                         ; $5458: $9F
    di                                            ; $5459: $F3
    dec a                                         ; $545A: $3D
    rst RST_28                                    ; $545B: $EF
    inc sp                                        ; $545C: $33
    cp $06                                        ; $545D: $FE $06
    db $FC                                        ; $545F: $FC
    nop                                           ; $5460: $00
    nop                                           ; $5461: $00
    nop                                           ; $5462: $00
    nop                                           ; $5463: $00
    nop                                           ; $5464: $00
    nop                                           ; $5465: $00
    nop                                           ; $5466: $00
    nop                                           ; $5467: $00
    nop                                           ; $5468: $00
    nop                                           ; $5469: $00
    nop                                           ; $546A: $00
    nop                                           ; $546B: $00
    nop                                           ; $546C: $00
    nop                                           ; $546D: $00
    nop                                           ; $546E: $00
    nop                                           ; $546F: $00
    ret nz                                        ; $5470: $C0

    nop                                           ; $5471: $00
    rst RST_18                                    ; $5472: $DF
    add b                                         ; $5473: $80
    sbc a                                         ; $5474: $9F
    rrca                                          ; $5475: $0F
    or b                                          ; $5476: $B0
    rra                                           ; $5477: $1F

jr_021_5478:
    ldh a, [$FF9F]                                ; $5478: $F0 $9F
    ldh [$FF3F], a                                ; $547A: $E0 $3F
    ld h, c                                       ; $547C: $61
    ld a, $F2                                     ; $547D: $3E $F2
    inc c                                         ; $547F: $0C
    nop                                           ; $5480: $00
    nop                                           ; $5481: $00
    nop                                           ; $5482: $00
    nop                                           ; $5483: $00
    nop                                           ; $5484: $00
    nop                                           ; $5485: $00
    nop                                           ; $5486: $00
    nop                                           ; $5487: $00
    nop                                           ; $5488: $00
    nop                                           ; $5489: $00
    nop                                           ; $548A: $00
    nop                                           ; $548B: $00
    nop                                           ; $548C: $00
    nop                                           ; $548D: $00
    nop                                           ; $548E: $00
    nop                                           ; $548F: $00
    nop                                           ; $5490: $00
    nop                                           ; $5491: $00
    inc bc                                        ; $5492: $03
    nop                                           ; $5493: $00
    add a                                         ; $5494: $87
    inc bc                                        ; $5495: $03
    adc h                                         ; $5496: $8C
    rlca                                          ; $5497: $07
    sbc b                                         ; $5498: $98
    rrca                                          ; $5499: $0F
    or b                                          ; $549A: $B0
    rra                                           ; $549B: $1F
    ld h, b                                       ; $549C: $60
    ccf                                           ; $549D: $3F
    ret nz                                        ; $549E: $C0

    ld a, a                                       ; $549F: $7F
    nop                                           ; $54A0: $00
    nop                                           ; $54A1: $00
    nop                                           ; $54A2: $00
    nop                                           ; $54A3: $00
    nop                                           ; $54A4: $00
    nop                                           ; $54A5: $00
    nop                                           ; $54A6: $00
    nop                                           ; $54A7: $00
    nop                                           ; $54A8: $00
    nop                                           ; $54A9: $00
    nop                                           ; $54AA: $00
    nop                                           ; $54AB: $00
    nop                                           ; $54AC: $00
    nop                                           ; $54AD: $00
    nop                                           ; $54AE: $00
    nop                                           ; $54AF: $00
    nop                                           ; $54B0: $00
    nop                                           ; $54B1: $00
    ldh [rP1], a                                  ; $54B2: $E0 $00
    ldh [$FFC0], a                                ; $54B4: $E0 $C0
    jr nz, jr_021_5478                            ; $54B6: $20 $C0

    ld h, $C0                                     ; $54B8: $26 $C0
    ld l, $C4                                     ; $54BA: $2E $C4
    ld a, $CC                                     ; $54BC: $3E $CC
    inc a                                         ; $54BE: $3C
    ret c                                         ; $54BF: $D8

    nop                                           ; $54C0: $00
    nop                                           ; $54C1: $00
    dec c                                         ; $54C2: $0D
    nop                                           ; $54C3: $00
    rla                                           ; $54C4: $17
    ld [$0B17], sp                                ; $54C5: $08 $17 $0B
    rra                                           ; $54C8: $1F
    inc bc                                        ; $54C9: $03
    rla                                           ; $54CA: $17
    add hl, bc                                    ; $54CB: $09
    dec bc                                        ; $54CC: $0B
    dec b                                         ; $54CD: $05
    dec bc                                        ; $54CE: $0B
    dec b                                         ; $54CF: $05
    dec b                                         ; $54D0: $05
    ld [bc], a                                    ; $54D1: $02
    dec b                                         ; $54D2: $05
    ld [bc], a                                    ; $54D3: $02
    dec b                                         ; $54D4: $05
    ld [bc], a                                    ; $54D5: $02
    dec c                                         ; $54D6: $0D
    ld [bc], a                                    ; $54D7: $02
    inc de                                        ; $54D8: $13
    inc c                                         ; $54D9: $0C
    ld hl, $3F1E                                  ; $54DA: $21 $1E $3F
    nop                                           ; $54DD: $00
    nop                                           ; $54DE: $00
    nop                                           ; $54DF: $00
    ld a, a                                       ; $54E0: $7F
    rlca                                          ; $54E1: $07
    add a                                         ; $54E2: $87
    ld a, e                                       ; $54E3: $7B
    add e                                         ; $54E4: $83
    ld a, l                                       ; $54E5: $7D
    db $E3                                        ; $54E6: $E3
    sbc h                                         ; $54E7: $9C
    db $FC                                        ; $54E8: $FC
    ldh [$FFF0], a                                ; $54E9: $E0 $F0
    ldh [$FFF0], a                                ; $54EB: $E0 $F0
    ldh [$FFF0], a                                ; $54ED: $E0 $F0
    ldh [$FFF0], a                                ; $54EF: $E0 $F0
    ldh [$FFF8], a                                ; $54F1: $E0 $F8
    ldh a, [$FFF8]                                ; $54F3: $F0 $F8
    ldh a, [$FFF8]                                ; $54F5: $F0 $F8
    ldh a, [$FFF8]                                ; $54F7: $F0 $F8
    ret nz                                        ; $54F9: $C0

jr_021_54FA:
    ret nz                                        ; $54FA: $C0

    nop                                           ; $54FB: $00
    nop                                           ; $54FC: $00
    nop                                           ; $54FD: $00
    nop                                           ; $54FE: $00
    nop                                           ; $54FF: $00
    rst RST_00                                    ; $5500: $C7
    cp b                                          ; $5501: $B8
    cp d                                          ; $5502: $BA
    ld b, h                                       ; $5503: $44
    rst RST_10                                    ; $5504: $D7
    jr z, @+$01                                   ; $5505: $28 $FF

    ld [bc], a                                    ; $5507: $02

jr_021_5508:
    rst RST_10                                    ; $5508: $D7
    add hl, hl                                    ; $5509: $29
    ei                                            ; $550A: $FB
    ld b, l                                       ; $550B: $45
    pop hl                                        ; $550C: $E1
    ld e, [hl]                                    ; $550D: $5E
    ld [hl], c                                    ; $550E: $71
    ld l, $70                                     ; $550F: $2E $70
    cpl                                           ; $5511: $2F
    jr c, jr_021_552B                             ; $5512: $38 $17

    jr c, jr_021_552D                             ; $5514: $38 $17

    dec e                                         ; $5516: $1D
    ld a, [bc]                                    ; $5517: $0A
    ld e, $09                                     ; $5518: $1E $09
    ld c, $01                                     ; $551A: $0E $01
    ld [bc], a                                    ; $551C: $02
    ld bc, $0003                                  ; $551D: $01 $03 $00
    add e                                         ; $5520: $83
    db $FC                                        ; $5521: $FC
    and $7D                                       ; $5522: $E6 $7D
    ld a, h                                       ; $5524: $7C
    dec de                                        ; $5525: $1B
    jr jr_021_552F                                ; $5526: $18 $07

    add a                                         ; $5528: $87
    nop                                           ; $5529: $00
    add b                                         ; $552A: $80

jr_021_552B:
    nop                                           ; $552B: $00
    ret nz                                        ; $552C: $C0

jr_021_552D:
    add b                                         ; $552D: $80
    ret nz                                        ; $552E: $C0

jr_021_552F:
    add b                                         ; $552F: $80
    ldh [rLCDC], a                                ; $5530: $E0 $40
    ldh [rLCDC], a                                ; $5532: $E0 $40
    ld [hl], b                                    ; $5534: $70
    and b                                         ; $5535: $A0
    ldh a, [rP1]                                  ; $5536: $F0 $00
    jr nz, jr_021_54FA                            ; $5538: $20 $C0

    db $10                                        ; $553A: $10
    ldh [$FF08], a                                ; $553B: $E0 $08
    ldh a, [$FFF8]                                ; $553D: $F0 $F8
    nop                                           ; $553F: $00
    add b                                         ; $5540: $80
    nop                                           ; $5541: $00
    ld b, b                                       ; $5542: $40
    add b                                         ; $5543: $80
    jr nz, @-$3E                                  ; $5544: $20 $C0

    jr nz, jr_021_5508                            ; $5546: $20 $C0

    db $10                                        ; $5548: $10
    ldh [rNR10], a                                ; $5549: $E0 $10
    ldh [$FFE0], a                                ; $554B: $E0 $E0
    nop                                           ; $554D: $00
    nop                                           ; $554E: $00
    nop                                           ; $554F: $00
    nop                                           ; $5550: $00
    nop                                           ; $5551: $00
    nop                                           ; $5552: $00
    nop                                           ; $5553: $00
    nop                                           ; $5554: $00
    nop                                           ; $5555: $00
    nop                                           ; $5556: $00
    nop                                           ; $5557: $00
    nop                                           ; $5558: $00
    nop                                           ; $5559: $00
    nop                                           ; $555A: $00
    nop                                           ; $555B: $00
    nop                                           ; $555C: $00
    nop                                           ; $555D: $00
    nop                                           ; $555E: $00
    nop                                           ; $555F: $00
    nop                                           ; $5560: $00
    nop                                           ; $5561: $00
    nop                                           ; $5562: $00
    nop                                           ; $5563: $00
    nop                                           ; $5564: $00
    nop                                           ; $5565: $00
    inc bc                                        ; $5566: $03
    nop                                           ; $5567: $00
    dec b                                         ; $5568: $05
    ld [bc], a                                    ; $5569: $02
    dec bc                                        ; $556A: $0B
    dec b                                         ; $556B: $05
    ccf                                           ; $556C: $3F
    nop                                           ; $556D: $00
    ld a, a                                       ; $556E: $7F
    jr nc, jr_021_55F0                            ; $556F: $30 $7F

    inc c                                         ; $5571: $0C
    rst RST_38                                    ; $5572: $FF

jr_021_5573:
    ld d, e                                       ; $5573: $53
    rst RST_38                                    ; $5574: $FF
    daa                                           ; $5575: $27
    rst RST_38                                    ; $5576: $FF
    ld e, e                                       ; $5577: $5B
    rst RST_38                                    ; $5578: $FF
    daa                                           ; $5579: $27
    rst RST_38                                    ; $557A: $FF
    ld e, e                                       ; $557B: $5B
    ld a, a                                       ; $557C: $7F
    ld [hl+], a                                   ; $557D: $22
    ld a, $00                                     ; $557E: $3E $00
    ld c, $05                                     ; $5580: $0E $05
    rra                                           ; $5582: $1F
    inc b                                         ; $5583: $04
    ccf                                           ; $5584: $3F
    rla                                           ; $5585: $17
    rst RST_38                                    ; $5586: $FF
    inc c                                         ; $5587: $0C
    cp a                                          ; $5588: $BF
    ld b, e                                       ; $5589: $43
    pop de                                        ; $558A: $D1
    xor [hl]                                      ; $558B: $AE
    ld sp, hl                                     ; $558C: $F9
    ld b, $FF                                     ; $558D: $06 $FF
    nop                                           ; $558F: $00
    inc bc                                        ; $5590: $03
    db $FD                                        ; $5591: $FD
    add c                                         ; $5592: $81
    ld a, [hl]                                    ; $5593: $7E
    add c                                         ; $5594: $81
    ld a, [hl]                                    ; $5595: $7E
    adc a                                         ; $5596: $8F
    ld [hl], b                                    ; $5597: $70
    pop af                                        ; $5598: $F1
    ld c, $81                                     ; $5599: $0E $81
    ld a, [hl]                                    ; $559B: $7E
    cp $01                                        ; $559C: $FE $01
    rra                                           ; $559E: $1F
    nop                                           ; $559F: $00
    ld l, h                                       ; $55A0: $6C
    add a                                         ; $55A1: $87
    jr c, jr_021_5573                             ; $55A2: $38 $CF

    or b                                          ; $55A4: $B0
    ld c, a                                       ; $55A5: $4F
    sub b                                         ; $55A6: $90
    ld l, a                                       ; $55A7: $6F
    rst RST_38                                    ; $55A8: $FF
    nop                                           ; $55A9: $00
    ld hl, sp+$77                                 ; $55AA: $F8 $77
    ldh a, [$FFEF]                                ; $55AC: $F0 $EF

jr_021_55AE:
    rst RST_38                                    ; $55AE: $FF
    nop                                           ; $55AF: $00
    rst RST_38                                    ; $55B0: $FF
    ret nz                                        ; $55B1: $C0

    rst RST_38                                    ; $55B2: $FF
    ldh [rIE], a                                  ; $55B3: $E0 $FF
    ldh [rIE], a                                  ; $55B5: $E0 $FF
    ret nz                                        ; $55B7: $C0

    db $FC                                        ; $55B8: $FC
    dec sp                                        ; $55B9: $3B

jr_021_55BA:
    db $FC                                        ; $55BA: $FC
    ld a, e                                       ; $55BB: $7B
    ld hl, sp+$77                                 ; $55BC: $F8 $77
    cp $07                                        ; $55BE: $FE $07
    ld [bc], a                                    ; $55C0: $02
    db $FC                                        ; $55C1: $FC
    inc b                                         ; $55C2: $04
    ld hl, sp+$18                                 ; $55C3: $F8 $18
    ldh [$FF60], a                                ; $55C5: $E0 $60
    add b                                         ; $55C7: $80
    ret nz                                        ; $55C8: $C0

    nop                                           ; $55C9: $00
    ld [hl], b                                    ; $55CA: $70
    add b                                         ; $55CB: $80
    jr jr_021_55AE                                ; $55CC: $18 $E0

    ld hl, sp+$00                                 ; $55CE: $F8 $00
    ld hl, sp+$00                                 ; $55D0: $F8 $00
    ldh a, [rP1]                                  ; $55D2: $F0 $00
    ret nz                                        ; $55D4: $C0

    nop                                           ; $55D5: $00
    ld h, b                                       ; $55D6: $60
    add b                                         ; $55D7: $80
    jr jr_021_55BA                                ; $55D8: $18 $E0

    ld b, $F8                                     ; $55DA: $06 $F8
    inc bc                                        ; $55DC: $03
    cp $03                                        ; $55DD: $FE $03
    cp $00                                        ; $55DF: $FE $00
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
    nop                                           ; $55EC: $00
    nop                                           ; $55ED: $00
    nop                                           ; $55EE: $00
    nop                                           ; $55EF: $00

jr_021_55F0:
    nop                                           ; $55F0: $00
    nop                                           ; $55F1: $00
    nop                                           ; $55F2: $00
    nop                                           ; $55F3: $00
    nop                                           ; $55F4: $00
    nop                                           ; $55F5: $00
    ld bc, $0100                                  ; $55F6: $01 $00 $01
    nop                                           ; $55F9: $00
    inc bc                                        ; $55FA: $03
    ld bc, $0103                                  ; $55FB: $01 $03 $01
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
    nop                                           ; $5608: $00
    nop                                           ; $5609: $00
    nop                                           ; $560A: $00
    nop                                           ; $560B: $00
    nop                                           ; $560C: $00
    nop                                           ; $560D: $00
    nop                                           ; $560E: $00
    nop                                           ; $560F: $00
    nop                                           ; $5610: $00
    nop                                           ; $5611: $00
    ld hl, sp+$00                                 ; $5612: $F8 $00
    db $FC                                        ; $5614: $FC
    ld a, b                                       ; $5615: $78
    add h                                         ; $5616: $84
    ld hl, sp-$7C                                 ; $5617: $F8 $84
    ld hl, sp+$05                                 ; $5619: $F8 $05
    ld hl, sp+$0B                                 ; $561B: $F8 $0B
    pop af                                        ; $561D: $F1
    sub [hl]                                      ; $561E: $96
    ld h, e                                       ; $561F: $63
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
    nop                                           ; $5630: $00
    nop                                           ; $5631: $00
    rra                                           ; $5632: $1F
    nop                                           ; $5633: $00
    ccf                                           ; $5634: $3F
    ld e, $61                                     ; $5635: $1E $61
    ld a, $C1                                     ; $5637: $3E $C1
    ld a, [hl]                                    ; $5639: $7E
    add c                                         ; $563A: $81
    cp $01                                        ; $563B: $FE $01
    cp $01                                        ; $563D: $FE $01
    cp $01                                        ; $563F: $FE $01
    nop                                           ; $5641: $00
    ld bc, $0300                                  ; $5642: $01 $00 $03
    ld bc, $0102                                  ; $5645: $01 $02 $01
    inc b                                         ; $5648: $04
    inc bc                                        ; $5649: $03
    inc b                                         ; $564A: $04
    inc bc                                        ; $564B: $03
    ld [$0807], sp                                ; $564C: $08 $07 $08
    rlca                                          ; $564F: $07
    ld [$0807], sp                                ; $5650: $08 $07 $08
    rlca                                          ; $5653: $07
    inc b                                         ; $5654: $04
    inc bc                                        ; $5655: $03
    inc b                                         ; $5656: $04
    inc bc                                        ; $5657: $03
    ld [bc], a                                    ; $5658: $02
    ld bc, $0103                                  ; $5659: $01 $03 $01
    ld bc, $0100                                  ; $565C: $01 $00 $01
    nop                                           ; $565F: $00
    ld b, $00                                     ; $5660: $06 $00
    ld c, $04                                     ; $5662: $0E $04
    dec e                                         ; $5664: $1D
    ld [$193F], sp                                ; $5665: $08 $3F $19
    ld a, a                                       ; $5668: $7F
    dec sp                                        ; $5669: $3B
    ld a, a                                       ; $566A: $7F
    ccf                                           ; $566B: $3F
    rst RST_38                                    ; $566C: $FF
    ld a, a                                       ; $566D: $7F
    db $ED                                        ; $566E: $ED
    ld a, a                                       ; $566F: $7F
    sbc c                                         ; $5670: $99
    rst RST_38                                    ; $5671: $FF
    sub e                                         ; $5672: $93
    rst RST_38                                    ; $5673: $FF
    ld bc, $03FF                                  ; $5674: $01 $FF $03
    rst RST_38                                    ; $5677: $FF
    inc bc                                        ; $5678: $03
    rst RST_38                                    ; $5679: $FF
    nop                                           ; $567A: $00
    rst RST_38                                    ; $567B: $FF
    nop                                           ; $567C: $00
    rst RST_38                                    ; $567D: $FF
    nop                                           ; $567E: $00
    rst RST_38                                    ; $567F: $FF
    nop                                           ; $5680: $00
    rst RST_38                                    ; $5681: $FF
    nop                                           ; $5682: $00
    rst RST_38                                    ; $5683: $FF
    nop                                           ; $5684: $00
    rst RST_38                                    ; $5685: $FF
    ld bc, $00FF                                  ; $5686: $01 $FF $00
    rst RST_38                                    ; $5689: $FF
    inc b                                         ; $568A: $04
    rst RST_38                                    ; $568B: $FF
    add a                                         ; $568C: $87
    rst RST_38                                    ; $568D: $FF
    add c                                         ; $568E: $81
    rst RST_38                                    ; $568F: $FF
    db $D3                                        ; $5690: $D3
    ld a, a                                       ; $5691: $7F
    jp hl                                         ; $5692: $E9


    ld a, a                                       ; $5693: $7F
    ld a, [hl]                                    ; $5694: $7E
    ccf                                           ; $5695: $3F
    ld a, a                                       ; $5696: $7F
    ccf                                           ; $5697: $3F
    ccf                                           ; $5698: $3F
    rra                                           ; $5699: $1F
    rra                                           ; $569A: $1F
    dec c                                         ; $569B: $0D
    rrca                                          ; $569C: $0F
    inc b                                         ; $569D: $04
    ld b, $00                                     ; $569E: $06 $00
    ld bc, $3300                                  ; $56A0: $01 $00 $33
    ld bc, $237F                                  ; $56A3: $01 $7F $23
    rst RST_38                                    ; $56A6: $FF
    ld c, [hl]                                    ; $56A7: $4E
    cp $BC                                        ; $56A8: $FE $BC
    db $FC                                        ; $56AA: $FC
    ld hl, sp-$04                                 ; $56AB: $F8 $FC
    ld hl, sp-$01                                 ; $56AD: $F8 $FF
    ldh a, [rIE]                                  ; $56AF: $F0 $FF
    rst RST_20                                    ; $56B1: $E7
    rst RST_38                                    ; $56B2: $FF
    rst RST_38                                    ; $56B3: $FF
    rst RST_38                                    ; $56B4: $FF
    rst RST_38                                    ; $56B5: $FF
    rst RST_38                                    ; $56B6: $FF
    rst RST_38                                    ; $56B7: $FF
    rst RST_38                                    ; $56B8: $FF
    rst RST_38                                    ; $56B9: $FF
    rst RST_38                                    ; $56BA: $FF
    rst RST_38                                    ; $56BB: $FF
    rst RST_38                                    ; $56BC: $FF
    rst RST_38                                    ; $56BD: $FF
    rst RST_38                                    ; $56BE: $FF
    rst RST_38                                    ; $56BF: $FF
    ccf                                           ; $56C0: $3F
    rst RST_38                                    ; $56C1: $FF
    rrca                                          ; $56C2: $0F
    rst RST_38                                    ; $56C3: $FF
    ccf                                           ; $56C4: $3F
    rst RST_38                                    ; $56C5: $FF
    rst RST_38                                    ; $56C6: $FF
    rst RST_38                                    ; $56C7: $FF
    ld a, a                                       ; $56C8: $7F
    rst RST_38                                    ; $56C9: $FF
    rst RST_38                                    ; $56CA: $FF
    rst RST_38                                    ; $56CB: $FF
    rst RST_38                                    ; $56CC: $FF
    ldh a, [rIE]                                  ; $56CD: $F0 $FF
    ldh a, [$FF7F]                                ; $56CF: $F0 $7F
    db $FC                                        ; $56D1: $FC
    rst RST_38                                    ; $56D2: $FF
    rst RST_38                                    ; $56D3: $FF
    rst RST_38                                    ; $56D4: $FF
    rst RST_38                                    ; $56D5: $FF
    rst RST_38                                    ; $56D6: $FF
    cp a                                          ; $56D7: $BF
    rst RST_38                                    ; $56D8: $FF
    add a                                         ; $56D9: $87
    rst RST_38                                    ; $56DA: $FF
    ret c                                         ; $56DB: $D8

    cp $DC                                        ; $56DC: $FE $DC
    cp $EC                                        ; $56DE: $FE $EC
    jr nc, jr_021_56E2                            ; $56E0: $30 $00

jr_021_56E2:
    ldh a, [rNR41]                                ; $56E2: $F0 $20
    rst RST_38                                    ; $56E4: $FF
    ret nz                                        ; $56E5: $C0

    rst RST_18                                    ; $56E6: $DF
    adc a                                         ; $56E7: $8F
    or b                                          ; $56E8: $B0
    rra                                           ; $56E9: $1F
    jr nc, jr_021_570B                            ; $56EA: $30 $1F

    jr nz, jr_021_572D                            ; $56EC: $20 $3F

    ld a, c                                       ; $56EE: $79
    ld b, $FB                                     ; $56EF: $06 $FB
    inc [hl]                                      ; $56F1: $34
    rst RST_38                                    ; $56F2: $FF
    db $E3                                        ; $56F3: $E3
    rst RST_38                                    ; $56F4: $FF
    rst RST_38                                    ; $56F5: $FF
    rst RST_38                                    ; $56F6: $FF
    rst RST_38                                    ; $56F7: $FF
    rst RST_38                                    ; $56F8: $FF
    db $FC                                        ; $56F9: $FC
    rst RST_38                                    ; $56FA: $FF
    ldh a, [rIE]                                  ; $56FB: $F0 $FF
    adc $FE                                       ; $56FD: $CE $FE
    sbc l                                         ; $56FF: $9D
    rst RST_38                                    ; $5700: $FF
    nop                                           ; $5701: $00
    rst RST_38                                    ; $5702: $FF
    rst RST_38                                    ; $5703: $FF
    rst RST_38                                    ; $5704: $FF
    rst RST_38                                    ; $5705: $FF
    rst RST_38                                    ; $5706: $FF
    rst RST_38                                    ; $5707: $FF
    rst RST_38                                    ; $5708: $FF
    ld hl, sp-$01                                 ; $5709: $F8 $FF

jr_021_570B:
    add a                                         ; $570B: $87
    rst RST_38                                    ; $570C: $FF
    ld hl, sp-$01                                 ; $570D: $F8 $FF
    rst RST_38                                    ; $570F: $FF
    rst RST_38                                    ; $5710: $FF
    ld a, a                                       ; $5711: $7F
    rst RST_38                                    ; $5712: $FF
    add e                                         ; $5713: $83
    rst RST_30                                    ; $5714: $F7

jr_021_5715:
    ld l, b                                       ; $5715: $68
    ld a, [$FF25]                                 ; $5716: $FA $25 $FF
    nop                                           ; $5719: $00
    ld a, [$FFC5]                                 ; $571A: $FA $C5 $FF
    ldh a, [$FFFE]                                ; $571D: $F0 $FE
    ld sp, hl                                     ; $571F: $F9
    inc bc                                        ; $5720: $03
    nop                                           ; $5721: $00
    add a                                         ; $5722: $87
    inc bc                                        ; $5723: $03
    adc h                                         ; $5724: $8C
    rlca                                          ; $5725: $07

jr_021_5726:
    sbc c                                         ; $5726: $99
    ld c, $BF                                     ; $5727: $0E $BF
    ld de, $0F7F                                  ; $5729: $11 $7F $0F

jr_021_572C:
    rst RST_38                                    ; $572C: $FF

jr_021_572D:
    ld a, h                                       ; $572D: $7C
    db $FC                                        ; $572E: $FC
    ei                                            ; $572F: $FB
    ld hl, sp-$19                                 ; $5730: $F8 $E7
    db $E3                                        ; $5732: $E3
    inc e                                         ; $5733: $1C
    inc c                                         ; $5734: $0C
    ldh a, [$FFF8]                                ; $5735: $F0 $F8
    nop                                           ; $5737: $00
    ld c, $F0                                     ; $5738: $0E $F0
    inc bc                                        ; $573A: $03
    db $FC                                        ; $573B: $FC
    rst RST_38                                    ; $573C: $FF
    nop                                           ; $573D: $00
    rst RST_38                                    ; $573E: $FF
    rst RST_38                                    ; $573F: $FF
    rst RST_38                                    ; $5740: $FF
    rst RST_38                                    ; $5741: $FF
    rst RST_38                                    ; $5742: $FF
    ret nz                                        ; $5743: $C0

    db $EC                                        ; $5744: $EC
    db $10                                        ; $5745: $10
    add e                                         ; $5746: $83
    ld a, h                                       ; $5747: $7C
    add b                                         ; $5748: $80
    ld a, a                                       ; $5749: $7F
    ldh a, [$FF8F]                                ; $574A: $F0 $8F
    rst RST_38                                    ; $574C: $FF
    ldh a, [rIE]                                  ; $574D: $F0 $FF
    rst RST_38                                    ; $574F: $FF
    rst RST_38                                    ; $5750: $FF
    nop                                           ; $5751: $00
    rst RST_28                                    ; $5752: $EF
    inc bc                                        ; $5753: $03
    db $E3                                        ; $5754: $E3

jr_021_5755:
    ld b, b                                       ; $5755: $40
    ldh a, [rNR41]                                ; $5756: $F0 $20
    ld [hl], b                                    ; $5758: $70
    and b                                         ; $5759: $A0
    jr c, jr_021_572C                             ; $575A: $38 $D0

    cp b                                          ; $575C: $B8
    ld d, b                                       ; $575D: $50
    call c, $E0A8                                 ; $575E: $DC $A8 $E0
    nop                                           ; $5761: $00
    ldh [$FFC0], a                                ; $5762: $E0 $C0
    jr nz, jr_021_5726                            ; $5764: $20 $C0

    ldh a, [rP1]                                  ; $5766: $F0 $00
    ldh a, [$FFE0]                                ; $5768: $F0 $E0

jr_021_576A:
    ldh [$FF80], a                                ; $576A: $E0 $80
    and b                                         ; $576C: $A0
    ld b, b                                       ; $576D: $40
    ld b, b                                       ; $576E: $40
    add b                                         ; $576F: $80
    add b                                         ; $5770: $80
    nop                                           ; $5771: $00
    nop                                           ; $5772: $00
    nop                                           ; $5773: $00
    nop                                           ; $5774: $00
    nop                                           ; $5775: $00
    nop                                           ; $5776: $00
    nop                                           ; $5777: $00
    nop                                           ; $5778: $00
    nop                                           ; $5779: $00
    nop                                           ; $577A: $00
    nop                                           ; $577B: $00
    rst RST_38                                    ; $577C: $FF
    nop                                           ; $577D: $00
    rst RST_38                                    ; $577E: $FF
    cp $FE                                        ; $577F: $FE $FE
    ret nz                                        ; $5781: $C0

    ret nz                                        ; $5782: $C0

    nop                                           ; $5783: $00
    nop                                           ; $5784: $00
    nop                                           ; $5785: $00
    nop                                           ; $5786: $00
    nop                                           ; $5787: $00
    ret nz                                        ; $5788: $C0

    nop                                           ; $5789: $00
    ld [hl], b                                    ; $578A: $70
    ret nz                                        ; $578B: $C0

    ld l, b                                       ; $578C: $68
    ret nc                                        ; $578D: $D0

    db $E4                                        ; $578E: $E4
    jr jr_021_5755                                ; $578F: $18 $C4

    jr c, jr_021_5715                             ; $5791: $38 $82

    ld a, h                                       ; $5793: $7C
    ld [bc], a                                    ; $5794: $02
    db $FC                                        ; $5795: $FC
    db $FC                                        ; $5796: $FC
    nop                                           ; $5797: $00
    nop                                           ; $5798: $00
    nop                                           ; $5799: $00
    nop                                           ; $579A: $00
    nop                                           ; $579B: $00
    nop                                           ; $579C: $00
    nop                                           ; $579D: $00
    nop                                           ; $579E: $00
    nop                                           ; $579F: $00
    rst RST_38                                    ; $57A0: $FF
    ld l, [hl]                                    ; $57A1: $6E
    rst RST_38                                    ; $57A2: $FF
    ld d, $BF                                     ; $57A3: $16 $BF
    ld b, [hl]                                    ; $57A5: $46
    ld a, a                                       ; $57A6: $7F
    sbc b                                         ; $57A7: $98
    jr c, jr_021_576A                             ; $57A8: $38 $C0

    ldh [rP1], a                                  ; $57AA: $E0 $00
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
    nop                                           ; $57B8: $00
    nop                                           ; $57B9: $00
    nop                                           ; $57BA: $00
    nop                                           ; $57BB: $00
    nop                                           ; $57BC: $00
    nop                                           ; $57BD: $00
    nop                                           ; $57BE: $00
    nop                                           ; $57BF: $00
    rst RST_38                                    ; $57C0: $FF
    ld a, $3F                                     ; $57C1: $3E $3F
    rrca                                          ; $57C3: $0F
    rrca                                          ; $57C4: $0F
    nop                                           ; $57C5: $00
    rlca                                          ; $57C6: $07
    ld [bc], a                                    ; $57C7: $02
    inc bc                                        ; $57C8: $03
    ld bc, $0103                                  ; $57C9: $01 $03 $01
    ld bc, $0000                                  ; $57CC: $01 $00 $00
    nop                                           ; $57CF: $00
    nop                                           ; $57D0: $00
    nop                                           ; $57D1: $00
    nop                                           ; $57D2: $00
    nop                                           ; $57D3: $00
    nop                                           ; $57D4: $00
    nop                                           ; $57D5: $00
    nop                                           ; $57D6: $00
    nop                                           ; $57D7: $00
    nop                                           ; $57D8: $00
    nop                                           ; $57D9: $00
    nop                                           ; $57DA: $00
    nop                                           ; $57DB: $00
    nop                                           ; $57DC: $00
    nop                                           ; $57DD: $00
    nop                                           ; $57DE: $00
    nop                                           ; $57DF: $00
    call c, Call_000_0E28                         ; $57E0: $DC $28 $0E
    db $F4                                        ; $57E3: $F4
    cp [hl]                                       ; $57E4: $BE
    ld b, b                                       ; $57E5: $40
    call nz, $C238                                ; $57E6: $C4 $38 $C2
    inc a                                         ; $57E9: $3C
    ld b, c                                       ; $57EA: $41
    ld a, $7F                                     ; $57EB: $3E $7F
    nop                                           ; $57ED: $00
    nop                                           ; $57EE: $00
    nop                                           ; $57EF: $00
    nop                                           ; $57F0: $00
    nop                                           ; $57F1: $00
    nop                                           ; $57F2: $00
    nop                                           ; $57F3: $00
    nop                                           ; $57F4: $00
    nop                                           ; $57F5: $00
    nop                                           ; $57F6: $00
    nop                                           ; $57F7: $00
    nop                                           ; $57F8: $00
    nop                                           ; $57F9: $00
    nop                                           ; $57FA: $00
    nop                                           ; $57FB: $00
    nop                                           ; $57FC: $00
    nop                                           ; $57FD: $00
    nop                                           ; $57FE: $00
    nop                                           ; $57FF: $00
    ld bc, $0200                                  ; $5800: $01 $00 $02
    ld bc, $0304                                  ; $5803: $01 $04 $03
    rlca                                          ; $5806: $07
    nop                                           ; $5807: $00
    nop                                           ; $5808: $00
    nop                                           ; $5809: $00
    nop                                           ; $580A: $00
    nop                                           ; $580B: $00
    nop                                           ; $580C: $00
    nop                                           ; $580D: $00
    nop                                           ; $580E: $00
    nop                                           ; $580F: $00
    nop                                           ; $5810: $00
    nop                                           ; $5811: $00
    nop                                           ; $5812: $00
    nop                                           ; $5813: $00
    nop                                           ; $5814: $00
    nop                                           ; $5815: $00
    nop                                           ; $5816: $00
    nop                                           ; $5817: $00
    nop                                           ; $5818: $00
    nop                                           ; $5819: $00
    nop                                           ; $581A: $00
    nop                                           ; $581B: $00
    nop                                           ; $581C: $00
    nop                                           ; $581D: $00
    nop                                           ; $581E: $00
    nop                                           ; $581F: $00
    nop                                           ; $5820: $00
    nop                                           ; $5821: $00
    nop                                           ; $5822: $00
    nop                                           ; $5823: $00
    nop                                           ; $5824: $00
    nop                                           ; $5825: $00
    inc bc                                        ; $5826: $03
    nop                                           ; $5827: $00
    rlca                                          ; $5828: $07
    inc bc                                        ; $5829: $03
    ld c, $07                                     ; $582A: $0E $07
    inc a                                         ; $582C: $3C
    rlca                                          ; $582D: $07
    ld a, a                                       ; $582E: $7F
    ccf                                           ; $582F: $3F
    ld a, a                                       ; $5830: $7F
    ccf                                           ; $5831: $3F
    rst RST_38                                    ; $5832: $FF
    ld a, a                                       ; $5833: $7F
    rst RST_38                                    ; $5834: $FF
    ld a, a                                       ; $5835: $7F
    rst RST_38                                    ; $5836: $FF
    ld a, a                                       ; $5837: $7F
    rst RST_38                                    ; $5838: $FF
    ld a, a                                       ; $5839: $7F
    rst RST_38                                    ; $583A: $FF
    ld a, a                                       ; $583B: $7F
    ld b, c                                       ; $583C: $41
    ld a, $3E                                     ; $583D: $3E $3E
    nop                                           ; $583F: $00
    nop                                           ; $5840: $00
    nop                                           ; $5841: $00
    nop                                           ; $5842: $00
    nop                                           ; $5843: $00
    nop                                           ; $5844: $00
    nop                                           ; $5845: $00
    ld bc, $0100                                  ; $5846: $01 $00 $01
    nop                                           ; $5849: $00
    ld [bc], a                                    ; $584A: $02
    ld bc, $0103                                  ; $584B: $01 $03 $01
    inc b                                         ; $584E: $04
    inc bc                                        ; $584F: $03
    ld [$1807], sp                                ; $5850: $08 $07 $18
    rlca                                          ; $5853: $07
    jr nz, @+$21                                  ; $5854: $20 $1F

    db $E3                                        ; $5856: $E3
    inc e                                         ; $5857: $1C
    rst RST_08                                    ; $5858: $CF
    di                                            ; $5859: $F3
    ld bc, $01FE                                  ; $585A: $01 $FE $01
    cp $F0                                        ; $585D: $FE $F0
    rst RST_38                                    ; $585F: $FF
    nop                                           ; $5860: $00
    nop                                           ; $5861: $00
    rst RST_38                                    ; $5862: $FF
    nop                                           ; $5863: $00
    add c                                         ; $5864: $81
    ld a, [hl]                                    ; $5865: $7E
    ld a, [$E2FC]                                 ; $5866: $FA $FC $E2
    db $FC                                        ; $5869: $FC
    dec b                                         ; $586A: $05
    ld hl, sp-$1D                                 ; $586B: $F8 $E3
    db $FD                                        ; $586D: $FD
    rra                                           ; $586E: $1F
    db $E3                                        ; $586F: $E3
    ld l, h                                       ; $5870: $6C
    add a                                         ; $5871: $87
    ccf                                           ; $5872: $3F
    rst RST_08                                    ; $5873: $CF
    ld a, $CF                                     ; $5874: $3E $CF
    sub b                                         ; $5876: $90
    ld l, a                                       ; $5877: $6F
    rst RST_38                                    ; $5878: $FF
    nop                                           ; $5879: $00
    rst RST_38                                    ; $587A: $FF
    ld a, a                                       ; $587B: $7F
    ldh a, [rIE]                                  ; $587C: $F0 $FF
    nop                                           ; $587E: $00
    rst RST_38                                    ; $587F: $FF
    nop                                           ; $5880: $00
    nop                                           ; $5881: $00
    rst RST_18                                    ; $5882: $DF
    nop                                           ; $5883: $00
    and b                                         ; $5884: $A0
    rra                                           ; $5885: $1F
    ld h, c                                       ; $5886: $61
    ld a, $FD                                     ; $5887: $3E $FD
    ld a, [hl]                                    ; $5889: $7E
    pop hl                                        ; $588A: $E1
    cp $F9                                        ; $588B: $FE $F9
    cp $00                                        ; $588D: $FE $00
    rst RST_38                                    ; $588F: $FF
    inc bc                                        ; $5890: $03
    db $FC                                        ; $5891: $FC
    call nz, Call_000_03F8                        ; $5892: $C4 $F8 $03
    db $FC                                        ; $5895: $FC
    ld a, h                                       ; $5896: $7C
    add b                                         ; $5897: $80
    ret nz                                        ; $5898: $C0

    nop                                           ; $5899: $00
    or b                                          ; $589A: $B0
    ret nz                                        ; $589B: $C0

    rrca                                          ; $589C: $0F
    ldh a, [rTMA]                                 ; $589D: $F0 $06
    ld hl, sp+$00                                 ; $589F: $F8 $00
    nop                                           ; $58A1: $00
    db $FC                                        ; $58A2: $FC
    nop                                           ; $58A3: $00
    ld h, b                                       ; $58A4: $60
    add b                                         ; $58A5: $80
    add b                                         ; $58A6: $80
    nop                                           ; $58A7: $00
    nop                                           ; $58A8: $00
    nop                                           ; $58A9: $00
    nop                                           ; $58AA: $00
    nop                                           ; $58AB: $00
    ld hl, sp+$00                                 ; $58AC: $F8 $00
    ret nz                                        ; $58AE: $C0

    nop                                           ; $58AF: $00
    nop                                           ; $58B0: $00
    nop                                           ; $58B1: $00
    nop                                           ; $58B2: $00
    nop                                           ; $58B3: $00
    nop                                           ; $58B4: $00
    nop                                           ; $58B5: $00
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
    rst RST_38                                    ; $58C0: $FF
    rst RST_38                                    ; $58C1: $FF
    db $FC                                        ; $58C2: $FC
    rst RST_38                                    ; $58C3: $FF
    nop                                           ; $58C4: $00
    rst RST_38                                    ; $58C5: $FF
    rst RST_38                                    ; $58C6: $FF
    rst RST_38                                    ; $58C7: $FF
    ldh [rIE], a                                  ; $58C8: $E0 $FF
    cp $FF                                        ; $58CA: $FE $FF
    ldh a, [rIF]                                  ; $58CC: $F0 $0F
    rra                                           ; $58CE: $1F
    rlca                                          ; $58CF: $07
    ld a, a                                       ; $58D0: $7F
    rrca                                          ; $58D1: $0F
    cp $7F                                        ; $58D2: $FE $7F
    nop                                           ; $58D4: $00
    rst RST_38                                    ; $58D5: $FF
    inc bc                                        ; $58D6: $03
    db $FC                                        ; $58D7: $FC
    call c, Call_000_10E0                         ; $58D8: $DC $E0 $10
    ldh [rNR34], a                                ; $58DB: $E0 $1E
    ldh [$FF0C], a                                ; $58DD: $E0 $0C
    ldh a, [$FFF0]                                ; $58DF: $F0 $F0
    rst RST_38                                    ; $58E1: $FF
    nop                                           ; $58E2: $00
    rst RST_38                                    ; $58E3: $FF
    nop                                           ; $58E4: $00
    rst RST_38                                    ; $58E5: $FF
    nop                                           ; $58E6: $00
    rst RST_38                                    ; $58E7: $FF
    nop                                           ; $58E8: $00
    rst RST_38                                    ; $58E9: $FF
    nop                                           ; $58EA: $00
    rst RST_38                                    ; $58EB: $FF
    nop                                           ; $58EC: $00
    rst RST_38                                    ; $58ED: $FF
    ld hl, sp-$01                                 ; $58EE: $F8 $FF
    jp Jump_000_02FC                              ; $58F0: $C3 $FC $02


    db $FC                                        ; $58F3: $FC

jr_021_58F4:
    ld bc, $80FE                                  ; $58F4: $01 $FE $80
    ld a, a                                       ; $58F7: $7F
    db $FC                                        ; $58F8: $FC
    ld a, a                                       ; $58F9: $7F
    ldh a, [$FF7F]                                ; $58FA: $F0 $7F
    ldh [$FF7F], a                                ; $58FC: $E0 $7F
    ld a, a                                       ; $58FE: $7F
    ccf                                           ; $58FF: $3F
    ld [$30F0], sp                                ; $5900: $08 $F0 $30
    ret nz                                        ; $5903: $C0

    ret nz                                        ; $5904: $C0

    nop                                           ; $5905: $00
    ld h, b                                       ; $5906: $60
    add b                                         ; $5907: $80
    rra                                           ; $5908: $1F
    ldh [rP1], a                                  ; $5909: $E0 $00
    rst RST_38                                    ; $590B: $FF
    ld bc, $00FE                                  ; $590C: $01 $FE $00
    rst RST_38                                    ; $590F: $FF
    db $FC                                        ; $5910: $FC
    rst RST_38                                    ; $5911: $FF

jr_021_5912:
    ldh a, [$FF7F]                                ; $5912: $F0 $7F
    ld h, b                                       ; $5914: $60
    rra                                           ; $5915: $1F

jr_021_5916:
    ld hl, sp+$07                                 ; $5916: $F8 $07
    ld b, a                                       ; $5918: $47
    add b                                         ; $5919: $80
    add b                                         ; $591A: $80
    nop                                           ; $591B: $00
    ld a, a                                       ; $591C: $7F
    add b                                         ; $591D: $80
    inc bc                                        ; $591E: $03
    db $FC                                        ; $591F: $FC
    nop                                           ; $5920: $00
    nop                                           ; $5921: $00
    nop                                           ; $5922: $00
    nop                                           ; $5923: $00
    nop                                           ; $5924: $00
    nop                                           ; $5925: $00
    nop                                           ; $5926: $00
    nop                                           ; $5927: $00
    ld hl, sp+$00                                 ; $5928: $F8 $00
    ld b, b                                       ; $592A: $40
    add b                                         ; $592B: $80
    add b                                         ; $592C: $80
    nop                                           ; $592D: $00
    ld h, b                                       ; $592E: $60
    add b                                         ; $592F: $80
    jr jr_021_5912                                ; $5930: $18 $E0

    jr nc, jr_021_58F4                            ; $5932: $30 $C0

    jr jr_021_5916                                ; $5934: $18 $E0

    ld b, $F8                                     ; $5936: $06 $F8
    rst RST_38                                    ; $5938: $FF
    nop                                           ; $5939: $00
    nop                                           ; $593A: $00
    nop                                           ; $593B: $00
    ret nz                                        ; $593C: $C0

    nop                                           ; $593D: $00
    nop                                           ; $593E: $00
    nop                                           ; $593F: $00
    nop                                           ; $5940: $00
    nop                                           ; $5941: $00
    dec c                                         ; $5942: $0D
    nop                                           ; $5943: $00
    ld a, [de]                                    ; $5944: $1A
    dec c                                         ; $5945: $0D
    jr jr_021_5957                                ; $5946: $18 $0F

    rra                                           ; $5948: $1F
    rrca                                          ; $5949: $0F
    ld e, $0F                                     ; $594A: $1E $0F
    inc c                                         ; $594C: $0C
    rlca                                          ; $594D: $07
    ld [$0407], sp                                ; $594E: $08 $07 $04
    inc bc                                        ; $5951: $03
    rlca                                          ; $5952: $07
    inc bc                                        ; $5953: $03
    rlca                                          ; $5954: $07
    inc bc                                        ; $5955: $03
    rrca                                          ; $5956: $0F

jr_021_5957:
    inc bc                                        ; $5957: $03
    db $10                                        ; $5958: $10
    rrca                                          ; $5959: $0F
    ld hl, $3F1E                                  ; $595A: $21 $1E $3F
    nop                                           ; $595D: $00
    nop                                           ; $595E: $00
    nop                                           ; $595F: $00
    db $10                                        ; $5960: $10
    ldh [$FF88], a                                ; $5961: $E0 $88
    ldh a, [$FF08]                                ; $5963: $F0 $08
    ldh a, [$FFE7]                                ; $5965: $F0 $E7
    ld hl, sp+$3E                                 ; $5967: $F8 $3E
    ret nz                                        ; $5969: $C0

    ret nz                                        ; $596A: $C0

    nop                                           ; $596B: $00
    nop                                           ; $596C: $00
    nop                                           ; $596D: $00
    nop                                           ; $596E: $00
    nop                                           ; $596F: $00
    nop                                           ; $5970: $00
    nop                                           ; $5971: $00
    nop                                           ; $5972: $00
    nop                                           ; $5973: $00
    nop                                           ; $5974: $00
    nop                                           ; $5975: $00
    nop                                           ; $5976: $00
    nop                                           ; $5977: $00
    nop                                           ; $5978: $00
    nop                                           ; $5979: $00
    nop                                           ; $597A: $00
    nop                                           ; $597B: $00
    nop                                           ; $597C: $00
    nop                                           ; $597D: $00
    nop                                           ; $597E: $00
    nop                                           ; $597F: $00
    ld a, h                                       ; $5980: $7C
    ccf                                           ; $5981: $3F
    jr nc, jr_021_59A3                            ; $5982: $30 $1F

    jr nc, jr_021_59A5                            ; $5984: $30 $1F

    sbc h                                         ; $5986: $9C
    rrca                                          ; $5987: $0F
    rra                                           ; $5988: $1F
    rrca                                          ; $5989: $0F
    ld c, $01                                     ; $598A: $0E $01
    ld [bc], a                                    ; $598C: $02
    ld bc, $0003                                  ; $598D: $01 $03 $00
    nop                                           ; $5990: $00
    nop                                           ; $5991: $00
    nop                                           ; $5992: $00
    nop                                           ; $5993: $00
    nop                                           ; $5994: $00
    nop                                           ; $5995: $00
    nop                                           ; $5996: $00
    nop                                           ; $5997: $00
    nop                                           ; $5998: $00
    nop                                           ; $5999: $00
    nop                                           ; $599A: $00
    nop                                           ; $599B: $00
    nop                                           ; $599C: $00
    nop                                           ; $599D: $00
    nop                                           ; $599E: $00
    nop                                           ; $599F: $00
    inc c                                         ; $59A0: $0C
    ldh a, [$FF30]                                ; $59A1: $F0 $30

jr_021_59A3:
    ret nz                                        ; $59A3: $C0

    db $10                                        ; $59A4: $10

jr_021_59A5:
    ldh [$FF30], a                                ; $59A5: $E0 $30
    ret nz                                        ; $59A7: $C0

    and b                                         ; $59A8: $A0
    ret nz                                        ; $59A9: $C0

    db $10                                        ; $59AA: $10
    ldh [$FF08], a                                ; $59AB: $E0 $08
    ldh a, [$FFF8]                                ; $59AD: $F0 $F8
    nop                                           ; $59AF: $00
    nop                                           ; $59B0: $00
    nop                                           ; $59B1: $00
    nop                                           ; $59B2: $00
    nop                                           ; $59B3: $00
    nop                                           ; $59B4: $00
    nop                                           ; $59B5: $00
    nop                                           ; $59B6: $00
    nop                                           ; $59B7: $00
    nop                                           ; $59B8: $00
    nop                                           ; $59B9: $00
    nop                                           ; $59BA: $00
    nop                                           ; $59BB: $00
    nop                                           ; $59BC: $00
    nop                                           ; $59BD: $00
    nop                                           ; $59BE: $00
    nop                                           ; $59BF: $00
    add b                                         ; $59C0: $80
    ld a, a                                       ; $59C1: $7F
    add b                                         ; $59C2: $80
    ld a, a                                       ; $59C3: $7F
    add b                                         ; $59C4: $80
    ld a, a                                       ; $59C5: $7F
    adc b                                         ; $59C6: $88
    ld [hl], a                                    ; $59C7: $77
    adc c                                         ; $59C8: $89
    halt                                          ; $59C9: $76
    adc c                                         ; $59CA: $89
    halt                                          ; $59CB: $76
    adc d                                         ; $59CC: $8A
    ld [hl], h                                    ; $59CD: $74
    sub [hl]                                      ; $59CE: $96
    ld h, b                                       ; $59CF: $60
    sub [hl]                                      ; $59D0: $96
    ld h, b                                       ; $59D1: $60
    sub h                                         ; $59D2: $94
    ld h, b                                       ; $59D3: $60
    and h                                         ; $59D4: $A4
    ld b, b                                       ; $59D5: $40
    and b                                         ; $59D6: $A0
    ld b, b                                       ; $59D7: $40
    and b                                         ; $59D8: $A0
    ld b, b                                       ; $59D9: $40
    ret nz                                        ; $59DA: $C0

    nop                                           ; $59DB: $00
    ret nz                                        ; $59DC: $C0

    nop                                           ; $59DD: $00
    add b                                         ; $59DE: $80
    nop                                           ; $59DF: $00
    inc hl                                        ; $59E0: $23
    cp $47                                        ; $59E1: $FE $47
    db $FC                                        ; $59E3: $FC
    ld c, a                                       ; $59E4: $4F
    ld a, [$FA8F]                                 ; $59E5: $FA $8F $FA
    rra                                           ; $59E8: $1F
    di                                            ; $59E9: $F3
    ccf                                           ; $59EA: $3F
    and $6F                                       ; $59EB: $E6 $6F
    pop de                                        ; $59ED: $D1
    ld a, b                                       ; $59EE: $78
    rst RST_10                                    ; $59EF: $D7
    db $FC                                        ; $59F0: $FC
    add e                                         ; $59F1: $83
    db $FD                                        ; $59F2: $FD
    and d                                         ; $59F3: $A2
    cp a                                          ; $59F4: $BF
    ld b, b                                       ; $59F5: $40
    sbc a                                         ; $59F6: $9F
    ld l, l                                       ; $59F7: $6D
    ld e, [hl]                                    ; $59F8: $5E
    ld l, e                                       ; $59F9: $6B
    ld a, a                                       ; $59FA: $7F
    inc bc                                        ; $59FB: $03
    ld b, a                                       ; $59FC: $47
    jr c, jr_021_5A7A                             ; $59FD: $38 $7B

    dec a                                         ; $59FF: $3D
    ld b, b                                       ; $5A00: $40
    cp a                                          ; $5A01: $BF
    ret nz                                        ; $5A02: $C0

    ccf                                           ; $5A03: $3F
    ld b, b                                       ; $5A04: $40
    cp a                                          ; $5A05: $BF
    and a                                         ; $5A06: $A7
    ld e, b                                       ; $5A07: $58
    rst RST_38                                    ; $5A08: $FF
    add b                                         ; $5A09: $80
    rst RST_18                                    ; $5A0A: $DF
    ld l, $DF                                     ; $5A0B: $2E $DF
    xor [hl]                                      ; $5A0D: $AE
    cp a                                          ; $5A0E: $BF
    ld b, d                                       ; $5A0F: $42
    rst RST_38                                    ; $5A10: $FF
    jr c, @+$01                                   ; $5A11: $38 $FF

    ld [hl], b                                    ; $5A13: $70
    rst RST_38                                    ; $5A14: $FF
    nop                                           ; $5A15: $00
    ccf                                           ; $5A16: $3F
    ret nc                                        ; $5A17: $D0

    ld a, a                                       ; $5A18: $7F
    ret nc                                        ; $5A19: $D0

    rst RST_38                                    ; $5A1A: $FF
    cp h                                          ; $5A1B: $BC
    db $FC                                        ; $5A1C: $FC
    ld [hl], e                                    ; $5A1D: $73
    ldh a, [$FFEF]                                ; $5A1E: $F0 $EF
    nop                                           ; $5A20: $00
    nop                                           ; $5A21: $00
    nop                                           ; $5A22: $00
    nop                                           ; $5A23: $00
    nop                                           ; $5A24: $00
    nop                                           ; $5A25: $00
    nop                                           ; $5A26: $00
    nop                                           ; $5A27: $00
    ld e, $00                                     ; $5A28: $1E $00
    ccf                                           ; $5A2A: $3F
    ld e, $61                                     ; $5A2B: $1E $61
    ld a, $C1                                     ; $5A2D: $3E $C1
    ld a, [hl]                                    ; $5A2F: $7E
    add c                                         ; $5A30: $81
    ld a, [hl]                                    ; $5A31: $7E
    add c                                         ; $5A32: $81
    ld a, [hl]                                    ; $5A33: $7E
    add c                                         ; $5A34: $81
    ld a, [hl]                                    ; $5A35: $7E
    add d                                         ; $5A36: $82
    ld a, h                                       ; $5A37: $7C
    add h                                         ; $5A38: $84
    ld a, b                                       ; $5A39: $78
    sbc b                                         ; $5A3A: $98
    ld h, b                                       ; $5A3B: $60
    ldh [rP1], a                                  ; $5A3C: $E0 $00
    add b                                         ; $5A3E: $80
    nop                                           ; $5A3F: $00
    ld bc, $0300                                  ; $5A40: $01 $00 $03
    ld bc, $0103                                  ; $5A43: $01 $03 $01
    dec b                                         ; $5A46: $05
    inc bc                                        ; $5A47: $03
    dec b                                         ; $5A48: $05
    inc bc                                        ; $5A49: $03
    dec bc                                        ; $5A4A: $0B
    rlca                                          ; $5A4B: $07
    dec bc                                        ; $5A4C: $0B
    rlca                                          ; $5A4D: $07
    ld [de], a                                    ; $5A4E: $12
    rrca                                          ; $5A4F: $0F
    ld [de], a                                    ; $5A50: $12
    rrca                                          ; $5A51: $0F
    jr nz, jr_021_5A73                            ; $5A52: $20 $1F

    jr nz, jr_021_5A75                            ; $5A54: $20 $1F

    jr nz, jr_021_5A77                            ; $5A56: $20 $1F

    ld b, b                                       ; $5A58: $40
    ccf                                           ; $5A59: $3F
    ld b, b                                       ; $5A5A: $40
    ccf                                           ; $5A5B: $3F
    ld b, b                                       ; $5A5C: $40
    ccf                                           ; $5A5D: $3F
    ld b, b                                       ; $5A5E: $40
    ccf                                           ; $5A5F: $3F
    nop                                           ; $5A60: $00
    nop                                           ; $5A61: $00
    nop                                           ; $5A62: $00
    nop                                           ; $5A63: $00
    nop                                           ; $5A64: $00
    nop                                           ; $5A65: $00
    rrca                                          ; $5A66: $0F
    nop                                           ; $5A67: $00
    rra                                           ; $5A68: $1F
    rrca                                          ; $5A69: $0F
    ccf                                           ; $5A6A: $3F
    rra                                           ; $5A6B: $1F
    ld a, a                                       ; $5A6C: $7F
    ccf                                           ; $5A6D: $3F
    ei                                            ; $5A6E: $FB
    ld a, a                                       ; $5A6F: $7F
    rst RST_30                                    ; $5A70: $F7
    rst RST_38                                    ; $5A71: $FF
    rst RST_28                                    ; $5A72: $EF

jr_021_5A73:
    rst RST_38                                    ; $5A73: $FF
    rst RST_08                                    ; $5A74: $CF

jr_021_5A75:
    rst RST_38                                    ; $5A75: $FF
    adc a                                         ; $5A76: $8F

jr_021_5A77:
    rst RST_38                                    ; $5A77: $FF
    sbc a                                         ; $5A78: $9F
    rst RST_38                                    ; $5A79: $FF

jr_021_5A7A:
    rra                                           ; $5A7A: $1F
    rst RST_38                                    ; $5A7B: $FF
    dec a                                         ; $5A7C: $3D
    rst RST_38                                    ; $5A7D: $FF
    inc sp                                        ; $5A7E: $33
    cp $00                                        ; $5A7F: $FE $00
    nop                                           ; $5A81: $00
    nop                                           ; $5A82: $00
    nop                                           ; $5A83: $00
    nop                                           ; $5A84: $00
    nop                                           ; $5A85: $00
    ldh [rP1], a                                  ; $5A86: $E0 $00
    ldh a, [$FFE0]                                ; $5A88: $F0 $E0
    db $FC                                        ; $5A8A: $FC
    ldh a, [$FFFE]                                ; $5A8B: $F0 $FE
    db $FC                                        ; $5A8D: $FC
    cp $FC                                        ; $5A8E: $FE $FC
    cp $FC                                        ; $5A90: $FE $FC
    cp $F8                                        ; $5A92: $FE $F8
    db $FC                                        ; $5A94: $FC
    ld hl, sp-$04                                 ; $5A95: $F8 $FC
    ret nz                                        ; $5A97: $C0

    jp nz, $81BC                                  ; $5A98: $C2 $BC $81

    ld a, [hl]                                    ; $5A9B: $7E
    add c                                         ; $5A9C: $81
    ld a, [hl]                                    ; $5A9D: $7E
    add c                                         ; $5A9E: $81
    ld a, [hl]                                    ; $5A9F: $7E
    inc [hl]                                      ; $5AA0: $34
    inc bc                                        ; $5AA1: $03
    ld e, a                                       ; $5AA2: $5F
    jr nz, jr_021_5B24                            ; $5AA3: $20 $7F

    inc bc                                        ; $5AA5: $03
    ld e, a                                       ; $5AA6: $5F
    inc hl                                        ; $5AA7: $23
    scf                                           ; $5AA8: $37
    dec bc                                        ; $5AA9: $0B
    rla                                           ; $5AAA: $17
    dec bc                                        ; $5AAB: $0B
    rla                                           ; $5AAC: $17
    dec bc                                        ; $5AAD: $0B

jr_021_5AAE:
    rla                                           ; $5AAE: $17
    dec bc                                        ; $5AAF: $0B

jr_021_5AB0:
    rla                                           ; $5AB0: $17
    dec bc                                        ; $5AB1: $0B
    rla                                           ; $5AB2: $17
    dec bc                                        ; $5AB3: $0B
    scf                                           ; $5AB4: $37
    dec bc                                        ; $5AB5: $0B
    ld d, a                                       ; $5AB6: $57
    dec hl                                        ; $5AB7: $2B
    adc a                                         ; $5AB8: $8F
    ld [hl], b                                    ; $5AB9: $70
    db $FC                                        ; $5ABA: $FC
    nop                                           ; $5ABB: $00
    nop                                           ; $5ABC: $00
    nop                                           ; $5ABD: $00
    nop                                           ; $5ABE: $00
    nop                                           ; $5ABF: $00
    ld a, e                                       ; $5AC0: $7B
    dec a                                         ; $5AC1: $3D
    ld a, e                                       ; $5AC2: $7B
    dec a                                         ; $5AC3: $3D
    ld a, a                                       ; $5AC4: $7F
    nop                                           ; $5AC5: $00
    ld a, a                                       ; $5AC6: $7F
    inc a                                         ; $5AC7: $3C
    cp h                                          ; $5AC8: $BC
    ld e, e                                       ; $5AC9: $5B
    cp h                                          ; $5ACA: $BC
    ld e, e                                       ; $5ACB: $5B
    sbc h                                         ; $5ACC: $9C
    ld h, e                                       ; $5ACD: $63
    adc h                                         ; $5ACE: $8C
    ld [hl], e                                    ; $5ACF: $73
    adc h                                         ; $5AD0: $8C
    ld [hl], e                                    ; $5AD1: $73
    ei                                            ; $5AD2: $FB
    nop                                           ; $5AD3: $00
    db $FD                                        ; $5AD4: $FD
    ld a, b                                       ; $5AD5: $78
    rst RST_38                                    ; $5AD6: $FF
    ld a, b                                       ; $5AD7: $78
    rst RST_38                                    ; $5AD8: $FF
    ld a, c                                       ; $5AD9: $79
    rst RST_38                                    ; $5ADA: $FF
    ld a, c                                       ; $5ADB: $79
    db $FD                                        ; $5ADC: $FD
    ld a, b                                       ; $5ADD: $78
    ld sp, hl                                     ; $5ADE: $F9
    ld [hl], b                                    ; $5ADF: $70
    ldh [$FFDF], a                                ; $5AE0: $E0 $DF
    ld hl, sp-$61                                 ; $5AE2: $F8 $9F
    sbc [hl]                                      ; $5AE4: $9E
    rlca                                          ; $5AE5: $07
    add a                                         ; $5AE6: $87
    ld bc, $8041                                  ; $5AE7: $01 $41 $80

jr_021_5AEA:
    ld b, b                                       ; $5AEA: $40
    add b                                         ; $5AEB: $80

jr_021_5AEC:
    jr nz, jr_021_5AAE                            ; $5AEC: $20 $C0

    jr nz, jr_021_5AB0                            ; $5AEE: $20 $C0

jr_021_5AF0:
    ldh a, [rP1]                                  ; $5AF0: $F0 $00
    ld e, [hl]                                    ; $5AF2: $5E
    and b                                         ; $5AF3: $A0
    cp $04                                        ; $5AF4: $FE $04
    ld e, [hl]                                    ; $5AF6: $5E
    and h                                         ; $5AF7: $A4
    rst RST_20                                    ; $5AF8: $E7
    ld a, [de]                                    ; $5AF9: $1A
    add a                                         ; $5AFA: $87
    ld a, d                                       ; $5AFB: $7A
    rst RST_00                                    ; $5AFC: $C7
    cp d                                          ; $5AFD: $BA
    jp $80BD                                      ; $5AFE: $C3 $BD $80


    nop                                           ; $5B01: $00
    add b                                         ; $5B02: $80
    nop                                           ; $5B03: $00
    add b                                         ; $5B04: $80
    nop                                           ; $5B05: $00
    nop                                           ; $5B06: $00
    nop                                           ; $5B07: $00
    nop                                           ; $5B08: $00
    nop                                           ; $5B09: $00
    add b                                         ; $5B0A: $80
    nop                                           ; $5B0B: $00
    ld h, b                                       ; $5B0C: $60
    add b                                         ; $5B0D: $80
    jr jr_021_5AF0                                ; $5B0E: $18 $E0

    ld b, $F8                                     ; $5B10: $06 $F8
    inc bc                                        ; $5B12: $03
    cp $03                                        ; $5B13: $FE $03
    cp $83                                        ; $5B15: $FE $83
    db $FC                                        ; $5B17: $FC
    and $7D                                       ; $5B18: $E6 $7D
    ld a, h                                       ; $5B1A: $7C
    dec de                                        ; $5B1B: $1B
    jr jr_021_5B25                                ; $5B1C: $18 $07

    rlca                                          ; $5B1E: $07
    nop                                           ; $5B1F: $00
    nop                                           ; $5B20: $00
    nop                                           ; $5B21: $00
    nop                                           ; $5B22: $00
    nop                                           ; $5B23: $00

jr_021_5B24:
    add b                                         ; $5B24: $80

jr_021_5B25:
    nop                                           ; $5B25: $00
    ld b, b                                       ; $5B26: $40
    add b                                         ; $5B27: $80
    jr nz, jr_021_5AEA                            ; $5B28: $20 $C0

    jr nz, jr_021_5AEC                            ; $5B2A: $20 $C0

    db $10                                        ; $5B2C: $10
    ldh [rNR10], a                                ; $5B2D: $E0 $10
    ldh [$FFE0], a                                ; $5B2F: $E0 $E0
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
    adc $85                                       ; $5B40: $CE $85
    rst RST_00                                    ; $5B42: $C7
    add d                                         ; $5B43: $82
    rst RST_20                                    ; $5B44: $E7
    jp nz, $C1E3                                  ; $5B45: $C2 $E3 $C1

    db $E3                                        ; $5B48: $E3
    ld bc, $0003                                  ; $5B49: $01 $03 $00
    nop                                           ; $5B4C: $00
    nop                                           ; $5B4D: $00
    nop                                           ; $5B4E: $00
    nop                                           ; $5B4F: $00
    nop                                           ; $5B50: $00
    nop                                           ; $5B51: $00
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
    inc e                                         ; $5B60: $1C
    add sp, $1C                                   ; $5B61: $E8 $1C
    add sp, $1C                                   ; $5B63: $E8 $1C
    add sp, $0E                                   ; $5B65: $E8 $0E
    db $F4                                        ; $5B67: $F4
    cp [hl]                                       ; $5B68: $BE
    ld b, h                                       ; $5B69: $44
    call z, $8430                                 ; $5B6A: $CC $30 $84
    ld a, b                                       ; $5B6D: $78
    add d                                         ; $5B6E: $82
    ld a, h                                       ; $5B6F: $7C
    cp $00                                        ; $5B70: $FE $00
    nop                                           ; $5B72: $00
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
    ld b, c                                       ; $5B80: $41
    ld a, $83                                     ; $5B81: $3E $83
    ld a, h                                       ; $5B83: $7C
    add a                                         ; $5B84: $87
    ld a, d                                       ; $5B85: $7A
    rst RST_08                                    ; $5B86: $CF
    ld [hl-], a                                   ; $5B87: $32
    rst RST_38                                    ; $5B88: $FF
    dec bc                                        ; $5B89: $0B
    rst RST_38                                    ; $5B8A: $FF
    ld h, [hl]                                    ; $5B8B: $66
    rst RST_38                                    ; $5B8C: $FF
    ld [hl], c                                    ; $5B8D: $71
    ld hl, sp+$37                                 ; $5B8E: $F8 $37
    db $FC                                        ; $5B90: $FC
    jp $E2FD                                      ; $5B91: $C3 $FD $E2


    rst RST_38                                    ; $5B94: $FF
    nop                                           ; $5B95: $00
    sbc a                                         ; $5B96: $9F
    ld l, l                                       ; $5B97: $6D
    sbc $6B                                       ; $5B98: $DE $6B
    rst RST_38                                    ; $5B9A: $FF
    inc bc                                        ; $5B9B: $03
    ld b, a                                       ; $5B9C: $47
    jr c, @+$7D                                   ; $5B9D: $38 $7B

    dec a                                         ; $5B9F: $3D
    ld b, b                                       ; $5BA0: $40
    cp a                                          ; $5BA1: $BF
    ret nz                                        ; $5BA2: $C0

    ccf                                           ; $5BA3: $3F
    ld b, b                                       ; $5BA4: $40
    cp a                                          ; $5BA5: $BF
    and a                                         ; $5BA6: $A7
    ld e, b                                       ; $5BA7: $58
    rst RST_38                                    ; $5BA8: $FF
    add b                                         ; $5BA9: $80
    rst RST_18                                    ; $5BAA: $DF
    ld l, $DF                                     ; $5BAB: $2E $DF
    xor [hl]                                      ; $5BAD: $AE
    cp a                                          ; $5BAE: $BF
    ld b, d                                       ; $5BAF: $42
    rst RST_38                                    ; $5BB0: $FF
    jr c, @+$01                                   ; $5BB1: $38 $FF

    ld [hl], b                                    ; $5BB3: $70
    rst RST_38                                    ; $5BB4: $FF
    nop                                           ; $5BB5: $00
    ccf                                           ; $5BB6: $3F
    ret nc                                        ; $5BB7: $D0

    ld a, a                                       ; $5BB8: $7F
    ret nc                                        ; $5BB9: $D0

    rst RST_38                                    ; $5BBA: $FF
    cp h                                          ; $5BBB: $BC
    db $FC                                        ; $5BBC: $FC
    ld [hl], e                                    ; $5BBD: $73
    ldh a, [$FFEF]                                ; $5BBE: $F0 $EF
    nop                                           ; $5BC0: $00
    nop                                           ; $5BC1: $00
    nop                                           ; $5BC2: $00
    nop                                           ; $5BC3: $00
    nop                                           ; $5BC4: $00
    nop                                           ; $5BC5: $00
    nop                                           ; $5BC6: $00
    nop                                           ; $5BC7: $00
    ld e, $00                                     ; $5BC8: $1E $00
    ccf                                           ; $5BCA: $3F
    ld e, $61                                     ; $5BCB: $1E $61
    ld a, $C1                                     ; $5BCD: $3E $C1
    ld a, [hl]                                    ; $5BCF: $7E
    add c                                         ; $5BD0: $81
    ld a, [hl]                                    ; $5BD1: $7E
    add c                                         ; $5BD2: $81
    ld a, [hl]                                    ; $5BD3: $7E
    add c                                         ; $5BD4: $81
    ld a, [hl]                                    ; $5BD5: $7E
    add d                                         ; $5BD6: $82
    ld a, h                                       ; $5BD7: $7C
    add h                                         ; $5BD8: $84
    ld a, b                                       ; $5BD9: $78
    sbc b                                         ; $5BDA: $98
    ld h, b                                       ; $5BDB: $60
    ldh [rP1], a                                  ; $5BDC: $E0 $00
    add b                                         ; $5BDE: $80
    nop                                           ; $5BDF: $00
    nop                                           ; $5BE0: $00
    nop                                           ; $5BE1: $00
    nop                                           ; $5BE2: $00
    nop                                           ; $5BE3: $00
    nop                                           ; $5BE4: $00
    nop                                           ; $5BE5: $00
    inc bc                                        ; $5BE6: $03
    nop                                           ; $5BE7: $00
    inc b                                         ; $5BE8: $04
    inc bc                                        ; $5BE9: $03
    ld [$1807], sp                                ; $5BEA: $08 $07 $18
    rlca                                          ; $5BED: $07
    jr c, @+$19                                   ; $5BEE: $38 $17

    jr c, jr_021_5C09                             ; $5BF0: $38 $17

    jr c, jr_021_5C0B                             ; $5BF2: $38 $17

    inc e                                         ; $5BF4: $1C
    dec bc                                        ; $5BF5: $0B
    rra                                           ; $5BF6: $1F
    inc c                                         ; $5BF7: $0C
    ccf                                           ; $5BF8: $3F
    nop                                           ; $5BF9: $00
    ld hl, $401E                                  ; $5BFA: $21 $1E $40
    ccf                                           ; $5BFD: $3F
    ld b, c                                       ; $5BFE: $41
    ld a, $00                                     ; $5BFF: $3E $00
    nop                                           ; $5C01: $00
    nop                                           ; $5C02: $00
    nop                                           ; $5C03: $00
    nop                                           ; $5C04: $00
    nop                                           ; $5C05: $00
    ldh [rP1], a                                  ; $5C06: $E0 $00
    db $10                                        ; $5C08: $10

jr_021_5C09:
    ldh [$FF7C], a                                ; $5C09: $E0 $7C

jr_021_5C0B:
    sub b                                         ; $5C0B: $90
    ld a, [hl]                                    ; $5C0C: $7E
    and h                                         ; $5C0D: $A4
    ld a, $D4                                     ; $5C0E: $3E $D4
    ld a, $D4                                     ; $5C10: $3E $D4
    ld a, [hl]                                    ; $5C12: $7E
    cp b                                          ; $5C13: $B8
    db $FC                                        ; $5C14: $FC
    ld a, b                                       ; $5C15: $78
    db $FC                                        ; $5C16: $FC
    ld b, b                                       ; $5C17: $40
    jp nz, $813C                                  ; $5C18: $C2 $3C $81

    ld a, [hl]                                    ; $5C1B: $7E
    add c                                         ; $5C1C: $81
    ld a, [hl]                                    ; $5C1D: $7E
    add c                                         ; $5C1E: $81
    ld a, [hl]                                    ; $5C1F: $7E
    nop                                           ; $5C20: $00
    nop                                           ; $5C21: $00
    nop                                           ; $5C22: $00
    nop                                           ; $5C23: $00
    nop                                           ; $5C24: $00
    nop                                           ; $5C25: $00
    nop                                           ; $5C26: $00
    nop                                           ; $5C27: $00
    nop                                           ; $5C28: $00
    nop                                           ; $5C29: $00
    nop                                           ; $5C2A: $00
    nop                                           ; $5C2B: $00
    nop                                           ; $5C2C: $00
    nop                                           ; $5C2D: $00
    nop                                           ; $5C2E: $00
    nop                                           ; $5C2F: $00
    ld bc, $0100                                  ; $5C30: $01 $00 $01
    nop                                           ; $5C33: $00
    ld bc, $0100                                  ; $5C34: $01 $00 $01
    nop                                           ; $5C37: $00
    ld bc, $0100                                  ; $5C38: $01 $00 $01
    nop                                           ; $5C3B: $00
    ld bc, $0100                                  ; $5C3C: $01 $00 $01
    nop                                           ; $5C3F: $00
    reti                                          ; $5C40: $D9


    ld h, $83                                     ; $5C41: $26 $83
    ld a, h                                       ; $5C43: $7C
    add a                                         ; $5C44: $87
    ld a, d                                       ; $5C45: $7A
    rst RST_08                                    ; $5C46: $CF
    ld [hl-], a                                   ; $5C47: $32
    rst RST_38                                    ; $5C48: $FF
    dec bc                                        ; $5C49: $0B
    rst RST_38                                    ; $5C4A: $FF
    ld h, [hl]                                    ; $5C4B: $66
    rst RST_38                                    ; $5C4C: $FF
    ld [hl], c                                    ; $5C4D: $71
    ld hl, sp+$37                                 ; $5C4E: $F8 $37
    rst RST_38                                    ; $5C50: $FF
    jp $E2FD                                      ; $5C51: $C3 $FD $E2


    rst RST_38                                    ; $5C54: $FF
    nop                                           ; $5C55: $00
    sbc a                                         ; $5C56: $9F
    ld l, l                                       ; $5C57: $6D
    sbc $6B                                       ; $5C58: $DE $6B
    rst RST_38                                    ; $5C5A: $FF
    inc bc                                        ; $5C5B: $03
    ld b, a                                       ; $5C5C: $47
    jr c, jr_021_5CDA                             ; $5C5D: $38 $7B

    dec a                                         ; $5C5F: $3D
    ld b, b                                       ; $5C60: $40
    cp a                                          ; $5C61: $BF
    ret nz                                        ; $5C62: $C0

    ccf                                           ; $5C63: $3F
    ld b, b                                       ; $5C64: $40
    cp a                                          ; $5C65: $BF
    and a                                         ; $5C66: $A7
    ld e, b                                       ; $5C67: $58
    rst RST_38                                    ; $5C68: $FF
    add b                                         ; $5C69: $80
    rst RST_18                                    ; $5C6A: $DF
    ld l, $DF                                     ; $5C6B: $2E $DF
    xor [hl]                                      ; $5C6D: $AE
    cp a                                          ; $5C6E: $BF
    ld b, d                                       ; $5C6F: $42
    rst RST_38                                    ; $5C70: $FF
    jr c, @+$01                                   ; $5C71: $38 $FF

    ld [hl], b                                    ; $5C73: $70
    rst RST_38                                    ; $5C74: $FF
    nop                                           ; $5C75: $00
    ccf                                           ; $5C76: $3F
    ret nc                                        ; $5C77: $D0

    ld a, a                                       ; $5C78: $7F
    ret nc                                        ; $5C79: $D0

    rst RST_38                                    ; $5C7A: $FF
    cp h                                          ; $5C7B: $BC
    db $FC                                        ; $5C7C: $FC
    ld [hl], e                                    ; $5C7D: $73
    ldh a, [$FFEF]                                ; $5C7E: $F0 $EF
    ld hl, sp-$40                                 ; $5C80: $F8 $C0
    ld [hl], $E8                                  ; $5C82: $36 $E8
    cpl                                           ; $5C84: $2F
    jp nz, Jump_000_20D3                          ; $5C85: $C2 $D3 $20

    ldh a, [rP1]                                  ; $5C88: $F0 $00
    daa                                           ; $5C8A: $27
    ret nz                                        ; $5C8B: $C0

    rst RST_38                                    ; $5C8C: $FF
    inc bc                                        ; $5C8D: $03
    rst RST_38                                    ; $5C8E: $FF
    inc c                                         ; $5C8F: $0C
    sbc a                                         ; $5C90: $9F
    db $E3                                        ; $5C91: $E3
    ld a, a                                       ; $5C92: $7F
    add h                                         ; $5C93: $84
    rst RST_28                                    ; $5C94: $EF
    inc d                                         ; $5C95: $14
    sbc a                                         ; $5C96: $9F
    ld l, b                                       ; $5C97: $68
    sbc c                                         ; $5C98: $99
    rst RST_30                                    ; $5C99: $F7
    rst RST_38                                    ; $5C9A: $FF
    ld h, [hl]                                    ; $5C9B: $66
    xor $55                                       ; $5C9C: $EE $55
    db $DD                                        ; $5C9E: $DD
    xor d                                         ; $5C9F: $AA
    dec de                                        ; $5CA0: $1B
    ld bc, $136E                                  ; $5CA1: $01 $6E $13
    db $F4                                        ; $5CA4: $F4
    ld b, e                                       ; $5CA5: $43
    rlc h                                         ; $5CA6: $CB $04
    rrca                                          ; $5CA8: $0F
    nop                                           ; $5CA9: $00
    call nc, $FF03                                ; $5CAA: $D4 $03 $FF
    ld d, b                                       ; $5CAD: $50
    ld sp, hl                                     ; $5CAE: $F9
    and a                                         ; $5CAF: $A7
    cp $21                                        ; $5CB0: $FE $21
    rst RST_30                                    ; $5CB2: $F7
    ld l, b                                       ; $5CB3: $68
    ld a, c                                       ; $5CB4: $79
    sub [hl]                                      ; $5CB5: $96
    sbc c                                         ; $5CB6: $99
    rst RST_28                                    ; $5CB7: $EF
    rst RST_38                                    ; $5CB8: $FF
    ld h, [hl]                                    ; $5CB9: $66
    rst RST_30                                    ; $5CBA: $F7
    ld a, [hl+]                                   ; $5CBB: $2A
    cp e                                          ; $5CBC: $BB
    ld d, l                                       ; $5CBD: $55
    sbc c                                         ; $5CBE: $99
    ld h, [hl]                                    ; $5CBF: $66
    ld h, b                                       ; $5CC0: $60
    ret nz                                        ; $5CC1: $C0

    ldh a, [$FFE0]                                ; $5CC2: $F0 $E0
    ldh a, [rP1]                                  ; $5CC4: $F0 $00
    ld h, b                                       ; $5CC6: $60
    ret nz                                        ; $5CC7: $C0

    cp $E0                                        ; $5CC8: $FE $E0
    rst RST_38                                    ; $5CCA: $FF
    ld [hl], $FD                                  ; $5CCB: $36 $FD
    ld a, [bc]                                    ; $5CCD: $0A
    call $8172                                    ; $5CCE: $CD $72 $81

jr_021_5CD1:
    ld a, [hl]                                    ; $5CD1: $7E
    add c                                         ; $5CD2: $81
    ld a, [hl]                                    ; $5CD3: $7E
    add c                                         ; $5CD4: $81
    ld a, [hl]                                    ; $5CD5: $7E
    add d                                         ; $5CD6: $82
    ld a, h                                       ; $5CD7: $7C
    add h                                         ; $5CD8: $84
    ld a, b                                       ; $5CD9: $78

jr_021_5CDA:
    sbc b                                         ; $5CDA: $98
    ld h, b                                       ; $5CDB: $60
    ldh [rP1], a                                  ; $5CDC: $E0 $00
    add b                                         ; $5CDE: $80
    nop                                           ; $5CDF: $00
    rrca                                          ; $5CE0: $0F
    rlca                                          ; $5CE1: $07
    rrca                                          ; $5CE2: $0F
    nop                                           ; $5CE3: $00
    ld b, $03                                     ; $5CE4: $06 $03
    rrca                                          ; $5CE6: $0F
    rlca                                          ; $5CE7: $07
    rra                                           ; $5CE8: $1F
    inc c                                         ; $5CE9: $0C
    dec a                                         ; $5CEA: $3D
    db $10                                        ; $5CEB: $10
    ld sp, $0000                                  ; $5CEC: $31 $00 $00
    nop                                           ; $5CEF: $00
    ld bc, $0100                                  ; $5CF0: $01 $00 $01
    nop                                           ; $5CF3: $00
    ld bc, $0100                                  ; $5CF4: $01 $00 $01
    nop                                           ; $5CF7: $00
    ld bc, $0100                                  ; $5CF8: $01 $00 $01
    nop                                           ; $5CFB: $00
    ld bc, $0100                                  ; $5CFC: $01 $00 $01
    nop                                           ; $5CFF: $00
    nop                                           ; $5D00: $00
    nop                                           ; $5D01: $00
    nop                                           ; $5D02: $00
    nop                                           ; $5D03: $00
    nop                                           ; $5D04: $00
    nop                                           ; $5D05: $00
    add $00                                       ; $5D06: $C6 $00
    rst RST_30                                    ; $5D08: $F7
    ld b, d                                       ; $5D09: $42
    ld a, a                                       ; $5D0A: $7F
    ld sp, $1D3F                                  ; $5D0B: $31 $3F $1D
    ld a, [de]                                    ; $5D0E: $1A
    rrca                                          ; $5D0F: $0F
    ld a, $01                                     ; $5D10: $3E $01
    ccf                                           ; $5D12: $3F
    inc e                                         ; $5D13: $1C
    add hl, de                                    ; $5D14: $19
    ld c, $0E                                     ; $5D15: $0E $0E
    inc bc                                        ; $5D17: $03
    inc bc                                        ; $5D18: $03
    nop                                           ; $5D19: $00
    ld bc, $0700                                  ; $5D1A: $01 $00 $07
    ld bc, $070C                                  ; $5D1D: $01 $0C $07
    nop                                           ; $5D20: $00
    nop                                           ; $5D21: $00
    nop                                           ; $5D22: $00
    nop                                           ; $5D23: $00
    nop                                           ; $5D24: $00
    nop                                           ; $5D25: $00
    nop                                           ; $5D26: $00
    nop                                           ; $5D27: $00
    nop                                           ; $5D28: $00
    nop                                           ; $5D29: $00
    inc hl                                        ; $5D2A: $23
    nop                                           ; $5D2B: $00
    ld l, a                                       ; $5D2C: $6F
    ld [bc], a                                    ; $5D2D: $02
    cp $4C                                        ; $5D2E: $FE $4C
    db $FC                                        ; $5D30: $FC
    cp b                                          ; $5D31: $B8
    ld e, b                                       ; $5D32: $58
    ldh a, [$FF7C]                                ; $5D33: $F0 $7C
    add b                                         ; $5D35: $80
    db $FC                                        ; $5D36: $FC
    jr c, jr_021_5CD1                             ; $5D37: $38 $98

    ld [hl], b                                    ; $5D39: $70
    ld [hl], b                                    ; $5D3A: $70
    ret nz                                        ; $5D3B: $C0

    ret nz                                        ; $5D3C: $C0

    nop                                           ; $5D3D: $00
    ldh [$FF80], a                                ; $5D3E: $E0 $80
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
    nop                                           ; $5D56: $00
    nop                                           ; $5D57: $00
    nop                                           ; $5D58: $00
    nop                                           ; $5D59: $00
    nop                                           ; $5D5A: $00
    nop                                           ; $5D5B: $00
    nop                                           ; $5D5C: $00
    nop                                           ; $5D5D: $00
    add b                                         ; $5D5E: $80
    nop                                           ; $5D5F: $00
    ld b, c                                       ; $5D60: $41
    ld a, $83                                     ; $5D61: $3E $83
    ld a, h                                       ; $5D63: $7C
    add a                                         ; $5D64: $87
    ld a, d                                       ; $5D65: $7A
    rst RST_08                                    ; $5D66: $CF
    ld [hl-], a                                   ; $5D67: $32
    rst RST_38                                    ; $5D68: $FF
    dec bc                                        ; $5D69: $0B
    rst RST_38                                    ; $5D6A: $FF
    ld h, [hl]                                    ; $5D6B: $66
    rst RST_38                                    ; $5D6C: $FF
    ld [hl], c                                    ; $5D6D: $71
    ld hl, sp+$37                                 ; $5D6E: $F8 $37
    rst RST_38                                    ; $5D70: $FF
    jp $E2FD                                      ; $5D71: $C3 $FD $E2


    rst RST_38                                    ; $5D74: $FF
    nop                                           ; $5D75: $00
    sbc a                                         ; $5D76: $9F
    ld l, l                                       ; $5D77: $6D
    sbc $6B                                       ; $5D78: $DE $6B
    rst RST_38                                    ; $5D7A: $FF
    inc bc                                        ; $5D7B: $03
    ld b, a                                       ; $5D7C: $47
    jr c, jr_021_5DFA                             ; $5D7D: $38 $7B

    dec a                                         ; $5D7F: $3D
    ld b, b                                       ; $5D80: $40
    cp a                                          ; $5D81: $BF
    ret nz                                        ; $5D82: $C0

    ccf                                           ; $5D83: $3F
    ld b, b                                       ; $5D84: $40
    cp a                                          ; $5D85: $BF
    and a                                         ; $5D86: $A7
    ld e, b                                       ; $5D87: $58
    rst RST_38                                    ; $5D88: $FF
    add b                                         ; $5D89: $80
    rst RST_18                                    ; $5D8A: $DF
    ld l, $DF                                     ; $5D8B: $2E $DF
    xor [hl]                                      ; $5D8D: $AE
    cp a                                          ; $5D8E: $BF
    ld b, d                                       ; $5D8F: $42
    rst RST_38                                    ; $5D90: $FF
    jr c, @+$01                                   ; $5D91: $38 $FF

    ld [hl], b                                    ; $5D93: $70
    rst RST_38                                    ; $5D94: $FF
    nop                                           ; $5D95: $00
    ccf                                           ; $5D96: $3F
    ret nc                                        ; $5D97: $D0

    ld a, a                                       ; $5D98: $7F
    ret nc                                        ; $5D99: $D0

    rst RST_38                                    ; $5D9A: $FF
    cp h                                          ; $5D9B: $BC
    db $FC                                        ; $5D9C: $FC
    ld [hl], e                                    ; $5D9D: $73
    ldh a, [$FFEF]                                ; $5D9E: $F0 $EF
    ld h, b                                       ; $5DA0: $60
    ld h, b                                       ; $5DA1: $60
    nop                                           ; $5DA2: $00
    nop                                           ; $5DA3: $00
    nop                                           ; $5DA4: $00
    nop                                           ; $5DA5: $00
    nop                                           ; $5DA6: $00
    nop                                           ; $5DA7: $00
    sbc [hl]                                      ; $5DA8: $9E
    add b                                         ; $5DA9: $80
    cp a                                          ; $5DAA: $BF
    sbc [hl]                                      ; $5DAB: $9E
    ld h, c                                       ; $5DAC: $61
    cp [hl]                                       ; $5DAD: $BE
    pop bc                                        ; $5DAE: $C1
    ld a, [hl]                                    ; $5DAF: $7E
    add c                                         ; $5DB0: $81
    ld a, [hl]                                    ; $5DB1: $7E
    add c                                         ; $5DB2: $81
    ld a, [hl]                                    ; $5DB3: $7E
    add c                                         ; $5DB4: $81
    ld a, [hl]                                    ; $5DB5: $7E
    add d                                         ; $5DB6: $82
    ld a, h                                       ; $5DB7: $7C
    add h                                         ; $5DB8: $84
    ld a, b                                       ; $5DB9: $78
    sbc b                                         ; $5DBA: $98
    ld h, b                                       ; $5DBB: $60
    ldh [rP1], a                                  ; $5DBC: $E0 $00
    add b                                         ; $5DBE: $80
    nop                                           ; $5DBF: $00
    nop                                           ; $5DC0: $00
    nop                                           ; $5DC1: $00
    nop                                           ; $5DC2: $00
    nop                                           ; $5DC3: $00
    nop                                           ; $5DC4: $00
    nop                                           ; $5DC5: $00
    nop                                           ; $5DC6: $00
    nop                                           ; $5DC7: $00
    nop                                           ; $5DC8: $00
    nop                                           ; $5DC9: $00
    rlca                                          ; $5DCA: $07
    nop                                           ; $5DCB: $00
    rra                                           ; $5DCC: $1F
    inc bc                                        ; $5DCD: $03
    rra                                           ; $5DCE: $1F
    inc c                                         ; $5DCF: $0C
    rrca                                          ; $5DD0: $0F
    inc bc                                        ; $5DD1: $03
    rrca                                          ; $5DD2: $0F
    dec b                                         ; $5DD3: $05
    rra                                           ; $5DD4: $1F
    dec c                                         ; $5DD5: $0D
    rra                                           ; $5DD6: $1F
    inc c                                         ; $5DD7: $0C
    ccf                                           ; $5DD8: $3F
    nop                                           ; $5DD9: $00
    ld hl, $401E                                  ; $5DDA: $21 $1E $40
    ccf                                           ; $5DDD: $3F
    ld b, c                                       ; $5DDE: $41
    ld a, $00                                     ; $5DDF: $3E $00
    nop                                           ; $5DE1: $00
    nop                                           ; $5DE2: $00
    nop                                           ; $5DE3: $00
    nop                                           ; $5DE4: $00
    nop                                           ; $5DE5: $00
    nop                                           ; $5DE6: $00
    nop                                           ; $5DE7: $00
    inc bc                                        ; $5DE8: $03
    inc bc                                        ; $5DE9: $03
    call nc, $FC07                                ; $5DEA: $D4 $07 $FC
    ld d, a                                       ; $5DED: $57
    ei                                            ; $5DEE: $FB
    and e                                         ; $5DEF: $A3
    db $F4                                        ; $5DF0: $F4
    inc l                                         ; $5DF1: $2C
    db $FC                                        ; $5DF2: $FC
    db $F4                                        ; $5DF3: $F4
    ld a, [$FDF6]                                 ; $5DF4: $FA $F6 $FD
    jp Jump_000_3DC2                              ; $5DF7: $C3 $C2 $3D


jr_021_5DFA:
    add c                                         ; $5DFA: $81
    ld a, [hl]                                    ; $5DFB: $7E
    add c                                         ; $5DFC: $81
    ld a, [hl]                                    ; $5DFD: $7E
    add c                                         ; $5DFE: $81
    ld a, [hl]                                    ; $5DFF: $7E
    dec b                                         ; $5E00: $05
    rlca                                          ; $5E01: $07
    add hl, bc                                    ; $5E02: $09
    rrca                                          ; $5E03: $0F
    ld a, [bc]                                    ; $5E04: $0A
    ld c, $0C                                     ; $5E05: $0E $0C
    inc c                                         ; $5E07: $0C
    nop                                           ; $5E08: $00
    nop                                           ; $5E09: $00
    nop                                           ; $5E0A: $00
    nop                                           ; $5E0B: $00
    nop                                           ; $5E0C: $00
    nop                                           ; $5E0D: $00
    nop                                           ; $5E0E: $00
    nop                                           ; $5E0F: $00
    ld bc, $0100                                  ; $5E10: $01 $00 $01
    nop                                           ; $5E13: $00
    ld bc, $0100                                  ; $5E14: $01 $00 $01
    nop                                           ; $5E17: $00
    ld bc, $0100                                  ; $5E18: $01 $00 $01
    nop                                           ; $5E1B: $00
    ld bc, $0100                                  ; $5E1C: $01 $00 $01
    nop                                           ; $5E1F: $00
    nop                                           ; $5E20: $00
    nop                                           ; $5E21: $00
    nop                                           ; $5E22: $00
    nop                                           ; $5E23: $00
    nop                                           ; $5E24: $00
    nop                                           ; $5E25: $00
    nop                                           ; $5E26: $00
    nop                                           ; $5E27: $00
    nop                                           ; $5E28: $00
    nop                                           ; $5E29: $00
    nop                                           ; $5E2A: $00
    nop                                           ; $5E2B: $00
    nop                                           ; $5E2C: $00
    nop                                           ; $5E2D: $00
    nop                                           ; $5E2E: $00
    nop                                           ; $5E2F: $00
    ret nz                                        ; $5E30: $C0

    ret nz                                        ; $5E31: $C0

    and b                                         ; $5E32: $A0
    ldh [rRP], a                                  ; $5E33: $E0 $56
    halt                                          ; $5E35: $76
    ld c, l                                       ; $5E36: $4D
    ld a, a                                       ; $5E37: $7F
    dec sp                                        ; $5E38: $3B
    dec sp                                        ; $5E39: $3B
    ld b, b                                       ; $5E3A: $40
    ld b, b                                       ; $5E3B: $40
    and b                                         ; $5E3C: $A0
    ldh [rLCDC], a                                ; $5E3D: $E0 $40
    ld b, b                                       ; $5E3F: $40
    dec b                                         ; $5E40: $05
    rlca                                          ; $5E41: $07
    inc b                                         ; $5E42: $04
    rlca                                          ; $5E43: $07
    inc bc                                        ; $5E44: $03
    inc bc                                        ; $5E45: $03
    inc b                                         ; $5E46: $04
    inc b                                         ; $5E47: $04
    ld a, [bc]                                    ; $5E48: $0A
    ld c, $04                                     ; $5E49: $0E $04
    inc b                                         ; $5E4B: $04
    nop                                           ; $5E4C: $00
    nop                                           ; $5E4D: $00
    nop                                           ; $5E4E: $00
    nop                                           ; $5E4F: $00
    nop                                           ; $5E50: $00
    nop                                           ; $5E51: $00
    nop                                           ; $5E52: $00
    nop                                           ; $5E53: $00
    nop                                           ; $5E54: $00
    nop                                           ; $5E55: $00
    inc bc                                        ; $5E56: $03
    inc bc                                        ; $5E57: $03
    dec b                                         ; $5E58: $05
    rlca                                          ; $5E59: $07
    ld a, [bc]                                    ; $5E5A: $0A
    ld c, $0C                                     ; $5E5B: $0E $0C
    inc c                                         ; $5E5D: $0C
    inc bc                                        ; $5E5E: $03
    inc bc                                        ; $5E5F: $03
    inc bc                                        ; $5E60: $03
    inc bc                                        ; $5E61: $03
    dec b                                         ; $5E62: $05
    rlca                                          ; $5E63: $07
    ld c, d                                       ; $5E64: $4A
    ld c, [hl]                                    ; $5E65: $4E
    or d                                          ; $5E66: $B2
    cp $6C                                        ; $5E67: $FE $6C
    ld a, h                                       ; $5E69: $7C
    jr nc, jr_021_5E9C                            ; $5E6A: $30 $30

    nop                                           ; $5E6C: $00
    nop                                           ; $5E6D: $00
    nop                                           ; $5E6E: $00
    nop                                           ; $5E6F: $00
    nop                                           ; $5E70: $00
    nop                                           ; $5E71: $00
    nop                                           ; $5E72: $00
    nop                                           ; $5E73: $00
    nop                                           ; $5E74: $00
    nop                                           ; $5E75: $00
    nop                                           ; $5E76: $00
    nop                                           ; $5E77: $00
    jr @+$1A                                      ; $5E78: $18 $18

    and h                                         ; $5E7A: $A4
    inc a                                         ; $5E7B: $3C
    ldh [c], a                                    ; $5E7C: $E2
    cp [hl]                                       ; $5E7D: $BE
    db $DD                                        ; $5E7E: $DD
    rra                                           ; $5E7F: $1F
    ld b, c                                       ; $5E80: $41
    ld a, $83                                     ; $5E81: $3E $83
    ld a, h                                       ; $5E83: $7C
    add a                                         ; $5E84: $87
    ld a, d                                       ; $5E85: $7A
    rst RST_08                                    ; $5E86: $CF
    ld [hl-], a                                   ; $5E87: $32
    rst RST_38                                    ; $5E88: $FF
    dec bc                                        ; $5E89: $0B
    rst RST_38                                    ; $5E8A: $FF
    ld h, [hl]                                    ; $5E8B: $66
    rst RST_38                                    ; $5E8C: $FF
    ld [hl], c                                    ; $5E8D: $71
    ld hl, sp+$37                                 ; $5E8E: $F8 $37
    rst RST_38                                    ; $5E90: $FF
    jp $E2FD                                      ; $5E91: $C3 $FD $E2


    rst RST_38                                    ; $5E94: $FF
    nop                                           ; $5E95: $00
    sbc a                                         ; $5E96: $9F
    ld l, l                                       ; $5E97: $6D
    sbc $6B                                       ; $5E98: $DE $6B
    rst RST_38                                    ; $5E9A: $FF
    inc bc                                        ; $5E9B: $03

jr_021_5E9C:
    ld b, a                                       ; $5E9C: $47
    jr c, @+$7D                                   ; $5E9D: $38 $7B

    dec a                                         ; $5E9F: $3D
    ld b, b                                       ; $5EA0: $40
    cp a                                          ; $5EA1: $BF
    ret nz                                        ; $5EA2: $C0

    ccf                                           ; $5EA3: $3F
    ld b, b                                       ; $5EA4: $40
    cp a                                          ; $5EA5: $BF
    and a                                         ; $5EA6: $A7
    ld e, b                                       ; $5EA7: $58
    rst RST_38                                    ; $5EA8: $FF
    add b                                         ; $5EA9: $80
    rst RST_18                                    ; $5EAA: $DF
    ld l, $DF                                     ; $5EAB: $2E $DF
    xor [hl]                                      ; $5EAD: $AE
    cp a                                          ; $5EAE: $BF
    ld b, d                                       ; $5EAF: $42
    rst RST_38                                    ; $5EB0: $FF
    jr c, @+$01                                   ; $5EB1: $38 $FF

    ld [hl], b                                    ; $5EB3: $70
    rst RST_38                                    ; $5EB4: $FF
    nop                                           ; $5EB5: $00
    ccf                                           ; $5EB6: $3F
    ret nc                                        ; $5EB7: $D0

    ld a, a                                       ; $5EB8: $7F
    ret nc                                        ; $5EB9: $D0

    rst RST_38                                    ; $5EBA: $FF
    cp h                                          ; $5EBB: $BC
    db $FC                                        ; $5EBC: $FC
    ld [hl], e                                    ; $5EBD: $73
    ldh a, [$FFEF]                                ; $5EBE: $F0 $EF
    nop                                           ; $5EC0: $00
    nop                                           ; $5EC1: $00
    nop                                           ; $5EC2: $00
    nop                                           ; $5EC3: $00
    nop                                           ; $5EC4: $00
    nop                                           ; $5EC5: $00
    nop                                           ; $5EC6: $00
    nop                                           ; $5EC7: $00
    ld e, $00                                     ; $5EC8: $1E $00
    ccf                                           ; $5ECA: $3F
    ld e, $61                                     ; $5ECB: $1E $61
    ld a, $C1                                     ; $5ECD: $3E $C1
    ld a, [hl]                                    ; $5ECF: $7E
    add c                                         ; $5ED0: $81
    ld a, [hl]                                    ; $5ED1: $7E
    add c                                         ; $5ED2: $81
    ld a, [hl]                                    ; $5ED3: $7E
    add c                                         ; $5ED4: $81
    ld a, [hl]                                    ; $5ED5: $7E
    add d                                         ; $5ED6: $82
    ld a, h                                       ; $5ED7: $7C
    add h                                         ; $5ED8: $84
    ld a, b                                       ; $5ED9: $78
    sbc b                                         ; $5EDA: $98
    ld h, b                                       ; $5EDB: $60
    ldh [rP1], a                                  ; $5EDC: $E0 $00
    add b                                         ; $5EDE: $80
    nop                                           ; $5EDF: $00
    nop                                           ; $5EE0: $00
    nop                                           ; $5EE1: $00
    nop                                           ; $5EE2: $00
    nop                                           ; $5EE3: $00
    nop                                           ; $5EE4: $00
    nop                                           ; $5EE5: $00
    nop                                           ; $5EE6: $00
    nop                                           ; $5EE7: $00
    nop                                           ; $5EE8: $00
    nop                                           ; $5EE9: $00
    rlca                                          ; $5EEA: $07
    nop                                           ; $5EEB: $00
    rra                                           ; $5EEC: $1F
    inc bc                                        ; $5EED: $03
    rra                                           ; $5EEE: $1F
    inc c                                         ; $5EEF: $0C
    rrca                                          ; $5EF0: $0F
    inc bc                                        ; $5EF1: $03
    rrca                                          ; $5EF2: $0F
    dec b                                         ; $5EF3: $05
    rra                                           ; $5EF4: $1F
    dec c                                         ; $5EF5: $0D
    rra                                           ; $5EF6: $1F
    inc c                                         ; $5EF7: $0C
    ccf                                           ; $5EF8: $3F
    nop                                           ; $5EF9: $00
    ld hl, $401E                                  ; $5EFA: $21 $1E $40
    ccf                                           ; $5EFD: $3F
    ld b, c                                       ; $5EFE: $41
    ld a, $00                                     ; $5EFF: $3E $00
    nop                                           ; $5F01: $00
    nop                                           ; $5F02: $00
    nop                                           ; $5F03: $00
    nop                                           ; $5F04: $00
    nop                                           ; $5F05: $00
    nop                                           ; $5F06: $00
    nop                                           ; $5F07: $00
    nop                                           ; $5F08: $00
    nop                                           ; $5F09: $00
    ret nc                                        ; $5F0A: $D0

    nop                                           ; $5F0B: $00
    ld hl, sp+$50                                 ; $5F0C: $F8 $50
    ld hl, sp-$60                                 ; $5F0E: $F8 $A0
    ldh a, [rNR41]                                ; $5F10: $F0 $20
    ld hl, sp-$10                                 ; $5F12: $F8 $F0
    ld hl, sp-$10                                 ; $5F14: $F8 $F0
    db $FC                                        ; $5F16: $FC
    ret nz                                        ; $5F17: $C0

    jp nz, $813C                                  ; $5F18: $C2 $3C $81

    ld a, [hl]                                    ; $5F1B: $7E
    add c                                         ; $5F1C: $81
    ld a, [hl]                                    ; $5F1D: $7E
    add c                                         ; $5F1E: $81
    ld a, [hl]                                    ; $5F1F: $7E
    nop                                           ; $5F20: $00
    nop                                           ; $5F21: $00
    nop                                           ; $5F22: $00
    nop                                           ; $5F23: $00
    nop                                           ; $5F24: $00
    nop                                           ; $5F25: $00
    nop                                           ; $5F26: $00
    nop                                           ; $5F27: $00
    nop                                           ; $5F28: $00
    nop                                           ; $5F29: $00
    nop                                           ; $5F2A: $00
    nop                                           ; $5F2B: $00
    nop                                           ; $5F2C: $00
    nop                                           ; $5F2D: $00
    nop                                           ; $5F2E: $00
    nop                                           ; $5F2F: $00
    ld bc, $0100                                  ; $5F30: $01 $00 $01
    nop                                           ; $5F33: $00
    ld bc, $0100                                  ; $5F34: $01 $00 $01
    nop                                           ; $5F37: $00
    ld bc, $0100                                  ; $5F38: $01 $00 $01
    nop                                           ; $5F3B: $00
    ld bc, $0100                                  ; $5F3C: $01 $00 $01
    nop                                           ; $5F3F: $00
    nop                                           ; $5F40: $00
    nop                                           ; $5F41: $00
    nop                                           ; $5F42: $00
    nop                                           ; $5F43: $00
    rlca                                          ; $5F44: $07
    nop                                           ; $5F45: $00
    rra                                           ; $5F46: $1F
    ld bc, $0F3F                                  ; $5F47: $01 $3F $0F
    ccf                                           ; $5F4A: $3F
    rrca                                          ; $5F4B: $0F
    ld a, a                                       ; $5F4C: $7F
    rra                                           ; $5F4D: $1F
    ld a, a                                       ; $5F4E: $7F
    rra                                           ; $5F4F: $1F
    rst RST_38                                    ; $5F50: $FF
    ccf                                           ; $5F51: $3F
    ldh [$FF3F], a                                ; $5F52: $E0 $3F
    ld a, a                                       ; $5F54: $7F
    rra                                           ; $5F55: $1F
    ccf                                           ; $5F56: $3F
    nop                                           ; $5F57: $00
    inc e                                         ; $5F58: $1C
    inc bc                                        ; $5F59: $03
    ld b, $01                                     ; $5F5A: $06 $01
    inc bc                                        ; $5F5C: $03
    nop                                           ; $5F5D: $00
    ld bc, $0F00                                  ; $5F5E: $01 $00 $0F
    nop                                           ; $5F61: $00
    rst RST_38                                    ; $5F62: $FF
    ld bc, $1EFF                                  ; $5F63: $01 $FF $1E
    rst RST_38                                    ; $5F66: $FF
    cp a                                          ; $5F67: $BF
    cp a                                          ; $5F68: $BF
    rst RST_18                                    ; $5F69: $DF
    rst RST_18                                    ; $5F6A: $DF
    rst RST_20                                    ; $5F6B: $E7
    rst RST_20                                    ; $5F6C: $E7
    ld hl, sp-$20                                 ; $5F6D: $F8 $E0
    rst RST_38                                    ; $5F6F: $FF
    inc bc                                        ; $5F70: $03
    db $FC                                        ; $5F71: $FC
    rra                                           ; $5F72: $1F
    ld hl, sp-$01                                 ; $5F73: $F8 $FF
    di                                            ; $5F75: $F3
    rst RST_38                                    ; $5F76: $FF
    rlca                                          ; $5F77: $07
    rst RST_08                                    ; $5F78: $CF
    scf                                           ; $5F79: $37
    rst RST_38                                    ; $5F7A: $FF
    inc bc                                        ; $5F7B: $03
    cp a                                          ; $5F7C: $BF
    nop                                           ; $5F7D: $00
    add e                                         ; $5F7E: $83
    nop                                           ; $5F7F: $00
    rrca                                          ; $5F80: $0F
    nop                                           ; $5F81: $00
    rst RST_38                                    ; $5F82: $FF
    ld bc, $1FFF                                  ; $5F83: $01 $FF $1F
    rst RST_38                                    ; $5F86: $FF
    rst RST_38                                    ; $5F87: $FF
    rst RST_38                                    ; $5F88: $FF
    nop                                           ; $5F89: $00
    add b                                         ; $5F8A: $80
    rst RST_38                                    ; $5F8B: $FF
    ld a, a                                       ; $5F8C: $7F
    add b                                         ; $5F8D: $80
    rst RST_38                                    ; $5F8E: $FF
    ld a, a                                       ; $5F8F: $7F
    rst RST_38                                    ; $5F90: $FF
    rrca                                          ; $5F91: $0F
    rrca                                          ; $5F92: $0F
    or $FF                                        ; $5F93: $F6 $FF
    nop                                           ; $5F95: $00
    ld [hl], a                                    ; $5F96: $77
    adc b                                         ; $5F97: $88
    rst RST_38                                    ; $5F98: $FF
    inc sp                                        ; $5F99: $33
    rst RST_38                                    ; $5F9A: $FF
    rst RST_38                                    ; $5F9B: $FF
    rst RST_38                                    ; $5F9C: $FF
    rst RST_38                                    ; $5F9D: $FF
    rst RST_38                                    ; $5F9E: $FF
    rst RST_38                                    ; $5F9F: $FF
    inc bc                                        ; $5FA0: $03
    nop                                           ; $5FA1: $00
    rrca                                          ; $5FA2: $0F
    nop                                           ; $5FA3: $00
    inc e                                         ; $5FA4: $1C
    inc bc                                        ; $5FA5: $03
    inc sp                                        ; $5FA6: $33
    rrca                                          ; $5FA7: $0F
    ld l, a                                       ; $5FA8: $6F
    ld e, $7E                                     ; $5FA9: $1E $7E
    add hl, de                                    ; $5FAB: $19
    ld hl, sp+$07                                 ; $5FAC: $F8 $07
    cp $01                                        ; $5FAE: $FE $01
    rst RST_30                                    ; $5FB0: $F7
    ld hl, sp-$10                                 ; $5FB1: $F8 $F0
    rst RST_38                                    ; $5FB3: $FF
    rst RST_08                                    ; $5FB4: $CF
    rst RST_38                                    ; $5FB5: $FF
    rst RST_38                                    ; $5FB6: $FF
    ccf                                           ; $5FB7: $3F
    ld a, a                                       ; $5FB8: $7F
    call c, Call_021_63BC                         ; $5FB9: $DC $BC $63
    ldh a, [$FF9F]                                ; $5FBC: $F0 $9F
    rst RST_08                                    ; $5FBE: $CF
    ld a, a                                       ; $5FBF: $7F
    cp a                                          ; $5FC0: $BF
    rst RST_38                                    ; $5FC1: $FF
    rst RST_38                                    ; $5FC2: $FF
    nop                                           ; $5FC3: $00
    ld [hl], a                                    ; $5FC4: $77
    adc b                                         ; $5FC5: $88
    rst RST_38                                    ; $5FC6: $FF
    inc sp                                        ; $5FC7: $33
    rst RST_38                                    ; $5FC8: $FF
    rst RST_38                                    ; $5FC9: $FF
    rst RST_38                                    ; $5FCA: $FF
    ld hl, sp-$01                                 ; $5FCB: $F8 $FF
    nop                                           ; $5FCD: $00
    ld hl, sp+$00                                 ; $5FCE: $F8 $00
    nop                                           ; $5FD0: $00
    nop                                           ; $5FD1: $00
    nop                                           ; $5FD2: $00
    nop                                           ; $5FD3: $00
    nop                                           ; $5FD4: $00
    nop                                           ; $5FD5: $00
    nop                                           ; $5FD6: $00
    nop                                           ; $5FD7: $00
    nop                                           ; $5FD8: $00
    nop                                           ; $5FD9: $00
    nop                                           ; $5FDA: $00
    nop                                           ; $5FDB: $00
    nop                                           ; $5FDC: $00
    nop                                           ; $5FDD: $00
    nop                                           ; $5FDE: $00
    nop                                           ; $5FDF: $00
    inc bc                                        ; $5FE0: $03
    nop                                           ; $5FE1: $00
    ld a, a                                       ; $5FE2: $7F
    nop                                           ; $5FE3: $00
    rst RST_38                                    ; $5FE4: $FF
    nop                                           ; $5FE5: $00
    cp $7D                                        ; $5FE6: $FE $7D
    ld a, a                                       ; $5FE8: $7F
    ld hl, sp-$01                                 ; $5FE9: $F8 $FF
    rst RST_38                                    ; $5FEB: $FF
    rst RST_38                                    ; $5FEC: $FF
    nop                                           ; $5FED: $00
    inc bc                                        ; $5FEE: $03
    db $FC                                        ; $5FEF: $FC
    rrca                                          ; $5FF0: $0F
    pop af                                        ; $5FF1: $F1
    ccf                                           ; $5FF2: $3F
    rst RST_00                                    ; $5FF3: $C7
    rst RST_38                                    ; $5FF4: $FF
    ld e, $FF                                     ; $5FF5: $1E $FF
    db $FD                                        ; $5FF7: $FD
    rst RST_38                                    ; $5FF8: $FF
    di                                            ; $5FF9: $F3
    or $8F                                        ; $5FFA: $F6 $8F
    adc [hl]                                      ; $5FFC: $8E
    ld a, a                                       ; $5FFD: $7F
    ld a, a                                       ; $5FFE: $7F
    rst RST_38                                    ; $5FFF: $FF
    rst RST_38                                    ; $6000: $FF
    rst RST_38                                    ; $6001: $FF
    pop hl                                        ; $6002: $E1
    rst RST_38                                    ; $6003: $FF
    sbc [hl]                                      ; $6004: $9E
    pop hl                                        ; $6005: $E1
    cp $01                                        ; $6006: $FE $01
    ld a, [hl]                                    ; $6008: $7E
    sbc c                                         ; $6009: $99
    rst RST_38                                    ; $600A: $FF
    inc e                                         ; $600B: $1C
    rst RST_38                                    ; $600C: $FF
    db $FC                                        ; $600D: $FC
    rst RST_38                                    ; $600E: $FF
    cp $FF                                        ; $600F: $FE $FF
    ld a, a                                       ; $6011: $7F
    rst RST_38                                    ; $6012: $FF
    nop                                           ; $6013: $00
    ld a, a                                       ; $6014: $7F
    nop                                           ; $6015: $00
    nop                                           ; $6016: $00
    nop                                           ; $6017: $00
    nop                                           ; $6018: $00
    nop                                           ; $6019: $00
    nop                                           ; $601A: $00
    nop                                           ; $601B: $00
    nop                                           ; $601C: $00
    nop                                           ; $601D: $00
    nop                                           ; $601E: $00
    nop                                           ; $601F: $00
    rrca                                          ; $6020: $0F
    nop                                           ; $6021: $00
    ld a, a                                       ; $6022: $7F
    nop                                           ; $6023: $00
    rst RST_38                                    ; $6024: $FF
    nop                                           ; $6025: $00
    ldh a, [rIF]                                  ; $6026: $F0 $0F
    add c                                         ; $6028: $81
    ld a, [hl]                                    ; $6029: $7E
    ld a, a                                       ; $602A: $7F
    add b                                         ; $602B: $80
    rst RST_38                                    ; $602C: $FF
    ld [hl], b                                    ; $602D: $70
    rst RST_38                                    ; $602E: $FF
    ldh [rIE], a                                  ; $602F: $E0 $FF
    ld b, b                                       ; $6031: $40
    rst RST_38                                    ; $6032: $FF
    cp a                                          ; $6033: $BF
    rst RST_38                                    ; $6034: $FF
    ld a, a                                       ; $6035: $7F
    ldh a, [$FF7F]                                ; $6036: $F0 $7F
    rst RST_00                                    ; $6038: $C7
    rst RST_38                                    ; $6039: $FF
    adc b                                         ; $603A: $88
    rst RST_38                                    ; $603B: $FF
    inc de                                        ; $603C: $13
    rst RST_38                                    ; $603D: $FF
    inc h                                         ; $603E: $24
    rst RST_38                                    ; $603F: $FF
    ld c, c                                       ; $6040: $49
    rst RST_38                                    ; $6041: $FF
    sub d                                         ; $6042: $92
    rst RST_38                                    ; $6043: $FF
    inc h                                         ; $6044: $24
    rst RST_38                                    ; $6045: $FF
    ret                                           ; $6046: $C9


    rst RST_38                                    ; $6047: $FF
    sub d                                         ; $6048: $92
    rst RST_38                                    ; $6049: $FF
    and h                                         ; $604A: $A4
    rst RST_38                                    ; $604B: $FF
    ret z                                         ; $604C: $C8

    rst RST_38                                    ; $604D: $FF
    ld d, c                                       ; $604E: $51
    rst RST_38                                    ; $604F: $FF
    ld a, a                                       ; $6050: $7F
    rst RST_38                                    ; $6051: $FF
    cp a                                          ; $6052: $BF
    ld a, [hl]                                    ; $6053: $7E
    rst RST_38                                    ; $6054: $FF
    nop                                           ; $6055: $00
    rst RST_38                                    ; $6056: $FF
    nop                                           ; $6057: $00
    add b                                         ; $6058: $80
    nop                                           ; $6059: $00
    nop                                           ; $605A: $00
    nop                                           ; $605B: $00
    nop                                           ; $605C: $00
    nop                                           ; $605D: $00
    nop                                           ; $605E: $00
    nop                                           ; $605F: $00
    ld bc, $0700                                  ; $6060: $01 $00 $07
    nop                                           ; $6063: $00
    rst RST_38                                    ; $6064: $FF
    nop                                           ; $6065: $00
    rst RST_38                                    ; $6066: $FF
    nop                                           ; $6067: $00
    cp $01                                        ; $6068: $FE $01
    rlca                                          ; $606A: $07
    ld hl, sp+$06                                 ; $606B: $F8 $06
    ld sp, hl                                     ; $606D: $F9
    cp $01                                        ; $606E: $FE $01
    rst RST_38                                    ; $6070: $FF
    nop                                           ; $6071: $00
    rst RST_38                                    ; $6072: $FF
    nop                                           ; $6073: $00
    db $E3                                        ; $6074: $E3
    nop                                           ; $6075: $00

jr_021_6076:
    rst RST_38                                    ; $6076: $FF
    nop                                           ; $6077: $00
    rst RST_38                                    ; $6078: $FF
    ldh [rIE], a                                  ; $6079: $E0 $FF
    db $FC                                        ; $607B: $FC
    inc bc                                        ; $607C: $03
    db $FD                                        ; $607D: $FD
    rst RST_38                                    ; $607E: $FF
    db $FD                                        ; $607F: $FD
    inc bc                                        ; $6080: $03
    db $FC                                        ; $6081: $FC
    rst RST_38                                    ; $6082: $FF
    db $FD                                        ; $6083: $FD
    ld bc, $FFFE                                  ; $6084: $01 $FE $FF
    rst RST_38                                    ; $6087: $FF
    nop                                           ; $6088: $00
    rst RST_38                                    ; $6089: $FF
    rst RST_38                                    ; $608A: $FF
    rst RST_38                                    ; $608B: $FF
    rrca                                          ; $608C: $0F
    db $FC                                        ; $608D: $FC
    ccf                                           ; $608E: $3F
    di                                            ; $608F: $F3
    ld [hl], b                                    ; $6090: $70
    rst RST_08                                    ; $6091: $CF
    rst RST_08                                    ; $6092: $CF
    or b                                          ; $6093: $B0

jr_021_6094:
    rst RST_18                                    ; $6094: $DF
    jr nz, jr_021_6076                            ; $6095: $20 $DF

    daa                                           ; $6097: $27
    rst RST_38                                    ; $6098: $FF
    daa                                           ; $6099: $27
    rst RST_38                                    ; $609A: $FF
    daa                                           ; $609B: $27
    rst RST_38                                    ; $609C: $FF
    jr nc, jr_021_611E                            ; $609D: $30 $7F

    jr jr_021_60E0                                ; $609F: $18 $3F

    nop                                           ; $60A1: $00
    rst RST_38                                    ; $60A2: $FF
    nop                                           ; $60A3: $00
    rst RST_38                                    ; $60A4: $FF
    nop                                           ; $60A5: $00
    rst RST_20                                    ; $60A6: $E7
    jr @+$01                                      ; $60A7: $18 $FF

    nop                                           ; $60A9: $00
    rst RST_20                                    ; $60AA: $E7
    jr jr_021_6094                                ; $60AB: $18 $E7

    jr @-$17                                      ; $60AD: $18 $E7

    jr @+$01                                      ; $60AF: $18 $FF

    nop                                           ; $60B1: $00
    rst RST_38                                    ; $60B2: $FF
    nop                                           ; $60B3: $00
    rst RST_38                                    ; $60B4: $FF
    nop                                           ; $60B5: $00
    rst RST_38                                    ; $60B6: $FF
    ld [bc], a                                    ; $60B7: $02
    rst RST_38                                    ; $60B8: $FF
    ld b, $FF                                     ; $60B9: $06 $FF
    inc e                                         ; $60BB: $1C
    rst RST_38                                    ; $60BC: $FF
    ld a, b                                       ; $60BD: $78
    rst RST_38                                    ; $60BE: $FF
    db $E4                                        ; $60BF: $E4
    cp $98                                        ; $60C0: $FE $98
    rst RST_38                                    ; $60C2: $FF
    ld [hl], b                                    ; $60C3: $70
    rst RST_38                                    ; $60C4: $FF
    ret nz                                        ; $60C5: $C0

    rst RST_38                                    ; $60C6: $FF
    ld sp, $6DF3                                  ; $60C7: $31 $F3 $6D
    ld [hl], e                                    ; $60CA: $73
    xor l                                         ; $60CB: $AD
    rst RST_30                                    ; $60CC: $F7
    set 0, a                                      ; $60CD: $CB $C7
    dec sp                                        ; $60CF: $3B
    rst RST_00                                    ; $60D0: $C7
    dec sp                                        ; $60D1: $3B
    rst RST_20                                    ; $60D2: $E7
    db $DB                                        ; $60D3: $DB
    rst RST_30                                    ; $60D4: $F7
    ld l, e                                       ; $60D5: $6B
    rst RST_30                                    ; $60D6: $F7
    dec hl                                        ; $60D7: $2B
    rst RST_30                                    ; $60D8: $F7
    dec hl                                        ; $60D9: $2B
    rst RST_30                                    ; $60DA: $F7
    dec hl                                        ; $60DB: $2B
    rst RST_30                                    ; $60DC: $F7
    dec hl                                        ; $60DD: $2B
    rst RST_30                                    ; $60DE: $F7
    dec hl                                        ; $60DF: $2B

jr_021_60E0:
    rst RST_30                                    ; $60E0: $F7
    set 7, a                                      ; $60E1: $CB $FF
    inc bc                                        ; $60E3: $03
    rst RST_28                                    ; $60E4: $EF
    inc bc                                        ; $60E5: $03
    rrca                                          ; $60E6: $0F
    ld bc, $0003                                  ; $60E7: $01 $03 $00
    ld bc, $0000                                  ; $60EA: $01 $00 $00
    nop                                           ; $60ED: $00
    nop                                           ; $60EE: $00
    nop                                           ; $60EF: $00
    nop                                           ; $60F0: $00
    nop                                           ; $60F1: $00
    nop                                           ; $60F2: $00
    nop                                           ; $60F3: $00
    nop                                           ; $60F4: $00
    nop                                           ; $60F5: $00
    nop                                           ; $60F6: $00
    nop                                           ; $60F7: $00
    nop                                           ; $60F8: $00
    nop                                           ; $60F9: $00
    nop                                           ; $60FA: $00
    nop                                           ; $60FB: $00
    nop                                           ; $60FC: $00
    nop                                           ; $60FD: $00
    nop                                           ; $60FE: $00
    nop                                           ; $60FF: $00
    ccf                                           ; $6100: $3F
    rlca                                          ; $6101: $07
    rra                                           ; $6102: $1F
    nop                                           ; $6103: $00
    rlca                                          ; $6104: $07
    nop                                           ; $6105: $00
    nop                                           ; $6106: $00
    nop                                           ; $6107: $00
    nop                                           ; $6108: $00
    nop                                           ; $6109: $00
    nop                                           ; $610A: $00
    nop                                           ; $610B: $00
    nop                                           ; $610C: $00
    nop                                           ; $610D: $00
    nop                                           ; $610E: $00
    nop                                           ; $610F: $00
    nop                                           ; $6110: $00
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

jr_021_611E:
    nop                                           ; $611E: $00
    nop                                           ; $611F: $00
    rst RST_38                                    ; $6120: $FF
    nop                                           ; $6121: $00
    rst RST_38                                    ; $6122: $FF
    nop                                           ; $6123: $00
    nop                                           ; $6124: $00
    nop                                           ; $6125: $00
    nop                                           ; $6126: $00
    nop                                           ; $6127: $00
    nop                                           ; $6128: $00
    nop                                           ; $6129: $00
    nop                                           ; $612A: $00
    nop                                           ; $612B: $00
    nop                                           ; $612C: $00
    nop                                           ; $612D: $00
    nop                                           ; $612E: $00
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
    inc bc                                        ; $6148: $03
    nop                                           ; $6149: $00
    rlca                                          ; $614A: $07
    nop                                           ; $614B: $00
    inc c                                         ; $614C: $0C
    inc bc                                        ; $614D: $03
    rra                                           ; $614E: $1F
    rlca                                          ; $614F: $07
    ccf                                           ; $6150: $3F
    rrca                                          ; $6151: $0F
    ld a, a                                       ; $6152: $7F
    rra                                           ; $6153: $1F
    ld a, a                                       ; $6154: $7F
    rra                                           ; $6155: $1F
    ld a, a                                       ; $6156: $7F
    rlca                                          ; $6157: $07
    ccf                                           ; $6158: $3F
    ld bc, $0619                                  ; $6159: $01 $19 $06
    dec c                                         ; $615C: $0D
    ld [bc], a                                    ; $615D: $02
    rlca                                          ; $615E: $07
    nop                                           ; $615F: $00
    nop                                           ; $6160: $00
    nop                                           ; $6161: $00
    nop                                           ; $6162: $00
    nop                                           ; $6163: $00
    ldh a, [rP1]                                  ; $6164: $F0 $00
    rst RST_38                                    ; $6166: $FF
    nop                                           ; $6167: $00
    rlca                                          ; $6168: $07
    ld hl, sp-$19                                 ; $6169: $F8 $E7
    ei                                            ; $616B: $FB
    rst RST_30                                    ; $616C: $F7
    ei                                            ; $616D: $FB
    ei                                            ; $616E: $FB
    db $FD                                        ; $616F: $FD
    ei                                            ; $6170: $FB
    db $FD                                        ; $6171: $FD
    db $FD                                        ; $6172: $FD
    cp $FD                                        ; $6173: $FE $FD
    cp $FE                                        ; $6175: $FE $FE
    rst RST_38                                    ; $6177: $FF
    rst RST_38                                    ; $6178: $FF
    ccf                                           ; $6179: $3F
    rst RST_38                                    ; $617A: $FF
    nop                                           ; $617B: $00
    rla                                           ; $617C: $17
    ld [$000C], sp                                ; $617D: $08 $0C $00
    nop                                           ; $6180: $00
    nop                                           ; $6181: $00
    ldh a, [rP1]                                  ; $6182: $F0 $00
    rst RST_38                                    ; $6184: $FF
    ret nz                                        ; $6185: $C0

    rst RST_38                                    ; $6186: $FF
    db $F4                                        ; $6187: $F4
    rst RST_38                                    ; $6188: $FF
    rst RST_30                                    ; $6189: $F7
    rst RST_38                                    ; $618A: $FF
    ei                                            ; $618B: $FB
    rst RST_38                                    ; $618C: $FF
    db $FC                                        ; $618D: $FC
    rst RST_38                                    ; $618E: $FF
    rst RST_38                                    ; $618F: $FF
    cp $01                                        ; $6190: $FE $01
    rst RST_38                                    ; $6192: $FF
    sbc [hl]                                      ; $6193: $9E
    rst RST_38                                    ; $6194: $FF
    rst RST_20                                    ; $6195: $E7
    rst RST_38                                    ; $6196: $FF
    dec de                                        ; $6197: $1B
    ld e, a                                       ; $6198: $5F
    dec h                                         ; $6199: $25
    ld a, a                                       ; $619A: $7F
    nop                                           ; $619B: $00
    dec b                                         ; $619C: $05
    ld [bc], a                                    ; $619D: $02
    rlca                                          ; $619E: $07
    nop                                           ; $619F: $00
    rst RST_38                                    ; $61A0: $FF
    db $FC                                        ; $61A1: $FC
    cp $FF                                        ; $61A2: $FE $FF
    rst RST_38                                    ; $61A4: $FF
    ccf                                           ; $61A5: $3F
    ld a, a                                       ; $61A6: $7F
    rst RST_08                                    ; $61A7: $CF
    sbc a                                         ; $61A8: $9F
    ld [hl], e                                    ; $61A9: $73
    rst RST_20                                    ; $61AA: $E7
    sbc h                                         ; $61AB: $9C
    ei                                            ; $61AC: $FB
    rst RST_20                                    ; $61AD: $E7
    db $FD                                        ; $61AE: $FD
    ei                                            ; $61AF: $FB
    rst RST_38                                    ; $61B0: $FF
    nop                                           ; $61B1: $00
    db $FC                                        ; $61B2: $FC
    rst RST_38                                    ; $61B3: $FF
    rst RST_38                                    ; $61B4: $FF
    ccf                                           ; $61B5: $3F
    rst RST_38                                    ; $61B6: $FF
    rrca                                          ; $61B7: $0F
    ld e, a                                       ; $61B8: $5F
    inc hl                                        ; $61B9: $23
    ld a, a                                       ; $61BA: $7F
    nop                                           ; $61BB: $00
    ld [bc], a                                    ; $61BC: $02
    ld bc, $0003                                  ; $61BD: $01 $03 $00
    nop                                           ; $61C0: $00
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
    nop                                           ; $61CC: $00
    nop                                           ; $61CD: $00
    nop                                           ; $61CE: $00
    nop                                           ; $61CF: $00
    nop                                           ; $61D0: $00
    nop                                           ; $61D1: $00
    nop                                           ; $61D2: $00
    nop                                           ; $61D3: $00
    nop                                           ; $61D4: $00
    nop                                           ; $61D5: $00
    nop                                           ; $61D6: $00
    nop                                           ; $61D7: $00
    nop                                           ; $61D8: $00
    nop                                           ; $61D9: $00
    nop                                           ; $61DA: $00
    nop                                           ; $61DB: $00
    ldh a, [rP1]                                  ; $61DC: $F0 $00
    rst RST_38                                    ; $61DE: $FF
    ret nz                                        ; $61DF: $C0

    ld bc, $E700                                  ; $61E0: $01 $00 $E7
    nop                                           ; $61E3: $00
    ld a, a                                       ; $61E4: $7F
    add e                                         ; $61E5: $83
    adc a                                         ; $61E6: $8F
    ldh a, [$FFF6]                                ; $61E7: $F0 $F6
    ld sp, hl                                     ; $61E9: $F9
    ei                                            ; $61EA: $FB
    db $FC                                        ; $61EB: $FC
    rst RST_38                                    ; $61EC: $FF
    cp $FF                                        ; $61ED: $FE $FF
    ccf                                           ; $61EF: $3F
    rst RST_38                                    ; $61F0: $FF
    rst RST_18                                    ; $61F1: $DF
    rst RST_38                                    ; $61F2: $FF
    rst RST_18                                    ; $61F3: $DF
    rst RST_38                                    ; $61F4: $FF
    inc bc                                        ; $61F5: $03
    inc bc                                        ; $61F6: $03
    db $FC                                        ; $61F7: $FC
    ldh [rIE], a                                  ; $61F8: $E0 $FF
    rst RST_38                                    ; $61FA: $FF
    rst RST_38                                    ; $61FB: $FF
    rst RST_38                                    ; $61FC: $FF
    rst RST_38                                    ; $61FD: $FF
    rst RST_38                                    ; $61FE: $FF
    ccf                                           ; $61FF: $3F
    ld [hl], b                                    ; $6200: $70
    nop                                           ; $6201: $00
    cp $00                                        ; $6202: $FE $00
    rlca                                          ; $6204: $07
    ld hl, sp-$08                                 ; $6205: $F8 $F8
    rst RST_38                                    ; $6207: $FF
    rst RST_38                                    ; $6208: $FF
    rra                                           ; $6209: $1F
    rra                                           ; $620A: $1F
    rst RST_20                                    ; $620B: $E7
    rlca                                          ; $620C: $07
    ld sp, hl                                     ; $620D: $F9
    add c                                         ; $620E: $81
    ld a, [hl]                                    ; $620F: $7E
    ldh [$FF1F], a                                ; $6210: $E0 $1F
    rst RST_38                                    ; $6212: $FF
    ret nz                                        ; $6213: $C0

    rst RST_38                                    ; $6214: $FF
    rst RST_38                                    ; $6215: $FF
    rst RST_38                                    ; $6216: $FF
    rst RST_38                                    ; $6217: $FF
    rst RST_38                                    ; $6218: $FF
    ld e, $1F                                     ; $6219: $1E $1F
    pop hl                                        ; $621B: $E1
    rst RST_38                                    ; $621C: $FF
    rst RST_38                                    ; $621D: $FF
    ldh a, [rIE]                                  ; $621E: $F0 $FF
    adc a                                         ; $6220: $8F
    rst RST_38                                    ; $6221: $FF
    ldh a, [rIE]                                  ; $6222: $F0 $FF
    adc a                                         ; $6224: $8F
    rst RST_38                                    ; $6225: $FF
    ldh a, [rIE]                                  ; $6226: $F0 $FF
    adc a                                         ; $6228: $8F
    rst RST_38                                    ; $6229: $FF
    ldh a, [rIE]                                  ; $622A: $F0 $FF
    rst RST_00                                    ; $622C: $C7
    rst RST_38                                    ; $622D: $FF
    ld hl, sp-$01                                 ; $622E: $F8 $FF
    ldh [rIE], a                                  ; $6230: $E0 $FF
    ldh a, [rIE]                                  ; $6232: $F0 $FF
    rst RST_38                                    ; $6234: $FF
    ccf                                           ; $6235: $3F
    rst RST_38                                    ; $6236: $FF
    adc $FF                                       ; $6237: $CE $FF
    ldh a, [rIE]                                  ; $6239: $F0 $FF
    ret nz                                        ; $623B: $C0

    rst RST_38                                    ; $623C: $FF
    nop                                           ; $623D: $00
    db $E3                                        ; $623E: $E3
    nop                                           ; $623F: $00
    rst RST_38                                    ; $6240: $FF
    ld bc, HeaderManufacturerCode                 ; $6241: $01 $3F $01
    rra                                           ; $6244: $1F
    dec b                                         ; $6245: $05
    ccf                                           ; $6246: $3F
    dec c                                         ; $6247: $0D
    rst RST_38                                    ; $6248: $FF
    dec c                                         ; $6249: $0D
    ld a, a                                       ; $624A: $7F
    adc l                                         ; $624B: $8D
    rst RST_38                                    ; $624C: $FF
    dec c                                         ; $624D: $0D
    rst RST_38                                    ; $624E: $FF
    ld b, $FF                                     ; $624F: $06 $FF
    and $FF                                       ; $6251: $E6 $FF
    rst RST_20                                    ; $6253: $E7
    rst RST_38                                    ; $6254: $FF
    rst RST_20                                    ; $6255: $E7
    rst RST_38                                    ; $6256: $FF
    rst RST_20                                    ; $6257: $E7
    rst RST_38                                    ; $6258: $FF
    db $E3                                        ; $6259: $E3
    rst RST_38                                    ; $625A: $FF
    ldh a, [rIE]                                  ; $625B: $F0 $FF
    nop                                           ; $625D: $00
    ldh a, [rP1]                                  ; $625E: $F0 $00
    ld bc, $1F00                                  ; $6260: $01 $00 $1F
    nop                                           ; $6263: $00
    rla                                           ; $6264: $17
    ld [$001F], sp                                ; $6265: $08 $1F $00
    rst RST_38                                    ; $6268: $FF
    rlca                                          ; $6269: $07
    rst RST_38                                    ; $626A: $FF
    rra                                           ; $626B: $1F
    rst RST_38                                    ; $626C: $FF
    ld a, a                                       ; $626D: $7F
    rst RST_38                                    ; $626E: $FF
    rst RST_38                                    ; $626F: $FF
    rst RST_38                                    ; $6270: $FF
    rst RST_38                                    ; $6271: $FF
    rst RST_38                                    ; $6272: $FF
    rst RST_38                                    ; $6273: $FF
    rst RST_38                                    ; $6274: $FF
    ld hl, sp-$01                                 ; $6275: $F8 $FF
    add b                                         ; $6277: $80
    ld hl, sp+$00                                 ; $6278: $F8 $00
    add b                                         ; $627A: $80
    nop                                           ; $627B: $00
    nop                                           ; $627C: $00
    nop                                           ; $627D: $00
    nop                                           ; $627E: $00
    nop                                           ; $627F: $00
    inc bc                                        ; $6280: $03
    nop                                           ; $6281: $00
    ld [bc], a                                    ; $6282: $02
    ld bc, $003F                                  ; $6283: $01 $3F $00
    rst RST_28                                    ; $6286: $EF
    ld de, $07FF                                  ; $6287: $11 $FF $07
    rst RST_38                                    ; $628A: $FF
    rst RST_38                                    ; $628B: $FF
    rst RST_38                                    ; $628C: $FF
    rst RST_38                                    ; $628D: $FF
    rst RST_38                                    ; $628E: $FF
    rst RST_38                                    ; $628F: $FF
    rst RST_38                                    ; $6290: $FF
    db $FC                                        ; $6291: $FC
    rst RST_38                                    ; $6292: $FF
    ldh a, [$FFFC]                                ; $6293: $F0 $FC
    nop                                           ; $6295: $00
    ldh a, [rP1]                                  ; $6296: $F0 $00
    add b                                         ; $6298: $80
    nop                                           ; $6299: $00
    nop                                           ; $629A: $00
    nop                                           ; $629B: $00
    nop                                           ; $629C: $00
    nop                                           ; $629D: $00
    nop                                           ; $629E: $00
    nop                                           ; $629F: $00
    ld bc, $0300                                  ; $62A0: $01 $00 $03
    nop                                           ; $62A3: $00
    rlca                                          ; $62A4: $07
    ld bc, $0107                                  ; $62A5: $01 $07 $01
    rra                                           ; $62A8: $1F
    inc bc                                        ; $62A9: $03
    ld [hl], e                                    ; $62AA: $73
    dec c                                         ; $62AB: $0D
    ld b, c                                       ; $62AC: $41
    ld a, $61                                     ; $62AD: $3E $61
    ld e, $3F                                     ; $62AF: $1E $3F
    nop                                           ; $62B1: $00
    ld e, $00                                     ; $62B2: $1E $00
    nop                                           ; $62B4: $00
    nop                                           ; $62B5: $00
    nop                                           ; $62B6: $00
    nop                                           ; $62B7: $00
    nop                                           ; $62B8: $00
    nop                                           ; $62B9: $00
    nop                                           ; $62BA: $00
    nop                                           ; $62BB: $00
    nop                                           ; $62BC: $00
    nop                                           ; $62BD: $00
    nop                                           ; $62BE: $00
    nop                                           ; $62BF: $00
    rlca                                          ; $62C0: $07
    nop                                           ; $62C1: $00
    rlca                                          ; $62C2: $07
    nop                                           ; $62C3: $00
    rlca                                          ; $62C4: $07
    nop                                           ; $62C5: $00
    rrca                                          ; $62C6: $0F
    rlca                                          ; $62C7: $07
    rra                                           ; $62C8: $1F
    rrca                                          ; $62C9: $0F
    rra                                           ; $62CA: $1F
    rrca                                          ; $62CB: $0F
    rrca                                          ; $62CC: $0F
    rlca                                          ; $62CD: $07
    rrca                                          ; $62CE: $0F
    rlca                                          ; $62CF: $07
    rlca                                          ; $62D0: $07
    inc bc                                        ; $62D1: $03
    rlca                                          ; $62D2: $07
    inc bc                                        ; $62D3: $03
    inc bc                                        ; $62D4: $03
    ld bc, $0001                                  ; $62D5: $01 $01 $00
    nop                                           ; $62D8: $00
    nop                                           ; $62D9: $00
    nop                                           ; $62DA: $00
    nop                                           ; $62DB: $00
    nop                                           ; $62DC: $00
    nop                                           ; $62DD: $00
    nop                                           ; $62DE: $00
    nop                                           ; $62DF: $00
    nop                                           ; $62E0: $00
    nop                                           ; $62E1: $00
    nop                                           ; $62E2: $00
    nop                                           ; $62E3: $00
    nop                                           ; $62E4: $00
    nop                                           ; $62E5: $00
    nop                                           ; $62E6: $00
    nop                                           ; $62E7: $00
    nop                                           ; $62E8: $00
    nop                                           ; $62E9: $00
    nop                                           ; $62EA: $00
    nop                                           ; $62EB: $00
    nop                                           ; $62EC: $00
    nop                                           ; $62ED: $00
    nop                                           ; $62EE: $00
    nop                                           ; $62EF: $00
    nop                                           ; $62F0: $00
    nop                                           ; $62F1: $00
    nop                                           ; $62F2: $00
    nop                                           ; $62F3: $00
    nop                                           ; $62F4: $00
    nop                                           ; $62F5: $00
    nop                                           ; $62F6: $00
    nop                                           ; $62F7: $00
    nop                                           ; $62F8: $00
    nop                                           ; $62F9: $00
    nop                                           ; $62FA: $00
    nop                                           ; $62FB: $00
    nop                                           ; $62FC: $00
    nop                                           ; $62FD: $00
    nop                                           ; $62FE: $00
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
    ld bc, $0200                                  ; $630C: $01 $00 $02
    ld bc, $0102                                  ; $630F: $01 $02 $01
    rlca                                          ; $6312: $07
    nop                                           ; $6313: $00
    ld a, a                                       ; $6314: $7F
    inc bc                                        ; $6315: $03
    add a                                         ; $6316: $87
    ld a, b                                       ; $6317: $78
    ld b, $FD                                     ; $6318: $06 $FD
    ld d, a                                       ; $631A: $57
    db $FD                                        ; $631B: $FD
    rst RST_38                                    ; $631C: $FF
    db $FC                                        ; $631D: $FC
    rst RST_38                                    ; $631E: $FF
    db $FD                                        ; $631F: $FD
    rst RST_38                                    ; $6320: $FF
    dec a                                         ; $6321: $3D
    ccf                                           ; $6322: $3F
    pop bc                                        ; $6323: $C1
    rst RST_38                                    ; $6324: $FF
    ld b, $07                                     ; $6325: $06 $07
    inc bc                                        ; $6327: $03
    inc bc                                        ; $6328: $03
    nop                                           ; $6329: $00
    rlca                                          ; $632A: $07
    ld bc, $0619                                  ; $632B: $01 $19 $06
    jr nz, @+$21                                  ; $632E: $20 $1F

    ldh [$FF1F], a                                ; $6330: $E0 $1F
    db $D3                                        ; $6332: $D3
    ld l, h                                       ; $6333: $6C
    db $FC                                        ; $6334: $FC
    ld h, b                                       ; $6335: $60
    ld hl, sp-$70                                 ; $6336: $F8 $90
    ld hl, sp-$10                                 ; $6338: $F8 $F0
    ldh a, [$FFE0]                                ; $633A: $F0 $E0
    ldh [$FFC0], a                                ; $633C: $E0 $C0
    ret nz                                        ; $633E: $C0

    nop                                           ; $633F: $00
    nop                                           ; $6340: $00
    nop                                           ; $6341: $00
    nop                                           ; $6342: $00
    nop                                           ; $6343: $00
    nop                                           ; $6344: $00
    nop                                           ; $6345: $00
    nop                                           ; $6346: $00
    nop                                           ; $6347: $00
    nop                                           ; $6348: $00
    nop                                           ; $6349: $00
    nop                                           ; $634A: $00
    nop                                           ; $634B: $00
    nop                                           ; $634C: $00
    nop                                           ; $634D: $00
    ld bc, $0200                                  ; $634E: $01 $00 $02
    ld bc, $01FF                                  ; $6351: $01 $FF $01
    inc bc                                        ; $6354: $03
    db $FD                                        ; $6355: $FD
    rst RST_38                                    ; $6356: $FF
    db $FC                                        ; $6357: $FC
    cp $FD                                        ; $6358: $FE $FD
    cp $FD                                        ; $635A: $FE $FD
    rst RST_38                                    ; $635C: $FF
    db $FC                                        ; $635D: $FC
    db $FC                                        ; $635E: $FC
    nop                                           ; $635F: $00
    nop                                           ; $6360: $00
    nop                                           ; $6361: $00
    nop                                           ; $6362: $00
    nop                                           ; $6363: $00
    nop                                           ; $6364: $00
    nop                                           ; $6365: $00
    nop                                           ; $6366: $00
    nop                                           ; $6367: $00
    add b                                         ; $6368: $80
    nop                                           ; $6369: $00
    ld b, b                                       ; $636A: $40
    add b                                         ; $636B: $80
    ldh [$FFC0], a                                ; $636C: $E0 $C0
    ld sp, hl                                     ; $636E: $F9
    ld h, b                                       ; $636F: $60
    and $19                                       ; $6370: $E6 $19
    ei                                            ; $6372: $FB
    dec e                                         ; $6373: $1D
    rst RST_38                                    ; $6374: $FF
    dec e                                         ; $6375: $1D
    ccf                                           ; $6376: $3F
    dec b                                         ; $6377: $05
    ccf                                           ; $6378: $3F
    add hl, de                                    ; $6379: $19
    ld a, c                                       ; $637A: $79
    jr nc, jr_021_63CD                            ; $637B: $30 $50

    jr nz, jr_021_63DF                            ; $637D: $20 $60

    nop                                           ; $637F: $00
    ld bc, $0200                                  ; $6380: $01 $00 $02
    ld bc, $0305                                  ; $6383: $01 $05 $03
    dec bc                                        ; $6386: $0B
    rlca                                          ; $6387: $07
    dec bc                                        ; $6388: $0B
    rlca                                          ; $6389: $07
    rra                                           ; $638A: $1F
    rrca                                          ; $638B: $0F
    rra                                           ; $638C: $1F
    inc bc                                        ; $638D: $03
    ccf                                           ; $638E: $3F
    ld bc, $1827                                  ; $638F: $01 $27 $18
    ld b, d                                       ; $6392: $42
    inc a                                         ; $6393: $3C
    add d                                         ; $6394: $82
    ld a, h                                       ; $6395: $7C
    cp $00                                        ; $6396: $FE $00
    nop                                           ; $6398: $00
    nop                                           ; $6399: $00
    nop                                           ; $639A: $00
    nop                                           ; $639B: $00
    nop                                           ; $639C: $00
    nop                                           ; $639D: $00
    nop                                           ; $639E: $00
    nop                                           ; $639F: $00
    nop                                           ; $63A0: $00
    nop                                           ; $63A1: $00
    nop                                           ; $63A2: $00
    nop                                           ; $63A3: $00
    nop                                           ; $63A4: $00
    nop                                           ; $63A5: $00
    nop                                           ; $63A6: $00
    nop                                           ; $63A7: $00
    nop                                           ; $63A8: $00
    nop                                           ; $63A9: $00
    nop                                           ; $63AA: $00
    nop                                           ; $63AB: $00
    nop                                           ; $63AC: $00
    nop                                           ; $63AD: $00
    nop                                           ; $63AE: $00
    nop                                           ; $63AF: $00
    nop                                           ; $63B0: $00
    nop                                           ; $63B1: $00
    ld bc, $0100                                  ; $63B2: $01 $00 $01
    nop                                           ; $63B5: $00
    inc bc                                        ; $63B6: $03
    nop                                           ; $63B7: $00
    inc bc                                        ; $63B8: $03
    ld bc, $0001                                  ; $63B9: $01 $01 $00

Call_021_63BC:
    inc bc                                        ; $63BC: $03
    ld bc, $0001                                  ; $63BD: $01 $01 $00
    ld a, [hl]                                    ; $63C0: $7E
    nop                                           ; $63C1: $00
    rst RST_38                                    ; $63C2: $FF
    ld [bc], a                                    ; $63C3: $02
    rst RST_38                                    ; $63C4: $FF
    ld [hl], c                                    ; $63C5: $71
    rst RST_38                                    ; $63C6: $FF
    ld bc, $FCFF                                  ; $63C7: $01 $FF $FC
    cp $11                                        ; $63CA: $FE $11
    scf                                           ; $63CC: $37

jr_021_63CD:
    call Call_000_2DFF                            ; $63CD: $CD $FF $2D
    ld a, a                                       ; $63D0: $7F
    and e                                         ; $63D1: $A3
    rst RST_38                                    ; $63D2: $FF
    nop                                           ; $63D3: $00
    cp [hl]                                       ; $63D4: $BE
    ld [hl], e                                    ; $63D5: $73
    cp d                                          ; $63D6: $BA
    ld l, l                                       ; $63D7: $6D
    cp [hl]                                       ; $63D8: $BE
    ld l, l                                       ; $63D9: $6D
    rst RST_38                                    ; $63DA: $FF
    or d                                          ; $63DB: $B2
    db $E3                                        ; $63DC: $E3
    ld e, l                                       ; $63DD: $5D
    rst RST_38                                    ; $63DE: $FF

jr_021_63DF:
    inc bc                                        ; $63DF: $03
    rst RST_38                                    ; $63E0: $FF
    ld hl, sp-$08                                 ; $63E1: $F8 $F8
    rst RST_30                                    ; $63E3: $F7
    ldh a, [$FF6F]                                ; $63E4: $F0 $6F
    ldh a, [rIF]                                  ; $63E6: $F0 $0F
    rrca                                          ; $63E8: $0F
    nop                                           ; $63E9: $00
    dec b                                         ; $63EA: $05
    inc bc                                        ; $63EB: $03
    dec b                                         ; $63EC: $05
    inc bc                                        ; $63ED: $03
    rlca                                          ; $63EE: $07
    inc bc                                        ; $63EF: $03
    rlca                                          ; $63F0: $07
    inc bc                                        ; $63F1: $03
    inc bc                                        ; $63F2: $03
    ld bc, $0003                                  ; $63F3: $01 $03 $00
    rlca                                          ; $63F6: $07
    inc bc                                        ; $63F7: $03
    rlca                                          ; $63F8: $07
    inc bc                                        ; $63F9: $03
    rlca                                          ; $63FA: $07
    nop                                           ; $63FB: $00
    nop                                           ; $63FC: $00
    nop                                           ; $63FD: $00
    nop                                           ; $63FE: $00
    nop                                           ; $63FF: $00
    add b                                         ; $6400: $80
    nop                                           ; $6401: $00
    ldh a, [rP1]                                  ; $6402: $F0 $00
    ld [$ACF0], sp                                ; $6404: $08 $F0 $AC
    ld hl, sp-$04                                 ; $6407: $F8 $FC
    ld hl, sp-$08                                 ; $6409: $F8 $F8
    ldh a, [$FFF0]                                ; $640B: $F0 $F0
    ldh [$FFE4], a                                ; $640D: $E0 $E4
    ret nz                                        ; $640F: $C0

    rlc h                                         ; $6410: $CB $04
    or $0B                                        ; $6412: $F6 $0B
    rst RST_38                                    ; $6414: $FF
    ld l, b                                       ; $6415: $68
    cp $F7                                        ; $6416: $FE $F7
    rst RST_38                                    ; $6418: $FF
    ldh a, [$FFFD]                                ; $6419: $F0 $FD
    or $FE                                        ; $641B: $F6 $FE
    ld hl, sp-$08                                 ; $641D: $F8 $F8
    nop                                           ; $641F: $00
    jr nc, @-$3E                                  ; $6420: $30 $C0

    ld l, b                                       ; $6422: $68
    or b                                          ; $6423: $B0
    ld hl, sp+$30                                 ; $6424: $F8 $30
    ldh a, [$FFC0]                                ; $6426: $F0 $C0
    ldh a, [$FFE0]                                ; $6428: $F0 $E0
    ldh a, [$FFE0]                                ; $642A: $F0 $E0
    ldh [$FFC0], a                                ; $642C: $E0 $C0
    ldh [$FFC0], a                                ; $642E: $E0 $C0
    ldh a, [rP1]                                  ; $6430: $F0 $00
    add sp, -$30                                  ; $6432: $E8 $D0
    call nz, $FCB8                                ; $6434: $C4 $B8 $FC
    nop                                           ; $6437: $00
    nop                                           ; $6438: $00
    nop                                           ; $6439: $00
    nop                                           ; $643A: $00
    nop                                           ; $643B: $00
    nop                                           ; $643C: $00
    nop                                           ; $643D: $00
    nop                                           ; $643E: $00
    nop                                           ; $643F: $00
    nop                                           ; $6440: $00
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
    nop                                           ; $6458: $00
    nop                                           ; $6459: $00
    add b                                         ; $645A: $80
    nop                                           ; $645B: $00
    add b                                         ; $645C: $80
    nop                                           ; $645D: $00
    add b                                         ; $645E: $80
    nop                                           ; $645F: $00
    ld a, [hl]                                    ; $6460: $7E
    nop                                           ; $6461: $00
    rst RST_38                                    ; $6462: $FF
    ld [bc], a                                    ; $6463: $02
    rst RST_38                                    ; $6464: $FF
    ld [hl], c                                    ; $6465: $71
    rst RST_38                                    ; $6466: $FF
    ld bc, $FCFF                                  ; $6467: $01 $FF $FC
    cp $11                                        ; $646A: $FE $11
    scf                                           ; $646C: $37
    call Call_000_2DFF                            ; $646D: $CD $FF $2D
    ld a, a                                       ; $6470: $7F
    and e                                         ; $6471: $A3
    rst RST_38                                    ; $6472: $FF
    nop                                           ; $6473: $00
    cp [hl]                                       ; $6474: $BE
    ld [hl], e                                    ; $6475: $73
    cp d                                          ; $6476: $BA
    ld l, l                                       ; $6477: $6D
    cp [hl]                                       ; $6478: $BE
    ld l, l                                       ; $6479: $6D
    rst RST_38                                    ; $647A: $FF
    or d                                          ; $647B: $B2
    db $E3                                        ; $647C: $E3
    ld e, l                                       ; $647D: $5D
    rst RST_38                                    ; $647E: $FF
    inc bc                                        ; $647F: $03
    rst RST_38                                    ; $6480: $FF
    ld hl, sp-$08                                 ; $6481: $F8 $F8
    rst RST_30                                    ; $6483: $F7
    ldh a, [$FF6F]                                ; $6484: $F0 $6F
    ldh a, [rIF]                                  ; $6486: $F0 $0F
    rra                                           ; $6488: $1F
    nop                                           ; $6489: $00
    dec b                                         ; $648A: $05
    inc bc                                        ; $648B: $03
    dec b                                         ; $648C: $05
    inc bc                                        ; $648D: $03
    rlca                                          ; $648E: $07
    inc bc                                        ; $648F: $03
    rlca                                          ; $6490: $07
    inc bc                                        ; $6491: $03
    inc bc                                        ; $6492: $03
    ld bc, $0003                                  ; $6493: $01 $03 $00
    rlca                                          ; $6496: $07
    inc bc                                        ; $6497: $03
    rlca                                          ; $6498: $07
    inc bc                                        ; $6499: $03
    rlca                                          ; $649A: $07
    nop                                           ; $649B: $00
    nop                                           ; $649C: $00
    nop                                           ; $649D: $00
    nop                                           ; $649E: $00
    nop                                           ; $649F: $00
    add b                                         ; $64A0: $80
    nop                                           ; $64A1: $00
    ldh a, [rP1]                                  ; $64A2: $F0 $00
    ld [$ACF0], sp                                ; $64A4: $08 $F0 $AC
    ld hl, sp-$04                                 ; $64A7: $F8 $FC
    ld hl, sp-$08                                 ; $64A9: $F8 $F8
    ldh a, [$FFF8]                                ; $64AB: $F0 $F8
    ldh [$FFF4], a                                ; $64AD: $E0 $F4
    ret z                                         ; $64AF: $C8

    db $DD                                        ; $64B0: $DD
    ld [$09FF], sp                                ; $64B1: $08 $FF $09
    rst RST_38                                    ; $64B4: $FF
    ld h, h                                       ; $64B5: $64
    rst RST_38                                    ; $64B6: $FF
    db $ED                                        ; $64B7: $ED
    ei                                            ; $64B8: $FB
    xor $FF                                       ; $64B9: $EE $FF
    xor $FF                                       ; $64BB: $EE $FF
    push af                                       ; $64BD: $F5
    rst RST_38                                    ; $64BE: $FF
    nop                                           ; $64BF: $00
    jr nc, @-$3E                                  ; $64C0: $30 $C0

    ld l, b                                       ; $64C2: $68
    or b                                          ; $64C3: $B0
    ld hl, sp+$30                                 ; $64C4: $F8 $30
    ldh a, [$FFC0]                                ; $64C6: $F0 $C0
    ldh a, [$FFE0]                                ; $64C8: $F0 $E0
    ldh a, [$FFE0]                                ; $64CA: $F0 $E0
    ldh [$FFC0], a                                ; $64CC: $E0 $C0
    ldh [$FFC0], a                                ; $64CE: $E0 $C0
    ldh a, [rP1]                                  ; $64D0: $F0 $00
    add sp, -$30                                  ; $64D2: $E8 $D0
    call nz, $FCB8                                ; $64D4: $C4 $B8 $FC
    nop                                           ; $64D7: $00
    nop                                           ; $64D8: $00
    nop                                           ; $64D9: $00
    nop                                           ; $64DA: $00
    nop                                           ; $64DB: $00
    nop                                           ; $64DC: $00
    nop                                           ; $64DD: $00
    nop                                           ; $64DE: $00
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
    nop                                           ; $64EA: $00
    nop                                           ; $64EB: $00
    ret nz                                        ; $64EC: $C0

    nop                                           ; $64ED: $00
    ld b, b                                       ; $64EE: $40
    add b                                         ; $64EF: $80
    add b                                         ; $64F0: $80
    nop                                           ; $64F1: $00
    ldh [rP1], a                                  ; $64F2: $E0 $00
    ret nc                                        ; $64F4: $D0

    ldh [$FFE0], a                                ; $64F5: $E0 $E0
    nop                                           ; $64F7: $00
    add b                                         ; $64F8: $80
    nop                                           ; $64F9: $00
    ret nz                                        ; $64FA: $C0

    add b                                         ; $64FB: $80
    and b                                         ; $64FC: $A0
    ld b, b                                       ; $64FD: $40
    ld h, b                                       ; $64FE: $60
    nop                                           ; $64FF: $00
    ld a, [hl]                                    ; $6500: $7E
    nop                                           ; $6501: $00
    rst RST_38                                    ; $6502: $FF
    ld [bc], a                                    ; $6503: $02
    rst RST_38                                    ; $6504: $FF
    ld [hl], c                                    ; $6505: $71
    rst RST_38                                    ; $6506: $FF
    ld bc, $FCFF                                  ; $6507: $01 $FF $FC
    cp $11                                        ; $650A: $FE $11
    scf                                           ; $650C: $37
    call Call_000_2DFF                            ; $650D: $CD $FF $2D
    ld a, a                                       ; $6510: $7F
    and e                                         ; $6511: $A3
    rst RST_38                                    ; $6512: $FF
    nop                                           ; $6513: $00
    cp [hl]                                       ; $6514: $BE
    ld [hl], e                                    ; $6515: $73
    cp d                                          ; $6516: $BA
    ld l, l                                       ; $6517: $6D
    cp [hl]                                       ; $6518: $BE
    ld l, l                                       ; $6519: $6D
    rst RST_38                                    ; $651A: $FF
    or d                                          ; $651B: $B2
    db $E3                                        ; $651C: $E3
    ld e, l                                       ; $651D: $5D
    rst RST_38                                    ; $651E: $FF
    inc bc                                        ; $651F: $03
    rst RST_38                                    ; $6520: $FF
    ld hl, sp-$08                                 ; $6521: $F8 $F8
    rst RST_30                                    ; $6523: $F7
    ldh a, [$FF6F]                                ; $6524: $F0 $6F
    ldh a, [rIF]                                  ; $6526: $F0 $0F
    rra                                           ; $6528: $1F
    nop                                           ; $6529: $00
    dec b                                         ; $652A: $05
    inc bc                                        ; $652B: $03
    dec b                                         ; $652C: $05
    inc bc                                        ; $652D: $03
    rlca                                          ; $652E: $07
    inc bc                                        ; $652F: $03
    rlca                                          ; $6530: $07
    inc bc                                        ; $6531: $03
    inc bc                                        ; $6532: $03
    ld bc, $0003                                  ; $6533: $01 $03 $00
    rlca                                          ; $6536: $07
    inc bc                                        ; $6537: $03
    rlca                                          ; $6538: $07
    inc bc                                        ; $6539: $03
    rlca                                          ; $653A: $07
    nop                                           ; $653B: $00
    nop                                           ; $653C: $00
    nop                                           ; $653D: $00
    nop                                           ; $653E: $00
    nop                                           ; $653F: $00
    add b                                         ; $6540: $80
    nop                                           ; $6541: $00
    ldh a, [rP1]                                  ; $6542: $F0 $00
    ld [$ACF0], sp                                ; $6544: $08 $F0 $AC
    ld hl, sp-$04                                 ; $6547: $F8 $FC
    ld hl, sp-$08                                 ; $6549: $F8 $F8
    ldh a, [$FFF8]                                ; $654B: $F0 $F8
    ldh [$FFF4], a                                ; $654D: $E0 $F4
    ret z                                         ; $654F: $C8

    db $DD                                        ; $6550: $DD
    ld [$09F7], sp                                ; $6551: $08 $F7 $09
    ei                                            ; $6554: $FB
    ld h, h                                       ; $6555: $64
    jp nc, $D1ED                                  ; $6556: $D2 $ED $D1

    xor $D1                                       ; $6559: $EE $D1
    xor $FA                                       ; $655B: $EE $FA
    push af                                       ; $655D: $F5
    rst RST_38                                    ; $655E: $FF
    nop                                           ; $655F: $00
    jr nc, @-$3E                                  ; $6560: $30 $C0

    ld l, b                                       ; $6562: $68
    or b                                          ; $6563: $B0
    ld hl, sp+$30                                 ; $6564: $F8 $30
    ldh a, [$FFC0]                                ; $6566: $F0 $C0
    ldh a, [$FFE0]                                ; $6568: $F0 $E0
    ldh a, [$FFE0]                                ; $656A: $F0 $E0
    ldh [$FFC0], a                                ; $656C: $E0 $C0
    ldh [$FFC0], a                                ; $656E: $E0 $C0
    ldh a, [rP1]                                  ; $6570: $F0 $00
    add sp, -$30                                  ; $6572: $E8 $D0
    call nz, $FCB8                                ; $6574: $C4 $B8 $FC
    nop                                           ; $6577: $00
    nop                                           ; $6578: $00
    nop                                           ; $6579: $00
    nop                                           ; $657A: $00
    nop                                           ; $657B: $00
    nop                                           ; $657C: $00
    nop                                           ; $657D: $00
    nop                                           ; $657E: $00
    nop                                           ; $657F: $00
    nop                                           ; $6580: $00
    nop                                           ; $6581: $00
    nop                                           ; $6582: $00
    nop                                           ; $6583: $00
    nop                                           ; $6584: $00
    nop                                           ; $6585: $00
    nop                                           ; $6586: $00
    nop                                           ; $6587: $00
    nop                                           ; $6588: $00
    nop                                           ; $6589: $00
    nop                                           ; $658A: $00
    nop                                           ; $658B: $00
    ret nz                                        ; $658C: $C0

    nop                                           ; $658D: $00
    ld b, b                                       ; $658E: $40
    add b                                         ; $658F: $80
    add b                                         ; $6590: $80
    nop                                           ; $6591: $00
    ldh [rP1], a                                  ; $6592: $E0 $00
    ld d, b                                       ; $6594: $50
    ldh [$FFE0], a                                ; $6595: $E0 $E0
    nop                                           ; $6597: $00
    add b                                         ; $6598: $80
    nop                                           ; $6599: $00
    ret nz                                        ; $659A: $C0

    add b                                         ; $659B: $80
    and b                                         ; $659C: $A0
    ld b, b                                       ; $659D: $40
    ld h, b                                       ; $659E: $60
    nop                                           ; $659F: $00
    ld a, [hl]                                    ; $65A0: $7E
    nop                                           ; $65A1: $00
    rst RST_38                                    ; $65A2: $FF
    ld [bc], a                                    ; $65A3: $02
    xor $71                                       ; $65A4: $EE $71
    cp $01                                        ; $65A6: $FE $01
    jp $EEFC                                      ; $65A8: $C3 $FC $EE


    ld de, $CD32                                  ; $65AB: $11 $32 $CD
    ldh a, [c]                                    ; $65AE: $F2
    dec l                                         ; $65AF: $2D
    ld a, h                                       ; $65B0: $7C
    and e                                         ; $65B1: $A3
    rst RST_38                                    ; $65B2: $FF
    nop                                           ; $65B3: $00
    cp h                                          ; $65B4: $BC
    ld [hl], e                                    ; $65B5: $73
    or d                                          ; $65B6: $B2
    ld l, l                                       ; $65B7: $6D
    sub d                                         ; $65B8: $92
    ld l, l                                       ; $65B9: $6D
    call $E2B2                                    ; $65BA: $CD $B2 $E2
    ld e, l                                       ; $65BD: $5D
    db $FC                                        ; $65BE: $FC
    inc bc                                        ; $65BF: $03
    add a                                         ; $65C0: $87
    ld hl, sp-$38                                 ; $65C1: $F8 $C8
    rst RST_30                                    ; $65C3: $F7
    ldh a, [$FF6F]                                ; $65C4: $F0 $6F
    ldh a, [rIF]                                  ; $65C6: $F0 $0F
    rra                                           ; $65C8: $1F
    nop                                           ; $65C9: $00
    inc b                                         ; $65CA: $04
    inc bc                                        ; $65CB: $03
    inc b                                         ; $65CC: $04
    inc bc                                        ; $65CD: $03
    inc b                                         ; $65CE: $04
    inc bc                                        ; $65CF: $03
    ld b, $03                                     ; $65D0: $06 $03
    inc bc                                        ; $65D2: $03
    ld bc, $0003                                  ; $65D3: $01 $03 $00
    rlca                                          ; $65D6: $07
    inc bc                                        ; $65D7: $03
    rlca                                          ; $65D8: $07
    inc bc                                        ; $65D9: $03
    rlca                                          ; $65DA: $07
    nop                                           ; $65DB: $00
    nop                                           ; $65DC: $00
    nop                                           ; $65DD: $00
    nop                                           ; $65DE: $00
    nop                                           ; $65DF: $00
    add b                                         ; $65E0: $80
    nop                                           ; $65E1: $00
    ldh a, [rP1]                                  ; $65E2: $F0 $00
    ld [$07F0], sp                                ; $65E4: $08 $F0 $07
    ei                                            ; $65E7: $FB
    rlca                                          ; $65E8: $07
    ld hl, sp+$0C                                 ; $65E9: $F8 $0C
    di                                            ; $65EB: $F3
    jr @-$17                                      ; $65EC: $18 $E7

    inc [hl]                                      ; $65EE: $34
    set 2, l                                      ; $65EF: $CB $D5
    ld a, [hl+]                                   ; $65F1: $2A
    or $09                                        ; $65F2: $F6 $09
    sbc e                                         ; $65F4: $9B
    ld h, h                                       ; $65F5: $64
    ld [de], a                                    ; $65F6: $12
    db $ED                                        ; $65F7: $ED
    ld de, $11EE                                  ; $65F8: $11 $EE $11
    xor $0A                                       ; $65FB: $EE $0A
    push af                                       ; $65FD: $F5
    rst RST_38                                    ; $65FE: $FF
    nop                                           ; $65FF: $00
    jr nc, @-$2F                                  ; $6600: $30 $CF

    ld c, b                                       ; $6602: $48
    or a                                          ; $6603: $B7
    ret z                                         ; $6604: $C8

    scf                                           ; $6605: $37
    ccf                                           ; $6606: $3F
    ret z                                         ; $6607: $C8

    rla                                           ; $6608: $17
    rst RST_20                                    ; $6609: $E7
    db $10                                        ; $660A: $10
    ldh [$FF60], a                                ; $660B: $E0 $60
    ret nz                                        ; $660D: $C0

    ldh [$FFC0], a                                ; $660E: $E0 $C0
    ldh a, [rP1]                                  ; $6610: $F0 $00
    add sp, -$30                                  ; $6612: $E8 $D0
    call nz, $FCB8                                ; $6614: $C4 $B8 $FC
    nop                                           ; $6617: $00
    nop                                           ; $6618: $00
    nop                                           ; $6619: $00
    nop                                           ; $661A: $00
    nop                                           ; $661B: $00
    nop                                           ; $661C: $00
    nop                                           ; $661D: $00
    nop                                           ; $661E: $00
    nop                                           ; $661F: $00
    ld [hl], b                                    ; $6620: $70
    sub b                                         ; $6621: $90

jr_021_6622:
    jr @-$16                                      ; $6622: $18 $E8

    call z, Call_021_4634                         ; $6624: $CC $34 $46
    cp d                                          ; $6627: $BA
    add [hl]                                      ; $6628: $86
    ld a, d                                       ; $6629: $7A
    db $E3                                        ; $662A: $E3
    dec e                                         ; $662B: $1D
    inc de                                        ; $662C: $13
    db $ED                                        ; $662D: $ED
    db $E3                                        ; $662E: $E3
    dec e                                         ; $662F: $1D
    add d                                         ; $6630: $82
    ld a, h                                       ; $6631: $7C
    ld b, [hl]                                    ; $6632: $46
    cp d                                          ; $6633: $BA
    and [hl]                                      ; $6634: $A6
    ld e, d                                       ; $6635: $5A
    ld l, h                                       ; $6636: $6C
    sub h                                         ; $6637: $94
    jr jr_021_6622                                ; $6638: $18 $E8

    ld [hl], b                                    ; $663A: $70
    sub b                                         ; $663B: $90
    ldh [$FF60], a                                ; $663C: $E0 $60
    add b                                         ; $663E: $80
    add b                                         ; $663F: $80
    nop                                           ; $6640: $00
    nop                                           ; $6641: $00
    nop                                           ; $6642: $00
    nop                                           ; $6643: $00
    nop                                           ; $6644: $00
    nop                                           ; $6645: $00
    nop                                           ; $6646: $00
    nop                                           ; $6647: $00
    nop                                           ; $6648: $00
    nop                                           ; $6649: $00
    nop                                           ; $664A: $00
    nop                                           ; $664B: $00
    nop                                           ; $664C: $00
    nop                                           ; $664D: $00
    nop                                           ; $664E: $00
    nop                                           ; $664F: $00
    nop                                           ; $6650: $00
    nop                                           ; $6651: $00
    nop                                           ; $6652: $00
    nop                                           ; $6653: $00
    nop                                           ; $6654: $00
    nop                                           ; $6655: $00
    nop                                           ; $6656: $00
    nop                                           ; $6657: $00
    nop                                           ; $6658: $00
    nop                                           ; $6659: $00
    nop                                           ; $665A: $00
    nop                                           ; $665B: $00
    add b                                         ; $665C: $80
    add b                                         ; $665D: $80
    ldh [$FF60], a                                ; $665E: $E0 $60
    inc b                                         ; $6660: $04
    nop                                           ; $6661: $00
    dec de                                        ; $6662: $1B
    inc b                                         ; $6663: $04
    dec l                                         ; $6664: $2D
    ld a, [de]                                    ; $6665: $1A
    ccf                                           ; $6666: $3F
    ld [bc], a                                    ; $6667: $02
    cpl                                           ; $6668: $2F
    dec e                                         ; $6669: $1D
    rra                                           ; $666A: $1F
    ld bc, $0D17                                  ; $666B: $01 $17 $0D
    rrca                                          ; $666E: $0F
    nop                                           ; $666F: $00
    inc bc                                        ; $6670: $03
    nop                                           ; $6671: $00
    ld b, $01                                     ; $6672: $06 $01
    dec bc                                        ; $6674: $0B
    ld b, $0F                                     ; $6675: $06 $0F
    ld b, $0F                                     ; $6677: $06 $0F
    ld bc, $070F                                  ; $6679: $01 $0F $07
    rrca                                          ; $667C: $0F
    rlca                                          ; $667D: $07
    rlca                                          ; $667E: $07
    inc bc                                        ; $667F: $03
    rra                                           ; $6680: $1F
    nop                                           ; $6681: $00
    cpl                                           ; $6682: $2F
    ld d, $2F                                     ; $6683: $16 $2F
    db $10                                        ; $6685: $10
    ld a, a                                       ; $6686: $7F
    dec c                                         ; $6687: $0D
    ld a, a                                       ; $6688: $7F
    ld sp, $0D32                                  ; $6689: $31 $32 $0D
    ld l, $13                                     ; $668C: $2E $13
    ld [hl], $1B                                  ; $668E: $36 $1B
    ld a, [hl]                                    ; $6690: $7E
    inc bc                                        ; $6691: $03
    cp [hl]                                       ; $6692: $BE
    ld l, e                                       ; $6693: $6B
    cp $6B                                        ; $6694: $FE $6B
    rst RST_38                                    ; $6696: $FF
    add hl, de                                    ; $6697: $19
    adc a                                         ; $6698: $8F
    ld [hl], l                                    ; $6699: $75
    rst RST_38                                    ; $669A: $FF
    ld c, $FF                                     ; $669B: $0E $FF
    ld a, h                                       ; $669D: $7C
    rst RST_38                                    ; $669E: $FF
    add e                                         ; $669F: $83
    rst RST_38                                    ; $66A0: $FF
    ret nz                                        ; $66A1: $C0

    rst RST_38                                    ; $66A2: $FF
    rra                                           ; $66A3: $1F
    rra                                           ; $66A4: $1F
    xor $0E                                       ; $66A5: $EE $0E
    push af                                       ; $66A7: $F5
    ld c, $F1                                     ; $66A8: $0E $F1
    pop af                                        ; $66AA: $F1
    nop                                           ; $66AB: $00
    sub b                                         ; $66AC: $90
    ldh [$FFD0], a                                ; $66AD: $E0 $D0
    ldh [$FFD0], a                                ; $66AF: $E0 $D0
    ldh [$FFE0], a                                ; $66B1: $E0 $E0
    ret nz                                        ; $66B3: $C0

    ldh [$FFC0], a                                ; $66B4: $E0 $C0
    ret nz                                        ; $66B6: $C0

    nop                                           ; $66B7: $00
    ldh [$FFC0], a                                ; $66B8: $E0 $C0
    ldh [$FFC0], a                                ; $66BA: $E0 $C0
    ldh [rP1], a                                  ; $66BC: $E0 $00
    nop                                           ; $66BE: $00
    nop                                           ; $66BF: $00
    inc bc                                        ; $66C0: $03
    nop                                           ; $66C1: $00
    rrca                                          ; $66C2: $0F
    inc bc                                        ; $66C3: $03
    ccf                                           ; $66C4: $3F
    rrca                                          ; $66C5: $0F
    ld [hl], b                                    ; $66C6: $70
    ccf                                           ; $66C7: $3F
    ret nz                                        ; $66C8: $C0

    ld a, a                                       ; $66C9: $7F
    add b                                         ; $66CA: $80
    rst RST_38                                    ; $66CB: $FF
    add b                                         ; $66CC: $80
    rst RST_38                                    ; $66CD: $FF
    nop                                           ; $66CE: $00
    rst RST_38                                    ; $66CF: $FF
    nop                                           ; $66D0: $00
    rst RST_38                                    ; $66D1: $FF
    nop                                           ; $66D2: $00
    rst RST_38                                    ; $66D3: $FF
    nop                                           ; $66D4: $00
    rst RST_38                                    ; $66D5: $FF
    ld bc, $01FF                                  ; $66D6: $01 $FF $01
    rst RST_38                                    ; $66D9: $FF
    nop                                           ; $66DA: $00
    rst RST_38                                    ; $66DB: $FF
    nop                                           ; $66DC: $00
    rst RST_38                                    ; $66DD: $FF
    nop                                           ; $66DE: $00
    rst RST_38                                    ; $66DF: $FF
    nop                                           ; $66E0: $00
    rst RST_38                                    ; $66E1: $FF
    add b                                         ; $66E2: $80
    rst RST_38                                    ; $66E3: $FF
    add b                                         ; $66E4: $80
    rst RST_38                                    ; $66E5: $FF
    ret nz                                        ; $66E6: $C0

    ld a, a                                       ; $66E7: $7F
    ldh a, [$FF3F]                                ; $66E8: $F0 $3F
    rst RST_38                                    ; $66EA: $FF
    rrca                                          ; $66EB: $0F
    rra                                           ; $66EC: $1F
    db $E3                                        ; $66ED: $E3
    dec bc                                        ; $66EE: $0B
    ldh a, [$FF3E]                                ; $66EF: $F0 $3E
    ret nz                                        ; $66F1: $C0

    ld c, c                                       ; $66F2: $49
    or [hl]                                       ; $66F3: $B6
    cp $37                                        ; $66F4: $FE $37
    ld a, [hl]                                    ; $66F6: $7E
    rrca                                          ; $66F7: $0F
    ld a, a                                       ; $66F8: $7F
    ccf                                           ; $66F9: $3F
    ld a, a                                       ; $66FA: $7F
    ccf                                           ; $66FB: $3F
    ccf                                           ; $66FC: $3F
    rra                                           ; $66FD: $1F
    rra                                           ; $66FE: $1F
    ld b, $00                                     ; $66FF: $06 $00
    nop                                           ; $6701: $00
    ld bc, $1F00                                  ; $6702: $01 $00 $1F
    ld bc, $1FFC                                  ; $6705: $01 $FC $1F
    db $E3                                        ; $6708: $E3
    rst RST_38                                    ; $6709: $FF
    rst RST_00                                    ; $670A: $C7
    db $FC                                        ; $670B: $FC
    db $E3                                        ; $670C: $E3
    rst RST_38                                    ; $670D: $FF
    ld [hl], b                                    ; $670E: $70
    rst RST_38                                    ; $670F: $FF
    jr @+$01                                      ; $6710: $18 $FF

    dec c                                         ; $6712: $0D
    rst RST_38                                    ; $6713: $FF
    db $10                                        ; $6714: $10
    rst RST_38                                    ; $6715: $FF
    jr nz, @+$01                                  ; $6716: $20 $FF

    ld e, $FF                                     ; $6718: $1E $FF
    ld a, h                                       ; $671A: $7C
    rst RST_38                                    ; $671B: $FF
    pop af                                        ; $671C: $F1
    rst RST_38                                    ; $671D: $FF
    ret nz                                        ; $671E: $C0

    rst RST_38                                    ; $671F: $FF
    ret nz                                        ; $6720: $C0

    rst RST_38                                    ; $6721: $FF
    pop af                                        ; $6722: $F1
    rst RST_38                                    ; $6723: $FF
    ld a, h                                       ; $6724: $7C
    rst RST_38                                    ; $6725: $FF
    ld e, $FF                                     ; $6726: $1E $FF
    jr nz, @+$01                                  ; $6728: $20 $FF

    db $10                                        ; $672A: $10
    rst RST_38                                    ; $672B: $FF
    dec c                                         ; $672C: $0D
    rst RST_38                                    ; $672D: $FF
    jr c, @+$01                                   ; $672E: $38 $FF

    ldh a, [rIE]                                  ; $6730: $F0 $FF
    jp $87FF                                      ; $6732: $C3 $FF $87


    db $FC                                        ; $6735: $FC
    db $E3                                        ; $6736: $E3
    rst RST_38                                    ; $6737: $FF
    db $FC                                        ; $6738: $FC
    rra                                           ; $6739: $1F
    rra                                           ; $673A: $1F
    ld bc, $0081                                  ; $673B: $01 $81 $00
    add b                                         ; $673E: $80
    nop                                           ; $673F: $00
    nop                                           ; $6740: $00
    nop                                           ; $6741: $00
    ld hl, sp+$00                                 ; $6742: $F8 $00
    ldh a, [$FFE0]                                ; $6744: $F0 $E0
    ldh [$FFC0], a                                ; $6746: $E0 $C0
    rst RST_38                                    ; $6748: $FF
    nop                                           ; $6749: $00
    cp $7C                                        ; $674A: $FE $7C
    adc h                                         ; $674C: $8C
    ld hl, sp+$38                                 ; $674D: $F8 $38
    ldh a, [$FFF0]                                ; $674F: $F0 $F0
    ret nz                                        ; $6751: $C0

    rst RST_38                                    ; $6752: $FF
    nop                                           ; $6753: $00
    rst RST_38                                    ; $6754: $FF
    rst RST_38                                    ; $6755: $FF
    rlca                                          ; $6756: $07
    cp $1E                                        ; $6757: $FE $1E
    ld hl, sp+$78                                 ; $6759: $F8 $78
    ldh [$FFFC], a                                ; $675B: $E0 $FC
    add b                                         ; $675D: $80
    ld c, $FC                                     ; $675E: $0E $FC
    ld c, $FC                                     ; $6760: $0E $FC

jr_021_6762:
    db $FC                                        ; $6762: $FC
    add b                                         ; $6763: $80
    ld a, b                                       ; $6764: $78
    ldh [rNR34], a                                ; $6765: $E0 $1E
    ld hl, sp+$07                                 ; $6767: $F8 $07
    cp $FF                                        ; $6769: $FE $FF
    rst RST_38                                    ; $676B: $FF
    rst RST_38                                    ; $676C: $FF
    nop                                           ; $676D: $00
    ldh a, [$FFC0]                                ; $676E: $F0 $C0
    jr c, jr_021_6762                             ; $6770: $38 $F0

    adc h                                         ; $6772: $8C
    ld hl, sp-$02                                 ; $6773: $F8 $FE
    ld a, h                                       ; $6775: $7C
    rst RST_38                                    ; $6776: $FF
    nop                                           ; $6777: $00
    ldh [$FFC0], a                                ; $6778: $E0 $C0
    ldh a, [$FFE0]                                ; $677A: $F0 $E0
    ld hl, sp+$00                                 ; $677C: $F8 $00
    nop                                           ; $677E: $00
    nop                                           ; $677F: $00
    rlca                                          ; $6780: $07
    inc bc                                        ; $6781: $03
    rrca                                          ; $6782: $0F
    nop                                           ; $6783: $00
    inc de                                        ; $6784: $13
    dec c                                         ; $6785: $0D
    ld hl, $3F1E                                  ; $6786: $21 $1E $3F
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
    add sp, -$10                                  ; $67A0: $E8 $F0
    add sp, -$10                                  ; $67A2: $E8 $F0
    ld hl, sp-$10                                 ; $67A4: $F8 $F0
    db $FC                                        ; $67A6: $FC
    ret nz                                        ; $67A7: $C0

    ldh a, [c]                                    ; $67A8: $F2
    inc c                                         ; $67A9: $0C
    ld h, c                                       ; $67AA: $61
    ld e, $21                                     ; $67AB: $1E $21
    ld e, $1F                                     ; $67AD: $1E $1F
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
    nop                                           ; $67BE: $00
    nop                                           ; $67BF: $00
    nop                                           ; $67C0: $00
    nop                                           ; $67C1: $00
    nop                                           ; $67C2: $00
    nop                                           ; $67C3: $00
    ret nz                                        ; $67C4: $C0

    nop                                           ; $67C5: $00
    ret nz                                        ; $67C6: $C0

    add b                                         ; $67C7: $80
    add b                                         ; $67C8: $80
    nop                                           ; $67C9: $00
    nop                                           ; $67CA: $00
    nop                                           ; $67CB: $00
    nop                                           ; $67CC: $00
    nop                                           ; $67CD: $00
    nop                                           ; $67CE: $00
    nop                                           ; $67CF: $00
    nop                                           ; $67D0: $00
    nop                                           ; $67D1: $00
    nop                                           ; $67D2: $00
    nop                                           ; $67D3: $00
    nop                                           ; $67D4: $00
    nop                                           ; $67D5: $00
    nop                                           ; $67D6: $00
    nop                                           ; $67D7: $00
    nop                                           ; $67D8: $00
    nop                                           ; $67D9: $00
    add b                                         ; $67DA: $80
    nop                                           ; $67DB: $00
    ret nz                                        ; $67DC: $C0

    add b                                         ; $67DD: $80
    ret nz                                        ; $67DE: $C0

    nop                                           ; $67DF: $00
    inc b                                         ; $67E0: $04
    nop                                           ; $67E1: $00
    ld a, [de]                                    ; $67E2: $1A
    inc b                                         ; $67E3: $04
    dec l                                         ; $67E4: $2D
    ld a, [de]                                    ; $67E5: $1A
    ccf                                           ; $67E6: $3F
    ld [bc], a                                    ; $67E7: $02
    cpl                                           ; $67E8: $2F
    dec e                                         ; $67E9: $1D
    rra                                           ; $67EA: $1F
    ld bc, $0D17                                  ; $67EB: $01 $17 $0D
    rrca                                          ; $67EE: $0F
    inc bc                                        ; $67EF: $03
    inc bc                                        ; $67F0: $03
    nop                                           ; $67F1: $00
    ld bc, $0200                                  ; $67F2: $01 $00 $02
    ld bc, $0103                                  ; $67F5: $01 $03 $01
    ld bc, $0000                                  ; $67F8: $01 $00 $00
    nop                                           ; $67FB: $00
    nop                                           ; $67FC: $00
    nop                                           ; $67FD: $00
    nop                                           ; $67FE: $00
    nop                                           ; $67FF: $00
    nop                                           ; $6800: $00
    nop                                           ; $6801: $00
    nop                                           ; $6802: $00
    nop                                           ; $6803: $00
    nop                                           ; $6804: $00
    nop                                           ; $6805: $00
    nop                                           ; $6806: $00
    nop                                           ; $6807: $00
    nop                                           ; $6808: $00
    nop                                           ; $6809: $00
    nop                                           ; $680A: $00
    nop                                           ; $680B: $00

jr_021_680C:
    inc bc                                        ; $680C: $03
    nop                                           ; $680D: $00
    rra                                           ; $680E: $1F
    nop                                           ; $680F: $00
    ld l, $17                                     ; $6810: $2E $17
    cpl                                           ; $6812: $2F
    db $10                                        ; $6813: $10
    ld a, [hl]                                    ; $6814: $7E
    rrca                                          ; $6815: $0F
    ld a, a                                       ; $6816: $7F

jr_021_6817:
    ld sp, $0C33                                  ; $6817: $31 $33 $0C

jr_021_681A:
    cpl                                           ; $681A: $2F
    ld [de], a                                    ; $681B: $12
    scf                                           ; $681C: $37
    ld a, [de]                                    ; $681D: $1A
    ld a, a                                       ; $681E: $7F
    nop                                           ; $681F: $00
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
    ldh [rP1], a                                  ; $682A: $E0 $00
    ret nc                                        ; $682C: $D0

    jr nz, jr_021_6817                            ; $682D: $20 $E8

    jr nc, jr_021_681A                            ; $682F: $30 $E9

    db $10                                        ; $6831: $10
    ld a, [hl]                                    ; $6832: $7E
    sbc c                                         ; $6833: $99
    ld hl, sp+$07                                 ; $6834: $F8 $07
    cp a                                          ; $6836: $BF
    rst RST_18                                    ; $6837: $DF
    rst RST_38                                    ; $6838: $FF
    rst RST_18                                    ; $6839: $DF
    cp $1F                                        ; $683A: $FE $1F
    db $FC                                        ; $683C: $FC
    ld e, a                                       ; $683D: $5F
    ld sp, hl                                     ; $683E: $F9
    ld l, [hl]                                    ; $683F: $6E
    nop                                           ; $6840: $00
    nop                                           ; $6841: $00
    nop                                           ; $6842: $00
    nop                                           ; $6843: $00
    nop                                           ; $6844: $00

jr_021_6845:
    nop                                           ; $6845: $00
    nop                                           ; $6846: $00
    nop                                           ; $6847: $00
    ret nz                                        ; $6848: $C0

    nop                                           ; $6849: $00
    jr nz, jr_021_680C                            ; $684A: $20 $C0

    db $10                                        ; $684C: $10
    ldh [rNR11], a                                ; $684D: $E0 $11
    ldh [$FF27], a                                ; $684F: $E0 $27
    ret nz                                        ; $6851: $C0

    ld e, c                                       ; $6852: $59
    add [hl]                                      ; $6853: $86
    and c                                         ; $6854: $A1
    ld e, [hl]                                    ; $6855: $5E
    ld hl, $20DE                                  ; $6856: $21 $DE $20
    rst RST_18                                    ; $6859: $DF
    ldh [$FF1F], a                                ; $685A: $E0 $1F
    db $10                                        ; $685C: $10
    rrca                                          ; $685D: $0F
    rrca                                          ; $685E: $0F
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
    add b                                         ; $686A: $80
    nop                                           ; $686B: $00
    ld b, b                                       ; $686C: $40
    add b                                         ; $686D: $80
    ld b, b                                       ; $686E: $40
    add b                                         ; $686F: $80
    ld a, [hl]                                    ; $6870: $7E
    add b                                         ; $6871: $80
    and c                                         ; $6872: $A1
    ld e, [hl]                                    ; $6873: $5E
    ld e, $E0                                     ; $6874: $1E $E0
    sub d                                         ; $6876: $92
    ld l, h                                       ; $6877: $6C
    sbc l                                         ; $6878: $9D
    ld h, d                                       ; $6879: $62
    ld l, d                                       ; $687A: $6A
    sub b                                         ; $687B: $90
    call nc, Call_000_0C08                        ; $687C: $D4 $08 $0C
    nop                                           ; $687F: $00
    cp e                                          ; $6880: $BB
    ld l, l                                       ; $6881: $6D
    ei                                            ; $6882: $FB
    ld l, l                                       ; $6883: $6D
    rst RST_38                                    ; $6884: $FF
    dec de                                        ; $6885: $1B
    adc a                                         ; $6886: $8F
    ld [hl], a                                    ; $6887: $77
    rst RST_38                                    ; $6888: $FF
    adc [hl]                                      ; $6889: $8E
    rst RST_38                                    ; $688A: $FF
    db $DD                                        ; $688B: $DD
    rst RST_38                                    ; $688C: $FF
    ldh [rIE], a                                  ; $688D: $E0 $FF
    rst RST_20                                    ; $688F: $E7
    rst RST_20                                    ; $6890: $E7
    db $DB                                        ; $6891: $DB
    jp $813D                                      ; $6892: $C3 $3D $81


    ld a, [hl]                                    ; $6895: $7E
    rst RST_00                                    ; $6896: $C7
    cp c                                          ; $6897: $B9
    rst RST_18                                    ; $6898: $DF
    and a                                         ; $6899: $A7
    rst RST_38                                    ; $689A: $FF
    inc e                                         ; $689B: $1C
    db $FC                                        ; $689C: $FC
    ld a, b                                       ; $689D: $78
    ld a, b                                       ; $689E: $78
    nop                                           ; $689F: $00
    xor $71                                       ; $68A0: $EE $71
    rst RST_20                                    ; $68A2: $E7
    ld a, b                                       ; $68A3: $78

jr_021_68A4:
    db $E4                                        ; $68A4: $E4
    ld a, b                                       ; $68A5: $78
    ret z                                         ; $68A6: $C8

    ldh a, [$FFF0]                                ; $68A7: $F0 $F0
    ret nz                                        ; $68A9: $C0

    ret nc                                        ; $68AA: $D0

    jr nz, jr_021_6845                            ; $68AB: $20 $98

    ldh [$FFE6], a                                ; $68AD: $E0 $E6
    ret c                                         ; $68AF: $D8

    pop bc                                        ; $68B0: $C1
    cp [hl]                                       ; $68B1: $BE
    ret nz                                        ; $68B2: $C0

    ccf                                           ; $68B3: $3F
    ldh [$FF5F], a                                ; $68B4: $E0 $5F
    ld sp, hl                                     ; $68B6: $F9
    ld b, $4F                                     ; $68B7: $06 $4F
    jr nc, jr_021_68E8                            ; $68B9: $30 $2D

    inc de                                        ; $68BB: $13
    cpl                                           ; $68BC: $2F
    inc de                                        ; $68BD: $13
    inc de                                        ; $68BE: $13
    nop                                           ; $68BF: $00
    ldh a, [rP1]                                  ; $68C0: $F0 $00
    adc b                                         ; $68C2: $88
    ld [hl], b                                    ; $68C3: $70
    db $F4                                        ; $68C4: $F4
    ld hl, sp-$05                                 ; $68C5: $F8 $FB
    db $FC                                        ; $68C7: $FC
    cp $7D                                        ; $68C8: $FE $7D
    rst RST_38                                    ; $68CA: $FF
    ld a, l                                       ; $68CB: $7D
    rst RST_38                                    ; $68CC: $FF
    dec e                                         ; $68CD: $1D
    rra                                           ; $68CE: $1F
    ld bc, $0001                                  ; $68CF: $01 $01 $00
    nop                                           ; $68D2: $00
    nop                                           ; $68D3: $00
    nop                                           ; $68D4: $00
    nop                                           ; $68D5: $00
    nop                                           ; $68D6: $00
    nop                                           ; $68D7: $00
    nop                                           ; $68D8: $00
    nop                                           ; $68D9: $00
    nop                                           ; $68DA: $00
    nop                                           ; $68DB: $00
    nop                                           ; $68DC: $00
    nop                                           ; $68DD: $00
    nop                                           ; $68DE: $00
    nop                                           ; $68DF: $00
    ret nz                                        ; $68E0: $C0

    nop                                           ; $68E1: $00
    jr nz, jr_021_68A4                            ; $68E2: $20 $C0

    ldh [$FFC0], a                                ; $68E4: $E0 $C0
    ldh a, [$FFE0]                                ; $68E6: $F0 $E0

jr_021_68E8:
    ldh a, [$FFC0]                                ; $68E8: $F0 $C0
    ret nc                                        ; $68EA: $D0

    jr nz, @-$76                                  ; $68EB: $20 $88

    ld [hl], b                                    ; $68ED: $70
    ld c, b                                       ; $68EE: $48
    jr nc, jr_021_6929                            ; $68EF: $30 $38

    nop                                           ; $68F1: $00
    nop                                           ; $68F2: $00
    nop                                           ; $68F3: $00
    nop                                           ; $68F4: $00
    nop                                           ; $68F5: $00
    nop                                           ; $68F6: $00
    nop                                           ; $68F7: $00
    nop                                           ; $68F8: $00
    nop                                           ; $68F9: $00
    nop                                           ; $68FA: $00
    nop                                           ; $68FB: $00
    nop                                           ; $68FC: $00
    nop                                           ; $68FD: $00
    nop                                           ; $68FE: $00
    nop                                           ; $68FF: $00
    jr c, jr_021_6939                             ; $6900: $38 $37

    ld [hl], b                                    ; $6902: $70
    ld l, a                                       ; $6903: $6F
    ld h, c                                       ; $6904: $61
    ld e, [hl]                                    ; $6905: $5E
    ldh [c], a                                    ; $6906: $E2
    db $DD                                        ; $6907: $DD
    pop bc                                        ; $6908: $C1
    cp [hl]                                       ; $6909: $BE
    pop bc                                        ; $690A: $C1
    cp [hl]                                       ; $690B: $BE
    ret nz                                        ; $690C: $C0

    cp a                                          ; $690D: $BF
    ret nz                                        ; $690E: $C0

    cp a                                          ; $690F: $BF
    ret nz                                        ; $6910: $C0

    cp a                                          ; $6911: $BF
    ldh [$FFDF], a                                ; $6912: $E0 $DF
    ld h, b                                       ; $6914: $60
    ld e, a                                       ; $6915: $5F
    ld [hl], b                                    ; $6916: $70
    ld l, a                                       ; $6917: $6F
    jr c, jr_021_6951                             ; $6918: $38 $37

    ld e, $19                                     ; $691A: $1E $19
    rrca                                          ; $691C: $0F
    ld c, $03                                     ; $691D: $0E $03
    inc bc                                        ; $691F: $03
    nop                                           ; $6920: $00
    nop                                           ; $6921: $00
    nop                                           ; $6922: $00
    nop                                           ; $6923: $00
    nop                                           ; $6924: $00
    nop                                           ; $6925: $00
    nop                                           ; $6926: $00

jr_021_6927:
    nop                                           ; $6927: $00
    nop                                           ; $6928: $00

jr_021_6929:
    nop                                           ; $6929: $00
    nop                                           ; $692A: $00
    nop                                           ; $692B: $00
    nop                                           ; $692C: $00
    nop                                           ; $692D: $00
    nop                                           ; $692E: $00
    nop                                           ; $692F: $00
    nop                                           ; $6930: $00
    nop                                           ; $6931: $00
    nop                                           ; $6932: $00
    nop                                           ; $6933: $00
    nop                                           ; $6934: $00
    nop                                           ; $6935: $00
    nop                                           ; $6936: $00
    nop                                           ; $6937: $00
    nop                                           ; $6938: $00

jr_021_6939:
    nop                                           ; $6939: $00
    inc bc                                        ; $693A: $03
    inc bc                                        ; $693B: $03
    rrca                                          ; $693C: $0F
    ld c, $1E                                     ; $693D: $0E $1E
    add hl, de                                    ; $693F: $19
    nop                                           ; $6940: $00
    rst RST_38                                    ; $6941: $FF
    nop                                           ; $6942: $00
    rst RST_38                                    ; $6943: $FF
    ret nz                                        ; $6944: $C0

    ccf                                           ; $6945: $3F
    jr nz, jr_021_6927                            ; $6946: $20 $DF

    ldh a, [rIF]                                  ; $6948: $F0 $0F
    ld e, h                                       ; $694A: $5C
    and e                                         ; $694B: $A3
    di                                            ; $694C: $F3
    inc c                                         ; $694D: $0C
    ld d, c                                       ; $694E: $51
    xor [hl]                                      ; $694F: $AE
    or c                                          ; $6950: $B1

jr_021_6951:
    ld c, [hl]                                    ; $6951: $4E
    reti                                          ; $6952: $D9


    ld h, $07                                     ; $6953: $26 $07
    ld hl, sp+$00                                 ; $6955: $F8 $00
    rst RST_38                                    ; $6957: $FF
    nop                                           ; $6958: $00
    rst RST_38                                    ; $6959: $FF
    nop                                           ; $695A: $00
    rst RST_38                                    ; $695B: $FF
    rst RST_38                                    ; $695C: $FF
    nop                                           ; $695D: $00
    rst RST_38                                    ; $695E: $FF
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
    nop                                           ; $6978: $00
    nop                                           ; $6979: $00
    rst RST_38                                    ; $697A: $FF
    rst RST_38                                    ; $697B: $FF
    rst RST_38                                    ; $697C: $FF
    nop                                           ; $697D: $00
    nop                                           ; $697E: $00
    rst RST_38                                    ; $697F: $FF
    nop                                           ; $6980: $00
    rst RST_38                                    ; $6981: $FF
    nop                                           ; $6982: $00
    rst RST_38                                    ; $6983: $FF
    nop                                           ; $6984: $00
    rst RST_38                                    ; $6985: $FF
    ld bc, $01FE                                  ; $6986: $01 $FE $01
    cp $FE                                        ; $6989: $FE $FE
    ld bc, $FE01                                  ; $698B: $01 $01 $FE
    ld bc, $01FE                                  ; $698E: $01 $FE $01
    cp $01                                        ; $6991: $FE $01
    cp $01                                        ; $6993: $FE $01
    cp $FE                                        ; $6995: $FE $FE
    ld bc, $FF00                                  ; $6997: $01 $00 $FF
    nop                                           ; $699A: $00
    rst RST_38                                    ; $699B: $FF
    rst RST_38                                    ; $699C: $FF
    nop                                           ; $699D: $00
    rst RST_38                                    ; $699E: $FF
    rst RST_38                                    ; $699F: $FF
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
    nop                                           ; $69B2: $00
    nop                                           ; $69B3: $00
    nop                                           ; $69B4: $00
    nop                                           ; $69B5: $00
    nop                                           ; $69B6: $00
    nop                                           ; $69B7: $00
    nop                                           ; $69B8: $00
    nop                                           ; $69B9: $00
    rst RST_38                                    ; $69BA: $FF
    rst RST_38                                    ; $69BB: $FF
    rst RST_38                                    ; $69BC: $FF
    nop                                           ; $69BD: $00
    nop                                           ; $69BE: $00
    rst RST_38                                    ; $69BF: $FF
    rst RST_38                                    ; $69C0: $FF
    rst RST_38                                    ; $69C1: $FF
    rst RST_38                                    ; $69C2: $FF
    nop                                           ; $69C3: $00
    nop                                           ; $69C4: $00
    rst RST_38                                    ; $69C5: $FF
    ld [bc], a                                    ; $69C6: $02
    db $FD                                        ; $69C7: $FD
    ld [bc], a                                    ; $69C8: $02
    db $FD                                        ; $69C9: $FD
    rst RST_30                                    ; $69CA: $F7
    ld [$F30C], sp                                ; $69CB: $08 $0C $F3
    inc bc                                        ; $69CE: $03
    db $FC                                        ; $69CF: $FC
    add d                                         ; $69D0: $82
    ld a, l                                       ; $69D1: $7D
    add d                                         ; $69D2: $82
    ld a, l                                       ; $69D3: $7D
    ld b, d                                       ; $69D4: $42
    cp l                                          ; $69D5: $BD
    ld [hl+], a                                   ; $69D6: $22
    db $DD                                        ; $69D7: $DD
    inc de                                        ; $69D8: $13
    db $EC                                        ; $69D9: $EC
    rst RST_28                                    ; $69DA: $EF
    db $10                                        ; $69DB: $10
    ld [bc], a                                    ; $69DC: $02
    db $FD                                        ; $69DD: $FD
    ld bc, $00FE                                  ; $69DE: $01 $FE $00
    rst RST_38                                    ; $69E1: $FF
    rst RST_38                                    ; $69E2: $FF
    nop                                           ; $69E3: $00
    rst RST_38                                    ; $69E4: $FF
    rst RST_38                                    ; $69E5: $FF
    ld [bc], a                                    ; $69E6: $02
    ld bc, $030C                                  ; $69E7: $01 $0C $03
    ld d, $0D                                     ; $69EA: $16 $0D
    rra                                           ; $69EC: $1F
    inc c                                         ; $69ED: $0C
    rra                                           ; $69EE: $1F
    inc bc                                        ; $69EF: $03
    rra                                           ; $69F0: $1F
    rrca                                          ; $69F1: $0F
    rra                                           ; $69F2: $1F
    rrca                                          ; $69F3: $0F
    rrca                                          ; $69F4: $0F
    rlca                                          ; $69F5: $07
    rrca                                          ; $69F6: $0F
    rlca                                          ; $69F7: $07
    rra                                           ; $69F8: $1F
    nop                                           ; $69F9: $00
    daa                                           ; $69FA: $27
    dec de                                        ; $69FB: $1B
    ld b, e                                       ; $69FC: $43
    dec a                                         ; $69FD: $3D
    ld a, a                                       ; $69FE: $7F
    nop                                           ; $69FF: $00
    rst RST_38                                    ; $6A00: $FF
    rst RST_38                                    ; $6A01: $FF
    rst RST_38                                    ; $6A02: $FF
    nop                                           ; $6A03: $00
    nop                                           ; $6A04: $00
    rst RST_38                                    ; $6A05: $FF
    sbc [hl]                                      ; $6A06: $9E
    ld h, c                                       ; $6A07: $61
    pop af                                        ; $6A08: $F1
    ld c, $20                                     ; $6A09: $0E $20
    rst RST_18                                    ; $6A0B: $DF
    ret nz                                        ; $6A0C: $C0

    ccf                                           ; $6A0D: $3F
    nop                                           ; $6A0E: $00
    rst RST_38                                    ; $6A0F: $FF
    nop                                           ; $6A10: $00

jr_021_6A11:
    rst RST_38                                    ; $6A11: $FF
    nop                                           ; $6A12: $00
    rst RST_38                                    ; $6A13: $FF
    nop                                           ; $6A14: $00
    rst RST_38                                    ; $6A15: $FF
    nop                                           ; $6A16: $00
    rst RST_38                                    ; $6A17: $FF
    nop                                           ; $6A18: $00
    rst RST_38                                    ; $6A19: $FF
    nop                                           ; $6A1A: $00
    rst RST_38                                    ; $6A1B: $FF
    add c                                         ; $6A1C: $81
    ld a, [hl]                                    ; $6A1D: $7E
    ld b, d                                       ; $6A1E: $42
    cp l                                          ; $6A1F: $BD
    nop                                           ; $6A20: $00
    rst RST_38                                    ; $6A21: $FF
    rst RST_38                                    ; $6A22: $FF
    nop                                           ; $6A23: $00
    rst RST_38                                    ; $6A24: $FF
    rst RST_38                                    ; $6A25: $FF
    inc e                                         ; $6A26: $1C
    db $EB                                        ; $6A27: $EB
    jr jr_021_6A11                                ; $6A28: $18 $E7

jr_021_6A2A:
    inc h                                         ; $6A2A: $24
    jp Jump_000_01C2                              ; $6A2B: $C3 $C2 $01


    ld hl, $A1C0                                  ; $6A2E: $21 $C0 $A1
    ret nz                                        ; $6A31: $C0

    and c                                         ; $6A32: $A1
    ret nz                                        ; $6A33: $C0

    ret nz                                        ; $6A34: $C0

    add b                                         ; $6A35: $80
    ret nz                                        ; $6A36: $C0

    add b                                         ; $6A37: $80
    add b                                         ; $6A38: $80
    nop                                           ; $6A39: $00
    ret nz                                        ; $6A3A: $C0

    add b                                         ; $6A3B: $80
    ret nz                                        ; $6A3C: $C0

    add b                                         ; $6A3D: $80
    ret nz                                        ; $6A3E: $C0

    nop                                           ; $6A3F: $00
    rst RST_38                                    ; $6A40: $FF
    rst RST_38                                    ; $6A41: $FF
    rst RST_38                                    ; $6A42: $FF
    nop                                           ; $6A43: $00
    ld bc, $00FE                                  ; $6A44: $01 $FE $00
    rst RST_38                                    ; $6A47: $FF
    nop                                           ; $6A48: $00
    rst RST_38                                    ; $6A49: $FF
    ldh a, [rIF]                                  ; $6A4A: $F0 $0F
    adc l                                         ; $6A4C: $8D
    ld [hl], d                                    ; $6A4D: $72
    ld b, e                                       ; $6A4E: $43
    cp l                                          ; $6A4F: $BD
    ld e, a                                       ; $6A50: $5F
    and b                                         ; $6A51: $A0
    ld b, b                                       ; $6A52: $40

jr_021_6A53:
    cp a                                          ; $6A53: $BF
    ld b, c                                       ; $6A54: $41
    cp [hl]                                       ; $6A55: $BE
    ld b, a                                       ; $6A56: $47
    cp c                                          ; $6A57: $B9
    di                                            ; $6A58: $F3
    inc c                                         ; $6A59: $0C
    rst RST_08                                    ; $6A5A: $CF
    inc sp                                        ; $6A5B: $33
    ld h, a                                       ; $6A5C: $67
    sbc b                                         ; $6A5D: $98
    ld hl, sp+$07                                 ; $6A5E: $F8 $07
    nop                                           ; $6A60: $00
    rst RST_38                                    ; $6A61: $FF
    rst RST_38                                    ; $6A62: $FF
    nop                                           ; $6A63: $00
    rst RST_38                                    ; $6A64: $FF
    rst RST_38                                    ; $6A65: $FF
    ld b, b                                       ; $6A66: $40
    add b                                         ; $6A67: $80
    jr nz, jr_021_6A2A                            ; $6A68: $20 $C0

    inc a                                         ; $6A6A: $3C
    ret nz                                        ; $6A6B: $C0

    ld [hl+], a                                   ; $6A6C: $22
    call c, Call_000_3EFF                         ; $6A6D: $DC $FF $3E
    ld a, a                                       ; $6A70: $7F
    rst RST_18                                    ; $6A71: $DF
    rst RST_38                                    ; $6A72: $FF
    rst RST_18                                    ; $6A73: $DF
    rst RST_38                                    ; $6A74: $FF
    ccf                                           ; $6A75: $3F
    ccf                                           ; $6A76: $3F
    ld b, $07                                     ; $6A77: $06 $07
    nop                                           ; $6A79: $00
    ld bc, $0100                                  ; $6A7A: $01 $00 $01
    nop                                           ; $6A7D: $00
    ld [bc], a                                    ; $6A7E: $02
    ld bc, $F907                                  ; $6A7F: $01 $07 $F9
    ld a, $C6                                     ; $6A82: $3E $C6
    ld hl, sp+$38                                 ; $6A84: $F8 $38
    ret nz                                        ; $6A86: $C0

    ret nz                                        ; $6A87: $C0

    rst RST_38                                    ; $6A88: $FF
    rst RST_38                                    ; $6A89: $FF
    rst RST_38                                    ; $6A8A: $FF
    nop                                           ; $6A8B: $00
    ccf                                           ; $6A8C: $3F
    rst RST_00                                    ; $6A8D: $C7
    ld hl, sp+$38                                 ; $6A8E: $F8 $38
    ret nz                                        ; $6A90: $C0

    ret nz                                        ; $6A91: $C0

    add b                                         ; $6A92: $80
    add b                                         ; $6A93: $80
    add b                                         ; $6A94: $80
    nop                                           ; $6A95: $00
    ret nz                                        ; $6A96: $C0

    ret nz                                        ; $6A97: $C0

    ld hl, sp+$38                                 ; $6A98: $F8 $38
    ld a, $C6                                     ; $6A9A: $3E $C6
    rst RST_38                                    ; $6A9C: $FF
    ld bc, $FFFF                                  ; $6A9D: $01 $FF $FF
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
    nop                                           ; $6AB0: $00
    nop                                           ; $6AB1: $00
    nop                                           ; $6AB2: $00
    nop                                           ; $6AB3: $00
    nop                                           ; $6AB4: $00
    nop                                           ; $6AB5: $00
    nop                                           ; $6AB6: $00
    nop                                           ; $6AB7: $00
    nop                                           ; $6AB8: $00
    nop                                           ; $6AB9: $00
    ret nz                                        ; $6ABA: $C0

    ret nz                                        ; $6ABB: $C0

    rst RST_38                                    ; $6ABC: $FF
    ccf                                           ; $6ABD: $3F
    rst RST_38                                    ; $6ABE: $FF
    nop                                           ; $6ABF: $00
    ldh [$FFC0], a                                ; $6AC0: $E0 $C0
    ld hl, sp-$40                                 ; $6AC2: $F8 $C0
    db $FC                                        ; $6AC4: $FC
    ret c                                         ; $6AC5: $D8

    db $FC                                        ; $6AC6: $FC
    cp b                                          ; $6AC7: $B8
    db $FC                                        ; $6AC8: $FC
    jr c, jr_021_6B47                             ; $6AC9: $38 $7C

    nop                                           ; $6ACB: $00
    ld b, h                                       ; $6ACC: $44
    jr c, jr_021_6A53                             ; $6ACD: $38 $84

    ld a, b                                       ; $6ACF: $78
    ld hl, sp+$00                                 ; $6AD0: $F8 $00
    nop                                           ; $6AD2: $00
    nop                                           ; $6AD3: $00
    nop                                           ; $6AD4: $00
    nop                                           ; $6AD5: $00
    nop                                           ; $6AD6: $00
    nop                                           ; $6AD7: $00
    nop                                           ; $6AD8: $00
    nop                                           ; $6AD9: $00
    nop                                           ; $6ADA: $00
    nop                                           ; $6ADB: $00
    nop                                           ; $6ADC: $00
    nop                                           ; $6ADD: $00
    nop                                           ; $6ADE: $00
    nop                                           ; $6ADF: $00
    inc sp                                        ; $6AE0: $33
    ld e, $67                                     ; $6AE1: $1E $67
    inc a                                         ; $6AE3: $3C
    ld h, a                                       ; $6AE4: $67
    dec a                                         ; $6AE5: $3D
    jp $C67F                                      ; $6AE6: $C3 $7F $C6


    ld a, a                                       ; $6AE9: $7F
    adc $7F                                       ; $6AEA: $CE $7F
    rst RST_08                                    ; $6AEC: $CF
    ld a, e                                       ; $6AED: $7B
    rst RST_08                                    ; $6AEE: $CF
    ld a, e                                       ; $6AEF: $7B
    rst RST_00                                    ; $6AF0: $C7
    ld a, l                                       ; $6AF1: $7D
    ld h, a                                       ; $6AF2: $67
    inc a                                         ; $6AF3: $3C
    ld l, e                                       ; $6AF4: $6B
    ld a, $37                                     ; $6AF5: $3E $37
    dec de                                        ; $6AF7: $1B
    rra                                           ; $6AF8: $1F
    inc c                                         ; $6AF9: $0C
    rrca                                          ; $6AFA: $0F
    ld [bc], a                                    ; $6AFB: $02
    inc bc                                        ; $6AFC: $03
    nop                                           ; $6AFD: $00
    nop                                           ; $6AFE: $00
    nop                                           ; $6AFF: $00
    nop                                           ; $6B00: $00
    nop                                           ; $6B01: $00
    nop                                           ; $6B02: $00
    nop                                           ; $6B03: $00
    nop                                           ; $6B04: $00
    nop                                           ; $6B05: $00
    nop                                           ; $6B06: $00
    nop                                           ; $6B07: $00
    nop                                           ; $6B08: $00
    nop                                           ; $6B09: $00
    nop                                           ; $6B0A: $00
    nop                                           ; $6B0B: $00
    nop                                           ; $6B0C: $00
    nop                                           ; $6B0D: $00
    nop                                           ; $6B0E: $00
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
    inc bc                                        ; $6B1A: $03
    nop                                           ; $6B1B: $00
    rrca                                          ; $6B1C: $0F
    inc bc                                        ; $6B1D: $03
    dec e                                         ; $6B1E: $1D
    ld c, $E6                                     ; $6B1F: $0E $E6
    ld a, a                                       ; $6B21: $7F
    adc b                                         ; $6B22: $88
    rst RST_38                                    ; $6B23: $FF
    nop                                           ; $6B24: $00
    rst RST_38                                    ; $6B25: $FF
    nop                                           ; $6B26: $00
    rst RST_38                                    ; $6B27: $FF
    nop                                           ; $6B28: $00
    rst RST_38                                    ; $6B29: $FF
    nop                                           ; $6B2A: $00
    rst RST_38                                    ; $6B2B: $FF
    nop                                           ; $6B2C: $00
    rst RST_38                                    ; $6B2D: $FF
    add b                                         ; $6B2E: $80
    rst RST_38                                    ; $6B2F: $FF
    sub b                                         ; $6B30: $90
    rst RST_38                                    ; $6B31: $FF
    call z, $FFFF                                 ; $6B32: $CC $FF $FF
    ld a, a                                       ; $6B35: $7F
    rst RST_38                                    ; $6B36: $FF
    add hl, sp                                    ; $6B37: $39
    rst RST_38                                    ; $6B38: $FF
    call z, Call_000_23FF                         ; $6B39: $CC $FF $23
    ccf                                           ; $6B3C: $3F
    nop                                           ; $6B3D: $00
    ld bc, $0000                                  ; $6B3E: $01 $00 $00
    nop                                           ; $6B41: $00
    nop                                           ; $6B42: $00
    nop                                           ; $6B43: $00
    nop                                           ; $6B44: $00
    nop                                           ; $6B45: $00
    nop                                           ; $6B46: $00

jr_021_6B47:
    nop                                           ; $6B47: $00
    nop                                           ; $6B48: $00
    nop                                           ; $6B49: $00
    nop                                           ; $6B4A: $00
    nop                                           ; $6B4B: $00
    nop                                           ; $6B4C: $00
    nop                                           ; $6B4D: $00
    nop                                           ; $6B4E: $00
    nop                                           ; $6B4F: $00
    nop                                           ; $6B50: $00
    nop                                           ; $6B51: $00
    nop                                           ; $6B52: $00
    nop                                           ; $6B53: $00
    nop                                           ; $6B54: $00
    nop                                           ; $6B55: $00
    nop                                           ; $6B56: $00
    nop                                           ; $6B57: $00
    pop bc                                        ; $6B58: $C1
    nop                                           ; $6B59: $00
    rst RST_00                                    ; $6B5A: $C7
    add c                                         ; $6B5B: $81
    sbc a                                         ; $6B5C: $9F
    ld b, $7F                                     ; $6B5D: $06 $7F
    dec e                                         ; $6B5F: $1D
    ld h, b                                       ; $6B60: $60
    nop                                           ; $6B61: $00
    pop hl                                        ; $6B62: $E1
    ld b, b                                       ; $6B63: $40
    rst RST_38                                    ; $6B64: $FF
    add c                                         ; $6B65: $81
    cp $3F                                        ; $6B66: $FE $3F
    ret nz                                        ; $6B68: $C0

    rst RST_38                                    ; $6B69: $FF
    nop                                           ; $6B6A: $00
    rst RST_38                                    ; $6B6B: $FF
    nop                                           ; $6B6C: $00
    rst RST_38                                    ; $6B6D: $FF
    nop                                           ; $6B6E: $00
    rst RST_38                                    ; $6B6F: $FF
    nop                                           ; $6B70: $00
    rst RST_38                                    ; $6B71: $FF
    nop                                           ; $6B72: $00
    rst RST_38                                    ; $6B73: $FF
    nop                                           ; $6B74: $00
    rst RST_38                                    ; $6B75: $FF
    nop                                           ; $6B76: $00
    rst RST_38                                    ; $6B77: $FF
    nop                                           ; $6B78: $00
    rst RST_38                                    ; $6B79: $FF
    nop                                           ; $6B7A: $00
    rst RST_38                                    ; $6B7B: $FF
    ld b, b                                       ; $6B7C: $40
    rst RST_38                                    ; $6B7D: $FF
    jr nc, @+$01                                  ; $6B7E: $30 $FF

    db $FC                                        ; $6B80: $FC
    rst RST_38                                    ; $6B81: $FF
    rst RST_38                                    ; $6B82: $FF
    rra                                           ; $6B83: $1F
    rst RST_18                                    ; $6B84: $DF
    ld bc, $C0E1                                  ; $6B85: $01 $E1 $C0
    pop hl                                        ; $6B88: $E1
    nop                                           ; $6B89: $00
    ld [bc], a                                    ; $6B8A: $02
    ld bc, $0103                                  ; $6B8B: $01 $03 $01
    inc bc                                        ; $6B8E: $03
    nop                                           ; $6B8F: $00
    inc bc                                        ; $6B90: $03
    ld bc, $0103                                  ; $6B91: $01 $03 $01
    ld bc, $0100                                  ; $6B94: $01 $00 $01
    nop                                           ; $6B97: $00
    inc bc                                        ; $6B98: $03
    nop                                           ; $6B99: $00
    inc b                                         ; $6B9A: $04
    inc bc                                        ; $6B9B: $03
    ld [$0F07], sp                                ; $6B9C: $08 $07 $0F
    nop                                           ; $6B9F: $00
    rlca                                          ; $6BA0: $07
    nop                                           ; $6BA1: $00
    rst RST_38                                    ; $6BA2: $FF
    rlca                                          ; $6BA3: $07
    ld sp, hl                                     ; $6BA4: $F9
    rst RST_38                                    ; $6BA5: $FF
    inc bc                                        ; $6BA6: $03
    cp $07                                        ; $6BA7: $FE $07
    rst RST_38                                    ; $6BA9: $FF
    nop                                           ; $6BAA: $00
    rst RST_38                                    ; $6BAB: $FF
    nop                                           ; $6BAC: $00
    rst RST_38                                    ; $6BAD: $FF
    rlca                                          ; $6BAE: $07
    rst RST_38                                    ; $6BAF: $FF
    rra                                           ; $6BB0: $1F
    cp $03                                        ; $6BB1: $FE $03
    rst RST_38                                    ; $6BB3: $FF
    nop                                           ; $6BB4: $00
    rst RST_38                                    ; $6BB5: $FF
    nop                                           ; $6BB6: $00
    rst RST_38                                    ; $6BB7: $FF
    ld bc, $00FF                                  ; $6BB8: $01 $FF $00
    rst RST_38                                    ; $6BBB: $FF
    nop                                           ; $6BBC: $00
    rst RST_38                                    ; $6BBD: $FF
    ld bc, $1FFF                                  ; $6BBE: $01 $FF $1F
    cp $0F                                        ; $6BC1: $FE $0F
    ld sp, hl                                     ; $6BC3: $F9
    rst RST_38                                    ; $6BC4: $FF
    db $FC                                        ; $6BC5: $FC
    rst RST_38                                    ; $6BC6: $FF
    rrca                                          ; $6BC7: $0F
    adc a                                         ; $6BC8: $8F
    ld [hl], b                                    ; $6BC9: $70
    call nz, $F8B8                                ; $6BCA: $C4 $B8 $F8
    add b                                         ; $6BCD: $80
    db $E4                                        ; $6BCE: $E4
    ld a, b                                       ; $6BCF: $78
    db $F4                                        ; $6BD0: $F4
    ld hl, sp-$0C                                 ; $6BD1: $F8 $F4
    ld hl, sp-$08                                 ; $6BD3: $F8 $F8
    ldh a, [$FFF8]                                ; $6BD5: $F0 $F8
    ldh a, [$FFF0]                                ; $6BD7: $F0 $F0
    nop                                           ; $6BD9: $00
    ld hl, sp+$70                                 ; $6BDA: $F8 $70
    ld a, b                                       ; $6BDC: $78
    or b                                          ; $6BDD: $B0
    ld hl, sp+$00                                 ; $6BDE: $F8 $00
    nop                                           ; $6BE0: $00
    nop                                           ; $6BE1: $00
    nop                                           ; $6BE2: $00
    nop                                           ; $6BE3: $00
    nop                                           ; $6BE4: $00
    nop                                           ; $6BE5: $00
    nop                                           ; $6BE6: $00
    nop                                           ; $6BE7: $00
    db $FC                                        ; $6BE8: $FC
    nop                                           ; $6BE9: $00

jr_021_6BEA:
    ld hl, sp-$20                                 ; $6BEA: $F8 $E0
    ldh [$FF80], a                                ; $6BEC: $E0 $80
    ret nz                                        ; $6BEE: $C0

    nop                                           ; $6BEF: $00
    ldh [rP1], a                                  ; $6BF0: $E0 $00
    cp $C0                                        ; $6BF2: $FE $C0
    ccf                                           ; $6BF4: $3F
    db $FC                                        ; $6BF5: $FC
    db $FC                                        ; $6BF6: $FC
    db $E3                                        ; $6BF7: $E3
    db $FD                                        ; $6BF8: $FD
    rla                                           ; $6BF9: $17
    rst RST_38                                    ; $6BFA: $FF
    rlca                                          ; $6BFB: $07
    rst RST_38                                    ; $6BFC: $FF
    ei                                            ; $6BFD: $FB
    ld a, a                                       ; $6BFE: $7F
    rst RST_20                                    ; $6BFF: $E7
    rst RST_38                                    ; $6C00: $FF
    ret nz                                        ; $6C01: $C0

    ld a, h                                       ; $6C02: $7C
    di                                            ; $6C03: $F3
    ld a, $FD                                     ; $6C04: $3E $FD
    rst RST_38                                    ; $6C06: $FF
    ret nz                                        ; $6C07: $C0

    rst RST_28                                    ; $6C08: $EF
    inc b                                         ; $6C09: $04
    rst RST_20                                    ; $6C0A: $E7
    jp $A0D3                                      ; $6C0B: $C3 $D3 $A0


    adc b                                         ; $6C0E: $88
    ld [hl], b                                    ; $6C0F: $70
    inc b                                         ; $6C10: $04
    ld hl, sp-$79                                 ; $6C11: $F8 $87
    ld a, b                                       ; $6C13: $78
    ld b, h                                       ; $6C14: $44
    dec sp                                        ; $6C15: $3B
    ccf                                           ; $6C16: $3F
    rlca                                          ; $6C17: $07
    cpl                                           ; $6C18: $2F
    dec de                                        ; $6C19: $1B
    ccf                                           ; $6C1A: $3F
    dec de                                        ; $6C1B: $1B
    rra                                           ; $6C1C: $1F
    rlca                                          ; $6C1D: $07
    rlca                                          ; $6C1E: $07
    nop                                           ; $6C1F: $00
    nop                                           ; $6C20: $00
    nop                                           ; $6C21: $00
    nop                                           ; $6C22: $00
    nop                                           ; $6C23: $00
    nop                                           ; $6C24: $00
    nop                                           ; $6C25: $00
    ret nz                                        ; $6C26: $C0

    nop                                           ; $6C27: $00
    jr nz, jr_021_6BEA                            ; $6C28: $20 $C0

    ld d, b                                       ; $6C2A: $50
    ldh [$FFF0], a                                ; $6C2B: $E0 $F0
    ldh [$FFE0], a                                ; $6C2D: $E0 $E0
    ret nz                                        ; $6C2F: $C0

    ret nz                                        ; $6C30: $C0

    nop                                           ; $6C31: $00
    ldh [rP1], a                                  ; $6C32: $E0 $00
    ldh a, [rNR41]                                ; $6C34: $F0 $20
    ldh a, [rNR41]                                ; $6C36: $F0 $20
    ldh a, [rNR41]                                ; $6C38: $F0 $20
    ldh a, [$FF60]                                ; $6C3A: $F0 $60
    ldh [$FFC0], a                                ; $6C3C: $E0 $C0
    ret nz                                        ; $6C3E: $C0

    nop                                           ; $6C3F: $00
    add b                                         ; $6C40: $80
    nop                                           ; $6C41: $00
    ld b, b                                       ; $6C42: $40
    add b                                         ; $6C43: $80
    ldh [$FFC0], a                                ; $6C44: $E0 $C0
    ldh a, [$FFE0]                                ; $6C46: $F0 $E0
    db $FC                                        ; $6C48: $FC
    ldh [$FFFE], a                                ; $6C49: $E0 $FE
    db $EC                                        ; $6C4B: $EC
    cp $DC                                        ; $6C4C: $FE $DC
    cp $1C                                        ; $6C4E: $FE $1C
    ld a, $00                                     ; $6C50: $3E $00

jr_021_6C52:
    ld [hl+], a                                   ; $6C52: $22
    inc e                                         ; $6C53: $1C
    ld b, d                                       ; $6C54: $42
    inc a                                         ; $6C55: $3C
    ld a, h                                       ; $6C56: $7C
    nop                                           ; $6C57: $00
    nop                                           ; $6C58: $00
    nop                                           ; $6C59: $00
    nop                                           ; $6C5A: $00
    nop                                           ; $6C5B: $00
    nop                                           ; $6C5C: $00
    nop                                           ; $6C5D: $00
    nop                                           ; $6C5E: $00
    nop                                           ; $6C5F: $00
    nop                                           ; $6C60: $00
    nop                                           ; $6C61: $00
    nop                                           ; $6C62: $00
    nop                                           ; $6C63: $00
    nop                                           ; $6C64: $00
    nop                                           ; $6C65: $00
    nop                                           ; $6C66: $00
    nop                                           ; $6C67: $00
    nop                                           ; $6C68: $00
    nop                                           ; $6C69: $00
    nop                                           ; $6C6A: $00
    nop                                           ; $6C6B: $00
    nop                                           ; $6C6C: $00
    nop                                           ; $6C6D: $00
    nop                                           ; $6C6E: $00
    nop                                           ; $6C6F: $00
    nop                                           ; $6C70: $00
    nop                                           ; $6C71: $00
    nop                                           ; $6C72: $00
    nop                                           ; $6C73: $00
    nop                                           ; $6C74: $00
    nop                                           ; $6C75: $00
    nop                                           ; $6C76: $00
    nop                                           ; $6C77: $00
    ld bc, $0200                                  ; $6C78: $01 $00 $02
    ld bc, $0001                                  ; $6C7B: $01 $01 $00
    ld bc, $0000                                  ; $6C7E: $01 $00 $00
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
    ret nz                                        ; $6C8E: $C0

    nop                                           ; $6C8F: $00
    jr nz, jr_021_6C52                            ; $6C90: $20 $C0

    ldh a, [rP1]                                  ; $6C92: $F0 $00
    ld e, h                                       ; $6C94: $5C
    and b                                         ; $6C95: $A0
    di                                            ; $6C96: $F3
    inc c                                         ; $6C97: $0C
    ld d, c                                       ; $6C98: $51
    ld l, $B1                                     ; $6C99: $2E $B1
    ld c, [hl]                                    ; $6C9B: $4E
    reti                                          ; $6C9C: $D9


    ld b, $07                                     ; $6C9D: $06 $07
    nop                                           ; $6C9F: $00
    nop                                           ; $6CA0: $00
    nop                                           ; $6CA1: $00
    nop                                           ; $6CA2: $00
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
    nop                                           ; $6CAD: $00
    ld bc, $0100                                  ; $6CAE: $01 $00 $01
    nop                                           ; $6CB1: $00
    cp $00                                        ; $6CB2: $FE $00
    ld bc, $01FE                                  ; $6CB4: $01 $FE $01
    cp $01                                        ; $6CB7: $FE $01
    cp $01                                        ; $6CB9: $FE $01
    cp $01                                        ; $6CBB: $FE $01
    cp $FE                                        ; $6CBD: $FE $FE
    nop                                           ; $6CBF: $00
    nop                                           ; $6CC0: $00
    nop                                           ; $6CC1: $00
    nop                                           ; $6CC2: $00
    nop                                           ; $6CC3: $00
    inc bc                                        ; $6CC4: $03
    nop                                           ; $6CC5: $00
    ld [bc], a                                    ; $6CC6: $02
    ld bc, $0102                                  ; $6CC7: $01 $02 $01
    rst RST_30                                    ; $6CCA: $F7
    nop                                           ; $6CCB: $00
    rrca                                          ; $6CCC: $0F
    di                                            ; $6CCD: $F3
    inc bc                                        ; $6CCE: $03
    db $FC                                        ; $6CCF: $FC
    add d                                         ; $6CD0: $82
    ld a, l                                       ; $6CD1: $7D
    adc a                                         ; $6CD2: $8F
    ld a, l                                       ; $6CD3: $7D
    ld c, [hl]                                    ; $6CD4: $4E
    cp l                                          ; $6CD5: $BD
    ld l, $DD                                     ; $6CD6: $2E $DD
    rla                                           ; $6CD8: $17
    db $EC                                        ; $6CD9: $EC
    rst RST_28                                    ; $6CDA: $EF
    nop                                           ; $6CDB: $00
    inc bc                                        ; $6CDC: $03
    ld bc, $0001                                  ; $6CDD: $01 $01 $00
    ld bc, $0200                                  ; $6CE0: $01 $00 $02
    ld bc, $030C                                  ; $6CE3: $01 $0C $03
    ld d, $0D                                     ; $6CE6: $16 $0D
    rra                                           ; $6CE8: $1F
    inc c                                         ; $6CE9: $0C
    rra                                           ; $6CEA: $1F
    inc bc                                        ; $6CEB: $03
    rra                                           ; $6CEC: $1F
    rrca                                          ; $6CED: $0F
    rra                                           ; $6CEE: $1F
    rrca                                          ; $6CEF: $0F
    rrca                                          ; $6CF0: $0F
    rlca                                          ; $6CF1: $07
    rrca                                          ; $6CF2: $0F
    rlca                                          ; $6CF3: $07
    rra                                           ; $6CF4: $1F
    nop                                           ; $6CF5: $00
    daa                                           ; $6CF6: $27
    dec de                                        ; $6CF7: $1B
    ld b, e                                       ; $6CF8: $43
    dec a                                         ; $6CF9: $3D
    ld a, a                                       ; $6CFA: $7F
    nop                                           ; $6CFB: $00
    nop                                           ; $6CFC: $00
    nop                                           ; $6CFD: $00
    nop                                           ; $6CFE: $00
    nop                                           ; $6CFF: $00
    ldh a, [rP1]                                  ; $6D00: $F0 $00
    cp $60                                        ; $6D02: $FE $60
    rst RST_38                                    ; $6D04: $FF
    ld c, $FF                                     ; $6D05: $0E $FF
    rst RST_18                                    ; $6D07: $DF
    rst RST_38                                    ; $6D08: $FF
    ccf                                           ; $6D09: $3F
    rst RST_18                                    ; $6D0A: $DF
    rst RST_38                                    ; $6D0B: $FF
    xor a                                         ; $6D0C: $AF

jr_021_6D0D:
    rst RST_38                                    ; $6D0D: $FF
    ld e, a                                       ; $6D0E: $5F
    rst RST_38                                    ; $6D0F: $FF
    cpl                                           ; $6D10: $2F
    rst RST_38                                    ; $6D11: $FF
    rla                                           ; $6D12: $17
    rst RST_38                                    ; $6D13: $FF
    rrca                                          ; $6D14: $0F
    rst RST_38                                    ; $6D15: $FF
    rla                                           ; $6D16: $17
    rst RST_38                                    ; $6D17: $FF
    adc e                                         ; $6D18: $8B
    ld a, [hl]                                    ; $6D19: $7E
    rst RST_18                                    ; $6D1A: $DF
    cp l                                          ; $6D1B: $BD
    rst RST_38                                    ; $6D1C: $FF
    nop                                           ; $6D1D: $00
    rst RST_38                                    ; $6D1E: $FF
    ld a, $3E                                     ; $6D1F: $3E $3E
    db $DD                                        ; $6D21: $DD
    inc e                                         ; $6D22: $1C
    db $EB                                        ; $6D23: $EB
    jr jr_021_6D0D                                ; $6D24: $18 $E7

    inc h                                         ; $6D26: $24
    jp Jump_000_01C2                              ; $6D27: $C3 $C2 $01


    ld hl, $A1C0                                  ; $6D2A: $21 $C0 $A1
    ret nz                                        ; $6D2D: $C0

    and c                                         ; $6D2E: $A1
    ret nz                                        ; $6D2F: $C0

    ret nz                                        ; $6D30: $C0

    add b                                         ; $6D31: $80
    ret nz                                        ; $6D32: $C0

    add b                                         ; $6D33: $80
    add b                                         ; $6D34: $80
    nop                                           ; $6D35: $00
    ret nz                                        ; $6D36: $C0

    add b                                         ; $6D37: $80
    ret nz                                        ; $6D38: $C0

    add b                                         ; $6D39: $80
    ret nz                                        ; $6D3A: $C0

    nop                                           ; $6D3B: $00
    nop                                           ; $6D3C: $00
    nop                                           ; $6D3D: $00
    nop                                           ; $6D3E: $00
    nop                                           ; $6D3F: $00
    ldh a, [rP1]                                  ; $6D40: $F0 $00
    adc [hl]                                      ; $6D42: $8E
    ld [hl], b                                    ; $6D43: $70
    pop bc                                        ; $6D44: $C1
    cp [hl]                                       ; $6D45: $BE
    ld [$FFBF], a                                 ; $6D46: $EA $BF $FF
    cp a                                          ; $6D49: $BF
    rst RST_38                                    ; $6D4A: $FF
    cp [hl]                                       ; $6D4B: $BE
    cp $B8                                        ; $6D4C: $FE $B8
    rst RST_38                                    ; $6D4E: $FF
    nop                                           ; $6D4F: $00
    rst RST_00                                    ; $6D50: $C7
    add hl, sp                                    ; $6D51: $39
    rst RST_20                                    ; $6D52: $E7
    sbc c                                         ; $6D53: $99
    rst RST_38                                    ; $6D54: $FF
    ld bc, $237F                                  ; $6D55: $01 $7F $23
    ccf                                           ; $6D58: $3F
    ld e, $9E                                     ; $6D59: $1E $9E
    nop                                           ; $6D5B: $00
    ld b, b                                       ; $6D5C: $40
    add b                                         ; $6D5D: $80
    jr nz, @-$3E                                  ; $6D5E: $20 $C0

    inc a                                         ; $6D60: $3C
    ret nz                                        ; $6D61: $C0

    ld [hl+], a                                   ; $6D62: $22
    call c, Call_000_3EFF                         ; $6D63: $DC $FF $3E
    ld a, a                                       ; $6D66: $7F
    rst RST_18                                    ; $6D67: $DF
    rst RST_38                                    ; $6D68: $FF
    rst RST_18                                    ; $6D69: $DF
    rst RST_38                                    ; $6D6A: $FF
    ccf                                           ; $6D6B: $3F
    ccf                                           ; $6D6C: $3F
    ld b, $07                                     ; $6D6D: $06 $07
    nop                                           ; $6D6F: $00
    ld bc, $0100                                  ; $6D70: $01 $00 $01
    nop                                           ; $6D73: $00
    ld [bc], a                                    ; $6D74: $02
    ld bc, $0003                                  ; $6D75: $01 $03 $00
    nop                                           ; $6D78: $00
    nop                                           ; $6D79: $00
    nop                                           ; $6D7A: $00
    nop                                           ; $6D7B: $00
    nop                                           ; $6D7C: $00
    nop                                           ; $6D7D: $00
    nop                                           ; $6D7E: $00
    nop                                           ; $6D7F: $00
    add b                                         ; $6D80: $80
    nop                                           ; $6D81: $00
    ldh [rP1], a                                  ; $6D82: $E0 $00
    ldh a, [$FF60]                                ; $6D84: $F0 $60
    ldh a, [$FFE0]                                ; $6D86: $F0 $E0
    ldh a, [$FFE0]                                ; $6D88: $F0 $E0
    ldh a, [rP1]                                  ; $6D8A: $F0 $00
    db $10                                        ; $6D8C: $10
    ldh [rNR10], a                                ; $6D8D: $E0 $10
    ldh [$FFE0], a                                ; $6D8F: $E0 $E0
    nop                                           ; $6D91: $00
    nop                                           ; $6D92: $00
    nop                                           ; $6D93: $00
    nop                                           ; $6D94: $00
    nop                                           ; $6D95: $00
    nop                                           ; $6D96: $00
    nop                                           ; $6D97: $00
    nop                                           ; $6D98: $00
    nop                                           ; $6D99: $00
    nop                                           ; $6D9A: $00
    nop                                           ; $6D9B: $00
    nop                                           ; $6D9C: $00
    nop                                           ; $6D9D: $00
    nop                                           ; $6D9E: $00
    nop                                           ; $6D9F: $00
    nop                                           ; $6DA0: $00
    nop                                           ; $6DA1: $00
    nop                                           ; $6DA2: $00
    nop                                           ; $6DA3: $00
    nop                                           ; $6DA4: $00
    nop                                           ; $6DA5: $00
    nop                                           ; $6DA6: $00
    nop                                           ; $6DA7: $00
    nop                                           ; $6DA8: $00
    nop                                           ; $6DA9: $00
    nop                                           ; $6DAA: $00
    nop                                           ; $6DAB: $00
    nop                                           ; $6DAC: $00
    nop                                           ; $6DAD: $00
    add b                                         ; $6DAE: $80
    nop                                           ; $6DAF: $00
    add b                                         ; $6DB0: $80
    nop                                           ; $6DB1: $00

jr_021_6DB2:
    nop                                           ; $6DB2: $00
    nop                                           ; $6DB3: $00
    nop                                           ; $6DB4: $00
    nop                                           ; $6DB5: $00
    nop                                           ; $6DB6: $00
    nop                                           ; $6DB7: $00
    add b                                         ; $6DB8: $80
    nop                                           ; $6DB9: $00
    add b                                         ; $6DBA: $80
    nop                                           ; $6DBB: $00
    add b                                         ; $6DBC: $80
    nop                                           ; $6DBD: $00
    add b                                         ; $6DBE: $80
    nop                                           ; $6DBF: $00
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
    nop                                           ; $6DD0: $00
    nop                                           ; $6DD1: $00
    nop                                           ; $6DD2: $00
    nop                                           ; $6DD3: $00
    nop                                           ; $6DD4: $00
    nop                                           ; $6DD5: $00
    nop                                           ; $6DD6: $00
    nop                                           ; $6DD7: $00
    ld bc, $0200                                  ; $6DD8: $01 $00 $02
    ld bc, $0001                                  ; $6DDB: $01 $01 $00
    ld bc, $0000                                  ; $6DDE: $01 $00 $00
    nop                                           ; $6DE1: $00
    nop                                           ; $6DE2: $00
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
    nop                                           ; $6DED: $00
    ret nz                                        ; $6DEE: $C0

    nop                                           ; $6DEF: $00
    jr nz, jr_021_6DB2                            ; $6DF0: $20 $C0

    ldh a, [rP1]                                  ; $6DF2: $F0 $00
    ld e, h                                       ; $6DF4: $5C
    and b                                         ; $6DF5: $A0
    di                                            ; $6DF6: $F3
    inc c                                         ; $6DF7: $0C
    ld d, c                                       ; $6DF8: $51
    ld l, $B1                                     ; $6DF9: $2E $B1
    ld c, [hl]                                    ; $6DFB: $4E
    reti                                          ; $6DFC: $D9


    ld b, $07                                     ; $6DFD: $06 $07
    nop                                           ; $6DFF: $00
    nop                                           ; $6E00: $00
    nop                                           ; $6E01: $00
    nop                                           ; $6E02: $00
    nop                                           ; $6E03: $00
    nop                                           ; $6E04: $00
    nop                                           ; $6E05: $00
    nop                                           ; $6E06: $00
    nop                                           ; $6E07: $00
    nop                                           ; $6E08: $00
    nop                                           ; $6E09: $00
    nop                                           ; $6E0A: $00
    nop                                           ; $6E0B: $00
    nop                                           ; $6E0C: $00
    nop                                           ; $6E0D: $00
    ld bc, $0100                                  ; $6E0E: $01 $00 $01
    nop                                           ; $6E11: $00
    cp $00                                        ; $6E12: $FE $00
    ld bc, $0FFE                                  ; $6E14: $01 $FE $0F
    cp $07                                        ; $6E17: $FE $07
    cp $07                                        ; $6E19: $FE $07
    cp $1F                                        ; $6E1B: $FE $1F
    cp $FE                                        ; $6E1D: $FE $FE
    nop                                           ; $6E1F: $00
    nop                                           ; $6E20: $00
    nop                                           ; $6E21: $00
    nop                                           ; $6E22: $00
    nop                                           ; $6E23: $00
    inc bc                                        ; $6E24: $03
    nop                                           ; $6E25: $00
    ld [bc], a                                    ; $6E26: $02
    ld bc, $0102                                  ; $6E27: $01 $02 $01
    rst RST_30                                    ; $6E2A: $F7
    nop                                           ; $6E2B: $00
    rrca                                          ; $6E2C: $0F
    di                                            ; $6E2D: $F3
    and e                                         ; $6E2E: $A3
    db $FC                                        ; $6E2F: $FC
    ld [$FF7D], a                                 ; $6E30: $EA $7D $FF
    ld a, l                                       ; $6E33: $7D
    ld a, [hl]                                    ; $6E34: $7E
    cp l                                          ; $6E35: $BD
    ld a, $DD                                     ; $6E36: $3E $DD
    rra                                           ; $6E38: $1F
    db $EC                                        ; $6E39: $EC
    rst RST_28                                    ; $6E3A: $EF
    nop                                           ; $6E3B: $00
    inc bc                                        ; $6E3C: $03
    ld bc, $0001                                  ; $6E3D: $01 $01 $00
    ld bc, $0200                                  ; $6E40: $01 $00 $02
    ld bc, $030C                                  ; $6E43: $01 $0C $03
    ld d, $0D                                     ; $6E46: $16 $0D
    rra                                           ; $6E48: $1F
    inc c                                         ; $6E49: $0C
    rra                                           ; $6E4A: $1F
    inc bc                                        ; $6E4B: $03
    rra                                           ; $6E4C: $1F
    rrca                                          ; $6E4D: $0F
    rra                                           ; $6E4E: $1F
    rrca                                          ; $6E4F: $0F
    rrca                                          ; $6E50: $0F
    rlca                                          ; $6E51: $07

jr_021_6E52:
    rrca                                          ; $6E52: $0F
    rlca                                          ; $6E53: $07
    rra                                           ; $6E54: $1F
    nop                                           ; $6E55: $00
    daa                                           ; $6E56: $27
    dec de                                        ; $6E57: $1B
    ld b, e                                       ; $6E58: $43
    dec a                                         ; $6E59: $3D
    ld a, a                                       ; $6E5A: $7F
    nop                                           ; $6E5B: $00
    nop                                           ; $6E5C: $00
    nop                                           ; $6E5D: $00
    nop                                           ; $6E5E: $00
    nop                                           ; $6E5F: $00
    nop                                           ; $6E60: $00
    nop                                           ; $6E61: $00
    nop                                           ; $6E62: $00
    nop                                           ; $6E63: $00
    nop                                           ; $6E64: $00
    nop                                           ; $6E65: $00
    nop                                           ; $6E66: $00
    nop                                           ; $6E67: $00
    nop                                           ; $6E68: $00
    nop                                           ; $6E69: $00
    nop                                           ; $6E6A: $00
    nop                                           ; $6E6B: $00
    nop                                           ; $6E6C: $00
    nop                                           ; $6E6D: $00
    nop                                           ; $6E6E: $00
    nop                                           ; $6E6F: $00
    nop                                           ; $6E70: $00
    nop                                           ; $6E71: $00
    nop                                           ; $6E72: $00
    nop                                           ; $6E73: $00
    nop                                           ; $6E74: $00
    nop                                           ; $6E75: $00
    nop                                           ; $6E76: $00
    nop                                           ; $6E77: $00
    ld bc, $0200                                  ; $6E78: $01 $00 $02
    ld bc, $0001                                  ; $6E7B: $01 $01 $00
    ld bc, $0000                                  ; $6E7E: $01 $00 $00
    nop                                           ; $6E81: $00
    nop                                           ; $6E82: $00
    nop                                           ; $6E83: $00
    nop                                           ; $6E84: $00
    nop                                           ; $6E85: $00
    nop                                           ; $6E86: $00
    nop                                           ; $6E87: $00
    nop                                           ; $6E88: $00
    nop                                           ; $6E89: $00
    nop                                           ; $6E8A: $00
    nop                                           ; $6E8B: $00
    nop                                           ; $6E8C: $00
    nop                                           ; $6E8D: $00
    ret nz                                        ; $6E8E: $C0

    nop                                           ; $6E8F: $00
    jr nz, jr_021_6E52                            ; $6E90: $20 $C0

    ldh a, [rP1]                                  ; $6E92: $F0 $00
    ld e, h                                       ; $6E94: $5C
    and b                                         ; $6E95: $A0
    di                                            ; $6E96: $F3
    inc c                                         ; $6E97: $0C
    ld d, c                                       ; $6E98: $51
    ld l, $B1                                     ; $6E99: $2E $B1
    ld c, [hl]                                    ; $6E9B: $4E
    reti                                          ; $6E9C: $D9


    ld b, $07                                     ; $6E9D: $06 $07
    nop                                           ; $6E9F: $00
    nop                                           ; $6EA0: $00
    nop                                           ; $6EA1: $00
    nop                                           ; $6EA2: $00
    nop                                           ; $6EA3: $00
    nop                                           ; $6EA4: $00
    nop                                           ; $6EA5: $00
    nop                                           ; $6EA6: $00
    nop                                           ; $6EA7: $00
    nop                                           ; $6EA8: $00
    nop                                           ; $6EA9: $00
    nop                                           ; $6EAA: $00
    nop                                           ; $6EAB: $00
    nop                                           ; $6EAC: $00
    nop                                           ; $6EAD: $00
    ld bc, $0100                                  ; $6EAE: $01 $00 $01
    nop                                           ; $6EB1: $00
    cp $00                                        ; $6EB2: $FE $00
    ld bc, $7FFE                                  ; $6EB4: $01 $FE $7F
    cp $3F                                        ; $6EB7: $FE $3F
    cp $3F                                        ; $6EB9: $FE $3F
    cp $7F                                        ; $6EBB: $FE $7F
    cp $FE                                        ; $6EBD: $FE $FE
    nop                                           ; $6EBF: $00
    nop                                           ; $6EC0: $00
    nop                                           ; $6EC1: $00
    nop                                           ; $6EC2: $00
    nop                                           ; $6EC3: $00
    inc bc                                        ; $6EC4: $03
    nop                                           ; $6EC5: $00
    ld [bc], a                                    ; $6EC6: $02
    ld bc, $0102                                  ; $6EC7: $01 $02 $01
    rst RST_30                                    ; $6ECA: $F7
    nop                                           ; $6ECB: $00
    rrca                                          ; $6ECC: $0F
    di                                            ; $6ECD: $F3
    and e                                         ; $6ECE: $A3
    db $FC                                        ; $6ECF: $FC
    ld [$FF7D], a                                 ; $6ED0: $EA $7D $FF
    ld a, l                                       ; $6ED3: $7D
    ld a, [hl]                                    ; $6ED4: $7E
    cp l                                          ; $6ED5: $BD
    ld a, $DD                                     ; $6ED6: $3E $DD
    rra                                           ; $6ED8: $1F
    db $EC                                        ; $6ED9: $EC
    rst RST_28                                    ; $6EDA: $EF
    nop                                           ; $6EDB: $00
    inc bc                                        ; $6EDC: $03
    ld bc, $0001                                  ; $6EDD: $01 $01 $00
    ld bc, $0200                                  ; $6EE0: $01 $00 $02
    ld bc, $030C                                  ; $6EE3: $01 $0C $03
    ld d, $0D                                     ; $6EE6: $16 $0D
    rra                                           ; $6EE8: $1F
    inc c                                         ; $6EE9: $0C
    rra                                           ; $6EEA: $1F
    inc bc                                        ; $6EEB: $03
    rra                                           ; $6EEC: $1F
    rrca                                          ; $6EED: $0F
    rra                                           ; $6EEE: $1F
    rrca                                          ; $6EEF: $0F
    rrca                                          ; $6EF0: $0F
    rlca                                          ; $6EF1: $07
    rrca                                          ; $6EF2: $0F
    rlca                                          ; $6EF3: $07
    rra                                           ; $6EF4: $1F
    nop                                           ; $6EF5: $00
    daa                                           ; $6EF6: $27
    dec de                                        ; $6EF7: $1B
    ld b, e                                       ; $6EF8: $43
    dec a                                         ; $6EF9: $3D
    ld a, a                                       ; $6EFA: $7F
    nop                                           ; $6EFB: $00
    nop                                           ; $6EFC: $00
    nop                                           ; $6EFD: $00
    nop                                           ; $6EFE: $00
    nop                                           ; $6EFF: $00
    nop                                           ; $6F00: $00
    nop                                           ; $6F01: $00
    nop                                           ; $6F02: $00
    nop                                           ; $6F03: $00
    nop                                           ; $6F04: $00
    nop                                           ; $6F05: $00
    nop                                           ; $6F06: $00
    nop                                           ; $6F07: $00
    nop                                           ; $6F08: $00
    nop                                           ; $6F09: $00
    nop                                           ; $6F0A: $00
    nop                                           ; $6F0B: $00
    nop                                           ; $6F0C: $00
    nop                                           ; $6F0D: $00
    nop                                           ; $6F0E: $00
    nop                                           ; $6F0F: $00
    nop                                           ; $6F10: $00
    nop                                           ; $6F11: $00
    nop                                           ; $6F12: $00
    nop                                           ; $6F13: $00
    nop                                           ; $6F14: $00
    nop                                           ; $6F15: $00
    nop                                           ; $6F16: $00
    nop                                           ; $6F17: $00
    ld bc, $0200                                  ; $6F18: $01 $00 $02
    ld bc, $0001                                  ; $6F1B: $01 $01 $00
    ld bc, $0000                                  ; $6F1E: $01 $00 $00
    nop                                           ; $6F21: $00
    nop                                           ; $6F22: $00
    nop                                           ; $6F23: $00
    nop                                           ; $6F24: $00
    nop                                           ; $6F25: $00
    nop                                           ; $6F26: $00
    nop                                           ; $6F27: $00
    nop                                           ; $6F28: $00
    nop                                           ; $6F29: $00
    nop                                           ; $6F2A: $00
    nop                                           ; $6F2B: $00
    nop                                           ; $6F2C: $00
    nop                                           ; $6F2D: $00
    ret nz                                        ; $6F2E: $C0

    nop                                           ; $6F2F: $00
    ldh [$FFC0], a                                ; $6F30: $E0 $C0
    ldh a, [rP1]                                  ; $6F32: $F0 $00
    ld a, h                                       ; $6F34: $7C
    and b                                         ; $6F35: $A0
    di                                            ; $6F36: $F3
    inc c                                         ; $6F37: $0C
    ld [hl], c                                    ; $6F38: $71
    ld l, $B1                                     ; $6F39: $2E $B1
    ld c, [hl]                                    ; $6F3B: $4E
    reti                                          ; $6F3C: $D9


    ld b, $07                                     ; $6F3D: $06 $07
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
    ld bc, $0100                                  ; $6F4E: $01 $00 $01
    nop                                           ; $6F51: $00
    cp $00                                        ; $6F52: $FE $00
    ld bc, $FFFE                                  ; $6F54: $01 $FE $FF
    cp $FF                                        ; $6F57: $FE $FF
    cp $FF                                        ; $6F59: $FE $FF
    cp $FF                                        ; $6F5B: $FE $FF
    cp $FE                                        ; $6F5D: $FE $FE
    nop                                           ; $6F5F: $00
    nop                                           ; $6F60: $00
    nop                                           ; $6F61: $00
    nop                                           ; $6F62: $00
    nop                                           ; $6F63: $00
    inc bc                                        ; $6F64: $03
    nop                                           ; $6F65: $00
    ld [bc], a                                    ; $6F66: $02
    ld bc, $0102                                  ; $6F67: $01 $02 $01
    rst RST_30                                    ; $6F6A: $F7
    nop                                           ; $6F6B: $00
    rrca                                          ; $6F6C: $0F
    di                                            ; $6F6D: $F3
    and e                                         ; $6F6E: $A3
    db $FC                                        ; $6F6F: $FC
    ld [$FF7D], a                                 ; $6F70: $EA $7D $FF
    ld a, l                                       ; $6F73: $7D
    ld a, [hl]                                    ; $6F74: $7E
    cp l                                          ; $6F75: $BD
    ld a, $DD                                     ; $6F76: $3E $DD
    rra                                           ; $6F78: $1F
    db $EC                                        ; $6F79: $EC
    rst RST_28                                    ; $6F7A: $EF
    nop                                           ; $6F7B: $00
    inc bc                                        ; $6F7C: $03
    ld bc, $0001                                  ; $6F7D: $01 $01 $00
    ld bc, $0200                                  ; $6F80: $01 $00 $02
    ld bc, $030C                                  ; $6F83: $01 $0C $03
    ld d, $0D                                     ; $6F86: $16 $0D
    rra                                           ; $6F88: $1F
    inc c                                         ; $6F89: $0C
    rra                                           ; $6F8A: $1F
    inc bc                                        ; $6F8B: $03
    rra                                           ; $6F8C: $1F
    rrca                                          ; $6F8D: $0F
    rra                                           ; $6F8E: $1F
    rrca                                          ; $6F8F: $0F
    rrca                                          ; $6F90: $0F
    rlca                                          ; $6F91: $07
    rrca                                          ; $6F92: $0F
    rlca                                          ; $6F93: $07
    rra                                           ; $6F94: $1F
    nop                                           ; $6F95: $00
    daa                                           ; $6F96: $27
    dec de                                        ; $6F97: $1B
    ld b, e                                       ; $6F98: $43
    dec a                                         ; $6F99: $3D
    ld a, a                                       ; $6F9A: $7F
    nop                                           ; $6F9B: $00
    nop                                           ; $6F9C: $00
    nop                                           ; $6F9D: $00
    nop                                           ; $6F9E: $00
    nop                                           ; $6F9F: $00
    nop                                           ; $6FA0: $00
    nop                                           ; $6FA1: $00
    nop                                           ; $6FA2: $00
    nop                                           ; $6FA3: $00
    nop                                           ; $6FA4: $00
    nop                                           ; $6FA5: $00
    nop                                           ; $6FA6: $00
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
    ld bc, $0200                                  ; $6FB8: $01 $00 $02
    ld bc, $0001                                  ; $6FBB: $01 $01 $00
    ld bc, $0000                                  ; $6FBE: $01 $00 $00
    nop                                           ; $6FC1: $00
    nop                                           ; $6FC2: $00
    nop                                           ; $6FC3: $00
    nop                                           ; $6FC4: $00
    nop                                           ; $6FC5: $00
    nop                                           ; $6FC6: $00
    nop                                           ; $6FC7: $00
    nop                                           ; $6FC8: $00
    nop                                           ; $6FC9: $00
    nop                                           ; $6FCA: $00
    nop                                           ; $6FCB: $00
    nop                                           ; $6FCC: $00
    nop                                           ; $6FCD: $00
    ret nz                                        ; $6FCE: $C0

    nop                                           ; $6FCF: $00
    ldh [$FFC0], a                                ; $6FD0: $E0 $C0
    ldh a, [rP1]                                  ; $6FD2: $F0 $00
    ld a, h                                       ; $6FD4: $7C
    and b                                         ; $6FD5: $A0
    rst RST_38                                    ; $6FD6: $FF
    inc c                                         ; $6FD7: $0C
    ld a, e                                       ; $6FD8: $7B
    ld l, $BB                                     ; $6FD9: $2E $BB
    ld c, [hl]                                    ; $6FDB: $4E
    rst RST_18                                    ; $6FDC: $DF
    ld b, $07                                     ; $6FDD: $06 $07
    nop                                           ; $6FDF: $00
    nop                                           ; $6FE0: $00
    nop                                           ; $6FE1: $00
    nop                                           ; $6FE2: $00
    nop                                           ; $6FE3: $00
    nop                                           ; $6FE4: $00
    nop                                           ; $6FE5: $00
    nop                                           ; $6FE6: $00
    nop                                           ; $6FE7: $00
    nop                                           ; $6FE8: $00
    nop                                           ; $6FE9: $00
    nop                                           ; $6FEA: $00
    nop                                           ; $6FEB: $00
    nop                                           ; $6FEC: $00
    nop                                           ; $6FED: $00
    ld bc, $0100                                  ; $6FEE: $01 $00 $01
    nop                                           ; $6FF1: $00
    cp $00                                        ; $6FF2: $FE $00
    ld bc, $FFFE                                  ; $6FF4: $01 $FE $FF
    cp $FF                                        ; $6FF7: $FE $FF
    cp $FF                                        ; $6FF9: $FE $FF
    cp $FF                                        ; $6FFB: $FE $FF
    cp $FE                                        ; $6FFD: $FE $FE
    nop                                           ; $6FFF: $00
    nop                                           ; $7000: $00
    nop                                           ; $7001: $00
    nop                                           ; $7002: $00
    nop                                           ; $7003: $00
    inc bc                                        ; $7004: $03
    nop                                           ; $7005: $00
    ld [bc], a                                    ; $7006: $02
    ld bc, $0102                                  ; $7007: $01 $02 $01
    rst RST_30                                    ; $700A: $F7
    nop                                           ; $700B: $00
    rrca                                          ; $700C: $0F
    di                                            ; $700D: $F3
    and e                                         ; $700E: $A3
    db $FC                                        ; $700F: $FC
    ld [$FF7D], a                                 ; $7010: $EA $7D $FF
    ld a, l                                       ; $7013: $7D
    ld a, [hl]                                    ; $7014: $7E
    cp l                                          ; $7015: $BD
    ld a, $DD                                     ; $7016: $3E $DD
    rra                                           ; $7018: $1F
    db $EC                                        ; $7019: $EC
    rst RST_28                                    ; $701A: $EF
    nop                                           ; $701B: $00
    inc bc                                        ; $701C: $03
    ld bc, $0001                                  ; $701D: $01 $01 $00
    ld bc, $0200                                  ; $7020: $01 $00 $02
    ld bc, $030C                                  ; $7023: $01 $0C $03
    ld d, $0D                                     ; $7026: $16 $0D
    rra                                           ; $7028: $1F
    inc c                                         ; $7029: $0C
    rra                                           ; $702A: $1F
    inc bc                                        ; $702B: $03
    rra                                           ; $702C: $1F
    rrca                                          ; $702D: $0F
    rra                                           ; $702E: $1F
    rrca                                          ; $702F: $0F
    rrca                                          ; $7030: $0F
    rlca                                          ; $7031: $07
    rrca                                          ; $7032: $0F
    rlca                                          ; $7033: $07
    rra                                           ; $7034: $1F
    nop                                           ; $7035: $00
    daa                                           ; $7036: $27
    dec de                                        ; $7037: $1B
    ld b, e                                       ; $7038: $43
    dec a                                         ; $7039: $3D
    ld a, a                                       ; $703A: $7F
    nop                                           ; $703B: $00
    nop                                           ; $703C: $00
    nop                                           ; $703D: $00
    nop                                           ; $703E: $00
    nop                                           ; $703F: $00
    nop                                           ; $7040: $00
    nop                                           ; $7041: $00
    nop                                           ; $7042: $00
    nop                                           ; $7043: $00
    nop                                           ; $7044: $00
    nop                                           ; $7045: $00
    nop                                           ; $7046: $00
    nop                                           ; $7047: $00
    nop                                           ; $7048: $00
    nop                                           ; $7049: $00
    nop                                           ; $704A: $00
    nop                                           ; $704B: $00
    nop                                           ; $704C: $00
    nop                                           ; $704D: $00
    nop                                           ; $704E: $00
    nop                                           ; $704F: $00
    nop                                           ; $7050: $00
    nop                                           ; $7051: $00
    nop                                           ; $7052: $00
    nop                                           ; $7053: $00
    nop                                           ; $7054: $00
    nop                                           ; $7055: $00
    nop                                           ; $7056: $00
    nop                                           ; $7057: $00
    ld bc, $0200                                  ; $7058: $01 $00 $02
    ld bc, $0001                                  ; $705B: $01 $01 $00
    ld bc, $0000                                  ; $705E: $01 $00 $00
    nop                                           ; $7061: $00
    nop                                           ; $7062: $00
    nop                                           ; $7063: $00
    nop                                           ; $7064: $00
    nop                                           ; $7065: $00
    nop                                           ; $7066: $00
    nop                                           ; $7067: $00
    nop                                           ; $7068: $00
    nop                                           ; $7069: $00
    nop                                           ; $706A: $00
    nop                                           ; $706B: $00
    nop                                           ; $706C: $00
    nop                                           ; $706D: $00
    ret nz                                        ; $706E: $C0

    nop                                           ; $706F: $00
    ldh [$FFC0], a                                ; $7070: $E0 $C0
    ldh a, [rP1]                                  ; $7072: $F0 $00
    ld a, h                                       ; $7074: $7C
    and b                                         ; $7075: $A0
    rst RST_38                                    ; $7076: $FF
    inc c                                         ; $7077: $0C
    ld a, a                                       ; $7078: $7F
    ld l, $BF                                     ; $7079: $2E $BF
    ld c, [hl]                                    ; $707B: $4E
    rst RST_18                                    ; $707C: $DF
    ld b, $07                                     ; $707D: $06 $07
    nop                                           ; $707F: $00
    nop                                           ; $7080: $00
    nop                                           ; $7081: $00
    nop                                           ; $7082: $00
    nop                                           ; $7083: $00
    nop                                           ; $7084: $00
    nop                                           ; $7085: $00
    nop                                           ; $7086: $00
    nop                                           ; $7087: $00
    nop                                           ; $7088: $00
    nop                                           ; $7089: $00
    nop                                           ; $708A: $00
    nop                                           ; $708B: $00
    nop                                           ; $708C: $00
    nop                                           ; $708D: $00
    ld bc, $0100                                  ; $708E: $01 $00 $01
    nop                                           ; $7091: $00
    cp $00                                        ; $7092: $FE $00
    ld bc, $FFFE                                  ; $7094: $01 $FE $FF
    cp $FF                                        ; $7097: $FE $FF
    cp $FF                                        ; $7099: $FE $FF
    cp $FF                                        ; $709B: $FE $FF
    cp $FE                                        ; $709D: $FE $FE
    nop                                           ; $709F: $00
    nop                                           ; $70A0: $00
    nop                                           ; $70A1: $00
    nop                                           ; $70A2: $00
    nop                                           ; $70A3: $00
    inc bc                                        ; $70A4: $03
    nop                                           ; $70A5: $00
    ld [bc], a                                    ; $70A6: $02
    ld bc, $0102                                  ; $70A7: $01 $02 $01
    rst RST_30                                    ; $70AA: $F7
    nop                                           ; $70AB: $00
    rrca                                          ; $70AC: $0F
    di                                            ; $70AD: $F3
    and e                                         ; $70AE: $A3
    db $FC                                        ; $70AF: $FC
    ld [$FF7D], a                                 ; $70B0: $EA $7D $FF
    ld a, l                                       ; $70B3: $7D
    ld a, [hl]                                    ; $70B4: $7E
    cp l                                          ; $70B5: $BD
    ld a, $DD                                     ; $70B6: $3E $DD
    rra                                           ; $70B8: $1F
    db $EC                                        ; $70B9: $EC
    rst RST_28                                    ; $70BA: $EF
    nop                                           ; $70BB: $00
    inc bc                                        ; $70BC: $03
    ld bc, $0001                                  ; $70BD: $01 $01 $00
    ld bc, $0200                                  ; $70C0: $01 $00 $02
    ld bc, $030C                                  ; $70C3: $01 $0C $03
    ld d, $0D                                     ; $70C6: $16 $0D
    rra                                           ; $70C8: $1F
    inc c                                         ; $70C9: $0C
    rra                                           ; $70CA: $1F
    inc bc                                        ; $70CB: $03
    rra                                           ; $70CC: $1F
    rrca                                          ; $70CD: $0F
    rra                                           ; $70CE: $1F
    rrca                                          ; $70CF: $0F
    rrca                                          ; $70D0: $0F
    rlca                                          ; $70D1: $07
    rrca                                          ; $70D2: $0F
    rlca                                          ; $70D3: $07
    rra                                           ; $70D4: $1F
    nop                                           ; $70D5: $00

jr_021_70D6:
    daa                                           ; $70D6: $27
    dec de                                        ; $70D7: $1B
    ld b, e                                       ; $70D8: $43
    dec a                                         ; $70D9: $3D
    ld a, a                                       ; $70DA: $7F
    nop                                           ; $70DB: $00
    nop                                           ; $70DC: $00
    nop                                           ; $70DD: $00
    nop                                           ; $70DE: $00
    nop                                           ; $70DF: $00
    adc a                                         ; $70E0: $8F
    ld [hl], b                                    ; $70E1: $70
    adc b                                         ; $70E2: $88
    ld [hl], b                                    ; $70E3: $70
    db $FC                                        ; $70E4: $FC
    nop                                           ; $70E5: $00
    cp $7C                                        ; $70E6: $FE $7C
    rst RST_38                                    ; $70E8: $FF
    adc $DF                                       ; $70E9: $CE $DF
    xor b                                         ; $70EB: $A8
    adc e                                         ; $70EC: $8B
    ld [hl], h                                    ; $70ED: $74
    ld a, e                                       ; $70EE: $7B
    add l                                         ; $70EF: $85
    add a                                         ; $70F0: $87
    ld a, c                                       ; $70F1: $79
    rrca                                          ; $70F2: $0F
    pop af                                        ; $70F3: $F1
    ld [hl], e                                    ; $70F4: $73
    adc h                                         ; $70F5: $8C
    db $DB                                        ; $70F6: $DB
    dec h                                         ; $70F7: $25
    rst RST_30                                    ; $70F8: $F7
    jp hl                                         ; $70F9: $E9


    rst RST_28                                    ; $70FA: $EF
    dec d                                         ; $70FB: $15
    inc sp                                        ; $70FC: $33
    call Call_000_1CFF                            ; $70FD: $CD $FF $1C
    add b                                         ; $7100: $80
    nop                                           ; $7101: $00
    add b                                         ; $7102: $80
    nop                                           ; $7103: $00
    add b                                         ; $7104: $80
    nop                                           ; $7105: $00
    add b                                         ; $7106: $80
    nop                                           ; $7107: $00
    ldh [rP1], a                                  ; $7108: $E0 $00
    and b                                         ; $710A: $A0
    ld b, b                                       ; $710B: $40
    and b                                         ; $710C: $A0
    ld b, b                                       ; $710D: $40
    ld b, b                                       ; $710E: $40
    add b                                         ; $710F: $80
    ld b, b                                       ; $7110: $40
    add b                                         ; $7111: $80
    ret nz                                        ; $7112: $C0

    nop                                           ; $7113: $00
    jr nc, jr_021_70D6                            ; $7114: $30 $C0

    ret z                                         ; $7116: $C8

    ldh a, [$FFF8]                                ; $7117: $F0 $F8
    db $10                                        ; $7119: $10
    ld hl, sp+$00                                 ; $711A: $F8 $00
    ld hl, sp+$00                                 ; $711C: $F8 $00
    ldh a, [rP1]                                  ; $711E: $F0 $00
    ret nz                                        ; $7120: $C0

    nop                                           ; $7121: $00
    nop                                           ; $7122: $00
    nop                                           ; $7123: $00
    nop                                           ; $7124: $00
    nop                                           ; $7125: $00
    nop                                           ; $7126: $00
    nop                                           ; $7127: $00
    nop                                           ; $7128: $00
    nop                                           ; $7129: $00
    nop                                           ; $712A: $00
    nop                                           ; $712B: $00
    nop                                           ; $712C: $00
    nop                                           ; $712D: $00
    add b                                         ; $712E: $80
    nop                                           ; $712F: $00
    ret nz                                        ; $7130: $C0

    add b                                         ; $7131: $80
    ld hl, sp+$00                                 ; $7132: $F8 $00
    inc b                                         ; $7134: $04
    ld hl, sp+$56                                 ; $7135: $F8 $56
    db $FC                                        ; $7137: $FC
    xor e                                         ; $7138: $AB
    cp $F5                                        ; $7139: $FE $F5
    sbc [hl]                                      ; $713B: $9E
    rst RST_18                                    ; $713C: $DF
    and e                                         ; $713D: $A3
    rst RST_10                                    ; $713E: $D7
    dec hl                                        ; $713F: $2B
    rst RST_10                                    ; $7140: $D7
    add hl, hl                                    ; $7141: $29
    or l                                          ; $7142: $B5
    ld c, d                                       ; $7143: $4A
    adc l                                         ; $7144: $8D
    ld [hl], d                                    ; $7145: $72
    ldh a, [c]                                    ; $7146: $F2
    dec c                                         ; $7147: $0D
    adc $31                                       ; $7148: $CE $31
    sub e                                         ; $714A: $93
    ld l, [hl]                                    ; $714B: $6E
    ld d, $E9                                     ; $714C: $16 $E9
    ld a, [de]                                    ; $714E: $1A
    push hl                                       ; $714F: $E5
    add hl, de                                    ; $7150: $19
    and $FE                                       ; $7151: $E6 $FE
    ld bc, $0103                                  ; $7153: $01 $03 $01
    ld bc, $0100                                  ; $7156: $01 $00 $01
    nop                                           ; $7159: $00
    ld bc, $0100                                  ; $715A: $01 $00 $01
    nop                                           ; $715D: $00
    ld bc, $8000                                  ; $715E: $01 $00 $80
    nop                                           ; $7161: $00
    add b                                         ; $7162: $80
    nop                                           ; $7163: $00
    add b                                         ; $7164: $80
    nop                                           ; $7165: $00
    add b                                         ; $7166: $80
    nop                                           ; $7167: $00
    nop                                           ; $7168: $00
    nop                                           ; $7169: $00
    ret nz                                        ; $716A: $C0

    nop                                           ; $716B: $00
    ldh [rLCDC], a                                ; $716C: $E0 $40
    ldh a, [rLCDC]                                ; $716E: $F0 $40
    ret nc                                        ; $7170: $D0

    jr nz, jr_021_71C3                            ; $7171: $20 $50

    and b                                         ; $7173: $A0
    ldh [rP1], a                                  ; $7174: $E0 $00
    ldh [$FFC0], a                                ; $7176: $E0 $C0
    ld h, b                                       ; $7178: $60
    ret nz                                        ; $7179: $C0

    ldh a, [$FF80]                                ; $717A: $F0 $80
    cp h                                          ; $717C: $BC
    ld [hl], b                                    ; $717D: $70
    ld e, $FC                                     ; $717E: $1E $FC
    ld a, [hl]                                    ; $7180: $7E
    db $FC                                        ; $7181: $FC
    cp $00                                        ; $7182: $FE $00
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
    ld bc, $F200                                  ; $71A0: $01 $00 $F2
    ld bc, $E112                                  ; $71A3: $01 $12 $E1
    ld h, h                                       ; $71A6: $64
    add e                                         ; $71A7: $83
    call nz, $ED03                                ; $71A8: $C4 $03 $ED
    add $FD                                       ; $71AB: $C6 $FD
    add $DD                                       ; $71AD: $C6 $DD
    and [hl]                                      ; $71AF: $A6
    rst RST_38                                    ; $71B0: $FF
    add b                                         ; $71B1: $80
    and a                                         ; $71B2: $A7
    cp $B1                                        ; $71B3: $FE $B1
    rst RST_38                                    ; $71B5: $FF
    ccf                                           ; $71B6: $3F
    pop hl                                        ; $71B7: $E1
    ld a, a                                       ; $71B8: $7F
    add b                                         ; $71B9: $80
    rst RST_38                                    ; $71BA: $FF
    nop                                           ; $71BB: $00
    rst RST_38                                    ; $71BC: $FF
    nop                                           ; $71BD: $00
    sbc a                                         ; $71BE: $9F
    ld h, b                                       ; $71BF: $60
    nop                                           ; $71C0: $00
    nop                                           ; $71C1: $00
    nop                                           ; $71C2: $00

jr_021_71C3:
    nop                                           ; $71C3: $00
    ld bc, $0300                                  ; $71C4: $01 $00 $03
    nop                                           ; $71C7: $00
    rlca                                          ; $71C8: $07
    inc bc                                        ; $71C9: $03
    rrca                                          ; $71CA: $0F
    rlca                                          ; $71CB: $07
    rrca                                          ; $71CC: $0F
    inc bc                                        ; $71CD: $03
    rlca                                          ; $71CE: $07
    inc bc                                        ; $71CF: $03
    ld h, a                                       ; $71D0: $67
    inc bc                                        ; $71D1: $03
    ld a, a                                       ; $71D2: $7F
    daa                                           ; $71D3: $27
    ccf                                           ; $71D4: $3F
    rrca                                          ; $71D5: $0F
    rra                                           ; $71D6: $1F
    rrca                                          ; $71D7: $0F
    rrca                                          ; $71D8: $0F
    inc bc                                        ; $71D9: $03
    rlca                                          ; $71DA: $07
    inc bc                                        ; $71DB: $03
    inc bc                                        ; $71DC: $03
    nop                                           ; $71DD: $00
    nop                                           ; $71DE: $00
    nop                                           ; $71DF: $00
    nop                                           ; $71E0: $00
    nop                                           ; $71E1: $00
    ld h, c                                       ; $71E2: $61
    nop                                           ; $71E3: $00
    ld d, c                                       ; $71E4: $51
    jr nz, @+$4B                                  ; $71E5: $20 $49

    jr nc, @+$29                                  ; $71E7: $30 $27

    jr jr_021_720C                                ; $71E9: $18 $21

    ld e, $11                                     ; $71EB: $1E $11
    ld c, $0A                                     ; $71ED: $0E $0A
    dec b                                         ; $71EF: $05
    dec b                                         ; $71F0: $05
    ld [bc], a                                    ; $71F1: $02
    inc bc                                        ; $71F2: $03
    nop                                           ; $71F3: $00
    ld bc, $0200                                  ; $71F4: $01 $00 $02
    ld bc, $0102                                  ; $71F7: $01 $02 $01
    inc bc                                        ; $71FA: $03
    nop                                           ; $71FB: $00
    nop                                           ; $71FC: $00
    nop                                           ; $71FD: $00
    nop                                           ; $71FE: $00
    nop                                           ; $71FF: $00
    ld a, a                                       ; $7200: $7F
    jr nz, @+$40                                  ; $7201: $20 $3E

    dec e                                         ; $7203: $1D
    inc e                                         ; $7204: $1C
    inc bc                                        ; $7205: $03
    rla                                           ; $7206: $17
    ld [$041B], sp                                ; $7207: $08 $1B $04
    ld l, a                                       ; $720A: $6F
    inc de                                        ; $720B: $13

jr_021_720C:
    adc a                                         ; $720C: $8F
    halt                                          ; $720D: $76
    rlca                                          ; $720E: $07
    ld a, [$7887]                                 ; $720F: $FA $87 $78
    call nz, $F8B8                                ; $7212: $C4 $B8 $F8
    ld b, b                                       ; $7215: $40
    ld h, b                                       ; $7216: $60
    add b                                         ; $7217: $80
    and b                                         ; $7218: $A0
    ld b, b                                       ; $7219: $40
    ret nz                                        ; $721A: $C0

    nop                                           ; $721B: $00
    nop                                           ; $721C: $00
    nop                                           ; $721D: $00
    nop                                           ; $721E: $00
    nop                                           ; $721F: $00
    inc bc                                        ; $7220: $03
    nop                                           ; $7221: $00
    rra                                           ; $7222: $1F
    ld [bc], a                                    ; $7223: $02
    ccf                                           ; $7224: $3F
    inc de                                        ; $7225: $13
    ld [hl], a                                    ; $7226: $77
    ld [$5DEE], sp                                ; $7227: $08 $EE $5D
    rst RST_38                                    ; $722A: $FF
    ld e, h                                       ; $722B: $5C
    ccf                                           ; $722C: $3F
    ldh [$FF7C], a                                ; $722D: $E0 $7C
    ld hl, sp-$04                                 ; $722F: $F8 $FC
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
    ld bc, $0100                                  ; $7240: $01 $00 $01
    nop                                           ; $7243: $00
    ld bc, $0000                                  ; $7244: $01 $00 $00
    nop                                           ; $7247: $00

jr_021_7248:
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
    inc e                                         ; $7262: $1C
    nop                                           ; $7263: $00
    inc de                                        ; $7264: $13
    inc c                                         ; $7265: $0C
    inc c                                         ; $7266: $0C
    inc bc                                        ; $7267: $03
    inc bc                                        ; $7268: $03
    ld bc, $0001                                  ; $7269: $01 $01 $00
    jr nz, jr_021_726E                            ; $726C: $20 $00

jr_021_726E:
    ld d, b                                       ; $726E: $50
    jr nz, @+$4A                                  ; $726F: $20 $48

    jr nc, jr_021_72BA                            ; $7271: $30 $47

    jr c, jr_021_72C4                             ; $7273: $38 $4F

    scf                                           ; $7275: $37
    ccf                                           ; $7276: $3F
    add hl, bc                                    ; $7277: $09
    ccf                                           ; $7278: $3F
    dec bc                                        ; $7279: $0B
    rra                                           ; $727A: $1F
    rrca                                          ; $727B: $0F
    rra                                           ; $727C: $1F
    ld [$000C], sp                                ; $727D: $08 $0C $00
    nop                                           ; $7280: $00
    nop                                           ; $7281: $00
    nop                                           ; $7282: $00
    nop                                           ; $7283: $00
    ret nz                                        ; $7284: $C0

    nop                                           ; $7285: $00
    jr nz, jr_021_7248                            ; $7286: $20 $C0

    sub c                                         ; $7288: $91
    ldh [$FFCE], a                                ; $7289: $E0 $CE
    ld [hl], c                                    ; $728B: $71
    ld h, a                                       ; $728C: $67
    ld a, [hl-]                                   ; $728D: $3A
    ld a, $19                                     ; $728E: $3E $19
    db $FC                                        ; $7290: $FC
    inc bc                                        ; $7291: $03
    rst RST_18                                    ; $7292: $DF
    scf                                           ; $7293: $37
    cp $97                                        ; $7294: $FE $97
    db $FC                                        ; $7296: $FC
    rst RST_28                                    ; $7297: $EF
    rst RST_38                                    ; $7298: $FF

jr_021_7299:
    rst RST_38                                    ; $7299: $FF
    rst RST_38                                    ; $729A: $FF
    ld a, a                                       ; $729B: $7F
    ld a, a                                       ; $729C: $7F
    ccf                                           ; $729D: $3F
    ccf                                           ; $729E: $3F
    rra                                           ; $729F: $1F
    nop                                           ; $72A0: $00
    nop                                           ; $72A1: $00
    nop                                           ; $72A2: $00
    nop                                           ; $72A3: $00
    nop                                           ; $72A4: $00
    nop                                           ; $72A5: $00
    ld h, b                                       ; $72A6: $60
    nop                                           ; $72A7: $00
    cp b                                          ; $72A8: $B8
    ld b, b                                       ; $72A9: $40
    ld [hl], h                                    ; $72AA: $74
    ret z                                         ; $72AB: $C8

    jp nc, $99AC                                  ; $72AC: $D2 $AC $99

    ld h, [hl]                                    ; $72AF: $66
    jr c, jr_021_7299                             ; $72B0: $38 $E7

    db $F4                                        ; $72B2: $F4
    db $E3                                        ; $72B3: $E3
    sbc [hl]                                      ; $72B4: $9E
    pop hl                                        ; $72B5: $E1
    scf                                           ; $72B6: $37
    ld [$D56B], a                                 ; $72B7: $EA $6B $D5

jr_021_72BA:
    rst RST_30                                    ; $72BA: $F7
    ret z                                         ; $72BB: $C8

    add sp, -$29                                  ; $72BC: $E8 $D7
    ldh a, [$FF8F]                                ; $72BE: $F0 $8F
    nop                                           ; $72C0: $00
    nop                                           ; $72C1: $00
    nop                                           ; $72C2: $00
    nop                                           ; $72C3: $00

jr_021_72C4:
    nop                                           ; $72C4: $00
    nop                                           ; $72C5: $00
    nop                                           ; $72C6: $00
    nop                                           ; $72C7: $00
    inc c                                         ; $72C8: $0C
    nop                                           ; $72C9: $00
    dec d                                         ; $72CA: $15
    ld [$1D22], sp                                ; $72CB: $08 $22 $1D
    sbc $21                                       ; $72CE: $DE $21
    ld h, c                                       ; $72D0: $61
    sbc [hl]                                      ; $72D1: $9E
    ld b, e                                       ; $72D2: $43
    cp h                                          ; $72D3: $BC
    sbc l                                         ; $72D4: $9D
    ld h, d                                       ; $72D5: $62
    ld [hl], a                                    ; $72D6: $77
    adc c                                         ; $72D7: $89
    rst RST_38                                    ; $72D8: $FF
    add hl, sp                                    ; $72D9: $39
    ei                                            ; $72DA: $FB
    add l                                         ; $72DB: $85
    and a                                         ; $72DC: $A7
    ld e, e                                       ; $72DD: $5B
    rst RST_38                                    ; $72DE: $FF
    rlca                                          ; $72DF: $07
    add b                                         ; $72E0: $80
    nop                                           ; $72E1: $00
    ldh [rP1], a                                  ; $72E2: $E0 $00
    ldh a, [$FF60]                                ; $72E4: $F0 $60
    ld hl, sp+$10                                 ; $72E6: $F8 $10
    sbc h                                         ; $72E8: $9C
    ldh [$FFCC], a                                ; $72E9: $E0 $CC
    ld hl, sp-$22                                 ; $72EB: $F8 $DE
    db $FC                                        ; $72ED: $FC
    adc [hl]                                      ; $72EE: $8E
    db $FC                                        ; $72EF: $FC
    ld e, [hl]                                    ; $72F0: $5E
    db $FC                                        ; $72F1: $FC
    cp [hl]                                       ; $72F2: $BE
    db $FC                                        ; $72F3: $FC
    cp $FC                                        ; $72F4: $FE $FC
    db $FC                                        ; $72F6: $FC
    ld hl, sp-$04                                 ; $72F7: $F8 $FC
    ld hl, sp-$08                                 ; $72F9: $F8 $F8
    ldh a, [$FFF0]                                ; $72FB: $F0 $F0
    ret nz                                        ; $72FD: $C0

    ret nz                                        ; $72FE: $C0

    nop                                           ; $72FF: $00
    rra                                           ; $7300: $1F
    rrca                                          ; $7301: $0F
    rra                                           ; $7302: $1F
    rlca                                          ; $7303: $07
    ccf                                           ; $7304: $3F
    dec de                                        ; $7305: $1B
    ccf                                           ; $7306: $3F

jr_021_7307:
    jr jr_021_7348                                ; $7307: $18 $3F

    jr jr_021_7307                                ; $7309: $18 $FC

    inc sp                                        ; $730B: $33
    di                                            ; $730C: $F3
    ld h, b                                       ; $730D: $60
    ld h, d                                       ; $730E: $62
    ld bc, $0003                                  ; $730F: $01 $03 $00
    inc bc                                        ; $7312: $03
    ld bc, $0107                                  ; $7313: $01 $07 $01
    rra                                           ; $7316: $1F
    dec b                                         ; $7317: $05
    ld l, a                                       ; $7318: $6F
    ld e, $9F                                     ; $7319: $1E $9F
    ld a, a                                       ; $731B: $7F
    cp a                                          ; $731C: $BF
    ld a, h                                       ; $731D: $7C
    ld a, h                                       ; $731E: $7C

jr_021_731F:
    nop                                           ; $731F: $00
    ret nc                                        ; $7320: $D0

    cpl                                           ; $7321: $2F
    db $ED                                        ; $7322: $ED
    ld [bc], a                                    ; $7323: $02
    add a                                         ; $7324: $87
    nop                                           ; $7325: $00
    add e                                         ; $7326: $83
    nop                                           ; $7327: $00
    ld a, h                                       ; $7328: $7C
    inc bc                                        ; $7329: $03
    ld hl, sp+$77                                 ; $732A: $F8 $77
    ld hl, sp+$77                                 ; $732C: $F8 $77
    db $FC                                        ; $732E: $FC
    ld a, e                                       ; $732F: $7B
    ld a, a                                       ; $7330: $7F
    cp e                                          ; $7331: $BB
    rst RST_38                                    ; $7332: $FF
    inc a                                         ; $7333: $3C
    db $FC                                        ; $7334: $FC
    ret nz                                        ; $7335: $C0

    ldh a, [$FFE0]                                ; $7336: $F0 $E0
    ldh [$FFC0], a                                ; $7338: $E0 $C0
    ret nz                                        ; $733A: $C0

    nop                                           ; $733B: $00
    ret nz                                        ; $733C: $C0

    add b                                         ; $733D: $80
    add b                                         ; $733E: $80
    nop                                           ; $733F: $00
    cp $3F                                        ; $7340: $FE $3F
    rst RST_38                                    ; $7342: $FF
    sbc a                                         ; $7343: $9F
    rst RST_18                                    ; $7344: $DF
    cpl                                           ; $7345: $2F

jr_021_7346:
    rra                                           ; $7346: $1F
    rst RST_28                                    ; $7347: $EF

jr_021_7348:
    rst RST_38                                    ; $7348: $FF
    rrca                                          ; $7349: $0F
    ld a, a                                       ; $734A: $7F
    cp a                                          ; $734B: $BF
    ccf                                           ; $734C: $3F
    ret nz                                        ; $734D: $C0

    jr nc, jr_021_731F                            ; $734E: $30 $CF

    ldh a, [$FFCF]                                ; $7350: $F0 $CF
    rst RST_38                                    ; $7352: $FF
    ld [$070F], sp                                ; $7353: $08 $0F $07
    inc de                                        ; $7356: $13
    ld c, $16                                     ; $7357: $0E $16
    add hl, bc                                    ; $7359: $09
    ld a, [bc]                                    ; $735A: $0A
    dec b                                         ; $735B: $05
    dec b                                         ; $735C: $05
    ld [bc], a                                    ; $735D: $02
    inc bc                                        ; $735E: $03
    nop                                           ; $735F: $00
    ld b, b                                       ; $7360: $40
    add b                                         ; $7361: $80
    ld b, b                                       ; $7362: $40
    add b                                         ; $7363: $80
    ld b, b                                       ; $7364: $40
    add b                                         ; $7365: $80
    ret nz                                        ; $7366: $C0

    nop                                           ; $7367: $00
    ldh a, [$FFC0]                                ; $7368: $F0 $C0
    ld hl, sp-$30                                 ; $736A: $F8 $D0
    sbc $28                                       ; $736C: $DE $28
    ld e, a                                       ; $736E: $5F
    xor d                                         ; $736F: $AA
    ld a, a                                       ; $7370: $7F
    sbc e                                         ; $7371: $9B
    db $FC                                        ; $7372: $FC
    rlca                                          ; $7373: $07
    rra                                           ; $7374: $1F
    rrca                                          ; $7375: $0F
    rra                                           ; $7376: $1F
    nop                                           ; $7377: $00
    nop                                           ; $7378: $00
    nop                                           ; $7379: $00
    nop                                           ; $737A: $00
    nop                                           ; $737B: $00
    nop                                           ; $737C: $00
    nop                                           ; $737D: $00
    nop                                           ; $737E: $00
    nop                                           ; $737F: $00
    add b                                         ; $7380: $80
    nop                                           ; $7381: $00
    ld b, b                                       ; $7382: $40
    add b                                         ; $7383: $80
    jr nz, jr_021_7346                            ; $7384: $20 $C0

    ldh [rP1], a                                  ; $7386: $E0 $00
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
    ld bc, $0600                                  ; $73A2: $01 $00 $06
    ld bc, $0718                                  ; $73A5: $01 $18 $07
    ldh [$FF1F], a                                ; $73A8: $E0 $1F
    inc bc                                        ; $73AA: $03
    db $FC                                        ; $73AB: $FC
    rst RST_38                                    ; $73AC: $FF
    ld [bc], a                                    ; $73AD: $02
    cp $FD                                        ; $73AE: $FE $FD
    rst RST_38                                    ; $73B0: $FF
    db $FC                                        ; $73B1: $FC
    rst RST_38                                    ; $73B2: $FF
    cp $FE                                        ; $73B3: $FE $FE
    db $FD                                        ; $73B5: $FD
    rst RST_38                                    ; $73B6: $FF
    ld [bc], a                                    ; $73B7: $02
    inc bc                                        ; $73B8: $03
    nop                                           ; $73B9: $00
    nop                                           ; $73BA: $00
    nop                                           ; $73BB: $00
    nop                                           ; $73BC: $00
    nop                                           ; $73BD: $00
    nop                                           ; $73BE: $00
    nop                                           ; $73BF: $00
    ld bc, $0300                                  ; $73C0: $01 $00 $03
    ld bc, $0307                                  ; $73C3: $01 $07 $03
    dec bc                                        ; $73C6: $0B
    inc b                                         ; $73C7: $04
    ld de, $130E                                  ; $73C8: $11 $0E $13
    inc c                                         ; $73CB: $0C
    inc h                                         ; $73CC: $24
    dec de                                        ; $73CD: $1B
    ld e, c                                       ; $73CE: $59
    ld h, $92                                     ; $73CF: $26 $92
    ld l, l                                       ; $73D1: $6D
    inc de                                        ; $73D2: $13
    db $EC                                        ; $73D3: $EC
    ld [hl], $C9                                  ; $73D4: $36 $C9
    ld l, l                                       ; $73D6: $6D
    sub d                                         ; $73D7: $92
    sbc e                                         ; $73D8: $9B
    ld h, h                                       ; $73D9: $64
    db $E3                                        ; $73DA: $E3
    sbc h                                         ; $73DB: $9C
    add [hl]                                      ; $73DC: $86
    ld a, c                                       ; $73DD: $79
    ld a, a                                       ; $73DE: $7F
    add [hl]                                      ; $73DF: $86
    rst RST_38                                    ; $73E0: $FF
    ld [hl], b                                    ; $73E1: $70
    rst RST_38                                    ; $73E2: $FF
    rrca                                          ; $73E3: $0F
    rrca                                          ; $73E4: $0F
    rst RST_30                                    ; $73E5: $F7
    rst RST_38                                    ; $73E6: $FF
    ld bc, $3EFF                                  ; $73E7: $01 $FF $3E
    ccf                                           ; $73EA: $3F
    inc bc                                        ; $73EB: $03
    inc bc                                        ; $73EC: $03
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
    inc bc                                        ; $7406: $03
    nop                                           ; $7407: $00
    dec c                                         ; $7408: $0D
    inc bc                                        ; $7409: $03
    inc de                                        ; $740A: $13
    rrca                                          ; $740B: $0F
    scf                                           ; $740C: $37
    rrca                                          ; $740D: $0F
    ld l, a                                       ; $740E: $6F
    rra                                           ; $740F: $1F
    rst RST_28                                    ; $7410: $EF
    ld e, [hl]                                    ; $7411: $5E
    sbc $BD                                       ; $7412: $DE $BD
    rst RST_18                                    ; $7414: $DF
    cp h                                          ; $7415: $BC
    cp $1D                                        ; $7416: $FE $1D
    rst RST_38                                    ; $7418: $FF
    ld e, h                                       ; $7419: $5C
    ld a, a                                       ; $741A: $7F
    sbc h                                         ; $741B: $9C
    ld a, a                                       ; $741C: $7F
    sbc [hl]                                      ; $741D: $9E
    rst RST_38                                    ; $741E: $FF
    ld e, $3E                                     ; $741F: $1E $3E
    call c, $BC7F                                 ; $7421: $DC $7F $BC
    ld a, a                                       ; $7424: $7F
    cp l                                          ; $7425: $BD
    rst RST_38                                    ; $7426: $FF
    ld a, c                                       ; $7427: $79
    rst RST_38                                    ; $7428: $FF
    db $F4                                        ; $7429: $F4
    rst RST_38                                    ; $742A: $FF
    call Call_000_00FF                            ; $742B: $CD $FF $00
    nop                                           ; $742E: $00
    rst RST_38                                    ; $742F: $FF
    ret nz                                        ; $7430: $C0

    ccf                                           ; $7431: $3F
    ldh a, [rIF]                                  ; $7432: $F0 $0F
    ret nz                                        ; $7434: $C0

    cp a                                          ; $7435: $BF
    rst RST_38                                    ; $7436: $FF
    ret nz                                        ; $7437: $C0

    rst RST_38                                    ; $7438: $FF
    or $FF                                        ; $7439: $F6 $FF
    rrca                                          ; $743B: $0F
    rst RST_38                                    ; $743C: $FF
    db $E3                                        ; $743D: $E3
    di                                            ; $743E: $F3
    nop                                           ; $743F: $00
    nop                                           ; $7440: $00
    nop                                           ; $7441: $00
    nop                                           ; $7442: $00
    nop                                           ; $7443: $00
    nop                                           ; $7444: $00
    nop                                           ; $7445: $00
    inc a                                         ; $7446: $3C
    nop                                           ; $7447: $00
    call nz, $F838                                ; $7448: $C4 $38 $F8
    ret nz                                        ; $744B: $C0

    ld hl, sp-$20                                 ; $744C: $F8 $E0
    db $EC                                        ; $744E: $EC
    ret nc                                        ; $744F: $D0

    ld [$EBD4], a                                 ; $7450: $EA $D4 $EB
    inc d                                         ; $7453: $14
    ld e, d                                       ; $7454: $5A
    and l                                         ; $7455: $A5
    ld b, [hl]                                    ; $7456: $46
    cp c                                          ; $7457: $B9
    ld sp, hl                                     ; $7458: $F9
    ld b, $A7                                     ; $7459: $06 $A7
    ld b, b                                       ; $745B: $40
    ld b, b                                       ; $745C: $40
    add b                                         ; $745D: $80
    ret nz                                        ; $745E: $C0

    nop                                           ; $745F: $00
    ret nz                                        ; $7460: $C0

    nop                                           ; $7461: $00
    ldh a, [$FFC0]                                ; $7462: $F0 $C0
    db $FC                                        ; $7464: $FC
    ld [hl], b                                    ; $7465: $70
    cp $9C                                        ; $7466: $FE $9C
    cp $40                                        ; $7468: $FE $40
    ld a, b                                       ; $746A: $78
    and b                                         ; $746B: $A0
    ld h, [hl]                                    ; $746C: $66
    sbc b                                         ; $746D: $98
    ld h, c                                       ; $746E: $61
    sbc [hl]                                      ; $746F: $9E
    ld h, c                                       ; $7470: $61
    sbc [hl]                                      ; $7471: $9E
    pop hl                                        ; $7472: $E1
    ld e, $F3                                     ; $7473: $1E $F3
    ld l, l                                       ; $7475: $6D
    rst RST_38                                    ; $7476: $FF
    or e                                          ; $7477: $B3
    rst RST_38                                    ; $7478: $FF
    cp e                                          ; $7479: $BB
    rst RST_38                                    ; $747A: $FF
    inc a                                         ; $747B: $3C
    ccf                                           ; $747C: $3F
    ld c, $0F                                     ; $747D: $0E $0F
    ld [bc], a                                    ; $747F: $02
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
    add b                                         ; $7496: $80
    nop                                           ; $7497: $00
    add b                                         ; $7498: $80
    nop                                           ; $7499: $00
    ld b, b                                       ; $749A: $40
    add b                                         ; $749B: $80
    ld b, b                                       ; $749C: $40
    add b                                         ; $749D: $80
    ret nz                                        ; $749E: $C0

    nop                                           ; $749F: $00
    ld h, b                                       ; $74A0: $60
    add b                                         ; $74A1: $80
    ld a, b                                       ; $74A2: $78
    and b                                         ; $74A3: $A0
    ld a, h                                       ; $74A4: $7C
    or b                                          ; $74A5: $B0
    rst RST_38                                    ; $74A6: $FF
    ld [hl], h                                    ; $74A7: $74
    rst RST_38                                    ; $74A8: $FF
    rst RST_30                                    ; $74A9: $F7
    rst RST_38                                    ; $74AA: $FF
    rst RST_28                                    ; $74AB: $EF
    rst RST_38                                    ; $74AC: $FF
    rrca                                          ; $74AD: $0F
    rst RST_08                                    ; $74AE: $CF
    add b                                         ; $74AF: $80
    ret nz                                        ; $74B0: $C0

    add b                                         ; $74B1: $80
    ret nz                                        ; $74B2: $C0

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
    ret nz                                        ; $74C0: $C0

    nop                                           ; $74C1: $00
    ldh a, [$FFC0]                                ; $74C2: $F0 $C0
    ld hl, sp+$30                                 ; $74C4: $F8 $30
    ld hl, sp-$50                                 ; $74C6: $F8 $B0
    db $FC                                        ; $74C8: $FC
    ld a, b                                       ; $74C9: $78
    cp $7C                                        ; $74CA: $FE $7C
    ld a, a                                       ; $74CC: $7F
    ld c, $0F                                     ; $74CD: $0E $0F
    ld [bc], a                                    ; $74CF: $02
    inc bc                                        ; $74D0: $03
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
    ld bc, $0700                                  ; $74E0: $01 $00 $07
    ld bc, $071F                                  ; $74E3: $01 $1F $07
    rst RST_38                                    ; $74E6: $FF
    inc e                                         ; $74E7: $1C
    rst RST_38                                    ; $74E8: $FF
    di                                            ; $74E9: $F3
    rst RST_38                                    ; $74EA: $FF
    ld c, $FF                                     ; $74EB: $0E $FF
    pop af                                        ; $74ED: $F1
    rst RST_38                                    ; $74EE: $FF
    nop                                           ; $74EF: $00
    nop                                           ; $74F0: $00
    rst RST_38                                    ; $74F1: $FF
    nop                                           ; $74F2: $00
    rst RST_38                                    ; $74F3: $FF
    ldh a, [rIF]                                  ; $74F4: $F0 $0F
    rst RST_38                                    ; $74F6: $FF
    ldh a, [rIE]                                  ; $74F7: $F0 $FF
    rra                                           ; $74F9: $1F
    rra                                           ; $74FA: $1F
    rlca                                          ; $74FB: $07
    rlca                                          ; $74FC: $07
    ld bc, $0001                                  ; $74FD: $01 $01 $00
    ldh a, [rP1]                                  ; $7500: $F0 $00
    db $FC                                        ; $7502: $FC
    ldh a, [$FFFE]                                ; $7503: $F0 $FE
    nop                                           ; $7505: $00
    rst RST_38                                    ; $7506: $FF
    db $FC                                        ; $7507: $FC
    rst RST_38                                    ; $7508: $FF
    db $E3                                        ; $7509: $E3
    rst RST_38                                    ; $750A: $FF
    dec e                                         ; $750B: $1D
    rst RST_38                                    ; $750C: $FF
    cp $FF                                        ; $750D: $FE $FF
    ld bc, $FE01                                  ; $750F: $01 $01 $FE
    ld bc, $01FE                                  ; $7512: $01 $FE $01
    cp $81                                        ; $7515: $FE $81
    ld a, [hl]                                    ; $7517: $7E
    cp $81                                        ; $7518: $FE $81
    rst RST_38                                    ; $751A: $FF
    cp $FF                                        ; $751B: $FE $FF
    add b                                         ; $751D: $80
    ret nz                                        ; $751E: $C0

    ccf                                           ; $751F: $3F
    ret nz                                        ; $7520: $C0

    nop                                           ; $7521: $00
    ldh a, [$FFC0]                                ; $7522: $F0 $C0
    ld hl, sp+$70                                 ; $7524: $F8 $70
    ld hl, sp+$00                                 ; $7526: $F8 $00
    ldh [$FF80], a                                ; $7528: $E0 $80
    sbc b                                         ; $752A: $98
    ld h, b                                       ; $752B: $60
    ld c, $F0                                     ; $752C: $0E $F0
    rrca                                          ; $752E: $0F
    or $1F                                        ; $752F: $F6 $1F
    rst RST_28                                    ; $7531: $EF
    rst RST_38                                    ; $7532: $FF
    rrca                                          ; $7533: $0F
    rst RST_38                                    ; $7534: $FF
    cp $FF                                        ; $7535: $FE $FF
    ld a, l                                       ; $7537: $7D
    rst RST_38                                    ; $7538: $FF
    ld bc, $38FF                                  ; $7539: $01 $FF $38
    inc a                                         ; $753C: $3C
    ld [$000C], sp                                ; $753D: $08 $0C $00
    add b                                         ; $7540: $80
    nop                                           ; $7541: $00
    call z, $FF00                                 ; $7542: $CC $00 $FF
    ld c, h                                       ; $7545: $4C
    rst RST_38                                    ; $7546: $FF
    di                                            ; $7547: $F3
    rst RST_38                                    ; $7548: $FF
    ei                                            ; $7549: $FB
    rst RST_38                                    ; $754A: $FF
    rst RST_30                                    ; $754B: $F7
    rst RST_38                                    ; $754C: $FF
    rlca                                          ; $754D: $07
    rlca                                          ; $754E: $07
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
    add b                                         ; $7560: $80
    nop                                           ; $7561: $00
    add b                                         ; $7562: $80
    nop                                           ; $7563: $00
    ret nz                                        ; $7564: $C0

    add b                                         ; $7565: $80
    ldh [$FFC0], a                                ; $7566: $E0 $C0
    ldh a, [$FFE0]                                ; $7568: $F0 $E0
    ldh a, [rNR41]                                ; $756A: $F0 $20
    jr nc, jr_021_756E                            ; $756C: $30 $00

jr_021_756E:
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
    ccf                                           ; $7580: $3F
    nop                                           ; $7581: $00
    ld bc, $0000                                  ; $7582: $01 $00 $00
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
    add b                                         ; $75A0: $80
    nop                                           ; $75A1: $00
    ldh a, [$FF80]                                ; $75A2: $F0 $80
    db $FC                                        ; $75A4: $FC
    ldh a, [rIE]                                  ; $75A5: $F0 $FF
    db $FC                                        ; $75A7: $FC
    rst RST_38                                    ; $75A8: $FF
    rst RST_38                                    ; $75A9: $FF
    rst RST_38                                    ; $75AA: $FF
    ldh a, [$FFF0]                                ; $75AB: $F0 $F0
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
    add b                                         ; $75DA: $80

jr_021_75DB:
    nop                                           ; $75DB: $00
    ldh [$FF80], a                                ; $75DC: $E0 $80
    add b                                         ; $75DE: $80
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
    ld bc, $0100                                  ; $75EC: $01 $00 $01
    nop                                           ; $75EF: $00
    ld [bc], a                                    ; $75F0: $02
    ld bc, $0102                                  ; $75F1: $01 $02 $01
    ld [bc], a                                    ; $75F4: $02
    ld bc, $0102                                  ; $75F5: $01 $02 $01
    ld [bc], a                                    ; $75F8: $02
    ld bc, $0102                                  ; $75F9: $01 $02 $01
    ld bc, $0100                                  ; $75FC: $01 $00 $01
    nop                                           ; $75FF: $00
    rst RST_38                                    ; $7600: $FF
    rst RST_38                                    ; $7601: $FF
    rst RST_38                                    ; $7602: $FF
    rst RST_38                                    ; $7603: $FF
    rst RST_38                                    ; $7604: $FF
    rst RST_38                                    ; $7605: $FF
    rst RST_38                                    ; $7606: $FF
    rst RST_38                                    ; $7607: $FF
    rst RST_38                                    ; $7608: $FF
    rst RST_38                                    ; $7609: $FF
    rst RST_38                                    ; $760A: $FF
    rst RST_38                                    ; $760B: $FF
    ld [hl], a                                    ; $760C: $77
    rst RST_38                                    ; $760D: $FF
    ld l, e                                       ; $760E: $6B
    rst RST_30                                    ; $760F: $F7
    sbc e                                         ; $7610: $9B
    ld h, a                                       ; $7611: $67
    ld a, l                                       ; $7612: $7D
    inc bc                                        ; $7613: $03
    inc hl                                        ; $7614: $23
    rra                                           ; $7615: $1F
    ld e, a                                       ; $7616: $5F
    ccf                                           ; $7617: $3F
    ld e, l                                       ; $7618: $5D
    ccf                                           ; $7619: $3F
    ld [hl+], a                                   ; $761A: $22
    dec e                                         ; $761B: $1D
    ld e, $01                                     ; $761C: $1E $01
    ld bc, $1800                                  ; $761E: $01 $00 $18
    nop                                           ; $7621: $00
    jr z, jr_021_7634                             ; $7622: $28 $10

    ld d, h                                       ; $7624: $54
    jr c, jr_021_75DB                             ; $7625: $38 $B4

    ld a, b                                       ; $7627: $78
    ld a, e                                       ; $7628: $7B
    db $FC                                        ; $7629: $FC
    db $FC                                        ; $762A: $FC
    rst RST_38                                    ; $762B: $FF
    cp $FF                                        ; $762C: $FE $FF
    rst RST_38                                    ; $762E: $FF
    rst RST_38                                    ; $762F: $FF
    rst RST_38                                    ; $7630: $FF
    rst RST_38                                    ; $7631: $FF
    rst RST_38                                    ; $7632: $FF
    rst RST_38                                    ; $7633: $FF

jr_021_7634:
    rst RST_38                                    ; $7634: $FF
    rst RST_38                                    ; $7635: $FF

jr_021_7636:
    rst RST_38                                    ; $7636: $FF
    rst RST_38                                    ; $7637: $FF
    rst RST_38                                    ; $7638: $FF
    rst RST_38                                    ; $7639: $FF
    rst RST_38                                    ; $763A: $FF
    rst RST_38                                    ; $763B: $FF
    rst RST_38                                    ; $763C: $FF
    rst RST_38                                    ; $763D: $FF
    rst RST_38                                    ; $763E: $FF
    rst RST_38                                    ; $763F: $FF
    add b                                         ; $7640: $80
    nop                                           ; $7641: $00
    add b                                         ; $7642: $80
    nop                                           ; $7643: $00
    cp h                                          ; $7644: $BC
    nop                                           ; $7645: $00
    ld h, d                                       ; $7646: $62
    sbc h                                         ; $7647: $9C
    sbc l                                         ; $7648: $9D
    cp $FD                                        ; $7649: $FE $FD
    cp $FD                                        ; $764B: $FE $FD
    cp $FD                                        ; $764D: $FE $FD
    cp $FD                                        ; $764F: $FE $FD
    cp $FD                                        ; $7651: $FE $FD
    cp $F2                                        ; $7653: $FE $F2
    db $FC                                        ; $7655: $FC
    adc h                                         ; $7656: $8C
    ldh a, [rSVBK]                                ; $7657: $F0 $70
    add b                                         ; $7659: $80
    and b                                         ; $765A: $A0
    ret nz                                        ; $765B: $C0

    and b                                         ; $765C: $A0
    ret nz                                        ; $765D: $C0

    and b                                         ; $765E: $A0
    ret nz                                        ; $765F: $C0

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
    jr c, jr_021_7678                             ; $7676: $38 $00

jr_021_7678:
    ld b, h                                       ; $7678: $44
    jr c, jr_021_7636                             ; $7679: $38 $BB

    ld a, h                                       ; $767B: $7C
    ld a, h                                       ; $767C: $7C
    rst RST_38                                    ; $767D: $FF
    ld a, a                                       ; $767E: $7F
    rst RST_38                                    ; $767F: $FF
    rst RST_38                                    ; $7680: $FF
    rst RST_38                                    ; $7681: $FF
    rst RST_38                                    ; $7682: $FF
    rst RST_38                                    ; $7683: $FF
    rst RST_38                                    ; $7684: $FF
    rst RST_38                                    ; $7685: $FF
    rst RST_38                                    ; $7686: $FF
    rst RST_38                                    ; $7687: $FF
    rst RST_38                                    ; $7688: $FF
    rst RST_38                                    ; $7689: $FF
    rst RST_38                                    ; $768A: $FF
    rst RST_38                                    ; $768B: $FF
    ld a, c                                       ; $768C: $79
    rst RST_38                                    ; $768D: $FF
    and [hl]                                      ; $768E: $A6
    ld a, c                                       ; $768F: $79
    xor d                                         ; $7690: $AA
    ld [hl], c                                    ; $7691: $71
    sub c                                         ; $7692: $91
    ld h, b                                       ; $7693: $60
    sub c                                         ; $7694: $91
    ld h, b                                       ; $7695: $60
    ldh [rP1], a                                  ; $7696: $E0 $00
    nop                                           ; $7698: $00
    nop                                           ; $7699: $00
    nop                                           ; $769A: $00
    nop                                           ; $769B: $00
    nop                                           ; $769C: $00
    nop                                           ; $769D: $00
    nop                                           ; $769E: $00
    nop                                           ; $769F: $00
    and b                                         ; $76A0: $A0
    ret nz                                        ; $76A1: $C0

    and b                                         ; $76A2: $A0
    ret nz                                        ; $76A3: $C0

    and b                                         ; $76A4: $A0
    ret nz                                        ; $76A5: $C0

    and b                                         ; $76A6: $A0
    ret nz                                        ; $76A7: $C0

    ret nc                                        ; $76A8: $D0

    ldh [$FF50], a                                ; $76A9: $E0 $50
    ldh [$FF50], a                                ; $76AB: $E0 $50
    ldh [$FF90], a                                ; $76AD: $E0 $90
    ld h, b                                       ; $76AF: $60
    ldh a, [rP1]                                  ; $76B0: $F0 $00
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

Call_021_7C88:
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
