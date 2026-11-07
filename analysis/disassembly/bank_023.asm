; Disassembly of "original.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $023", ROMX[$4000], BANK[$23]

    nop                                           ; $4000: $00
    nop                                           ; $4001: $00
    inc bc                                        ; $4002: $03
    nop                                           ; $4003: $00
    dec a                                         ; $4004: $3D
    inc bc                                        ; $4005: $03
    ld b, e                                       ; $4006: $43
    ld a, $B5                                     ; $4007: $3E $B5
    ld l, a                                       ; $4009: $6F
    adc d                                         ; $400A: $8A
    ld a, a                                       ; $400B: $7F
    rst RST_38                                    ; $400C: $FF
    ld a, a                                       ; $400D: $7F
    ld a, a                                       ; $400E: $7F
    inc d                                         ; $400F: $14
    ld d, l                                       ; $4010: $55
    ld a, [hl+]                                   ; $4011: $2A
    ccf                                           ; $4012: $3F
    nop                                           ; $4013: $00
    ld l, e                                       ; $4014: $6B
    ccf                                           ; $4015: $3F
    ccf                                           ; $4016: $3F
    inc e                                         ; $4017: $1C
    inc e                                         ; $4018: $1C
    nop                                           ; $4019: $00
    nop                                           ; $401A: $00
    nop                                           ; $401B: $00
    nop                                           ; $401C: $00
    nop                                           ; $401D: $00
    nop                                           ; $401E: $00
    nop                                           ; $401F: $00
    ld a, b                                       ; $4020: $78
    nop                                           ; $4021: $00
    rst RST_38                                    ; $4022: $FF
    ld a, b                                       ; $4023: $78
    db $FD                                        ; $4024: $FD
    adc a                                         ; $4025: $8F
    or a                                          ; $4026: $B7
    ld e, a                                       ; $4027: $5F
    rst RST_28                                    ; $4028: $EF
    ccf                                           ; $4029: $3F
    sbc a                                         ; $402A: $9F
    db $E3                                        ; $402B: $E3
    rst RST_38                                    ; $402C: $FF
    inc c                                         ; $402D: $0C
    or a                                          ; $402E: $B7
    ld e, [hl]                                    ; $402F: $5E
    ld l, e                                       ; $4030: $6B
    cp [hl]                                       ; $4031: $BE
    rst RST_10                                    ; $4032: $D7
    ld a, a                                       ; $4033: $7F
    ld a, a                                       ; $4034: $7F
    rst RST_38                                    ; $4035: $FF
    rst RST_38                                    ; $4036: $FF
    ld a, [hl]                                    ; $4037: $7E
    ld a, [hl]                                    ; $4038: $7E
    nop                                           ; $4039: $00
    nop                                           ; $403A: $00
    nop                                           ; $403B: $00
    nop                                           ; $403C: $00
    nop                                           ; $403D: $00
    nop                                           ; $403E: $00
    nop                                           ; $403F: $00
    ld bc, $0100                                  ; $4040: $01 $00 $01
    nop                                           ; $4043: $00
    nop                                           ; $4044: $00
    nop                                           ; $4045: $00
    nop                                           ; $4046: $00
    nop                                           ; $4047: $00
    add b                                         ; $4048: $80
    nop                                           ; $4049: $00
    ld e, a                                       ; $404A: $5F
    add b                                         ; $404B: $80
    cp b                                          ; $404C: $B8
    rst RST_00                                    ; $404D: $C7
    ld sp, hl                                     ; $404E: $F9
    sub $FA                                       ; $404F: $D6 $FA
    dec d                                         ; $4051: $15
    inc e                                         ; $4052: $1C
    db $E3                                        ; $4053: $E3
    rst RST_18                                    ; $4054: $DF
    db $EC                                        ; $4055: $EC
    rst RST_38                                    ; $4056: $FF
    pop hl                                        ; $4057: $E1
    rst RST_38                                    ; $4058: $FF
    ld h, l                                       ; $4059: $65
    rst RST_38                                    ; $405A: $FF
    ld [hl], b                                    ; $405B: $70
    db $FD                                        ; $405C: $FD
    dec hl                                        ; $405D: $2B
    dec a                                         ; $405E: $3D
    dec bc                                        ; $405F: $0B
    rst RST_00                                    ; $4060: $C7
    nop                                           ; $4061: $00
    ei                                            ; $4062: $FB
    rst RST_00                                    ; $4063: $C7
    cp a                                          ; $4064: $BF
    ld a, b                                       ; $4065: $78
    ld c, a                                       ; $4066: $4F
    ccf                                           ; $4067: $3F
    inc sp                                        ; $4068: $33
    rra                                           ; $4069: $1F
    ret nc                                        ; $406A: $D0

    rrca                                          ; $406B: $0F
    dec l                                         ; $406C: $2D
    rst RST_00                                    ; $406D: $C7
    sub h                                         ; $406E: $94
    ld h, e                                       ; $406F: $63
    sbc [hl]                                      ; $4070: $9E
    ld h, c                                       ; $4071: $61
    sub e                                         ; $4072: $93
    ld l, l                                       ; $4073: $6D
    and c                                         ; $4074: $A1
    sbc $3F                                       ; $4075: $DE $3F
    sbc $7F                                       ; $4077: $DE $7F
    sbc a                                         ; $4079: $9F
    rst RST_38                                    ; $407A: $FF
    ld l, [hl]                                    ; $407B: $6E
    xor a                                         ; $407C: $AF
    ld d, b                                       ; $407D: $50
    xor a                                         ; $407E: $AF
    ld d, [hl]                                    ; $407F: $56
    nop                                           ; $4080: $00
    nop                                           ; $4081: $00
    ret nz                                        ; $4082: $C0

    nop                                           ; $4083: $00
    ldh [$FFC0], a                                ; $4084: $E0 $C0
    ldh a, [rNR41]                                ; $4086: $F0 $20
    ld hl, sp-$40                                 ; $4088: $F8 $C0
    db $FC                                        ; $408A: $FC
    ldh a, [$FFFE]                                ; $408B: $F0 $FE
    db $FC                                        ; $408D: $FC
    ccf                                           ; $408E: $3F
    cp $77                                        ; $408F: $FE $77
    rst RST_38                                    ; $4091: $FF
    rrca                                          ; $4092: $0F
    rst RST_38                                    ; $4093: $FF
    db $DD                                        ; $4094: $DD
    rst RST_38                                    ; $4095: $FF
    add c                                         ; $4096: $81
    rst RST_38                                    ; $4097: $FF
    db $E3                                        ; $4098: $E3
    ld a, a                                       ; $4099: $7F
    ld a, a                                       ; $409A: $7F
    sbc a                                         ; $409B: $9F
    rst RST_38                                    ; $409C: $FF
    ld h, b                                       ; $409D: $60
    ld a, a                                       ; $409E: $7F
    ld a, $0E                                     ; $409F: $3E $0E
    dec b                                         ; $40A1: $05
    ld b, $01                                     ; $40A2: $06 $01
    inc bc                                        ; $40A4: $03
    nop                                           ; $40A5: $00
    inc bc                                        ; $40A6: $03
    ld bc, $0003                                  ; $40A7: $01 $03 $00
    dec b                                         ; $40AA: $05
    ld [bc], a                                    ; $40AB: $02
    add hl, bc                                    ; $40AC: $09
    ld b, $10                                     ; $40AD: $06 $10
    rrca                                          ; $40AF: $0F
    ld de, $230E                                  ; $40B0: $11 $0E $23
    inc e                                         ; $40B3: $1C
    rst RST_38                                    ; $40B4: $FF
    nop                                           ; $40B5: $00
    sbc a                                         ; $40B6: $9F
    ld a, [hl]                                    ; $40B7: $7E
    ld c, a                                       ; $40B8: $4F
    ccf                                           ; $40B9: $3F
    inc sp                                        ; $40BA: $33
    rrca                                          ; $40BB: $0F
    ld c, $01                                     ; $40BC: $0E $01
    ld bc, $FF00                                  ; $40BE: $01 $00 $FF
    cp a                                          ; $40C1: $BF
    rst RST_38                                    ; $40C2: $FF
    cp [hl]                                       ; $40C3: $BE
    cp $00                                        ; $40C4: $FE $00
    ld a, [hl]                                    ; $40C6: $7E
    db $FC                                        ; $40C7: $FC
    ld a, h                                       ; $40C8: $7C
    ret nz                                        ; $40C9: $C0

    ld h, d                                       ; $40CA: $62
    call c, Call_000_3CC2                         ; $40CB: $DC $C2 $3C
    jp nz, $843C                                  ; $40CE: $C2 $3C $84

    ld a, b                                       ; $40D1: $78
    adc b                                         ; $40D2: $88
    ld [hl], b                                    ; $40D3: $70
    db $FC                                        ; $40D4: $FC
    nop                                           ; $40D5: $00
    ld a, [hl]                                    ; $40D6: $7E
    db $FC                                        ; $40D7: $FC
    cp a                                          ; $40D8: $BF
    ld a, [hl]                                    ; $40D9: $7E
    rst RST_08                                    ; $40DA: $CF
    cp [hl]                                       ; $40DB: $BE
    rst RST_30                                    ; $40DC: $F7
    rst RST_08                                    ; $40DD: $CF
    rst RST_38                                    ; $40DE: $FF
    db $E3                                        ; $40DF: $E3
    cp a                                          ; $40E0: $BF
    rra                                           ; $40E1: $1F
    rra                                           ; $40E2: $1F
    rrca                                          ; $40E3: $0F
    rra                                           ; $40E4: $1F
    ld c, $1F                                     ; $40E5: $0E $1F
    ld c, $0F                                     ; $40E7: $0E $0F
    ld b, $0E                                     ; $40E9: $06 $0E
    inc b                                         ; $40EB: $04
    ld c, $04                                     ; $40EC: $0E $04
    inc c                                         ; $40EE: $0C
    nop                                           ; $40EF: $00
    nop                                           ; $40F0: $00
    nop                                           ; $40F1: $00
    nop                                           ; $40F2: $00
    nop                                           ; $40F3: $00
    nop                                           ; $40F4: $00
    nop                                           ; $40F5: $00
    nop                                           ; $40F6: $00
    nop                                           ; $40F7: $00
    nop                                           ; $40F8: $00
    nop                                           ; $40F9: $00
    nop                                           ; $40FA: $00
    nop                                           ; $40FB: $00
    ret nz                                        ; $40FC: $C0

    nop                                           ; $40FD: $00
    ldh [$FFC0], a                                ; $40FE: $E0 $C0
    ld a, c                                       ; $4100: $79
    jr nc, jr_023_417C                            ; $4101: $30 $79

    jr nc, jr_023_417E                            ; $4103: $30 $79

    nop                                           ; $4105: $00
    xor c                                         ; $4106: $A9
    ld d, b                                       ; $4107: $50
    xor d                                         ; $4108: $AA
    ld d, c                                       ; $4109: $51
    ld d, d                                       ; $410A: $52
    ld bc, $0102                                  ; $410B: $01 $02 $01
    ld bc, $0000                                  ; $410E: $01 $00 $00
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
    ldh a, [$FFE0]                                ; $4120: $F0 $E0
    ldh a, [$FFE0]                                ; $4122: $F0 $E0
    ldh a, [$FFE0]                                ; $4124: $F0 $E0
    ldh [$FF80], a                                ; $4126: $E0 $80
    and b                                         ; $4128: $A0
    ld b, b                                       ; $4129: $40
    and b                                         ; $412A: $A0
    ld b, b                                       ; $412B: $40
    ret nz                                        ; $412C: $C0

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
    nop                                           ; $413C: $00
    nop                                           ; $413D: $00
    nop                                           ; $413E: $00
    nop                                           ; $413F: $00
    ret nz                                        ; $4140: $C0

    add b                                         ; $4141: $80
    ret nz                                        ; $4142: $C0

    add b                                         ; $4143: $80
    ldh [$FFC0], a                                ; $4144: $E0 $C0
    ldh [$FFC0], a                                ; $4146: $E0 $C0
    ldh [$FFC0], a                                ; $4148: $E0 $C0
    ret nz                                        ; $414A: $C0

    add b                                         ; $414B: $80
    add b                                         ; $414C: $80
    nop                                           ; $414D: $00
    add b                                         ; $414E: $80
    nop                                           ; $414F: $00
    add b                                         ; $4150: $80
    nop                                           ; $4151: $00
    add b                                         ; $4152: $80
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
    inc bc                                        ; $4162: $03
    nop                                           ; $4163: $00
    dec a                                         ; $4164: $3D
    inc bc                                        ; $4165: $03
    ld b, e                                       ; $4166: $43
    ld a, $B5                                     ; $4167: $3E $B5
    ld l, a                                       ; $4169: $6F
    adc d                                         ; $416A: $8A
    ld a, a                                       ; $416B: $7F
    rst RST_38                                    ; $416C: $FF
    ld a, a                                       ; $416D: $7F
    ld a, a                                       ; $416E: $7F
    inc d                                         ; $416F: $14
    ld d, l                                       ; $4170: $55
    ld a, [hl+]                                   ; $4171: $2A
    ccf                                           ; $4172: $3F
    nop                                           ; $4173: $00
    ld l, e                                       ; $4174: $6B
    ccf                                           ; $4175: $3F
    ccf                                           ; $4176: $3F
    inc e                                         ; $4177: $1C
    inc e                                         ; $4178: $1C
    nop                                           ; $4179: $00
    nop                                           ; $417A: $00
    nop                                           ; $417B: $00

jr_023_417C:
    nop                                           ; $417C: $00
    nop                                           ; $417D: $00

jr_023_417E:
    nop                                           ; $417E: $00
    nop                                           ; $417F: $00
    ld a, b                                       ; $4180: $78
    nop                                           ; $4181: $00
    rst RST_38                                    ; $4182: $FF
    ld a, b                                       ; $4183: $78

jr_023_4184:
    db $FD                                        ; $4184: $FD
    adc a                                         ; $4185: $8F
    or a                                          ; $4186: $B7
    ld e, a                                       ; $4187: $5F
    rst RST_28                                    ; $4188: $EF
    ccf                                           ; $4189: $3F
    sbc a                                         ; $418A: $9F
    ldh [c], a                                    ; $418B: $E2
    rst RST_38                                    ; $418C: $FF
    inc c                                         ; $418D: $0C
    or a                                          ; $418E: $B7
    ld e, [hl]                                    ; $418F: $5E
    ld l, e                                       ; $4190: $6B
    cp a                                          ; $4191: $BF
    rst RST_10                                    ; $4192: $D7
    ld a, a                                       ; $4193: $7F
    ld a, a                                       ; $4194: $7F
    rst RST_38                                    ; $4195: $FF
    rst RST_38                                    ; $4196: $FF
    ld a, [hl]                                    ; $4197: $7E
    ld a, [hl]                                    ; $4198: $7E
    nop                                           ; $4199: $00
    nop                                           ; $419A: $00
    nop                                           ; $419B: $00
    nop                                           ; $419C: $00
    nop                                           ; $419D: $00
    nop                                           ; $419E: $00
    nop                                           ; $419F: $00
    rlca                                          ; $41A0: $07
    nop                                           ; $41A1: $00
    ld [$0F07], sp                                ; $41A2: $08 $07 $0F
    rlca                                          ; $41A5: $07
    rlca                                          ; $41A6: $07
    inc bc                                        ; $41A7: $03
    add e                                         ; $41A8: $83
    ld bc, $8061                                  ; $41A9: $01 $61 $80
    sbc c                                         ; $41AC: $99
    ldh [$FFC5], a                                ; $41AD: $E0 $C5
    ld hl, sp-$29                                 ; $41AF: $F8 $D7
    ld a, b                                       ; $41B1: $78
    cp a                                          ; $41B2: $BF
    ld sp, hl                                     ; $41B3: $F9
    rst RST_38                                    ; $41B4: $FF
    ld sp, hl                                     ; $41B5: $F9
    ld sp, hl                                     ; $41B6: $F9
    halt                                          ; $41B7: $76
    ld sp, hl                                     ; $41B8: $F9
    halt                                          ; $41B9: $76
    rst RST_38                                    ; $41BA: $FF
    ld [hl], b                                    ; $41BB: $70
    ld hl, sp+$00                                 ; $41BC: $F8 $00
    nop                                           ; $41BE: $00
    nop                                           ; $41BF: $00
    ret nz                                        ; $41C0: $C0

    nop                                           ; $41C1: $00
    jr nc, jr_023_4184                            ; $41C2: $30 $C0

    ret                                           ; $41C4: $C9


    ldh a, [$FFF5]                                ; $41C5: $F0 $F5

jr_023_41C7:
    ld hl, sp-$04                                 ; $41C7: $F8 $FC
    ld hl, sp-$02                                 ; $41C9: $F8 $FE
    db $FC                                        ; $41CB: $FC
    rst RST_38                                    ; $41CC: $FF
    ld hl, sp-$08                                 ; $41CD: $F8 $F8
    rst RST_30                                    ; $41CF: $F7
    ldh a, [$FF2F]                                ; $41D0: $F0 $2F
    ldh a, [$FFCF]                                ; $41D2: $F0 $CF
    ldh a, [$FFEF]                                ; $41D4: $F0 $EF
    rst RST_38                                    ; $41D6: $FF
    ldh [rIE], a                                  ; $41D7: $E0 $FF
    jp hl                                         ; $41D9: $E9


    rst RST_38                                    ; $41DA: $FF
    ldh [rIE], a                                  ; $41DB: $E0 $FF
    nop                                           ; $41DD: $00
    ccf                                           ; $41DE: $3F
    nop                                           ; $41DF: $00
    ldh a, [rP1]                                  ; $41E0: $F0 $00
    db $EC                                        ; $41E2: $EC
    ld [hl], b                                    ; $41E3: $70
    ld [hl], d                                    ; $41E4: $72
    inc e                                         ; $41E5: $1C
    ld [hl], c                                    ; $41E6: $71
    ld e, $6A                                     ; $41E7: $1E $6A
    ccf                                           ; $41E9: $3F
    ei                                            ; $41EA: $FB
    ld a, a                                       ; $41EB: $7F
    rst RST_38                                    ; $41EC: $FF
    rst RST_38                                    ; $41ED: $FF
    rst RST_38                                    ; $41EE: $FF
    rst RST_38                                    ; $41EF: $FF
    rst RST_38                                    ; $41F0: $FF
    ld a, a                                       ; $41F1: $7F
    ld a, a                                       ; $41F2: $7F
    ccf                                           ; $41F3: $3F
    ccf                                           ; $41F4: $3F
    jr @+$01                                      ; $41F5: $18 $FF

    rlca                                          ; $41F7: $07
    ld a, a                                       ; $41F8: $7F
    sbc [hl]                                      ; $41F9: $9E
    ld a, [hl]                                    ; $41FA: $7E
    cp l                                          ; $41FB: $BD
    db $FC                                        ; $41FC: $FC
    dec sp                                        ; $41FD: $3B
    db $FC                                        ; $41FE: $FC
    inc sp                                        ; $41FF: $33
    nop                                           ; $4200: $00
    nop                                           ; $4201: $00
    nop                                           ; $4202: $00
    nop                                           ; $4203: $00
    ld bc, $0600                                  ; $4204: $01 $00 $06
    ld bc, $079C                                  ; $4207: $01 $9C $07
    ld a, b                                       ; $420A: $78
    sbc a                                         ; $420B: $9F
    ld l, d                                       ; $420C: $6A
    cp a                                          ; $420D: $BF
    db $E3                                        ; $420E: $E3
    cp a                                          ; $420F: $BF
    bit 7, a                                      ; $4210: $CB $7F
    call $CF7F                                    ; $4212: $CD $7F $CF
    ld a, a                                       ; $4215: $7F
    rst RST_20                                    ; $4216: $E7
    ld a, a                                       ; $4217: $7F
    rst RST_38                                    ; $4218: $FF
    ld a, [hl]                                    ; $4219: $7E
    ld a, [hl]                                    ; $421A: $7E
    cp b                                          ; $421B: $B8
    inc a                                         ; $421C: $3C
    ret nz                                        ; $421D: $C0

    db $FC                                        ; $421E: $FC
    jr c, jr_023_4227                             ; $421F: $38 $06

    nop                                           ; $4221: $00
    ld c, $04                                     ; $4222: $0E $04
    ld d, $0C                                     ; $4224: $16 $0C
    inc l                                         ; $4226: $2C

jr_023_4227:
    jr jr_023_4295                                ; $4227: $18 $6C

    jr c, jr_023_41C7                             ; $4229: $38 $9C

    ld a, b                                       ; $422B: $78
    sbc b                                         ; $422C: $98
    ldh a, [$FF38]                                ; $422D: $F0 $38
    ldh a, [$FFB8]                                ; $422F: $F0 $B8
    ldh a, [$FFF0]                                ; $4231: $F0 $F0
    ldh [$FFF0], a                                ; $4233: $E0 $F0
    ldh [$FFE0], a                                ; $4235: $E0 $E0
    ret nz                                        ; $4237: $C0

    ldh [$FFC0], a                                ; $4238: $E0 $C0
    ret nz                                        ; $423A: $C0

    add b                                         ; $423B: $80

Jump_023_423C:
    ret nz                                        ; $423C: $C0

    add b                                         ; $423D: $80
    add b                                         ; $423E: $80
    nop                                           ; $423F: $00
    rrca                                          ; $4240: $0F
    nop                                           ; $4241: $00
    rlca                                          ; $4242: $07
    nop                                           ; $4243: $00
    rlca                                          ; $4244: $07
    nop                                           ; $4245: $00
    dec de                                        ; $4246: $1B
    inc b                                         ; $4247: $04
    inc sp                                        ; $4248: $33
    inc e                                         ; $4249: $1C
    scf                                           ; $424A: $37
    jr jr_023_42B4                                ; $424B: $18 $67

    jr c, jr_023_42BE                             ; $424D: $38 $6F

    jr nc, jr_023_42D0                            ; $424F: $30 $7F

    jr nc, jr_023_42D2                            ; $4251: $30 $7F

    jr nz, @+$01                                  ; $4253: $20 $FF

    ld bc, $00FF                                  ; $4255: $01 $FF $00
    ld a, a                                       ; $4258: $7F
    nop                                           ; $4259: $00
    ccf                                           ; $425A: $3F
    nop                                           ; $425B: $00
    rlca                                          ; $425C: $07
    nop                                           ; $425D: $00
    ld bc, $FF00                                  ; $425E: $01 $00 $FF
    adc b                                         ; $4261: $88
    rst RST_38                                    ; $4262: $FF
    nop                                           ; $4263: $00
    rst RST_38                                    ; $4264: $FF
    nop                                           ; $4265: $00
    rst RST_38                                    ; $4266: $FF
    nop                                           ; $4267: $00
    cp $00                                        ; $4268: $FE $00
    cp $00                                        ; $426A: $FE $00
    rst RST_38                                    ; $426C: $FF
    ld c, $E3                                     ; $426D: $0E $E3
    rra                                           ; $426F: $1F
    rst RST_00                                    ; $4270: $C7
    ccf                                           ; $4271: $3F
    adc a                                         ; $4272: $8F
    ld a, [hl]                                    ; $4273: $7E
    sbc a                                         ; $4274: $9F
    ld a, [hl]                                    ; $4275: $7E
    ld e, $FC                                     ; $4276: $1E $FC
    inc a                                         ; $4278: $3C
    ld hl, sp-$08                                 ; $4279: $F8 $F8
    nop                                           ; $427B: $00
    db $FC                                        ; $427C: $FC
    ld hl, sp-$02                                 ; $427D: $F8 $FE
    db $FC                                        ; $427F: $FC
    sbc [hl]                                      ; $4280: $9E
    inc c                                         ; $4281: $0C
    sbc [hl]                                      ; $4282: $9E
    inc c                                         ; $4283: $0C
    adc [hl]                                      ; $4284: $8E
    inc b                                         ; $4285: $04
    ld c, $04                                     ; $4286: $0E $04
    ld b, $00                                     ; $4288: $06 $00
    nop                                           ; $428A: $00
    nop                                           ; $428B: $00
    nop                                           ; $428C: $00
    nop                                           ; $428D: $00
    add b                                         ; $428E: $80
    nop                                           ; $428F: $00
    add b                                         ; $4290: $80
    nop                                           ; $4291: $00
    nop                                           ; $4292: $00
    nop                                           ; $4293: $00
    nop                                           ; $4294: $00

jr_023_4295:
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
    ld a, $FF                                     ; $42A1: $3E $FF
    rrca                                          ; $42A3: $0F
    rst RST_38                                    ; $42A4: $FF
    inc bc                                        ; $42A5: $03
    di                                            ; $42A6: $F3
    ld bc, $0173                                  ; $42A7: $01 $73 $01
    ld [hl], e                                    ; $42AA: $73
    ld bc, $0173                                  ; $42AB: $01 $73 $01
    push hl                                       ; $42AE: $E5
    ld [bc], a                                    ; $42AF: $02
    and l                                         ; $42B0: $A5
    ld [bc], a                                    ; $42B1: $02
    dec h                                         ; $42B2: $25
    ld [bc], a                                    ; $42B3: $02

jr_023_42B4:
    ld [bc], a                                    ; $42B4: $02
    nop                                           ; $42B5: $00
    nop                                           ; $42B6: $00
    nop                                           ; $42B7: $00
    nop                                           ; $42B8: $00
    nop                                           ; $42B9: $00
    nop                                           ; $42BA: $00
    nop                                           ; $42BB: $00
    nop                                           ; $42BC: $00
    nop                                           ; $42BD: $00

jr_023_42BE:
    nop                                           ; $42BE: $00
    nop                                           ; $42BF: $00
    nop                                           ; $42C0: $00
    nop                                           ; $42C1: $00
    ret nz                                        ; $42C2: $C0

    nop                                           ; $42C3: $00
    ldh [$FFC0], a                                ; $42C4: $E0 $C0
    ldh [$FFC0], a                                ; $42C6: $E0 $C0
    ldh [$FFC0], a                                ; $42C8: $E0 $C0
    ldh [$FFC0], a                                ; $42CA: $E0 $C0
    ret nz                                        ; $42CC: $C0

    nop                                           ; $42CD: $00
    ld b, b                                       ; $42CE: $40
    add b                                         ; $42CF: $80

jr_023_42D0:
    ld b, b                                       ; $42D0: $40
    add b                                         ; $42D1: $80

jr_023_42D2:
    add b                                         ; $42D2: $80
    nop                                           ; $42D3: $00
    nop                                           ; $42D4: $00
    nop                                           ; $42D5: $00
    nop                                           ; $42D6: $00
    nop                                           ; $42D7: $00
    nop                                           ; $42D8: $00
    nop                                           ; $42D9: $00
    nop                                           ; $42DA: $00
    nop                                           ; $42DB: $00
    nop                                           ; $42DC: $00
    nop                                           ; $42DD: $00
    nop                                           ; $42DE: $00
    nop                                           ; $42DF: $00
    nop                                           ; $42E0: $00
    nop                                           ; $42E1: $00
    inc bc                                        ; $42E2: $03
    nop                                           ; $42E3: $00
    dec a                                         ; $42E4: $3D
    inc bc                                        ; $42E5: $03
    ld b, e                                       ; $42E6: $43
    ld a, $B5                                     ; $42E7: $3E $B5
    ld l, a                                       ; $42E9: $6F
    adc d                                         ; $42EA: $8A
    ld a, a                                       ; $42EB: $7F
    rst RST_38                                    ; $42EC: $FF
    ld a, a                                       ; $42ED: $7F
    ld a, a                                       ; $42EE: $7F
    inc d                                         ; $42EF: $14
    ld d, l                                       ; $42F0: $55
    ld a, [hl+]                                   ; $42F1: $2A
    ccf                                           ; $42F2: $3F
    nop                                           ; $42F3: $00
    ld l, e                                       ; $42F4: $6B
    ccf                                           ; $42F5: $3F
    ccf                                           ; $42F6: $3F
    inc e                                         ; $42F7: $1C
    inc e                                         ; $42F8: $1C
    nop                                           ; $42F9: $00
    nop                                           ; $42FA: $00
    nop                                           ; $42FB: $00
    nop                                           ; $42FC: $00
    nop                                           ; $42FD: $00
    nop                                           ; $42FE: $00
    nop                                           ; $42FF: $00
    ld a, b                                       ; $4300: $78
    nop                                           ; $4301: $00
    rst RST_38                                    ; $4302: $FF
    ld a, b                                       ; $4303: $78
    db $FD                                        ; $4304: $FD
    adc a                                         ; $4305: $8F
    or a                                          ; $4306: $B7
    ld e, a                                       ; $4307: $5F
    rst RST_28                                    ; $4308: $EF
    ccf                                           ; $4309: $3F
    sbc a                                         ; $430A: $9F
    ldh [c], a                                    ; $430B: $E2
    rst RST_38                                    ; $430C: $FF
    inc c                                         ; $430D: $0C
    or a                                          ; $430E: $B7
    ld e, [hl]                                    ; $430F: $5E
    ld l, e                                       ; $4310: $6B
    cp a                                          ; $4311: $BF
    rst RST_10                                    ; $4312: $D7
    ld a, a                                       ; $4313: $7F
    ld a, a                                       ; $4314: $7F
    rst RST_38                                    ; $4315: $FF
    rst RST_38                                    ; $4316: $FF
    ld a, [hl]                                    ; $4317: $7E
    ld a, [hl]                                    ; $4318: $7E
    nop                                           ; $4319: $00
    nop                                           ; $431A: $00
    nop                                           ; $431B: $00
    nop                                           ; $431C: $00
    nop                                           ; $431D: $00
    nop                                           ; $431E: $00
    nop                                           ; $431F: $00
    nop                                           ; $4320: $00
    nop                                           ; $4321: $00
    add b                                         ; $4322: $80
    nop                                           ; $4323: $00
    ld b, b                                       ; $4324: $40
    add b                                         ; $4325: $80
    or b                                          ; $4326: $B0
    ret nz                                        ; $4327: $C0

    call z, $D2F0                                 ; $4328: $CC $F0 $D2
    ld a, h                                       ; $432B: $7C
    or e                                          ; $432C: $B3
    cp $F7                                        ; $432D: $FE $F7
    cp $FE                                        ; $432F: $FE $FE
    ld a, h                                       ; $4331: $7C
    rst RST_38                                    ; $4332: $FF
    ld a, h                                       ; $4333: $7C
    db $FC                                        ; $4334: $FC
    ld a, e                                       ; $4335: $7B
    db $FC                                        ; $4336: $FC
    dec sp                                        ; $4337: $3B
    ld a, $19                                     ; $4338: $3E $19
    rra                                           ; $433A: $1F
    nop                                           ; $433B: $00
    rrca                                          ; $433C: $0F
    nop                                           ; $433D: $00
    rrca                                          ; $433E: $0F
    inc b                                         ; $433F: $04
    ld c, $00                                     ; $4340: $0E $00
    add hl, de                                    ; $4342: $19
    ld c, $30                                     ; $4343: $0E $30
    rra                                           ; $4345: $1F
    ld a, d                                       ; $4346: $7A
    ccf                                           ; $4347: $3F
    halt                                          ; $4348: $76
    ccf                                           ; $4349: $3F
    rst RST_38                                    ; $434A: $FF
    ld l, a                                       ; $434B: $6F
    rst RST_38                                    ; $434C: $FF
    ld l, e                                       ; $434D: $6B
    rst RST_38                                    ; $434E: $FF
    ld l, e                                       ; $434F: $6B
    rst RST_38                                    ; $4350: $FF
    dec de                                        ; $4351: $1B
    rst RST_18                                    ; $4352: $DF
    daa                                           ; $4353: $27
    ld a, a                                       ; $4354: $7F
    adc a                                         ; $4355: $8F
    rst RST_38                                    ; $4356: $FF
    ld e, $FF                                     ; $4357: $1E $FF
    ld c, $FF                                     ; $4359: $0E $FF
    inc c                                         ; $435B: $0C
    rst RST_38                                    ; $435C: $FF
    inc b                                         ; $435D: $04
    rst RST_38                                    ; $435E: $FF
    ld bc, $0000                                  ; $435F: $01 $00 $00
    add b                                         ; $4362: $80
    nop                                           ; $4363: $00
    ld b, b                                       ; $4364: $40
    add b                                         ; $4365: $80
    or b                                          ; $4366: $B0
    ret nz                                        ; $4367: $C0

    ret z                                         ; $4368: $C8

    ldh a, [$FFD6]                                ; $4369: $F0 $D6

jr_023_436B:
    ld hl, sp-$07                                 ; $436B: $F8 $F9
    cp $FC                                        ; $436D: $FE $FC
    rst RST_38                                    ; $436F: $FF
    rst RST_38                                    ; $4370: $FF
    db $E3                                        ; $4371: $E3
    rst RST_38                                    ; $4372: $FF
    add b                                         ; $4373: $80
    rst RST_38                                    ; $4374: $FF
    nop                                           ; $4375: $00
    db $FC                                        ; $4376: $FC
    inc bc                                        ; $4377: $03
    cp $1D                                        ; $4378: $FE $1D
    db $E3                                        ; $437A: $E3
    ld a, [hl]                                    ; $437B: $7E
    add e                                         ; $437C: $83
    cp $0B                                        ; $437D: $FE $0B
    cp $80                                        ; $437F: $FE $80
    nop                                           ; $4381: $00
    ld b, b                                       ; $4382: $40
    add b                                         ; $4383: $80
    add sp, -$40                                  ; $4384: $E8 $C0
    db $F4                                        ; $4386: $F4
    ld c, b                                       ; $4387: $48
    ld [hl], e                                    ; $4388: $73
    adc h                                         ; $4389: $8C
    jr nz, jr_023_436B                            ; $438A: $20 $DF

    ld h, b                                       ; $438C: $60
    sbc a                                         ; $438D: $9F
    push hl                                       ; $438E: $E5
    ccf                                           ; $438F: $3F
    db $FD                                        ; $4390: $FD
    ccf                                           ; $4391: $3F
    db $FD                                        ; $4392: $FD
    ld a, a                                       ; $4393: $7F
    rst RST_38                                    ; $4394: $FF
    ccf                                           ; $4395: $3F
    ccf                                           ; $4396: $3F
    rlca                                          ; $4397: $07
    rlca                                          ; $4398: $07
    nop                                           ; $4399: $00
    nop                                           ; $439A: $00
    nop                                           ; $439B: $00
    nop                                           ; $439C: $00
    nop                                           ; $439D: $00
    nop                                           ; $439E: $00
    nop                                           ; $439F: $00
    ld b, $00                                     ; $43A0: $06 $00
    rlca                                          ; $43A2: $07
    ld [bc], a                                    ; $43A3: $02
    inc bc                                        ; $43A4: $03
    ld bc, $0103                                  ; $43A5: $01 $03 $01
    ld [bc], a                                    ; $43A8: $02
    ld bc, $030D                                  ; $43A9: $01 $0D $03
    ldh a, [rIF]                                  ; $43AC: $F0 $0F
    ld bc, $25FF                                  ; $43AE: $01 $FF $25
    rst RST_38                                    ; $43B1: $FF
    or a                                          ; $43B2: $B7
    rst RST_38                                    ; $43B3: $FF
    cp a                                          ; $43B4: $BF
    cp $FE                                        ; $43B5: $FE $FE
    ld hl, sp-$08                                 ; $43B7: $F8 $F8
    ret nz                                        ; $43B9: $C0

    ret nz                                        ; $43BA: $C0

    nop                                           ; $43BB: $00
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
    add b                                         ; $43D0: $80
    nop                                           ; $43D1: $00
    add b                                         ; $43D2: $80
    nop                                           ; $43D3: $00
    ret nz                                        ; $43D4: $C0

    add b                                         ; $43D5: $80
    ret nz                                        ; $43D6: $C0

    add b                                         ; $43D7: $80
    ret nz                                        ; $43D8: $C0

    add b                                         ; $43D9: $80
    ret nz                                        ; $43DA: $C0

    add b                                         ; $43DB: $80
    add b                                         ; $43DC: $80
    nop                                           ; $43DD: $00
    add b                                         ; $43DE: $80
    nop                                           ; $43DF: $00
    ld d, a                                       ; $43E0: $57
    cp $7E                                        ; $43E1: $FE $7E
    db $FC                                        ; $43E3: $FC
    cp $FC                                        ; $43E4: $FE $FC
    db $FC                                        ; $43E6: $FC
    ld hl, sp-$08                                 ; $43E7: $F8 $F8
    ldh a, [$FFFC]                                ; $43E9: $F0 $FC
    add sp, -$04                                  ; $43EB: $E8 $FC
    ld hl, sp-$02                                 ; $43ED: $F8 $FE
    inc a                                         ; $43EF: $3C
    rst RST_38                                    ; $43F0: $FF
    ld e, $9F                                     ; $43F1: $1E $9F
    ld b, $EF                                     ; $43F3: $06 $EF
    ld b, $EF                                     ; $43F5: $06 $EF
    ld b, $EF                                     ; $43F7: $06 $EF
    ld b, $CF                                     ; $43F9: $06 $CF
    nop                                           ; $43FB: $00
    push de                                       ; $43FC: $D5
    ld a, [bc]                                    ; $43FD: $0A
    sub $08                                       ; $43FE: $D6 $08
    cp $01                                        ; $4400: $FE $01
    cp $23                                        ; $4402: $FE $23
    cp $63                                        ; $4404: $FE $63
    cp $63                                        ; $4406: $FE $63
    rst RST_38                                    ; $4408: $FF
    ld h, e                                       ; $4409: $63
    rst RST_38                                    ; $440A: $FF
    ld [hl], c                                    ; $440B: $71
    ld a, a                                       ; $440C: $7F
    jr nc, jr_023_448E                            ; $440D: $30 $7F

    jr c, jr_023_4450                             ; $440F: $38 $3F

    inc e                                         ; $4411: $1C
    rra                                           ; $4412: $1F
    nop                                           ; $4413: $00
    rlca                                          ; $4414: $07
    nop                                           ; $4415: $00
    inc bc                                        ; $4416: $03
    nop                                           ; $4417: $00
    ld bc, $0100                                  ; $4418: $01 $00 $01
    nop                                           ; $441B: $00
    ld bc, $0100                                  ; $441C: $01 $00 $01
    nop                                           ; $441F: $00
    rra                                           ; $4420: $1F
    inc c                                         ; $4421: $0C
    rra                                           ; $4422: $1F
    inc c                                         ; $4423: $0C
    sbc a                                         ; $4424: $9F
    inc c                                         ; $4425: $0C
    rst RST_38                                    ; $4426: $FF
    adc h                                         ; $4427: $8C
    rst RST_38                                    ; $4428: $FF
    ld l, h                                       ; $4429: $6C
    ld a, a                                       ; $442A: $7F
    ld b, $0F                                     ; $442B: $06 $0F
    ld b, $07                                     ; $442D: $06 $07
    inc bc                                        ; $442F: $03
    inc bc                                        ; $4430: $03
    nop                                           ; $4431: $00
    nop                                           ; $4432: $00
    nop                                           ; $4433: $00
    nop                                           ; $4434: $00
    nop                                           ; $4435: $00
    nop                                           ; $4436: $00
    nop                                           ; $4437: $00
    nop                                           ; $4438: $00
    nop                                           ; $4439: $00
    nop                                           ; $443A: $00
    nop                                           ; $443B: $00
    nop                                           ; $443C: $00
    nop                                           ; $443D: $00
    nop                                           ; $443E: $00
    nop                                           ; $443F: $00
    nop                                           ; $4440: $00
    nop                                           ; $4441: $00
    rlca                                          ; $4442: $07
    nop                                           ; $4443: $00
    ld a, [bc]                                    ; $4444: $0A
    dec b                                         ; $4445: $05
    dec bc                                        ; $4446: $0B
    inc b                                         ; $4447: $04
    inc b                                         ; $4448: $04
    nop                                           ; $4449: $00
    nop                                           ; $444A: $00
    nop                                           ; $444B: $00
    nop                                           ; $444C: $00
    nop                                           ; $444D: $00
    nop                                           ; $444E: $00
    nop                                           ; $444F: $00

jr_023_4450:
    nop                                           ; $4450: $00
    nop                                           ; $4451: $00
    nop                                           ; $4452: $00
    nop                                           ; $4453: $00
    nop                                           ; $4454: $00
    nop                                           ; $4455: $00
    nop                                           ; $4456: $00
    nop                                           ; $4457: $00
    nop                                           ; $4458: $00
    nop                                           ; $4459: $00
    nop                                           ; $445A: $00
    nop                                           ; $445B: $00
    nop                                           ; $445C: $00
    nop                                           ; $445D: $00
    nop                                           ; $445E: $00
    nop                                           ; $445F: $00
    ld d, d                                       ; $4460: $52
    nop                                           ; $4461: $00
    stop                                          ; $4462: $10 $00
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
    adc [hl]                                      ; $4480: $8E
    ld a, l                                       ; $4481: $7D
    or a                                          ; $4482: $B7
    ld e, h                                       ; $4483: $5C
    ld a, l                                       ; $4484: $7D
    ld a, [de]                                    ; $4485: $1A
    ld a, [hl]                                    ; $4486: $7E
    ld hl, $193F                                  ; $4487: $21 $3F $19
    scf                                           ; $448A: $37
    ld e, $19                                     ; $448B: $1E $19
    rrca                                          ; $448D: $0F

jr_023_448E:
    jr jr_023_449F                                ; $448E: $18 $0F

    inc c                                         ; $4490: $0C
    rlca                                          ; $4491: $07
    inc c                                         ; $4492: $0C
    rlca                                          ; $4493: $07
    ld b, $03                                     ; $4494: $06 $03
    ld b, $03                                     ; $4496: $06 $03
    inc bc                                        ; $4498: $03
    ld bc, $0103                                  ; $4499: $01 $03 $01
    ld bc, $0100                                  ; $449C: $01 $00 $01

jr_023_449F:
    nop                                           ; $449F: $00
    ei                                            ; $44A0: $FB
    ld [hl], c                                    ; $44A1: $71
    di                                            ; $44A2: $F3
    pop bc                                        ; $44A3: $C1
    db $E3                                        ; $44A4: $E3
    pop bc                                        ; $44A5: $C1
    jp $C381                                      ; $44A6: $C3 $81 $C3


    add c                                         ; $44A9: $81
    add e                                         ; $44AA: $83
    ld bc, $81E3                                  ; $44AB: $01 $E3 $81
    ld a, e                                       ; $44AE: $7B
    pop hl                                        ; $44AF: $E1
    rra                                           ; $44B0: $1F
    ld sp, hl                                     ; $44B1: $F9
    rlca                                          ; $44B2: $07
    db $FD                                        ; $44B3: $FD
    inc bc                                        ; $44B4: $03
    rst RST_38                                    ; $44B5: $FF
    inc bc                                        ; $44B6: $03
    db $FC                                        ; $44B7: $FC
    dec b                                         ; $44B8: $05
    ld a, [$F50A]                                 ; $44B9: $FA $0A $F5
    adc a                                         ; $44BC: $8F
    ldh a, [$FF80]                                ; $44BD: $F0 $80
    rst RST_38                                    ; $44BF: $FF
    ld [hl], e                                    ; $44C0: $73
    call z, $AE71                                 ; $44C1: $CC $71 $AE
    sbc d                                         ; $44C4: $9A
    ld [hl], h                                    ; $44C5: $74
    adc [hl]                                      ; $44C6: $8E
    ld a, b                                       ; $44C7: $78
    add a                                         ; $44C8: $87
    ld a, h                                       ; $44C9: $7C
    ld b, e                                       ; $44CA: $43
    cp [hl]                                       ; $44CB: $BE
    ld hl, $22DF                                  ; $44CC: $21 $DF $22
    db $DD                                        ; $44CF: $DD
    inc h                                         ; $44D0: $24
    db $DB                                        ; $44D1: $DB
    ld b, h                                       ; $44D2: $44
    cp e                                          ; $44D3: $BB
    add h                                         ; $44D4: $84
    ld a, e                                       ; $44D5: $7B
    jp nz, Jump_000_223D                          ; $44D6: $C2 $3D $22

    db $DD                                        ; $44D9: $DD
    inc l                                         ; $44DA: $2C
    db $D3                                        ; $44DB: $D3
    ldh a, [rIF]                                  ; $44DC: $F0 $0F
    nop                                           ; $44DE: $00
    rst RST_38                                    ; $44DF: $FF
    add [hl]                                      ; $44E0: $86
    ld a, e                                       ; $44E1: $7B
    ld e, [hl]                                    ; $44E2: $5E
    dec h                                         ; $44E3: $25
    dec l                                         ; $44E4: $2D
    ld d, $38                                     ; $44E5: $16 $38
    rrca                                          ; $44E7: $0F
    jr c, jr_023_44F9                             ; $44E8: $38 $0F

    jr nc, jr_023_450B                            ; $44EA: $30 $1F

    or b                                          ; $44EC: $B0
    rra                                           ; $44ED: $1F
    ldh a, [$FFAF]                                ; $44EE: $F0 $AF
    ld c, h                                       ; $44F0: $4C
    di                                            ; $44F1: $F3
    ld [bc], a                                    ; $44F2: $02
    db $FD                                        ; $44F3: $FD
    ld bc, $01FE                                  ; $44F4: $01 $FE $01
    cp $01                                        ; $44F7: $FE $01

jr_023_44F9:
    cp $00                                        ; $44F9: $FE $00
    rst RST_38                                    ; $44FB: $FF
    nop                                           ; $44FC: $00
    rst RST_38                                    ; $44FD: $FF
    nop                                           ; $44FE: $00
    rst RST_38                                    ; $44FF: $FF

Call_023_4500:
    rst RST_30                                    ; $4500: $F7
    ld b, d                                       ; $4501: $42
    rst RST_20                                    ; $4502: $E7
    ld b, d                                       ; $4503: $42
    rst RST_28                                    ; $4504: $EF
    ld b, [hl]                                    ; $4505: $46
    rst RST_28                                    ; $4506: $EF
    ld b, [hl]                                    ; $4507: $46
    ld a, e                                       ; $4508: $7B
    adc $7B                                       ; $4509: $CE $7B

jr_023_450B:
    adc $73                                       ; $450B: $CE $73
    sbc $73                                       ; $450D: $DE $73
    sbc $63                                       ; $450F: $DE $63
    cp $63                                        ; $4511: $FE $63
    rst RST_18                                    ; $4513: $DF
    ld [de], a                                    ; $4514: $12
    rst RST_28                                    ; $4515: $EF
    ld [$2CF7], sp                                ; $4516: $08 $F7 $2C
    db $D3                                        ; $4519: $D3
    jp c, $8925                                   ; $451A: $DA $25 $89

    halt                                          ; $451D: $76
    ld a, a                                       ; $451E: $7F
    add b                                         ; $451F: $80
    db $EB                                        ; $4520: $EB
    ld a, $3B                                     ; $4521: $3E $3B
    dec b                                         ; $4523: $05
    ld b, $03                                     ; $4524: $06 $03
    inc c                                         ; $4526: $0C
    rlca                                          ; $4527: $07
    add hl, de                                    ; $4528: $19
    rrca                                          ; $4529: $0F
    ld sp, $631F                                  ; $452A: $31 $1F $63
    ld a, $C3                                     ; $452D: $3E $C3
    ld a, [hl]                                    ; $452F: $7E
    add [hl]                                      ; $4530: $86
    db $FC                                        ; $4531: $FC
    ld b, $FC                                     ; $4532: $06 $FC
    inc c                                         ; $4534: $0C
    ld hl, sp+$0C                                 ; $4535: $F8 $0C
    ld hl, sp+$18                                 ; $4537: $F8 $18
    ldh a, [rNR23]                                ; $4539: $F0 $18
    ldh a, [$FF30]                                ; $453B: $F0 $30
    ldh [$FF30], a                                ; $453D: $E0 $30
    ldh [rP1], a                                  ; $453F: $E0 $00
    nop                                           ; $4541: $00
    nop                                           ; $4542: $00
    nop                                           ; $4543: $00
    nop                                           ; $4544: $00
    nop                                           ; $4545: $00
    ld [bc], a                                    ; $4546: $02
    nop                                           ; $4547: $00
    inc b                                         ; $4548: $04
    nop                                           ; $4549: $00
    inc c                                         ; $454A: $0C
    nop                                           ; $454B: $00
    jr jr_023_454E                                ; $454C: $18 $00

jr_023_454E:
    jr c, jr_023_4560                             ; $454E: $38 $10

    ldh a, [rNR41]                                ; $4550: $F0 $20
    ldh a, [$FF60]                                ; $4552: $F0 $60
    ldh [$FFC0], a                                ; $4554: $E0 $C0
    ld [hl], b                                    ; $4556: $70
    ret nz                                        ; $4557: $C0

    ld hl, sp-$50                                 ; $4558: $F8 $B0
    db $FC                                        ; $455A: $FC
    sbc b                                         ; $455B: $98
    sbc h                                         ; $455C: $9C
    nop                                           ; $455D: $00
    add b                                         ; $455E: $80
    nop                                           ; $455F: $00

jr_023_4560:
    nop                                           ; $4560: $00
    nop                                           ; $4561: $00
    nop                                           ; $4562: $00
    nop                                           ; $4563: $00
    nop                                           ; $4564: $00
    nop                                           ; $4565: $00
    nop                                           ; $4566: $00
    nop                                           ; $4567: $00
    nop                                           ; $4568: $00
    nop                                           ; $4569: $00
    nop                                           ; $456A: $00
    nop                                           ; $456B: $00
    nop                                           ; $456C: $00
    nop                                           ; $456D: $00
    inc bc                                        ; $456E: $03
    nop                                           ; $456F: $00
    rrca                                          ; $4570: $0F
    inc bc                                        ; $4571: $03
    ld e, $0D                                     ; $4572: $1E $0D
    ld e, $09                                     ; $4574: $1E $09
    ld a, [hl+]                                   ; $4576: $2A
    dec d                                         ; $4577: $15
    ld a, $11                                     ; $4578: $3E $11
    dec a                                         ; $457A: $3D
    inc de                                        ; $457B: $13
    ld l, e                                       ; $457C: $6B
    ld a, $57                                     ; $457D: $3E $57
    ld a, $00                                     ; $457F: $3E $00
    nop                                           ; $4581: $00
    nop                                           ; $4582: $00
    nop                                           ; $4583: $00
    ld bc, $0100                                  ; $4584: $01 $00 $01
    nop                                           ; $4587: $00
    ld bc, $1B00                                  ; $4588: $01 $00 $1B
    nop                                           ; $458B: $00
    db $F4                                        ; $458C: $F4
    dec de                                        ; $458D: $1B
    xor [hl]                                      ; $458E: $AE
    db $FD                                        ; $458F: $FD
    rst RST_38                                    ; $4590: $FF
    cp [hl]                                       ; $4591: $BE
    rst RST_38                                    ; $4592: $FF
    sbc [hl]                                      ; $4593: $9E
    rst RST_38                                    ; $4594: $FF
    rst RST_00                                    ; $4595: $C7
    rst RST_38                                    ; $4596: $FF
    cp e                                          ; $4597: $BB
    rst RST_10                                    ; $4598: $D7
    inc a                                         ; $4599: $3C
    rst RST_28                                    ; $459A: $EF
    inc a                                         ; $459B: $3C
    ld d, a                                       ; $459C: $57
    cp l                                          ; $459D: $BD
    rst RST_18                                    ; $459E: $DF
    add hl, sp                                    ; $459F: $39
    rlca                                          ; $45A0: $07
    inc bc                                        ; $45A1: $03
    rst RST_38                                    ; $45A2: $FF
    nop                                           ; $45A3: $00
    rrca                                          ; $45A4: $0F
    pop af                                        ; $45A5: $F1
    rst RST_38                                    ; $45A6: $FF
    ret nz                                        ; $45A7: $C0

    push af                                       ; $45A8: $F5
    xor d                                         ; $45A9: $AA
    rst RST_38                                    ; $45AA: $FF
    or c                                          ; $45AB: $B1
    rst RST_18                                    ; $45AC: $DF
    scf                                           ; $45AD: $37
    ld d, a                                       ; $45AE: $57
    xor c                                         ; $45AF: $A9
    ld [hl], a                                    ; $45B0: $77
    adc l                                         ; $45B1: $8D
    sub a                                         ; $45B2: $97
    inc c                                         ; $45B3: $0C
    sub a                                         ; $45B4: $97
    dec c                                         ; $45B5: $0D
    adc a                                         ; $45B6: $8F
    nop                                           ; $45B7: $00
    dec e                                         ; $45B8: $1D
    rrca                                          ; $45B9: $0F
    dec e                                         ; $45BA: $1D
    inc bc                                        ; $45BB: $03
    and l                                         ; $45BC: $A5
    dec de                                        ; $45BD: $1B
    rst RST_20                                    ; $45BE: $E7
    sbc e                                         ; $45BF: $9B
    push hl                                       ; $45C0: $E5
    dec sp                                        ; $45C1: $3B
    rst RST_00                                    ; $45C2: $C7
    ld a, b                                       ; $45C3: $78
    call c, $FD63                                 ; $45C4: $DC $63 $FD
    dec de                                        ; $45C7: $1B
    rst RST_38                                    ; $45C8: $FF
    ei                                            ; $45C9: $FB
    rst RST_38                                    ; $45CA: $FF
    ei                                            ; $45CB: $FB
    ld e, a                                       ; $45CC: $5F
    xor e                                         ; $45CD: $AB
    ld e, a                                       ; $45CE: $5F
    xor h                                         ; $45CF: $AC
    rst RST_38                                    ; $45D0: $FF
    ld sp, hl                                     ; $45D1: $F9
    ld sp, hl                                     ; $45D2: $F9
    nop                                           ; $45D3: $00
    pop af                                        ; $45D4: $F1
    ldh [$FFF1], a                                ; $45D5: $E0 $F1
    nop                                           ; $45D7: $00
    ld sp, hl                                     ; $45D8: $F9
    ldh a, [$FFFB]                                ; $45D9: $F0 $FB
    add c                                         ; $45DB: $81
    adc e                                         ; $45DC: $8B
    ld [hl], c                                    ; $45DD: $71
    add [hl]                                      ; $45DE: $86
    ld a, e                                       ; $45DF: $7B
    db $FC                                        ; $45E0: $FC
    ld hl, sp-$02                                 ; $45E1: $F8 $FE
    inc c                                         ; $45E3: $0C
    ld c, $F4                                     ; $45E4: $0E $F4
    cp $F4                                        ; $45E6: $FE $F4
    cp $F4                                        ; $45E8: $FE $F4
    cp $E4                                        ; $45EA: $FE $E4
    rst RST_20                                    ; $45EC: $E7
    ret c                                         ; $45ED: $D8

    db $E3                                        ; $45EE: $E3
    inc e                                         ; $45EF: $1C
    rst RST_20                                    ; $45F0: $E7
    sbc e                                         ; $45F1: $9B
    rst RST_38                                    ; $45F2: $FF
    ld b, a                                       ; $45F3: $47
    db $FC                                        ; $45F4: $FC
    ld d, a                                       ; $45F5: $57
    db $FC                                        ; $45F6: $FC
    rst RST_10                                    ; $45F7: $D7
    ld sp, hl                                     ; $45F8: $F9
    rst RST_10                                    ; $45F9: $D7
    rst RST_38                                    ; $45FA: $FF
    ld d, [hl]                                    ; $45FB: $56
    rst RST_38                                    ; $45FC: $FF
    ld d, b                                       ; $45FD: $50
    di                                            ; $45FE: $F3
    ld b, b                                       ; $45FF: $40
    nop                                           ; $4600: $00
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
    nop                                           ; $460C: $00
    nop                                           ; $460D: $00
    ret nz                                        ; $460E: $C0

    nop                                           ; $460F: $00
    ldh a, [$FFC0]                                ; $4610: $F0 $C0
    ld a, b                                       ; $4612: $78
    ldh a, [$FFD8]                                ; $4613: $F0 $D8
    ldh a, [$FF3C]                                ; $4615: $F0 $3C
    ld hl, sp+$36                                 ; $4617: $F8 $36
    db $FC                                        ; $4619: $FC
    ld l, a                                       ; $461A: $6F
    cp $4B                                        ; $461B: $FE $4B
    rst RST_38                                    ; $461D: $FF
    daa                                           ; $461E: $27
    rst RST_38                                    ; $461F: $FF
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
    nop                                           ; $4630: $00
    nop                                           ; $4631: $00
    nop                                           ; $4632: $00
    nop                                           ; $4633: $00
    nop                                           ; $4634: $00
    nop                                           ; $4635: $00
    ld a, [hl]                                    ; $4636: $7E
    nop                                           ; $4637: $00
    pop hl                                        ; $4638: $E1
    ld e, $E6                                     ; $4639: $1E $E6
    ld e, c                                       ; $463B: $59
    ld [$F255], a                                 ; $463C: $EA $55 $F2
    dec c                                         ; $463F: $0D
    nop                                           ; $4640: $00
    nop                                           ; $4641: $00
    nop                                           ; $4642: $00
    nop                                           ; $4643: $00
    nop                                           ; $4644: $00
    nop                                           ; $4645: $00
    nop                                           ; $4646: $00
    nop                                           ; $4647: $00
    nop                                           ; $4648: $00
    nop                                           ; $4649: $00
    nop                                           ; $464A: $00
    nop                                           ; $464B: $00
    nop                                           ; $464C: $00
    nop                                           ; $464D: $00
    nop                                           ; $464E: $00
    nop                                           ; $464F: $00
    nop                                           ; $4650: $00
    nop                                           ; $4651: $00
    nop                                           ; $4652: $00
    nop                                           ; $4653: $00
    nop                                           ; $4654: $00
    nop                                           ; $4655: $00
    jr jr_023_4658                                ; $4656: $18 $00

jr_023_4658:
    ld l, $18                                     ; $4658: $2E $18
    xor a                                         ; $465A: $AF
    ld e, $AF                                     ; $465B: $1E $AF
    rra                                           ; $465D: $1F
    ld e, a                                       ; $465E: $5F
    cp a                                          ; $465F: $BF
    nop                                           ; $4660: $00
    nop                                           ; $4661: $00
    nop                                           ; $4662: $00
    nop                                           ; $4663: $00
    nop                                           ; $4664: $00
    nop                                           ; $4665: $00
    nop                                           ; $4666: $00
    nop                                           ; $4667: $00
    nop                                           ; $4668: $00
    nop                                           ; $4669: $00
    nop                                           ; $466A: $00
    nop                                           ; $466B: $00
    nop                                           ; $466C: $00
    nop                                           ; $466D: $00
    nop                                           ; $466E: $00
    nop                                           ; $466F: $00
    nop                                           ; $4670: $00
    nop                                           ; $4671: $00
    nop                                           ; $4672: $00
    nop                                           ; $4673: $00
    nop                                           ; $4674: $00
    nop                                           ; $4675: $00
    nop                                           ; $4676: $00
    nop                                           ; $4677: $00
    nop                                           ; $4678: $00
    nop                                           ; $4679: $00
    nop                                           ; $467A: $00
    nop                                           ; $467B: $00
    add b                                         ; $467C: $80
    nop                                           ; $467D: $00
    ret nz                                        ; $467E: $C0

    add b                                         ; $467F: $80
    nop                                           ; $4680: $00
    nop                                           ; $4681: $00
    inc bc                                        ; $4682: $03
    nop                                           ; $4683: $00
    rrca                                          ; $4684: $0F
    inc bc                                        ; $4685: $03
    ld e, $0D                                     ; $4686: $1E $0D
    ld e, $09                                     ; $4688: $1E $09
    ld a, [hl+]                                   ; $468A: $2A
    dec d                                         ; $468B: $15
    ld a, $11                                     ; $468C: $3E $11
    dec a                                         ; $468E: $3D
    inc de                                        ; $468F: $13
    ld l, e                                       ; $4690: $6B
    ld a, $57                                     ; $4691: $3E $57
    ld a, $8E                                     ; $4693: $3E $8E
    ld a, l                                       ; $4695: $7D
    or a                                          ; $4696: $B7
    ld e, h                                       ; $4697: $5C
    ld e, l                                       ; $4698: $5D
    ld a, [hl-]                                   ; $4699: $3A
    ld a, [hl]                                    ; $469A: $7E
    ld sp, $033F                                  ; $469B: $31 $3F $03
    inc bc                                        ; $469E: $03
    nop                                           ; $469F: $00
    ld hl, sp+$70                                 ; $46A0: $F8 $70
    ldh a, [$FFC0]                                ; $46A2: $F0 $C0
    ldh [$FFC0], a                                ; $46A4: $E0 $C0
    ret nz                                        ; $46A6: $C0

    add b                                         ; $46A7: $80
    ret nz                                        ; $46A8: $C0

    add b                                         ; $46A9: $80
    add b                                         ; $46AA: $80
    nop                                           ; $46AB: $00
    nop                                           ; $46AC: $00
    nop                                           ; $46AD: $00
    nop                                           ; $46AE: $00
    nop                                           ; $46AF: $00
    nop                                           ; $46B0: $00
    nop                                           ; $46B1: $00
    nop                                           ; $46B2: $00
    nop                                           ; $46B3: $00
    nop                                           ; $46B4: $00
    nop                                           ; $46B5: $00
    inc bc                                        ; $46B6: $03
    nop                                           ; $46B7: $00
    dec b                                         ; $46B8: $05
    ld [bc], a                                    ; $46B9: $02
    ld a, [bc]                                    ; $46BA: $0A
    dec b                                         ; $46BB: $05
    rrca                                          ; $46BC: $0F
    nop                                           ; $46BD: $00
    nop                                           ; $46BE: $00
    nop                                           ; $46BF: $00
    inc de                                        ; $46C0: $13
    inc c                                         ; $46C1: $0C
    ld [hl], c                                    ; $46C2: $71
    ld c, $BA                                     ; $46C3: $0E $BA
    ld [hl], h                                    ; $46C5: $74
    sbc [hl]                                      ; $46C6: $9E
    ld a, b                                       ; $46C7: $78
    sbc a                                         ; $46C8: $9F
    ld a, [hl]                                    ; $46C9: $7E
    ld e, a                                       ; $46CA: $5F
    ld a, $2F                                     ; $46CB: $3E $2F
    ld e, $2E                                     ; $46CD: $1E $2E
    inc e                                         ; $46CF: $1C
    inc l                                         ; $46D0: $2C

jr_023_46D1:
    jr jr_023_472F                                ; $46D1: $18 $5C

    jr c, jr_023_46D1                             ; $46D3: $38 $FC

    ld a, b                                       ; $46D5: $78
    cp $3C                                        ; $46D6: $FE $3C
    ld a, $DC                                     ; $46D8: $3E $DC
    inc a                                         ; $46DA: $3C
    ret nc                                        ; $46DB: $D0

    ldh a, [rP1]                                  ; $46DC: $F0 $00
    nop                                           ; $46DE: $00
    nop                                           ; $46DF: $00
    add h                                         ; $46E0: $84
    ld a, b                                       ; $46E1: $78
    ld e, [hl]                                    ; $46E2: $5E
    jr nz, jr_023_4714                            ; $46E3: $20 $2F

    ld e, $27                                     ; $46E5: $1E $27
    rra                                           ; $46E7: $1F
    daa                                           ; $46E8: $27
    rra                                           ; $46E9: $1F
    inc hl                                        ; $46EA: $23
    rra                                           ; $46EB: $1F
    inc hl                                        ; $46EC: $23
    rra                                           ; $46ED: $1F
    ld de, $0F0F                                  ; $46EE: $11 $0F $0F
    inc bc                                        ; $46F1: $03
    ld [bc], a                                    ; $46F2: $02
    ld bc, $0001                                  ; $46F3: $01 $01 $00
    ld bc, $0100                                  ; $46F6: $01 $00 $01
    nop                                           ; $46F9: $00
    nop                                           ; $46FA: $00
    nop                                           ; $46FB: $00
    nop                                           ; $46FC: $00
    nop                                           ; $46FD: $00
    nop                                           ; $46FE: $00
    nop                                           ; $46FF: $00
    ldh a, [$FF60]                                ; $4700: $F0 $60
    ldh [rLCDC], a                                ; $4702: $E0 $40
    ret nz                                        ; $4704: $C0

    nop                                           ; $4705: $00
    add b                                         ; $4706: $80
    nop                                           ; $4707: $00
    ret nz                                        ; $4708: $C0

    add b                                         ; $4709: $80
    ret nz                                        ; $470A: $C0

    add b                                         ; $470B: $80
    ret nz                                        ; $470C: $C0

    add b                                         ; $470D: $80
    ret nz                                        ; $470E: $C0

    add b                                         ; $470F: $80
    ldh [$FFC0], a                                ; $4710: $E0 $C0
    ldh [$FFC0], a                                ; $4712: $E0 $C0

jr_023_4714:
    ldh a, [$FFE0]                                ; $4714: $F0 $E0
    ld hl, sp-$10                                 ; $4716: $F8 $F0
    db $FC                                        ; $4718: $FC
    ret nc                                        ; $4719: $D0

    jp c, $8924                                   ; $471A: $DA $24 $89

    halt                                          ; $471D: $76
    ld a, a                                       ; $471E: $7F
    nop                                           ; $471F: $00
    nop                                           ; $4720: $00
    nop                                           ; $4721: $00
    nop                                           ; $4722: $00
    nop                                           ; $4723: $00
    ld bc, $0100                                  ; $4724: $01 $00 $01
    nop                                           ; $4727: $00
    ld bc, $1B00                                  ; $4728: $01 $00 $1B
    nop                                           ; $472B: $00
    db $F4                                        ; $472C: $F4
    dec de                                        ; $472D: $1B
    xor [hl]                                      ; $472E: $AE

jr_023_472F:
    db $FD                                        ; $472F: $FD
    rst RST_38                                    ; $4730: $FF
    cp [hl]                                       ; $4731: $BE
    rst RST_38                                    ; $4732: $FF
    sbc [hl]                                      ; $4733: $9E
    rst RST_38                                    ; $4734: $FF
    rst RST_00                                    ; $4735: $C7
    rst RST_38                                    ; $4736: $FF
    cp e                                          ; $4737: $BB
    rst RST_10                                    ; $4738: $D7
    inc a                                         ; $4739: $3C
    xor $3C                                       ; $473A: $EE $3C
    ld d, [hl]                                    ; $473C: $56
    cp h                                          ; $473D: $BC
    call c, $0738                                 ; $473E: $DC $38 $07
    inc bc                                        ; $4741: $03
    rst RST_38                                    ; $4742: $FF
    nop                                           ; $4743: $00
    rrca                                          ; $4744: $0F
    pop af                                        ; $4745: $F1
    rst RST_38                                    ; $4746: $FF
    ret nz                                        ; $4747: $C0

    push af                                       ; $4748: $F5
    xor d                                         ; $4749: $AA
    rst RST_38                                    ; $474A: $FF
    or c                                          ; $474B: $B1
    rst RST_18                                    ; $474C: $DF
    scf                                           ; $474D: $37
    ld d, a                                       ; $474E: $57
    xor c                                         ; $474F: $A9
    ld [hl], a                                    ; $4750: $77
    adc l                                         ; $4751: $8D
    sub a                                         ; $4752: $97
    inc c                                         ; $4753: $0C
    sub a                                         ; $4754: $97
    dec c                                         ; $4755: $0D
    adc a                                         ; $4756: $8F
    nop                                           ; $4757: $00
    dec e                                         ; $4758: $1D
    rrca                                          ; $4759: $0F
    dec e                                         ; $475A: $1D
    inc bc                                        ; $475B: $03
    dec h                                         ; $475C: $25
    dec de                                        ; $475D: $1B
    daa                                           ; $475E: $27
    dec de                                        ; $475F: $1B
    push hl                                       ; $4760: $E5
    dec sp                                        ; $4761: $3B
    rst RST_00                                    ; $4762: $C7
    ld a, b                                       ; $4763: $78
    call c, $FD63                                 ; $4764: $DC $63 $FD
    dec de                                        ; $4767: $1B
    rst RST_38                                    ; $4768: $FF
    ei                                            ; $4769: $FB
    rst RST_38                                    ; $476A: $FF
    ei                                            ; $476B: $FB
    ld e, a                                       ; $476C: $5F
    xor e                                         ; $476D: $AB
    ld e, a                                       ; $476E: $5F
    xor h                                         ; $476F: $AC
    rst RST_38                                    ; $4770: $FF
    ld sp, hl                                     ; $4771: $F9
    ld sp, hl                                     ; $4772: $F9
    nop                                           ; $4773: $00
    pop af                                        ; $4774: $F1
    ldh [$FFF0], a                                ; $4775: $E0 $F0
    nop                                           ; $4777: $00
    ld hl, sp-$10                                 ; $4778: $F8 $F0
    ld hl, sp-$80                                 ; $477A: $F8 $80
    adc b                                         ; $477C: $88
    ld [hl], b                                    ; $477D: $70
    add h                                         ; $477E: $84
    ld a, b                                       ; $477F: $78
    db $FC                                        ; $4780: $FC
    ld hl, sp-$02                                 ; $4781: $F8 $FE
    inc c                                         ; $4783: $0C
    ld c, $F4                                     ; $4784: $0E $F4
    cp $F4                                        ; $4786: $FE $F4
    cp $F4                                        ; $4788: $FE $F4
    cp $E4                                        ; $478A: $FE $E4
    rst RST_20                                    ; $478C: $E7
    ret c                                         ; $478D: $D8

    jp $E73C                                      ; $478E: $C3 $3C $E7


    db $DB                                        ; $4791: $DB
    rst RST_38                                    ; $4792: $FF
    rst RST_20                                    ; $4793: $E7
    db $FC                                        ; $4794: $FC
    rst RST_30                                    ; $4795: $F7
    db $FC                                        ; $4796: $FC
    ld [hl], a                                    ; $4797: $77
    ld sp, hl                                     ; $4798: $F9
    ld [hl], a                                    ; $4799: $77
    cp $77                                        ; $479A: $FE $77
    cp $73                                        ; $479C: $FE $73
    di                                            ; $479E: $F3
    ld h, b                                       ; $479F: $60
    ret nz                                        ; $47A0: $C0

    nop                                           ; $47A1: $00
    ldh a, [$FFC0]                                ; $47A2: $F0 $C0
    ld a, b                                       ; $47A4: $78
    ldh a, [$FFD8]                                ; $47A5: $F0 $D8
    ldh a, [$FF3C]                                ; $47A7: $F0 $3C
    ld hl, sp+$36                                 ; $47A9: $F8 $36
    db $FC                                        ; $47AB: $FC
    ld l, a                                       ; $47AC: $6F
    cp $4B                                        ; $47AD: $FE $4B
    rst RST_38                                    ; $47AF: $FF
    daa                                           ; $47B0: $27
    rst RST_38                                    ; $47B1: $FF
    ld [$393F], a                                 ; $47B2: $EA $3F $39
    rlca                                          ; $47B5: $07
    rlca                                          ; $47B6: $07
    nop                                           ; $47B7: $00
    nop                                           ; $47B8: $00
    nop                                           ; $47B9: $00
    nop                                           ; $47BA: $00
    nop                                           ; $47BB: $00
    nop                                           ; $47BC: $00
    nop                                           ; $47BD: $00
    nop                                           ; $47BE: $00
    nop                                           ; $47BF: $00
    nop                                           ; $47C0: $00
    nop                                           ; $47C1: $00
    nop                                           ; $47C2: $00
    nop                                           ; $47C3: $00
    nop                                           ; $47C4: $00
    nop                                           ; $47C5: $00
    nop                                           ; $47C6: $00
    nop                                           ; $47C7: $00
    nop                                           ; $47C8: $00
    nop                                           ; $47C9: $00
    nop                                           ; $47CA: $00
    nop                                           ; $47CB: $00
    nop                                           ; $47CC: $00
    nop                                           ; $47CD: $00
    nop                                           ; $47CE: $00
    nop                                           ; $47CF: $00
    nop                                           ; $47D0: $00
    nop                                           ; $47D1: $00
    add b                                         ; $47D2: $80
    nop                                           ; $47D3: $00
    ret nz                                        ; $47D4: $C0

    add b                                         ; $47D5: $80
    ldh [$FFC0], a                                ; $47D6: $E0 $C0
    ldh a, [$FFE0]                                ; $47D8: $F0 $E0
    cp b                                          ; $47DA: $B8
    ldh a, [$FFFC]                                ; $47DB: $F0 $FC
    jr jr_023_47FB                                ; $47DD: $18 $1C

    nop                                           ; $47DF: $00
    nop                                           ; $47E0: $00
    nop                                           ; $47E1: $00
    nop                                           ; $47E2: $00
    nop                                           ; $47E3: $00
    nop                                           ; $47E4: $00
    nop                                           ; $47E5: $00
    nop                                           ; $47E6: $00
    nop                                           ; $47E7: $00
    nop                                           ; $47E8: $00
    nop                                           ; $47E9: $00
    nop                                           ; $47EA: $00
    nop                                           ; $47EB: $00
    nop                                           ; $47EC: $00
    nop                                           ; $47ED: $00
    nop                                           ; $47EE: $00
    nop                                           ; $47EF: $00
    nop                                           ; $47F0: $00
    nop                                           ; $47F1: $00
    nop                                           ; $47F2: $00
    nop                                           ; $47F3: $00
    nop                                           ; $47F4: $00
    nop                                           ; $47F5: $00
    ld a, [hl]                                    ; $47F6: $7E
    nop                                           ; $47F7: $00
    pop hl                                        ; $47F8: $E1
    ld e, $E6                                     ; $47F9: $1E $E6

jr_023_47FB:
    ld e, c                                       ; $47FB: $59
    ld [$F255], a                                 ; $47FC: $EA $55 $F2
    dec c                                         ; $47FF: $0D
    nop                                           ; $4800: $00
    nop                                           ; $4801: $00
    nop                                           ; $4802: $00
    nop                                           ; $4803: $00
    nop                                           ; $4804: $00
    nop                                           ; $4805: $00
    nop                                           ; $4806: $00
    nop                                           ; $4807: $00
    nop                                           ; $4808: $00
    nop                                           ; $4809: $00
    nop                                           ; $480A: $00
    nop                                           ; $480B: $00
    nop                                           ; $480C: $00
    nop                                           ; $480D: $00
    nop                                           ; $480E: $00
    nop                                           ; $480F: $00
    nop                                           ; $4810: $00
    nop                                           ; $4811: $00
    nop                                           ; $4812: $00
    nop                                           ; $4813: $00
    nop                                           ; $4814: $00
    nop                                           ; $4815: $00
    jr jr_023_4818                                ; $4816: $18 $00

jr_023_4818:
    ld l, $18                                     ; $4818: $2E $18
    xor a                                         ; $481A: $AF
    ld e, $AF                                     ; $481B: $1E $AF
    rra                                           ; $481D: $1F
    ld e, a                                       ; $481E: $5F
    cp a                                          ; $481F: $BF
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
    nop                                           ; $482F: $00
    nop                                           ; $4830: $00
    nop                                           ; $4831: $00
    nop                                           ; $4832: $00
    nop                                           ; $4833: $00
    nop                                           ; $4834: $00
    nop                                           ; $4835: $00
    nop                                           ; $4836: $00
    nop                                           ; $4837: $00
    nop                                           ; $4838: $00
    nop                                           ; $4839: $00
    nop                                           ; $483A: $00
    nop                                           ; $483B: $00
    add b                                         ; $483C: $80
    nop                                           ; $483D: $00
    ret nz                                        ; $483E: $C0

    add b                                         ; $483F: $80
    nop                                           ; $4840: $00
    nop                                           ; $4841: $00
    add b                                         ; $4842: $80
    nop                                           ; $4843: $00
    ret nz                                        ; $4844: $C0

    add b                                         ; $4845: $80
    ld hl, sp-$80                                 ; $4846: $F8 $80
    ld a, e                                       ; $4848: $7B
    ldh a, [$FFCE]                                ; $4849: $F0 $CE
    or c                                          ; $484B: $B1
    bit 6, l                                      ; $484C: $CB $75
    db $EB                                        ; $484E: $EB
    ld [hl], l                                    ; $484F: $75
    ld sp, hl                                     ; $4850: $F9
    or [hl]                                       ; $4851: $B6
    rst RST_38                                    ; $4852: $FF
    or b                                          ; $4853: $B0
    ld hl, sp-$50                                 ; $4854: $F8 $B0
    ld hl, sp-$50                                 ; $4856: $F8 $B0
    ld hl, sp+$00                                 ; $4858: $F8 $00
    nop                                           ; $485A: $00
    nop                                           ; $485B: $00
    nop                                           ; $485C: $00
    nop                                           ; $485D: $00
    nop                                           ; $485E: $00
    nop                                           ; $485F: $00
    add b                                         ; $4860: $80
    nop                                           ; $4861: $00
    ld h, b                                       ; $4862: $60
    add b                                         ; $4863: $80
    cp h                                          ; $4864: $BC
    ldh [$FF9F], a                                ; $4865: $E0 $9F
    db $FC                                        ; $4867: $FC
    cp a                                          ; $4868: $BF
    db $E3                                        ; $4869: $E3
    ei                                            ; $486A: $FB
    ld h, h                                       ; $486B: $64
    ld l, a                                       ; $486C: $6F
    or c                                          ; $486D: $B1
    rst RST_30                                    ; $486E: $F7
    rra                                           ; $486F: $1F
    ld e, b                                       ; $4870: $58
    cpl                                           ; $4871: $2F
    ccf                                           ; $4872: $3F
    nop                                           ; $4873: $00
    rrca                                          ; $4874: $0F
    ld b, $19                                     ; $4875: $06 $19
    rrca                                          ; $4877: $0F
    inc de                                        ; $4878: $13
    rrca                                          ; $4879: $0F
    ld [hl], a                                    ; $487A: $77
    rrca                                          ; $487B: $0F
    cp a                                          ; $487C: $BF
    ld e, a                                       ; $487D: $5F
    ld a, a                                       ; $487E: $7F
    cp a                                          ; $487F: $BF
    cp a                                          ; $4880: $BF
    ld [hl], b                                    ; $4881: $70
    ld [hl], b                                    ; $4882: $70
    ret nz                                        ; $4883: $C0

    ret nz                                        ; $4884: $C0

    add b                                         ; $4885: $80
    add b                                         ; $4886: $80
    nop                                           ; $4887: $00
    nop                                           ; $4888: $00
    nop                                           ; $4889: $00
    nop                                           ; $488A: $00
    nop                                           ; $488B: $00
    nop                                           ; $488C: $00
    nop                                           ; $488D: $00
    nop                                           ; $488E: $00
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
    nop                                           ; $48A0: $00
    nop                                           ; $48A1: $00
    nop                                           ; $48A2: $00
    nop                                           ; $48A3: $00
    nop                                           ; $48A4: $00
    nop                                           ; $48A5: $00
    nop                                           ; $48A6: $00
    nop                                           ; $48A7: $00
    nop                                           ; $48A8: $00
    nop                                           ; $48A9: $00
    nop                                           ; $48AA: $00
    nop                                           ; $48AB: $00
    nop                                           ; $48AC: $00
    nop                                           ; $48AD: $00
    rlca                                          ; $48AE: $07
    nop                                           ; $48AF: $00
    rrca                                          ; $48B0: $0F
    rlca                                          ; $48B1: $07
    ld [$1A07], sp                                ; $48B2: $08 $07 $1A
    dec c                                         ; $48B5: $0D
    rra                                           ; $48B6: $1F
    rlca                                          ; $48B7: $07
    rla                                           ; $48B8: $17
    add hl, bc                                    ; $48B9: $09
    dec e                                         ; $48BA: $1D
    ld [bc], a                                    ; $48BB: $02
    dec b                                         ; $48BC: $05
    ld [bc], a                                    ; $48BD: $02
    ld [bc], a                                    ; $48BE: $02
    nop                                           ; $48BF: $00
    inc bc                                        ; $48C0: $03
    nop                                           ; $48C1: $00
    dec b                                         ; $48C2: $05
    ld [bc], a                                    ; $48C3: $02
    rlca                                          ; $48C4: $07
    ld bc, $0307                                  ; $48C5: $01 $07 $03
    inc bc                                        ; $48C8: $03
    nop                                           ; $48C9: $00
    nop                                           ; $48CA: $00
    nop                                           ; $48CB: $00
    nop                                           ; $48CC: $00
    nop                                           ; $48CD: $00
    nop                                           ; $48CE: $00
    nop                                           ; $48CF: $00
    nop                                           ; $48D0: $00
    nop                                           ; $48D1: $00
    nop                                           ; $48D2: $00
    nop                                           ; $48D3: $00
    nop                                           ; $48D4: $00
    nop                                           ; $48D5: $00
    nop                                           ; $48D6: $00
    nop                                           ; $48D7: $00
    nop                                           ; $48D8: $00
    nop                                           ; $48D9: $00
    nop                                           ; $48DA: $00
    nop                                           ; $48DB: $00
    nop                                           ; $48DC: $00
    nop                                           ; $48DD: $00
    nop                                           ; $48DE: $00
    nop                                           ; $48DF: $00
    jr c, @+$12                                   ; $48E0: $38 $10

    jr c, @+$12                                   ; $48E2: $38 $10

    jr jr_023_48E6                                ; $48E4: $18 $00

jr_023_48E6:
    add b                                         ; $48E6: $80
    nop                                           ; $48E7: $00
    ret nz                                        ; $48E8: $C0

    add b                                         ; $48E9: $80
    ldh [$FFC0], a                                ; $48EA: $E0 $C0
    ldh a, [$FFE0]                                ; $48EC: $F0 $E0
    cp $F0                                        ; $48EE: $FE $F0
    ccf                                           ; $48F0: $3F
    cp $FF                                        ; $48F1: $FE $FF
    ld e, $1F                                     ; $48F3: $1E $1F
    ld c, $1F                                     ; $48F5: $0E $1F
    ld c, $1E                                     ; $48F7: $0E $1E
    nop                                           ; $48F9: $00
    ld [hl-], a                                   ; $48FA: $32
    inc c                                         ; $48FB: $0C
    ld b, d                                       ; $48FC: $42
    inc a                                         ; $48FD: $3C
    ld a, h                                       ; $48FE: $7C
    nop                                           ; $48FF: $00
    ld [hl], e                                    ; $4900: $73
    adc a                                         ; $4901: $8F
    bit 7, a                                      ; $4902: $CB $7F
    ld e, a                                       ; $4904: $5F
    rst RST_38                                    ; $4905: $FF
    rst RST_38                                    ; $4906: $FF
    rst RST_38                                    ; $4907: $FF
    rst RST_38                                    ; $4908: $FF
    nop                                           ; $4909: $00
    ret nz                                        ; $490A: $C0

    add b                                         ; $490B: $80
    ldh [$FF80], a                                ; $490C: $E0 $80
    ret nc                                        ; $490E: $D0

    and b                                         ; $490F: $A0
    adc b                                         ; $4910: $88
    ld [hl], b                                    ; $4911: $70
    rlca                                          ; $4912: $07
    ld hl, sp-$39                                 ; $4913: $F8 $C7
    dec sp                                        ; $4915: $3B
    ccf                                           ; $4916: $3F
    rlca                                          ; $4917: $07
    rra                                           ; $4918: $1F
    rrca                                          ; $4919: $0F
    inc hl                                        ; $491A: $23
    rra                                           ; $491B: $1F
    inc a                                         ; $491C: $3C
    inc bc                                        ; $491D: $03
    inc bc                                        ; $491E: $03
    nop                                           ; $491F: $00
    ccf                                           ; $4920: $3F
    rlca                                          ; $4921: $07
    ld b, a                                       ; $4922: $47
    dec sp                                        ; $4923: $3B
    add e                                         ; $4924: $83
    ld a, l                                       ; $4925: $7D
    inc bc                                        ; $4926: $03
    db $FD                                        ; $4927: $FD
    rrca                                          ; $4928: $0F
    ldh a, [$FFF0]                                ; $4929: $F0 $F0
    nop                                           ; $492B: $00
    ldh [$FFC0], a                                ; $492C: $E0 $C0
    ldh a, [$FFE0]                                ; $492E: $F0 $E0
    ldh a, [$FFE0]                                ; $4930: $F0 $E0
    ldh a, [$FFE0]                                ; $4932: $F0 $E0
    ldh [$FFC0], a                                ; $4934: $E0 $C0
    ldh [$FFC0], a                                ; $4936: $E0 $C0
    ldh a, [$FFE0]                                ; $4938: $F0 $E0
    ldh a, [$FFE0]                                ; $493A: $F0 $E0
    ldh a, [$FFE0]                                ; $493C: $F0 $E0
    ldh [rP1], a                                  ; $493E: $E0 $00
    nop                                           ; $4940: $00
    nop                                           ; $4941: $00
    nop                                           ; $4942: $00
    nop                                           ; $4943: $00
    nop                                           ; $4944: $00
    nop                                           ; $4945: $00
    dec c                                         ; $4946: $0D
    nop                                           ; $4947: $00
    rla                                           ; $4948: $17
    inc c                                         ; $4949: $0C
    rla                                           ; $494A: $17
    rrca                                          ; $494B: $0F
    dec bc                                        ; $494C: $0B
    rlca                                          ; $494D: $07
    dec bc                                        ; $494E: $0B
    rlca                                          ; $494F: $07
    dec b                                         ; $4950: $05
    inc bc                                        ; $4951: $03
    ld [bc], a                                    ; $4952: $02
    ld bc, $0001                                  ; $4953: $01 $01 $00
    ld bc, $0F00                                  ; $4956: $01 $00 $0F
    ld bc, $0B37                                  ; $4959: $01 $37 $0B
    ld b, e                                       ; $495C: $43
    dec a                                         ; $495D: $3D
    ld a, a                                       ; $495E: $7F
    nop                                           ; $495F: $00
    add b                                         ; $4960: $80
    nop                                           ; $4961: $00
    add b                                         ; $4962: $80
    nop                                           ; $4963: $00
    ret nz                                        ; $4964: $C0

    add b                                         ; $4965: $80
    ret nz                                        ; $4966: $C0

    nop                                           ; $4967: $00
    ret nz                                        ; $4968: $C0

    nop                                           ; $4969: $00
    db $FC                                        ; $496A: $FC
    ld b, b                                       ; $496B: $40
    cp $3C                                        ; $496C: $FE $3C
    rst RST_10                                    ; $496E: $D7
    cp $0B                                        ; $496F: $FE $0B
    cp $0D                                        ; $4971: $FE $0D
    cp $4D                                        ; $4973: $FE $4D
    cp $6F                                        ; $4975: $FE $6F
    cp $6E                                        ; $4977: $FE $6E
    db $FC                                        ; $4979: $FC
    cp $C0                                        ; $497A: $FE $C0
    ld hl, sp+$30                                 ; $497C: $F8 $30
    ld a, b                                       ; $497E: $78
    jr nc, jr_023_4981                            ; $497F: $30 $00

jr_023_4981:
    nop                                           ; $4981: $00
    nop                                           ; $4982: $00
    nop                                           ; $4983: $00
    nop                                           ; $4984: $00
    nop                                           ; $4985: $00
    ld a, b                                       ; $4986: $78
    nop                                           ; $4987: $00
    ld e, [hl]                                    ; $4988: $5E
    jr c, jr_023_49EA                             ; $4989: $38 $5F

    ld a, $5F                                     ; $498B: $3E $5F
    ccf                                           ; $498D: $3F
    cpl                                           ; $498E: $2F
    rra                                           ; $498F: $1F
    cp a                                          ; $4990: $BF
    nop                                           ; $4991: $00
    ldh [$FF1F], a                                ; $4992: $E0 $1F
    rst RST_38                                    ; $4994: $FF
    rst RST_18                                    ; $4995: $DF
    rst RST_38                                    ; $4996: $FF
    rst RST_18                                    ; $4997: $DF
    rst RST_38                                    ; $4998: $FF
    sbc $FF                                       ; $4999: $DE $FF
    db $EC                                        ; $499B: $EC
    rst RST_38                                    ; $499C: $FF
    pop hl                                        ; $499D: $E1
    ld a, h                                       ; $499E: $7C
    and e                                         ; $499F: $A3
    call nz, $0238                                ; $49A0: $C4 $38 $02
    db $FC                                        ; $49A3: $FC
    sbc d                                         ; $49A4: $9A
    ld h, h                                       ; $49A5: $64
    jp hl                                         ; $49A6: $E9


    ld d, $C9                                     ; $49A7: $16 $C9
    ld [hl], $F1                                  ; $49A9: $36 $F1
    adc $F3                                       ; $49AB: $CE $F3
    inc e                                         ; $49AD: $1C
    sbc a                                         ; $49AE: $9F
    ld l, b                                       ; $49AF: $68
    ei                                            ; $49B0: $FB
    dec b                                         ; $49B1: $05
    rst RST_10                                    ; $49B2: $D7
    xor e                                         ; $49B3: $AB
    db $FD                                        ; $49B4: $FD
    add $ED                                       ; $49B5: $C6 $ED
    jp c, $18EF                                   ; $49B7: $DA $EF $18

    rst RST_28                                    ; $49BA: $EF
    ld e, c                                       ; $49BB: $59
    ld l, a                                       ; $49BC: $6F
    dec de                                        ; $49BD: $1B
    ccf                                           ; $49BE: $3F
    nop                                           ; $49BF: $00
    ld bc, $0300                                  ; $49C0: $01 $00 $03
    nop                                           ; $49C3: $00
    inc bc                                        ; $49C4: $03
    ld bc, $0103                                  ; $49C5: $01 $03 $01
    rst RST_38                                    ; $49C8: $FF
    nop                                           ; $49C9: $00
    add a                                         ; $49CA: $87
    ld a, d                                       ; $49CB: $7A
    rst RST_08                                    ; $49CC: $CF
    ld [hl], e                                    ; $49CD: $73
    rst RST_38                                    ; $49CE: $FF
    ld a, d                                       ; $49CF: $7A
    ld a, a                                       ; $49D0: $7F
    cp d                                          ; $49D1: $BA
    rst RST_38                                    ; $49D2: $FF
    dec de                                        ; $49D3: $1B
    ld e, $01                                     ; $49D4: $1E $01
    ld [bc], a                                    ; $49D6: $02
    ld bc, $0001                                  ; $49D7: $01 $01 $00
    nop                                           ; $49DA: $00
    nop                                           ; $49DB: $00
    nop                                           ; $49DC: $00
    nop                                           ; $49DD: $00
    nop                                           ; $49DE: $00
    nop                                           ; $49DF: $00
    nop                                           ; $49E0: $00
    nop                                           ; $49E1: $00
    ret nz                                        ; $49E2: $C0

    nop                                           ; $49E3: $00
    ldh [$FFC0], a                                ; $49E4: $E0 $C0

jr_023_49E6:
    ldh a, [rNR41]                                ; $49E6: $F0 $20
    cp $60                                        ; $49E8: $FE $60

jr_023_49EA:
    ld a, [hl]                                    ; $49EA: $7E
    db $FC                                        ; $49EB: $FC
    ccf                                           ; $49EC: $3F
    db $EC                                        ; $49ED: $EC
    cp $1D                                        ; $49EE: $FE $1D
    ld a, [hl]                                    ; $49F0: $7E
    sbc l                                         ; $49F1: $9D
    ld a, $ED                                     ; $49F2: $3E $ED
    ccf                                           ; $49F4: $3F
    db $EC                                        ; $49F5: $EC
    ld a, [hl]                                    ; $49F6: $7E
    db $EC                                        ; $49F7: $EC
    cp $EC                                        ; $49F8: $FE $EC
    cp $C0                                        ; $49FA: $FE $C0
    ret nz                                        ; $49FC: $C0

    nop                                           ; $49FD: $00
    nop                                           ; $49FE: $00
    nop                                           ; $49FF: $00
    ret nz                                        ; $4A00: $C0

    nop                                           ; $4A01: $00
    ldh [$FFC0], a                                ; $4A02: $E0 $C0
    jr jr_023_49E6                                ; $4A04: $18 $E0

    adc a                                         ; $4A06: $8F
    ld a, b                                       ; $4A07: $78

jr_023_4A08:
    rlca                                          ; $4A08: $07
    rst RST_38                                    ; $4A09: $FF
    add a                                         ; $4A0A: $87
    ld a, b                                       ; $4A0B: $78
    ld h, [hl]                                    ; $4A0C: $66
    sbc c                                         ; $4A0D: $99
    ld d, e                                       ; $4A0E: $53
    xor h                                         ; $4A0F: $AC
    cp b                                          ; $4A10: $B8
    rlca                                          ; $4A11: $07
    inc d                                         ; $4A12: $14
    dec bc                                        ; $4A13: $0B
    rrca                                          ; $4A14: $0F
    nop                                           ; $4A15: $00
    ld [bc], a                                    ; $4A16: $02
    ld bc, $0304                                  ; $4A17: $01 $04 $03
    inc b                                         ; $4A1A: $04
    inc bc                                        ; $4A1B: $03
    inc e                                         ; $4A1C: $1C
    inc bc                                        ; $4A1D: $03
    jr z, jr_023_4A37                             ; $4A1E: $28 $17

    db $D3                                        ; $4A20: $D3
    cpl                                           ; $4A21: $2F
    ld h, a                                       ; $4A22: $67
    sbc h                                         ; $4A23: $9C
    sbc h                                         ; $4A24: $9C
    ld [hl], b                                    ; $4A25: $70
    jr nc, jr_023_4A08                            ; $4A26: $30 $E0

    ldh [rP1], a                                  ; $4A28: $E0 $00
    nop                                           ; $4A2A: $00
    nop                                           ; $4A2B: $00
    nop                                           ; $4A2C: $00
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

jr_023_4A37:
    nop                                           ; $4A37: $00
    nop                                           ; $4A38: $00
    nop                                           ; $4A39: $00
    nop                                           ; $4A3A: $00
    nop                                           ; $4A3B: $00
    nop                                           ; $4A3C: $00
    nop                                           ; $4A3D: $00
    nop                                           ; $4A3E: $00
    nop                                           ; $4A3F: $00
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
    nop                                           ; $4A4A: $00
    nop                                           ; $4A4B: $00
    nop                                           ; $4A4C: $00
    nop                                           ; $4A4D: $00
    nop                                           ; $4A4E: $00
    nop                                           ; $4A4F: $00
    ld bc, $0300                                  ; $4A50: $01 $00 $03
    ld bc, $0102                                  ; $4A53: $01 $02 $01
    inc b                                         ; $4A56: $04
    inc bc                                        ; $4A57: $03
    ld b, $01                                     ; $4A58: $06 $01
    dec b                                         ; $4A5A: $05
    ld [bc], a                                    ; $4A5B: $02
    rlca                                          ; $4A5C: $07
    nop                                           ; $4A5D: $00
    ld bc, $0100                                  ; $4A5E: $01 $00 $01
    nop                                           ; $4A61: $00
    ld bc, $0100                                  ; $4A62: $01 $00 $01
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
    nop                                           ; $4A78: $00
    nop                                           ; $4A79: $00
    nop                                           ; $4A7A: $00
    nop                                           ; $4A7B: $00
    nop                                           ; $4A7C: $00
    nop                                           ; $4A7D: $00
    nop                                           ; $4A7E: $00
    nop                                           ; $4A7F: $00
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
    jr c, jr_023_4AA0                             ; $4A9E: $38 $00

jr_023_4AA0:
    ld b, b                                       ; $4AA0: $40
    add b                                         ; $4AA1: $80
    and b                                         ; $4AA2: $A0
    ret nz                                        ; $4AA3: $C0

    ldh [rLCDC], a                                ; $4AA4: $E0 $40
    ldh a, [$FFE0]                                ; $4AA6: $F0 $E0
    ld [hl], b                                    ; $4AA8: $70
    ret nz                                        ; $4AA9: $C0

    or b                                          ; $4AAA: $B0
    ldh [$FFE8], a                                ; $4AAB: $E0 $E8
    or b                                          ; $4AAD: $B0
    ret c                                         ; $4AAE: $D8

    or b                                          ; $4AAF: $B0
    add sp, $70                                   ; $4AB0: $E8 $70
    add sp, $30                                   ; $4AB2: $E8 $30
    ld hl, sp-$40                                 ; $4AB4: $F8 $C0
    ld hl, sp-$20                                 ; $4AB6: $F8 $E0
    ld hl, sp+$70                                 ; $4AB8: $F8 $70
    ld a, b                                       ; $4ABA: $78
    cp b                                          ; $4ABB: $B8
    cp h                                          ; $4ABC: $BC
    ret c                                         ; $4ABD: $D8

    cp $DC                                        ; $4ABE: $FE $DC
    rst RST_38                                    ; $4AC0: $FF
    jr nc, @+$73                                  ; $4AC1: $30 $71

    adc a                                         ; $4AC3: $8F
    ld a, a                                       ; $4AC4: $7F
    add e                                         ; $4AC5: $83
    jp Jump_000_003C                              ; $4AC6: $C3 $3C $00


    rst RST_38                                    ; $4AC9: $FF
    ld a, [hl]                                    ; $4ACA: $7E
    rst RST_38                                    ; $4ACB: $FF
    rst RST_38                                    ; $4ACC: $FF
    rst RST_38                                    ; $4ACD: $FF
    rst RST_38                                    ; $4ACE: $FF
    rst RST_38                                    ; $4ACF: $FF
    rst RST_38                                    ; $4AD0: $FF
    ld a, a                                       ; $4AD1: $7F
    rst RST_38                                    ; $4AD2: $FF
    sbc a                                         ; $4AD3: $9F
    rst RST_38                                    ; $4AD4: $FF
    rst RST_20                                    ; $4AD5: $E7
    rst RST_38                                    ; $4AD6: $FF
    ld sp, hl                                     ; $4AD7: $F9
    ld sp, hl                                     ; $4AD8: $F9
    nop                                           ; $4AD9: $00
    ld hl, sp-$10                                 ; $4ADA: $F8 $F0
    ld hl, sp+$00                                 ; $4ADC: $F8 $00
    db $FC                                        ; $4ADE: $FC
    ld hl, sp+$70                                 ; $4ADF: $F8 $70
    rrca                                          ; $4AE1: $0F
    halt                                          ; $4AE2: $76
    add hl, hl                                    ; $4AE3: $29
    ld a, d                                       ; $4AE4: $7A
    dec h                                         ; $4AE5: $25
    ld [hl], d                                    ; $4AE6: $72
    dec c                                         ; $4AE7: $0D
    rst RST_38                                    ; $4AE8: $FF
    ld [de], a                                    ; $4AE9: $12
    ld a, $C1                                     ; $4AEA: $3E $C1
    ld a, a                                       ; $4AEC: $7F
    sbc $FF                                       ; $4AED: $DE $FF
    sbc $FF                                       ; $4AEF: $DE $FF
    rst RST_18                                    ; $4AF1: $DF
    rst RST_38                                    ; $4AF2: $FF
    ccf                                           ; $4AF3: $3F
    rst RST_38                                    ; $4AF4: $FF
    ld a, a                                       ; $4AF5: $7F
    ld a, a                                       ; $4AF6: $7F
    rra                                           ; $4AF7: $1F
    rra                                           ; $4AF8: $1F
    nop                                           ; $4AF9: $00
    rrca                                          ; $4AFA: $0F
    rlca                                          ; $4AFB: $07
    rlca                                          ; $4AFC: $07
    nop                                           ; $4AFD: $00
    rlca                                          ; $4AFE: $07
    ld bc, $00CF                                  ; $4AFF: $01 $CF $00
    add sp, -$79                                  ; $4B02: $E8 $87
    db $FC                                        ; $4B04: $FC
    add a                                         ; $4B05: $87
    rst RST_20                                    ; $4B06: $E7
    db $DB                                        ; $4B07: $DB
    db $E3                                        ; $4B08: $E3
    db $DD                                        ; $4B09: $DD
    pop hl                                        ; $4B0A: $E1
    sbc $FF                                       ; $4B0B: $DE $FF
    add b                                         ; $4B0D: $80
    ret nz                                        ; $4B0E: $C0

    add b                                         ; $4B0F: $80
    add b                                         ; $4B10: $80
    nop                                           ; $4B11: $00
    nop                                           ; $4B12: $00
    nop                                           ; $4B13: $00
    nop                                           ; $4B14: $00
    nop                                           ; $4B15: $00
    nop                                           ; $4B16: $00
    nop                                           ; $4B17: $00
    nop                                           ; $4B18: $00
    nop                                           ; $4B19: $00
    nop                                           ; $4B1A: $00
    nop                                           ; $4B1B: $00
    nop                                           ; $4B1C: $00
    nop                                           ; $4B1D: $00
    rrca                                          ; $4B1E: $0F
    nop                                           ; $4B1F: $00
    dec bc                                        ; $4B20: $0B
    rlca                                          ; $4B21: $07
    dec b                                         ; $4B22: $05
    inc bc                                        ; $4B23: $03
    ld [bc], a                                    ; $4B24: $02
    ld bc, $0001                                  ; $4B25: $01 $01 $00
    nop                                           ; $4B28: $00
    nop                                           ; $4B29: $00
    nop                                           ; $4B2A: $00
    nop                                           ; $4B2B: $00
    nop                                           ; $4B2C: $00
    nop                                           ; $4B2D: $00
    nop                                           ; $4B2E: $00
    nop                                           ; $4B2F: $00
    ld bc, $0200                                  ; $4B30: $01 $00 $02
    ld bc, $0003                                  ; $4B33: $01 $03 $00
    nop                                           ; $4B36: $00
    nop                                           ; $4B37: $00
    nop                                           ; $4B38: $00
    nop                                           ; $4B39: $00
    nop                                           ; $4B3A: $00
    nop                                           ; $4B3B: $00
    nop                                           ; $4B3C: $00
    nop                                           ; $4B3D: $00
    nop                                           ; $4B3E: $00
    nop                                           ; $4B3F: $00
    nop                                           ; $4B40: $00
    nop                                           ; $4B41: $00
    nop                                           ; $4B42: $00
    nop                                           ; $4B43: $00
    nop                                           ; $4B44: $00
    nop                                           ; $4B45: $00
    nop                                           ; $4B46: $00
    nop                                           ; $4B47: $00
    nop                                           ; $4B48: $00
    nop                                           ; $4B49: $00
    rlca                                          ; $4B4A: $07
    nop                                           ; $4B4B: $00
    ccf                                           ; $4B4C: $3F
    rlca                                          ; $4B4D: $07
    db $D3                                        ; $4B4E: $D3
    ccf                                           ; $4B4F: $3F
    add hl, bc                                    ; $4B50: $09
    rst RST_38                                    ; $4B51: $FF
    dec c                                         ; $4B52: $0D
    rst RST_38                                    ; $4B53: $FF
    ld c, h                                       ; $4B54: $4C
    rst RST_38                                    ; $4B55: $FF
    ld l, [hl]                                    ; $4B56: $6E
    rst RST_38                                    ; $4B57: $FF
    ld l, [hl]                                    ; $4B58: $6E
    rst RST_38                                    ; $4B59: $FF
    rst RST_38                                    ; $4B5A: $FF
    rst RST_38                                    ; $4B5B: $FF
    rst RST_38                                    ; $4B5C: $FF
    rrca                                          ; $4B5D: $0F
    rrca                                          ; $4B5E: $0F
    nop                                           ; $4B5F: $00
    inc bc                                        ; $4B60: $03
    nop                                           ; $4B61: $00
    ld a, $03                                     ; $4B62: $3E $03
    ldh [$FF3F], a                                ; $4B64: $E0 $3F
    dec bc                                        ; $4B66: $0B
    rst RST_38                                    ; $4B67: $FF
    ld e, e                                       ; $4B68: $5B
    rst RST_38                                    ; $4B69: $FF
    rst RST_38                                    ; $4B6A: $FF
    rst RST_38                                    ; $4B6B: $FF
    rst RST_38                                    ; $4B6C: $FF
    inc bc                                        ; $4B6D: $03
    inc bc                                        ; $4B6E: $03
    nop                                           ; $4B6F: $00
    nop                                           ; $4B70: $00
    nop                                           ; $4B71: $00
    nop                                           ; $4B72: $00
    nop                                           ; $4B73: $00
    nop                                           ; $4B74: $00
    nop                                           ; $4B75: $00
    nop                                           ; $4B76: $00
    nop                                           ; $4B77: $00
    nop                                           ; $4B78: $00
    nop                                           ; $4B79: $00
    nop                                           ; $4B7A: $00
    nop                                           ; $4B7B: $00
    nop                                           ; $4B7C: $00
    nop                                           ; $4B7D: $00
    nop                                           ; $4B7E: $00
    nop                                           ; $4B7F: $00
    nop                                           ; $4B80: $00
    nop                                           ; $4B81: $00
    nop                                           ; $4B82: $00
    nop                                           ; $4B83: $00
    nop                                           ; $4B84: $00
    nop                                           ; $4B85: $00
    nop                                           ; $4B86: $00
    nop                                           ; $4B87: $00
    nop                                           ; $4B88: $00
    nop                                           ; $4B89: $00
    nop                                           ; $4B8A: $00
    nop                                           ; $4B8B: $00
    nop                                           ; $4B8C: $00
    nop                                           ; $4B8D: $00
    nop                                           ; $4B8E: $00
    nop                                           ; $4B8F: $00
    nop                                           ; $4B90: $00
    nop                                           ; $4B91: $00
    nop                                           ; $4B92: $00
    nop                                           ; $4B93: $00
    nop                                           ; $4B94: $00
    nop                                           ; $4B95: $00
    nop                                           ; $4B96: $00
    nop                                           ; $4B97: $00
    ld bc, $1E00                                  ; $4B98: $01 $00 $1E
    ld bc, $1F38                                  ; $4B9B: $01 $38 $1F
    rra                                           ; $4B9E: $1F
    nop                                           ; $4B9F: $00
    nop                                           ; $4BA0: $00
    nop                                           ; $4BA1: $00
    nop                                           ; $4BA2: $00
    nop                                           ; $4BA3: $00
    nop                                           ; $4BA4: $00
    nop                                           ; $4BA5: $00
    nop                                           ; $4BA6: $00
    nop                                           ; $4BA7: $00
    ld bc, $0200                                  ; $4BA8: $01 $00 $02
    ld bc, $0207                                  ; $4BAB: $01 $07 $02
    rlca                                          ; $4BAE: $07
    inc bc                                        ; $4BAF: $03
    inc bc                                        ; $4BB0: $03
    ld bc, $020D                                  ; $4BB1: $01 $0D $02
    dec e                                         ; $4BB4: $1D
    dec bc                                        ; $4BB5: $0B
    rla                                           ; $4BB6: $17
    inc c                                         ; $4BB7: $0C
    rla                                           ; $4BB8: $17
    rrca                                          ; $4BB9: $0F
    dec c                                         ; $4BBA: $0D
    inc bc                                        ; $4BBB: $03
    inc bc                                        ; $4BBC: $03
    nop                                           ; $4BBD: $00
    ld a, a                                       ; $4BBE: $7F
    nop                                           ; $4BBF: $00
    nop                                           ; $4BC0: $00
    nop                                           ; $4BC1: $00
    nop                                           ; $4BC2: $00
    nop                                           ; $4BC3: $00
    nop                                           ; $4BC4: $00
    nop                                           ; $4BC5: $00
    nop                                           ; $4BC6: $00
    nop                                           ; $4BC7: $00
    add b                                         ; $4BC8: $80
    nop                                           ; $4BC9: $00
    ldh [$FF80], a                                ; $4BCA: $E0 $80
    inc a                                         ; $4BCC: $3C
    ldh [$FF9B], a                                ; $4BCD: $E0 $9B
    db $EC                                        ; $4BCF: $EC
    ld a, $E3                                     ; $4BD0: $3E $E3
    ei                                            ; $4BD2: $FB
    push hl                                       ; $4BD3: $E5
    ld l, a                                       ; $4BD4: $6F
    or b                                          ; $4BD5: $B0
    ld [hl], e                                    ; $4BD6: $73
    rst RST_18                                    ; $4BD7: $DF
    ret c                                         ; $4BD8: $D8

    ccf                                           ; $4BD9: $3F
    db $FD                                        ; $4BDA: $FD
    rst RST_00                                    ; $4BDB: $C7
    rst RST_38                                    ; $4BDC: $FF
    ei                                            ; $4BDD: $FB
    rst RST_38                                    ; $4BDE: $FF
    ei                                            ; $4BDF: $FB
    add hl, de                                    ; $4BE0: $19
    ld b, $21                                     ; $4BE1: $06 $21
    ld e, $41                                     ; $4BE3: $1E $41
    ld a, $E3                                     ; $4BE5: $3E $E3
    inc e                                         ; $4BE7: $1C
    rst RST_38                                    ; $4BE8: $FF
    ldh [rIE], a                                  ; $4BE9: $E0 $FF
    ld hl, sp+$7F                                 ; $4BEB: $F8 $7F
    ld a, [$7ABF]                                 ; $4BED: $FA $BF $7A
    ld c, a                                       ; $4BF0: $4F
    ld a, [hl-]                                   ; $4BF1: $3A
    scf                                           ; $4BF2: $37
    ld a, [bc]                                    ; $4BF3: $0A
    dec e                                         ; $4BF4: $1D
    ld b, $FD                                     ; $4BF5: $06 $FD
    ld b, $4D                                     ; $4BF7: $06 $4D
    or [hl]                                       ; $4BF9: $B6
    adc l                                         ; $4BFA: $8D
    halt                                          ; $4BFB: $76
    ld sp, hl                                     ; $4BFC: $F9
    rrca                                          ; $4BFD: $0F
    jr @+$11                                      ; $4BFE: $18 $0F

    cp $F8                                        ; $4C00: $FE $F8
    ld sp, hl                                     ; $4C02: $F9
    halt                                          ; $4C03: $76
    ld hl, sp+$77                                 ; $4C04: $F8 $77
    ldh a, [rIF]                                  ; $4C06: $F0 $0F
    ld [$0707], sp                                ; $4C08: $08 $07 $07
    nop                                           ; $4C0B: $00
    inc bc                                        ; $4C0C: $03
    ld bc, $0306                                  ; $4C0D: $01 $06 $03
    inc c                                         ; $4C10: $0C
    rlca                                          ; $4C11: $07
    jr jr_023_4C23                                ; $4C12: $18 $0F

    or b                                          ; $4C14: $B0
    rra                                           ; $4C15: $1F
    ldh [$FF3F], a                                ; $4C16: $E0 $3F
    ret nz                                        ; $4C18: $C0

    ld a, a                                       ; $4C19: $7F
    add b                                         ; $4C1A: $80
    rst RST_38                                    ; $4C1B: $FF
    nop                                           ; $4C1C: $00
    rst RST_38                                    ; $4C1D: $FF
    nop                                           ; $4C1E: $00
    rst RST_38                                    ; $4C1F: $FF
    cp $EC                                        ; $4C20: $FE $EC
    rst RST_38                                    ; $4C22: $FF

jr_023_4C23:
    xor $FF                                       ; $4C23: $EE $FF
    or $FF                                        ; $4C25: $F6 $FF
    or $FF                                        ; $4C27: $F6 $FF
    or $FF                                        ; $4C29: $F6 $FF
    ld a, d                                       ; $4C2B: $7A
    ld a, a                                       ; $4C2C: $7F
    add hl, sp                                    ; $4C2D: $39
    ld a, [hl]                                    ; $4C2E: $7E
    dec sp                                        ; $4C2F: $3B
    dec a                                         ; $4C30: $3D
    rla                                           ; $4C31: $17
    add hl, sp                                    ; $4C32: $39
    ld c, $B3                                     ; $4C33: $0E $B3
    ld e, $E2                                     ; $4C35: $1E $E2
    inc a                                         ; $4C37: $3C
    add $7C                                       ; $4C38: $C6 $7C
    add [hl]                                      ; $4C3A: $86
    ld hl, sp+$0E                                 ; $4C3B: $F8 $0E

jr_023_4C3D:
    ld hl, sp+$0F                                 ; $4C3D: $F8 $0F
    or $00                                        ; $4C3F: $F6 $00
    nop                                           ; $4C41: $00
    stop                                          ; $4C42: $10 $00
    jr nc, jr_023_4C46                            ; $4C44: $30 $00

jr_023_4C46:
    ld h, b                                       ; $4C46: $60
    nop                                           ; $4C47: $00
    ldh [rLCDC], a                                ; $4C48: $E0 $40
    ret nz                                        ; $4C4A: $C0

    add b                                         ; $4C4B: $80
    ret nz                                        ; $4C4C: $C0

    add b                                         ; $4C4D: $80
    add b                                         ; $4C4E: $80
    nop                                           ; $4C4F: $00
    add b                                         ; $4C50: $80
    nop                                           ; $4C51: $00
    inc b                                         ; $4C52: $04
    nop                                           ; $4C53: $00
    ld [$1800], sp                                ; $4C54: $08 $00 $18
    nop                                           ; $4C57: $00
    jr nc, jr_023_4C5A                            ; $4C58: $30 $00

jr_023_4C5A:
    ld [hl], b                                    ; $4C5A: $70
    jr nz, jr_023_4C3D                            ; $4C5B: $20 $E0

    ld b, b                                       ; $4C5D: $40
    ld h, b                                       ; $4C5E: $60
    ret nz                                        ; $4C5F: $C0

    rra                                           ; $4C60: $1F
    push af                                       ; $4C61: $F5
    ld e, $E3                                     ; $4C62: $1E $E3
    dec a                                         ; $4C64: $3D
    rst RST_20                                    ; $4C65: $E7
    dec sp                                        ; $4C66: $3B
    adc $73                                       ; $4C67: $CE $73
    sbc $67                                       ; $4C69: $DE $67
    db $FC                                        ; $4C6B: $FC
    ld b, a                                       ; $4C6C: $47
    db $FD                                        ; $4C6D: $FD
    nop                                           ; $4C6E: $00
    rst RST_38                                    ; $4C6F: $FF
    nop                                           ; $4C70: $00
    nop                                           ; $4C71: $00
    nop                                           ; $4C72: $00
    nop                                           ; $4C73: $00
    nop                                           ; $4C74: $00
    nop                                           ; $4C75: $00
    nop                                           ; $4C76: $00
    nop                                           ; $4C77: $00
    nop                                           ; $4C78: $00
    nop                                           ; $4C79: $00
    nop                                           ; $4C7A: $00
    nop                                           ; $4C7B: $00
    nop                                           ; $4C7C: $00
    nop                                           ; $4C7D: $00
    nop                                           ; $4C7E: $00
    nop                                           ; $4C7F: $00
    add sp, -$80                                  ; $4C80: $E8 $80
    ld hl, sp-$80                                 ; $4C82: $F8 $80
    ld hl, sp+$00                                 ; $4C84: $F8 $00
    ld hl, sp+$20                                 ; $4C86: $F8 $20
    db $FC                                        ; $4C88: $FC
    ld b, b                                       ; $4C89: $40
    db $FC                                        ; $4C8A: $FC
    ret nz                                        ; $4C8B: $C0

    ld a, [hl]                                    ; $4C8C: $7E
    add b                                         ; $4C8D: $80
    cp $80                                        ; $4C8E: $FE $80
    nop                                           ; $4C90: $00
    nop                                           ; $4C91: $00
    nop                                           ; $4C92: $00
    nop                                           ; $4C93: $00
    nop                                           ; $4C94: $00
    nop                                           ; $4C95: $00
    nop                                           ; $4C96: $00
    nop                                           ; $4C97: $00
    nop                                           ; $4C98: $00
    nop                                           ; $4C99: $00
    nop                                           ; $4C9A: $00
    nop                                           ; $4C9B: $00
    nop                                           ; $4C9C: $00
    nop                                           ; $4C9D: $00
    nop                                           ; $4C9E: $00
    nop                                           ; $4C9F: $00
    add hl, de                                    ; $4CA0: $19
    ld b, $20                                     ; $4CA1: $06 $20
    rra                                           ; $4CA3: $1F
    ld b, b                                       ; $4CA4: $40
    ccf                                           ; $4CA5: $3F
    db $E3                                        ; $4CA6: $E3
    inc e                                         ; $4CA7: $1C
    db $FC                                        ; $4CA8: $FC
    ldh [$FFFC], a                                ; $4CA9: $E0 $FC
    ld hl, sp+$7E                                 ; $4CAB: $F8 $7E
    db $FC                                        ; $4CAD: $FC
    cp [hl]                                       ; $4CAE: $BE
    ld a, h                                       ; $4CAF: $7C
    ld c, [hl]                                    ; $4CB0: $4E
    inc a                                         ; $4CB1: $3C
    scf                                           ; $4CB2: $37
    ld c, $17                                     ; $4CB3: $0E $17
    rrca                                          ; $4CB5: $0F
    rst RST_38                                    ; $4CB6: $FF
    rrca                                          ; $4CB7: $0F
    ld c, a                                       ; $4CB8: $4F
    or [hl]                                       ; $4CB9: $B6
    adc [hl]                                      ; $4CBA: $8E
    ld [hl], h                                    ; $4CBB: $74
    db $FC                                        ; $4CBC: $FC
    nop                                           ; $4CBD: $00
    nop                                           ; $4CBE: $00
    nop                                           ; $4CBF: $00
    cp $F8                                        ; $4CC0: $FE $F8
    ld sp, hl                                     ; $4CC2: $F9
    halt                                          ; $4CC3: $76
    ld hl, sp+$77                                 ; $4CC4: $F8 $77
    ldh a, [rIF]                                  ; $4CC6: $F0 $0F
    ld [$0707], sp                                ; $4CC8: $08 $07 $07
    nop                                           ; $4CCB: $00
    ld bc, $0100                                  ; $4CCC: $01 $00 $01
    nop                                           ; $4CCF: $00
    nop                                           ; $4CD0: $00
    nop                                           ; $4CD1: $00
    nop                                           ; $4CD2: $00
    nop                                           ; $4CD3: $00
    add b                                         ; $4CD4: $80
    nop                                           ; $4CD5: $00
    add b                                         ; $4CD6: $80
    nop                                           ; $4CD7: $00
    nop                                           ; $4CD8: $00
    nop                                           ; $4CD9: $00
    nop                                           ; $4CDA: $00
    nop                                           ; $4CDB: $00
    nop                                           ; $4CDC: $00
    nop                                           ; $4CDD: $00
    nop                                           ; $4CDE: $00
    nop                                           ; $4CDF: $00
    cp $EC                                        ; $4CE0: $FE $EC
    rst RST_38                                    ; $4CE2: $FF
    xor $FF                                       ; $4CE3: $EE $FF
    or $FF                                        ; $4CE5: $F6 $FF
    or $FF                                        ; $4CE7: $F6 $FF
    or $FF                                        ; $4CE9: $F6 $FF
    ld a, d                                       ; $4CEB: $7A
    ld a, [hl]                                    ; $4CEC: $7E
    jr c, jr_023_4D6B                             ; $4CED: $38 $7C

    jr c, @+$3A                                   ; $4CEF: $38 $38

    db $10                                        ; $4CF1: $10
    jr c, jr_023_4D04                             ; $4CF2: $38 $10

    or b                                          ; $4CF4: $B0
    nop                                           ; $4CF5: $00
    ld hl, sp+$00                                 ; $4CF6: $F8 $00
    db $FC                                        ; $4CF8: $FC
    ld a, b                                       ; $4CF9: $78
    cp $FC                                        ; $4CFA: $FE $FC
    cp $FC                                        ; $4CFC: $FE $FC
    ld a, a                                       ; $4CFE: $7F
    cp $8F                                        ; $4CFF: $FE $8F
    ld a, a                                       ; $4D01: $7F
    ld a, a                                       ; $4D02: $7F
    inc bc                                        ; $4D03: $03

jr_023_4D04:
    inc bc                                        ; $4D04: $03
    ld bc, $0103                                  ; $4D05: $01 $03 $01
    ld bc, $0000                                  ; $4D08: $01 $00 $00
    nop                                           ; $4D0B: $00
    nop                                           ; $4D0C: $00
    nop                                           ; $4D0D: $00
    nop                                           ; $4D0E: $00
    nop                                           ; $4D0F: $00
    nop                                           ; $4D10: $00
    nop                                           ; $4D11: $00
    nop                                           ; $4D12: $00
    nop                                           ; $4D13: $00
    nop                                           ; $4D14: $00
    nop                                           ; $4D15: $00
    nop                                           ; $4D16: $00
    nop                                           ; $4D17: $00
    nop                                           ; $4D18: $00
    nop                                           ; $4D19: $00
    nop                                           ; $4D1A: $00
    nop                                           ; $4D1B: $00
    nop                                           ; $4D1C: $00
    nop                                           ; $4D1D: $00
    nop                                           ; $4D1E: $00
    nop                                           ; $4D1F: $00
    add b                                         ; $4D20: $80
    nop                                           ; $4D21: $00
    ldh [$FF80], a                                ; $4D22: $E0 $80
    ldh a, [rP1]                                  ; $4D24: $F0 $00
    ld hl, sp+$00                                 ; $4D26: $F8 $00
    ld hl, sp+$00                                 ; $4D28: $F8 $00
    db $FC                                        ; $4D2A: $FC
    nop                                           ; $4D2B: $00
    db $FC                                        ; $4D2C: $FC
    nop                                           ; $4D2D: $00
    ld a, [hl]                                    ; $4D2E: $7E
    nop                                           ; $4D2F: $00
    ld a, [hl]                                    ; $4D30: $7E
    nop                                           ; $4D31: $00
    nop                                           ; $4D32: $00
    nop                                           ; $4D33: $00
    nop                                           ; $4D34: $00
    nop                                           ; $4D35: $00
    nop                                           ; $4D36: $00
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
    inc bc                                        ; $4D42: $03
    nop                                           ; $4D43: $00
    rrca                                          ; $4D44: $0F
    nop                                           ; $4D45: $00
    rra                                           ; $4D46: $1F
    nop                                           ; $4D47: $00
    rra                                           ; $4D48: $1F
    nop                                           ; $4D49: $00
    ccf                                           ; $4D4A: $3F
    nop                                           ; $4D4B: $00
    ccf                                           ; $4D4C: $3F
    nop                                           ; $4D4D: $00
    ccf                                           ; $4D4E: $3F
    nop                                           ; $4D4F: $00
    ld a, a                                       ; $4D50: $7F
    nop                                           ; $4D51: $00
    ld a, a                                       ; $4D52: $7F
    nop                                           ; $4D53: $00
    rst RST_38                                    ; $4D54: $FF
    nop                                           ; $4D55: $00
    rst RST_38                                    ; $4D56: $FF
    nop                                           ; $4D57: $00
    ld a, a                                       ; $4D58: $7F
    nop                                           ; $4D59: $00
    ld a, a                                       ; $4D5A: $7F
    nop                                           ; $4D5B: $00
    ccf                                           ; $4D5C: $3F
    nop                                           ; $4D5D: $00
    inc bc                                        ; $4D5E: $03
    nop                                           ; $4D5F: $00
    ld bc, $0100                                  ; $4D60: $01 $00 $01
    nop                                           ; $4D63: $00
    ld bc, $1B00                                  ; $4D64: $01 $00 $1B
    nop                                           ; $4D67: $00
    rst RST_38                                    ; $4D68: $FF
    nop                                           ; $4D69: $00
    rst RST_38                                    ; $4D6A: $FF

jr_023_4D6B:
    nop                                           ; $4D6B: $00
    rst RST_38                                    ; $4D6C: $FF
    nop                                           ; $4D6D: $00
    rst RST_38                                    ; $4D6E: $FF
    nop                                           ; $4D6F: $00
    rst RST_38                                    ; $4D70: $FF
    nop                                           ; $4D71: $00
    rst RST_38                                    ; $4D72: $FF
    nop                                           ; $4D73: $00
    rst RST_38                                    ; $4D74: $FF
    nop                                           ; $4D75: $00
    cp $00                                        ; $4D76: $FE $00
    cp $00                                        ; $4D78: $FE $00
    db $FC                                        ; $4D7A: $FC
    nop                                           ; $4D7B: $00
    ld hl, sp+$00                                 ; $4D7C: $F8 $00
    ldh a, [rP1]                                  ; $4D7E: $F0 $00
    rlca                                          ; $4D80: $07
    nop                                           ; $4D81: $00
    rrca                                          ; $4D82: $0F
    nop                                           ; $4D83: $00
    rrca                                          ; $4D84: $0F
    nop                                           ; $4D85: $00
    rrca                                          ; $4D86: $0F
    nop                                           ; $4D87: $00
    rrca                                          ; $4D88: $0F
    nop                                           ; $4D89: $00
    rlca                                          ; $4D8A: $07
    nop                                           ; $4D8B: $00
    rst RST_38                                    ; $4D8C: $FF
    nop                                           ; $4D8D: $00
    rst RST_38                                    ; $4D8E: $FF
    nop                                           ; $4D8F: $00
    rst RST_38                                    ; $4D90: $FF
    nop                                           ; $4D91: $00
    rst RST_38                                    ; $4D92: $FF
    nop                                           ; $4D93: $00
    rst RST_38                                    ; $4D94: $FF
    nop                                           ; $4D95: $00
    rst RST_38                                    ; $4D96: $FF
    nop                                           ; $4D97: $00
    rst RST_38                                    ; $4D98: $FF
    nop                                           ; $4D99: $00
    rst RST_38                                    ; $4D9A: $FF
    nop                                           ; $4D9B: $00
    sbc a                                         ; $4D9C: $9F
    nop                                           ; $4D9D: $00
    sbc a                                         ; $4D9E: $9F
    nop                                           ; $4D9F: $00
    pop hl                                        ; $4DA0: $E1
    nop                                           ; $4DA1: $00
    di                                            ; $4DA2: $F3
    nop                                           ; $4DA3: $00
    ei                                            ; $4DA4: $FB
    nop                                           ; $4DA5: $00
    ei                                            ; $4DA6: $FB
    nop                                           ; $4DA7: $00
    rst RST_38                                    ; $4DA8: $FF
    nop                                           ; $4DA9: $00
    rst RST_38                                    ; $4DAA: $FF
    nop                                           ; $4DAB: $00
    rst RST_38                                    ; $4DAC: $FF
    nop                                           ; $4DAD: $00
    rst RST_38                                    ; $4DAE: $FF
    nop                                           ; $4DAF: $00
    rst RST_38                                    ; $4DB0: $FF
    nop                                           ; $4DB1: $00
    rst RST_38                                    ; $4DB2: $FF
    nop                                           ; $4DB3: $00
    rst RST_38                                    ; $4DB4: $FF
    nop                                           ; $4DB5: $00
    rst RST_38                                    ; $4DB6: $FF
    nop                                           ; $4DB7: $00
    rst RST_38                                    ; $4DB8: $FF
    nop                                           ; $4DB9: $00
    rst RST_38                                    ; $4DBA: $FF
    nop                                           ; $4DBB: $00
    ld sp, hl                                     ; $4DBC: $F9
    nop                                           ; $4DBD: $00
    pop af                                        ; $4DBE: $F1
    nop                                           ; $4DBF: $00
    add b                                         ; $4DC0: $80
    nop                                           ; $4DC1: $00
    ldh [rP1], a                                  ; $4DC2: $E0 $00
    ldh a, [rP1]                                  ; $4DC4: $F0 $00
    ld hl, sp+$00                                 ; $4DC6: $F8 $00
    db $FC                                        ; $4DC8: $FC
    nop                                           ; $4DC9: $00
    db $FC                                        ; $4DCA: $FC
    nop                                           ; $4DCB: $00
    cp $00                                        ; $4DCC: $FE $00
    cp $00                                        ; $4DCE: $FE $00
    cp $00                                        ; $4DD0: $FE $00
    cp $00                                        ; $4DD2: $FE $00
    cp $00                                        ; $4DD4: $FE $00
    rst RST_38                                    ; $4DD6: $FF
    nop                                           ; $4DD7: $00
    rst RST_38                                    ; $4DD8: $FF
    nop                                           ; $4DD9: $00
    rst RST_38                                    ; $4DDA: $FF
    nop                                           ; $4DDB: $00
    rst RST_38                                    ; $4DDC: $FF
    nop                                           ; $4DDD: $00
    rst RST_38                                    ; $4DDE: $FF
    nop                                           ; $4DDF: $00
    ldh [rP1], a                                  ; $4DE0: $E0 $00
    ret nz                                        ; $4DE2: $C0

    nop                                           ; $4DE3: $00
    ret nz                                        ; $4DE4: $C0

    nop                                           ; $4DE5: $00
    add b                                         ; $4DE6: $80
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
    inc bc                                        ; $4DF2: $03
    nop                                           ; $4DF3: $00
    rlca                                          ; $4DF4: $07
    nop                                           ; $4DF5: $00
    rrca                                          ; $4DF6: $0F
    nop                                           ; $4DF7: $00
    rrca                                          ; $4DF8: $0F
    nop                                           ; $4DF9: $00
    nop                                           ; $4DFA: $00
    nop                                           ; $4DFB: $00
    nop                                           ; $4DFC: $00
    nop                                           ; $4DFD: $00
    nop                                           ; $4DFE: $00
    nop                                           ; $4DFF: $00
    adc a                                         ; $4E00: $8F
    nop                                           ; $4E01: $00
    rra                                           ; $4E02: $1F
    nop                                           ; $4E03: $00
    rra                                           ; $4E04: $1F
    nop                                           ; $4E05: $00
    ccf                                           ; $4E06: $3F
    nop                                           ; $4E07: $00
    ccf                                           ; $4E08: $3F
    nop                                           ; $4E09: $00
    rra                                           ; $4E0A: $1F
    nop                                           ; $4E0B: $00
    ld a, a                                       ; $4E0C: $7F
    nop                                           ; $4E0D: $00
    cp $00                                        ; $4E0E: $FE $00
    cp $00                                        ; $4E10: $FE $00
    rst RST_38                                    ; $4E12: $FF
    nop                                           ; $4E13: $00
    ld a, a                                       ; $4E14: $7F
    nop                                           ; $4E15: $00
    ccf                                           ; $4E16: $3F
    nop                                           ; $4E17: $00
    ld a, $00                                     ; $4E18: $3E $00
    inc a                                         ; $4E1A: $3C
    nop                                           ; $4E1B: $00
    ld a, h                                       ; $4E1C: $7C
    nop                                           ; $4E1D: $00
    db $FC                                        ; $4E1E: $FC
    nop                                           ; $4E1F: $00
    ldh a, [rP1]                                  ; $4E20: $F0 $00
    ld hl, sp+$00                                 ; $4E22: $F8 $00
    ld hl, sp+$00                                 ; $4E24: $F8 $00
    ld hl, sp+$00                                 ; $4E26: $F8 $00
    db $FC                                        ; $4E28: $FC
    nop                                           ; $4E29: $00
    db $FC                                        ; $4E2A: $FC
    nop                                           ; $4E2B: $00
    ld a, [hl]                                    ; $4E2C: $7E
    nop                                           ; $4E2D: $00
    ccf                                           ; $4E2E: $3F
    nop                                           ; $4E2F: $00
    ccf                                           ; $4E30: $3F
    nop                                           ; $4E31: $00
    ccf                                           ; $4E32: $3F
    nop                                           ; $4E33: $00
    ccf                                           ; $4E34: $3F
    nop                                           ; $4E35: $00
    ccf                                           ; $4E36: $3F
    nop                                           ; $4E37: $00
    rra                                           ; $4E38: $1F
    nop                                           ; $4E39: $00
    rrca                                          ; $4E3A: $0F
    nop                                           ; $4E3B: $00
    inc bc                                        ; $4E3C: $03
    nop                                           ; $4E3D: $00
    ld bc, $FF00                                  ; $4E3E: $01 $00 $FF
    nop                                           ; $4E41: $00
    rst RST_38                                    ; $4E42: $FF
    nop                                           ; $4E43: $00
    rst RST_38                                    ; $4E44: $FF
    nop                                           ; $4E45: $00
    rst RST_38                                    ; $4E46: $FF
    nop                                           ; $4E47: $00
    di                                            ; $4E48: $F3
    nop                                           ; $4E49: $00
    ldh a, [rP1]                                  ; $4E4A: $F0 $00
    ldh [rP1], a                                  ; $4E4C: $E0 $00
    ret nz                                        ; $4E4E: $C0

    nop                                           ; $4E4F: $00
    add b                                         ; $4E50: $80
    nop                                           ; $4E51: $00
    ret nz                                        ; $4E52: $C0

    nop                                           ; $4E53: $00
    ret nz                                        ; $4E54: $C0

    nop                                           ; $4E55: $00
    ret nz                                        ; $4E56: $C0

    nop                                           ; $4E57: $00
    ret nz                                        ; $4E58: $C0

    nop                                           ; $4E59: $00
    ldh [rP1], a                                  ; $4E5A: $E0 $00
    ldh [rP1], a                                  ; $4E5C: $E0 $00
    ldh a, [rP1]                                  ; $4E5E: $F0 $00
    cp $00                                        ; $4E60: $FE $00
    cp $00                                        ; $4E62: $FE $00
    db $FC                                        ; $4E64: $FC
    nop                                           ; $4E65: $00
    ldh a, [rP1]                                  ; $4E66: $F0 $00
    nop                                           ; $4E68: $00
    nop                                           ; $4E69: $00
    nop                                           ; $4E6A: $00
    nop                                           ; $4E6B: $00
    nop                                           ; $4E6C: $00
    nop                                           ; $4E6D: $00
    nop                                           ; $4E6E: $00
    nop                                           ; $4E6F: $00
    nop                                           ; $4E70: $00
    nop                                           ; $4E71: $00
    nop                                           ; $4E72: $00
    nop                                           ; $4E73: $00
    nop                                           ; $4E74: $00
    nop                                           ; $4E75: $00
    nop                                           ; $4E76: $00
    nop                                           ; $4E77: $00
    nop                                           ; $4E78: $00
    nop                                           ; $4E79: $00
    nop                                           ; $4E7A: $00
    nop                                           ; $4E7B: $00
    nop                                           ; $4E7C: $00
    nop                                           ; $4E7D: $00
    nop                                           ; $4E7E: $00
    nop                                           ; $4E7F: $00
    db $FC                                        ; $4E80: $FC
    nop                                           ; $4E81: $00
    cp $00                                        ; $4E82: $FE $00
    ld a, a                                       ; $4E84: $7F
    nop                                           ; $4E85: $00
    ld a, a                                       ; $4E86: $7F
    nop                                           ; $4E87: $00
    ccf                                           ; $4E88: $3F
    nop                                           ; $4E89: $00
    nop                                           ; $4E8A: $00
    nop                                           ; $4E8B: $00
    nop                                           ; $4E8C: $00
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
    add b                                         ; $4EA0: $80
    nop                                           ; $4EA1: $00
    add b                                         ; $4EA2: $80
    nop                                           ; $4EA3: $00
    nop                                           ; $4EA4: $00
    nop                                           ; $4EA5: $00
    nop                                           ; $4EA6: $00
    nop                                           ; $4EA7: $00
    nop                                           ; $4EA8: $00
    nop                                           ; $4EA9: $00
    nop                                           ; $4EAA: $00
    nop                                           ; $4EAB: $00
    nop                                           ; $4EAC: $00
    nop                                           ; $4EAD: $00
    nop                                           ; $4EAE: $00
    nop                                           ; $4EAF: $00
    nop                                           ; $4EB0: $00
    nop                                           ; $4EB1: $00
    nop                                           ; $4EB2: $00
    nop                                           ; $4EB3: $00
    nop                                           ; $4EB4: $00
    nop                                           ; $4EB5: $00
    nop                                           ; $4EB6: $00
    nop                                           ; $4EB7: $00
    nop                                           ; $4EB8: $00
    nop                                           ; $4EB9: $00
    nop                                           ; $4EBA: $00
    nop                                           ; $4EBB: $00
    nop                                           ; $4EBC: $00
    nop                                           ; $4EBD: $00
    nop                                           ; $4EBE: $00
    nop                                           ; $4EBF: $00
    nop                                           ; $4EC0: $00
    nop                                           ; $4EC1: $00
    nop                                           ; $4EC2: $00
    nop                                           ; $4EC3: $00
    nop                                           ; $4EC4: $00
    nop                                           ; $4EC5: $00
    nop                                           ; $4EC6: $00
    nop                                           ; $4EC7: $00
    ret nz                                        ; $4EC8: $C0

    nop                                           ; $4EC9: $00
    ldh a, [rP1]                                  ; $4ECA: $F0 $00
    ld hl, sp+$00                                 ; $4ECC: $F8 $00
    ld hl, sp+$00                                 ; $4ECE: $F8 $00
    db $FC                                        ; $4ED0: $FC
    nop                                           ; $4ED1: $00
    cp $00                                        ; $4ED2: $FE $00
    rst RST_38                                    ; $4ED4: $FF
    nop                                           ; $4ED5: $00
    rst RST_38                                    ; $4ED6: $FF
    nop                                           ; $4ED7: $00
    rst RST_38                                    ; $4ED8: $FF
    nop                                           ; $4ED9: $00
    rst RST_38                                    ; $4EDA: $FF
    nop                                           ; $4EDB: $00
    ccf                                           ; $4EDC: $3F
    nop                                           ; $4EDD: $00
    rlca                                          ; $4EDE: $07
    nop                                           ; $4EDF: $00
    add b                                         ; $4EE0: $80
    nop                                           ; $4EE1: $00
    ret nz                                        ; $4EE2: $C0

    nop                                           ; $4EE3: $00
    ldh [rP1], a                                  ; $4EE4: $E0 $00
    ldh a, [rP1]                                  ; $4EE6: $F0 $00
    ld hl, sp+$00                                 ; $4EE8: $F8 $00
    db $FC                                        ; $4EEA: $FC
    nop                                           ; $4EEB: $00
    inc e                                         ; $4EEC: $1C
    nop                                           ; $4EED: $00
    nop                                           ; $4EEE: $00
    nop                                           ; $4EEF: $00
    nop                                           ; $4EF0: $00
    nop                                           ; $4EF1: $00
    nop                                           ; $4EF2: $00
    nop                                           ; $4EF3: $00
    nop                                           ; $4EF4: $00
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
    ret nz                                        ; $4F00: $C0

    ld a, a                                       ; $4F01: $7F
    ret nz                                        ; $4F02: $C0

    ld a, a                                       ; $4F03: $7F
    ret nz                                        ; $4F04: $C0

    ld a, a                                       ; $4F05: $7F
    ret nz                                        ; $4F06: $C0

    ld a, a                                       ; $4F07: $7F
    ret nz                                        ; $4F08: $C0

    ld a, a                                       ; $4F09: $7F
    ret nz                                        ; $4F0A: $C0

    ld a, a                                       ; $4F0B: $7F
    ret nz                                        ; $4F0C: $C0

    ld a, a                                       ; $4F0D: $7F
    ret nz                                        ; $4F0E: $C0

    ld a, a                                       ; $4F0F: $7F
    ret nz                                        ; $4F10: $C0

    ld a, a                                       ; $4F11: $7F
    ret nz                                        ; $4F12: $C0

    ld a, a                                       ; $4F13: $7F
    ret nz                                        ; $4F14: $C0

    ld a, a                                       ; $4F15: $7F
    ret nz                                        ; $4F16: $C0

    ld a, a                                       ; $4F17: $7F
    ret nz                                        ; $4F18: $C0

    ld a, a                                       ; $4F19: $7F
    ret nz                                        ; $4F1A: $C0

    ld a, a                                       ; $4F1B: $7F
    ret nz                                        ; $4F1C: $C0

    ld a, a                                       ; $4F1D: $7F
    ret nz                                        ; $4F1E: $C0

    ld a, a                                       ; $4F1F: $7F
    di                                            ; $4F20: $F3
    db $ED                                        ; $4F21: $ED
    ld [hl], a                                    ; $4F22: $77
    add sp, $3F                                   ; $4F23: $E8 $3F
    ldh a, [rNR23]                                ; $4F25: $F0 $18
    rst RST_30                                    ; $4F27: $F7
    inc c                                         ; $4F28: $0C
    ei                                            ; $4F29: $FB
    rlca                                          ; $4F2A: $07
    db $FC                                        ; $4F2B: $FC
    add e                                         ; $4F2C: $83
    rst RST_38                                    ; $4F2D: $FF
    ld h, c                                       ; $4F2E: $61
    rst RST_38                                    ; $4F2F: $FF
    ld a, b                                       ; $4F30: $78
    rst RST_38                                    ; $4F31: $FF
    inc a                                         ; $4F32: $3C
    rst RST_38                                    ; $4F33: $FF
    rra                                           ; $4F34: $1F
    di                                            ; $4F35: $F3
    rrca                                          ; $4F36: $0F
    ld hl, sp+$07                                 ; $4F37: $F8 $07
    db $FC                                        ; $4F39: $FC
    inc bc                                        ; $4F3A: $03
    cp $01                                        ; $4F3B: $FE $01
    rst RST_38                                    ; $4F3D: $FF
    nop                                           ; $4F3E: $00
    rst RST_38                                    ; $4F3F: $FF
    rst RST_38                                    ; $4F40: $FF
    ld a, [hl]                                    ; $4F41: $7E
    rst RST_38                                    ; $4F42: $FF
    db $FC                                        ; $4F43: $FC
    rst RST_38                                    ; $4F44: $FF
    inc bc                                        ; $4F45: $03
    rst RST_38                                    ; $4F46: $FF
    ld a, $3F                                     ; $4F47: $3E $3F
    ret nz                                        ; $4F49: $C0

    cpl                                           ; $4F4A: $2F
    rst RST_18                                    ; $4F4B: $DF
    xor a                                         ; $4F4C: $AF
    ld e, [hl]                                    ; $4F4D: $5E
    xor [hl]                                      ; $4F4E: $AE
    ld e, l                                       ; $4F4F: $5D
    db $FC                                        ; $4F50: $FC
    cp e                                          ; $4F51: $BB
    ld a, h                                       ; $4F52: $7C
    db $D3                                        ; $4F53: $D3
    ld [hl-], a                                   ; $4F54: $32
    pop hl                                        ; $4F55: $E1
    sbc c                                         ; $4F56: $99
    ldh a, [$FFEC]                                ; $4F57: $F0 $EC
    ld a, b                                       ; $4F59: $78
    or $1C                                        ; $4F5A: $F6 $1C
    ei                                            ; $4F5C: $FB
    ld c, $FF                                     ; $4F5D: $0E $FF
    add e                                         ; $4F5F: $83
    rst RST_38                                    ; $4F60: $FF
    ld a, a                                       ; $4F61: $7F
    rst RST_38                                    ; $4F62: $FF
    rra                                           ; $4F63: $1F
    sbc a                                         ; $4F64: $9F
    rrca                                          ; $4F65: $0F
    rrca                                          ; $4F66: $0F
    rlca                                          ; $4F67: $07
    add a                                         ; $4F68: $87
    inc bc                                        ; $4F69: $03
    rst RST_00                                    ; $4F6A: $C7
    add e                                         ; $4F6B: $83
    jp $2301                                      ; $4F6C: $C3 $01 $23


    pop bc                                        ; $4F6F: $C1
    daa                                           ; $4F70: $27
    ret nz                                        ; $4F71: $C0

    rra                                           ; $4F72: $1F
    rst RST_20                                    ; $4F73: $E7
    rra                                           ; $4F74: $1F
    rst RST_28                                    ; $4F75: $EF
    rra                                           ; $4F76: $1F
    rst RST_28                                    ; $4F77: $EF
    rst RST_38                                    ; $4F78: $FF
    rra                                           ; $4F79: $1F
    ld a, b                                       ; $4F7A: $78
    ccf                                           ; $4F7B: $3F
    ld b, c                                       ; $4F7C: $41
    ld a, $FE                                     ; $4F7D: $3E $FE
    nop                                           ; $4F7F: $00
    ldh a, [$FF60]                                ; $4F80: $F0 $60
    ldh a, [$FF60]                                ; $4F82: $F0 $60
    ldh a, [$FFA0]                                ; $4F84: $F0 $A0
    ldh a, [$FFA0]                                ; $4F86: $F0 $A0
    ldh [$FF80], a                                ; $4F88: $E0 $80
    ret nz                                        ; $4F8A: $C0

    add b                                         ; $4F8B: $80
    ret nz                                        ; $4F8C: $C0

    add b                                         ; $4F8D: $80
    adc [hl]                                      ; $4F8E: $8E
    nop                                           ; $4F8F: $00
    rra                                           ; $4F90: $1F
    ld c, $FF                                     ; $4F91: $0E $FF
    ld e, $FF                                     ; $4F93: $1E $FF
    rst RST_38                                    ; $4F95: $FF
    rst RST_18                                    ; $4F96: $DF
    rst RST_20                                    ; $4F97: $E7
    daa                                           ; $4F98: $27
    jp nz, $01C6                                  ; $4F99: $C2 $C6 $01

    ld [$0F07], sp                                ; $4F9C: $08 $07 $0F
    nop                                           ; $4F9F: $00
    add b                                         ; $4FA0: $80
    nop                                           ; $4FA1: $00
    add b                                         ; $4FA2: $80
    nop                                           ; $4FA3: $00
    ld b, b                                       ; $4FA4: $40
    add b                                         ; $4FA5: $80
    ld b, b                                       ; $4FA6: $40
    add b                                         ; $4FA7: $80
    ld b, b                                       ; $4FA8: $40
    add b                                         ; $4FA9: $80
    add b                                         ; $4FAA: $80
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
    nop                                           ; $4FCA: $00
    nop                                           ; $4FCB: $00
    add b                                         ; $4FCC: $80
    nop                                           ; $4FCD: $00
    ret nz                                        ; $4FCE: $C0

    nop                                           ; $4FCF: $00
    ldh [rLCDC], a                                ; $4FD0: $E0 $40
    ldh a, [$FF60]                                ; $4FD2: $F0 $60
    ld hl, sp+$70                                 ; $4FD4: $F8 $70
    call c, $CE78                                 ; $4FD6: $DC $78 $CE
    ld a, h                                       ; $4FD9: $7C
    rst RST_00                                    ; $4FDA: $C7
    ld a, [hl]                                    ; $4FDB: $7E
    jp $C17F                                      ; $4FDC: $C3 $7F $C1


    ld a, a                                       ; $4FDF: $7F
    nop                                           ; $4FE0: $00
    nop                                           ; $4FE1: $00
    nop                                           ; $4FE2: $00
    nop                                           ; $4FE3: $00
    nop                                           ; $4FE4: $00
    nop                                           ; $4FE5: $00
    nop                                           ; $4FE6: $00
    nop                                           ; $4FE7: $00
    nop                                           ; $4FE8: $00
    nop                                           ; $4FE9: $00
    inc bc                                        ; $4FEA: $03
    nop                                           ; $4FEB: $00
    rlca                                          ; $4FEC: $07
    nop                                           ; $4FED: $00
    rlca                                          ; $4FEE: $07
    ld [bc], a                                    ; $4FEF: $02
    rlca                                          ; $4FF0: $07
    ld [bc], a                                    ; $4FF1: $02
    rlca                                          ; $4FF2: $07
    nop                                           ; $4FF3: $00
    rrca                                          ; $4FF4: $0F
    ld bc, $0E11                                  ; $4FF5: $01 $11 $0E
    ld l, $1B                                     ; $4FF8: $2E $1B
    ccf                                           ; $4FFA: $3F
    ld de, $0EB1                                  ; $4FFB: $11 $B1 $0E
    pop hl                                        ; $4FFE: $E1
    sbc [hl]                                      ; $4FFF: $9E
    nop                                           ; $5000: $00
    nop                                           ; $5001: $00
    nop                                           ; $5002: $00
    nop                                           ; $5003: $00
    nop                                           ; $5004: $00
    nop                                           ; $5005: $00
    nop                                           ; $5006: $00
    nop                                           ; $5007: $00
    nop                                           ; $5008: $00
    nop                                           ; $5009: $00
    ldh a, [rP1]                                  ; $500A: $F0 $00
    ld [$05F0], sp                                ; $500C: $08 $F0 $05
    ld hl, sp-$19                                 ; $500F: $F8 $E7
    jr c, @+$6E                                   ; $5011: $38 $6C

    or e                                          ; $5013: $B3
    ldh a, [$FF2F]                                ; $5014: $F0 $2F
    rst RST_20                                    ; $5016: $E7
    rra                                           ; $5017: $1F
    rst RST_38                                    ; $5018: $FF
    cpl                                           ; $5019: $2F
    ld a, a                                       ; $501A: $7F
    xor a                                         ; $501B: $AF
    rst RST_38                                    ; $501C: $FF
    or a                                          ; $501D: $B7
    rst RST_38                                    ; $501E: $FF
    cp c                                          ; $501F: $B9
    nop                                           ; $5020: $00
    nop                                           ; $5021: $00
    nop                                           ; $5022: $00
    nop                                           ; $5023: $00
    nop                                           ; $5024: $00
    nop                                           ; $5025: $00
    nop                                           ; $5026: $00
    nop                                           ; $5027: $00
    nop                                           ; $5028: $00
    nop                                           ; $5029: $00
    nop                                           ; $502A: $00
    nop                                           ; $502B: $00
    ldh a, [rP1]                                  ; $502C: $F0 $00
    inc e                                         ; $502E: $1C
    ldh a, [$FFFE]                                ; $502F: $F0 $FE
    inc a                                         ; $5031: $3C
    ccf                                           ; $5032: $3F
    adc $0F                                       ; $5033: $CE $0F
    rst RST_30                                    ; $5035: $F7
    rst RST_20                                    ; $5036: $E7
    ei                                            ; $5037: $FB
    ei                                            ; $5038: $FB
    db $FD                                        ; $5039: $FD
    rst RST_38                                    ; $503A: $FF
    db $FD                                        ; $503B: $FD
    db $FD                                        ; $503C: $FD
    cp $FF                                        ; $503D: $FE $FF
    cp $00                                        ; $503F: $FE $00
    nop                                           ; $5041: $00
    nop                                           ; $5042: $00
    nop                                           ; $5043: $00
    nop                                           ; $5044: $00
    nop                                           ; $5045: $00
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
    add b                                         ; $5054: $80
    nop                                           ; $5055: $00
    ret nz                                        ; $5056: $C0

    add b                                         ; $5057: $80
    ret nz                                        ; $5058: $C0

    add b                                         ; $5059: $80
    ldh [$FFC0], a                                ; $505A: $E0 $C0
    ldh [$FFC0], a                                ; $505C: $E0 $C0
    ldh a, [$FFE0]                                ; $505E: $F0 $E0
    jr nc, jr_023_5081                            ; $5060: $30 $1F

    inc sp                                        ; $5062: $33
    inc e                                         ; $5063: $1C
    inc [hl]                                      ; $5064: $34
    dec de                                        ; $5065: $1B
    add hl, sp                                    ; $5066: $39
    rla                                           ; $5067: $17
    inc sp                                        ; $5068: $33
    ld c, $26                                     ; $5069: $0E $26
    dec e                                         ; $506B: $1D
    ld l, $1D                                     ; $506C: $2E $1D
    ld c, h                                       ; $506E: $4C
    dec sp                                        ; $506F: $3B
    ld e, h                                       ; $5070: $5C
    dec sp                                        ; $5071: $3B
    cp c                                          ; $5072: $B9
    ld [hl], a                                    ; $5073: $77
    cp c                                          ; $5074: $B9
    ld [hl], a                                    ; $5075: $77
    cp e                                          ; $5076: $BB
    ld [hl], a                                    ; $5077: $77
    di                                            ; $5078: $F3
    ld l, a                                       ; $5079: $6F
    ld [hl], a                                    ; $507A: $77
    ld l, $76                                     ; $507B: $2E $76
    dec l                                         ; $507D: $2D
    ld a, $0D                                     ; $507E: $3E $0D
    rst RST_38                                    ; $5080: $FF

jr_023_5081:
    ld a, [bc]                                    ; $5081: $0A
    rrca                                          ; $5082: $0F
    or $7F                                        ; $5083: $F6 $7F
    ret nz                                        ; $5085: $C0

    ret nz                                        ; $5086: $C0

    ccf                                           ; $5087: $3F
    nop                                           ; $5088: $00
    rst RST_38                                    ; $5089: $FF
    inc bc                                        ; $508A: $03
    rst RST_38                                    ; $508B: $FF
    rra                                           ; $508C: $1F
    rst RST_38                                    ; $508D: $FF
    ld a, a                                       ; $508E: $7F
    rst RST_38                                    ; $508F: $FF

jr_023_5090:
    rst RST_38                                    ; $5090: $FF
    cp $FF                                        ; $5091: $FE $FF
    ld hl, sp-$01                                 ; $5093: $F8 $FF
    rst RST_20                                    ; $5095: $E7
    rst RST_28                                    ; $5096: $EF
    sub c                                         ; $5097: $91
    adc a                                         ; $5098: $8F
    ld [hl], d                                    ; $5099: $72

jr_023_509A:
    rrca                                          ; $509A: $0F
    push af                                       ; $509B: $F5
    rrca                                          ; $509C: $0F
    or $17                                        ; $509D: $F6 $17
    ld [$FC02], a                                 ; $509F: $EA $02 $FC
    ld [bc], a                                    ; $50A2: $02
    db $FC                                        ; $50A3: $FC
    jp nz, Jump_023_423C                          ; $50A4: $C2 $3C $42

    cp h                                          ; $50A7: $BC
    ld b, a                                       ; $50A8: $47
    cp b                                          ; $50A9: $B8
    ld hl, sp-$79                                 ; $50AA: $F8 $87
    db $FC                                        ; $50AC: $FC
    ld l, a                                       ; $50AD: $6F
    cp $5F                                        ; $50AE: $FE $5F
    rst RST_38                                    ; $50B0: $FF
    sbc $FE                                       ; $50B1: $DE $FE
    call $D2ED                                    ; $50B3: $CD $ED $D2
    jp $DFBC                                      ; $50B6: $C3 $BC $DF


    inc hl                                        ; $50B9: $23
    rst RST_38                                    ; $50BA: $FF
    adc a                                         ; $50BB: $8F
    cp b                                          ; $50BC: $B8
    ld e, a                                       ; $50BD: $5F
    or b                                          ; $50BE: $B0
    rst RST_18                                    ; $50BF: $DF
    nop                                           ; $50C0: $00
    nop                                           ; $50C1: $00
    nop                                           ; $50C2: $00
    nop                                           ; $50C3: $00
    nop                                           ; $50C4: $00
    nop                                           ; $50C5: $00
    nop                                           ; $50C6: $00
    nop                                           ; $50C7: $00
    nop                                           ; $50C8: $00
    nop                                           ; $50C9: $00

jr_023_50CA:
    add b                                         ; $50CA: $80
    nop                                           ; $50CB: $00
    ld b, b                                       ; $50CC: $40
    add b                                         ; $50CD: $80
    jr nz, jr_023_5090                            ; $50CE: $20 $C0

    sub b                                         ; $50D0: $90
    ld h, b                                       ; $50D1: $60

jr_023_50D2:
    ldh a, [rNR41]                                ; $50D2: $F0 $20

jr_023_50D4:
    ldh [rLCDC], a                                ; $50D4: $E0 $40
    ret nz                                        ; $50D6: $C0

    nop                                           ; $50D7: $00
    jr nz, jr_023_509A                            ; $50D8: $20 $C0

    ret nc                                        ; $50DA: $D0

    ldh [$FFEC], a                                ; $50DB: $E0 $EC
    ldh a, [$FF5F]                                ; $50DD: $F0 $5F
    db $FC                                        ; $50DF: $FC
    ld h, b                                       ; $50E0: $60
    ccf                                           ; $50E1: $3F
    ld h, b                                       ; $50E2: $60
    ccf                                           ; $50E3: $3F
    ld h, b                                       ; $50E4: $60
    ccf                                           ; $50E5: $3F
    ld h, b                                       ; $50E6: $60
    ccf                                           ; $50E7: $3F
    ld h, b                                       ; $50E8: $60
    ccf                                           ; $50E9: $3F
    ld b, b                                       ; $50EA: $40
    ccf                                           ; $50EB: $3F

jr_023_50EC:
    ld b, b                                       ; $50EC: $40
    ccf                                           ; $50ED: $3F

jr_023_50EE:
    ret nz                                        ; $50EE: $C0

    ld a, a                                       ; $50EF: $7F

jr_023_50F0:
    ret nz                                        ; $50F0: $C0

    ld a, a                                       ; $50F1: $7F
    jp nz, $C27D                                  ; $50F2: $C2 $7D $C2

    ld a, l                                       ; $50F5: $7D
    pop bc                                        ; $50F6: $C1
    ld a, [hl]                                    ; $50F7: $7E
    pop bc                                        ; $50F8: $C1
    ld a, [hl]                                    ; $50F9: $7E
    ret nz                                        ; $50FA: $C0

    ld a, a                                       ; $50FB: $7F
    ret nz                                        ; $50FC: $C0

    ld a, a                                       ; $50FD: $7F
    ret nz                                        ; $50FE: $C0

    ld a, a                                       ; $50FF: $7F
    ld b, b                                       ; $5100: $40
    add b                                         ; $5101: $80
    ld b, b                                       ; $5102: $40
    add b                                         ; $5103: $80
    ld h, b                                       ; $5104: $60
    ret nz                                        ; $5105: $C0

    ld h, b                                       ; $5106: $60
    ret nz                                        ; $5107: $C0

    jr nz, jr_023_50CA                            ; $5108: $20 $C0

    jr nc, jr_023_50EC                            ; $510A: $30 $E0

    jr nc, jr_023_50EE                            ; $510C: $30 $E0

    jr nc, jr_023_50F0                            ; $510E: $30 $E0

    jr nc, jr_023_50D2                            ; $5110: $30 $C0

    jr nc, jr_023_50D4                            ; $5112: $30 $C0

    ld e, $E0                                     ; $5114: $1E $E0
    inc hl                                        ; $5116: $23
    sbc $41                                       ; $5117: $DE $41
    cp a                                          ; $5119: $BF
    pop bc                                        ; $511A: $C1
    ld a, $C2                                     ; $511B: $3E $C2
    dec a                                         ; $511D: $3D
    ld l, [hl]                                    ; $511E: $6E
    or c                                          ; $511F: $B1
    nop                                           ; $5120: $00
    nop                                           ; $5121: $00
    nop                                           ; $5122: $00
    nop                                           ; $5123: $00
    nop                                           ; $5124: $00
    nop                                           ; $5125: $00
    nop                                           ; $5126: $00
    nop                                           ; $5127: $00
    nop                                           ; $5128: $00
    nop                                           ; $5129: $00
    nop                                           ; $512A: $00
    nop                                           ; $512B: $00
    nop                                           ; $512C: $00
    nop                                           ; $512D: $00
    nop                                           ; $512E: $00
    nop                                           ; $512F: $00
    nop                                           ; $5130: $00
    nop                                           ; $5131: $00
    nop                                           ; $5132: $00
    nop                                           ; $5133: $00
    nop                                           ; $5134: $00
    nop                                           ; $5135: $00
    nop                                           ; $5136: $00
    nop                                           ; $5137: $00
    add b                                         ; $5138: $80
    nop                                           ; $5139: $00
    ldh [rP1], a                                  ; $513A: $E0 $00
    db $10                                        ; $513C: $10
    ldh [rNR10], a                                ; $513D: $E0 $10
    ldh [rP1], a                                  ; $513F: $E0 $00
    nop                                           ; $5141: $00
    nop                                           ; $5142: $00
    nop                                           ; $5143: $00
    nop                                           ; $5144: $00
    nop                                           ; $5145: $00
    stop                                          ; $5146: $10 $00
    jr jr_023_514A                                ; $5148: $18 $00

jr_023_514A:
    jr c, jr_023_515C                             ; $514A: $38 $10

    inc l                                         ; $514C: $2C
    jr jr_023_517B                                ; $514D: $18 $2C

    jr jr_023_51BD                                ; $514F: $18 $6C

    jr c, @+$46                                   ; $5151: $38 $44

    jr c, jr_023_519B                             ; $5153: $38 $46

    inc a                                         ; $5155: $3C
    add $7C                                       ; $5156: $C6 $7C
    jp nz, $C27C                                  ; $5158: $C2 $7C $C2

    ld a, h                                       ; $515B: $7C

jr_023_515C:
    add e                                         ; $515C: $83
    ld a, [hl]                                    ; $515D: $7E
    add e                                         ; $515E: $83
    ld a, [hl]                                    ; $515F: $7E
    ldh a, [$FF2F]                                ; $5160: $F0 $2F
    ldh a, [$FF2F]                                ; $5162: $F0 $2F
    ldh a, [$FF2F]                                ; $5164: $F0 $2F
    ldh a, [rVBK]                                 ; $5166: $F0 $4F
    ret nz                                        ; $5168: $C0

    ld a, a                                       ; $5169: $7F
    jp nz, $C27F                                  ; $516A: $C2 $7F $C2

    ld a, a                                       ; $516D: $7F
    rst RST_10                                    ; $516E: $D7
    ld a, a                                       ; $516F: $7F
    rst RST_10                                    ; $5170: $D7
    ld a, a                                       ; $5171: $7F
    rst RST_18                                    ; $5172: $DF
    ld a, a                                       ; $5173: $7F
    rst RST_38                                    ; $5174: $FF
    ld a, a                                       ; $5175: $7F
    rst RST_38                                    ; $5176: $FF
    ld a, a                                       ; $5177: $7F
    rst RST_38                                    ; $5178: $FF
    ld a, [hl]                                    ; $5179: $7E
    rst RST_38                                    ; $517A: $FF

jr_023_517B:
    ld a, [hl]                                    ; $517B: $7E
    rst RST_38                                    ; $517C: $FF
    ld a, [hl]                                    ; $517D: $7E
    rst RST_38                                    ; $517E: $FF
    ld a, h                                       ; $517F: $7C
    ld e, l                                       ; $5180: $5D
    xor e                                         ; $5181: $AB
    ld e, l                                       ; $5182: $5D
    xor e                                         ; $5183: $AB
    call $C7B3                                    ; $5184: $CD $B3 $C7
    cp e                                          ; $5187: $BB
    rst RST_20                                    ; $5188: $E7
    reti                                          ; $5189: $D9


    push hl                                       ; $518A: $E5
    ret c                                         ; $518B: $D8

    sbc $A4                                       ; $518C: $DE $A4
    sbc a                                         ; $518E: $9F
    ld a, [hl]                                    ; $518F: $7E
    sbc a                                         ; $5190: $9F
    ld a, [hl]                                    ; $5191: $7E
    sbc a                                         ; $5192: $9F
    ld a, [hl]                                    ; $5193: $7E
    adc $7C                                       ; $5194: $CE $7C
    xor $BC                                       ; $5196: $EE $BC
    db $FC                                        ; $5198: $FC
    sbc b                                         ; $5199: $98
    db $FC                                        ; $519A: $FC

jr_023_519B:
    sbc b                                         ; $519B: $98
    db $FC                                        ; $519C: $FC

jr_023_519D:
    jr jr_023_519D                                ; $519D: $18 $FE

    inc h                                         ; $519F: $24
    cp $E1                                        ; $51A0: $FE $E1
    ei                                            ; $51A2: $FB
    db $F4                                        ; $51A3: $F4
    xor $BB                                       ; $51A4: $EE $BB
    pop af                                        ; $51A6: $F1
    sbc a                                         ; $51A7: $9F
    rst RST_38                                    ; $51A8: $FF
    ld h, d                                       ; $51A9: $62
    ld a, [$7F75]                                 ; $51AA: $FA $75 $7F

jr_023_51AD:
    ld a, $3F                                     ; $51AD: $3E $3F
    ld bc, $183D                                  ; $51AF: $01 $3D $18
    ld a, h                                       ; $51B2: $7C
    jr c, jr_023_51AD                             ; $51B3: $38 $F8

    ld [hl], b                                    ; $51B5: $70
    ld hl, sp+$10                                 ; $51B6: $F8 $10
    ld a, h                                       ; $51B8: $7C
    ld [$087C], sp                                ; $51B9: $08 $7C $08
    inc a                                         ; $51BC: $3C

jr_023_51BD:
    nop                                           ; $51BD: $00
    inc h                                         ; $51BE: $24
    jr jr_023_51CF                                ; $51BF: $18 $0E

    db $FC                                        ; $51C1: $FC
    ld h, e                                       ; $51C2: $63
    cp $BB                                        ; $51C3: $FE $BB
    xor $FF                                       ; $51C5: $EE $FF
    db $EC                                        ; $51C7: $EC
    rst RST_38                                    ; $51C8: $FF
    ld a, [$14EE]                                 ; $51C9: $FA $EE $14
    cp [hl]                                       ; $51CC: $BE
    ld c, h                                       ; $51CD: $4C
    db $FC                                        ; $51CE: $FC

jr_023_51CF:
    ldh a, [$FFF0]                                ; $51CF: $F0 $F0
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
    nop                                           ; $51DF: $00
    rst RST_38                                    ; $51E0: $FF
    ld [hl], h                                    ; $51E1: $74
    rst RST_38                                    ; $51E2: $FF
    ld [hl], b                                    ; $51E3: $70
    rst RST_38                                    ; $51E4: $FF
    ld h, b                                       ; $51E5: $60
    rst RST_38                                    ; $51E6: $FF
    jr nz, @+$01                                  ; $51E7: $20 $FF

    jr nz, @+$01                                  ; $51E9: $20 $FF

    nop                                           ; $51EB: $00
    cp $00                                        ; $51EC: $FE $00
    ld a, [$F800]                                 ; $51EE: $FA $00 $F8
    nop                                           ; $51F1: $00
    ld hl, sp+$00                                 ; $51F2: $F8 $00
    add sp, $00                                   ; $51F4: $E8 $00
    ldh [rP1], a                                  ; $51F6: $E0 $00
    ret nz                                        ; $51F8: $C0

    nop                                           ; $51F9: $00
    ret nz                                        ; $51FA: $C0

    nop                                           ; $51FB: $00
    add b                                         ; $51FC: $80
    nop                                           ; $51FD: $00
    nop                                           ; $51FE: $00
    nop                                           ; $51FF: $00
    cp $00                                        ; $5200: $FE $00
    cp $00                                        ; $5202: $FE $00
    cp $00                                        ; $5204: $FE $00
    cp $00                                        ; $5206: $FE $00
    cp $00                                        ; $5208: $FE $00
    ld [$FA14], a                                 ; $520A: $EA $14 $FA
    inc b                                         ; $520D: $04
    and $00                                       ; $520E: $E6 $00
    ld b, b                                       ; $5210: $40
    nop                                           ; $5211: $00
    ld b, b                                       ; $5212: $40
    nop                                           ; $5213: $00
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
    inc d                                         ; $5220: $14
    ld [$0814], sp                                ; $5221: $08 $14 $08
    inc c                                         ; $5224: $0C
    nop                                           ; $5225: $00
    nop                                           ; $5226: $00
    nop                                           ; $5227: $00
    nop                                           ; $5228: $00
    nop                                           ; $5229: $00
    nop                                           ; $522A: $00
    nop                                           ; $522B: $00
    nop                                           ; $522C: $00
    nop                                           ; $522D: $00
    nop                                           ; $522E: $00
    nop                                           ; $522F: $00
    nop                                           ; $5230: $00
    nop                                           ; $5231: $00
    nop                                           ; $5232: $00
    nop                                           ; $5233: $00
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
    inc b                                         ; $5240: $04
    inc bc                                        ; $5241: $03
    dec bc                                        ; $5242: $0B
    rlca                                          ; $5243: $07
    rra                                           ; $5244: $1F
    ld c, $2E                                     ; $5245: $0E $2E
    dec e                                         ; $5247: $1D
    ld a, $1D                                     ; $5248: $3E $1D
    ld a, l                                       ; $524A: $7D
    dec sp                                        ; $524B: $3B
    ld a, a                                       ; $524C: $7F
    dec sp                                        ; $524D: $3B
    ei                                            ; $524E: $FB
    ld [hl], a                                    ; $524F: $77
    rst RST_38                                    ; $5250: $FF
    ld [hl], a                                    ; $5251: $77
    rst RST_38                                    ; $5252: $FF
    ld [hl], a                                    ; $5253: $77
    rst RST_38                                    ; $5254: $FF
    ld l, a                                       ; $5255: $6F
    ld a, a                                       ; $5256: $7F
    ld l, $7E                                     ; $5257: $2E $7E
    inc l                                         ; $5259: $2C
    ld a, $0C                                     ; $525A: $3E $0C
    inc e                                         ; $525C: $1C
    ld [$081C], sp                                ; $525D: $08 $1C $08
    rst RST_38                                    ; $5260: $FF
    ret nz                                        ; $5261: $C0

    ret nz                                        ; $5262: $C0

    ccf                                           ; $5263: $3F
    nop                                           ; $5264: $00
    rst RST_38                                    ; $5265: $FF
    ld a, $FF                                     ; $5266: $3E $FF
    rst RST_38                                    ; $5268: $FF
    rst RST_38                                    ; $5269: $FF
    rst RST_38                                    ; $526A: $FF
    rst RST_38                                    ; $526B: $FF

jr_023_526C:
    rst RST_38                                    ; $526C: $FF
    cp $FF                                        ; $526D: $FE $FF
    ld hl, sp-$01                                 ; $526F: $F8 $FF
    rst RST_20                                    ; $5271: $E7
    rst RST_28                                    ; $5272: $EF
    add c                                         ; $5273: $81
    add a                                         ; $5274: $87
    ld [bc], a                                    ; $5275: $02

jr_023_5276:
    rrca                                          ; $5276: $0F
    dec b                                         ; $5277: $05
    rrca                                          ; $5278: $0F
    ld b, $17                                     ; $5279: $06 $17
    ld a, [bc]                                    ; $527B: $0A
    rla                                           ; $527C: $17
    ld a, [bc]                                    ; $527D: $0A
    rla                                           ; $527E: $17
    ld a, [bc]                                    ; $527F: $0A
    jp nz, Jump_023_423C                          ; $5280: $C2 $3C $42

    cp h                                          ; $5283: $BC
    ld b, a                                       ; $5284: $47
    cp b                                          ; $5285: $B8
    ld a, b                                       ; $5286: $78
    add a                                         ; $5287: $87
    db $FC                                        ; $5288: $FC
    ld l, a                                       ; $5289: $6F
    cp $5F                                        ; $528A: $FE $5F
    rst RST_38                                    ; $528C: $FF
    sbc $FE                                       ; $528D: $DE $FE
    call $D2ED                                    ; $528F: $CD $ED $D2
    jp $DFBC                                      ; $5292: $C3 $BC $DF


    inc hl                                        ; $5295: $23
    rst RST_38                                    ; $5296: $FF
    adc a                                         ; $5297: $8F
    cp b                                          ; $5298: $B8
    ld e, a                                       ; $5299: $5F
    or b                                          ; $529A: $B0
    rst RST_18                                    ; $529B: $DF
    ld a, a                                       ; $529C: $7F
    ld hl, sp+$7E                                 ; $529D: $F8 $7E
    db $FD                                        ; $529F: $FD
    nop                                           ; $52A0: $00
    nop                                           ; $52A1: $00
    nop                                           ; $52A2: $00
    nop                                           ; $52A3: $00
    nop                                           ; $52A4: $00
    nop                                           ; $52A5: $00
    add b                                         ; $52A6: $80
    nop                                           ; $52A7: $00
    ld b, b                                       ; $52A8: $40
    add b                                         ; $52A9: $80
    jr nz, jr_023_526C                            ; $52AA: $20 $C0

    sub b                                         ; $52AC: $90
    ld h, b                                       ; $52AD: $60
    ldh a, [rNR41]                                ; $52AE: $F0 $20
    ldh [rLCDC], a                                ; $52B0: $E0 $40
    ret nz                                        ; $52B2: $C0

    nop                                           ; $52B3: $00
    jr nz, jr_023_5276                            ; $52B4: $20 $C0

    ret nc                                        ; $52B6: $D0

    ldh [$FFEC], a                                ; $52B7: $E0 $EC
    ldh a, [$FF5F]                                ; $52B9: $F0 $5F
    db $FC                                        ; $52BB: $FC
    add e                                         ; $52BC: $83
    ld a, a                                       ; $52BD: $7F
    ret c                                         ; $52BE: $D8

    ccf                                           ; $52BF: $3F
    add b                                         ; $52C0: $80
    nop                                           ; $52C1: $00
    ret nz                                        ; $52C2: $C0

    add b                                         ; $52C3: $80
    nop                                           ; $52C4: $00
    nop                                           ; $52C5: $00
    nop                                           ; $52C6: $00
    nop                                           ; $52C7: $00

jr_023_52C8:
    nop                                           ; $52C8: $00
    nop                                           ; $52C9: $00

jr_023_52CA:
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
    ld a, b                                       ; $52E0: $78
    ccf                                           ; $52E1: $3F
    ld h, b                                       ; $52E2: $60
    ccf                                           ; $52E3: $3F
    rst RST_38                                    ; $52E4: $FF
    ld a, a                                       ; $52E5: $7F
    cp $7F                                        ; $52E6: $FE $7F
    ld hl, sp+$7F                                 ; $52E8: $F8 $7F
    rst RST_38                                    ; $52EA: $FF
    ld a, a                                       ; $52EB: $7F
    rst RST_38                                    ; $52EC: $FF
    nop                                           ; $52ED: $00
    inc b                                         ; $52EE: $04
    inc bc                                        ; $52EF: $03
    inc b                                         ; $52F0: $04
    inc bc                                        ; $52F1: $03
    ld [bc], a                                    ; $52F2: $02
    ld bc, $0102                                  ; $52F3: $01 $02 $01
    ld bc, $0100                                  ; $52F6: $01 $00 $01
    nop                                           ; $52F9: $00

jr_023_52FA:
    nop                                           ; $52FA: $00
    nop                                           ; $52FB: $00

jr_023_52FC:
    rlca                                          ; $52FC: $07
    nop                                           ; $52FD: $00
    jr @+$09                                      ; $52FE: $18 $07

    ld b, b                                       ; $5300: $40
    add b                                         ; $5301: $80
    ld b, b                                       ; $5302: $40
    add b                                         ; $5303: $80
    ld b, b                                       ; $5304: $40
    add b                                         ; $5305: $80
    jr nz, jr_023_52C8                            ; $5306: $20 $C0

    jr nz, jr_023_52CA                            ; $5308: $20 $C0

    ldh [$FFC0], a                                ; $530A: $E0 $C0
    ldh [rP1], a                                  ; $530C: $E0 $00
    ld b, b                                       ; $530E: $40
    add b                                         ; $530F: $80
    inc a                                         ; $5310: $3C
    ret nz                                        ; $5311: $C0

    ld b, [hl]                                    ; $5312: $46
    cp h                                          ; $5313: $BC
    jp $E37E                                      ; $5314: $C3 $7E $E3


    ld a, h                                       ; $5317: $7C
    db $E4                                        ; $5318: $E4
    ld a, e                                       ; $5319: $7B
    db $FC                                        ; $531A: $FC
    ld h, e                                       ; $531B: $63
    ld hl, sp+$57                                 ; $531C: $F8 $57
    ld a, b                                       ; $531E: $78
    or a                                          ; $531F: $B7
    nop                                           ; $5320: $00
    nop                                           ; $5321: $00
    nop                                           ; $5322: $00
    nop                                           ; $5323: $00
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
    nop                                           ; $5335: $00
    ret nz                                        ; $5336: $C0

    nop                                           ; $5337: $00
    jr nz, jr_023_52FA                            ; $5338: $20 $C0

    jr nz, jr_023_52FC                            ; $533A: $20 $C0

    db $10                                        ; $533C: $10
    ldh [rNR10], a                                ; $533D: $E0 $10
    ldh [$FF08], a                                ; $533F: $E0 $08
    nop                                           ; $5341: $00
    inc d                                         ; $5342: $14
    ld [$0814], sp                                ; $5343: $08 $14 $08
    inc h                                         ; $5346: $24
    jr jr_023_536D                                ; $5347: $18 $24

    jr @+$26                                      ; $5349: $18 $24

    jr @+$66                                      ; $534B: $18 $64

    jr c, @+$76                                   ; $534D: $38 $74

    jr c, @+$64                                   ; $534F: $38 $62

    inc a                                         ; $5351: $3C
    ld [hl], d                                    ; $5352: $72
    inc a                                         ; $5353: $3C
    ld a, d                                       ; $5354: $7A
    inc a                                         ; $5355: $3C
    ld h, d                                       ; $5356: $62
    inc a                                         ; $5357: $3C
    ld sp, hl                                     ; $5358: $F9
    ld a, [hl]                                    ; $5359: $7E
    ld sp, hl                                     ; $535A: $F9
    ld a, [hl]                                    ; $535B: $7E
    pop bc                                        ; $535C: $C1
    ld a, [hl]                                    ; $535D: $7E
    ld sp, hl                                     ; $535E: $F9
    ld a, [hl]                                    ; $535F: $7E
    ldh [rLCDC], a                                ; $5360: $E0 $40
    ld h, b                                       ; $5362: $60
    nop                                           ; $5363: $00
    nop                                           ; $5364: $00
    nop                                           ; $5365: $00
    nop                                           ; $5366: $00
    nop                                           ; $5367: $00
    nop                                           ; $5368: $00
    nop                                           ; $5369: $00
    ld bc, $0100                                  ; $536A: $01 $00 $01

jr_023_536D:
    nop                                           ; $536D: $00
    ld bc, $0100                                  ; $536E: $01 $00 $01
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
    sbc e                                         ; $5380: $9B
    ld h, a                                       ; $5381: $67
    adc a                                         ; $5382: $8F
    ld [hl], a                                    ; $5383: $77
    ld c, a                                       ; $5384: $4F
    ld [hl-], a                                   ; $5385: $32
    ld c, e                                       ; $5386: $4B
    jr nc, @-$42                                  ; $5387: $30 $BC

    ld c, b                                       ; $5389: $48
    ld a, $FC                                     ; $538A: $3E $FC
    ld a, $FC                                     ; $538C: $3E $FC
    ld a, $FC                                     ; $538E: $3E $FC
    sbc l                                         ; $5390: $9D
    ld hl, sp-$23                                 ; $5391: $F8 $DD
    ld a, b                                       ; $5393: $78
    ld a, b                                       ; $5394: $78
    jr nc, jr_023_540F                            ; $5395: $30 $78

jr_023_5397:
    jr nc, jr_023_5411                            ; $5397: $30 $78

    jr nc, jr_023_5397                            ; $5399: $30 $FC

    ld c, b                                       ; $539B: $48
    db $FC                                        ; $539C: $FC
    nop                                           ; $539D: $00
    db $FC                                        ; $539E: $FC
    nop                                           ; $539F: $00
    db $DD                                        ; $53A0: $DD
    ld [hl], a                                    ; $53A1: $77
    db $E3                                        ; $53A2: $E3
    ccf                                           ; $53A3: $3F
    rst RST_38                                    ; $53A4: $FF
    push bc                                       ; $53A5: $C5
    push af                                       ; $53A6: $F5

jr_023_53A7:
    ld [$7CFF], a                                 ; $53A7: $EA $FF $7C
    ld a, a                                       ; $53AA: $7F
    inc bc                                        ; $53AB: $03
    ld a, e                                       ; $53AC: $7B
    jr nc, jr_023_53A7                            ; $53AD: $30 $F8

    ld [hl], b                                    ; $53AF: $70
    ldh a, [$FFE0]                                ; $53B0: $F0 $E0
    ldh a, [rNR41]                                ; $53B2: $F0 $20
    ld hl, sp+$10                                 ; $53B4: $F8 $10
    ld hl, sp+$10                                 ; $53B6: $F8 $10
    ld a, b                                       ; $53B8: $78
    nop                                           ; $53B9: $00
    ld c, b                                       ; $53BA: $48
    jr nc, jr_023_53E5                            ; $53BB: $30 $28

    db $10                                        ; $53BD: $10
    jr z, jr_023_53D0                             ; $53BE: $28 $10

    halt                                          ; $53C0: $76
    call c, $D8FE                                 ; $53C1: $DC $FE $D8
    cp $F4                                        ; $53C4: $FE $F4
    call c, Call_023_7C28                         ; $53C6: $DC $28 $7C
    sbc b                                         ; $53C9: $98
    ld hl, sp-$20                                 ; $53CA: $F8 $E0
    ldh [rP1], a                                  ; $53CC: $E0 $00
    nop                                           ; $53CE: $00
    nop                                           ; $53CF: $00

jr_023_53D0:
    nop                                           ; $53D0: $00
    nop                                           ; $53D1: $00
    nop                                           ; $53D2: $00
    nop                                           ; $53D3: $00
    nop                                           ; $53D4: $00
    nop                                           ; $53D5: $00
    nop                                           ; $53D6: $00
    nop                                           ; $53D7: $00
    nop                                           ; $53D8: $00
    nop                                           ; $53D9: $00
    nop                                           ; $53DA: $00
    nop                                           ; $53DB: $00
    nop                                           ; $53DC: $00
    nop                                           ; $53DD: $00
    nop                                           ; $53DE: $00
    nop                                           ; $53DF: $00
    db $FC                                        ; $53E0: $FC
    nop                                           ; $53E1: $00
    ld a, h                                       ; $53E2: $7C
    nop                                           ; $53E3: $00
    ld a, h                                       ; $53E4: $7C

jr_023_53E5:
    nop                                           ; $53E5: $00
    ld d, h                                       ; $53E6: $54
    jr z, jr_023_541D                             ; $53E7: $28 $34

    ld [$000C], sp                                ; $53E9: $08 $0C $00
    nop                                           ; $53EC: $00
    nop                                           ; $53ED: $00
    nop                                           ; $53EE: $00
    nop                                           ; $53EF: $00
    nop                                           ; $53F0: $00
    nop                                           ; $53F1: $00
    nop                                           ; $53F2: $00
    nop                                           ; $53F3: $00
    nop                                           ; $53F4: $00
    nop                                           ; $53F5: $00
    nop                                           ; $53F6: $00
    nop                                           ; $53F7: $00
    nop                                           ; $53F8: $00
    nop                                           ; $53F9: $00
    nop                                           ; $53FA: $00
    nop                                           ; $53FB: $00
    nop                                           ; $53FC: $00
    nop                                           ; $53FD: $00
    nop                                           ; $53FE: $00
    nop                                           ; $53FF: $00
    jr jr_023_5402                                ; $5400: $18 $00

jr_023_5402:
    nop                                           ; $5402: $00
    nop                                           ; $5403: $00
    nop                                           ; $5404: $00
    nop                                           ; $5405: $00
    nop                                           ; $5406: $00
    nop                                           ; $5407: $00
    nop                                           ; $5408: $00
    nop                                           ; $5409: $00
    nop                                           ; $540A: $00
    nop                                           ; $540B: $00
    nop                                           ; $540C: $00
    nop                                           ; $540D: $00
    nop                                           ; $540E: $00

jr_023_540F:
    nop                                           ; $540F: $00
    nop                                           ; $5410: $00

jr_023_5411:
    nop                                           ; $5411: $00
    nop                                           ; $5412: $00
    nop                                           ; $5413: $00
    nop                                           ; $5414: $00
    nop                                           ; $5415: $00
    nop                                           ; $5416: $00
    nop                                           ; $5417: $00
    nop                                           ; $5418: $00
    nop                                           ; $5419: $00
    nop                                           ; $541A: $00
    nop                                           ; $541B: $00
    nop                                           ; $541C: $00

jr_023_541D:
    nop                                           ; $541D: $00
    nop                                           ; $541E: $00
    nop                                           ; $541F: $00
    ld c, e                                       ; $5420: $4B
    inc a                                         ; $5421: $3C
    ld d, a                                       ; $5422: $57
    ld a, $BD                                     ; $5423: $3E $BD
    ld [hl], e                                    ; $5425: $73
    cp $6F                                        ; $5426: $FE $6F
    db $FC                                        ; $5428: $FC
    ld l, a                                       ; $5429: $6F
    cp $63                                        ; $542A: $FE $63
    ld a, a                                       ; $542C: $7F
    dec l                                         ; $542D: $2D
    ccf                                           ; $542E: $3F
    dec e                                         ; $542F: $1D
    ld a, $1D                                     ; $5430: $3E $1D
    ccf                                           ; $5432: $3F
    ld e, $1F                                     ; $5433: $1E $1F
    ld c, $0F                                     ; $5435: $0E $0F
    inc bc                                        ; $5437: $03
    dec b                                         ; $5438: $05
    inc bc                                        ; $5439: $03
    inc bc                                        ; $543A: $03
    ld bc, $0102                                  ; $543B: $01 $02 $01
    ld bc, $2B00                                  ; $543E: $01 $00 $2B
    cp $FD                                        ; $5441: $FE $FD
    ld e, d                                       ; $5443: $5A
    sbc a                                         ; $5444: $9F
    ld l, h                                       ; $5445: $6C
    rst RST_28                                    ; $5446: $EF
    add e                                         ; $5447: $83
    ld l, a                                       ; $5448: $6F
    rst RST_00                                    ; $5449: $C7
    rst RST_18                                    ; $544A: $DF
    rrca                                          ; $544B: $0F
    inc e                                         ; $544C: $1C
    rrca                                          ; $544D: $0F
    dec de                                        ; $544E: $1B
    inc c                                         ; $544F: $0C
    ld a, [hl-]                                   ; $5450: $3A
    inc e                                         ; $5451: $1C
    ld a, d                                       ; $5452: $7A
    inc a                                         ; $5453: $3C
    ld a, [hl]                                    ; $5454: $7E
    inc a                                         ; $5455: $3C
    ld a, $10                                     ; $5456: $3E $10
    add hl, de                                    ; $5458: $19
    ld b, $09                                     ; $5459: $06 $09
    ld b, $05                                     ; $545B: $06 $05
    ld [bc], a                                    ; $545D: $02
    inc bc                                        ; $545E: $03
    nop                                           ; $545F: $00
    ldh a, [c]                                    ; $5460: $F2
    dec c                                         ; $5461: $0D
    sbc e                                         ; $5462: $9B
    and $E5                                       ; $5463: $E6 $E5
    ei                                            ; $5465: $FB
    di                                            ; $5466: $F3
    ld a, l                                       ; $5467: $7D
    ld a, a                                       ; $5468: $7F
    cp h                                          ; $5469: $BC
    ld a, a                                       ; $546A: $7F
    cp l                                          ; $546B: $BD
    rst RST_38                                    ; $546C: $FF
    dec de                                        ; $546D: $1B
    cp $85                                        ; $546E: $FE $85
    sbc $ED                                       ; $5470: $DE $ED
    rst RST_28                                    ; $5472: $EF
    or b                                          ; $5473: $B0
    rst RST_38                                    ; $5474: $FF
    sub a                                         ; $5475: $97
    ld d, a                                       ; $5476: $57
    xor b                                         ; $5477: $A8
    ld a, a                                       ; $5478: $7F
    adc e                                         ; $5479: $8B
    cp a                                          ; $547A: $BF
    ret nz                                        ; $547B: $C0

    or $7D                                        ; $547C: $F6 $7D
    ldh [c], a                                    ; $547E: $E2
    cp l                                          ; $547F: $BD
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
    inc bc                                        ; $548C: $03
    nop                                           ; $548D: $00
    rlca                                          ; $548E: $07
    inc bc                                        ; $548F: $03
    rrca                                          ; $5490: $0F
    rlca                                          ; $5491: $07
    rra                                           ; $5492: $1F
    rrca                                          ; $5493: $0F
    rra                                           ; $5494: $1F
    ld c, $1F                                     ; $5495: $0E $1F
    ld c, $3F                                     ; $5497: $0E $3F
    inc e                                         ; $5499: $1C
    inc a                                         ; $549A: $3C
    inc de                                        ; $549B: $13
    jr nc, jr_023_54AD                            ; $549C: $30 $0F

    inc a                                         ; $549E: $3C
    inc bc                                        ; $549F: $03
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

jr_023_54AD:
    nop                                           ; $54AD: $00
    nop                                           ; $54AE: $00
    nop                                           ; $54AF: $00
    nop                                           ; $54B0: $00
    nop                                           ; $54B1: $00
    nop                                           ; $54B2: $00
    nop                                           ; $54B3: $00
    nop                                           ; $54B4: $00
    nop                                           ; $54B5: $00
    ret nz                                        ; $54B6: $C0

    nop                                           ; $54B7: $00
    and e                                         ; $54B8: $A3
    ret nz                                        ; $54B9: $C0

    and h                                         ; $54BA: $A4
    jp $C4AB                                      ; $54BB: $C3 $AB $C4


    jp c, $BCE5                                   ; $54BE: $DA $E5 $BC

    ld h, b                                       ; $54C1: $60
    or h                                          ; $54C2: $B4
    ld e, b                                       ; $54C3: $58
    add sp, $30                                   ; $54C4: $E8 $30
    add sp, -$50                                  ; $54C6: $E8 $B0
    ldh a, [rP1]                                  ; $54C8: $F0 $00
    ret nc                                        ; $54CA: $D0

    ldh [$FFD8], a                                ; $54CB: $E0 $D8
    ld h, b                                       ; $54CD: $60
    ld d, [hl]                                    ; $54CE: $56
    xor b                                         ; $54CF: $A8
    ld hl, $11DE                                  ; $54D0: $21 $DE $11
    xor $FF                                       ; $54D3: $EE $FF
    ld bc, $F7EF                                  ; $54D5: $01 $EF $F7
    db $EC                                        ; $54D8: $EC
    rst RST_30                                    ; $54D9: $F7
    rst RST_18                                    ; $54DA: $DF
    db $EC                                        ; $54DB: $EC
    inc a                                         ; $54DC: $3C
    ret nz                                        ; $54DD: $C0

    ldh [rP1], a                                  ; $54DE: $E0 $00
    ld bc, $0100                                  ; $54E0: $01 $00 $01
    nop                                           ; $54E3: $00
    ld bc, $0200                                  ; $54E4: $01 $00 $02
    ld bc, $0102                                  ; $54E7: $01 $02 $01
    ldh a, [c]                                    ; $54EA: $F2
    ld bc, $C33C                                  ; $54EB: $01 $3C $C3
    inc a                                         ; $54EE: $3C
    db $D3                                        ; $54EF: $D3
    cp a                                          ; $54F0: $BF
    ld d, e                                       ; $54F1: $53
    ld a, a                                       ; $54F2: $7F
    add b                                         ; $54F3: $80
    db $FC                                        ; $54F4: $FC
    ld h, e                                       ; $54F5: $63
    ld hl, sp+$07                                 ; $54F6: $F8 $07
    ld sp, hl                                     ; $54F8: $F9
    ld b, [hl]                                    ; $54F9: $46
    cp $00                                        ; $54FA: $FE $00
    call nc, $FCA8                                ; $54FC: $D4 $A8 $FC
    ret nz                                        ; $54FF: $C0

    add b                                         ; $5500: $80
    nop                                           ; $5501: $00
    ld b, b                                       ; $5502: $40
    add b                                         ; $5503: $80
    ld b, b                                       ; $5504: $40
    add b                                         ; $5505: $80
    add b                                         ; $5506: $80
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
    nop                                           ; $551C: $00
    nop                                           ; $551D: $00
    nop                                           ; $551E: $00
    nop                                           ; $551F: $00
    ld a, $FC                                     ; $5520: $3E $FC
    ld b, $FC                                     ; $5522: $06 $FC
    ld a, $FC                                     ; $5524: $3E $FC
    ld e, $FC                                     ; $5526: $1E $FC
    ld b, $FC                                     ; $5528: $06 $FC
    rst RST_38                                    ; $552A: $FF
    cp $7F                                        ; $552B: $FE $7F
    cp $1F                                        ; $552D: $FE $1F
    cp $FF                                        ; $552F: $FE $FF
    cp $FF                                        ; $5531: $FE $FF
    nop                                           ; $5533: $00
    db $10                                        ; $5534: $10
    ldh [$FF60], a                                ; $5535: $E0 $60
    add b                                         ; $5537: $80
    add b                                         ; $5538: $80
    nop                                           ; $5539: $00
    nop                                           ; $553A: $00
    nop                                           ; $553B: $00
    nop                                           ; $553C: $00
    nop                                           ; $553D: $00
    nop                                           ; $553E: $00
    nop                                           ; $553F: $00
    nop                                           ; $5540: $00
    nop                                           ; $5541: $00
    nop                                           ; $5542: $00
    nop                                           ; $5543: $00
    nop                                           ; $5544: $00
    nop                                           ; $5545: $00
    nop                                           ; $5546: $00
    nop                                           ; $5547: $00
    ld [$1400], sp                                ; $5548: $08 $00 $14
    ld [$0814], sp                                ; $554B: $08 $14 $08
    inc d                                         ; $554E: $14
    ld [$1824], sp                                ; $554F: $08 $24 $18
    ld h, $1C                                     ; $5552: $26 $1C
    ld l, $1C                                     ; $5554: $2E $1C
    ld b, [hl]                                    ; $5556: $46
    inc a                                         ; $5557: $3C
    ld c, [hl]                                    ; $5558: $4E
    inc a                                         ; $5559: $3C
    ld e, [hl]                                    ; $555A: $5E
    inc a                                         ; $555B: $3C
    ld b, [hl]                                    ; $555C: $46
    inc a                                         ; $555D: $3C
    sbc a                                         ; $555E: $9F
    ld a, [hl]                                    ; $555F: $7E
    nop                                           ; $5560: $00
    nop                                           ; $5561: $00
    nop                                           ; $5562: $00
    nop                                           ; $5563: $00
    nop                                           ; $5564: $00

jr_023_5565:
    nop                                           ; $5565: $00
    nop                                           ; $5566: $00
    nop                                           ; $5567: $00
    nop                                           ; $5568: $00
    nop                                           ; $5569: $00
    jr c, jr_023_556C                             ; $556A: $38 $00

jr_023_556C:
    ld a, h                                       ; $556C: $7C
    jr c, jr_023_55B2                             ; $556D: $38 $43

    inc a                                         ; $556F: $3C
    push de                                       ; $5570: $D5
    ld l, a                                       ; $5571: $6F
    db $FC                                        ; $5572: $FC
    ccf                                           ; $5573: $3F
    cp l                                          ; $5574: $BD
    ld c, a                                       ; $5575: $4F
    rst RST_28                                    ; $5576: $EF
    inc de                                        ; $5577: $13
    dec hl                                        ; $5578: $2B
    dec d                                         ; $5579: $15
    rla                                           ; $557A: $17
    nop                                           ; $557B: $00
    ld [bc], a                                    ; $557C: $02
    ld bc, $0001                                  ; $557D: $01 $01 $00
    ldh [rP1], a                                  ; $5580: $E0 $00
    ld hl, sp-$20                                 ; $5582: $F8 $E0
    db $FC                                        ; $5584: $FC
    jr jr_023_5565                                ; $5585: $18 $DE

    inc h                                         ; $5587: $24
    ld a, a                                       ; $5588: $7F
    adc h                                         ; $5589: $8C
    cp e                                          ; $558A: $BB
    rst RST_38                                    ; $558B: $FF
    add $7D                                       ; $558C: $C6 $7D
    cp $03                                        ; $558E: $FE $03
    ld a, a                                       ; $5590: $7F
    inc sp                                        ; $5591: $33
    rst RST_08                                    ; $5592: $CF
    ld a, l                                       ; $5593: $7D
    sbc a                                         ; $5594: $9F
    ld a, l                                       ; $5595: $7D
    cp a                                          ; $5596: $BF
    ld a, l                                       ; $5597: $7D
    rst RST_38                                    ; $5598: $FF
    db $FD                                        ; $5599: $FD
    rst RST_38                                    ; $559A: $FF
    ld hl, sp-$08                                 ; $559B: $F8 $F8
    add b                                         ; $559D: $80
    add b                                         ; $559E: $80
    nop                                           ; $559F: $00
    nop                                           ; $55A0: $00
    nop                                           ; $55A1: $00
    nop                                           ; $55A2: $00
    nop                                           ; $55A3: $00
    nop                                           ; $55A4: $00
    nop                                           ; $55A5: $00
    nop                                           ; $55A6: $00
    nop                                           ; $55A7: $00
    nop                                           ; $55A8: $00
    nop                                           ; $55A9: $00
    nop                                           ; $55AA: $00
    nop                                           ; $55AB: $00
    ret nz                                        ; $55AC: $C0

    nop                                           ; $55AD: $00
    rst RST_18                                    ; $55AE: $DF
    add b                                         ; $55AF: $80
    ld [hl], b                                    ; $55B0: $70
    adc a                                         ; $55B1: $8F

jr_023_55B2:
    ld e, c                                       ; $55B2: $59
    xor [hl]                                      ; $55B3: $AE
    ld e, a                                       ; $55B4: $5F
    xor a                                         ; $55B5: $AF
    rst RST_08                                    ; $55B6: $CF
    or a                                          ; $55B7: $B7
    rst RST_38                                    ; $55B8: $FF
    add e                                         ; $55B9: $83
    jp $C080                                      ; $55BA: $C3 $80 $C0


    add b                                         ; $55BD: $80
    ret nz                                        ; $55BE: $C0

    nop                                           ; $55BF: $00
    rlca                                          ; $55C0: $07
    nop                                           ; $55C1: $00
    jr c, jr_023_55CB                             ; $55C2: $38 $07

    ld h, b                                       ; $55C4: $60
    rra                                           ; $55C5: $1F
    ld [hl], e                                    ; $55C6: $73
    inc l                                         ; $55C7: $2C
    ld a, l                                       ; $55C8: $7D
    ld [hl+], a                                   ; $55C9: $22
    ld sp, hl                                     ; $55CA: $F9

jr_023_55CB:
    ld b, $FE                                     ; $55CB: $06 $FE
    ld e, c                                       ; $55CD: $59
    cp $63                                        ; $55CE: $FE $63
    di                                            ; $55D0: $F3
    ld c, l                                       ; $55D1: $4D
    rst RST_38                                    ; $55D2: $FF
    ld b, b                                       ; $55D3: $40
    ld a, [$DF75]                                 ; $55D4: $FA $75 $DF
    jr c, jr_023_5636                             ; $55D7: $38 $5D

    dec sp                                        ; $55D9: $3B
    dec a                                         ; $55DA: $3D
    inc bc                                        ; $55DB: $03
    dec e                                         ; $55DC: $1D
    dec bc                                        ; $55DD: $0B
    dec c                                         ; $55DE: $0D
    inc bc                                        ; $55DF: $03
    nop                                           ; $55E0: $00
    nop                                           ; $55E1: $00
    nop                                           ; $55E2: $00
    nop                                           ; $55E3: $00
    nop                                           ; $55E4: $00
    nop                                           ; $55E5: $00
    nop                                           ; $55E6: $00
    nop                                           ; $55E7: $00
    rrca                                          ; $55E8: $0F
    nop                                           ; $55E9: $00
    dec bc                                        ; $55EA: $0B
    rlca                                          ; $55EB: $07
    adc e                                         ; $55EC: $8B
    rlca                                          ; $55ED: $07
    ld c, e                                       ; $55EE: $4B
    add a                                         ; $55EF: $87
    ld b, l                                       ; $55F0: $45
    add e                                         ; $55F1: $83
    scf                                           ; $55F2: $37
    ret nz                                        ; $55F3: $C0

jr_023_55F4:
    inc a                                         ; $55F4: $3C
    jp $DB3F                                      ; $55F5: $C3 $3F $DB


    ld a, a                                       ; $55F8: $7F
    sbc e                                         ; $55F9: $9B
    rst RST_38                                    ; $55FA: $FF
    dec de                                        ; $55FB: $1B
    ld a, a                                       ; $55FC: $7F
    cp l                                          ; $55FD: $BD
    rst RST_38                                    ; $55FE: $FF
    ld a, h                                       ; $55FF: $7C
    nop                                           ; $5600: $00
    nop                                           ; $5601: $00
    nop                                           ; $5602: $00
    nop                                           ; $5603: $00
    nop                                           ; $5604: $00
    nop                                           ; $5605: $00
    nop                                           ; $5606: $00
    nop                                           ; $5607: $00
    ret nz                                        ; $5608: $C0

    nop                                           ; $5609: $00
    ldh [$FFC0], a                                ; $560A: $E0 $C0
    ldh a, [$FFE0]                                ; $560C: $F0 $E0
    ldh a, [$FFE0]                                ; $560E: $F0 $E0
    ld hl, sp+$10                                 ; $5610: $F8 $10
    jr jr_023_55F4                                ; $5612: $18 $E0

    ld hl, sp-$20                                 ; $5614: $F8 $E0
    rst RST_38                                    ; $5616: $FF
    add sp, -$01                                  ; $5617: $E8 $FF
    rst RST_00                                    ; $5619: $C7
    ld a, [$E19F]                                 ; $561A: $FA $9F $E1
    ccf                                           ; $561D: $3F
    add c                                         ; $561E: $81
    ld a, a                                       ; $561F: $7F
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
    add b                                         ; $562E: $80
    nop                                           ; $562F: $00
    ret nz                                        ; $5630: $C0

    add b                                         ; $5631: $80
    ldh [$FFC0], a                                ; $5632: $E0 $C0
    ld h, b                                       ; $5634: $60
    ret nz                                        ; $5635: $C0

jr_023_5636:
    and b                                         ; $5636: $A0
    ret nz                                        ; $5637: $C0

    and b                                         ; $5638: $A0
    ret nz                                        ; $5639: $C0

    ldh [$FFC0], a                                ; $563A: $E0 $C0
    ret nz                                        ; $563C: $C0

    add b                                         ; $563D: $80
    ret nz                                        ; $563E: $C0

    nop                                           ; $563F: $00
    inc bc                                        ; $5640: $03
    nop                                           ; $5641: $00
    dec b                                         ; $5642: $05
    ld [bc], a                                    ; $5643: $02
    dec de                                        ; $5644: $1B
    dec b                                         ; $5645: $05
    dec l                                         ; $5646: $2D
    inc de                                        ; $5647: $13
    dec sp                                        ; $5648: $3B
    ld c, $3E                                     ; $5649: $0E $3E
    inc e                                         ; $564B: $1C
    inc e                                         ; $564C: $1C
    nop                                           ; $564D: $00
    nop                                           ; $564E: $00
    nop                                           ; $564F: $00
    nop                                           ; $5650: $00
    nop                                           ; $5651: $00
    nop                                           ; $5652: $00
    nop                                           ; $5653: $00
    nop                                           ; $5654: $00
    nop                                           ; $5655: $00
    nop                                           ; $5656: $00
    nop                                           ; $5657: $00
    nop                                           ; $5658: $00
    nop                                           ; $5659: $00
    nop                                           ; $565A: $00
    nop                                           ; $565B: $00
    nop                                           ; $565C: $00
    nop                                           ; $565D: $00
    nop                                           ; $565E: $00
    nop                                           ; $565F: $00
    rlca                                          ; $5660: $07
    nop                                           ; $5661: $00
    rlca                                          ; $5662: $07
    nop                                           ; $5663: $00
    ld [$1007], sp                                ; $5664: $08 $07 $10
    rrca                                          ; $5667: $0F
    and b                                         ; $5668: $A0
    rra                                           ; $5669: $1F
    pop hl                                        ; $566A: $E1
    sbc [hl]                                      ; $566B: $9E
    cp $E0                                        ; $566C: $FE $E0
    ld a, h                                       ; $566E: $7C
    ld hl, sp+$7E                                 ; $566F: $F8 $7E
    db $FC                                        ; $5671: $FC
    cp [hl]                                       ; $5672: $BE
    ld a, h                                       ; $5673: $7C
    ld a, [hl]                                    ; $5674: $7E
    inc a                                         ; $5675: $3C
    ld a, $1C                                     ; $5676: $3E $1C
    ld e, $0C                                     ; $5678: $1E $0C
    rst RST_38                                    ; $567A: $FF
    ld e, $7F                                     ; $567B: $1E $7F
    cp [hl]                                       ; $567D: $BE
    ccf                                           ; $567E: $3F
    sbc $AF                                       ; $567F: $DE $AF
    call nc, $51AE                                ; $5681: $D4 $AE $51
    ld sp, hl                                     ; $5684: $F9
    rrca                                          ; $5685: $0F
    db $EB                                        ; $5686: $EB
    ccf                                           ; $5687: $3F
    rst RST_38                                    ; $5688: $FF
    ld a, a                                       ; $5689: $7F
    rst RST_38                                    ; $568A: $FF
    nop                                           ; $568B: $00
    ld hl, sp-$10                                 ; $568C: $F8 $F0
    db $FC                                        ; $568E: $FC
    ld [hl], b                                    ; $568F: $70
    ld a, d                                       ; $5690: $7A
    or h                                          ; $5691: $B4
    ld [hl], c                                    ; $5692: $71

jr_023_5693:
    xor [hl]                                      ; $5693: $AE
    ldh [$FF1F], a                                ; $5694: $E0 $1F
    jr jr_023_569F                                ; $5696: $18 $07

    rlca                                          ; $5698: $07
    nop                                           ; $5699: $00
    inc bc                                        ; $569A: $03
    ld bc, $0304                                  ; $569B: $01 $04 $03
    rlca                                          ; $569E: $07

jr_023_569F:
    nop                                           ; $569F: $00
    ld l, c                                       ; $56A0: $69
    rst RST_38                                    ; $56A1: $FF
    ld l, l                                       ; $56A2: $6D
    rst RST_38                                    ; $56A3: $FF
    db $ED                                        ; $56A4: $ED
    rst RST_38                                    ; $56A5: $FF
    rst RST_38                                    ; $56A6: $FF
    ld hl, sp-$01                                 ; $56A7: $F8 $FF
    ld b, $0F                                     ; $56A9: $06 $0F
    ld b, $07                                     ; $56AB: $06 $07
    ld [bc], a                                    ; $56AD: $02
    rlca                                          ; $56AE: $07
    ld [bc], a                                    ; $56AF: $02
    inc bc                                        ; $56B0: $03
    nop                                           ; $56B1: $00
    ldh a, [rP1]                                  ; $56B2: $F0 $00
    ld hl, sp+$70                                 ; $56B4: $F8 $70
    db $FC                                        ; $56B6: $FC
    ld hl, sp-$02                                 ; $56B7: $F8 $FE
    db $FC                                        ; $56B9: $FC
    ccf                                           ; $56BA: $3F
    cp $C7                                        ; $56BB: $FE $C7
    ccf                                           ; $56BD: $3F
    ccf                                           ; $56BE: $3F
    inc bc                                        ; $56BF: $03
    ld bc, $0200                                  ; $56C0: $01 $00 $02
    ld bc, $0102                                  ; $56C3: $01 $02 $01
    ld bc, $0100                                  ; $56C6: $01 $00 $01
    nop                                           ; $56C9: $00
    nop                                           ; $56CA: $00
    nop                                           ; $56CB: $00
    nop                                           ; $56CC: $00
    nop                                           ; $56CD: $00
    nop                                           ; $56CE: $00
    nop                                           ; $56CF: $00
    nop                                           ; $56D0: $00
    nop                                           ; $56D1: $00
    nop                                           ; $56D2: $00
    nop                                           ; $56D3: $00
    inc bc                                        ; $56D4: $03
    nop                                           ; $56D5: $00
    inc b                                         ; $56D6: $04
    inc bc                                        ; $56D7: $03
    rlca                                          ; $56D8: $07
    nop                                           ; $56D9: $00
    nop                                           ; $56DA: $00
    nop                                           ; $56DB: $00
    nop                                           ; $56DC: $00
    nop                                           ; $56DD: $00
    nop                                           ; $56DE: $00
    nop                                           ; $56DF: $00
    cp $00                                        ; $56E0: $FE $00
    nop                                           ; $56E2: $00
    nop                                           ; $56E3: $00
    nop                                           ; $56E4: $00
    nop                                           ; $56E5: $00
    nop                                           ; $56E6: $00
    nop                                           ; $56E7: $00
    nop                                           ; $56E8: $00
    nop                                           ; $56E9: $00
    nop                                           ; $56EA: $00
    nop                                           ; $56EB: $00
    nop                                           ; $56EC: $00
    nop                                           ; $56ED: $00
    nop                                           ; $56EE: $00
    nop                                           ; $56EF: $00
    nop                                           ; $56F0: $00
    nop                                           ; $56F1: $00
    nop                                           ; $56F2: $00
    nop                                           ; $56F3: $00
    nop                                           ; $56F4: $00
    nop                                           ; $56F5: $00
    nop                                           ; $56F6: $00
    nop                                           ; $56F7: $00
    nop                                           ; $56F8: $00
    nop                                           ; $56F9: $00
    nop                                           ; $56FA: $00
    nop                                           ; $56FB: $00
    nop                                           ; $56FC: $00
    nop                                           ; $56FD: $00
    nop                                           ; $56FE: $00
    nop                                           ; $56FF: $00
    ld hl, sp-$40                                 ; $5700: $F8 $C0
    db $FC                                        ; $5702: $FC
    ld hl, sp-$04                                 ; $5703: $F8 $FC
    ld a, b                                       ; $5705: $78
    ld a, h                                       ; $5706: $7C
    jr c, jr_023_5745                             ; $5707: $38 $3C

    jr @+$3E                                      ; $5709: $18 $3C

    nop                                           ; $570B: $00
    ld h, h                                       ; $570C: $64
    jr jr_023_5693                                ; $570D: $18 $84

    ld a, b                                       ; $570F: $78
    ld hl, sp+$00                                 ; $5710: $F8 $00
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
    nop                                           ; $5720: $00
    nop                                           ; $5721: $00
    nop                                           ; $5722: $00
    nop                                           ; $5723: $00
    nop                                           ; $5724: $00
    nop                                           ; $5725: $00
    nop                                           ; $5726: $00
    nop                                           ; $5727: $00
    nop                                           ; $5728: $00
    nop                                           ; $5729: $00
    jr c, jr_023_572C                             ; $572A: $38 $00

jr_023_572C:
    ld a, h                                       ; $572C: $7C
    nop                                           ; $572D: $00
    ld a, a                                       ; $572E: $7F
    jr c, @-$67                                   ; $572F: $38 $97

    ld l, [hl]                                    ; $5731: $6E
    pop bc                                        ; $5732: $C1
    ccf                                           ; $5733: $3F
    or b                                          ; $5734: $B0
    ld c, a                                       ; $5735: $4F
    db $EC                                        ; $5736: $EC
    inc de                                        ; $5737: $13
    ld a, [hl+]                                   ; $5738: $2A
    dec d                                         ; $5739: $15
    rla                                           ; $573A: $17
    nop                                           ; $573B: $00
    ld [bc], a                                    ; $573C: $02
    ld bc, $0001                                  ; $573D: $01 $01 $00
    ldh [rP1], a                                  ; $5740: $E0 $00
    ld hl, sp-$80                                 ; $5742: $F8 $80
    db $FC                                        ; $5744: $FC

jr_023_5745:
    or b                                          ; $5745: $B0
    sbc $B0                                       ; $5746: $DE $B0
    ld a, a                                       ; $5748: $7F
    ldh [$FF1F], a                                ; $5749: $E0 $1F
    ldh a, [$FF8F]                                ; $574B: $F0 $8F
    ld a, b                                       ; $574D: $78
    rst RST_00                                    ; $574E: $C7
    inc a                                         ; $574F: $3C
    ld b, a                                       ; $5750: $47
    inc a                                         ; $5751: $3C
    ld b, a                                       ; $5752: $47
    inc a                                         ; $5753: $3C
    adc a                                         ; $5754: $8F
    ld a, b                                       ; $5755: $78
    adc a                                         ; $5756: $8F
    ld a, b                                       ; $5757: $78
    rra                                           ; $5758: $1F
    ldh a, [$FF7F]                                ; $5759: $F0 $7F
    ldh [$FFF8], a                                ; $575B: $E0 $F8
    add b                                         ; $575D: $80
    ret nz                                        ; $575E: $C0

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
    ret nz                                        ; $576C: $C0

    nop                                           ; $576D: $00
    rst RST_18                                    ; $576E: $DF
    nop                                           ; $576F: $00
    rst RST_30                                    ; $5770: $F7
    inc c                                         ; $5771: $0C
    pop af                                        ; $5772: $F1
    cpl                                           ; $5773: $2F
    di                                            ; $5774: $F3
    ld l, $F8                                     ; $5775: $2E $F8
    scf                                           ; $5777: $37
    db $FD                                        ; $5778: $FD
    inc bc                                        ; $5779: $03
    jp $C000                                      ; $577A: $C3 $00 $C0


    nop                                           ; $577D: $00
    ret nz                                        ; $577E: $C0

    nop                                           ; $577F: $00
    rlca                                          ; $5780: $07
    nop                                           ; $5781: $00
    ccf                                           ; $5782: $3F
    nop                                           ; $5783: $00
    ld a, a                                       ; $5784: $7F
    nop                                           ; $5785: $00
    ld a, a                                       ; $5786: $7F
    nop                                           ; $5787: $00
    ld a, l                                       ; $5788: $7D
    ld [bc], a                                    ; $5789: $02
    ld sp, hl                                     ; $578A: $F9
    ld b, $FF                                     ; $578B: $06 $FF
    nop                                           ; $578D: $00
    rst RST_38                                    ; $578E: $FF
    nop                                           ; $578F: $00
    di                                            ; $5790: $F3
    inc c                                         ; $5791: $0C
    rst RST_38                                    ; $5792: $FF
    add b                                         ; $5793: $80
    ld a, [$DF05]                                 ; $5794: $FA $05 $DF
    jr nc, jr_023_57F6                            ; $5797: $30 $5D

    inc sp                                        ; $5799: $33
    dec a                                         ; $579A: $3D
    inc de                                        ; $579B: $13
    dec e                                         ; $579C: $1D
    inc bc                                        ; $579D: $03
    dec c                                         ; $579E: $0D
    inc bc                                        ; $579F: $03
    nop                                           ; $57A0: $00
    nop                                           ; $57A1: $00
    nop                                           ; $57A2: $00
    nop                                           ; $57A3: $00
    nop                                           ; $57A4: $00
    nop                                           ; $57A5: $00
    nop                                           ; $57A6: $00
    nop                                           ; $57A7: $00
    rrca                                          ; $57A8: $0F
    nop                                           ; $57A9: $00
    dec bc                                        ; $57AA: $0B
    ld b, $8B                                     ; $57AB: $06 $8B
    ld b, $C9                                     ; $57AD: $06 $C9
    rlca                                          ; $57AF: $07
    push bc                                       ; $57B0: $C5
    inc bc                                        ; $57B1: $03
    rst RST_30                                    ; $57B2: $F7
    nop                                           ; $57B3: $00
    rst RST_38                                    ; $57B4: $FF
    nop                                           ; $57B5: $00
    rst RST_38                                    ; $57B6: $FF
    nop                                           ; $57B7: $00
    rst RST_38                                    ; $57B8: $FF
    nop                                           ; $57B9: $00
    rst RST_38                                    ; $57BA: $FF
    nop                                           ; $57BB: $00
    ld a, a                                       ; $57BC: $7F
    add b                                         ; $57BD: $80
    rst RST_38                                    ; $57BE: $FF
    nop                                           ; $57BF: $00
    nop                                           ; $57C0: $00
    nop                                           ; $57C1: $00
    nop                                           ; $57C2: $00
    nop                                           ; $57C3: $00
    nop                                           ; $57C4: $00
    nop                                           ; $57C5: $00
    nop                                           ; $57C6: $00
    nop                                           ; $57C7: $00
    ret nz                                        ; $57C8: $C0

    nop                                           ; $57C9: $00
    ldh [rP1], a                                  ; $57CA: $E0 $00
    ldh a, [rP1]                                  ; $57CC: $F0 $00
    ldh a, [rP1]                                  ; $57CE: $F0 $00
    ld hl, sp+$00                                 ; $57D0: $F8 $00
    ld hl, sp+$00                                 ; $57D2: $F8 $00
    ld hl, sp+$00                                 ; $57D4: $F8 $00
    rst RST_38                                    ; $57D6: $FF
    nop                                           ; $57D7: $00
    rst RST_38                                    ; $57D8: $FF
    rlca                                          ; $57D9: $07
    rst RST_38                                    ; $57DA: $FF
    ld e, $FF                                     ; $57DB: $1E $FF
    inc a                                         ; $57DD: $3C
    rst RST_08                                    ; $57DE: $CF
    ld hl, sp+$00                                 ; $57DF: $F8 $00
    nop                                           ; $57E1: $00
    nop                                           ; $57E2: $00
    nop                                           ; $57E3: $00
    nop                                           ; $57E4: $00
    nop                                           ; $57E5: $00
    nop                                           ; $57E6: $00
    nop                                           ; $57E7: $00
    nop                                           ; $57E8: $00
    nop                                           ; $57E9: $00
    nop                                           ; $57EA: $00
    nop                                           ; $57EB: $00
    nop                                           ; $57EC: $00
    nop                                           ; $57ED: $00
    add b                                         ; $57EE: $80
    nop                                           ; $57EF: $00
    ret nz                                        ; $57F0: $C0

    nop                                           ; $57F1: $00
    ldh [rP1], a                                  ; $57F2: $E0 $00
    ldh [rP1], a                                  ; $57F4: $E0 $00

jr_023_57F6:
    ldh [rP1], a                                  ; $57F6: $E0 $00
    ldh [rP1], a                                  ; $57F8: $E0 $00
    ldh [rP1], a                                  ; $57FA: $E0 $00
    ret nz                                        ; $57FC: $C0

    nop                                           ; $57FD: $00
    ret nz                                        ; $57FE: $C0

    nop                                           ; $57FF: $00
    inc bc                                        ; $5800: $03
    nop                                           ; $5801: $00
    dec b                                         ; $5802: $05
    ld [bc], a                                    ; $5803: $02
    ld a, [de]                                    ; $5804: $1A
    dec b                                         ; $5805: $05
    dec l                                         ; $5806: $2D
    inc de                                        ; $5807: $13
    inc sp                                        ; $5808: $33
    ld c, $2F                                     ; $5809: $0E $2F
    inc e                                         ; $580B: $1C
    ld e, $00                                     ; $580C: $1E $00
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
    ld bc, $0200                                  ; $5820: $01 $00 $02
    ld bc, $0102                                  ; $5823: $01 $02 $01
    ld bc, $0100                                  ; $5826: $01 $00 $01
    nop                                           ; $5829: $00
    nop                                           ; $582A: $00
    nop                                           ; $582B: $00
    nop                                           ; $582C: $00
    nop                                           ; $582D: $00
    nop                                           ; $582E: $00
    nop                                           ; $582F: $00
    nop                                           ; $5830: $00
    nop                                           ; $5831: $00
    ld bc, $0600                                  ; $5832: $01 $00 $06
    ld bc, $0708                                  ; $5835: $01 $08 $07
    rrca                                          ; $5838: $0F
    nop                                           ; $5839: $00
    nop                                           ; $583A: $00
    nop                                           ; $583B: $00
    nop                                           ; $583C: $00
    nop                                           ; $583D: $00
    nop                                           ; $583E: $00
    nop                                           ; $583F: $00
    rlca                                          ; $5840: $07
    nop                                           ; $5841: $00
    rlca                                          ; $5842: $07
    nop                                           ; $5843: $00
    add hl, bc                                    ; $5844: $09
    rlca                                          ; $5845: $07
    ld de, $A30F                                  ; $5846: $11 $0F $A3
    rra                                           ; $5849: $1F
    rst RST_20                                    ; $584A: $E7
    sbc [hl]                                      ; $584B: $9E
    cp $80                                        ; $584C: $FE $80
    ld a, h                                       ; $584E: $7C
    ret nz                                        ; $584F: $C0

    ld e, $F0                                     ; $5850: $1E $F0
    cp [hl]                                       ; $5852: $BE

jr_023_5853:
    ld h, b                                       ; $5853: $60
    ld e, [hl]                                    ; $5854: $5E
    jr nc, jr_023_5883                            ; $5855: $30 $2C

    jr @+$3E                                      ; $5857: $18 $3C

    db $10                                        ; $5859: $10
    sbc $30                                       ; $585A: $DE $30
    cp $60                                        ; $585C: $FE $60
    ld a, [hl]                                    ; $585E: $7E
    add b                                         ; $585F: $80
    xor a                                         ; $5860: $AF
    ld a, b                                       ; $5861: $78
    xor a                                         ; $5862: $AF
    ld [hl], e                                    ; $5863: $73
    db $FC                                        ; $5864: $FC
    rrca                                          ; $5865: $0F
    pop hl                                        ; $5866: $E1
    ccf                                           ; $5867: $3F
    adc a                                         ; $5868: $8F
    ld a, [hl]                                    ; $5869: $7E
    rst RST_38                                    ; $586A: $FF
    nop                                           ; $586B: $00
    ld hl, sp+$00                                 ; $586C: $F8 $00
    db $FC                                        ; $586E: $FC
    nop                                           ; $586F: $00
    cp $84                                        ; $5870: $FE $84
    rst RST_38                                    ; $5872: $FF
    adc [hl]                                      ; $5873: $8E
    rst RST_20                                    ; $5874: $E7
    rra                                           ; $5875: $1F
    dec de                                        ; $5876: $1B
    rlca                                          ; $5877: $07
    rlca                                          ; $5878: $07
    nop                                           ; $5879: $00
    inc bc                                        ; $587A: $03
    ld bc, $0304                                  ; $587B: $01 $04 $03
    rlca                                          ; $587E: $07
    nop                                           ; $587F: $00
    rra                                           ; $5880: $1F

jr_023_5881:
    ldh a, [$FF7F]                                ; $5881: $F0 $7F

jr_023_5883:
    ldh [rIE], a                                  ; $5883: $E0 $FF
    add b                                         ; $5885: $80
    rst RST_38                                    ; $5886: $FF
    nop                                           ; $5887: $00
    rst RST_38                                    ; $5888: $FF
    nop                                           ; $5889: $00
    rrca                                          ; $588A: $0F
    nop                                           ; $588B: $00
    rlca                                          ; $588C: $07
    nop                                           ; $588D: $00
    rlca                                          ; $588E: $07
    nop                                           ; $588F: $00
    inc bc                                        ; $5890: $03
    nop                                           ; $5891: $00
    ldh a, [rP1]                                  ; $5892: $F0 $00
    ld hl, sp+$00                                 ; $5894: $F8 $00
    db $FC                                        ; $5896: $FC
    nop                                           ; $5897: $00
    cp $80                                        ; $5898: $FE $80
    ld a, a                                       ; $589A: $7F
    ld hl, sp-$79                                 ; $589B: $F8 $87
    ld a, [hl]                                    ; $589D: $7E
    ld a, a                                       ; $589E: $7F
    ld bc, $00FC                                  ; $589F: $01 $FC $00
    nop                                           ; $58A2: $00
    nop                                           ; $58A3: $00
    nop                                           ; $58A4: $00
    nop                                           ; $58A5: $00
    nop                                           ; $58A6: $00
    nop                                           ; $58A7: $00
    nop                                           ; $58A8: $00
    nop                                           ; $58A9: $00
    nop                                           ; $58AA: $00
    nop                                           ; $58AB: $00
    nop                                           ; $58AC: $00
    nop                                           ; $58AD: $00
    nop                                           ; $58AE: $00
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
    db $FC                                        ; $58C0: $FC
    add b                                         ; $58C1: $80
    ld a, [hl]                                    ; $58C2: $7E
    ldh [$FFFE], a                                ; $58C3: $E0 $FE
    db $10                                        ; $58C5: $10
    ld a, $10                                     ; $58C6: $3E $10
    ld a, $10                                     ; $58C8: $3E $10

jr_023_58CA:
    inc a                                         ; $58CA: $3C
    nop                                           ; $58CB: $00
    ld h, h                                       ; $58CC: $64
    jr jr_023_5853                                ; $58CD: $18 $84

    ld a, b                                       ; $58CF: $78
    ld hl, sp+$00                                 ; $58D0: $F8 $00
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
    inc bc                                        ; $58E0: $03
    nop                                           ; $58E1: $00
    ld l, $03                                     ; $58E2: $2E $03
    halt                                          ; $58E4: $76
    dec hl                                        ; $58E5: $2B
    sbc $67                                       ; $58E6: $DE $67
    rst RST_30                                    ; $58E8: $F7
    ld l, e                                       ; $58E9: $6B
    sbc $67                                       ; $58EA: $DE $67
    ld [hl], a                                    ; $58EC: $77
    dec hl                                        ; $58ED: $2B
    ld a, [hl]                                    ; $58EE: $7E
    inc hl                                        ; $58EF: $23
    ld d, a                                       ; $58F0: $57
    add hl, hl                                    ; $58F1: $29
    ld a, [$EE75]                                 ; $58F2: $FA $75 $EE
    ld a, c                                       ; $58F5: $79
    rst RST_30                                    ; $58F6: $F7
    ld a, h                                       ; $58F7: $7C
    db $EB                                        ; $58F8: $EB
    ld a, [hl]                                    ; $58F9: $7E
    rst RST_30                                    ; $58FA: $F7
    ld a, [hl]                                    ; $58FB: $7E
    rst RST_38                                    ; $58FC: $FF
    ld a, l                                       ; $58FD: $7D
    ld a, a                                       ; $58FE: $7F
    jr c, jr_023_5881                             ; $58FF: $38 $80

    nop                                           ; $5901: $00
    ld b, b                                       ; $5902: $40
    add b                                         ; $5903: $80
    and b                                         ; $5904: $A0
    ret nz                                        ; $5905: $C0

    and b                                         ; $5906: $A0
    ld b, b                                       ; $5907: $40
    jr nz, jr_023_58CA                            ; $5908: $20 $C0

    and b                                         ; $590A: $A0
    ret nz                                        ; $590B: $C0

    ld d, b                                       ; $590C: $50
    ldh [$FFF0], a                                ; $590D: $E0 $F0
    and b                                         ; $590F: $A0
    ldh a, [rNR41]                                ; $5910: $F0 $20
    cp b                                          ; $5912: $B8
    ld d, b                                       ; $5913: $50
    ld hl, sp-$70                                 ; $5914: $F8 $90
    ld a, b                                       ; $5916: $78
    ret nc                                        ; $5917: $D0

    cp b                                          ; $5918: $B8
    ldh a, [$FFF0]                                ; $5919: $F0 $F0
    ldh [$FFD0], a                                ; $591B: $E0 $D0
    ldh [$FFF0], a                                ; $591D: $E0 $F0
    ldh [rP1], a                                  ; $591F: $E0 $00
    nop                                           ; $5921: $00
    nop                                           ; $5922: $00
    nop                                           ; $5923: $00
    nop                                           ; $5924: $00
    nop                                           ; $5925: $00
    nop                                           ; $5926: $00
    nop                                           ; $5927: $00
    nop                                           ; $5928: $00
    nop                                           ; $5929: $00
    nop                                           ; $592A: $00
    nop                                           ; $592B: $00
    nop                                           ; $592C: $00
    nop                                           ; $592D: $00
    ld bc, $0100                                  ; $592E: $01 $00 $01
    nop                                           ; $5931: $00
    ld bc, $0100                                  ; $5932: $01 $00 $01
    nop                                           ; $5935: $00
    ld bc, $0300                                  ; $5936: $01 $00 $03
    ld bc, $0103                                  ; $5939: $01 $03 $01
    ld a, a                                       ; $593C: $7F
    ld [bc], a                                    ; $593D: $02
    xor a                                         ; $593E: $AF
    ld d, [hl]                                    ; $593F: $56
    rst RST_38                                    ; $5940: $FF
    dec de                                        ; $5941: $1B
    ld a, a                                       ; $5942: $7F
    ccf                                           ; $5943: $3F
    ld a, h                                       ; $5944: $7C
    ccf                                           ; $5945: $3F
    rst RST_38                                    ; $5946: $FF
    ld a, a                                       ; $5947: $7F
    ld hl, sp+$7F                                 ; $5948: $F8 $7F
    db $FD                                        ; $594A: $FD
    ld a, a                                       ; $594B: $7F
    db $FC                                        ; $594C: $FC
    ld a, a                                       ; $594D: $7F
    ld hl, sp-$01                                 ; $594E: $F8 $FF
    rst RST_38                                    ; $5950: $FF
    rst RST_38                                    ; $5951: $FF
    cp $FF                                        ; $5952: $FE $FF
    cp $FF                                        ; $5954: $FE $FF

jr_023_5956:
    rst RST_38                                    ; $5956: $FF
    rst RST_28                                    ; $5957: $EF
    rst RST_38                                    ; $5958: $FF
    ld l, e                                       ; $5959: $6B
    rst RST_38                                    ; $595A: $FF
    ld l, e                                       ; $595B: $6B
    rst RST_38                                    ; $595C: $FF
    dec de                                        ; $595D: $1B
    ld e, a                                       ; $595E: $5F
    and a                                         ; $595F: $A7
    ret nz                                        ; $5960: $C0

    nop                                           ; $5961: $00
    add b                                         ; $5962: $80
    nop                                           ; $5963: $00
    add b                                         ; $5964: $80
    nop                                           ; $5965: $00
    add b                                         ; $5966: $80
    nop                                           ; $5967: $00
    add b                                         ; $5968: $80
    nop                                           ; $5969: $00
    add b                                         ; $596A: $80
    nop                                           ; $596B: $00
    ret nz                                        ; $596C: $C0

    add b                                         ; $596D: $80
    ret nz                                        ; $596E: $C0

    add b                                         ; $596F: $80
    ld b, b                                       ; $5970: $40
    add b                                         ; $5971: $80
    ld h, b                                       ; $5972: $60
    ret nz                                        ; $5973: $C0

    jr nc, jr_023_5956                            ; $5974: $30 $E0

    ret c                                         ; $5976: $D8

    ldh a, [$FF84]                                ; $5977: $F0 $84
    ld hl, sp+$3A                                 ; $5979: $F8 $3A
    db $FC                                        ; $597B: $FC
    pop af                                        ; $597C: $F1
    sbc $E1                                       ; $597D: $DE $E1
    cp [hl]                                       ; $597F: $BE
    ld [bc], a                                    ; $5980: $02
    nop                                           ; $5981: $00
    nop                                           ; $5982: $00

jr_023_5983:
    nop                                           ; $5983: $00
    nop                                           ; $5984: $00
    nop                                           ; $5985: $00
    nop                                           ; $5986: $00
    nop                                           ; $5987: $00
    rlca                                          ; $5988: $07
    nop                                           ; $5989: $00
    dec e                                         ; $598A: $1D
    rlca                                          ; $598B: $07
    ld h, $1F                                     ; $598C: $26 $1F
    ld a, a                                       ; $598E: $7F
    ccf                                           ; $598F: $3F
    ld e, a                                       ; $5990: $5F
    jr nc, jr_023_5983                            ; $5991: $30 $F0

    ld h, b                                       ; $5993: $60
    and e                                         ; $5994: $A3
    ld b, b                                       ; $5995: $40
    push bc                                       ; $5996: $C5
    ld [bc], a                                    ; $5997: $02
    rlca                                          ; $5998: $07
    nop                                           ; $5999: $00
    nop                                           ; $599A: $00
    nop                                           ; $599B: $00
    nop                                           ; $599C: $00
    nop                                           ; $599D: $00
    nop                                           ; $599E: $00
    nop                                           ; $599F: $00
    rst RST_38                                    ; $59A0: $FF
    ld [bc], a                                    ; $59A1: $02
    cpl                                           ; $59A2: $2F
    ld e, $2F                                     ; $59A3: $1E $2F
    ld e, $2F                                     ; $59A5: $1E $2F
    rra                                           ; $59A7: $1F
    rst RST_38                                    ; $59A8: $FF
    rra                                           ; $59A9: $1F
    ld a, a                                       ; $59AA: $7F
    db $DD                                        ; $59AB: $DD
    cp a                                          ; $59AC: $BF
    db $ED                                        ; $59AD: $ED
    rst RST_18                                    ; $59AE: $DF
    or $FF                                        ; $59AF: $F6 $FF
    halt                                          ; $59B1: $76
    ld a, a                                       ; $59B2: $7F
    dec c                                         ; $59B3: $0D
    rst RST_38                                    ; $59B4: $FF
    dec a                                         ; $59B5: $3D
    ccf                                           ; $59B6: $3F
    ret c                                         ; $59B7: $D8

    ld hl, sp+$00                                 ; $59B8: $F8 $00
    nop                                           ; $59BA: $00
    nop                                           ; $59BB: $00
    nop                                           ; $59BC: $00
    nop                                           ; $59BD: $00
    nop                                           ; $59BE: $00
    nop                                           ; $59BF: $00
    cp $7B                                        ; $59C0: $FE $7B
    db $FC                                        ; $59C2: $FC
    ei                                            ; $59C3: $FB
    db $FC                                        ; $59C4: $FC
    rst RST_30                                    ; $59C5: $F7
    db $FD                                        ; $59C6: $FD
    ld [hl], a                                    ; $59C7: $77
    db $FD                                        ; $59C8: $FD
    ld [hl], a                                    ; $59C9: $77
    rst RST_38                                    ; $59CA: $FF
    or a                                          ; $59CB: $B7
    rst RST_38                                    ; $59CC: $FF
    set 7, a                                      ; $59CD: $CB $FF
    ld sp, $F8FD                                  ; $59CF: $31 $FD $F8
    ld hl, sp-$20                                 ; $59D2: $F8 $E0
    ldh [$FF80], a                                ; $59D4: $E0 $80
    add b                                         ; $59D6: $80
    nop                                           ; $59D7: $00
    ld bc, $0100                                  ; $59D8: $01 $00 $01
    nop                                           ; $59DB: $00
    nop                                           ; $59DC: $00
    nop                                           ; $59DD: $00
    nop                                           ; $59DE: $00
    nop                                           ; $59DF: $00
    inc d                                         ; $59E0: $14
    ld hl, sp-$44                                 ; $59E1: $F8 $BC
    ld hl, sp-$04                                 ; $59E3: $F8 $FC
    ld hl, sp-$04                                 ; $59E5: $F8 $FC
    ld hl, sp-$08                                 ; $59E7: $F8 $F8
    ldh a, [$FFF8]                                ; $59E9: $F0 $F8
    ldh [$FFFC], a                                ; $59EB: $E0 $FC
    ret c                                         ; $59ED: $D8

    db $FC                                        ; $59EE: $FC
    ld hl, sp-$02                                 ; $59EF: $F8 $FE
    inc e                                         ; $59F1: $1C
    ld e, $0C                                     ; $59F2: $1E $0C
    ld e, $0C                                     ; $59F4: $1E $0C
    cp $04                                        ; $59F6: $FE $04
    ld h, $D8                                     ; $59F8: $26 $D8
    db $FC                                        ; $59FA: $FC
    nop                                           ; $59FB: $00
    nop                                           ; $59FC: $00
    nop                                           ; $59FD: $00
    nop                                           ; $59FE: $00
    nop                                           ; $59FF: $00
    inc bc                                        ; $5A00: $03
    nop                                           ; $5A01: $00
    rrca                                          ; $5A02: $0F
    ld bc, $0B1D                                  ; $5A03: $01 $1D $0B
    scf                                           ; $5A06: $37
    add hl, de                                    ; $5A07: $19
    dec a                                         ; $5A08: $3D
    dec de                                        ; $5A09: $1B
    scf                                           ; $5A0A: $37
    add hl, de                                    ; $5A0B: $19
    dec e                                         ; $5A0C: $1D
    dec bc                                        ; $5A0D: $0B
    rra                                           ; $5A0E: $1F
    add hl, bc                                    ; $5A0F: $09
    dec a                                         ; $5A10: $3D
    ld a, [de]                                    ; $5A11: $1A
    ld a, a                                       ; $5A12: $7F
    jr c, jr_023_5A8C                             ; $5A13: $38 $77

    inc a                                         ; $5A15: $3C
    rst RST_30                                    ; $5A16: $F7
    ld a, h                                       ; $5A17: $7C
    db $EB                                        ; $5A18: $EB
    ld a, [hl]                                    ; $5A19: $7E
    rst RST_30                                    ; $5A1A: $F7
    ld a, [hl]                                    ; $5A1B: $7E
    ld a, a                                       ; $5A1C: $7F
    ld a, $3F                                     ; $5A1D: $3E $3F
    inc e                                         ; $5A1F: $1C
    add b                                         ; $5A20: $80
    nop                                           ; $5A21: $00
    ld h, b                                       ; $5A22: $60
    add b                                         ; $5A23: $80
    sub b                                         ; $5A24: $90
    ldh [rBCPS], a                                ; $5A25: $E0 $68
    ldh a, [$FFE8]                                ; $5A27: $F0 $E8
    ret nc                                        ; $5A29: $D0

    ld [$88F0], sp                                ; $5A2A: $08 $F0 $88
    ldh a, [$FF28]                                ; $5A2D: $F0 $28
    ldh a, [$FF78]                                ; $5A2F: $F0 $78
    ret nc                                        ; $5A31: $D0

    ld a, h                                       ; $5A32: $7C
    sbc b                                         ; $5A33: $98
    ld e, h                                       ; $5A34: $5C
    xor b                                         ; $5A35: $A8
    ld a, h                                       ; $5A36: $7C
    ret z                                         ; $5A37: $C8

    ld a, b                                       ; $5A38: $78
    ret nc                                        ; $5A39: $D0

    cp b                                          ; $5A3A: $B8
    ldh a, [$FFF8]                                ; $5A3B: $F0 $F8
    ldh a, [$FFF8]                                ; $5A3D: $F0 $F8
    ldh a, [rP1]                                  ; $5A3F: $F0 $00
    nop                                           ; $5A41: $00
    nop                                           ; $5A42: $00
    nop                                           ; $5A43: $00
    nop                                           ; $5A44: $00
    nop                                           ; $5A45: $00
    nop                                           ; $5A46: $00
    nop                                           ; $5A47: $00
    nop                                           ; $5A48: $00
    nop                                           ; $5A49: $00
    nop                                           ; $5A4A: $00
    nop                                           ; $5A4B: $00
    ld bc, $0100                                  ; $5A4C: $01 $00 $01
    nop                                           ; $5A4F: $00
    ld bc, $0100                                  ; $5A50: $01 $00 $01
    nop                                           ; $5A53: $00
    ld bc, $0100                                  ; $5A54: $01 $00 $01
    nop                                           ; $5A57: $00
    inc bc                                        ; $5A58: $03
    ld bc, $0103                                  ; $5A59: $01 $03 $01
    ld a, a                                       ; $5A5C: $7F
    ld [bc], a                                    ; $5A5D: $02
    xor a                                         ; $5A5E: $AF
    ld d, [hl]                                    ; $5A5F: $56
    ld a, a                                       ; $5A60: $7F
    ld h, $7F                                     ; $5A61: $26 $7F
    ccf                                           ; $5A63: $3F
    rst RST_38                                    ; $5A64: $FF
    ld a, a                                       ; $5A65: $7F
    rst RST_38                                    ; $5A66: $FF
    ld a, a                                       ; $5A67: $7F
    ld hl, sp+$7F                                 ; $5A68: $F8 $7F
    db $FD                                        ; $5A6A: $FD
    ld a, a                                       ; $5A6B: $7F
    ld hl, sp-$01                                 ; $5A6C: $F8 $FF
    ldh a, [rIE]                                  ; $5A6E: $F0 $FF
    rst RST_38                                    ; $5A70: $FF
    rst RST_38                                    ; $5A71: $FF
    cp $FF                                        ; $5A72: $FE $FF
    db $FC                                        ; $5A74: $FC
    rst RST_38                                    ; $5A75: $FF
    rst RST_38                                    ; $5A76: $FF
    rst RST_28                                    ; $5A77: $EF
    rst RST_38                                    ; $5A78: $FF
    ld l, e                                       ; $5A79: $6B
    rst RST_38                                    ; $5A7A: $FF
    ld l, e                                       ; $5A7B: $6B
    cp $1B                                        ; $5A7C: $FE $1B
    ld e, a                                       ; $5A7E: $5F
    and a                                         ; $5A7F: $A7
    ldh a, [$FFE0]                                ; $5A80: $F0 $E0
    ldh a, [$FFE0]                                ; $5A82: $F0 $E0
    ld h, b                                       ; $5A84: $60
    ret nz                                        ; $5A85: $C0

    ret nz                                        ; $5A86: $C0

    add b                                         ; $5A87: $80
    add b                                         ; $5A88: $80
    nop                                           ; $5A89: $00
    add b                                         ; $5A8A: $80
    nop                                           ; $5A8B: $00

jr_023_5A8C:
    add b                                         ; $5A8C: $80
    nop                                           ; $5A8D: $00
    add b                                         ; $5A8E: $80
    nop                                           ; $5A8F: $00
    ld b, b                                       ; $5A90: $40
    add b                                         ; $5A91: $80
    ld b, b                                       ; $5A92: $40
    add b                                         ; $5A93: $80
    jr nz, @-$3E                                  ; $5A94: $20 $C0

    sbc b                                         ; $5A96: $98
    ldh [rDIV], a                                 ; $5A97: $E0 $04
    ld hl, sp+$32                                 ; $5A99: $F8 $32
    db $FC                                        ; $5A9B: $FC
    pop af                                        ; $5A9C: $F1
    sbc $E1                                       ; $5A9D: $DE $E1
    cp [hl]                                       ; $5A9F: $BE
    ld [bc], a                                    ; $5AA0: $02
    nop                                           ; $5AA1: $00
    nop                                           ; $5AA2: $00

jr_023_5AA3:
    nop                                           ; $5AA3: $00
    nop                                           ; $5AA4: $00
    nop                                           ; $5AA5: $00
    nop                                           ; $5AA6: $00
    nop                                           ; $5AA7: $00
    rlca                                          ; $5AA8: $07
    nop                                           ; $5AA9: $00
    dec e                                         ; $5AAA: $1D
    rlca                                          ; $5AAB: $07
    ld h, $1F                                     ; $5AAC: $26 $1F
    ld a, a                                       ; $5AAE: $7F
    ccf                                           ; $5AAF: $3F
    ld e, a                                       ; $5AB0: $5F
    jr nc, jr_023_5AA3                            ; $5AB1: $30 $F0

    ld h, b                                       ; $5AB3: $60
    and e                                         ; $5AB4: $A3
    ld b, b                                       ; $5AB5: $40
    push bc                                       ; $5AB6: $C5
    ld [bc], a                                    ; $5AB7: $02
    rlca                                          ; $5AB8: $07
    nop                                           ; $5AB9: $00
    nop                                           ; $5ABA: $00
    nop                                           ; $5ABB: $00
    nop                                           ; $5ABC: $00
    nop                                           ; $5ABD: $00
    nop                                           ; $5ABE: $00
    nop                                           ; $5ABF: $00
    rst RST_38                                    ; $5AC0: $FF
    ld [bc], a                                    ; $5AC1: $02
    cpl                                           ; $5AC2: $2F
    ld e, $2F                                     ; $5AC3: $1E $2F
    ld e, $2F                                     ; $5AC5: $1E $2F
    rra                                           ; $5AC7: $1F
    rst RST_38                                    ; $5AC8: $FF
    rra                                           ; $5AC9: $1F
    ld a, a                                       ; $5ACA: $7F
    db $DD                                        ; $5ACB: $DD
    cp a                                          ; $5ACC: $BF
    db $ED                                        ; $5ACD: $ED
    rst RST_18                                    ; $5ACE: $DF
    or $FF                                        ; $5ACF: $F6 $FF
    halt                                          ; $5AD1: $76
    ld a, a                                       ; $5AD2: $7F
    dec c                                         ; $5AD3: $0D
    rst RST_38                                    ; $5AD4: $FF
    dec a                                         ; $5AD5: $3D
    ccf                                           ; $5AD6: $3F
    ret c                                         ; $5AD7: $D8

    ld hl, sp+$00                                 ; $5AD8: $F8 $00
    nop                                           ; $5ADA: $00
    nop                                           ; $5ADB: $00
    nop                                           ; $5ADC: $00
    nop                                           ; $5ADD: $00
    nop                                           ; $5ADE: $00
    nop                                           ; $5ADF: $00
    cp $7B                                        ; $5AE0: $FE $7B
    db $FC                                        ; $5AE2: $FC
    ei                                            ; $5AE3: $FB
    db $FC                                        ; $5AE4: $FC
    rst RST_30                                    ; $5AE5: $F7
    db $FD                                        ; $5AE6: $FD
    ld [hl], a                                    ; $5AE7: $77
    db $FD                                        ; $5AE8: $FD
    ld [hl], a                                    ; $5AE9: $77
    rst RST_38                                    ; $5AEA: $FF
    or a                                          ; $5AEB: $B7
    rst RST_38                                    ; $5AEC: $FF
    set 7, a                                      ; $5AED: $CB $FF
    ld sp, $F8FD                                  ; $5AEF: $31 $FD $F8
    ld hl, sp-$20                                 ; $5AF2: $F8 $E0
    ldh [$FF80], a                                ; $5AF4: $E0 $80
    add b                                         ; $5AF6: $80
    nop                                           ; $5AF7: $00
    ld bc, $0100                                  ; $5AF8: $01 $00 $01
    nop                                           ; $5AFB: $00
    nop                                           ; $5AFC: $00
    nop                                           ; $5AFD: $00
    nop                                           ; $5AFE: $00
    nop                                           ; $5AFF: $00
    inc d                                         ; $5B00: $14
    ld hl, sp-$44                                 ; $5B01: $F8 $BC
    ld hl, sp-$04                                 ; $5B03: $F8 $FC
    ld hl, sp-$04                                 ; $5B05: $F8 $FC
    ld hl, sp-$08                                 ; $5B07: $F8 $F8
    ldh a, [$FFF8]                                ; $5B09: $F0 $F8
    ldh [$FFFC], a                                ; $5B0B: $E0 $FC
    ret c                                         ; $5B0D: $D8

    db $FC                                        ; $5B0E: $FC
    ld hl, sp-$02                                 ; $5B0F: $F8 $FE
    inc e                                         ; $5B11: $1C
    ld e, $0C                                     ; $5B12: $1E $0C
    ld e, $0C                                     ; $5B14: $1E $0C
    cp $04                                        ; $5B16: $FE $04
    ld h, $D8                                     ; $5B18: $26 $D8
    db $FC                                        ; $5B1A: $FC
    nop                                           ; $5B1B: $00
    nop                                           ; $5B1C: $00
    nop                                           ; $5B1D: $00
    nop                                           ; $5B1E: $00
    nop                                           ; $5B1F: $00
    ld bc, $0100                                  ; $5B20: $01 $00 $01
    nop                                           ; $5B23: $00
    ld bc, $0300                                  ; $5B24: $01 $00 $03
    nop                                           ; $5B27: $00
    dec b                                         ; $5B28: $05
    inc bc                                        ; $5B29: $03
    dec bc                                        ; $5B2A: $0B
    rlca                                          ; $5B2B: $07
    rla                                           ; $5B2C: $17
    rrca                                          ; $5B2D: $0F
    ld de, $270F                                  ; $5B2E: $11 $0F $27
    inc e                                         ; $5B31: $1C
    cpl                                           ; $5B32: $2F
    dec e                                         ; $5B33: $1D
    ld b, a                                       ; $5B34: $47
    dec a                                         ; $5B35: $3D
    ld c, a                                       ; $5B36: $4F
    dec a                                         ; $5B37: $3D
    ld e, a                                       ; $5B38: $5F
    dec a                                         ; $5B39: $3D
    sbc a                                         ; $5B3A: $9F
    ld a, a                                       ; $5B3B: $7F
    or a                                          ; $5B3C: $B7
    ld a, a                                       ; $5B3D: $7F
    adc a                                         ; $5B3E: $8F
    ld a, a                                       ; $5B3F: $7F

jr_023_5B40:
    rrca                                          ; $5B40: $0F
    nop                                           ; $5B41: $00
    ld [hl], e                                    ; $5B42: $73
    rrca                                          ; $5B43: $0F
    rst RST_08                                    ; $5B44: $CF
    ld a, [hl]                                    ; $5B45: $7E

jr_023_5B46:
    sbc a                                         ; $5B46: $9F
    db $FC                                        ; $5B47: $FC
    rrca                                          ; $5B48: $0F
    rst RST_38                                    ; $5B49: $FF
    ccf                                           ; $5B4A: $3F
    rst RST_38                                    ; $5B4B: $FF
    sbc a                                         ; $5B4C: $9F
    rst RST_38                                    ; $5B4D: $FF
    rst RST_00                                    ; $5B4E: $C7
    ld a, a                                       ; $5B4F: $7F
    rst RST_38                                    ; $5B50: $FF
    sbc h                                         ; $5B51: $9C
    rst RST_38                                    ; $5B52: $FF
    db $E3                                        ; $5B53: $E3
    rst RST_38                                    ; $5B54: $FF
    rst RST_38                                    ; $5B55: $FF
    rst RST_38                                    ; $5B56: $FF

jr_023_5B57:
    rlca                                          ; $5B57: $07
    rst RST_10                                    ; $5B58: $D7
    xor e                                         ; $5B59: $AB
    rst RST_30                                    ; $5B5A: $F7

jr_023_5B5B:
    dec bc                                        ; $5B5B: $0B
    rst RST_38                                    ; $5B5C: $FF
    ld [hl], h                                    ; $5B5D: $74
    db $FC                                        ; $5B5E: $FC

jr_023_5B5F:
    ld [hl], b                                    ; $5B5F: $70
    jr nc, jr_023_5B62                            ; $5B60: $30 $00

jr_023_5B62:
    db $FC                                        ; $5B62: $FC
    jr nc, jr_023_5B5F                            ; $5B63: $30 $FA

    db $F4                                        ; $5B65: $F4
    ld sp, hl                                     ; $5B66: $F9
    or $FE                                        ; $5B67: $F6 $FE
    sbc b                                         ; $5B69: $98
    ld sp, hl                                     ; $5B6A: $F9
    and [hl]                                      ; $5B6B: $A6
    db $FD                                        ; $5B6C: $FD
    ld a, d                                       ; $5B6D: $7A
    rst RST_38                                    ; $5B6E: $FF
    ld e, l                                       ; $5B6F: $5D
    rst RST_38                                    ; $5B70: $FF
    rst RST_28                                    ; $5B71: $EF
    db $FD                                        ; $5B72: $FD
    rst RST_28                                    ; $5B73: $EF
    rst RST_38                                    ; $5B74: $FF
    rst RST_28                                    ; $5B75: $EF
    rst RST_38                                    ; $5B76: $FF
    rst RST_00                                    ; $5B77: $C7
    rst RST_38                                    ; $5B78: $FF
    reti                                          ; $5B79: $D9


    reti                                          ; $5B7A: $D9


    ld a, $AE                                     ; $5B7B: $3E $AE
    ld hl, sp-$08                                 ; $5B7D: $F8 $F8
    nop                                           ; $5B7F: $00
    add b                                         ; $5B80: $80
    nop                                           ; $5B81: $00
    ret nz                                        ; $5B82: $C0

    add b                                         ; $5B83: $80
    jr nz, jr_023_5B46                            ; $5B84: $20 $C0

    ldh a, [$FFE0]                                ; $5B86: $F0 $E0
    sub b                                         ; $5B88: $90
    ldh [$FFF8], a                                ; $5B89: $E0 $F8
    ldh a, [$FFC8]                                ; $5B8B: $F0 $C8
    ldh a, [$FFF8]                                ; $5B8D: $F0 $F8
    ldh a, [$FFCC]                                ; $5B8F: $F0 $CC
    ld a, b                                       ; $5B91: $78
    db $EC                                        ; $5B92: $EC
    ld a, b                                       ; $5B93: $78
    ld h, h                                       ; $5B94: $64
    jr c, @+$6E                                   ; $5B95: $38 $6C

    jr c, jr_023_5BCD                             ; $5B97: $38 $34

    jr jr_023_5B57                                ; $5B99: $18 $BC

    jr @+$36                                      ; $5B9B: $18 $34

    jr jr_023_5B5B                                ; $5B9D: $18 $BC

    jr jr_023_5B40                                ; $5B9F: $18 $9F

    ld a, a                                       ; $5BA1: $7F
    sub a                                         ; $5BA2: $97
    ld a, a                                       ; $5BA3: $7F
    ld c, a                                       ; $5BA4: $4F
    ccf                                           ; $5BA5: $3F
    ld c, a                                       ; $5BA6: $4F
    ccf                                           ; $5BA7: $3F
    dec hl                                        ; $5BA8: $2B
    rra                                           ; $5BA9: $1F
    ld [de], a                                    ; $5BAA: $12
    rrca                                          ; $5BAB: $0F
    ld [$0607], sp                                ; $5BAC: $08 $07 $06
    ld bc, $0001                                  ; $5BAF: $01 $01 $00
    nop                                           ; $5BB2: $00
    nop                                           ; $5BB3: $00

Call_023_5BB4:
    nop                                           ; $5BB4: $00
    nop                                           ; $5BB5: $00
    nop                                           ; $5BB6: $00
    nop                                           ; $5BB7: $00
    nop                                           ; $5BB8: $00
    nop                                           ; $5BB9: $00
    nop                                           ; $5BBA: $00
    nop                                           ; $5BBB: $00
    nop                                           ; $5BBC: $00
    nop                                           ; $5BBD: $00
    nop                                           ; $5BBE: $00
    nop                                           ; $5BBF: $00
    ldh a, [$FFE0]                                ; $5BC0: $F0 $E0
    rst RST_20                                    ; $5BC2: $E7
    add b                                         ; $5BC3: $80
    rst RST_38                                    ; $5BC4: $FF
    rlca                                          ; $5BC5: $07
    rst RST_38                                    ; $5BC6: $FF
    sbc a                                         ; $5BC7: $9F
    ld a, [$F5BF]                                 ; $5BC8: $FA $BF $F5
    cp a                                          ; $5BCB: $BF
    ei                                            ; $5BCC: $FB

jr_023_5BCD:
    sbc $FF                                       ; $5BCD: $DE $FF
    call z, $E1FF                                 ; $5BCF: $CC $FF $E1
    cp h                                          ; $5BD2: $BC
    rst RST_28                                    ; $5BD3: $EF
    add hl, de                                    ; $5BD4: $19
    or $FB                                        ; $5BD5: $F6 $FB
    inc a                                         ; $5BD7: $3C
    ccf                                           ; $5BD8: $3F
    rlca                                          ; $5BD9: $07
    rlca                                          ; $5BDA: $07
    nop                                           ; $5BDB: $00
    nop                                           ; $5BDC: $00
    nop                                           ; $5BDD: $00
    nop                                           ; $5BDE: $00
    nop                                           ; $5BDF: $00
    nop                                           ; $5BE0: $00
    nop                                           ; $5BE1: $00
    adc [hl]                                      ; $5BE2: $8E
    nop                                           ; $5BE3: $00
    rst RST_38                                    ; $5BE4: $FF
    adc [hl]                                      ; $5BE5: $8E
    or l                                          ; $5BE6: $B5
    rst RST_38                                    ; $5BE7: $FF
    rst RST_38                                    ; $5BE8: $FF
    add b                                         ; $5BE9: $80
    xor d                                         ; $5BEA: $AA
    ld d, l                                       ; $5BEB: $55
    ld a, a                                       ; $5BEC: $7F
    adc d                                         ; $5BED: $8A
    rst RST_38                                    ; $5BEE: $FF
    ccf                                           ; $5BEF: $3F
    ld d, h                                       ; $5BF0: $54
    rst RST_38                                    ; $5BF1: $FF
    db $EB                                        ; $5BF2: $EB
    dec a                                         ; $5BF3: $3D
    ld [hl], b                                    ; $5BF4: $70
    sbc a                                         ; $5BF5: $9F
    rst RST_28                                    ; $5BF6: $EF
    ld [hl], b                                    ; $5BF7: $70
    ldh a, [$FF80]                                ; $5BF8: $F0 $80
    add b                                         ; $5BFA: $80
    nop                                           ; $5BFB: $00
    nop                                           ; $5BFC: $00
    nop                                           ; $5BFD: $00
    nop                                           ; $5BFE: $00
    nop                                           ; $5BFF: $00
    cp b                                          ; $5C00: $B8
    db $10                                        ; $5C01: $10
    ld hl, sp-$70                                 ; $5C02: $F8 $90
    ld a, b                                       ; $5C04: $78
    sub b                                         ; $5C05: $90
    ld d, b                                       ; $5C06: $50
    add b                                         ; $5C07: $80
    add b                                         ; $5C08: $80
    nop                                           ; $5C09: $00
    nop                                           ; $5C0A: $00
    nop                                           ; $5C0B: $00
    nop                                           ; $5C0C: $00
    nop                                           ; $5C0D: $00
    nop                                           ; $5C0E: $00
    nop                                           ; $5C0F: $00
    nop                                           ; $5C10: $00
    nop                                           ; $5C11: $00
    nop                                           ; $5C12: $00
    nop                                           ; $5C13: $00
    nop                                           ; $5C14: $00
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
    ld bc, $0300                                  ; $5C20: $01 $00 $03
    ld bc, $0117                                  ; $5C23: $01 $17 $01
    add hl, hl                                    ; $5C26: $29
    ld d, $4B                                     ; $5C27: $16 $4B
    dec [hl]                                      ; $5C29: $35
    ld a, a                                       ; $5C2A: $7F
    dec bc                                        ; $5C2B: $0B
    rst RST_38                                    ; $5C2C: $FF
    ld a, e                                       ; $5C2D: $7B
    rst RST_38                                    ; $5C2E: $FF
    halt                                          ; $5C2F: $76
    ld a, a                                       ; $5C30: $7F
    inc sp                                        ; $5C31: $33
    ld a, a                                       ; $5C32: $7F
    inc a                                         ; $5C33: $3C
    rst RST_38                                    ; $5C34: $FF
    ld c, a                                       ; $5C35: $4F
    rst RST_38                                    ; $5C36: $FF
    ld l, a                                       ; $5C37: $6F
    cp a                                          ; $5C38: $BF
    ld a, a                                       ; $5C39: $7F
    cp [hl]                                       ; $5C3A: $BE
    ld a, a                                       ; $5C3B: $7F
    ld d, [hl]                                    ; $5C3C: $56
    ccf                                           ; $5C3D: $3F
    ld b, h                                       ; $5C3E: $44
    ccf                                           ; $5C3F: $3F
    inc bc                                        ; $5C40: $03
    nop                                           ; $5C41: $00
    rra                                           ; $5C42: $1F
    inc bc                                        ; $5C43: $03
    ld [hl], h                                    ; $5C44: $74
    rra                                           ; $5C45: $1F
    push de                                       ; $5C46: $D5
    ld a, a                                       ; $5C47: $7F
    ld e, a                                       ; $5C48: $5F
    rst RST_38                                    ; $5C49: $FF

jr_023_5C4A:
    ld a, a                                       ; $5C4A: $7F
    db $FC                                        ; $5C4B: $FC
    db $FC                                        ; $5C4C: $FC
    ld hl, sp-$46                                 ; $5C4D: $F8 $BA
    db $F4                                        ; $5C4F: $F4
    ld a, [$FFF4]                                 ; $5C50: $FA $F4 $FF
    xor $FD                                       ; $5C53: $EE $FD
    ld c, $FB                                     ; $5C55: $0E $FB
    and $FD                                       ; $5C57: $E6 $FD
    ld a, [$FAFF]                                 ; $5C59: $FA $FF $FA
    cp $7C                                        ; $5C5C: $FE $7C
    cp $7C                                        ; $5C5E: $FE $7C
    db $FC                                        ; $5C60: $FC
    nop                                           ; $5C61: $00
    ld d, a                                       ; $5C62: $57
    db $FC                                        ; $5C63: $FC
    ccf                                           ; $5C64: $3F
    rst RST_38                                    ; $5C65: $FF
    rst RST_38                                    ; $5C66: $FF
    ret nz                                        ; $5C67: $C0

    pop bc                                        ; $5C68: $C1
    nop                                           ; $5C69: $00
    rla                                           ; $5C6A: $17
    ld bc, $153B                                  ; $5C6B: $01 $3B $15
    ld l, a                                       ; $5C6E: $6F
    inc sp                                        ; $5C6F: $33
    ld a, e                                       ; $5C70: $7B
    dec [hl]                                      ; $5C71: $35
    ld l, a                                       ; $5C72: $6F
    inc sp                                        ; $5C73: $33
    dec sp                                        ; $5C74: $3B
    dec d                                         ; $5C75: $15
    ccf                                           ; $5C76: $3F
    ld de, $142B                                  ; $5C77: $11 $2B $14
    ld a, l                                       ; $5C7A: $7D
    ld a, [hl-]                                   ; $5C7B: $3A
    ld [hl], a                                    ; $5C7C: $77
    inc a                                         ; $5C7D: $3C
    ld a, e                                       ; $5C7E: $7B
    ld a, $80                                     ; $5C7F: $3E $80
    nop                                           ; $5C81: $00
    ret nz                                        ; $5C82: $C0

    add b                                         ; $5C83: $80
    add b                                         ; $5C84: $80
    nop                                           ; $5C85: $00
    ret nz                                        ; $5C86: $C0

    nop                                           ; $5C87: $00
    jr nz, jr_023_5C4A                            ; $5C88: $20 $C0

    ld d, b                                       ; $5C8A: $50
    ldh [$FF50], a                                ; $5C8B: $E0 $50
    and b                                         ; $5C8D: $A0
    sub b                                         ; $5C8E: $90
    ldh [$FF50], a                                ; $5C8F: $E0 $50
    ldh [$FFA8], a                                ; $5C91: $E0 $A8
    ldh a, [$FF78]                                ; $5C93: $F0 $78
    ret nc                                        ; $5C95: $D0

    ld hl, sp-$70                                 ; $5C96: $F8 $90
    ld e, h                                       ; $5C98: $5C
    xor b                                         ; $5C99: $A8
    cp h                                          ; $5C9A: $BC
    ret z                                         ; $5C9B: $C8

    sbc h                                         ; $5C9C: $9C
    ld l, b                                       ; $5C9D: $68
    call z, $6178                                 ; $5C9E: $CC $78 $61
    ccf                                           ; $5CA1: $3F
    inc sp                                        ; $5CA2: $33
    ld e, $1F                                     ; $5CA3: $1E $1F
    ld bc, $0102                                  ; $5CA5: $01 $02 $01
    ld bc, $0000                                  ; $5CA8: $01 $00 $00
    nop                                           ; $5CAB: $00
    nop                                           ; $5CAC: $00
    nop                                           ; $5CAD: $00
    nop                                           ; $5CAE: $00
    nop                                           ; $5CAF: $00
    nop                                           ; $5CB0: $00
    nop                                           ; $5CB1: $00
    nop                                           ; $5CB2: $00
    nop                                           ; $5CB3: $00
    nop                                           ; $5CB4: $00
    nop                                           ; $5CB5: $00
    nop                                           ; $5CB6: $00
    nop                                           ; $5CB7: $00
    nop                                           ; $5CB8: $00
    nop                                           ; $5CB9: $00
    nop                                           ; $5CBA: $00
    nop                                           ; $5CBB: $00
    nop                                           ; $5CBC: $00
    nop                                           ; $5CBD: $00
    nop                                           ; $5CBE: $00
    nop                                           ; $5CBF: $00
    rst RST_38                                    ; $5CC0: $FF

jr_023_5CC1:
    or d                                          ; $5CC1: $B2
    di                                            ; $5CC2: $F3
    xor h                                         ; $5CC3: $AC
    rst RST_38                                    ; $5CC4: $FF
    and e                                         ; $5CC5: $A3
    rst RST_30                                    ; $5CC6: $F7
    ld l, e                                       ; $5CC7: $6B
    rst RST_38                                    ; $5CC8: $FF
    ld h, e                                       ; $5CC9: $63
    rst RST_38                                    ; $5CCA: $FF
    add sp, -$01                                  ; $5CCB: $E8 $FF
    rst RST_28                                    ; $5CCD: $EF
    rst RST_18                                    ; $5CCE: $DF
    ldh [$FF5F], a                                ; $5CCF: $E0 $5F
    rst RST_38                                    ; $5CD1: $FF
    adc e                                         ; $5CD2: $8B
    ld a, a                                       ; $5CD3: $7F
    ld h, c                                       ; $5CD4: $61
    rra                                           ; $5CD5: $1F
    jr jr_023_5CDF                                ; $5CD6: $18 $07

    rlca                                          ; $5CD8: $07
    nop                                           ; $5CD9: $00
    nop                                           ; $5CDA: $00
    nop                                           ; $5CDB: $00
    nop                                           ; $5CDC: $00
    nop                                           ; $5CDD: $00
    nop                                           ; $5CDE: $00

jr_023_5CDF:
    nop                                           ; $5CDF: $00
    ld [hl], l                                    ; $5CE0: $75
    ccf                                           ; $5CE1: $3F
    dec sp                                        ; $5CE2: $3B
    rra                                           ; $5CE3: $1F
    cp a                                          ; $5CE4: $BF
    ld e, $FF                                     ; $5CE5: $1E $FF
    adc h                                         ; $5CE7: $8C
    rst RST_38                                    ; $5CE8: $FF
    add e                                         ; $5CE9: $83
    rst RST_38                                    ; $5CEA: $FF
    rst RST_18                                    ; $5CEB: $DF
    rst RST_38                                    ; $5CEC: $FF
    rst RST_38                                    ; $5CED: $FF
    rst RST_38                                    ; $5CEE: $FF
    rst RST_38                                    ; $5CEF: $FF
    cp $FF                                        ; $5CF0: $FE $FF
    or a                                          ; $5CF2: $B7
    rst RST_38                                    ; $5CF3: $FF
    ret c                                         ; $5CF4: $D8

    rst RST_38                                    ; $5CF5: $FF
    ld b, c                                       ; $5CF6: $41
    cp $06                                        ; $5CF7: $FE $06
    ld hl, sp-$08                                 ; $5CF9: $F8 $F8
    nop                                           ; $5CFB: $00
    nop                                           ; $5CFC: $00
    nop                                           ; $5CFD: $00
    nop                                           ; $5CFE: $00
    nop                                           ; $5CFF: $00
    ld hl, sp+$50                                 ; $5D00: $F8 $50
    ld hl, sp+$30                                 ; $5D02: $F8 $30
    ret c                                         ; $5D04: $D8

    ldh a, [$FF90]                                ; $5D05: $F0 $90
    ldh [$FFD0], a                                ; $5D07: $E0 $D0
    ldh [rNR10], a                                ; $5D09: $E0 $10
    ldh [$FFA0], a                                ; $5D0B: $E0 $A0
    ret nz                                        ; $5D0D: $C0

    jr nz, @-$3E                                  ; $5D0E: $20 $C0

    ld b, b                                       ; $5D10: $40
    add b                                         ; $5D11: $80
    add b                                         ; $5D12: $80
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
    inc e                                         ; $5D20: $1C
    nop                                           ; $5D21: $00
    ld a, $1C                                     ; $5D22: $3E $1C
    ld hl, $6A1E                                  ; $5D24: $21 $1E $6A
    scf                                           ; $5D27: $37
    ld a, [hl]                                    ; $5D28: $7E
    rra                                           ; $5D29: $1F
    ld e, [hl]                                    ; $5D2A: $5E
    daa                                           ; $5D2B: $27
    ld d, a                                       ; $5D2C: $57
    add hl, hl                                    ; $5D2D: $29
    dec [hl]                                      ; $5D2E: $35
    ld a, [bc]                                    ; $5D2F: $0A
    dec bc                                        ; $5D30: $0B
    nop                                           ; $5D31: $00
    ld bc, $0000                                  ; $5D32: $01 $00 $00
    nop                                           ; $5D35: $00
    ld a, [hl+]                                   ; $5D36: $2A
    nop                                           ; $5D37: $00
    ld d, l                                       ; $5D38: $55
    ld a, [hl+]                                   ; $5D39: $2A
    rst RST_38                                    ; $5D3A: $FF
    ld bc, $7FD7                                  ; $5D3B: $01 $D7 $7F
    ld a, a                                       ; $5D3E: $7F
    jr c, jr_023_5CC1                             ; $5D3F: $38 $80

    nop                                           ; $5D41: $00
    ldh a, [$FF80]                                ; $5D42: $F0 $80
    ld a, h                                       ; $5D44: $7C
    ldh a, [$FFFE]                                ; $5D45: $F0 $FE
    adc h                                         ; $5D47: $8C
    rst RST_28                                    ; $5D48: $EF
    sub d                                         ; $5D49: $92
    cp a                                          ; $5D4A: $BF
    add $DD                                       ; $5D4B: $C6 $DD
    ld a, a                                       ; $5D4D: $7F
    ld h, e                                       ; $5D4E: $63
    cp a                                          ; $5D4F: $BF
    rst RST_38                                    ; $5D50: $FF
    dec b                                         ; $5D51: $05
    rst RST_38                                    ; $5D52: $FF
    add hl, de                                    ; $5D53: $19
    sub $7D                                       ; $5D54: $D6 $7D
    xor a                                         ; $5D56: $AF
    db $FD                                        ; $5D57: $FD
    rst RST_38                                    ; $5D58: $FF
    db $FD                                        ; $5D59: $FD
    rst RST_38                                    ; $5D5A: $FF
    ei                                            ; $5D5B: $FB
    rst RST_38                                    ; $5D5C: $FF
    rlca                                          ; $5D5D: $07
    rlca                                          ; $5D5E: $07
    inc bc                                        ; $5D5F: $03
    add b                                         ; $5D60: $80
    nop                                           ; $5D61: $00
    add b                                         ; $5D62: $80
    nop                                           ; $5D63: $00
    ret nz                                        ; $5D64: $C0

    add b                                         ; $5D65: $80
    ld h, b                                       ; $5D66: $60
    ret nz                                        ; $5D67: $C0

    ccf                                           ; $5D68: $3F
    ret nz                                        ; $5D69: $C0

    and a                                         ; $5D6A: $A7
    rst RST_38                                    ; $5D6B: $FF
    inc c                                         ; $5D6C: $0C
    rst RST_38                                    ; $5D6D: $FF
    ld hl, $65FF                                  ; $5D6E: $21 $FF $65
    rst RST_38                                    ; $5D71: $FF
    db $ED                                        ; $5D72: $ED
    ccf                                           ; $5D73: $3F
    rst RST_38                                    ; $5D74: $FF
    rst RST_38                                    ; $5D75: $FF
    rst RST_38                                    ; $5D76: $FF
    sbc a                                         ; $5D77: $9F
    rst RST_38                                    ; $5D78: $FF
    ld a, a                                       ; $5D79: $7F
    ld a, a                                       ; $5D7A: $7F
    rra                                           ; $5D7B: $1F
    rra                                           ; $5D7C: $1F
    rlca                                          ; $5D7D: $07
    rlca                                          ; $5D7E: $07
    nop                                           ; $5D7F: $00
    rlca                                          ; $5D80: $07
    nop                                           ; $5D81: $00
    dec e                                         ; $5D82: $1D
    rlca                                          ; $5D83: $07
    ld [hl], h                                    ; $5D84: $74
    rra                                           ; $5D85: $1F
    rst RST_10                                    ; $5D86: $D7
    ld a, a                                       ; $5D87: $7F
    xor h                                         ; $5D88: $AC
    rst RST_38                                    ; $5D89: $FF
    add hl, sp                                    ; $5D8A: $39
    rst RST_38                                    ; $5D8B: $FF
    ld a, e                                       ; $5D8C: $7B
    rst RST_38                                    ; $5D8D: $FF
    ld [hl], d                                    ; $5D8E: $72
    rst RST_28                                    ; $5D8F: $EF
    pop af                                        ; $5D90: $F1
    rst RST_28                                    ; $5D91: $EF
    ldh a, [c]                                    ; $5D92: $F2
    rst RST_28                                    ; $5D93: $EF
    ld sp, hl                                     ; $5D94: $F9
    rst RST_28                                    ; $5D95: $EF
    ld hl, sp-$11                                 ; $5D96: $F8 $EF
    db $FC                                        ; $5D98: $FC
    rst RST_30                                    ; $5D99: $F7
    cp $FB                                        ; $5D9A: $FE $FB
    ei                                            ; $5D9C: $FB
    ldh [$FFE0], a                                ; $5D9D: $E0 $E0
    nop                                           ; $5D9F: $00
    ld bc, $0200                                  ; $5DA0: $01 $00 $02
    ld bc, $0306                                  ; $5DA3: $01 $06 $03
    ld a, [de]                                    ; $5DA6: $1A
    rlca                                          ; $5DA7: $07
    ldh a, [c]                                    ; $5DA8: $F2
    rra                                           ; $5DA9: $1F
    ld d, e                                       ; $5DAA: $53
    rst RST_38                                    ; $5DAB: $FF
    dec de                                        ; $5DAC: $1B
    rst RST_38                                    ; $5DAD: $FF
    rst RST_18                                    ; $5DAE: $DF
    rst RST_38                                    ; $5DAF: $FF
    rst RST_38                                    ; $5DB0: $FF
    cp $FF                                        ; $5DB1: $FE $FF
    db $FC                                        ; $5DB3: $FC
    rst RST_38                                    ; $5DB4: $FF
    reti                                          ; $5DB5: $D9


    rst RST_38                                    ; $5DB6: $FF

jr_023_5DB7:
    pop de                                        ; $5DB7: $D1
    rst RST_38                                    ; $5DB8: $FF
    jp $EFFF                                      ; $5DB9: $C3 $FF $EF


    rst RST_38                                    ; $5DBC: $FF
    rst RST_30                                    ; $5DBD: $F7
    rst RST_38                                    ; $5DBE: $FF
    cp $10                                        ; $5DBF: $FE $10
    nop                                           ; $5DC1: $00
    jr c, @+$12                                   ; $5DC2: $38 $10

    jr c, jr_023_5DD6                             ; $5DC4: $38 $10

    jr z, jr_023_5DD8                             ; $5DC6: $28 $10

    inc a                                         ; $5DC8: $3C
    jr jr_023_5E07                                ; $5DC9: $18 $3C

    jr jr_023_5DF9                                ; $5DCB: $18 $2C

    jr jr_023_5E0B                                ; $5DCD: $18 $3C

    jr jr_023_5E2D                                ; $5DCF: $18 $5C

    jr c, jr_023_5E2F                             ; $5DD1: $38 $5C

    jr c, @-$32                                   ; $5DD3: $38 $CC

    ld a, b                                       ; $5DD5: $78

jr_023_5DD6:
    xor h                                         ; $5DD6: $AC
    ld a, b                                       ; $5DD7: $78

jr_023_5DD8:
    jr c, @-$0E                                   ; $5DD8: $38 $F0

    cp b                                          ; $5DDA: $B8
    ldh a, [$FFF0]                                ; $5DDB: $F0 $F0
    ldh [$FFF6], a                                ; $5DDD: $E0 $F6
    ldh [$FF38], a                                ; $5DDF: $E0 $38
    nop                                           ; $5DE1: $00
    nop                                           ; $5DE2: $00
    nop                                           ; $5DE3: $00
    nop                                           ; $5DE4: $00
    nop                                           ; $5DE5: $00
    ld bc, $0000                                  ; $5DE6: $01 $00 $00
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

jr_023_5DF9:
    nop                                           ; $5DF9: $00
    nop                                           ; $5DFA: $00
    nop                                           ; $5DFB: $00
    nop                                           ; $5DFC: $00
    nop                                           ; $5DFD: $00
    nop                                           ; $5DFE: $00
    nop                                           ; $5DFF: $00
    rst RST_38                                    ; $5E00: $FF
    nop                                           ; $5E01: $00
    ccf                                           ; $5E02: $3F
    rst RST_00                                    ; $5E03: $C7
    rst RST_08                                    ; $5E04: $CF
    jr nc, jr_023_5DB7                            ; $5E05: $30 $B0

jr_023_5E07:
    ld b, b                                       ; $5E07: $40
    ret nz                                        ; $5E08: $C0

    nop                                           ; $5E09: $00
    nop                                           ; $5E0A: $00

jr_023_5E0B:
    nop                                           ; $5E0B: $00
    nop                                           ; $5E0C: $00
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
    ld a, [hl]                                    ; $5E20: $7E
    db $FC                                        ; $5E21: $FC
    or [hl]                                       ; $5E22: $B6
    db $FC                                        ; $5E23: $FC
    inc c                                         ; $5E24: $0C
    ld hl, sp-$08                                 ; $5E25: $F8 $F8
    ldh a, [$FFF0]                                ; $5E27: $F0 $F0
    nop                                           ; $5E29: $00
    nop                                           ; $5E2A: $00
    nop                                           ; $5E2B: $00
    nop                                           ; $5E2C: $00

jr_023_5E2D:
    nop                                           ; $5E2D: $00
    nop                                           ; $5E2E: $00

jr_023_5E2F:
    nop                                           ; $5E2F: $00
    nop                                           ; $5E30: $00
    nop                                           ; $5E31: $00

jr_023_5E32:
    nop                                           ; $5E32: $00
    nop                                           ; $5E33: $00
    nop                                           ; $5E34: $00
    nop                                           ; $5E35: $00
    nop                                           ; $5E36: $00
    nop                                           ; $5E37: $00
    nop                                           ; $5E38: $00
    nop                                           ; $5E39: $00
    nop                                           ; $5E3A: $00
    nop                                           ; $5E3B: $00
    nop                                           ; $5E3C: $00
    nop                                           ; $5E3D: $00
    nop                                           ; $5E3E: $00
    nop                                           ; $5E3F: $00
    ld sp, hl                                     ; $5E40: $F9
    add $FF                                       ; $5E41: $C6 $FF
    ret c                                         ; $5E43: $D8

    cp $BD                                        ; $5E44: $FE $BD
    rst RST_38                                    ; $5E46: $FF
    ld h, b                                       ; $5E47: $60
    ldh [rP1], a                                  ; $5E48: $E0 $00
    ret nz                                        ; $5E4A: $C0

    nop                                           ; $5E4B: $00
    rst RST_38                                    ; $5E4C: $FF
    ret nz                                        ; $5E4D: $C0

    db $FC                                        ; $5E4E: $FC
    ei                                            ; $5E4F: $FB
    rst RST_38                                    ; $5E50: $FF
    db $FC                                        ; $5E51: $FC
    cp $0D                                        ; $5E52: $FE $0D
    adc a                                         ; $5E54: $8F
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
    add b                                         ; $5E60: $80
    nop                                           ; $5E61: $00
    ld b, b                                       ; $5E62: $40
    add b                                         ; $5E63: $80
    add b                                         ; $5E64: $80
    nop                                           ; $5E65: $00
    nop                                           ; $5E66: $00
    nop                                           ; $5E67: $00
    nop                                           ; $5E68: $00
    nop                                           ; $5E69: $00
    nop                                           ; $5E6A: $00
    nop                                           ; $5E6B: $00
    add b                                         ; $5E6C: $80
    nop                                           ; $5E6D: $00
    ret nz                                        ; $5E6E: $C0

    nop                                           ; $5E6F: $00
    jr nz, jr_023_5E32                            ; $5E70: $20 $C0

    ret nz                                        ; $5E72: $C0

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
    nop                                           ; $5E84: $00
    nop                                           ; $5E85: $00
    nop                                           ; $5E86: $00
    nop                                           ; $5E87: $00
    add b                                         ; $5E88: $80
    nop                                           ; $5E89: $00
    add b                                         ; $5E8A: $80
    nop                                           ; $5E8B: $00
    add b                                         ; $5E8C: $80
    nop                                           ; $5E8D: $00
    add b                                         ; $5E8E: $80
    nop                                           ; $5E8F: $00
    add b                                         ; $5E90: $80
    nop                                           ; $5E91: $00
    add b                                         ; $5E92: $80
    nop                                           ; $5E93: $00
    add b                                         ; $5E94: $80
    nop                                           ; $5E95: $00
    rst RST_38                                    ; $5E96: $FF
    nop                                           ; $5E97: $00
    cp $FC                                        ; $5E98: $FE $FC
    inc c                                         ; $5E9A: $0C
    ld hl, sp+$18                                 ; $5E9B: $F8 $18
    ldh a, [$FF30]                                ; $5E9D: $F0 $30
    ldh [rP1], a                                  ; $5E9F: $E0 $00
    nop                                           ; $5EA1: $00
    nop                                           ; $5EA2: $00
    nop                                           ; $5EA3: $00
    nop                                           ; $5EA4: $00
    nop                                           ; $5EA5: $00
    nop                                           ; $5EA6: $00
    nop                                           ; $5EA7: $00
    nop                                           ; $5EA8: $00
    nop                                           ; $5EA9: $00
    ld bc, $8300                                  ; $5EAA: $01 $00 $83
    ld bc, $83C7                                  ; $5EAD: $01 $C7 $83
    ld l, l                                       ; $5EB0: $6D
    rst RST_00                                    ; $5EB1: $C7
    add hl, sp                                    ; $5EB2: $39
    rst RST_28                                    ; $5EB3: $EF
    ld de, $01FF                                  ; $5EB4: $11 $FF $01
    rst RST_38                                    ; $5EB7: $FF
    ld bc, $F0FF                                  ; $5EB8: $01 $FF $F0
    rst RST_38                                    ; $5EBB: $FF
    db $FC                                        ; $5EBC: $FC
    rrca                                          ; $5EBD: $0F
    ld c, $03                                     ; $5EBE: $0E $03
    nop                                           ; $5EC0: $00
    nop                                           ; $5EC1: $00
    nop                                           ; $5EC2: $00
    nop                                           ; $5EC3: $00
    nop                                           ; $5EC4: $00
    nop                                           ; $5EC5: $00
    nop                                           ; $5EC6: $00
    nop                                           ; $5EC7: $00
    ld [bc], a                                    ; $5EC8: $02
    nop                                           ; $5EC9: $00
    inc bc                                        ; $5ECA: $03
    nop                                           ; $5ECB: $00
    inc bc                                        ; $5ECC: $03
    ld bc, $0103                                  ; $5ECD: $01 $03 $01
    inc bc                                        ; $5ED0: $03
    ld bc, $0103                                  ; $5ED1: $01 $03 $01
    inc bc                                        ; $5ED4: $03
    ld bc, $0103                                  ; $5ED5: $01 $03 $01
    inc bc                                        ; $5ED8: $03
    ld bc, $0103                                  ; $5ED9: $01 $03 $01
    inc bc                                        ; $5EDC: $03
    ld bc, $00C3                                  ; $5EDD: $01 $C3 $00
    dec de                                        ; $5EE0: $1B
    ld c, $0E                                     ; $5EE1: $0E $0E
    inc b                                         ; $5EE3: $04
    inc c                                         ; $5EE4: $0C
    nop                                           ; $5EE5: $00
    ld [$0000], sp                                ; $5EE6: $08 $00 $00
    nop                                           ; $5EE9: $00
    ret nz                                        ; $5EEA: $C0

    nop                                           ; $5EEB: $00
    ldh [$FFC0], a                                ; $5EEC: $E0 $C0
    ld [hl], b                                    ; $5EEE: $70
    ldh [rP1], a                                  ; $5EEF: $E0 $00
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
    stop                                          ; $5F00: $10 $00
    ldh [rP1], a                                  ; $5F02: $E0 $00
    ld a, [hl]                                    ; $5F04: $7E
    ldh [$FF3A], a                                ; $5F05: $E0 $3A
    db $F4                                        ; $5F07: $F4
    ld [hl], e                                    ; $5F08: $73
    db $EC                                        ; $5F09: $EC
    db $E3                                        ; $5F0A: $E3
    db $DD                                        ; $5F0B: $DD
    rst RST_18                                    ; $5F0C: $DF
    ld h, e                                       ; $5F0D: $63
    xor $3F                                       ; $5F0E: $EE $3F
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
    ld c, $00                                     ; $5F20: $0E $00
    rra                                           ; $5F22: $1F
    ld c, $10                                     ; $5F23: $0E $10
    rrca                                          ; $5F25: $0F
    dec [hl]                                      ; $5F26: $35
    dec de                                        ; $5F27: $1B
    ccf                                           ; $5F28: $3F
    rrca                                          ; $5F29: $0F
    cpl                                           ; $5F2A: $2F
    inc de                                        ; $5F2B: $13
    dec hl                                        ; $5F2C: $2B
    inc d                                         ; $5F2D: $14
    ld d, $01                                     ; $5F2E: $16 $01
    ld bc, $0000                                  ; $5F30: $01 $00 $00
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
    inc l                                         ; $5F40: $2C
    rla                                           ; $5F41: $17
    rra                                           ; $5F42: $1F
    nop                                           ; $5F43: $00
    rlca                                          ; $5F44: $07
    nop                                           ; $5F45: $00
    ld b, $03                                     ; $5F46: $06 $03
    inc c                                         ; $5F48: $0C
    inc bc                                        ; $5F49: $03
    ld d, $0B                                     ; $5F4A: $16 $0B
    dec e                                         ; $5F4C: $1D
    rlca                                          ; $5F4D: $07
    cpl                                           ; $5F4E: $2F
    rla                                           ; $5F4F: $17
    ld a, e                                       ; $5F50: $7B
    rrca                                          ; $5F51: $0F
    or a                                          ; $5F52: $B7
    ld e, h                                       ; $5F53: $5C
    db $EC                                        ; $5F54: $EC
    jr c, jr_023_5FCF                             ; $5F55: $38 $78

    jr nc, jr_023_5F89                            ; $5F57: $30 $30

    nop                                           ; $5F59: $00
    nop                                           ; $5F5A: $00
    nop                                           ; $5F5B: $00
    nop                                           ; $5F5C: $00
    nop                                           ; $5F5D: $00
    nop                                           ; $5F5E: $00
    nop                                           ; $5F5F: $00
    ld a, h                                       ; $5F60: $7C
    ld hl, sp-$1A                                 ; $5F61: $F8 $E6
    cp h                                          ; $5F63: $BC
    cp $3C                                        ; $5F64: $FE $3C
    di                                            ; $5F66: $F3
    sbc $79                                       ; $5F67: $DE $79
    rst RST_18                                    ; $5F69: $DF
    ld a, a                                       ; $5F6A: $7F
    rst RST_18                                    ; $5F6B: $DF
    cp $CF                                        ; $5F6C: $FE $CF
    cp $AF                                        ; $5F6E: $FE $AF
    rst RST_38                                    ; $5F70: $FF
    scf                                           ; $5F71: $37
    ccf                                           ; $5F72: $3F
    rra                                           ; $5F73: $1F
    ccf                                           ; $5F74: $3F
    rra                                           ; $5F75: $1F
    rra                                           ; $5F76: $1F
    rrca                                          ; $5F77: $0F
    rra                                           ; $5F78: $1F
    rrca                                          ; $5F79: $0F
    rra                                           ; $5F7A: $1F
    ld c, $3F                                     ; $5F7B: $0E $3F
    ld d, $3F                                     ; $5F7D: $16 $3F
    ld d, $03                                     ; $5F7F: $16 $03
    nop                                           ; $5F81: $00
    dec b                                         ; $5F82: $05
    ld [bc], a                                    ; $5F83: $02
    ld [bc], a                                    ; $5F84: $02
    nop                                           ; $5F85: $00
    nop                                           ; $5F86: $00

jr_023_5F87:
    nop                                           ; $5F87: $00
    nop                                           ; $5F88: $00

jr_023_5F89:
    nop                                           ; $5F89: $00
    nop                                           ; $5F8A: $00
    nop                                           ; $5F8B: $00
    rlca                                          ; $5F8C: $07
    nop                                           ; $5F8D: $00
    dec e                                         ; $5F8E: $1D
    rlca                                          ; $5F8F: $07
    ld h, $1F                                     ; $5F90: $26 $1F
    ld a, a                                       ; $5F92: $7F
    ccf                                           ; $5F93: $3F
    ld e, a                                       ; $5F94: $5F
    jr nc, jr_023_5F87                            ; $5F95: $30 $F0

    ld h, b                                       ; $5F97: $60
    and e                                         ; $5F98: $A3
    ld b, b                                       ; $5F99: $40
    push bc                                       ; $5F9A: $C5
    ld [bc], a                                    ; $5F9B: $02
    rlca                                          ; $5F9C: $07
    nop                                           ; $5F9D: $00
    nop                                           ; $5F9E: $00
    nop                                           ; $5F9F: $00
    rst RST_38                                    ; $5FA0: $FF
    db $10                                        ; $5FA1: $10
    ld a, d                                       ; $5FA2: $7A
    or l                                          ; $5FA3: $B5
    rst RST_38                                    ; $5FA4: $FF
    ld [bc], a                                    ; $5FA5: $02
    cpl                                           ; $5FA6: $2F
    ld e, $2F                                     ; $5FA7: $1E $2F
    ld e, $2F                                     ; $5FA9: $1E $2F
    rra                                           ; $5FAB: $1F
    rst RST_38                                    ; $5FAC: $FF
    rra                                           ; $5FAD: $1F
    ld a, a                                       ; $5FAE: $7F
    db $DD                                        ; $5FAF: $DD
    cp a                                          ; $5FB0: $BF
    db $ED                                        ; $5FB1: $ED
    rst RST_18                                    ; $5FB2: $DF
    or $FF                                        ; $5FB3: $F6 $FF
    halt                                          ; $5FB5: $76
    ld a, a                                       ; $5FB6: $7F
    dec c                                         ; $5FB7: $0D
    rst RST_38                                    ; $5FB8: $FF
    dec a                                         ; $5FB9: $3D
    ccf                                           ; $5FBA: $3F
    ret c                                         ; $5FBB: $D8

    ld hl, sp+$00                                 ; $5FBC: $F8 $00
    nop                                           ; $5FBE: $00
    nop                                           ; $5FBF: $00
    rst RST_38                                    ; $5FC0: $FF
    sbc $FF                                       ; $5FC1: $DE $FF
    dec a                                         ; $5FC3: $3D
    cp $7B                                        ; $5FC4: $FE $7B
    db $FC                                        ; $5FC6: $FC
    ei                                            ; $5FC7: $FB
    db $FC                                        ; $5FC8: $FC
    rst RST_30                                    ; $5FC9: $F7
    db $FD                                        ; $5FCA: $FD
    ld [hl], a                                    ; $5FCB: $77
    db $FD                                        ; $5FCC: $FD
    ld [hl], a                                    ; $5FCD: $77

jr_023_5FCE:
    rst RST_38                                    ; $5FCE: $FF

jr_023_5FCF:
    or a                                          ; $5FCF: $B7
    rst RST_38                                    ; $5FD0: $FF
    set 7, a                                      ; $5FD1: $CB $FF
    ld sp, $F8FD                                  ; $5FD3: $31 $FD $F8
    ld hl, sp-$20                                 ; $5FD6: $F8 $E0
    ldh [$FF80], a                                ; $5FD8: $E0 $80
    add b                                         ; $5FDA: $80
    nop                                           ; $5FDB: $00
    ld bc, $0100                                  ; $5FDC: $01 $00 $01
    nop                                           ; $5FDF: $00
    adc b                                         ; $5FE0: $88
    ldh a, [$FF08]                                ; $5FE1: $F0 $08
    ldh a, [rNR14]                                ; $5FE3: $F0 $14
    ld hl, sp-$44                                 ; $5FE5: $F8 $BC
    ld hl, sp-$04                                 ; $5FE7: $F8 $FC
    ld hl, sp-$04                                 ; $5FE9: $F8 $FC
    ld hl, sp-$08                                 ; $5FEB: $F8 $F8
    ldh a, [$FFF8]                                ; $5FED: $F0 $F8
    ldh [$FFFC], a                                ; $5FEF: $E0 $FC
    ret c                                         ; $5FF1: $D8

    db $FC                                        ; $5FF2: $FC
    ld hl, sp-$02                                 ; $5FF3: $F8 $FE
    inc e                                         ; $5FF5: $1C
    ld e, $0C                                     ; $5FF6: $1E $0C
    ld e, $0C                                     ; $5FF8: $1E $0C
    cp $04                                        ; $5FFA: $FE $04
    ld h, $D8                                     ; $5FFC: $26 $D8
    db $FC                                        ; $5FFE: $FC
    nop                                           ; $5FFF: $00
    nop                                           ; $6000: $00
    nop                                           ; $6001: $00
    nop                                           ; $6002: $00
    nop                                           ; $6003: $00
    nop                                           ; $6004: $00
    nop                                           ; $6005: $00
    nop                                           ; $6006: $00
    nop                                           ; $6007: $00
    add b                                         ; $6008: $80
    nop                                           ; $6009: $00
    ret nz                                        ; $600A: $C0

    add b                                         ; $600B: $80
    jr nz, jr_023_5FCE                            ; $600C: $20 $C0

    db $10                                        ; $600E: $10
    ldh [$FFC8], a                                ; $600F: $E0 $C8
    ldh a, [$FF88]                                ; $6011: $F0 $88
    ldh a, [$FFF4]                                ; $6013: $F0 $F4
    ld hl, sp-$1C                                 ; $6015: $F8 $E4
    ld hl, sp-$1D                                 ; $6017: $F8 $E3
    db $FC                                        ; $6019: $FC
    db $FD                                        ; $601A: $FD
    rst RST_38                                    ; $601B: $FF
    ld hl, sp-$41                                 ; $601C: $F8 $BF
    di                                            ; $601E: $F3
    cp a                                          ; $601F: $BF
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
    nop                                           ; $602C: $00
    nop                                           ; $602D: $00
    nop                                           ; $602E: $00
    nop                                           ; $602F: $00
    nop                                           ; $6030: $00
    nop                                           ; $6031: $00
    nop                                           ; $6032: $00
    nop                                           ; $6033: $00
    nop                                           ; $6034: $00
    nop                                           ; $6035: $00
    nop                                           ; $6036: $00
    nop                                           ; $6037: $00
    nop                                           ; $6038: $00
    nop                                           ; $6039: $00
    add b                                         ; $603A: $80
    nop                                           ; $603B: $00
    ld b, b                                       ; $603C: $40
    add b                                         ; $603D: $80
    and b                                         ; $603E: $A0
    ret nz                                        ; $603F: $C0

    nop                                           ; $6040: $00
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
    nop                                           ; $604C: $00
    nop                                           ; $604D: $00
    jr c, jr_023_6050                             ; $604E: $38 $00

jr_023_6050:
    ld a, h                                       ; $6050: $7C
    jr c, jr_023_6096                             ; $6051: $38 $43

    inc a                                         ; $6053: $3C
    push de                                       ; $6054: $D5
    ld l, a                                       ; $6055: $6F
    db $FC                                        ; $6056: $FC
    ccf                                           ; $6057: $3F
    cp l                                          ; $6058: $BD
    ld c, a                                       ; $6059: $4F
    xor a                                         ; $605A: $AF
    ld d, e                                       ; $605B: $53
    ld e, e                                       ; $605C: $5B
    dec b                                         ; $605D: $05
    rlca                                          ; $605E: $07
    nop                                           ; $605F: $00
    nop                                           ; $6060: $00
    nop                                           ; $6061: $00
    nop                                           ; $6062: $00
    nop                                           ; $6063: $00
    nop                                           ; $6064: $00
    nop                                           ; $6065: $00
    nop                                           ; $6066: $00
    nop                                           ; $6067: $00
    nop                                           ; $6068: $00
    nop                                           ; $6069: $00
    nop                                           ; $606A: $00
    nop                                           ; $606B: $00
    nop                                           ; $606C: $00
    nop                                           ; $606D: $00
    nop                                           ; $606E: $00
    nop                                           ; $606F: $00
    nop                                           ; $6070: $00
    nop                                           ; $6071: $00
    add b                                         ; $6072: $80
    nop                                           ; $6073: $00
    ld hl, sp-$80                                 ; $6074: $F8 $80
    add sp, -$30                                  ; $6076: $E8 $D0
    call z, $8FB0                                 ; $6078: $CC $B0 $8F
    ld [hl], h                                    ; $607B: $74
    ld a, a                                       ; $607C: $7F
    adc a                                         ; $607D: $8F
    cp c                                          ; $607E: $B9
    rst RST_38                                    ; $607F: $FF
    nop                                           ; $6080: $00
    nop                                           ; $6081: $00
    nop                                           ; $6082: $00
    nop                                           ; $6083: $00
    nop                                           ; $6084: $00
    nop                                           ; $6085: $00
    nop                                           ; $6086: $00
    nop                                           ; $6087: $00
    nop                                           ; $6088: $00
    nop                                           ; $6089: $00
    nop                                           ; $608A: $00
    nop                                           ; $608B: $00
    nop                                           ; $608C: $00
    nop                                           ; $608D: $00
    nop                                           ; $608E: $00
    nop                                           ; $608F: $00
    nop                                           ; $6090: $00
    nop                                           ; $6091: $00
    nop                                           ; $6092: $00
    nop                                           ; $6093: $00
    nop                                           ; $6094: $00
    nop                                           ; $6095: $00

jr_023_6096:
    nop                                           ; $6096: $00
    nop                                           ; $6097: $00
    nop                                           ; $6098: $00
    nop                                           ; $6099: $00
    nop                                           ; $609A: $00
    nop                                           ; $609B: $00
    add b                                         ; $609C: $80
    nop                                           ; $609D: $00
    ret nz                                        ; $609E: $C0

    add b                                         ; $609F: $80
    inc bc                                        ; $60A0: $03
    nop                                           ; $60A1: $00
    inc b                                         ; $60A2: $04
    inc bc                                        ; $60A3: $03
    add hl, bc                                    ; $60A4: $09
    rlca                                          ; $60A5: $07
    rla                                           ; $60A6: $17
    rrca                                          ; $60A7: $0F
    inc sp                                        ; $60A8: $33
    rra                                           ; $60A9: $1F
    ld l, a                                       ; $60AA: $6F
    inc a                                         ; $60AB: $3C
    ld a, a                                       ; $60AC: $7F
    ld sp, $2B7F                                  ; $60AD: $31 $7F $2B
    adc $7B                                       ; $60B0: $CE $7B
    rst RST_20                                    ; $60B2: $E7
    ld e, c                                       ; $60B3: $59
    rst RST_30                                    ; $60B4: $F7
    ld c, h                                       ; $60B5: $4C
    ld [$7F55], a                                 ; $60B6: $EA $55 $7F
    inc h                                         ; $60B9: $24
    ld a, e                                       ; $60BA: $7B
    ld l, $57                                     ; $60BB: $2E $57
    ld a, $2B                                     ; $60BD: $3E $2B
    rra                                           ; $60BF: $1F
    rra                                           ; $60C0: $1F
    nop                                           ; $60C1: $00
    ld h, b                                       ; $60C2: $60
    rra                                           ; $60C3: $1F

jr_023_60C4:
    sub d                                         ; $60C4: $92
    ld a, a                                       ; $60C5: $7F
    sbc e                                         ; $60C6: $9B
    rst RST_38                                    ; $60C7: $FF
    rst RST_18                                    ; $60C8: $DF
    rst RST_38                                    ; $60C9: $FF
    rst RST_38                                    ; $60CA: $FF
    rst RST_38                                    ; $60CB: $FF
    rst RST_38                                    ; $60CC: $FF
    rst RST_30                                    ; $60CD: $F7
    rst RST_38                                    ; $60CE: $FF
    dec de                                        ; $60CF: $1B
    rst RST_38                                    ; $60D0: $FF
    db $E3                                        ; $60D1: $E3
    rst RST_38                                    ; $60D2: $FF
    di                                            ; $60D3: $F3
    ld a, a                                       ; $60D4: $7F
    ldh a, [$FFBE]                                ; $60D5: $F0 $BE
    pop af                                        ; $60D7: $F1
    ld a, e                                       ; $60D8: $7B
    db $F4                                        ; $60D9: $F4
    cp d                                          ; $60DA: $BA
    db $F4                                        ; $60DB: $F4
    db $FC                                        ; $60DC: $FC
    ld [hl], b                                    ; $60DD: $70
    ld d, b                                       ; $60DE: $50
    and b                                         ; $60DF: $A0
    ldh [rP1], a                                  ; $60E0: $E0 $00
    jr jr_023_60C4                                ; $60E2: $18 $E0

    ld h, $F8                                     ; $60E4: $26 $F8
    or c                                          ; $60E6: $B1
    cp $FA                                        ; $60E7: $FE $FA
    rst RST_38                                    ; $60E9: $FF
    rst RST_38                                    ; $60EA: $FF
    rst RST_38                                    ; $60EB: $FF
    rst RST_38                                    ; $60EC: $FF
    ld a, a                                       ; $60ED: $7F
    rst RST_38                                    ; $60EE: $FF
    ld e, a                                       ; $60EF: $5F
    rst RST_38                                    ; $60F0: $FF
    ld e, a                                       ; $60F1: $5F
    rst RST_38                                    ; $60F2: $FF
    sbc $FF                                       ; $60F3: $DE $FF
    ld a, $FF                                     ; $60F5: $3E $FF
    ld a, l                                       ; $60F7: $7D
    rst RST_38                                    ; $60F8: $FF
    dec a                                         ; $60F9: $3D
    rst RST_38                                    ; $60FA: $FF
    dec a                                         ; $60FB: $3D
    rst RST_38                                    ; $60FC: $FF
    ld e, [hl]                                    ; $60FD: $5E
    rst RST_38                                    ; $60FE: $FF
    ld l, [hl]                                    ; $60FF: $6E
    jr jr_023_6102                                ; $6100: $18 $00

jr_023_6102:
    inc e                                         ; $6102: $1C
    ld [$0814], sp                                ; $6103: $08 $14 $08
    inc e                                         ; $6106: $1C
    ld [$0C1E], sp                                ; $6107: $08 $1E $0C
    ld d, $0C                                     ; $610A: $16 $0C
    ld d, $0C                                     ; $610C: $16 $0C
    ld a, [de]                                    ; $610E: $1A
    inc c                                         ; $610F: $0C
    ld d, $0C                                     ; $6110: $16 $0C
    ld a, [de]                                    ; $6112: $1A
    inc c                                         ; $6113: $0C
    inc hl                                        ; $6114: $23
    ld e, $37                                     ; $6115: $1E $37
    ld e, $23                                     ; $6117: $1E $23
    ld e, $2F                                     ; $6119: $1E $2F
    ld e, $23                                     ; $611B: $1E $23
    ld e, $37                                     ; $611D: $1E $37
    ld e, $6F                                     ; $611F: $1E $6F
    ld a, $47                                     ; $6121: $3E $47
    ld a, $5F                                     ; $6123: $3E $5F
    ld a, $8B                                     ; $6125: $3E $8B
    ld a, [hl]                                    ; $6127: $7E
    ld a, a                                       ; $6128: $7F
    cp [hl]                                       ; $6129: $BE
    and a                                         ; $612A: $A7
    sbc $FF                                       ; $612B: $DE $FF
    add d                                         ; $612D: $82
    and $7C                                       ; $612E: $E6 $7C
    add d                                         ; $6130: $82
    db $FC                                        ; $6131: $FC
    inc sp                                        ; $6132: $33
    cp $6D                                        ; $6133: $FE $6D
    cp $FD                                        ; $6135: $FE $FD
    cp $FF                                        ; $6137: $FE $FF
    cp $FF                                        ; $6139: $FE $FF
    or $FF                                        ; $613B: $F6 $FF
    ldh a, [c]                                    ; $613D: $F2
    cp $3C                                        ; $613E: $FE $3C
    daa                                           ; $6140: $27
    ld e, $2B                                     ; $6141: $1E $2B
    rla                                           ; $6143: $17
    dec hl                                        ; $6144: $2B
    ld e, $13                                     ; $6145: $1E $13
    ld c, $0E                                     ; $6147: $0E $0E
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
    nop                                           ; $6158: $00
    nop                                           ; $6159: $00

jr_023_615A:
    nop                                           ; $615A: $00
    nop                                           ; $615B: $00
    nop                                           ; $615C: $00
    nop                                           ; $615D: $00
    nop                                           ; $615E: $00
    nop                                           ; $615F: $00
    ldh a, [rNR41]                                ; $6160: $F0 $20
    ld [hl], b                                    ; $6162: $70
    and b                                         ; $6163: $A0
    ret c                                         ; $6164: $D8

    jr nc, jr_023_61DF                            ; $6165: $30 $78

    or b                                          ; $6167: $B0
    ret c                                         ; $6168: $D8

    jr nc, jr_023_61DB                            ; $6169: $30 $70

    and b                                         ; $616B: $A0
    and b                                         ; $616C: $A0
    nop                                           ; $616D: $00
    nop                                           ; $616E: $00
    nop                                           ; $616F: $00
    nop                                           ; $6170: $00
    nop                                           ; $6171: $00
    nop                                           ; $6172: $00
    nop                                           ; $6173: $00
    ld bc, $0200                                  ; $6174: $01 $00 $02
    ld bc, $0304                                  ; $6177: $01 $04 $03
    rlca                                          ; $617A: $07
    nop                                           ; $617B: $00
    ld bc, $0000                                  ; $617C: $01 $00 $00
    nop                                           ; $617F: $00
    cp a                                          ; $6180: $BF
    ld [hl], e                                    ; $6181: $73
    cp a                                          ; $6182: $BF
    ld a, h                                       ; $6183: $7C
    ld e, [hl]                                    ; $6184: $5E
    inc a                                         ; $6185: $3C
    ld e, h                                       ; $6186: $5C
    jr nc, jr_023_61C5                            ; $6187: $30 $3C

    jr @+$3E                                      ; $6189: $18 $3C

    jr jr_023_61B9                                ; $618B: $18 $2C

    jr jr_023_61CD                                ; $618D: $18 $3E

    inc e                                         ; $618F: $1C
    ld e, [hl]                                    ; $6190: $5E
    inc a                                         ; $6191: $3C
    db $FC                                        ; $6192: $FC
    ld a, b                                       ; $6193: $78
    ld hl, sp+$30                                 ; $6194: $F8 $30
    or b                                          ; $6196: $B0
    ld b, b                                       ; $6197: $40
    jr nz, jr_023_615A                            ; $6198: $20 $C0

    ld b, b                                       ; $619A: $40
    add b                                         ; $619B: $80
    add b                                         ; $619C: $80
    nop                                           ; $619D: $00
    nop                                           ; $619E: $00
    nop                                           ; $619F: $00
    cp $0C                                        ; $61A0: $FE $0C
    ld e, $0C                                     ; $61A2: $1E $0C
    rra                                           ; $61A4: $1F
    ld c, $3F                                     ; $61A5: $0E $3F
    ld e, $3E                                     ; $61A7: $1E $3E
    db $10                                        ; $61A9: $10
    ld d, d                                       ; $61AA: $52
    inc l                                         ; $61AB: $2C
    sub h                                         ; $61AC: $94
    ld l, b                                       ; $61AD: $68
    ld l, b                                       ; $61AE: $68
    nop                                           ; $61AF: $00
    nop                                           ; $61B0: $00
    nop                                           ; $61B1: $00
    nop                                           ; $61B2: $00
    nop                                           ; $61B3: $00
    nop                                           ; $61B4: $00
    nop                                           ; $61B5: $00
    nop                                           ; $61B6: $00
    nop                                           ; $61B7: $00
    nop                                           ; $61B8: $00

jr_023_61B9:
    nop                                           ; $61B9: $00
    nop                                           ; $61BA: $00
    nop                                           ; $61BB: $00
    nop                                           ; $61BC: $00
    nop                                           ; $61BD: $00
    nop                                           ; $61BE: $00
    nop                                           ; $61BF: $00
    inc bc                                        ; $61C0: $03
    nop                                           ; $61C1: $00
    dec b                                         ; $61C2: $05
    inc bc                                        ; $61C3: $03
    add hl, bc                                    ; $61C4: $09

jr_023_61C5:
    rlca                                          ; $61C5: $07
    ld de, $330F                                  ; $61C6: $11 $0F $33
    rra                                           ; $61C9: $1F
    ld l, a                                       ; $61CA: $6F
    inc a                                         ; $61CB: $3C
    ld a, a                                       ; $61CC: $7F

jr_023_61CD:
    ld sp, $2B7F                                  ; $61CD: $31 $7F $2B
    adc $7B                                       ; $61D0: $CE $7B
    rst RST_20                                    ; $61D2: $E7
    ld e, c                                       ; $61D3: $59
    rst RST_30                                    ; $61D4: $F7
    ld c, h                                       ; $61D5: $4C
    ld [$7F55], a                                 ; $61D6: $EA $55 $7F
    inc h                                         ; $61D9: $24
    ld a, e                                       ; $61DA: $7B

jr_023_61DB:
    ld l, $57                                     ; $61DB: $2E $57
    ld a, $2B                                     ; $61DD: $3E $2B

jr_023_61DF:
    rra                                           ; $61DF: $1F
    rlca                                          ; $61E0: $07
    nop                                           ; $61E1: $00
    dec c                                         ; $61E2: $0D
    rlca                                          ; $61E3: $07
    rlca                                          ; $61E4: $07
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
    rrca                                          ; $61F2: $0F
    nop                                           ; $61F3: $00
    ld [hl-], a                                   ; $61F4: $32
    rrca                                          ; $61F5: $0F
    db $D3                                        ; $61F6: $D3
    ccf                                           ; $61F7: $3F
    dec de                                        ; $61F8: $1B
    rst RST_38                                    ; $61F9: $FF
    sbc a                                         ; $61FA: $9F
    rst RST_38                                    ; $61FB: $FF
    rst RST_18                                    ; $61FC: $DF
    cp $FF                                        ; $61FD: $FE $FF
    rst RST_38                                    ; $61FF: $FF
    ldh [rP1], a                                  ; $6200: $E0 $00
    ld a, b                                       ; $6202: $78
    ldh [$FFCE], a                                ; $6203: $E0 $CE
    ld a, b                                       ; $6205: $78
    ld a, c                                       ; $6206: $79
    ld e, $1F                                     ; $6207: $1E $1F
    rrca                                          ; $6209: $0F
    ld [$0D07], sp                                ; $620A: $08 $07 $0D
    rlca                                          ; $620D: $07
    inc b                                         ; $620E: $04
    inc bc                                        ; $620F: $03
    ld b, $03                                     ; $6210: $06 $03
    call nz, Call_000_3603                        ; $6212: $C4 $03 $36
    jp $F30D                                      ; $6215: $C3 $0D $F3


    and d                                         ; $6218: $A2
    db $FD                                        ; $6219: $FD
    push af                                       ; $621A: $F5
    cp $F6                                        ; $621B: $FE $F6
    rrca                                          ; $621D: $0F
    rst RST_38                                    ; $621E: $FF
    rst RST_28                                    ; $621F: $EF
    daa                                           ; $6220: $27
    ld e, $2B                                     ; $6221: $1E $2B
    rla                                           ; $6223: $17
    dec hl                                        ; $6224: $2B
    ld e, $13                                     ; $6225: $1E $13
    ld c, $0E                                     ; $6227: $0E $0E
    nop                                           ; $6229: $00
    nop                                           ; $622A: $00
    nop                                           ; $622B: $00
    nop                                           ; $622C: $00
    nop                                           ; $622D: $00
    nop                                           ; $622E: $00
    nop                                           ; $622F: $00
    nop                                           ; $6230: $00
    nop                                           ; $6231: $00
    nop                                           ; $6232: $00
    nop                                           ; $6233: $00
    nop                                           ; $6234: $00
    nop                                           ; $6235: $00
    nop                                           ; $6236: $00
    nop                                           ; $6237: $00
    nop                                           ; $6238: $00
    nop                                           ; $6239: $00
    nop                                           ; $623A: $00
    nop                                           ; $623B: $00
    nop                                           ; $623C: $00
    nop                                           ; $623D: $00
    nop                                           ; $623E: $00
    nop                                           ; $623F: $00
    rst RST_38                                    ; $6240: $FF
    ld e, $FF                                     ; $6241: $1E $FF
    rst RST_28                                    ; $6243: $EF
    rst RST_38                                    ; $6244: $FF
    di                                            ; $6245: $F3
    ld a, e                                       ; $6246: $7B
    pop af                                        ; $6247: $F1
    cp c                                          ; $6248: $B9
    ldh a, [$FF79]                                ; $6249: $F0 $79
    ldh a, [$FFB8]                                ; $624B: $F0 $B8
    ldh a, [$FFF8]                                ; $624D: $F0 $F8
    ld [hl], b                                    ; $624F: $70
    ld d, c                                       ; $6250: $51
    and b                                         ; $6251: $A0
    pop af                                        ; $6252: $F1
    jr nz, jr_023_62C6                            ; $6253: $20 $71

    and b                                         ; $6255: $A0
    reti                                          ; $6256: $D9


    jr nc, jr_023_62D2                            ; $6257: $30 $79

    or b                                          ; $6259: $B0
    reti                                          ; $625A: $D9


    jr nc, jr_023_62CD                            ; $625B: $30 $70

    and b                                         ; $625D: $A0
    and b                                         ; $625E: $A0
    nop                                           ; $625F: $00
    rst RST_38                                    ; $6260: $FF
    ld l, $FF                                     ; $6261: $2E $FF
    adc l                                         ; $6263: $8D
    sbc $AD                                       ; $6264: $DE $AD
    cp $8B                                        ; $6266: $FE $8B
    sbc a                                         ; $6268: $9F
    ld l, e                                       ; $6269: $6B
    rst RST_38                                    ; $626A: $FF
    sbc e                                         ; $626B: $9B

jr_023_626C:
    rst RST_38                                    ; $626C: $FF
    ld a, l                                       ; $626D: $7D
    rst RST_38                                    ; $626E: $FF
    ld a, [hl]                                    ; $626F: $7E
    rst RST_38                                    ; $6270: $FF
    cp a                                          ; $6271: $BF
    ld a, a                                       ; $6272: $7F
    cp a                                          ; $6273: $BF
    cp a                                          ; $6274: $BF
    adc $7E                                       ; $6275: $CE $7E
    ldh a, [$FFBE]                                ; $6277: $F0 $BE
    db $FC                                        ; $6279: $FC
    ld a, [hl]                                    ; $627A: $7E
    db $FC                                        ; $627B: $FC
    sbc a                                         ; $627C: $9F
    ld a, h                                       ; $627D: $7C
    rst RST_18                                    ; $627E: $DF
    ld a, [hl]                                    ; $627F: $7E
    add b                                         ; $6280: $80
    nop                                           ; $6281: $00
    ret nz                                        ; $6282: $C0

    add b                                         ; $6283: $80
    ret nz                                        ; $6284: $C0

    add b                                         ; $6285: $80
    ld h, b                                       ; $6286: $60
    ret nz                                        ; $6287: $C0

    ldh [$FFC0], a                                ; $6288: $E0 $C0
    jr nc, jr_023_626C                            ; $628A: $30 $E0

    ld [hl], b                                    ; $628C: $70
    ldh [$FFF0], a                                ; $628D: $E0 $F0
    ldh [$FF30], a                                ; $628F: $E0 $30
    ldh [rSVBK], a                                ; $6291: $E0 $70
    ldh [$FFF0], a                                ; $6293: $E0 $F0
    ld h, b                                       ; $6295: $60
    ldh a, [rP1]                                  ; $6296: $F0 $00
    ld hl, sp-$10                                 ; $6298: $F8 $F0
    inc c                                         ; $629A: $0C
    ld hl, sp+$04                                 ; $629B: $F8 $04
    ld hl, sp-$2C                                 ; $629D: $F8 $D4
    ld hl, sp-$26                                 ; $629F: $F8 $DA
    db $FC                                        ; $62A1: $FC
    ld a, [$FEFC]                                 ; $62A2: $FA $FC $FE
    db $EC                                        ; $62A5: $EC
    cp $E4                                        ; $62A6: $FE $E4
    db $FC                                        ; $62A8: $FC
    ld a, b                                       ; $62A9: $78
    db $FC                                        ; $62AA: $FC
    cp b                                          ; $62AB: $B8
    cp h                                          ; $62AC: $BC
    jr jr_023_62ED                                ; $62AD: $18 $3E

    inc e                                         ; $62AF: $1C
    ld a, [hl]                                    ; $62B0: $7E
    inc [hl]                                      ; $62B1: $34
    or [hl]                                       ; $62B2: $B6
    ld c, b                                       ; $62B3: $48
    inc h                                         ; $62B4: $24
    ret c                                         ; $62B5: $D8

jr_023_62B6:
    ret c                                         ; $62B6: $D8

    nop                                           ; $62B7: $00
    nop                                           ; $62B8: $00
    nop                                           ; $62B9: $00
    add b                                         ; $62BA: $80
    nop                                           ; $62BB: $00
    add b                                         ; $62BC: $80
    nop                                           ; $62BD: $00
    add b                                         ; $62BE: $80
    nop                                           ; $62BF: $00
    ld h, a                                       ; $62C0: $67
    ld a, $3F                                     ; $62C1: $3E $3F
    inc bc                                        ; $62C3: $03
    dec bc                                        ; $62C4: $0B
    rlca                                          ; $62C5: $07

jr_023_62C6:
    rrca                                          ; $62C6: $0F
    rlca                                          ; $62C7: $07
    rlca                                          ; $62C8: $07
    inc bc                                        ; $62C9: $03
    rlca                                          ; $62CA: $07
    inc bc                                        ; $62CB: $03
    dec b                                         ; $62CC: $05

jr_023_62CD:
    inc bc                                        ; $62CD: $03
    dec b                                         ; $62CE: $05
    inc bc                                        ; $62CF: $03
    rlca                                          ; $62D0: $07
    inc bc                                        ; $62D1: $03

jr_023_62D2:
    rlca                                          ; $62D2: $07
    inc bc                                        ; $62D3: $03
    dec bc                                        ; $62D4: $0B
    rlca                                          ; $62D5: $07
    scf                                           ; $62D6: $37
    rrca                                          ; $62D7: $0F
    ld e, a                                       ; $62D8: $5F
    ld h, $96                                     ; $62D9: $26 $96
    ld l, b                                       ; $62DB: $68
    db $E4                                        ; $62DC: $E4
    jr @+$2A                                      ; $62DD: $18 $28

    db $10                                        ; $62DF: $10
    inc a                                         ; $62E0: $3C
    jr jr_023_631F                                ; $62E1: $18 $3C

    jr @+$2E                                      ; $62E3: $18 $2C

    jr jr_023_6313                                ; $62E5: $18 $2C

    jr jr_023_6327                                ; $62E7: $18 $3E

    inc e                                         ; $62E9: $1C
    ld a, $1C                                     ; $62EA: $3E $1C
    ld e, [hl]                                    ; $62EC: $5E

jr_023_62ED:
    inc a                                         ; $62ED: $3C
    cp h                                          ; $62EE: $BC
    ld a, b                                       ; $62EF: $78
    ld hl, sp+$30                                 ; $62F0: $F8 $30
    or b                                          ; $62F2: $B0
    ld b, b                                       ; $62F3: $40
    jr nz, jr_023_62B6                            ; $62F4: $20 $C0

    ld b, b                                       ; $62F6: $40
    add b                                         ; $62F7: $80
    add b                                         ; $62F8: $80
    nop                                           ; $62F9: $00
    nop                                           ; $62FA: $00
    nop                                           ; $62FB: $00
    nop                                           ; $62FC: $00
    nop                                           ; $62FD: $00
    nop                                           ; $62FE: $00
    nop                                           ; $62FF: $00
    inc bc                                        ; $6300: $03
    nop                                           ; $6301: $00
    dec b                                         ; $6302: $05
    inc bc                                        ; $6303: $03

jr_023_6304:
    add hl, bc                                    ; $6304: $09
    rlca                                          ; $6305: $07
    ld de, $330F                                  ; $6306: $11 $0F $33
    rra                                           ; $6309: $1F
    ld l, a                                       ; $630A: $6F
    inc a                                         ; $630B: $3C
    ld a, a                                       ; $630C: $7F
    ld sp, $2B7F                                  ; $630D: $31 $7F $2B
    adc $7B                                       ; $6310: $CE $7B
    rst RST_20                                    ; $6312: $E7

jr_023_6313:
    ld e, c                                       ; $6313: $59
    rst RST_30                                    ; $6314: $F7
    ld c, h                                       ; $6315: $4C
    ld [$7F55], a                                 ; $6316: $EA $55 $7F
    inc h                                         ; $6319: $24
    ld a, e                                       ; $631A: $7B
    ld l, $57                                     ; $631B: $2E $57
    ld a, $2B                                     ; $631D: $3E $2B

jr_023_631F:
    rra                                           ; $631F: $1F
    rrca                                          ; $6320: $0F
    nop                                           ; $6321: $00
    ld [hl-], a                                   ; $6322: $32
    rrca                                          ; $6323: $0F
    db $D3                                        ; $6324: $D3
    ccf                                           ; $6325: $3F
    dec de                                        ; $6326: $1B

jr_023_6327:
    rst RST_38                                    ; $6327: $FF
    sbc a                                         ; $6328: $9F
    rst RST_38                                    ; $6329: $FF
    rst RST_18                                    ; $632A: $DF
    cp $FF                                        ; $632B: $FE $FF
    rst RST_38                                    ; $632D: $FF
    rst RST_38                                    ; $632E: $FF
    ld e, $FF                                     ; $632F: $1E $FF
    rst RST_28                                    ; $6331: $EF
    rst RST_38                                    ; $6332: $FF
    di                                            ; $6333: $F3
    ld a, e                                       ; $6334: $7B
    pop af                                        ; $6335: $F1
    cp c                                          ; $6336: $B9
    ldh a, [$FF79]                                ; $6337: $F0 $79
    ldh a, [$FFBB]                                ; $6339: $F0 $BB
    pop af                                        ; $633B: $F1
    rst RST_38                                    ; $633C: $FF
    ld [hl], e                                    ; $633D: $73
    ld d, a                                       ; $633E: $57
    and e                                         ; $633F: $A3
    ret nz                                        ; $6340: $C0

    nop                                           ; $6341: $00
    jr nc, jr_023_6304                            ; $6342: $30 $C0

    inc c                                         ; $6344: $0C
    ldh a, [$FFE2]                                ; $6345: $F0 $E2
    sbc h                                         ; $6347: $9C
    push af                                       ; $6348: $F5
    ld l, [hl]                                    ; $6349: $6E
    db $F4                                        ; $634A: $F4
    xor a                                         ; $634B: $AF
    or $0F                                        ; $634C: $F6 $0F
    sbc $AF                                       ; $634E: $DE $AF
    rst RST_38                                    ; $6350: $FF
    adc a                                         ; $6351: $8F
    sbc a                                         ; $6352: $9F
    ld l, a                                       ; $6353: $6F
    rst RST_38                                    ; $6354: $FF
    sbc a                                         ; $6355: $9F
    rst RST_38                                    ; $6356: $FF
    db $FD                                        ; $6357: $FD
    rst RST_38                                    ; $6358: $FF
    db $FD                                        ; $6359: $FD
    cp $7B                                        ; $635A: $FE $7B
    db $FD                                        ; $635C: $FD
    ld a, e                                       ; $635D: $7B
    cp $BB                                        ; $635E: $FE $BB
    inc bc                                        ; $6360: $03
    nop                                           ; $6361: $00
    inc b                                         ; $6362: $04
    inc bc                                        ; $6363: $03
    ld c, $07                                     ; $6364: $0E $07
    db $10                                        ; $6366: $10
    rrca                                          ; $6367: $0F
    add hl, sp                                    ; $6368: $39
    rra                                           ; $6369: $1F
    inc hl                                        ; $636A: $23
    ld e, $77                                     ; $636B: $1E $77
    ld a, $C6                                     ; $636D: $3E $C6
    ld a, h                                       ; $636F: $7C
    xor [hl]                                      ; $6370: $AE
    db $FC                                        ; $6371: $FC
    ld e, h                                       ; $6372: $5C
    ld hl, sp+$6C                                 ; $6373: $F8 $6C
    ld hl, sp+$7C                                 ; $6375: $F8 $7C
    ld hl, sp-$08                                 ; $6377: $F8 $F8
    ldh a, [$FFF8]                                ; $6379: $F0 $F8
    ldh a, [$FFF8]                                ; $637B: $F0 $F8
    ldh a, [$FFF8]                                ; $637D: $F0 $F8
    ret nc                                        ; $637F: $D0

    ccf                                           ; $6380: $3F
    nop                                           ; $6381: $00
    push af                                       ; $6382: $F5
    ccf                                           ; $6383: $3F
    sbc a                                         ; $6384: $9F
    ld hl, sp+$38                                 ; $6385: $F8 $38
    ldh [$FF60], a                                ; $6387: $E0 $60
    add b                                         ; $6389: $80
    add b                                         ; $638A: $80
    nop                                           ; $638B: $00
    add b                                         ; $638C: $80
    nop                                           ; $638D: $00
    nop                                           ; $638E: $00
    nop                                           ; $638F: $00
    nop                                           ; $6390: $00
    nop                                           ; $6391: $00
    nop                                           ; $6392: $00
    nop                                           ; $6393: $00
    nop                                           ; $6394: $00
    nop                                           ; $6395: $00
    nop                                           ; $6396: $00
    nop                                           ; $6397: $00
    nop                                           ; $6398: $00
    nop                                           ; $6399: $00
    nop                                           ; $639A: $00
    nop                                           ; $639B: $00
    nop                                           ; $639C: $00
    nop                                           ; $639D: $00
    nop                                           ; $639E: $00
    nop                                           ; $639F: $00
    daa                                           ; $63A0: $27
    ld e, $2B                                     ; $63A1: $1E $2B
    rla                                           ; $63A3: $17
    dec hl                                        ; $63A4: $2B
    ld e, $13                                     ; $63A5: $1E $13
    ld c, $0E                                     ; $63A7: $0E $0E
    nop                                           ; $63A9: $00
    nop                                           ; $63AA: $00
    nop                                           ; $63AB: $00
    nop                                           ; $63AC: $00

jr_023_63AD:
    nop                                           ; $63AD: $00
    nop                                           ; $63AE: $00
    nop                                           ; $63AF: $00
    nop                                           ; $63B0: $00
    nop                                           ; $63B1: $00
    nop                                           ; $63B2: $00
    nop                                           ; $63B3: $00
    nop                                           ; $63B4: $00
    nop                                           ; $63B5: $00
    nop                                           ; $63B6: $00
    nop                                           ; $63B7: $00
    nop                                           ; $63B8: $00
    nop                                           ; $63B9: $00
    nop                                           ; $63BA: $00
    nop                                           ; $63BB: $00
    nop                                           ; $63BC: $00
    nop                                           ; $63BD: $00
    nop                                           ; $63BE: $00
    nop                                           ; $63BF: $00
    rst RST_38                                    ; $63C0: $FF
    daa                                           ; $63C1: $27
    ld a, a                                       ; $63C2: $7F
    and a                                         ; $63C3: $A7
    rst RST_18                                    ; $63C4: $DF
    scf                                           ; $63C5: $37
    ld a, a                                       ; $63C6: $7F
    or e                                          ; $63C7: $B3
    db $DB                                        ; $63C8: $DB
    jr nc, jr_023_643B                            ; $63C9: $30 $70

    and b                                         ; $63CB: $A0
    and b                                         ; $63CC: $A0
    nop                                           ; $63CD: $00
    nop                                           ; $63CE: $00
    nop                                           ; $63CF: $00
    nop                                           ; $63D0: $00
    nop                                           ; $63D1: $00
    inc bc                                        ; $63D2: $03
    nop                                           ; $63D3: $00
    dec b                                         ; $63D4: $05
    ld [bc], a                                    ; $63D5: $02
    add hl, bc                                    ; $63D6: $09
    ld b, $0E                                     ; $63D7: $06 $0E
    ld bc, $0102                                  ; $63D9: $01 $02 $01
    ld bc, $0000                                  ; $63DC: $01 $00 $00
    nop                                           ; $63DF: $00
    db $FD                                        ; $63E0: $FD
    set 7, [hl]                                   ; $63E1: $CB $FE
    di                                            ; $63E3: $F3
    db $FC                                        ; $63E4: $FC
    cp e                                          ; $63E5: $BB
    cp $C3                                        ; $63E6: $FE $C3
    ldh a, [c]                                    ; $63E8: $F2
    pop hl                                        ; $63E9: $E1
    ld a, [$5971]                                 ; $63EA: $FA $71 $59
    jr nc, jr_023_646B                            ; $63ED: $30 $7C

    jr c, jr_023_63AD                             ; $63EF: $38 $BC

    ld a, b                                       ; $63F1: $78
    ld hl, sp-$10                                 ; $63F2: $F8 $F0
    ldh a, [$FF60]                                ; $63F4: $F0 $60
    ld h, b                                       ; $63F6: $60
    add b                                         ; $63F7: $80
    ld b, b                                       ; $63F8: $40
    add b                                         ; $63F9: $80
    add b                                         ; $63FA: $80
    nop                                           ; $63FB: $00
    nop                                           ; $63FC: $00
    nop                                           ; $63FD: $00
    nop                                           ; $63FE: $00
    nop                                           ; $63FF: $00
    ld [hl], b                                    ; $6400: $70
    ldh [$FFF8], a                                ; $6401: $E0 $F8
    ldh a, [$FF78]                                ; $6403: $F0 $78
    ldh a, [$FFF8]                                ; $6405: $F0 $F8
    ldh a, [$FF7C]                                ; $6407: $F0 $7C
    ld hl, sp-$44                                 ; $6409: $F8 $BC
    ld hl, sp+$3C                                 ; $640B: $F8 $3C
    ld hl, sp+$7E                                 ; $640D: $F8 $7E
    db $FC                                        ; $640F: $FC
    ld a, $FC                                     ; $6410: $3E $FC
    cp [hl]                                       ; $6412: $BE
    ld [hl], h                                    ; $6413: $74
    ld a, [hl]                                    ; $6414: $7E
    inc c                                         ; $6415: $0C
    ld l, $1C                                     ; $6416: $2E $1C
    ld a, $1C                                     ; $6418: $3E $1C
    ld e, $0C                                     ; $641A: $1E $0C
    ld e, $0C                                     ; $641C: $1E $0C
    ld d, $0C                                     ; $641E: $16 $0C
    ld d, $0C                                     ; $6420: $16 $0C
    rra                                           ; $6422: $1F
    ld c, $1F                                     ; $6423: $0E $1F
    ld c, $2F                                     ; $6425: $0E $2F
    ld e, $DE                                     ; $6427: $1E $DE
    inc a                                         ; $6429: $3C
    ld a, h                                       ; $642A: $7C
    sbc b                                         ; $642B: $98
    ld e, b                                       ; $642C: $58
    and b                                         ; $642D: $A0
    sub b                                         ; $642E: $90
    ld h, b                                       ; $642F: $60
    and b                                         ; $6430: $A0
    ld b, b                                       ; $6431: $40
    ld b, b                                       ; $6432: $40
    nop                                           ; $6433: $00
    nop                                           ; $6434: $00
    nop                                           ; $6435: $00
    nop                                           ; $6436: $00
    nop                                           ; $6437: $00
    nop                                           ; $6438: $00
    nop                                           ; $6439: $00
    nop                                           ; $643A: $00

jr_023_643B:
    nop                                           ; $643B: $00
    nop                                           ; $643C: $00
    nop                                           ; $643D: $00
    nop                                           ; $643E: $00
    nop                                           ; $643F: $00
    ld bc, $0200                                  ; $6440: $01 $00 $02
    ld bc, $0003                                  ; $6443: $01 $03 $00
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
    nop                                           ; $645A: $00
    nop                                           ; $645B: $00
    nop                                           ; $645C: $00
    nop                                           ; $645D: $00
    nop                                           ; $645E: $00
    nop                                           ; $645F: $00
    nop                                           ; $6460: $00
    nop                                           ; $6461: $00
    nop                                           ; $6462: $00
    nop                                           ; $6463: $00
    nop                                           ; $6464: $00
    nop                                           ; $6465: $00
    nop                                           ; $6466: $00
    nop                                           ; $6467: $00
    nop                                           ; $6468: $00
    nop                                           ; $6469: $00
    nop                                           ; $646A: $00

jr_023_646B:
    nop                                           ; $646B: $00
    nop                                           ; $646C: $00
    nop                                           ; $646D: $00
    nop                                           ; $646E: $00
    nop                                           ; $646F: $00
    nop                                           ; $6470: $00
    nop                                           ; $6471: $00
    nop                                           ; $6472: $00
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
    nop                                           ; $6480: $00
    nop                                           ; $6481: $00
    nop                                           ; $6482: $00
    nop                                           ; $6483: $00
    nop                                           ; $6484: $00
    nop                                           ; $6485: $00
    ld bc, $0100                                  ; $6486: $01 $00 $01
    nop                                           ; $6489: $00
    inc bc                                        ; $648A: $03
    ld bc, $0103                                  ; $648B: $01 $03 $01
    ld de, $6800                                  ; $648E: $11 $00 $68
    db $10                                        ; $6491: $10
    ld hl, sp+$60                                 ; $6492: $F8 $60
    call nc, Call_023_7E68                        ; $6494: $D4 $68 $7E
    jr nc, @+$3F                                  ; $6497: $30 $3D

    ld a, [de]                                    ; $6499: $1A
    rra                                           ; $649A: $1F
    inc c                                         ; $649B: $0C
    dec e                                         ; $649C: $1D
    rrca                                          ; $649D: $0F
    ld c, $07                                     ; $649E: $0E $07
    ld b, b                                       ; $64A0: $40
    nop                                           ; $64A1: $00
    ld b, b                                       ; $64A2: $40
    nop                                           ; $64A3: $00
    ldh [rLCDC], a                                ; $64A4: $E0 $40
    ldh [$FFC0], a                                ; $64A6: $E0 $C0
    ld [hl], c                                    ; $64A8: $71
    ldh [$FF32], a                                ; $64A9: $E0 $32
    pop hl                                        ; $64AB: $E1
    inc sp                                        ; $64AC: $33
    ldh [$FFE4], a                                ; $64AD: $E0 $E4
    jp Jump_000_00C7                              ; $64AF: $C3 $C7 $00


    add hl, bc                                    ; $64B2: $09
    ld b, $0F                                     ; $64B3: $06 $0F
    ld bc, $0B17                                  ; $64B5: $01 $17 $0B
    dec e                                         ; $64B8: $1D
    ld b, $DB                                     ; $64B9: $06 $DB
    inc c                                         ; $64BB: $0C
    halt                                          ; $64BC: $76
    call $CCB7                                    ; $64BD: $CD $B7 $CC
    nop                                           ; $64C0: $00
    nop                                           ; $64C1: $00
    nop                                           ; $64C2: $00
    nop                                           ; $64C3: $00
    nop                                           ; $64C4: $00
    nop                                           ; $64C5: $00
    nop                                           ; $64C6: $00
    nop                                           ; $64C7: $00
    ldh [rP1], a                                  ; $64C8: $E0 $00
    ld a, b                                       ; $64CA: $78
    and b                                         ; $64CB: $A0
    call z, $EC78                                 ; $64CC: $CC $78 $EC
    ld e, b                                       ; $64CF: $58
    call z, $E8F8                                 ; $64D0: $CC $F8 $E8
    ldh a, [rNR10]                                ; $64D3: $F0 $10
    ldh [$FFB0], a                                ; $64D5: $E0 $B0
    ldh [$FFE0], a                                ; $64D7: $E0 $E0
    ld b, b                                       ; $64D9: $40

jr_023_64DA:
    ldh [rLCDC], a                                ; $64DA: $E0 $40
    ldh [rLCDC], a                                ; $64DC: $E0 $40
    ret nz                                        ; $64DE: $C0

    add b                                         ; $64DF: $80
    nop                                           ; $64E0: $00
    nop                                           ; $64E1: $00
    ld a, e                                       ; $64E2: $7B
    ld a, $3F                                     ; $64E3: $3E $3F
    ld e, $1F                                     ; $64E5: $1E $1F
    ld bc, $0E3F                                  ; $64E7: $01 $3F $0E
    ccf                                           ; $64EA: $3F
    rra                                           ; $64EB: $1F
    ld a, a                                       ; $64EC: $7F
    ccf                                           ; $64ED: $3F
    ld a, a                                       ; $64EE: $7F
    ccf                                           ; $64EF: $3F
    ld a, [hl]                                    ; $64F0: $7E
    ccf                                           ; $64F1: $3F
    ld a, h                                       ; $64F2: $7C
    ccf                                           ; $64F3: $3F
    ld a, [$FC7F]                                 ; $64F4: $FA $7F $FC
    ld a, a                                       ; $64F7: $7F
    db $FC                                        ; $64F8: $FC
    ld a, a                                       ; $64F9: $7F
    ei                                            ; $64FA: $FB
    ld a, a                                       ; $64FB: $7F
    rst RST_38                                    ; $64FC: $FF
    ld a, a                                       ; $64FD: $7F
    cp $77                                        ; $64FE: $FE $77
    cp [hl]                                       ; $6500: $BE
    db $F4                                        ; $6501: $F4
    call c, $FC78                                 ; $6502: $DC $78 $FC
    ld hl, sp-$28                                 ; $6505: $F8 $D8
    ldh [$FFF8], a                                ; $6507: $E0 $F8
    ldh a, [$FFB0]                                ; $6509: $F0 $B0
    ldh [$FFE0], a                                ; $650B: $E0 $E0
    ret nz                                        ; $650D: $C0

    ld b, b                                       ; $650E: $40
    add b                                         ; $650F: $80
    ret nz                                        ; $6510: $C0

    add b                                         ; $6511: $80
    ld b, b                                       ; $6512: $40
    add b                                         ; $6513: $80
    ld b, b                                       ; $6514: $40
    add b                                         ; $6515: $80
    and b                                         ; $6516: $A0
    ret nz                                        ; $6517: $C0

    jr nz, jr_023_64DA                            ; $6518: $20 $C0

    db $10                                        ; $651A: $10
    ldh [$FF4C], a                                ; $651B: $E0 $4C
    ldh a, [$FF82]                                ; $651D: $F0 $82
    db $FC                                        ; $651F: $FC
    ld [bc], a                                    ; $6520: $02
    ld bc, $0102                                  ; $6521: $01 $02 $01
    ld bc, $0000                                  ; $6524: $01 $00 $00
    nop                                           ; $6527: $00
    nop                                           ; $6528: $00
    nop                                           ; $6529: $00
    nop                                           ; $652A: $00
    nop                                           ; $652B: $00
    inc bc                                        ; $652C: $03
    nop                                           ; $652D: $00
    ld c, $03                                     ; $652E: $0E $03
    inc sp                                        ; $6530: $33
    rrca                                          ; $6531: $0F
    ld e, a                                       ; $6532: $5F
    ccf                                           ; $6533: $3F
    cp a                                          ; $6534: $BF
    ld h, b                                       ; $6535: $60
    ldh [rP1], a                                  ; $6536: $E0 $00
    nop                                           ; $6538: $00
    nop                                           ; $6539: $00
    ld bc, $0200                                  ; $653A: $01 $00 $02
    ld bc, $0003                                  ; $653D: $01 $03 $00
    adc a                                         ; $6540: $8F
    ld bc, $02CD                                  ; $6541: $01 $CD $02
    cp l                                          ; $6544: $BD
    ld c, d                                       ; $6545: $4A
    rst RST_38                                    ; $6546: $FF
    inc e                                         ; $6547: $1C
    ld a, a                                       ; $6548: $7F
    inc bc                                        ; $6549: $03
    rla                                           ; $654A: $17
    rrca                                          ; $654B: $0F
    rst RST_10                                    ; $654C: $D7
    rrca                                          ; $654D: $0F
    or a                                          ; $654E: $B7
    rst RST_08                                    ; $654F: $CF
    ld d, a                                       ; $6550: $57
    rst RST_28                                    ; $6551: $EF
    rst RST_38                                    ; $6552: $FF
    db $ED                                        ; $6553: $ED
    rst RST_38                                    ; $6554: $FF
    halt                                          ; $6555: $76
    ld a, a                                       ; $6556: $7F
    dec de                                        ; $6557: $1B
    rra                                           ; $6558: $1F
    inc bc                                        ; $6559: $03
    rst RST_38                                    ; $655A: $FF
    rra                                           ; $655B: $1F
    sbc a                                         ; $655C: $9F
    ld l, [hl]                                    ; $655D: $6E
    rst RST_38                                    ; $655E: $FF
    nop                                           ; $655F: $00
    db $F4                                        ; $6560: $F4
    xor a                                         ; $6561: $AF
    db $FC                                        ; $6562: $FC
    cpl                                           ; $6563: $2F
    ld a, c                                       ; $6564: $79
    xor a                                         ; $6565: $AF
    ei                                            ; $6566: $FB
    ld e, $FF                                     ; $6567: $1E $FF
    ld a, l                                       ; $6569: $7D
    rst RST_38                                    ; $656A: $FF
    ld a, l                                       ; $656B: $7D
    cp $7B                                        ; $656C: $FE $7B
    cp $BB                                        ; $656E: $FE $BB
    cp $BB                                        ; $6570: $FE $BB
    cp $DB                                        ; $6572: $FE $DB
    rst RST_38                                    ; $6574: $FF
    push hl                                       ; $6575: $E5
    rst RST_38                                    ; $6576: $FF
    jr @+$01                                      ; $6577: $18 $FF

    ld a, [hl]                                    ; $6579: $7E
    cp $7C                                        ; $657A: $FE $7C
    db $FC                                        ; $657C: $FC
    ldh a, [$FFF0]                                ; $657D: $F0 $F0
    nop                                           ; $657F: $00
    call z, $C4F0                                 ; $6580: $CC $F0 $C4
    ld a, b                                       ; $6583: $78
    add [hl]                                      ; $6584: $86
    ld hl, sp+$0A                                 ; $6585: $F8 $0A
    db $FC                                        ; $6587: $FC
    ld e, $FC                                     ; $6588: $1E $FC
    ld e, [hl]                                    ; $658A: $5E
    db $FC                                        ; $658B: $FC
    ld a, [hl]                                    ; $658C: $7E
    db $FC                                        ; $658D: $FC
    cp $F8                                        ; $658E: $FE $F8
    rst RST_38                                    ; $6590: $FF
    or $7F                                        ; $6591: $F6 $7F
    xor $FF                                       ; $6593: $EE $FF
    ld a, [$76FF]                                 ; $6595: $FA $FF $76
    ld a, a                                       ; $6598: $7F
    ld b, $7F                                     ; $6599: $06 $7F
    nop                                           ; $659B: $00
    sub e                                         ; $659C: $93
    ld l, h                                       ; $659D: $6C
    rst RST_38                                    ; $659E: $FF
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
    nop                                           ; $65B8: $00
    nop                                           ; $65B9: $00
    nop                                           ; $65BA: $00
    nop                                           ; $65BB: $00
    nop                                           ; $65BC: $00
    nop                                           ; $65BD: $00
    inc bc                                        ; $65BE: $03
    nop                                           ; $65BF: $00
    ld h, c                                       ; $65C0: $61
    ccf                                           ; $65C1: $3F
    jr nc, jr_023_65E3                            ; $65C2: $30 $1F

    jr @+$11                                      ; $65C4: $18 $0F

    inc c                                         ; $65C6: $0C
    rlca                                          ; $65C7: $07
    ld b, $01                                     ; $65C8: $06 $01
    ld bc, $0000                                  ; $65CA: $01 $00 $00
    nop                                           ; $65CD: $00
    stop                                          ; $65CE: $10 $00
    ld l, b                                       ; $65D0: $68
    db $10                                        ; $65D1: $10
    ld hl, sp+$60                                 ; $65D2: $F8 $60
    call nc, Call_023_7E68                        ; $65D4: $D4 $68 $7E
    jr nc, @+$3F                                  ; $65D7: $30 $3D

    ld a, [de]                                    ; $65D9: $1A
    rra                                           ; $65DA: $1F
    inc c                                         ; $65DB: $0C
    dec e                                         ; $65DC: $1D
    rrca                                          ; $65DD: $0F
    ld c, $07                                     ; $65DE: $0E $07
    daa                                           ; $65E0: $27
    cp $06                                        ; $65E1: $FE $06

jr_023_65E3:
    db $FC                                        ; $65E3: $FC
    inc c                                         ; $65E4: $0C
    ld hl, sp+$18                                 ; $65E5: $F8 $18
    ldh a, [$FF31]                                ; $65E7: $F0 $31
    ret nz                                        ; $65E9: $C0

    jp nz, Jump_000_0301                          ; $65EA: $C2 $01 $03

    nop                                           ; $65ED: $00
    inc b                                         ; $65EE: $04
    inc bc                                        ; $65EF: $03
    rlca                                          ; $65F0: $07
    nop                                           ; $65F1: $00
    add hl, bc                                    ; $65F2: $09
    ld b, $0F                                     ; $65F3: $06 $0F
    ld bc, $0B17                                  ; $65F5: $01 $17 $0B
    dec e                                         ; $65F8: $1D
    ld b, $DB                                     ; $65F9: $06 $DB
    inc c                                         ; $65FB: $0C
    halt                                          ; $65FC: $76
    call $CCB7                                    ; $65FD: $CD $B7 $CC
    nop                                           ; $6600: $00
    nop                                           ; $6601: $00
    nop                                           ; $6602: $00
    nop                                           ; $6603: $00
    nop                                           ; $6604: $00
    nop                                           ; $6605: $00
    nop                                           ; $6606: $00
    nop                                           ; $6607: $00
    ldh [rP1], a                                  ; $6608: $E0 $00
    ld a, b                                       ; $660A: $78
    and b                                         ; $660B: $A0
    call z, $EC78                                 ; $660C: $CC $78 $EC
    ld e, b                                       ; $660F: $58
    call z, $E8F8                                 ; $6610: $CC $F8 $E8
    ldh a, [rNR10]                                ; $6613: $F0 $10
    ldh [$FFB0], a                                ; $6615: $E0 $B0
    ldh [$FFE0], a                                ; $6617: $E0 $E0
    ld b, b                                       ; $6619: $40
    ldh [rLCDC], a                                ; $661A: $E0 $40
    ldh [rLCDC], a                                ; $661C: $E0 $40
    ret nz                                        ; $661E: $C0

    add b                                         ; $661F: $80
    nop                                           ; $6620: $00
    nop                                           ; $6621: $00
    nop                                           ; $6622: $00
    nop                                           ; $6623: $00
    nop                                           ; $6624: $00
    nop                                           ; $6625: $00
    nop                                           ; $6626: $00
    nop                                           ; $6627: $00
    nop                                           ; $6628: $00
    nop                                           ; $6629: $00
    nop                                           ; $662A: $00
    nop                                           ; $662B: $00
    nop                                           ; $662C: $00
    nop                                           ; $662D: $00
    nop                                           ; $662E: $00
    nop                                           ; $662F: $00
    nop                                           ; $6630: $00
    nop                                           ; $6631: $00
    nop                                           ; $6632: $00
    nop                                           ; $6633: $00
    add b                                         ; $6634: $80
    nop                                           ; $6635: $00
    ld [hl], b                                    ; $6636: $70
    nop                                           ; $6637: $00
    inc a                                         ; $6638: $3C
    db $10                                        ; $6639: $10
    rra                                           ; $663A: $1F
    inc c                                         ; $663B: $0C
    rrca                                          ; $663C: $0F
    rlca                                          ; $663D: $07
    ld b, $03                                     ; $663E: $06 $03
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
    ld bc, $0300                                  ; $6650: $01 $00 $03
    nop                                           ; $6653: $00
    inc bc                                        ; $6654: $03
    nop                                           ; $6655: $00
    ld b, a                                       ; $6656: $47
    ld [bc], a                                    ; $6657: $02
    ld h, a                                       ; $6658: $67
    ld [bc], a                                    ; $6659: $02
    ld a, a                                       ; $665A: $7F
    ld h, $FD                                     ; $665B: $26 $FD
    ld [hl], $D9                                  ; $665D: $36 $D9
    rst RST_38                                    ; $665F: $FF
    nop                                           ; $6660: $00
    nop                                           ; $6661: $00
    nop                                           ; $6662: $00
    nop                                           ; $6663: $00
    nop                                           ; $6664: $00
    nop                                           ; $6665: $00
    nop                                           ; $6666: $00
    nop                                           ; $6667: $00
    nop                                           ; $6668: $00
    nop                                           ; $6669: $00
    nop                                           ; $666A: $00
    nop                                           ; $666B: $00
    nop                                           ; $666C: $00
    nop                                           ; $666D: $00
    nop                                           ; $666E: $00
    nop                                           ; $666F: $00
    nop                                           ; $6670: $00
    nop                                           ; $6671: $00
    nop                                           ; $6672: $00
    nop                                           ; $6673: $00
    nop                                           ; $6674: $00
    nop                                           ; $6675: $00
    jr nz, jr_023_6678                            ; $6676: $20 $00

jr_023_6678:
    ld h, e                                       ; $6678: $63
    nop                                           ; $6679: $00
    rst RST_28                                    ; $667A: $EF
    ld b, d                                       ; $667B: $42
    cp $CC                                        ; $667C: $FE $CC
    sbc h                                         ; $667E: $9C
    ld hl, sp+$00                                 ; $667F: $F8 $00
    nop                                           ; $6681: $00
    nop                                           ; $6682: $00
    nop                                           ; $6683: $00
    nop                                           ; $6684: $00
    nop                                           ; $6685: $00
    nop                                           ; $6686: $00
    nop                                           ; $6687: $00
    nop                                           ; $6688: $00
    nop                                           ; $6689: $00
    nop                                           ; $668A: $00
    nop                                           ; $668B: $00
    nop                                           ; $668C: $00
    nop                                           ; $668D: $00
    nop                                           ; $668E: $00
    nop                                           ; $668F: $00
    nop                                           ; $6690: $00
    nop                                           ; $6691: $00
    nop                                           ; $6692: $00
    nop                                           ; $6693: $00
    jr nz, jr_023_6696                            ; $6694: $20 $00

jr_023_6696:
    ret nz                                        ; $6696: $C0

    nop                                           ; $6697: $00
    add b                                         ; $6698: $80
    nop                                           ; $6699: $00
    nop                                           ; $669A: $00
    nop                                           ; $669B: $00
    nop                                           ; $669C: $00
    nop                                           ; $669D: $00
    nop                                           ; $669E: $00
    nop                                           ; $669F: $00
    nop                                           ; $66A0: $00
    nop                                           ; $66A1: $00
    nop                                           ; $66A2: $00
    nop                                           ; $66A3: $00
    nop                                           ; $66A4: $00
    nop                                           ; $66A5: $00
    nop                                           ; $66A6: $00
    nop                                           ; $66A7: $00
    nop                                           ; $66A8: $00
    nop                                           ; $66A9: $00
    nop                                           ; $66AA: $00
    nop                                           ; $66AB: $00
    nop                                           ; $66AC: $00
    nop                                           ; $66AD: $00
    stop                                          ; $66AE: $10 $00
    ld l, b                                       ; $66B0: $68
    db $10                                        ; $66B1: $10
    ld hl, sp+$60                                 ; $66B2: $F8 $60
    call nc, Call_023_7E68                        ; $66B4: $D4 $68 $7E
    jr nc, @+$3F                                  ; $66B7: $30 $3D

    ld a, [de]                                    ; $66B9: $1A
    rra                                           ; $66BA: $1F
    inc c                                         ; $66BB: $0C
    dec e                                         ; $66BC: $1D
    rrca                                          ; $66BD: $0F
    ld c, $07                                     ; $66BE: $0E $07
    nop                                           ; $66C0: $00
    nop                                           ; $66C1: $00
    nop                                           ; $66C2: $00
    nop                                           ; $66C3: $00
    nop                                           ; $66C4: $00
    nop                                           ; $66C5: $00
    nop                                           ; $66C6: $00
    nop                                           ; $66C7: $00
    ld bc, $0200                                  ; $66C8: $01 $00 $02
    ld bc, $0003                                  ; $66CB: $01 $03 $00
    inc b                                         ; $66CE: $04
    inc bc                                        ; $66CF: $03
    rlca                                          ; $66D0: $07
    nop                                           ; $66D1: $00
    add hl, bc                                    ; $66D2: $09
    ld b, $0F                                     ; $66D3: $06 $0F
    ld bc, $0B17                                  ; $66D5: $01 $17 $0B
    dec e                                         ; $66D8: $1D
    ld b, $DB                                     ; $66D9: $06 $DB
    inc c                                         ; $66DB: $0C
    halt                                          ; $66DC: $76
    call $CCB7                                    ; $66DD: $CD $B7 $CC
    nop                                           ; $66E0: $00
    nop                                           ; $66E1: $00
    nop                                           ; $66E2: $00
    nop                                           ; $66E3: $00
    nop                                           ; $66E4: $00
    nop                                           ; $66E5: $00
    nop                                           ; $66E6: $00
    nop                                           ; $66E7: $00
    ldh [rP1], a                                  ; $66E8: $E0 $00
    ld a, b                                       ; $66EA: $78
    and b                                         ; $66EB: $A0
    call z, $EC78                                 ; $66EC: $CC $78 $EC
    ld e, b                                       ; $66EF: $58
    call z, $E8F8                                 ; $66F0: $CC $F8 $E8
    ldh a, [rNR10]                                ; $66F3: $F0 $10
    ldh [$FFB0], a                                ; $66F5: $E0 $B0
    ldh [$FFE0], a                                ; $66F7: $E0 $E0
    ld b, b                                       ; $66F9: $40
    ldh [rLCDC], a                                ; $66FA: $E0 $40
    ldh [rLCDC], a                                ; $66FC: $E0 $40
    ret nz                                        ; $66FE: $C0

    add b                                         ; $66FF: $80
    nop                                           ; $6700: $00
    nop                                           ; $6701: $00
    nop                                           ; $6702: $00
    nop                                           ; $6703: $00
    nop                                           ; $6704: $00
    nop                                           ; $6705: $00
    nop                                           ; $6706: $00
    nop                                           ; $6707: $00
    nop                                           ; $6708: $00
    nop                                           ; $6709: $00
    nop                                           ; $670A: $00
    nop                                           ; $670B: $00
    nop                                           ; $670C: $00
    nop                                           ; $670D: $00
    nop                                           ; $670E: $00
    nop                                           ; $670F: $00
    nop                                           ; $6710: $00
    nop                                           ; $6711: $00
    add b                                         ; $6712: $80
    nop                                           ; $6713: $00
    ld h, b                                       ; $6714: $60
    nop                                           ; $6715: $00
    jr c, jr_023_6718                             ; $6716: $38 $00

jr_023_6718:
    inc e                                         ; $6718: $1C
    ld [$000C], sp                                ; $6719: $08 $0C $00
    nop                                           ; $671C: $00
    nop                                           ; $671D: $00
    nop                                           ; $671E: $00
    nop                                           ; $671F: $00
    nop                                           ; $6720: $00
    nop                                           ; $6721: $00
    nop                                           ; $6722: $00
    nop                                           ; $6723: $00
    nop                                           ; $6724: $00
    nop                                           ; $6725: $00
    nop                                           ; $6726: $00
    nop                                           ; $6727: $00
    nop                                           ; $6728: $00
    nop                                           ; $6729: $00
    ld bc, $8100                                  ; $672A: $01 $00 $81
    nop                                           ; $672D: $00
    jp $C300                                      ; $672E: $C3 $00 $C3


    nop                                           ; $6731: $00
    pop bc                                        ; $6732: $C1
    nop                                           ; $6733: $00
    ld b, b                                       ; $6734: $40
    nop                                           ; $6735: $00
    nop                                           ; $6736: $00
    nop                                           ; $6737: $00
    nop                                           ; $6738: $00
    nop                                           ; $6739: $00
    nop                                           ; $673A: $00
    nop                                           ; $673B: $00
    nop                                           ; $673C: $00
    nop                                           ; $673D: $00
    nop                                           ; $673E: $00
    nop                                           ; $673F: $00
    nop                                           ; $6740: $00
    nop                                           ; $6741: $00
    nop                                           ; $6742: $00
    nop                                           ; $6743: $00
    nop                                           ; $6744: $00
    nop                                           ; $6745: $00
    nop                                           ; $6746: $00
    nop                                           ; $6747: $00
    nop                                           ; $6748: $00
    nop                                           ; $6749: $00
    nop                                           ; $674A: $00
    nop                                           ; $674B: $00
    nop                                           ; $674C: $00
    nop                                           ; $674D: $00
    nop                                           ; $674E: $00
    nop                                           ; $674F: $00
    nop                                           ; $6750: $00
    nop                                           ; $6751: $00
    ld [$3000], sp                                ; $6752: $08 $00 $30
    nop                                           ; $6755: $00
    ld h, b                                       ; $6756: $60
    nop                                           ; $6757: $00
    ret nz                                        ; $6758: $C0

    nop                                           ; $6759: $00
    nop                                           ; $675A: $00
    nop                                           ; $675B: $00
    nop                                           ; $675C: $00
    nop                                           ; $675D: $00
    nop                                           ; $675E: $00
    nop                                           ; $675F: $00
    inc c                                         ; $6760: $0C
    nop                                           ; $6761: $00
    inc d                                         ; $6762: $14
    ld [$102C], sp                                ; $6763: $08 $2C $10
    ld a, [hl-]                                   ; $6766: $3A
    inc d                                         ; $6767: $14
    ccf                                           ; $6768: $3F
    ld [bc], a                                    ; $6769: $02
    dec sp                                        ; $676A: $3B
    nop                                           ; $676B: $00
    ld a, b                                       ; $676C: $78
    jr nc, @+$5E                                  ; $676D: $30 $5C

    jr nc, jr_023_67CD                            ; $676F: $30 $5C

jr_023_6771:
    jr nc, jr_023_6771                            ; $6771: $30 $FE

    ld [hl], h                                    ; $6773: $74
    cp a                                          ; $6774: $BF
    halt                                          ; $6775: $76
    cp a                                          ; $6776: $BF
    ld [hl], e                                    ; $6777: $73
    cp a                                          ; $6778: $BF
    ld [hl], c                                    ; $6779: $71
    rst RST_38                                    ; $677A: $FF
    ld [hl], b                                    ; $677B: $70
    ld e, a                                       ; $677C: $5F
    jr nc, jr_023_67DE                            ; $677D: $30 $5F

    jr nc, jr_023_6782                            ; $677F: $30 $01

    nop                                           ; $6781: $00

jr_023_6782:
    inc bc                                        ; $6782: $03
    ld bc, $0306                                  ; $6783: $01 $06 $03
    rra                                           ; $6786: $1F
    ld bc, $1E23                                  ; $6787: $01 $23 $1E
    ld a, e                                       ; $678A: $7B
    rrca                                          ; $678B: $0F
    adc [hl]                                      ; $678C: $8E
    ld a, e                                       ; $678D: $7B
    ccf                                           ; $678E: $3F
    db $FC                                        ; $678F: $FC
    rst RST_38                                    ; $6790: $FF
    di                                            ; $6791: $F3
    cp $CF                                        ; $6792: $FE $CF
    rst RST_38                                    ; $6794: $FF
    rlca                                          ; $6795: $07
    rst RST_38                                    ; $6796: $FF
    ld bc, $00FF                                  ; $6797: $01 $FF $00
    rst RST_38                                    ; $679A: $FF
    nop                                           ; $679B: $00
    rst RST_38                                    ; $679C: $FF
    nop                                           ; $679D: $00
    rst RST_38                                    ; $679E: $FF
    nop                                           ; $679F: $00
    jr nc, jr_023_67A2                            ; $67A0: $30 $00

jr_023_67A2:
    jr c, jr_023_67B4                             ; $67A2: $38 $10

    jr c, jr_023_67B6                             ; $67A4: $38 $10

    inc e                                         ; $67A6: $1C
    ld [$0C16], sp                                ; $67A7: $08 $16 $0C
    dec bc                                        ; $67AA: $0B
    ld b, $0F                                     ; $67AB: $06 $0F
    rlca                                          ; $67AD: $07
    rra                                           ; $67AE: $1F
    ld c, $75                                     ; $67AF: $0E $75
    ld e, $E5                                     ; $67B1: $1E $E5
    ld a, [hl-]                                   ; $67B3: $3A

jr_023_67B4:
    dec l                                         ; $67B4: $2D
    ei                                            ; $67B5: $FB

jr_023_67B6:
    ld e, $F9                                     ; $67B6: $1E $F9
    rst RST_38                                    ; $67B8: $FF
    add b                                         ; $67B9: $80
    adc c                                         ; $67BA: $89
    rst RST_30                                    ; $67BB: $F7
    call c, Call_000_08FF                         ; $67BC: $DC $FF $08
    rst RST_30                                    ; $67BF: $F7
    nop                                           ; $67C0: $00
    nop                                           ; $67C1: $00
    add b                                         ; $67C2: $80
    nop                                           ; $67C3: $00
    ret nz                                        ; $67C4: $C0

    add b                                         ; $67C5: $80
    ldh [rLCDC], a                                ; $67C6: $E0 $40
    ld [hl], b                                    ; $67C8: $70
    and b                                         ; $67C9: $A0
    ld hl, sp+$30                                 ; $67CA: $F8 $30
    db $F4                                        ; $67CC: $F4

jr_023_67CD:
    ret z                                         ; $67CD: $C8

    jp $FD3C                                      ; $67CE: $C3 $3C $FD


    ld b, $FE                                     ; $67D1: $06 $FE
    ld b, c                                       ; $67D3: $41
    rst RST_38                                    ; $67D4: $FF
    ld h, [hl]                                    ; $67D5: $66
    rst RST_38                                    ; $67D6: $FF
    ld a, h                                       ; $67D7: $7C
    rst RST_38                                    ; $67D8: $FF
    jr @+$01                                      ; $67D9: $18 $FF

    nop                                           ; $67DB: $00
    rst RST_38                                    ; $67DC: $FF
    nop                                           ; $67DD: $00

jr_023_67DE:
    rst RST_38                                    ; $67DE: $FF
    nop                                           ; $67DF: $00
    inc e                                         ; $67E0: $1C
    nop                                           ; $67E1: $00
    jr c, jr_023_67E4                             ; $67E2: $38 $00

jr_023_67E4:
    ld a, $00                                     ; $67E4: $3E $00
    ccf                                           ; $67E6: $3F
    nop                                           ; $67E7: $00
    jr c, jr_023_67EA                             ; $67E8: $38 $00

jr_023_67EA:
    ld a, h                                       ; $67EA: $7C
    nop                                           ; $67EB: $00
    db $FC                                        ; $67EC: $FC
    ld b, b                                       ; $67ED: $40
    cp $80                                        ; $67EE: $FE $80
    cp $80                                        ; $67F0: $FE $80
    rst RST_38                                    ; $67F2: $FF
    nop                                           ; $67F3: $00
    rst RST_38                                    ; $67F4: $FF
    nop                                           ; $67F5: $00
    rst RST_38                                    ; $67F6: $FF
    nop                                           ; $67F7: $00
    rst RST_38                                    ; $67F8: $FF
    nop                                           ; $67F9: $00
    rst RST_38                                    ; $67FA: $FF
    nop                                           ; $67FB: $00
    rst RST_38                                    ; $67FC: $FF
    nop                                           ; $67FD: $00
    rst RST_38                                    ; $67FE: $FF
    nop                                           ; $67FF: $00
    ld e, a                                       ; $6800: $5F
    jr c, jr_023_6882                             ; $6801: $38 $7F

    jr c, jr_023_6834                             ; $6803: $38 $2F

    jr jr_023_6836                                ; $6805: $18 $2F

    jr jr_023_6848                                ; $6807: $18 $3F

    jr @+$21                                      ; $6809: $18 $1F

    inc c                                         ; $680B: $0C
    rla                                           ; $680C: $17
    inc c                                         ; $680D: $0C
    rra                                           ; $680E: $1F
    inc c                                         ; $680F: $0C
    rrca                                          ; $6810: $0F
    ld b, $0F                                     ; $6811: $06 $0F
    ld b, $07                                     ; $6813: $06 $07
    inc bc                                        ; $6815: $03
    inc bc                                        ; $6816: $03
    ld bc, $0001                                  ; $6817: $01 $01 $00
    nop                                           ; $681A: $00
    nop                                           ; $681B: $00
    nop                                           ; $681C: $00
    nop                                           ; $681D: $00
    nop                                           ; $681E: $00
    nop                                           ; $681F: $00
    rra                                           ; $6820: $1F
    db $E3                                        ; $6821: $E3
    db $E3                                        ; $6822: $E3
    dec a                                         ; $6823: $3D
    dec e                                         ; $6824: $1D
    cp $BF                                        ; $6825: $FE $BF
    cp $63                                        ; $6827: $FE $63
    cp $D1                                        ; $6829: $FE $D1
    ld a, a                                       ; $682B: $7F
    ld a, [$EF7F]                                 ; $682C: $FA $7F $EF
    dec sp                                        ; $682F: $3B
    rst RST_28                                    ; $6830: $EF
    jr nc, @+$01                                  ; $6831: $30 $FF

    db $10                                        ; $6833: $10

jr_023_6834:
    rst RST_38                                    ; $6834: $FF
    db $10                                        ; $6835: $10

jr_023_6836:
    rst RST_38                                    ; $6836: $FF
    nop                                           ; $6837: $00
    ld l, e                                       ; $6838: $6B
    inc d                                         ; $6839: $14
    dec l                                         ; $683A: $2D
    ld [de], a                                    ; $683B: $12
    rla                                           ; $683C: $17
    nop                                           ; $683D: $00

jr_023_683E:
    ld bc, $FF00                                  ; $683E: $01 $00 $FF
    nop                                           ; $6841: $00
    rst RST_38                                    ; $6842: $FF
    nop                                           ; $6843: $00
    ld a, h                                       ; $6844: $7C
    add b                                         ; $6845: $80
    ld hl, sp-$40                                 ; $6846: $F8 $C0

jr_023_6848:
    db $FD                                        ; $6848: $FD
    jr nz, jr_023_683E                            ; $6849: $20 $F3

    inc c                                         ; $684B: $0C
    rst RST_38                                    ; $684C: $FF
    ld bc, $11FF                                  ; $684D: $01 $FF $11
    sbc $0B                                       ; $6850: $DE $0B
    ld hl, sp+$0F                                 ; $6852: $F8 $0F
    ldh [$FF7F], a                                ; $6854: $E0 $7F
    db $FC                                        ; $6856: $FC
    rra                                           ; $6857: $1F
    dec e                                         ; $6858: $1D
    ld a, [bc]                                    ; $6859: $0A
    dec e                                         ; $685A: $1D
    ld [bc], a                                    ; $685B: $02
    rla                                           ; $685C: $17
    ld [bc], a                                    ; $685D: $02
    rlca                                          ; $685E: $07
    nop                                           ; $685F: $00
    rst RST_38                                    ; $6860: $FF
    nop                                           ; $6861: $00
    rra                                           ; $6862: $1F
    nop                                           ; $6863: $00
    rlca                                          ; $6864: $07
    nop                                           ; $6865: $00
    add e                                         ; $6866: $83
    nop                                           ; $6867: $00
    add b                                         ; $6868: $80
    nop                                           ; $6869: $00
    adc b                                         ; $686A: $88
    nop                                           ; $686B: $00
    or b                                          ; $686C: $B0
    nop                                           ; $686D: $00
    ldh a, [rNR41]                                ; $686E: $F0 $20
    ldh [$FFC0], a                                ; $6870: $E0 $C0
    ld b, b                                       ; $6872: $40
    add b                                         ; $6873: $80
    ret nz                                        ; $6874: $C0

    add b                                         ; $6875: $80
    ld h, b                                       ; $6876: $60
    ret nz                                        ; $6877: $C0

    or b                                          ; $6878: $B0
    ldh [$FFF8], a                                ; $6879: $E0 $F8
    db $10                                        ; $687B: $10
    inc e                                         ; $687C: $1C
    nop                                           ; $687D: $00
    nop                                           ; $687E: $00
    nop                                           ; $687F: $00
    nop                                           ; $6880: $00
    nop                                           ; $6881: $00

jr_023_6882:
    add b                                         ; $6882: $80
    nop                                           ; $6883: $00
    add b                                         ; $6884: $80
    nop                                           ; $6885: $00
    ret nz                                        ; $6886: $C0

    nop                                           ; $6887: $00
    ret nz                                        ; $6888: $C0

    nop                                           ; $6889: $00
    ldh [rP1], a                                  ; $688A: $E0 $00
    ldh [rP1], a                                  ; $688C: $E0 $00
    ldh a, [rP1]                                  ; $688E: $F0 $00
    ldh a, [rP1]                                  ; $6890: $F0 $00
    ld hl, sp+$00                                 ; $6892: $F8 $00
    ld hl, sp+$00                                 ; $6894: $F8 $00
    inc a                                         ; $6896: $3C
    nop                                           ; $6897: $00
    inc e                                         ; $6898: $1C
    nop                                           ; $6899: $00
    ld c, $00                                     ; $689A: $0E $00
    ld b, $00                                     ; $689C: $06 $00
    ld [bc], a                                    ; $689E: $02
    nop                                           ; $689F: $00
    sbc a                                         ; $68A0: $9F
    nop                                           ; $68A1: $00
    rlca                                          ; $68A2: $07
    nop                                           ; $68A3: $00
    ld bc, $0000                                  ; $68A4: $01 $00 $00
    nop                                           ; $68A7: $00
    nop                                           ; $68A8: $00
    nop                                           ; $68A9: $00
    nop                                           ; $68AA: $00
    nop                                           ; $68AB: $00
    nop                                           ; $68AC: $00
    nop                                           ; $68AD: $00
    add b                                         ; $68AE: $80
    nop                                           ; $68AF: $00
    add b                                         ; $68B0: $80
    nop                                           ; $68B1: $00
    ret nz                                        ; $68B2: $C0

    add b                                         ; $68B3: $80
    ret nz                                        ; $68B4: $C0

    nop                                           ; $68B5: $00
    ld b, b                                       ; $68B6: $40
    nop                                           ; $68B7: $00
    nop                                           ; $68B8: $00
    nop                                           ; $68B9: $00
    nop                                           ; $68BA: $00
    nop                                           ; $68BB: $00
    nop                                           ; $68BC: $00
    nop                                           ; $68BD: $00
    nop                                           ; $68BE: $00
    nop                                           ; $68BF: $00
    ld [bc], a                                    ; $68C0: $02
    nop                                           ; $68C1: $00
    ld [bc], a                                    ; $68C2: $02
    nop                                           ; $68C3: $00
    nop                                           ; $68C4: $00
    nop                                           ; $68C5: $00
    nop                                           ; $68C6: $00
    nop                                           ; $68C7: $00
    nop                                           ; $68C8: $00
    nop                                           ; $68C9: $00
    nop                                           ; $68CA: $00
    nop                                           ; $68CB: $00
    nop                                           ; $68CC: $00
    nop                                           ; $68CD: $00
    nop                                           ; $68CE: $00
    nop                                           ; $68CF: $00
    nop                                           ; $68D0: $00
    nop                                           ; $68D1: $00
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
    inc c                                         ; $68E0: $0C
    nop                                           ; $68E1: $00
    inc d                                         ; $68E2: $14
    ld [$102C], sp                                ; $68E3: $08 $2C $10
    ld a, [hl-]                                   ; $68E6: $3A
    inc d                                         ; $68E7: $14
    ccf                                           ; $68E8: $3F
    ld [bc], a                                    ; $68E9: $02
    dec sp                                        ; $68EA: $3B
    nop                                           ; $68EB: $00
    ld a, b                                       ; $68EC: $78
    jr nc, jr_023_694B                            ; $68ED: $30 $5C

    jr nc, @+$5E                                  ; $68EF: $30 $5C

jr_023_68F1:
    jr nc, jr_023_68F1                            ; $68F1: $30 $FE

    ld [hl], h                                    ; $68F3: $74
    cp a                                          ; $68F4: $BF
    halt                                          ; $68F5: $76
    cp a                                          ; $68F6: $BF
    ld [hl], e                                    ; $68F7: $73
    cp a                                          ; $68F8: $BF
    ld [hl], c                                    ; $68F9: $71
    rst RST_38                                    ; $68FA: $FF
    ld [hl], b                                    ; $68FB: $70
    ld e, a                                       ; $68FC: $5F
    jr nc, jr_023_695E                            ; $68FD: $30 $5F

    jr nc, jr_023_6902                            ; $68FF: $30 $01

    nop                                           ; $6901: $00

jr_023_6902:
    inc bc                                        ; $6902: $03
    ld bc, $0306                                  ; $6903: $01 $06 $03
    rra                                           ; $6906: $1F
    ld bc, $1E23                                  ; $6907: $01 $23 $1E
    ld a, e                                       ; $690A: $7B
    rrca                                          ; $690B: $0F
    adc [hl]                                      ; $690C: $8E
    ld a, e                                       ; $690D: $7B
    ccf                                           ; $690E: $3F
    db $FC                                        ; $690F: $FC
    rst RST_38                                    ; $6910: $FF
    di                                            ; $6911: $F3
    cp $CF                                        ; $6912: $FE $CF
    db $FC                                        ; $6914: $FC
    rlca                                          ; $6915: $07
    rst RST_38                                    ; $6916: $FF
    ld bc, $00FF                                  ; $6917: $01 $FF $00
    rst RST_38                                    ; $691A: $FF
    nop                                           ; $691B: $00
    rst RST_38                                    ; $691C: $FF
    nop                                           ; $691D: $00
    rst RST_38                                    ; $691E: $FF
    nop                                           ; $691F: $00
    jr nc, jr_023_6922                            ; $6920: $30 $00

jr_023_6922:
    jr c, jr_023_6934                             ; $6922: $38 $10

    jr c, jr_023_6936                             ; $6924: $38 $10

    inc e                                         ; $6926: $1C
    ld [$0C16], sp                                ; $6927: $08 $16 $0C
    dec bc                                        ; $692A: $0B
    ld b, $0F                                     ; $692B: $06 $0F
    rlca                                          ; $692D: $07
    rra                                           ; $692E: $1F
    ld c, $75                                     ; $692F: $0E $75
    ld e, $E5                                     ; $6931: $1E $E5
    ld a, [hl-]                                   ; $6933: $3A

jr_023_6934:
    dec l                                         ; $6934: $2D
    ei                                            ; $6935: $FB

jr_023_6936:
    ld e, $F9                                     ; $6936: $1E $F9
    rst RST_38                                    ; $6938: $FF
    add b                                         ; $6939: $80
    adc c                                         ; $693A: $89
    rst RST_30                                    ; $693B: $F7
    call c, Call_000_08FF                         ; $693C: $DC $FF $08
    rst RST_30                                    ; $693F: $F7
    add b                                         ; $6940: $80
    nop                                           ; $6941: $00
    ret nz                                        ; $6942: $C0

    add b                                         ; $6943: $80
    ldh [rLCDC], a                                ; $6944: $E0 $40
    ld [hl], b                                    ; $6946: $70
    and b                                         ; $6947: $A0
    ld hl, sp+$30                                 ; $6948: $F8 $30
    db $F4                                        ; $694A: $F4

jr_023_694B:
    ret z                                         ; $694B: $C8

    jp $FD3C                                      ; $694C: $C3 $3C $FD


    ld b, $FE                                     ; $694F: $06 $FE
    ld b, c                                       ; $6951: $41
    rst RST_38                                    ; $6952: $FF
    ld h, [hl]                                    ; $6953: $66
    rst RST_38                                    ; $6954: $FF
    ld a, h                                       ; $6955: $7C
    rst RST_38                                    ; $6956: $FF
    jr @+$01                                      ; $6957: $18 $FF

    nop                                           ; $6959: $00
    rst RST_38                                    ; $695A: $FF
    nop                                           ; $695B: $00
    rst RST_38                                    ; $695C: $FF
    nop                                           ; $695D: $00

jr_023_695E:
    rst RST_38                                    ; $695E: $FF
    nop                                           ; $695F: $00
    inc e                                         ; $6960: $1C
    nop                                           ; $6961: $00
    jr c, jr_023_6964                             ; $6962: $38 $00

jr_023_6964:
    ld a, $00                                     ; $6964: $3E $00
    ccf                                           ; $6966: $3F
    nop                                           ; $6967: $00
    jr c, jr_023_696A                             ; $6968: $38 $00

jr_023_696A:
    ld a, h                                       ; $696A: $7C
    nop                                           ; $696B: $00
    db $FC                                        ; $696C: $FC
    ld b, b                                       ; $696D: $40
    cp $80                                        ; $696E: $FE $80
    cp $80                                        ; $6970: $FE $80
    rst RST_38                                    ; $6972: $FF
    nop                                           ; $6973: $00
    rst RST_38                                    ; $6974: $FF
    nop                                           ; $6975: $00
    rst RST_38                                    ; $6976: $FF
    nop                                           ; $6977: $00
    rst RST_38                                    ; $6978: $FF
    nop                                           ; $6979: $00
    rst RST_38                                    ; $697A: $FF
    nop                                           ; $697B: $00
    rst RST_38                                    ; $697C: $FF
    nop                                           ; $697D: $00
    rst RST_38                                    ; $697E: $FF
    nop                                           ; $697F: $00
    ld e, a                                       ; $6980: $5F
    jr c, jr_023_6A02                             ; $6981: $38 $7F

    jr c, jr_023_69B4                             ; $6983: $38 $2F

    jr jr_023_69B6                                ; $6985: $18 $2F

    jr @+$41                                      ; $6987: $18 $3F

    jr jr_023_69AA                                ; $6989: $18 $1F

    inc c                                         ; $698B: $0C
    rla                                           ; $698C: $17
    inc c                                         ; $698D: $0C
    rra                                           ; $698E: $1F
    inc c                                         ; $698F: $0C
    rrca                                          ; $6990: $0F
    ld b, $0F                                     ; $6991: $06 $0F
    ld b, $07                                     ; $6993: $06 $07
    inc bc                                        ; $6995: $03
    inc bc                                        ; $6996: $03
    ld bc, $0001                                  ; $6997: $01 $01 $00
    nop                                           ; $699A: $00
    nop                                           ; $699B: $00
    nop                                           ; $699C: $00
    nop                                           ; $699D: $00
    nop                                           ; $699E: $00
    nop                                           ; $699F: $00

jr_023_69A0:
    sbc a                                         ; $69A0: $9F

jr_023_69A1:
    nop                                           ; $69A1: $00
    rlca                                          ; $69A2: $07
    nop                                           ; $69A3: $00
    ld bc, $0000                                  ; $69A4: $01 $00 $00
    nop                                           ; $69A7: $00
    nop                                           ; $69A8: $00
    nop                                           ; $69A9: $00

jr_023_69AA:
    ld bc, $0000                                  ; $69AA: $01 $00 $00
    nop                                           ; $69AD: $00
    add b                                         ; $69AE: $80
    nop                                           ; $69AF: $00
    add b                                         ; $69B0: $80
    nop                                           ; $69B1: $00
    ret nz                                        ; $69B2: $C0

    add b                                         ; $69B3: $80

jr_023_69B4:
    ret nz                                        ; $69B4: $C0

    nop                                           ; $69B5: $00

jr_023_69B6:
    ld b, b                                       ; $69B6: $40
    nop                                           ; $69B7: $00
    nop                                           ; $69B8: $00
    nop                                           ; $69B9: $00
    nop                                           ; $69BA: $00
    nop                                           ; $69BB: $00
    nop                                           ; $69BC: $00
    nop                                           ; $69BD: $00
    nop                                           ; $69BE: $00
    nop                                           ; $69BF: $00
    rra                                           ; $69C0: $1F
    db $E3                                        ; $69C1: $E3

jr_023_69C2:
    db $E3                                        ; $69C2: $E3
    dec a                                         ; $69C3: $3D
    ld de, $11EE                                  ; $69C4: $11 $EE $11
    xor $09                                       ; $69C7: $EE $09
    or $8C                                        ; $69C9: $F6 $8C
    ld [hl], e                                    ; $69CB: $73
    adc [hl]                                      ; $69CC: $8E
    ld [hl], c                                    ; $69CD: $71
    rst RST_00                                    ; $69CE: $C7
    jr c, jr_023_69A0                             ; $69CF: $38 $CF

    jr nc, jr_023_69C2                            ; $69D1: $30 $EF

    db $10                                        ; $69D3: $10
    rst RST_28                                    ; $69D4: $EF
    ld de, $00FF                                  ; $69D5: $11 $FF $00
    ld l, e                                       ; $69D8: $6B
    inc d                                         ; $69D9: $14
    ccf                                           ; $69DA: $3F
    nop                                           ; $69DB: $00
    rst RST_38                                    ; $69DC: $FF
    nop                                           ; $69DD: $00
    ld a, [hl]                                    ; $69DE: $7E
    rlca                                          ; $69DF: $07
    rst RST_38                                    ; $69E0: $FF
    nop                                           ; $69E1: $00
    ld a, a                                       ; $69E2: $7F
    add b                                         ; $69E3: $80
    cp e                                          ; $69E4: $BB
    ld b, b                                       ; $69E5: $40
    rst RST_38                                    ; $69E6: $FF
    jr nz, @+$01                                  ; $69E7: $20 $FF

    add hl, bc                                    ; $69E9: $09
    rst RST_38                                    ; $69EA: $FF
    adc c                                         ; $69EB: $89
    cp $CD                                        ; $69EC: $FE $CD
    cp d                                          ; $69EE: $BA
    ld l, a                                       ; $69EF: $6F
    ret z                                         ; $69F0: $C8

    ld a, a                                       ; $69F1: $7F
    add b                                         ; $69F2: $80
    rst RST_38                                    ; $69F3: $FF
    ldh a, [$FF1F]                                ; $69F4: $F0 $1F
    ld [$DB3F], a                                 ; $69F6: $EA $3F $DB
    ld a, a                                       ; $69F9: $7F
    ei                                            ; $69FA: $FB
    ld l, [hl]                                    ; $69FB: $6E
    ei                                            ; $69FC: $FB
    adc [hl]                                      ; $69FD: $8E
    rst RST_38                                    ; $69FE: $FF
    ld b, $FF                                     ; $69FF: $06 $FF
    nop                                           ; $6A01: $00

jr_023_6A02:
    rst RST_38                                    ; $6A02: $FF
    add b                                         ; $6A03: $80
    rst RST_20                                    ; $6A04: $E7
    add b                                         ; $6A05: $80
    rst RST_28                                    ; $6A06: $EF
    add b                                         ; $6A07: $80
    ld a, [hl]                                    ; $6A08: $7E
    add b                                         ; $6A09: $80
    db $FC                                        ; $6A0A: $FC
    adc b                                         ; $6A0B: $88
    ld a, h                                       ; $6A0C: $7C
    or b                                          ; $6A0D: $B0
    ld a, b                                       ; $6A0E: $78
    ldh [$FF7F], a                                ; $6A0F: $E0 $7F
    ret nz                                        ; $6A11: $C0

    ld a, a                                       ; $6A12: $7F
    ldh [$FF1F], a                                ; $6A13: $E0 $1F
    db $FC                                        ; $6A15: $FC
    rst RST_38                                    ; $6A16: $FF
    ret nz                                        ; $6A17: $C0

    ccf                                           ; $6A18: $3F
    ldh [$FF9C], a                                ; $6A19: $E0 $9C
    ldh a, [$FFFE]                                ; $6A1B: $F0 $FE
    ld [hl], b                                    ; $6A1D: $70
    rst RST_38                                    ; $6A1E: $FF
    jr jr_023_69A1                                ; $6A1F: $18 $80

    nop                                           ; $6A21: $00
    add b                                         ; $6A22: $80
    nop                                           ; $6A23: $00
    ret nz                                        ; $6A24: $C0

    nop                                           ; $6A25: $00
    ret nz                                        ; $6A26: $C0

    nop                                           ; $6A27: $00
    ldh [rP1], a                                  ; $6A28: $E0 $00
    ldh [rP1], a                                  ; $6A2A: $E0 $00
    ldh a, [rP1]                                  ; $6A2C: $F0 $00
    ldh a, [rP1]                                  ; $6A2E: $F0 $00
    ld hl, sp+$00                                 ; $6A30: $F8 $00
    ld hl, sp+$00                                 ; $6A32: $F8 $00
    inc a                                         ; $6A34: $3C
    nop                                           ; $6A35: $00
    inc e                                         ; $6A36: $1C
    nop                                           ; $6A37: $00
    ld c, $00                                     ; $6A38: $0E $00
    or $00                                        ; $6A3A: $F6 $00
    ld [bc], a                                    ; $6A3C: $02
    nop                                           ; $6A3D: $00
    ldh [rP1], a                                  ; $6A3E: $E0 $00
    rra                                           ; $6A40: $1F
    nop                                           ; $6A41: $00
    rlca                                          ; $6A42: $07
    nop                                           ; $6A43: $00
    rlca                                          ; $6A44: $07
    nop                                           ; $6A45: $00
    rrca                                          ; $6A46: $0F
    nop                                           ; $6A47: $00
    dec c                                         ; $6A48: $0D
    nop                                           ; $6A49: $00
    dec de                                        ; $6A4A: $1B
    ld bc, $0013                                  ; $6A4B: $01 $13 $00
    daa                                           ; $6A4E: $27
    nop                                           ; $6A4F: $00
    ld b, $00                                     ; $6A50: $06 $00
    inc c                                         ; $6A52: $0C
    nop                                           ; $6A53: $00
    ld [$1000], sp                                ; $6A54: $08 $00 $10
    nop                                           ; $6A57: $00
    nop                                           ; $6A58: $00
    nop                                           ; $6A59: $00
    nop                                           ; $6A5A: $00
    nop                                           ; $6A5B: $00
    nop                                           ; $6A5C: $00
    nop                                           ; $6A5D: $00
    nop                                           ; $6A5E: $00
    nop                                           ; $6A5F: $00
    rst RST_18                                    ; $6A60: $DF
    ld b, $0F                                     ; $6A61: $06 $0F
    ld [bc], a                                    ; $6A63: $02
    rrca                                          ; $6A64: $0F
    ld [bc], a                                    ; $6A65: $02
    ld b, $00                                     ; $6A66: $06 $00
    ld b, $00                                     ; $6A68: $06 $00
    ld [bc], a                                    ; $6A6A: $02
    nop                                           ; $6A6B: $00
    nop                                           ; $6A6C: $00
    nop                                           ; $6A6D: $00
    nop                                           ; $6A6E: $00
    nop                                           ; $6A6F: $00
    nop                                           ; $6A70: $00
    nop                                           ; $6A71: $00
    nop                                           ; $6A72: $00
    nop                                           ; $6A73: $00
    nop                                           ; $6A74: $00
    nop                                           ; $6A75: $00
    nop                                           ; $6A76: $00
    nop                                           ; $6A77: $00
    nop                                           ; $6A78: $00
    nop                                           ; $6A79: $00
    nop                                           ; $6A7A: $00
    nop                                           ; $6A7B: $00
    nop                                           ; $6A7C: $00
    nop                                           ; $6A7D: $00
    nop                                           ; $6A7E: $00
    nop                                           ; $6A7F: $00
    rst RST_38                                    ; $6A80: $FF
    inc b                                         ; $6A81: $04
    ld e, $00                                     ; $6A82: $1E $00
    rlca                                          ; $6A84: $07
    nop                                           ; $6A85: $00
    ld bc, $0000                                  ; $6A86: $01 $00 $00
    nop                                           ; $6A89: $00
    nop                                           ; $6A8A: $00
    nop                                           ; $6A8B: $00
    nop                                           ; $6A8C: $00
    nop                                           ; $6A8D: $00
    nop                                           ; $6A8E: $00
    nop                                           ; $6A8F: $00
    nop                                           ; $6A90: $00
    nop                                           ; $6A91: $00
    nop                                           ; $6A92: $00
    nop                                           ; $6A93: $00
    nop                                           ; $6A94: $00
    nop                                           ; $6A95: $00
    nop                                           ; $6A96: $00
    nop                                           ; $6A97: $00
    nop                                           ; $6A98: $00
    nop                                           ; $6A99: $00
    nop                                           ; $6A9A: $00
    nop                                           ; $6A9B: $00
    nop                                           ; $6A9C: $00
    nop                                           ; $6A9D: $00
    nop                                           ; $6A9E: $00
    nop                                           ; $6A9F: $00
    ret nz                                        ; $6AA0: $C0

    nop                                           ; $6AA1: $00
    nop                                           ; $6AA2: $00
    nop                                           ; $6AA3: $00
    nop                                           ; $6AA4: $00
    nop                                           ; $6AA5: $00
    nop                                           ; $6AA6: $00
    nop                                           ; $6AA7: $00
    nop                                           ; $6AA8: $00
    nop                                           ; $6AA9: $00
    add b                                         ; $6AAA: $80
    nop                                           ; $6AAB: $00
    ret nz                                        ; $6AAC: $C0

    nop                                           ; $6AAD: $00
    jr nz, jr_023_6AB0                            ; $6AAE: $20 $00

jr_023_6AB0:
    add b                                         ; $6AB0: $80
    nop                                           ; $6AB1: $00
    ld b, b                                       ; $6AB2: $40
    nop                                           ; $6AB3: $00
    nop                                           ; $6AB4: $00
    nop                                           ; $6AB5: $00
    nop                                           ; $6AB6: $00
    nop                                           ; $6AB7: $00
    nop                                           ; $6AB8: $00
    nop                                           ; $6AB9: $00
    nop                                           ; $6ABA: $00
    nop                                           ; $6ABB: $00
    nop                                           ; $6ABC: $00
    nop                                           ; $6ABD: $00
    nop                                           ; $6ABE: $00
    nop                                           ; $6ABF: $00
    nop                                           ; $6AC0: $00
    nop                                           ; $6AC1: $00
    ld bc, $0000                                  ; $6AC2: $01 $00 $00
    nop                                           ; $6AC5: $00
    nop                                           ; $6AC6: $00
    nop                                           ; $6AC7: $00
    inc bc                                        ; $6AC8: $03
    nop                                           ; $6AC9: $00
    ld c, $03                                     ; $6ACA: $0E $03
    jr c, jr_023_6ADD                             ; $6ACC: $38 $0F

    ld b, b                                       ; $6ACE: $40
    ccf                                           ; $6ACF: $3F
    jr c, @+$11                                   ; $6AD0: $38 $0F

    ld c, $03                                     ; $6AD2: $0E $03
    inc bc                                        ; $6AD4: $03
    nop                                           ; $6AD5: $00
    rlca                                          ; $6AD6: $07
    nop                                           ; $6AD7: $00
    inc e                                         ; $6AD8: $1C
    rlca                                          ; $6AD9: $07
    cpl                                           ; $6ADA: $2F
    inc e                                         ; $6ADB: $1C
    ld l, h                                       ; $6ADC: $6C

jr_023_6ADD:
    jr nc, @+$72                                  ; $6ADD: $30 $70

    nop                                           ; $6ADF: $00
    stop                                          ; $6AE0: $10 $00
    jr jr_023_6AE4                                ; $6AE2: $18 $00

jr_023_6AE4:
    inc c                                         ; $6AE4: $0C
    nop                                           ; $6AE5: $00
    ld c, $04                                     ; $6AE6: $0E $04
    rlca                                          ; $6AE8: $07
    ld [bc], a                                    ; $6AE9: $02
    ld e, $03                                     ; $6AEA: $1E $03
    jr c, jr_023_6B0D                             ; $6AEC: $38 $1F

    ccf                                           ; $6AEE: $3F
    rlca                                          ; $6AEF: $07
    rst RST_20                                    ; $6AF0: $E7
    ld a, [hl-]                                   ; $6AF1: $3A
    rlca                                          ; $6AF2: $07
    ld hl, sp-$1B                                 ; $6AF3: $F8 $E5
    ld a, [hl-]                                   ; $6AF5: $3A
    ld a, c                                       ; $6AF6: $79
    ld c, $FF                                     ; $6AF7: $0E $FF
    nop                                           ; $6AF9: $00
    ld [hl], b                                    ; $6AFA: $70
    ldh [rNR34], a                                ; $6AFB: $E0 $1E
    ldh a, [rIF]                                  ; $6AFD: $F0 $0F
    or $20                                        ; $6AFF: $F6 $20
    nop                                           ; $6B01: $00
    ld h, b                                       ; $6B02: $60
    nop                                           ; $6B03: $00
    ld h, d                                       ; $6B04: $62
    nop                                           ; $6B05: $00
    db $EC                                        ; $6B06: $EC
    ld b, b                                       ; $6B07: $40
    db $FC                                        ; $6B08: $FC
    ld c, b                                       ; $6B09: $48
    cp b                                          ; $6B0A: $B8
    ldh a, [rNR10]                                ; $6B0B: $F0 $10

jr_023_6B0D:
    ldh [$FF30], a                                ; $6B0D: $E0 $30
    ldh [rNR23], a                                ; $6B0F: $E0 $18
    ldh a, [$FF6C]                                ; $6B11: $F0 $6C
    cp b                                          ; $6B13: $B8
    ld a, [hl]                                    ; $6B14: $7E
    add h                                         ; $6B15: $84
    rst RST_38                                    ; $6B16: $FF
    add b                                         ; $6B17: $80
    db $E3                                        ; $6B18: $E3
    ld bc, $20F1                                  ; $6B19: $01 $F1 $20
    cp c                                          ; $6B1C: $B9
    nop                                           ; $6B1D: $00
    dec e                                         ; $6B1E: $1D
    nop                                           ; $6B1F: $00
    ld bc, $0700                                  ; $6B20: $01 $00 $07
    ld bc, $071C                                  ; $6B23: $01 $1C $07
    jr nz, jr_023_6B47                            ; $6B26: $20 $1F

    inc e                                         ; $6B28: $1C
    rlca                                          ; $6B29: $07
    rlca                                          ; $6B2A: $07
    ld bc, $0083                                  ; $6B2B: $01 $83 $00
    add [hl]                                      ; $6B2E: $86
    inc bc                                        ; $6B2F: $03
    add a                                         ; $6B30: $87
    nop                                           ; $6B31: $00
    cp $03                                        ; $6B32: $FE $03

jr_023_6B34:
    sbc a                                         ; $6B34: $9F
    add sp, -$02                                  ; $6B35: $E8 $FE
    db $EB                                        ; $6B37: $EB
    rst RST_38                                    ; $6B38: $FF
    db $EC                                        ; $6B39: $EC
    rst RST_38                                    ; $6B3A: $FF
    rra                                           ; $6B3B: $1F
    rst RST_38                                    ; $6B3C: $FF
    sbc [hl]                                      ; $6B3D: $9E
    cp a                                          ; $6B3E: $BF
    dec e                                         ; $6B3F: $1D
    ldh a, [rP1]                                  ; $6B40: $F0 $00
    jr c, jr_023_6B34                             ; $6B42: $38 $F0

    rrca                                          ; $6B44: $0F
    ld hl, sp+$05                                 ; $6B45: $F8 $05

jr_023_6B47:
    ei                                            ; $6B47: $FB
    rrca                                          ; $6B48: $0F
    ld hl, sp+$38                                 ; $6B49: $F8 $38
    ldh a, [$FFF0]                                ; $6B4B: $F0 $F0
    nop                                           ; $6B4D: $00
    ld hl, sp-$10                                 ; $6B4E: $F8 $F0
    ld hl, sp+$10                                 ; $6B50: $F8 $10
    inc a                                         ; $6B52: $3C
    ret z                                         ; $6B53: $C8

    sbc $28                                       ; $6B54: $DE $28
    cp a                                          ; $6B56: $BF
    sub $FF                                       ; $6B57: $D6 $FF
    ld c, $FF                                     ; $6B59: $0E $FF
    ld a, [hl]                                    ; $6B5B: $7E
    rst RST_38                                    ; $6B5C: $FF
    ld a, $FF                                     ; $6B5D: $3E $FF
    call c, Call_000_0080                         ; $6B5F: $DC $80 $00
    ret nz                                        ; $6B62: $C0

    add b                                         ; $6B63: $80
    rst RST_38                                    ; $6B64: $FF
    ld b, b                                       ; $6B65: $40
    pop af                                        ; $6B66: $F1
    rrca                                          ; $6B67: $0F
    ld a, a                                       ; $6B68: $7F
    nop                                           ; $6B69: $00
    ccf                                           ; $6B6A: $3F
    nop                                           ; $6B6B: $00
    inc e                                         ; $6B6C: $1C
    rlca                                          ; $6B6D: $07
    ld [hl], b                                    ; $6B6E: $70
    rra                                           ; $6B6F: $1F
    add b                                         ; $6B70: $80
    ld a, a                                       ; $6B71: $7F
    ldh a, [$FF1F]                                ; $6B72: $F0 $1F
    inc a                                         ; $6B74: $3C
    rst RST_00                                    ; $6B75: $C7
    rst RST_30                                    ; $6B76: $F7
    ret c                                         ; $6B77: $D8

    ld sp, hl                                     ; $6B78: $F9
    sbc $DF                                       ; $6B79: $DE $DF
    ld b, $07                                     ; $6B7B: $06 $07
    nop                                           ; $6B7D: $00
    rlca                                          ; $6B7E: $07
    inc bc                                        ; $6B7F: $03
    nop                                           ; $6B80: $00
    nop                                           ; $6B81: $00
    ldh a, [rP1]                                  ; $6B82: $F0 $00
    ld a, b                                       ; $6B84: $78
    ldh [$FFF8], a                                ; $6B85: $E0 $F8
    db $10                                        ; $6B87: $10
    ld hl, sp+$00                                 ; $6B88: $F8 $00
    ld hl, sp-$40                                 ; $6B8A: $F8 $C0
    ld a, $E0                                     ; $6B8C: $3E $E0
    dec de                                        ; $6B8E: $1B
    xor $3F                                       ; $6B8F: $EE $3F
    ldh [c], a                                    ; $6B91: $E2
    xor $C4                                       ; $6B92: $EE $C4
    call c, $F808                                 ; $6B94: $DC $08 $F8
    nop                                           ; $6B97: $00
    ldh a, [rP1]                                  ; $6B98: $F0 $00
    nop                                           ; $6B9A: $00
    nop                                           ; $6B9B: $00
    add b                                         ; $6B9C: $80
    nop                                           ; $6B9D: $00
    add b                                         ; $6B9E: $80
    nop                                           ; $6B9F: $00
    rra                                           ; $6BA0: $1F
    pop af                                        ; $6BA1: $F1
    ld [hl], c                                    ; $6BA2: $71
    ldh [$FFF8], a                                ; $6BA3: $E0 $F8
    nop                                           ; $6BA5: $00
    adc $F8                                       ; $6BA6: $CE $F8
    rst RST_08                                    ; $6BA8: $CF
    cp $FE                                        ; $6BA9: $FE $FE
    rlca                                          ; $6BAB: $07
    rlca                                          ; $6BAC: $07
    nop                                           ; $6BAD: $00
    db $E3                                        ; $6BAE: $E3
    ld bc, $63BF                                  ; $6BAF: $01 $BF $63
    ld [hl], e                                    ; $6BB2: $73
    inc e                                         ; $6BB3: $1C
    inc e                                         ; $6BB4: $1C
    nop                                           ; $6BB5: $00
    nop                                           ; $6BB6: $00
    nop                                           ; $6BB7: $00
    nop                                           ; $6BB8: $00
    nop                                           ; $6BB9: $00
    nop                                           ; $6BBA: $00
    nop                                           ; $6BBB: $00
    nop                                           ; $6BBC: $00
    nop                                           ; $6BBD: $00
    nop                                           ; $6BBE: $00

jr_023_6BBF:
    nop                                           ; $6BBF: $00
    adc a                                         ; $6BC0: $8F
    nop                                           ; $6BC1: $00
    rst RST_20                                    ; $6BC2: $E7
    add b                                         ; $6BC3: $80
    di                                            ; $6BC4: $F3
    nop                                           ; $6BC5: $00
    ld a, [hl-]                                   ; $6BC6: $3A
    ld bc, $031D                                  ; $6BC7: $01 $1D $03
    rst RST_38                                    ; $6BCA: $FF
    inc bc                                        ; $6BCB: $03
    ld l, a                                       ; $6BCC: $6F
    db $FC                                        ; $6BCD: $FC
    xor $7C                                       ; $6BCE: $EE $7C
    ld a, h                                       ; $6BD0: $7C
    add b                                         ; $6BD1: $80
    add b                                         ; $6BD2: $80
    nop                                           ; $6BD3: $00
    nop                                           ; $6BD4: $00
    nop                                           ; $6BD5: $00
    nop                                           ; $6BD6: $00
    nop                                           ; $6BD7: $00
    nop                                           ; $6BD8: $00
    nop                                           ; $6BD9: $00
    nop                                           ; $6BDA: $00
    nop                                           ; $6BDB: $00
    ld bc, $0100                                  ; $6BDC: $01 $00 $01
    nop                                           ; $6BDF: $00
    sbc a                                         ; $6BE0: $9F
    add sp, -$02                                  ; $6BE1: $E8 $FE
    db $EB                                        ; $6BE3: $EB
    rst RST_38                                    ; $6BE4: $FF
    db $EC                                        ; $6BE5: $EC
    rst RST_38                                    ; $6BE6: $FF
    rra                                           ; $6BE7: $1F
    rst RST_38                                    ; $6BE8: $FF
    sbc [hl]                                      ; $6BE9: $9E
    cp a                                          ; $6BEA: $BF
    dec e                                         ; $6BEB: $1D
    rra                                           ; $6BEC: $1F
    inc bc                                        ; $6BED: $03
    dec bc                                        ; $6BEE: $0B
    dec b                                         ; $6BEF: $05
    rrca                                          ; $6BF0: $0F
    ld b, $06                                     ; $6BF1: $06 $06
    inc bc                                        ; $6BF3: $03
    ccf                                           ; $6BF4: $3F
    inc bc                                        ; $6BF5: $03
    ld b, a                                       ; $6BF6: $47
    inc a                                         ; $6BF7: $3C
    ld c, a                                       ; $6BF8: $4F
    ld a, $FF                                     ; $6BF9: $3E $FF
    inc a                                         ; $6BFB: $3C
    db $FC                                        ; $6BFC: $FC
    ret nz                                        ; $6BFD: $C0

    ldh a, [$FFE0]                                ; $6BFE: $F0 $E0
    cp $E0                                        ; $6C00: $FE $E0
    db $FC                                        ; $6C02: $FC
    ret c                                         ; $6C03: $D8

    db $EC                                        ; $6C04: $EC
    jr c, jr_023_6BBF                             ; $6C05: $38 $B8

    ldh a, [$FF7E]                                ; $6C07: $F0 $7E
    ldh [$FFF1], a                                ; $6C09: $E0 $F1
    sbc [hl]                                      ; $6C0B: $9E
    db $FD                                        ; $6C0C: $FD
    cp [hl]                                       ; $6C0D: $BE
    rst RST_38                                    ; $6C0E: $FF
    ld e, $1F                                     ; $6C0F: $1E $1F
    ld bc, $070F                                  ; $6C11: $01 $0F $07
    rlca                                          ; $6C14: $07
    inc bc                                        ; $6C15: $03
    inc bc                                        ; $6C16: $03
    ld bc, $0001                                  ; $6C17: $01 $01 $00
    ld bc, $0000                                  ; $6C1A: $01 $00 $00
    nop                                           ; $6C1D: $00
    nop                                           ; $6C1E: $00
    nop                                           ; $6C1F: $00
    rlca                                          ; $6C20: $07
    inc bc                                        ; $6C21: $03
    dec b                                         ; $6C22: $05
    inc bc                                        ; $6C23: $03
    rrca                                          ; $6C24: $0F
    rlca                                          ; $6C25: $07
    rrca                                          ; $6C26: $0F
    ld b, $0F                                     ; $6C27: $06 $0F
    ld b, $91                                     ; $6C29: $06 $91
    ld c, $51                                     ; $6C2B: $0E $51
    adc [hl]                                      ; $6C2D: $8E
    ld e, [hl]                                    ; $6C2E: $5E
    adc l                                         ; $6C2F: $8D
    rst RST_18                                    ; $6C30: $DF
    adc l                                         ; $6C31: $8D
    res 0, l                                      ; $6C32: $CB $85
    rlc h                                         ; $6C34: $CB $04
    rst RST_28                                    ; $6C36: $EF
    add $F7                                       ; $6C37: $C6 $F7
    ld h, d                                       ; $6C39: $62
    call z, $FB73                                 ; $6C3A: $CC $73 $FB
    ld bc, $0000                                  ; $6C3D: $01 $00 $00
    add b                                         ; $6C40: $80
    nop                                           ; $6C41: $00
    add b                                         ; $6C42: $80
    nop                                           ; $6C43: $00
    ld b, b                                       ; $6C44: $40
    add b                                         ; $6C45: $80
    ret nz                                        ; $6C46: $C0

    add b                                         ; $6C47: $80
    ret nz                                        ; $6C48: $C0

    add b                                         ; $6C49: $80
    ld b, b                                       ; $6C4A: $40
    add b                                         ; $6C4B: $80
    add b                                         ; $6C4C: $80
    nop                                           ; $6C4D: $00
    add b                                         ; $6C4E: $80
    nop                                           ; $6C4F: $00
    add b                                         ; $6C50: $80
    nop                                           ; $6C51: $00
    nop                                           ; $6C52: $00
    nop                                           ; $6C53: $00
    nop                                           ; $6C54: $00
    nop                                           ; $6C55: $00
    nop                                           ; $6C56: $00
    nop                                           ; $6C57: $00
    add b                                         ; $6C58: $80
    nop                                           ; $6C59: $00
    add b                                         ; $6C5A: $80
    nop                                           ; $6C5B: $00
    nop                                           ; $6C5C: $00
    nop                                           ; $6C5D: $00
    nop                                           ; $6C5E: $00
    nop                                           ; $6C5F: $00
    rrca                                          ; $6C60: $0F
    ld b, $0E                                     ; $6C61: $06 $0E
    inc b                                         ; $6C63: $04
    inc e                                         ; $6C64: $1C

jr_023_6C65:
    nop                                           ; $6C65: $00
    ld a, h                                       ; $6C66: $7C
    jr jr_023_6C65                                ; $6C67: $18 $FC

    ld h, b                                       ; $6C69: $60
    db $FC                                        ; $6C6A: $FC
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
    nop                                           ; $6C78: $00
    nop                                           ; $6C79: $00
    nop                                           ; $6C7A: $00
    nop                                           ; $6C7B: $00
    nop                                           ; $6C7C: $00
    nop                                           ; $6C7D: $00
    nop                                           ; $6C7E: $00
    nop                                           ; $6C7F: $00
    ld [$0800], sp                                ; $6C80: $08 $00 $08
    nop                                           ; $6C83: $00
    inc b                                         ; $6C84: $04
    nop                                           ; $6C85: $00
    ld b, $00                                     ; $6C86: $06 $00
    rlca                                          ; $6C88: $07
    nop                                           ; $6C89: $00
    inc bc                                        ; $6C8A: $03
    nop                                           ; $6C8B: $00
    inc bc                                        ; $6C8C: $03
    nop                                           ; $6C8D: $00
    inc bc                                        ; $6C8E: $03
    nop                                           ; $6C8F: $00
    ld bc, $0100                                  ; $6C90: $01 $00 $01
    nop                                           ; $6C93: $00
    ld bc, $1F00                                  ; $6C94: $01 $00 $1F
    nop                                           ; $6C97: $00
    rst RST_38                                    ; $6C98: $FF
    nop                                           ; $6C99: $00
    ccf                                           ; $6C9A: $3F
    inc bc                                        ; $6C9B: $03
    rrca                                          ; $6C9C: $0F
    nop                                           ; $6C9D: $00
    rrca                                          ; $6C9E: $0F
    nop                                           ; $6C9F: $00
    ld [$8900], sp                                ; $6CA0: $08 $00 $89
    nop                                           ; $6CA3: $00
    call $EF00                                    ; $6CA4: $CD $00 $EF
    nop                                           ; $6CA7: $00
    rst RST_38                                    ; $6CA8: $FF
    add h                                         ; $6CA9: $84
    rst RST_38                                    ; $6CAA: $FF
    ld b, h                                       ; $6CAB: $44
    rst RST_38                                    ; $6CAC: $FF
    ld h, [hl]                                    ; $6CAD: $66
    db $DD                                        ; $6CAE: $DD
    scf                                           ; $6CAF: $37
    db $E4                                        ; $6CB0: $E4
    ccf                                           ; $6CB1: $3F
    ld b, b                                       ; $6CB2: $40
    rst RST_38                                    ; $6CB3: $FF
    ld hl, sp+$0F                                 ; $6CB4: $F8 $0F
    push af                                       ; $6CB6: $F5
    rra                                           ; $6CB7: $1F
    db $ED                                        ; $6CB8: $ED
    ccf                                           ; $6CB9: $3F
    db $FD                                        ; $6CBA: $FD
    scf                                           ; $6CBB: $37
    db $FD                                        ; $6CBC: $FD
    ld b, a                                       ; $6CBD: $47
    rst RST_38                                    ; $6CBE: $FF
    add e                                         ; $6CBF: $83
    jr nz, jr_023_6CC2                            ; $6CC0: $20 $00

jr_023_6CC2:
    jr nz, jr_023_6CC4                            ; $6CC2: $20 $00

jr_023_6CC4:
    ld h, b                                       ; $6CC4: $60
    nop                                           ; $6CC5: $00
    ld h, b                                       ; $6CC6: $60
    nop                                           ; $6CC7: $00
    ldh a, [rP1]                                  ; $6CC8: $F0 $00
    ldh a, [rLCDC]                                ; $6CCA: $F0 $40
    pop af                                        ; $6CCC: $F1
    ld b, b                                       ; $6CCD: $40
    rst RST_30                                    ; $6CCE: $F7
    ld b, b                                       ; $6CCF: $40
    cp a                                          ; $6CD0: $BF
    ld b, b                                       ; $6CD1: $40
    cp $C4                                        ; $6CD2: $FE $C4
    cp [hl]                                       ; $6CD4: $BE
    ret c                                         ; $6CD5: $D8

    inc a                                         ; $6CD6: $3C
    ldh a, [$FF3F]                                ; $6CD7: $F0 $3F
    ldh [$FF3F], a                                ; $6CD9: $E0 $3F
    ldh a, [rIF]                                  ; $6CDB: $F0 $0F
    cp $7F                                        ; $6CDD: $FE $7F
    ldh [rNR41], a                                ; $6CDF: $E0 $20
    nop                                           ; $6CE1: $00
    ld b, b                                       ; $6CE2: $40
    nop                                           ; $6CE3: $00
    ret nz                                        ; $6CE4: $C0

    nop                                           ; $6CE5: $00
    add b                                         ; $6CE6: $80
    nop                                           ; $6CE7: $00
    nop                                           ; $6CE8: $00
    nop                                           ; $6CE9: $00
    nop                                           ; $6CEA: $00
    nop                                           ; $6CEB: $00
    nop                                           ; $6CEC: $00
    nop                                           ; $6CED: $00
    nop                                           ; $6CEE: $00
    nop                                           ; $6CEF: $00
    ld hl, sp+$00                                 ; $6CF0: $F8 $00
    add b                                         ; $6CF2: $80
    nop                                           ; $6CF3: $00
    ldh a, [rP1]                                  ; $6CF4: $F0 $00
    ldh [rP1], a                                  ; $6CF6: $E0 $00
    add b                                         ; $6CF8: $80
    nop                                           ; $6CF9: $00
    inc bc                                        ; $6CFA: $03
    nop                                           ; $6CFB: $00
    add h                                         ; $6CFC: $84
    inc bc                                        ; $6CFD: $03
    adc b                                         ; $6CFE: $88
    rlca                                          ; $6CFF: $07
    dec sp                                        ; $6D00: $3B
    inc c                                         ; $6D01: $0C
    ld b, a                                       ; $6D02: $47
    jr c, jr_023_6D43                             ; $6D03: $38 $3E

    add hl, bc                                    ; $6D05: $09
    rrca                                          ; $6D06: $0F
    ld [bc], a                                    ; $6D07: $02
    dec bc                                        ; $6D08: $0B
    nop                                           ; $6D09: $00
    inc de                                        ; $6D0A: $13
    nop                                           ; $6D0B: $00
    inc bc                                        ; $6D0C: $03
    nop                                           ; $6D0D: $00
    ld b, $00                                     ; $6D0E: $06 $00
    dec b                                         ; $6D10: $05
    nop                                           ; $6D11: $00
    ld c, $01                                     ; $6D12: $0E $01
    ld sp, $4F0F                                  ; $6D14: $31 $0F $4F
    jr c, @-$26                                   ; $6D17: $38 $D8

    ld h, b                                       ; $6D19: $60
    pop hl                                        ; $6D1A: $E1
    nop                                           ; $6D1B: $00
    ld bc, $0000                                  ; $6D1C: $01 $00 $00
    nop                                           ; $6D1F: $00
    rst RST_38                                    ; $6D20: $FF
    inc bc                                        ; $6D21: $03
    sub a                                         ; $6D22: $97
    ld a, c                                       ; $6D23: $79
    rst RST_38                                    ; $6D24: $FF
    ld bc, $0003                                  ; $6D25: $01 $03 $00
    di                                            ; $6D28: $F3
    nop                                           ; $6D29: $00
    dec c                                         ; $6D2A: $0D
    ldh a, [$FF83]                                ; $6D2B: $F0 $83
    db $FC                                        ; $6D2D: $FC
    db $FD                                        ; $6D2E: $FD
    ld c, $0F                                     ; $6D2F: $0E $0F
    nop                                           ; $6D31: $00
    add $03                                       ; $6D32: $C6 $03
    ld a, a                                       ; $6D34: $7F
    add $E6                                       ; $6D35: $C6 $E6
    jr c, jr_023_6D71                             ; $6D37: $38 $38

    nop                                           ; $6D39: $00
    nop                                           ; $6D3A: $00
    nop                                           ; $6D3B: $00
    nop                                           ; $6D3C: $00
    nop                                           ; $6D3D: $00
    nop                                           ; $6D3E: $00
    nop                                           ; $6D3F: $00
    rra                                           ; $6D40: $1F
    ldh a, [$FFCF]                                ; $6D41: $F0 $CF

jr_023_6D43:
    ld hl, sp-$01                                 ; $6D43: $F8 $FF
    jr c, @+$01                                   ; $6D45: $38 $FF

    inc c                                         ; $6D47: $0C
    rst RST_38                                    ; $6D48: $FF
    ld [bc], a                                    ; $6D49: $02
    cp a                                          ; $6D4A: $BF
    nop                                           ; $6D4B: $00
    rst RST_18                                    ; $6D4C: $DF
    nop                                           ; $6D4D: $00
    rst RST_28                                    ; $6D4E: $EF
    ld b, c                                       ; $6D4F: $41
    or $01                                        ; $6D50: $F6 $01
    dec a                                         ; $6D52: $3D
    ld [bc], a                                    ; $6D53: $02
    add hl, de                                    ; $6D54: $19
    rlca                                          ; $6D55: $07
    ld sp, hl                                     ; $6D56: $F9
    ld b, $06                                     ; $6D57: $06 $06
    ld hl, sp-$24                                 ; $6D59: $F8 $DC
    ld hl, sp-$08                                 ; $6D5B: $F8 $F8
    nop                                           ; $6D5D: $00
    nop                                           ; $6D5E: $00
    nop                                           ; $6D5F: $00
    rst RST_08                                    ; $6D60: $CF
    nop                                           ; $6D61: $00
    ld hl, sp+$07                                 ; $6D62: $F8 $07
    cp a                                          ; $6D64: $BF
    ld b, b                                       ; $6D65: $40
    ld hl, sp+$17                                 ; $6D66: $F8 $17
    ld l, a                                       ; $6D68: $6F
    ret c                                         ; $6D69: $D8

    rst RST_00                                    ; $6D6A: $C7
    ld a, $C7                                     ; $6D6B: $3E $C7
    inc a                                         ; $6D6D: $3C
    ld l, h                                       ; $6D6E: $6C
    dec sp                                        ; $6D6F: $3B
    inc a                                         ; $6D70: $3C

jr_023_6D71:
    rlca                                          ; $6D71: $07
    rla                                           ; $6D72: $17
    dec bc                                        ; $6D73: $0B
    rra                                           ; $6D74: $1F
    inc c                                         ; $6D75: $0C
    dec c                                         ; $6D76: $0D
    rlca                                          ; $6D77: $07
    ld a, $07                                     ; $6D78: $3E $07
    ld b, a                                       ; $6D7A: $47
    add hl, sp                                    ; $6D7B: $39
    add a                                         ; $6D7C: $87
    ld a, l                                       ; $6D7D: $7D
    sbc a                                         ; $6D7E: $9F
    ld a, b                                       ; $6D7F: $78
    ccf                                           ; $6D80: $3F
    nop                                           ; $6D81: $00
    ld c, e                                       ; $6D82: $4B
    inc a                                         ; $6D83: $3C
    ld a, $03                                     ; $6D84: $3E $03
    ret nc                                        ; $6D86: $D0

    rrca                                          ; $6D87: $0F
    ld l, [hl]                                    ; $6D88: $6E
    jp $E033                                      ; $6D89: $C3 $33 $E0


    ldh a, [rNR41]                                ; $6D8C: $F0 $20
    ld a, b                                       ; $6D8E: $78
    sub b                                         ; $6D8F: $90
    cp h                                          ; $6D90: $BC
    ld d, b                                       ; $6D91: $50
    ld a, a                                       ; $6D92: $7F
    xor h                                         ; $6D93: $AC
    and $1D                                       ; $6D94: $E6 $1D
    add a                                         ; $6D96: $87
    db $FD                                        ; $6D97: $FD
    rst RST_08                                    ; $6D98: $CF
    ld a, l                                       ; $6D99: $7D
    rst RST_38                                    ; $6D9A: $FF
    cp b                                          ; $6D9B: $B8
    db $FC                                        ; $6D9C: $FC
    ret nz                                        ; $6D9D: $C0

    ld hl, sp-$50                                 ; $6D9E: $F8 $B0
    ld hl, sp+$00                                 ; $6DA0: $F8 $00
    sbc h                                         ; $6DA2: $9C
    ld hl, sp+$07                                 ; $6DA3: $F8 $07
    db $FC                                        ; $6DA5: $FC
    inc bc                                        ; $6DA6: $03
    db $FD                                        ; $6DA7: $FD
    rlca                                          ; $6DA8: $07
    db $FC                                        ; $6DA9: $FC
    sbc h                                         ; $6DAA: $9C
    ld hl, sp-$08                                 ; $6DAB: $F8 $F8
    nop                                           ; $6DAD: $00
    add hl, de                                    ; $6DAE: $19
    nop                                           ; $6DAF: $00
    dec de                                        ; $6DB0: $1B
    nop                                           ; $6DB1: $00
    sbc a                                         ; $6DB2: $9F
    nop                                           ; $6DB3: $00
    ld a, [hl]                                    ; $6DB4: $7E
    add b                                         ; $6DB5: $80
    db $EC                                        ; $6DB6: $EC
    or b                                          ; $6DB7: $B0
    di                                            ; $6DB8: $F3
    cp h                                          ; $6DB9: $BC
    cp a                                          ; $6DBA: $BF
    inc c                                         ; $6DBB: $0C
    ld c, $00                                     ; $6DBC: $0E $00
    rrca                                          ; $6DBE: $0F
    ld b, $00                                     ; $6DBF: $06 $00
    nop                                           ; $6DC1: $00
    nop                                           ; $6DC2: $00
    nop                                           ; $6DC3: $00
    nop                                           ; $6DC4: $00
    nop                                           ; $6DC5: $00
    nop                                           ; $6DC6: $00
    nop                                           ; $6DC7: $00
    ret nz                                        ; $6DC8: $C0

    nop                                           ; $6DC9: $00
    ldh [$FF80], a                                ; $6DCA: $E0 $80
    ldh [rLCDC], a                                ; $6DCC: $E0 $40
    ldh [rP1], a                                  ; $6DCE: $E0 $00
    ldh [rP1], a                                  ; $6DD0: $E0 $00
    cp $00                                        ; $6DD2: $FE $00
    adc e                                         ; $6DD4: $8B
    ld a, [hl]                                    ; $6DD5: $7E
    ld a, a                                       ; $6DD6: $7F
    ld [bc], a                                    ; $6DD7: $02
    ld c, $04                                     ; $6DD8: $0E $04
    inc e                                         ; $6DDA: $1C
    ld [$00F8], sp                                ; $6DDB: $08 $F8 $00
    ldh a, [rP1]                                  ; $6DDE: $F0 $00
    rlca                                          ; $6DE0: $07
    ld bc, $060F                                  ; $6DE1: $01 $0F $06
    rrca                                          ; $6DE4: $0F
    rlca                                          ; $6DE5: $07
    rrca                                          ; $6DE6: $0F
    ld b, $0E                                     ; $6DE7: $06 $0E
    inc b                                         ; $6DE9: $04
    inc e                                         ; $6DEA: $1C

jr_023_6DEB:
    nop                                           ; $6DEB: $00
    ld a, h                                       ; $6DEC: $7C
    jr jr_023_6DEB                                ; $6DED: $18 $FC

    ld h, b                                       ; $6DEF: $60
    db $FC                                        ; $6DF0: $FC
    nop                                           ; $6DF1: $00
    nop                                           ; $6DF2: $00
    nop                                           ; $6DF3: $00
    nop                                           ; $6DF4: $00
    nop                                           ; $6DF5: $00
    nop                                           ; $6DF6: $00
    nop                                           ; $6DF7: $00
    nop                                           ; $6DF8: $00
    nop                                           ; $6DF9: $00
    nop                                           ; $6DFA: $00
    nop                                           ; $6DFB: $00
    nop                                           ; $6DFC: $00
    nop                                           ; $6DFD: $00
    nop                                           ; $6DFE: $00
    nop                                           ; $6DFF: $00
    ld a, a                                       ; $6E00: $7F
    ld sp, $1F35                                  ; $6E01: $31 $35 $1F
    ei                                            ; $6E04: $FB
    rra                                           ; $6E05: $1F
    rra                                           ; $6E06: $1F
    db $E4                                        ; $6E07: $E4
    rra                                           ; $6E08: $1F
    push af                                       ; $6E09: $F5
    ld a, a                                       ; $6E0A: $7F
    ldh [$FFE0], a                                ; $6E0B: $E0 $E0
    add b                                         ; $6E0D: $80
    add b                                         ; $6E0E: $80
    nop                                           ; $6E0F: $00
    add b                                         ; $6E10: $80
    nop                                           ; $6E11: $00
    nop                                           ; $6E12: $00
    nop                                           ; $6E13: $00
    nop                                           ; $6E14: $00
    nop                                           ; $6E15: $00
    nop                                           ; $6E16: $00
    nop                                           ; $6E17: $00
    nop                                           ; $6E18: $00
    nop                                           ; $6E19: $00
    nop                                           ; $6E1A: $00
    nop                                           ; $6E1B: $00
    nop                                           ; $6E1C: $00
    nop                                           ; $6E1D: $00
    nop                                           ; $6E1E: $00
    nop                                           ; $6E1F: $00
    ld h, b                                       ; $6E20: $60
    ret nz                                        ; $6E21: $C0

    ret nz                                        ; $6E22: $C0

    add b                                         ; $6E23: $80
    ldh [rP1], a                                  ; $6E24: $E0 $00
    db $10                                        ; $6E26: $10
    ldh [$FF08], a                                ; $6E27: $E0 $08
    ldh a, [$FF88]                                ; $6E29: $F0 $88
    ldh a, [$FFFC]                                ; $6E2B: $F0 $FC
    jr nc, jr_023_6EA9                            ; $6E2D: $30 $7A

    inc c                                         ; $6E2F: $0C
    ld a, d                                       ; $6E30: $7A
    inc a                                         ; $6E31: $3C
    ld a, $1C                                     ; $6E32: $3E $1C
    ld e, $0C                                     ; $6E34: $1E $0C
    ld c, $00                                     ; $6E36: $0E $00
    rrca                                          ; $6E38: $0F
    ld b, $07                                     ; $6E39: $06 $07
    inc bc                                        ; $6E3B: $03
    ld b, $03                                     ; $6E3C: $06 $03
    rlca                                          ; $6E3E: $07
    nop                                           ; $6E3F: $00
    inc a                                         ; $6E40: $3C
    jr jr_023_6E6F                                ; $6E41: $18 $2C

    jr jr_023_6EC1                                ; $6E43: $18 $7C

    jr c, jr_023_6EC1                             ; $6E45: $38 $7A

    inc [hl]                                      ; $6E47: $34
    ld a, [hl]                                    ; $6E48: $7E
    inc [hl]                                      ; $6E49: $34
    adc [hl]                                      ; $6E4A: $8E
    ld [hl], h                                    ; $6E4B: $74
    adc d                                         ; $6E4C: $8A
    ld [hl], h                                    ; $6E4D: $74
    db $F4                                        ; $6E4E: $F4
    ld l, b                                       ; $6E4F: $68
    db $FC                                        ; $6E50: $FC
    ld l, b                                       ; $6E51: $68
    ld e, h                                       ; $6E52: $5C
    jr z, jr_023_6EAD                             ; $6E53: $28 $58

    jr nz, jr_023_6ECF                            ; $6E55: $20 $78

    jr nc, jr_023_6E91                            ; $6E57: $30 $38

    db $10                                        ; $6E59: $10
    and h                                         ; $6E5A: $A4
    jr jr_023_6EB9                                ; $6E5B: $18 $5C

    adc b                                         ; $6E5D: $88
    call z, RST_00                                ; $6E5E: $CC $00 $00
    nop                                           ; $6E61: $00
    nop                                           ; $6E62: $00
    nop                                           ; $6E63: $00
    ld b, c                                       ; $6E64: $41
    nop                                           ; $6E65: $00
    ld h, c                                       ; $6E66: $61
    nop                                           ; $6E67: $00
    inc sp                                        ; $6E68: $33
    ld bc, $113B                                  ; $6E69: $01 $3B $11
    ld e, $0B                                     ; $6E6C: $1E $0B
    ld a, b                                       ; $6E6E: $78

jr_023_6E6F:
    rrca                                          ; $6E6F: $0F
    ldh [$FF7F], a                                ; $6E70: $E0 $7F
    ld a, h                                       ; $6E72: $7C
    rra                                           ; $6E73: $1F
    dec e                                         ; $6E74: $1D
    ld a, [bc]                                    ; $6E75: $0A
    dec e                                         ; $6E76: $1D
    ld [bc], a                                    ; $6E77: $02
    rla                                           ; $6E78: $17
    ld [bc], a                                    ; $6E79: $02
    rlca                                          ; $6E7A: $07
    nop                                           ; $6E7B: $00
    ld [bc], a                                    ; $6E7C: $02
    nop                                           ; $6E7D: $00
    ld [bc], a                                    ; $6E7E: $02
    nop                                           ; $6E7F: $00
    nop                                           ; $6E80: $00
    nop                                           ; $6E81: $00
    nop                                           ; $6E82: $00
    nop                                           ; $6E83: $00
    nop                                           ; $6E84: $00
    nop                                           ; $6E85: $00
    nop                                           ; $6E86: $00
    nop                                           ; $6E87: $00
    add b                                         ; $6E88: $80
    nop                                           ; $6E89: $00
    add b                                         ; $6E8A: $80
    nop                                           ; $6E8B: $00
    sbc a                                         ; $6E8C: $9F
    nop                                           ; $6E8D: $00
    or d                                          ; $6E8E: $B2
    dec c                                         ; $6E8F: $0D
    rst RST_38                                    ; $6E90: $FF

jr_023_6E91:
    ld hl, $C0E1                                  ; $6E91: $21 $E1 $C0
    ld b, b                                       ; $6E94: $40
    add b                                         ; $6E95: $80
    ret nz                                        ; $6E96: $C0

    add b                                         ; $6E97: $80
    ld h, b                                       ; $6E98: $60
    ret nz                                        ; $6E99: $C0

    or b                                          ; $6E9A: $B0
    ldh [$FFF8], a                                ; $6E9B: $E0 $F8
    db $10                                        ; $6E9D: $10
    inc e                                         ; $6E9E: $1C
    nop                                           ; $6E9F: $00
    rst RST_38                                    ; $6EA0: $FF
    or l                                          ; $6EA1: $B5
    rst RST_38                                    ; $6EA2: $FF
    ld c, c                                       ; $6EA3: $49
    ld a, a                                       ; $6EA4: $7F
    add c                                         ; $6EA5: $81
    add l                                         ; $6EA6: $85
    ld [bc], a                                    ; $6EA7: $02
    dec b                                         ; $6EA8: $05

jr_023_6EA9:
    ld [bc], a                                    ; $6EA9: $02
    rrca                                          ; $6EAA: $0F
    nop                                           ; $6EAB: $00

jr_023_6EAC:
    dec [hl]                                      ; $6EAC: $35

jr_023_6EAD:
    ld a, [bc]                                    ; $6EAD: $0A
    ld e, [hl]                                    ; $6EAE: $5E
    jr nz, jr_023_6F12                            ; $6EAF: $20 $61

    nop                                           ; $6EB1: $00
    rrca                                          ; $6EB2: $0F
    nop                                           ; $6EB3: $00
    ei                                            ; $6EB4: $FB
    inc b                                         ; $6EB5: $04
    db $DB                                        ; $6EB6: $DB
    inc h                                         ; $6EB7: $24
    db $DB                                        ; $6EB8: $DB

jr_023_6EB9:
    inc h                                         ; $6EB9: $24
    rst RST_38                                    ; $6EBA: $FF
    inc h                                         ; $6EBB: $24
    rst RST_38                                    ; $6EBC: $FF
    inc h                                         ; $6EBD: $24
    ld a, [hl]                                    ; $6EBE: $7E
    nop                                           ; $6EBF: $00
    dec sp                                        ; $6EC0: $3B

jr_023_6EC1:
    inc b                                         ; $6EC1: $04
    xor $14                                       ; $6EC2: $EE $14
    ld a, l                                       ; $6EC4: $7D
    sub d                                         ; $6EC5: $92
    ld [hl], a                                    ; $6EC6: $77
    add d                                         ; $6EC7: $82
    ldh a, [c]                                    ; $6EC8: $F2
    add b                                         ; $6EC9: $80
    ldh [$FF80], a                                ; $6ECA: $E0 $80
    ret nz                                        ; $6ECC: $C0

    add b                                         ; $6ECD: $80
    add b                                         ; $6ECE: $80

jr_023_6ECF:
    nop                                           ; $6ECF: $00
    nop                                           ; $6ED0: $00
    nop                                           ; $6ED1: $00
    nop                                           ; $6ED2: $00
    nop                                           ; $6ED3: $00
    nop                                           ; $6ED4: $00
    nop                                           ; $6ED5: $00
    nop                                           ; $6ED6: $00
    nop                                           ; $6ED7: $00
    nop                                           ; $6ED8: $00
    nop                                           ; $6ED9: $00
    nop                                           ; $6EDA: $00
    nop                                           ; $6EDB: $00
    nop                                           ; $6EDC: $00
    nop                                           ; $6EDD: $00
    nop                                           ; $6EDE: $00
    nop                                           ; $6EDF: $00
    add h                                         ; $6EE0: $84
    rst RST_38                                    ; $6EE1: $FF
    ld d, $FF                                     ; $6EE2: $16 $FF
    sub a                                         ; $6EE4: $97
    ei                                            ; $6EE5: $FB
    sbc a                                         ; $6EE6: $9F
    db $EB                                        ; $6EE7: $EB
    rst RST_18                                    ; $6EE8: $DF
    pop hl                                        ; $6EE9: $E1
    rst RST_18                                    ; $6EEA: $DF
    and c                                         ; $6EEB: $A1
    rst RST_38                                    ; $6EEC: $FF
    jr nz, @+$01                                  ; $6EED: $20 $FF

    jr nz, jr_023_6EAC                            ; $6EEF: $20 $BB

    nop                                           ; $6EF1: $00
    reti                                          ; $6EF2: $D9


    add b                                         ; $6EF3: $80
    ld c, b                                       ; $6EF4: $48
    add b                                         ; $6EF5: $80
    ret nz                                        ; $6EF6: $C0

    add b                                         ; $6EF7: $80
    ldh [rLCDC], a                                ; $6EF8: $E0 $40
    ld d, b                                       ; $6EFA: $50
    jr nz, @+$72                                  ; $6EFB: $20 $70

    jr nz, jr_023_6F1F                            ; $6EFD: $20 $20

    nop                                           ; $6EFF: $00
    ldh [$FFC0], a                                ; $6F00: $E0 $C0
    ldh [$FFC0], a                                ; $6F02: $E0 $C0
    ldh a, [$FFE0]                                ; $6F04: $F0 $E0
    or b                                          ; $6F06: $B0
    ldh [$FFB0], a                                ; $6F07: $E0 $B0
    ldh [rNR10], a                                ; $6F09: $E0 $10
    ldh [$FF98], a                                ; $6F0B: $E0 $98
    ldh a, [$FFD8]                                ; $6F0D: $F0 $D8
    ld [hl], b                                    ; $6F0F: $70
    ld hl, sp+$70                                 ; $6F10: $F8 $70

jr_023_6F12:
    ld hl, sp+$30                                 ; $6F12: $F8 $30
    ld hl, sp+$10                                 ; $6F14: $F8 $10
    cp b                                          ; $6F16: $B8
    nop                                           ; $6F17: $00
    sbc b                                         ; $6F18: $98
    nop                                           ; $6F19: $00
    adc b                                         ; $6F1A: $88
    nop                                           ; $6F1B: $00
    add b                                         ; $6F1C: $80
    nop                                           ; $6F1D: $00
    add b                                         ; $6F1E: $80

jr_023_6F1F:
    nop                                           ; $6F1F: $00
    nop                                           ; $6F20: $00
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
    nop                                           ; $6F2E: $00
    nop                                           ; $6F2F: $00
    nop                                           ; $6F30: $00
    nop                                           ; $6F31: $00
    nop                                           ; $6F32: $00
    nop                                           ; $6F33: $00
    nop                                           ; $6F34: $00
    nop                                           ; $6F35: $00
    nop                                           ; $6F36: $00
    nop                                           ; $6F37: $00
    cp b                                          ; $6F38: $B8
    nop                                           ; $6F39: $00
    ld a, h                                       ; $6F3A: $7C
    adc b                                         ; $6F3B: $88
    xor $74                                       ; $6F3C: $EE $74
    rst RST_18                                    ; $6F3E: $DF
    ld [hl], h                                    ; $6F3F: $74
    ld [hl], $1F                                  ; $6F40: $36 $1F
    ld [hl-], a                                   ; $6F42: $32
    rra                                           ; $6F43: $1F
    dec h                                         ; $6F44: $25
    rra                                           ; $6F45: $1F
    scf                                           ; $6F46: $37
    rra                                           ; $6F47: $1F
    scf                                           ; $6F48: $37
    rra                                           ; $6F49: $1F
    ld a, $1F                                     ; $6F4A: $3E $1F
    ld a, l                                       ; $6F4C: $7D
    rra                                           ; $6F4D: $1F
    ld e, c                                       ; $6F4E: $59
    cpl                                           ; $6F4F: $2F
    db $FD                                        ; $6F50: $FD
    ld c, a                                       ; $6F51: $4F
    rst RST_38                                    ; $6F52: $FF
    rst RST_20                                    ; $6F53: $E7
    rst RST_20                                    ; $6F54: $E7
    jp c, $A9D6                                   ; $6F55: $DA $D6 $A9

    or $49                                        ; $6F58: $F6 $49
    cp $29                                        ; $6F5A: $FE $29
    push af                                       ; $6F5C: $F5
    ld l, b                                       ; $6F5D: $68
    ld a, l                                       ; $6F5E: $7D
    ld [$80E0], sp                                ; $6F5F: $08 $E0 $80
    ldh a, [$FFC0]                                ; $6F62: $F0 $C0
    ret c                                         ; $6F64: $D8

    ld [hl], b                                    ; $6F65: $70
    db $EC                                        ; $6F66: $EC
    ld a, b                                       ; $6F67: $78
    and $BC                                       ; $6F68: $E6 $BC
    ld [hl], e                                    ; $6F6A: $73
    db $FC                                        ; $6F6B: $FC
    ld sp, $19FF                                  ; $6F6C: $31 $FF $19
    rst RST_38                                    ; $6F6F: $FF
    sbc d                                         ; $6F70: $9A
    rst RST_38                                    ; $6F71: $FF
    adc d                                         ; $6F72: $8A
    rst RST_38                                    ; $6F73: $FF
    add a                                         ; $6F74: $87
    rst RST_38                                    ; $6F75: $FF
    cpl                                           ; $6F76: $2F
    rst RST_38                                    ; $6F77: $FF
    cp l                                          ; $6F78: $BD
    rst RST_38                                    ; $6F79: $FF
    db $ED                                        ; $6F7A: $ED
    rst RST_38                                    ; $6F7B: $FF
    db $E4                                        ; $6F7C: $E4
    rst RST_38                                    ; $6F7D: $FF
    and b                                         ; $6F7E: $A0
    rst RST_38                                    ; $6F7F: $FF
    nop                                           ; $6F80: $00
    nop                                           ; $6F81: $00
    nop                                           ; $6F82: $00
    nop                                           ; $6F83: $00
    nop                                           ; $6F84: $00
    nop                                           ; $6F85: $00
    nop                                           ; $6F86: $00
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
    add b                                         ; $6F96: $80
    nop                                           ; $6F97: $00
    add b                                         ; $6F98: $80
    nop                                           ; $6F99: $00
    ret nz                                        ; $6F9A: $C0

    add b                                         ; $6F9B: $80
    ret nz                                        ; $6F9C: $C0

    add b                                         ; $6F9D: $80
    ldh [$FFC0], a                                ; $6F9E: $E0 $C0
    nop                                           ; $6FA0: $00
    nop                                           ; $6FA1: $00
    nop                                           ; $6FA2: $00
    nop                                           ; $6FA3: $00
    nop                                           ; $6FA4: $00
    nop                                           ; $6FA5: $00
    inc c                                         ; $6FA6: $0C
    nop                                           ; $6FA7: $00
    rra                                           ; $6FA8: $1F
    nop                                           ; $6FA9: $00
    ccf                                           ; $6FAA: $3F
    ld b, $3F                                     ; $6FAB: $06 $3F
    inc bc                                        ; $6FAD: $03
    ld a, a                                       ; $6FAE: $7F
    add hl, de                                    ; $6FAF: $19
    ld l, a                                       ; $6FB0: $6F
    dec e                                         ; $6FB1: $1D
    ld [hl], e                                    ; $6FB2: $73
    ld c, $79                                     ; $6FB3: $0E $79
    daa                                           ; $6FB5: $27
    db $FC                                        ; $6FB6: $FC
    scf                                           ; $6FB7: $37
    db $FC                                        ; $6FB8: $FC
    ccf                                           ; $6FB9: $3F
    xor $3F                                       ; $6FBA: $EE $3F
    or $3F                                        ; $6FBC: $F6 $3F
    ldh a, [c]                                    ; $6FBE: $F2
    ld a, a                                       ; $6FBF: $7F
    nop                                           ; $6FC0: $00
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
    ld [bc], a                                    ; $6FCE: $02
    nop                                           ; $6FCF: $00
    dec c                                         ; $6FD0: $0D
    ld [bc], a                                    ; $6FD1: $02
    rla                                           ; $6FD2: $17
    ld [$0019], sp                                ; $6FD3: $08 $19 $00
    nop                                           ; $6FD6: $00
    nop                                           ; $6FD7: $00
    ld bc, $0100                                  ; $6FD8: $01 $00 $01
    nop                                           ; $6FDB: $00
    ld [bc], a                                    ; $6FDC: $02
    ld bc, $0003                                  ; $6FDD: $01 $03 $00
    ld [$0800], sp                                ; $6FE0: $08 $00 $08
    nop                                           ; $6FE3: $00
    inc b                                         ; $6FE4: $04
    nop                                           ; $6FE5: $00
    ld b, $00                                     ; $6FE6: $06 $00
    rlca                                          ; $6FE8: $07
    nop                                           ; $6FE9: $00
    inc bc                                        ; $6FEA: $03
    nop                                           ; $6FEB: $00
    inc bc                                        ; $6FEC: $03
    nop                                           ; $6FED: $00
    inc bc                                        ; $6FEE: $03
    nop                                           ; $6FEF: $00
    ld bc, $0100                                  ; $6FF0: $01 $00 $01
    nop                                           ; $6FF3: $00
    ld bc, $1F00                                  ; $6FF4: $01 $00 $1F
    nop                                           ; $6FF7: $00
    rst RST_38                                    ; $6FF8: $FF
    nop                                           ; $6FF9: $00
    ccf                                           ; $6FFA: $3F
    inc bc                                        ; $6FFB: $03
    rrca                                          ; $6FFC: $0F
    nop                                           ; $6FFD: $00
    inc bc                                        ; $6FFE: $03
    nop                                           ; $6FFF: $00
    ld [$8900], sp                                ; $7000: $08 $00 $89
    nop                                           ; $7003: $00
    call $EF00                                    ; $7004: $CD $00 $EF
    nop                                           ; $7007: $00
    rst RST_38                                    ; $7008: $FF
    add h                                         ; $7009: $84
    rst RST_38                                    ; $700A: $FF
    ld b, h                                       ; $700B: $44
    rst RST_38                                    ; $700C: $FF
    ld h, [hl]                                    ; $700D: $66
    db $DD                                        ; $700E: $DD
    scf                                           ; $700F: $37
    db $E4                                        ; $7010: $E4
    ccf                                           ; $7011: $3F
    ld b, b                                       ; $7012: $40
    rst RST_38                                    ; $7013: $FF
    ld hl, sp+$0F                                 ; $7014: $F8 $0F
    push af                                       ; $7016: $F5
    rra                                           ; $7017: $1F
    db $ED                                        ; $7018: $ED
    ccf                                           ; $7019: $3F
    db $FD                                        ; $701A: $FD
    scf                                           ; $701B: $37
    db $FD                                        ; $701C: $FD
    ld b, a                                       ; $701D: $47
    rst RST_38                                    ; $701E: $FF
    add e                                         ; $701F: $83
    ld bc, $0600                                  ; $7020: $01 $00 $06
    ld bc, $040B                                  ; $7023: $01 $0B $04
    inc c                                         ; $7026: $0C
    nop                                           ; $7027: $00
    nop                                           ; $7028: $00
    nop                                           ; $7029: $00
    nop                                           ; $702A: $00
    nop                                           ; $702B: $00
    nop                                           ; $702C: $00
    nop                                           ; $702D: $00
    ld hl, $2100                                  ; $702E: $21 $00 $21
    nop                                           ; $7031: $00
    ld h, b                                       ; $7032: $60
    nop                                           ; $7033: $00
    ld h, b                                       ; $7034: $60
    nop                                           ; $7035: $00
    ldh a, [rP1]                                  ; $7036: $F0 $00
    ldh a, [rLCDC]                                ; $7038: $F0 $40
    pop af                                        ; $703A: $F1
    ld b, b                                       ; $703B: $40
    rst RST_30                                    ; $703C: $F7
    ld b, b                                       ; $703D: $40
    cp a                                          ; $703E: $BF
    ld b, b                                       ; $703F: $40
    call c, $BE00                                 ; $7040: $DC $00 $BE
    ld b, h                                       ; $7043: $44
    rst RST_30                                    ; $7044: $F7
    ld a, [hl-]                                   ; $7045: $3A
    ld b, l                                       ; $7046: $45
    ld a, [hl-]                                   ; $7047: $3A
    and l                                         ; $7048: $A5
    ld e, d                                       ; $7049: $5A
    db $DB                                        ; $704A: $DB
    inc h                                         ; $704B: $24
    ccf                                           ; $704C: $3F
    ret nz                                        ; $704D: $C0

    jp nz, $0201                                  ; $704E: $C2 $01 $02

    ld bc, $0007                                  ; $7051: $01 $07 $00
    ld a, [hl-]                                   ; $7054: $3A
    dec b                                         ; $7055: $05
    ld l, a                                       ; $7056: $6F
    db $10                                        ; $7057: $10
    ldh a, [rP1]                                  ; $7058: $F0 $00
    add a                                         ; $705A: $87
    nop                                           ; $705B: $00
    ld a, l                                       ; $705C: $7D
    inc bc                                        ; $705D: $03
    db $ED                                        ; $705E: $ED
    ld e, e                                       ; $705F: $5B
    ld bc, $0300                                  ; $7060: $01 $00 $03
    nop                                           ; $7063: $00
    rlca                                          ; $7064: $07
    nop                                           ; $7065: $00
    rlca                                          ; $7066: $07
    nop                                           ; $7067: $00
    rrca                                          ; $7068: $0F
    inc bc                                        ; $7069: $03
    dec c                                         ; $706A: $0D
    inc bc                                        ; $706B: $03
    ld c, $01                                     ; $706C: $0E $01
    rrca                                          ; $706E: $0F
    inc b                                         ; $706F: $04
    rra                                           ; $7070: $1F
    ld b, $1F                                     ; $7071: $06 $1F
    rlca                                          ; $7073: $07
    dec e                                         ; $7074: $1D
    rlca                                          ; $7075: $07
    ld e, $07                                     ; $7076: $1E $07
    ld e, $0F                                     ; $7078: $1E $0F
    dec de                                        ; $707A: $1B
    rrca                                          ; $707B: $0F
    add hl, de                                    ; $707C: $19
    rrca                                          ; $707D: $0F
    ld [de], a                                    ; $707E: $12
    rrca                                          ; $707F: $0F
    add b                                         ; $7080: $80

jr_023_7081:
    nop                                           ; $7081: $00
    ldh [rP1], a                                  ; $7082: $E0 $00
    ldh a, [$FFC0]                                ; $7084: $F0 $C0
    ld hl, sp+$60                                 ; $7086: $F8 $60
    db $EC                                        ; $7088: $EC
    jr c, jr_023_7081                             ; $7089: $38 $F6

    cp h                                          ; $708B: $BC
    ld [hl], e                                    ; $708C: $73
    sbc $39                                       ; $708D: $DE $39
    cp $98                                        ; $708F: $FE $98
    rst RST_38                                    ; $7091: $FF
    adc h                                         ; $7092: $8C
    rst RST_38                                    ; $7093: $FF
    call $C5FF                                    ; $7094: $CD $FF $C5
    rst RST_38                                    ; $7097: $FF
    ld b, e                                       ; $7098: $43
    rst RST_38                                    ; $7099: $FF
    rla                                           ; $709A: $17
    rst RST_38                                    ; $709B: $FF
    ld e, [hl]                                    ; $709C: $5E
    rst RST_38                                    ; $709D: $FF
    or $FF                                        ; $709E: $F6 $FF
    dec de                                        ; $70A0: $1B
    rrca                                          ; $70A1: $0F
    dec de                                        ; $70A2: $1B
    rrca                                          ; $70A3: $0F
    rra                                           ; $70A4: $1F
    rrca                                          ; $70A5: $0F
    ld a, $0F                                     ; $70A6: $3E $0F
    inc l                                         ; $70A8: $2C
    rla                                           ; $70A9: $17
    cp $27                                        ; $70AA: $FE $27
    rst RST_38                                    ; $70AC: $FF
    di                                            ; $70AD: $F3
    inc de                                        ; $70AE: $13
    db $ED                                        ; $70AF: $ED
    dec hl                                        ; $70B0: $2B
    call nc, Call_000_24DB                        ; $70B1: $D4 $DB $24
    rst RST_28                                    ; $70B4: $EF
    inc d                                         ; $70B5: $14
    jp z, $BE34                                   ; $70B6: $CA $34 $BE

    inc b                                         ; $70B9: $04
    dec e                                         ; $70BA: $1D
    ld [bc], a                                    ; $70BB: $02
    rst RST_30                                    ; $70BC: $F7
    ld a, [bc]                                    ; $70BD: $0A
    or [hl]                                       ; $70BE: $B6
    ld l, c                                       ; $70BF: $69
    ldh a, [c]                                    ; $70C0: $F2
    rst RST_38                                    ; $70C1: $FF
    ret nc                                        ; $70C2: $D0

    rst RST_38                                    ; $70C3: $FF
    ld b, d                                       ; $70C4: $42
    rst RST_38                                    ; $70C5: $FF
    adc e                                         ; $70C6: $8B
    rst RST_38                                    ; $70C7: $FF
    set 7, l                                      ; $70C8: $CB $FD
    rst RST_08                                    ; $70CA: $CF
    push af                                       ; $70CB: $F5
    rst RST_28                                    ; $70CC: $EF
    ldh a, [$FFEF]                                ; $70CD: $F0 $EF
    ld d, b                                       ; $70CF: $50
    ld a, a                                       ; $70D0: $7F
    sub b                                         ; $70D1: $90
    ld a, a                                       ; $70D2: $7F
    sub b                                         ; $70D3: $90
    ld e, l                                       ; $70D4: $5D
    add b                                         ; $70D5: $80
    db $EC                                        ; $70D6: $EC
    ld b, b                                       ; $70D7: $40
    and h                                         ; $70D8: $A4
    ld b, b                                       ; $70D9: $40
    ldh [rLCDC], a                                ; $70DA: $E0 $40
    ld [hl], b                                    ; $70DC: $70
    jr nz, @-$56                                  ; $70DD: $20 $A8

    db $10                                        ; $70DF: $10
    add b                                         ; $70E0: $80
    nop                                           ; $70E1: $00
    ret nz                                        ; $70E2: $C0

    add b                                         ; $70E3: $80
    ret nz                                        ; $70E4: $C0

    add b                                         ; $70E5: $80
    ld h, b                                       ; $70E6: $60
    ret nz                                        ; $70E7: $C0

    ld h, b                                       ; $70E8: $60
    ret nz                                        ; $70E9: $C0

    ldh a, [$FFE0]                                ; $70EA: $F0 $E0
    ldh a, [$FFE0]                                ; $70EC: $F0 $E0
    ldh a, [$FFE0]                                ; $70EE: $F0 $E0
    ld hl, sp-$10                                 ; $70F0: $F8 $F0
    ld e, b                                       ; $70F2: $58
    ldh a, [$FF58]                                ; $70F3: $F0 $58
    ldh a, [$FF08]                                ; $70F5: $F0 $08
    ldh a, [$FF4C]                                ; $70F7: $F0 $4C
    ld hl, sp-$14                                 ; $70F9: $F8 $EC
    cp b                                          ; $70FB: $B8
    db $FC                                        ; $70FC: $FC
    cp b                                          ; $70FD: $B8
    db $FC                                        ; $70FE: $FC
    sbc b                                         ; $70FF: $98
    db $FC                                        ; $7100: $FC
    adc b                                         ; $7101: $88
    call c, $CC00                                 ; $7102: $DC $00 $CC
    nop                                           ; $7105: $00
    call nz, $C000                                ; $7106: $C4 $00 $C0
    nop                                           ; $7109: $00
    ld b, b                                       ; $710A: $40
    nop                                           ; $710B: $00
    nop                                           ; $710C: $00
    nop                                           ; $710D: $00
    nop                                           ; $710E: $00
    nop                                           ; $710F: $00
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
    rst RST_38                                    ; $7120: $FF
    call nz, $D8BF                                ; $7121: $C4 $BF $D8
    ccf                                           ; $7124: $3F
    ldh a, [$FF3F]                                ; $7125: $F0 $3F
    ldh [$FF3F], a                                ; $7127: $E0 $3F
    ldh a, [rIF]                                  ; $7129: $F0 $0F
    cp $7F                                        ; $712B: $FE $7F
    ldh [$FF1F], a                                ; $712D: $E0 $1F
    ldh a, [$FFCE]                                ; $712F: $F0 $CE
    ld hl, sp-$01                                 ; $7131: $F8 $FF
    jr c, @+$01                                   ; $7133: $38 $FF

    inc c                                         ; $7135: $0C
    rst RST_38                                    ; $7136: $FF
    ld [bc], a                                    ; $7137: $02
    adc a                                         ; $7138: $8F
    nop                                           ; $7139: $00
    add e                                         ; $713A: $83
    nop                                           ; $713B: $00
    add b                                         ; $713C: $80
    nop                                           ; $713D: $00
    nop                                           ; $713E: $00
    nop                                           ; $713F: $00
    ld l, l                                       ; $7140: $6D
    db $DB                                        ; $7141: $DB
    ld l, l                                       ; $7142: $6D
    db $DB                                        ; $7143: $DB
    db $FD                                        ; $7144: $FD
    dec bc                                        ; $7145: $0B
    cp a                                          ; $7146: $BF
    nop                                           ; $7147: $00
    ldh a, [rP1]                                  ; $7148: $F0 $00
    ldh [rP1], a                                  ; $714A: $E0 $00
    add b                                         ; $714C: $80
    nop                                           ; $714D: $00
    nop                                           ; $714E: $00
    nop                                           ; $714F: $00
    nop                                           ; $7150: $00
    nop                                           ; $7151: $00
    add b                                         ; $7152: $80
    nop                                           ; $7153: $00
    ret nz                                        ; $7154: $C0

    nop                                           ; $7155: $00
    ld h, b                                       ; $7156: $60
    nop                                           ; $7157: $00
    sub b                                         ; $7158: $90
    nop                                           ; $7159: $00
    ret nz                                        ; $715A: $C0

    nop                                           ; $715B: $00
    jr nz, jr_023_715E                            ; $715C: $20 $00

jr_023_715E:
    nop                                           ; $715E: $00
    nop                                           ; $715F: $00
    cp e                                          ; $7160: $BB
    ld h, c                                       ; $7161: $61
    cp c                                          ; $7162: $B9
    ld h, b                                       ; $7163: $60
    or b                                          ; $7164: $B0
    ld h, b                                       ; $7165: $60
    and b                                         ; $7166: $A0
    ld b, b                                       ; $7167: $40
    ret nz                                        ; $7168: $C0

    nop                                           ; $7169: $00
    nop                                           ; $716A: $00
    nop                                           ; $716B: $00
    nop                                           ; $716C: $00
    nop                                           ; $716D: $00
    nop                                           ; $716E: $00
    nop                                           ; $716F: $00
    nop                                           ; $7170: $00
    nop                                           ; $7171: $00
    nop                                           ; $7172: $00
    nop                                           ; $7173: $00
    nop                                           ; $7174: $00
    nop                                           ; $7175: $00
    nop                                           ; $7176: $00
    nop                                           ; $7177: $00
    nop                                           ; $7178: $00
    nop                                           ; $7179: $00
    nop                                           ; $717A: $00
    nop                                           ; $717B: $00
    nop                                           ; $717C: $00
    nop                                           ; $717D: $00
    nop                                           ; $717E: $00
    nop                                           ; $717F: $00
    cp b                                          ; $7180: $B8
    db $10                                        ; $7181: $10
    stop                                          ; $7182: $10 $00
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
    rst RST_28                                    ; $71A0: $EF
    inc bc                                        ; $71A1: $03
    add a                                         ; $71A2: $87
    ld bc, $0107                                  ; $71A3: $01 $07 $01
    inc bc                                        ; $71A6: $03
    nop                                           ; $71A7: $00
    inc bc                                        ; $71A8: $03
    nop                                           ; $71A9: $00
    ld bc, $0000                                  ; $71AA: $01 $00 $00

jr_023_71AD:
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
    nop                                           ; $71B9: $00
    nop                                           ; $71BA: $00
    nop                                           ; $71BB: $00
    nop                                           ; $71BC: $00
    nop                                           ; $71BD: $00
    nop                                           ; $71BE: $00
    nop                                           ; $71BF: $00
    inc bc                                        ; $71C0: $03
    nop                                           ; $71C1: $00
    rlca                                          ; $71C2: $07
    nop                                           ; $71C3: $00
    ld b, $00                                     ; $71C4: $06 $00
    dec c                                         ; $71C6: $0D
    nop                                           ; $71C7: $00
    add hl, bc                                    ; $71C8: $09
    nop                                           ; $71C9: $00
    inc de                                        ; $71CA: $13
    nop                                           ; $71CB: $00
    inc bc                                        ; $71CC: $03
    nop                                           ; $71CD: $00
    ld b, $00                                     ; $71CE: $06 $00
    inc b                                         ; $71D0: $04
    nop                                           ; $71D1: $00
    ld [$0000], sp                                ; $71D2: $08 $00 $00
    nop                                           ; $71D5: $00
    nop                                           ; $71D6: $00
    nop                                           ; $71D7: $00
    nop                                           ; $71D8: $00
    nop                                           ; $71D9: $00
    nop                                           ; $71DA: $00
    nop                                           ; $71DB: $00
    nop                                           ; $71DC: $00
    nop                                           ; $71DD: $00
    nop                                           ; $71DE: $00
    nop                                           ; $71DF: $00
    nop                                           ; $71E0: $00
    nop                                           ; $71E1: $00
    nop                                           ; $71E2: $00
    nop                                           ; $71E3: $00
    ld bc, $0100                                  ; $71E4: $01 $00 $01
    nop                                           ; $71E7: $00
    inc bc                                        ; $71E8: $03
    nop                                           ; $71E9: $00
    ld [bc], a                                    ; $71EA: $02
    nop                                           ; $71EB: $00
    rlca                                          ; $71EC: $07
    nop                                           ; $71ED: $00
    rlca                                          ; $71EE: $07
    ld bc, $0306                                  ; $71EF: $01 $06 $03
    rrca                                          ; $71F2: $0F
    ld [bc], a                                    ; $71F3: $02
    ld a, $00                                     ; $71F4: $3E $00
    ld e, h                                       ; $71F6: $5C
    jr nz, jr_023_71AD                            ; $71F7: $20 $B4

    ld c, b                                       ; $71F9: $48
    db $F4                                        ; $71FA: $F4
    ld c, b                                       ; $71FB: $48
    ld e, l                                       ; $71FC: $5D
    ld [$0009], sp                                ; $71FD: $08 $09 $00
    nop                                           ; $7200: $00
    nop                                           ; $7201: $00
    nop                                           ; $7202: $00
    nop                                           ; $7203: $00
    nop                                           ; $7204: $00
    nop                                           ; $7205: $00
    nop                                           ; $7206: $00
    nop                                           ; $7207: $00
    nop                                           ; $7208: $00
    nop                                           ; $7209: $00
    nop                                           ; $720A: $00
    nop                                           ; $720B: $00
    nop                                           ; $720C: $00
    nop                                           ; $720D: $00
    ld h, e                                       ; $720E: $63
    nop                                           ; $720F: $00
    rst RST_00                                    ; $7210: $C7
    inc bc                                        ; $7211: $03
    rrca                                          ; $7212: $0F
    inc b                                         ; $7213: $04
    ld l, h                                       ; $7214: $6C
    inc bc                                        ; $7215: $03
    ld hl, sp+$47                                 ; $7216: $F8 $47
    rst RST_20                                    ; $7218: $E7
    ret c                                         ; $7219: $D8

    ld a, a                                       ; $721A: $7F
    push bc                                       ; $721B: $C5
    rst RST_20                                    ; $721C: $E7
    ret nz                                        ; $721D: $C0

    pop bc                                        ; $721E: $C1
    nop                                           ; $721F: $00
    nop                                           ; $7220: $00
    nop                                           ; $7221: $00
    ld bc, $7F00                                  ; $7222: $01 $00 $7F
    nop                                           ; $7225: $00
    adc l                                         ; $7226: $8D
    ld a, d                                       ; $7227: $7A
    call z, Call_023_7B73                         ; $7228: $CC $73 $7B
    inc b                                         ; $722B: $04
    dec l                                         ; $722C: $2D
    ld d, $DC                                     ; $722D: $16 $DC
    scf                                           ; $722F: $37
    rst RST_38                                    ; $7230: $FF
    ret nz                                        ; $7231: $C0

    rst RST_38                                    ; $7232: $FF
    ld [hl], a                                    ; $7233: $77
    rst RST_38                                    ; $7234: $FF
    ld l, h                                       ; $7235: $6C
    db $FD                                        ; $7236: $FD
    ld l, d                                       ; $7237: $6A
    rst RST_38                                    ; $7238: $FF
    add sp, -$01                                  ; $7239: $E8 $FF
    db $EC                                        ; $723B: $EC
    rst RST_38                                    ; $723C: $FF
    rlca                                          ; $723D: $07
    rla                                           ; $723E: $17
    ldh [$FFE0], a                                ; $723F: $E0 $E0
    nop                                           ; $7241: $00
    or b                                          ; $7242: $B0
    nop                                           ; $7243: $00
    nop                                           ; $7244: $00
    nop                                           ; $7245: $00
    nop                                           ; $7246: $00
    nop                                           ; $7247: $00
    add b                                         ; $7248: $80
    nop                                           ; $7249: $00
    add b                                         ; $724A: $80
    nop                                           ; $724B: $00
    add b                                         ; $724C: $80
    nop                                           ; $724D: $00
    ld b, b                                       ; $724E: $40
    add b                                         ; $724F: $80
    ldh [rP1], a                                  ; $7250: $E0 $00
    add b                                         ; $7252: $80
    nop                                           ; $7253: $00
    ret nz                                        ; $7254: $C0

    add b                                         ; $7255: $80
    ldh [$FF80], a                                ; $7256: $E0 $80
    ret nc                                        ; $7258: $D0

    and b                                         ; $7259: $A0
    ret z                                         ; $725A: $C8

    or b                                          ; $725B: $B0
    rst RST_20                                    ; $725C: $E7
    sbc b                                         ; $725D: $98
    sbc a                                         ; $725E: $9F
    rlca                                          ; $725F: $07
    pop bc                                        ; $7260: $C1
    nop                                           ; $7261: $00
    add a                                         ; $7262: $87
    nop                                           ; $7263: $00
    adc a                                         ; $7264: $8F
    rlca                                          ; $7265: $07
    sbc h                                         ; $7266: $9C
    rlca                                          ; $7267: $07
    cp [hl]                                       ; $7268: $BE
    dec de                                        ; $7269: $1B
    dec sp                                        ; $726A: $3B
    dec e                                         ; $726B: $1D
    ld [hl], c                                    ; $726C: $71
    ld c, $78                                     ; $726D: $0E $78
    scf                                           ; $726F: $37
    ld l, a                                       ; $7270: $6F
    dec sp                                        ; $7271: $3B
    rst RST_20                                    ; $7272: $E7
    ld e, h                                       ; $7273: $5C
    rst RST_38                                    ; $7274: $FF
    ld l, [hl]                                    ; $7275: $6E
    rst RST_18                                    ; $7276: $DF
    ld [hl], b                                    ; $7277: $70
    cp $78                                        ; $7278: $FE $78
    ld a, b                                       ; $727A: $78
    nop                                           ; $727B: $00
    ld bc, $0100                                  ; $727C: $01 $00 $01
    nop                                           ; $727F: $00
    ldh a, [c]                                    ; $7280: $F2
    inc e                                         ; $7281: $1C
    rst RST_38                                    ; $7282: $FF
    ldh [$FF9B], a                                ; $7283: $E0 $9B
    ld [hl], a                                    ; $7285: $77
    ld a, a                                       ; $7286: $7F
    or a                                          ; $7287: $B7
    ccf                                           ; $7288: $3F
    add $FF                                       ; $7289: $C6 $FF
    pop hl                                        ; $728B: $E1
    rst RST_30                                    ; $728C: $F7
    nop                                           ; $728D: $00
    rst RST_30                                    ; $728E: $F7
    add b                                         ; $728F: $80
    db $E3                                        ; $7290: $E3
    add b                                         ; $7291: $80
    rst RST_28                                    ; $7292: $EF
    nop                                           ; $7293: $00
    rst RST_18                                    ; $7294: $DF
    nop                                           ; $7295: $00
    cp a                                          ; $7296: $BF
    nop                                           ; $7297: $00
    ld a, a                                       ; $7298: $7F
    nop                                           ; $7299: $00
    ld hl, sp+$00                                 ; $729A: $F8 $00
    db $FC                                        ; $729C: $FC
    nop                                           ; $729D: $00
    cp $00                                        ; $729E: $FE $00
    ld d, c                                       ; $72A0: $51
    jr nz, jr_023_72D6                            ; $72A1: $20 $33

    ld bc, $00C3                                  ; $72A3: $01 $C3 $00
    ld sp, hl                                     ; $72A6: $F9
    ld b, b                                       ; $72A7: $40
    ld c, $F9                                     ; $72A8: $0E $F9
    cp $F3                                        ; $72AA: $FE $F3
    ld sp, hl                                     ; $72AC: $F9
    rrca                                          ; $72AD: $0F
    sbc e                                         ; $72AE: $9B
    rrca                                          ; $72AF: $0F
    sbc a                                         ; $72B0: $9F
    rrca                                          ; $72B1: $0F
    adc e                                         ; $72B2: $8B
    ld b, $CF                                     ; $72B3: $06 $CF
    inc b                                         ; $72B5: $04
    rst RST_08                                    ; $72B6: $CF
    inc b                                         ; $72B7: $04
    sbc a                                         ; $72B8: $9F
    inc c                                         ; $72B9: $0C
    rra                                           ; $72BA: $1F
    ld [bc], a                                    ; $72BB: $02
    ccf                                           ; $72BC: $3F
    ld e, $3F                                     ; $72BD: $1E $3F
    nop                                           ; $72BF: $00
    ld e, a                                       ; $72C0: $5F
    db $EC                                        ; $72C1: $EC
    rst RST_38                                    ; $72C2: $FF
    ldh [$FFE0], a                                ; $72C3: $E0 $E0
    nop                                           ; $72C5: $00
    ret z                                         ; $72C6: $C8

    nop                                           ; $72C7: $00
    ret z                                         ; $72C8: $C8

    add b                                         ; $72C9: $80
    ret z                                         ; $72CA: $C8

    add b                                         ; $72CB: $80
    ret c                                         ; $72CC: $D8

    add b                                         ; $72CD: $80
    sbc b                                         ; $72CE: $98
    nop                                           ; $72CF: $00
    or b                                          ; $72D0: $B0
    nop                                           ; $72D1: $00
    ld h, b                                       ; $72D2: $60
    nop                                           ; $72D3: $00
    ret nz                                        ; $72D4: $C0

    nop                                           ; $72D5: $00

jr_023_72D6:
    add b                                         ; $72D6: $80
    nop                                           ; $72D7: $00
    nop                                           ; $72D8: $00
    nop                                           ; $72D9: $00
    ldh [rP1], a                                  ; $72DA: $E0 $00
    or b                                          ; $72DC: $B0
    ldh [$FFF0], a                                ; $72DD: $E0 $F0
    nop                                           ; $72DF: $00
    nop                                           ; $72E0: $00
    nop                                           ; $72E1: $00
    nop                                           ; $72E2: $00
    nop                                           ; $72E3: $00
    nop                                           ; $72E4: $00
    nop                                           ; $72E5: $00
    nop                                           ; $72E6: $00
    nop                                           ; $72E7: $00
    nop                                           ; $72E8: $00
    nop                                           ; $72E9: $00
    nop                                           ; $72EA: $00
    nop                                           ; $72EB: $00
    inc bc                                        ; $72EC: $03
    nop                                           ; $72ED: $00
    rlca                                          ; $72EE: $07
    inc bc                                        ; $72EF: $03
    dec c                                         ; $72F0: $0D
    rlca                                          ; $72F1: $07
    rrca                                          ; $72F2: $0F
    rlca                                          ; $72F3: $07
    rlca                                          ; $72F4: $07
    nop                                           ; $72F5: $00
    cp $03                                        ; $72F6: $FE $03
    rst RST_38                                    ; $72F8: $FF
    ld h, b                                       ; $72F9: $60
    db $FD                                        ; $72FA: $FD
    ld b, $07                                     ; $72FB: $06 $07
    nop                                           ; $72FD: $00
    ld b, c                                       ; $72FE: $41
    nop                                           ; $72FF: $00
    ld bc, $7F00                                  ; $7300: $01 $00 $7F
    ld bc, $3EFF                                  ; $7303: $01 $FF $3E
    ld h, a                                       ; $7306: $67
    sbc [hl]                                      ; $7307: $9E
    rst RST_38                                    ; $7308: $FF
    call $D5FF                                    ; $7309: $CD $FF $D5
    cp $0B                                        ; $730C: $FE $0B
    ld a, b                                       ; $730E: $78
    adc a                                         ; $730F: $8F
    ldh [$FF7F], a                                ; $7310: $E0 $7F
    db $FC                                        ; $7312: $FC
    rra                                           ; $7313: $1F
    dec e                                         ; $7314: $1D
    ld [$02FD], a                                 ; $7315: $EA $FD $02
    rla                                           ; $7318: $17
    ld [bc], a                                    ; $7319: $02
    rlca                                          ; $731A: $07
    nop                                           ; $731B: $00
    ld [bc], a                                    ; $731C: $02
    nop                                           ; $731D: $00
    ld [bc], a                                    ; $731E: $02
    nop                                           ; $731F: $00
    db $FC                                        ; $7320: $FC
    nop                                           ; $7321: $00
    cp $7C                                        ; $7322: $FE $7C
    adc a                                         ; $7324: $8F
    ld a, b                                       ; $7325: $78
    ld hl, sp+$67                                 ; $7326: $F8 $67
    ldh a, [rIF]                                  ; $7328: $F0 $0F
    rst RST_38                                    ; $732A: $FF
    jr nz, @-$14                                  ; $732B: $20 $EA

jr_023_732D:
    push de                                       ; $732D: $D5
    ld a, a                                       ; $732E: $7F
    cp a                                          ; $732F: $BF
    rst RST_38                                    ; $7330: $FF
    add b                                         ; $7331: $80
    ld h, b                                       ; $7332: $60
    ret nz                                        ; $7333: $C0

    or b                                          ; $7334: $B0
    ldh [$FFF8], a                                ; $7335: $E0 $F8
    db $10                                        ; $7337: $10
    inc e                                         ; $7338: $1C
    nop                                           ; $7339: $00
    nop                                           ; $733A: $00
    nop                                           ; $733B: $00
    nop                                           ; $733C: $00
    nop                                           ; $733D: $00
    nop                                           ; $733E: $00
    nop                                           ; $733F: $00
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
    nop                                           ; $7350: $00
    nop                                           ; $7351: $00
    nop                                           ; $7352: $00
    nop                                           ; $7353: $00
    add b                                         ; $7354: $80
    nop                                           ; $7355: $00
    ldh [rP1], a                                  ; $7356: $E0 $00
    and b                                         ; $7358: $A0
    ld b, b                                       ; $7359: $40
    ldh [rP1], a                                  ; $735A: $E0 $00
    add b                                         ; $735C: $80
    nop                                           ; $735D: $00
    add b                                         ; $735E: $80
    nop                                           ; $735F: $00
    nop                                           ; $7360: $00
    nop                                           ; $7361: $00
    nop                                           ; $7362: $00
    nop                                           ; $7363: $00
    ld bc, $0100                                  ; $7364: $01 $00 $01
    nop                                           ; $7367: $00
    inc bc                                        ; $7368: $03
    nop                                           ; $7369: $00
    ld [bc], a                                    ; $736A: $02
    nop                                           ; $736B: $00
    rlca                                          ; $736C: $07
    nop                                           ; $736D: $00
    rlca                                          ; $736E: $07
    ld bc, $0306                                  ; $736F: $01 $06 $03
    rrca                                          ; $7372: $0F
    ld [bc], a                                    ; $7373: $02
    ld a, $00                                     ; $7374: $3E $00
    ld e, h                                       ; $7376: $5C
    jr nz, jr_023_732D                            ; $7377: $20 $B4

    ld c, b                                       ; $7379: $48
    db $F4                                        ; $737A: $F4
    ld c, b                                       ; $737B: $48
    ld e, h                                       ; $737C: $5C
    ld [$0008], sp                                ; $737D: $08 $08 $00
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
    ld h, e                                       ; $738C: $63
    nop                                           ; $738D: $00
    rst RST_00                                    ; $738E: $C7
    inc bc                                        ; $738F: $03
    rrca                                          ; $7390: $0F
    inc b                                         ; $7391: $04
    ld l, h                                       ; $7392: $6C
    inc bc                                        ; $7393: $03
    ld hl, sp+$47                                 ; $7394: $F8 $47
    rst RST_20                                    ; $7396: $E7
    ret c                                         ; $7397: $D8

    ld a, a                                       ; $7398: $7F
    push bc                                       ; $7399: $C5
    rst RST_20                                    ; $739A: $E7
    ret nz                                        ; $739B: $C0

    ret nz                                        ; $739C: $C0

    nop                                           ; $739D: $00
    rlca                                          ; $739E: $07
    nop                                           ; $739F: $00
    ld bc, $7F00                                  ; $73A0: $01 $00 $7F
    nop                                           ; $73A3: $00
    adc l                                         ; $73A4: $8D
    ld a, d                                       ; $73A5: $7A
    call z, Call_023_7B73                         ; $73A6: $CC $73 $7B
    inc b                                         ; $73A9: $04
    dec l                                         ; $73AA: $2D
    ld d, $DC                                     ; $73AB: $16 $DC
    scf                                           ; $73AD: $37
    rst RST_38                                    ; $73AE: $FF
    ret nz                                        ; $73AF: $C0

    db $FC                                        ; $73B0: $FC
    ld [hl], a                                    ; $73B1: $77
    rst RST_38                                    ; $73B2: $FF
    ld l, h                                       ; $73B3: $6C
    db $FD                                        ; $73B4: $FD
    ld l, d                                       ; $73B5: $6A
    rst RST_38                                    ; $73B6: $FF
    add sp, -$01                                  ; $73B7: $E8 $FF
    db $EC                                        ; $73B9: $EC
    db $FC                                        ; $73BA: $FC
    rlca                                          ; $73BB: $07
    adc a                                         ; $73BC: $8F
    ld [hl], b                                    ; $73BD: $70
    jp z, $B071                                   ; $73BE: $CA $71 $B0

    nop                                           ; $73C1: $00
    nop                                           ; $73C2: $00
    nop                                           ; $73C3: $00
    nop                                           ; $73C4: $00
    nop                                           ; $73C5: $00
    add b                                         ; $73C6: $80
    nop                                           ; $73C7: $00
    add b                                         ; $73C8: $80
    nop                                           ; $73C9: $00
    add b                                         ; $73CA: $80
    nop                                           ; $73CB: $00
    ld b, b                                       ; $73CC: $40
    add b                                         ; $73CD: $80
    ldh [rP1], a                                  ; $73CE: $E0 $00
    add b                                         ; $73D0: $80
    nop                                           ; $73D1: $00
    ld b, b                                       ; $73D2: $40
    add b                                         ; $73D3: $80
    ld b, b                                       ; $73D4: $40
    add b                                         ; $73D5: $80
    ld h, b                                       ; $73D6: $60
    add b                                         ; $73D7: $80
    ld d, b                                       ; $73D8: $50
    and b                                         ; $73D9: $A0
    ld c, a                                       ; $73DA: $4F
    or b                                          ; $73DB: $B0
    or c                                          ; $73DC: $B1
    ld c, $91                                     ; $73DD: $0E $91
    ld c, $00                                     ; $73DF: $0E $00
    nop                                           ; $73E1: $00
    nop                                           ; $73E2: $00
    nop                                           ; $73E3: $00
    nop                                           ; $73E4: $00
    nop                                           ; $73E5: $00
    ld [$0800], sp                                ; $73E6: $08 $00 $08
    nop                                           ; $73E9: $00
    inc b                                         ; $73EA: $04
    nop                                           ; $73EB: $00
    ld b, $00                                     ; $73EC: $06 $00
    rlca                                          ; $73EE: $07
    nop                                           ; $73EF: $00
    rlca                                          ; $73F0: $07
    nop                                           ; $73F1: $00
    rrca                                          ; $73F2: $0F
    inc b                                         ; $73F3: $04
    dec de                                        ; $73F4: $1B
    inc c                                         ; $73F5: $0C
    rra                                           ; $73F6: $1F
    ld c, $1F                                     ; $73F7: $0E $1F
    nop                                           ; $73F9: $00
    db $FD                                        ; $73FA: $FD
    ld b, $BF                                     ; $73FB: $06 $BF
    ret nz                                        ; $73FD: $C0

    rst RST_38                                    ; $73FE: $FF
    nop                                           ; $73FF: $00
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
    nop                                           ; $740A: $00
    nop                                           ; $740B: $00
    inc bc                                        ; $740C: $03
    nop                                           ; $740D: $00
    cp $03                                        ; $740E: $FE $03
    ld sp, hl                                     ; $7410: $F9
    halt                                          ; $7411: $76
    call $FF32                                    ; $7412: $CD $32 $FF
    db $10                                        ; $7415: $10
    rst RST_38                                    ; $7416: $FF
    add h                                         ; $7417: $84
    rst RST_38                                    ; $7418: $FF
    ld b, h                                       ; $7419: $44
    rst RST_38                                    ; $741A: $FF
    ld h, [hl]                                    ; $741B: $66
    db $DD                                        ; $741C: $DD
    scf                                           ; $741D: $37
    db $E4                                        ; $741E: $E4
    ccf                                           ; $741F: $3F
    nop                                           ; $7420: $00
    nop                                           ; $7421: $00
    nop                                           ; $7422: $00
    nop                                           ; $7423: $00
    jr nz, jr_023_7426                            ; $7424: $20 $00

jr_023_7426:
    jr nz, jr_023_7428                            ; $7426: $20 $00

jr_023_7428:
    ld h, b                                       ; $7428: $60
    nop                                           ; $7429: $00
    ld h, b                                       ; $742A: $60
    nop                                           ; $742B: $00
    ld hl, sp+$08                                 ; $742C: $F8 $08
    db $F4                                        ; $742E: $F4
    ld c, h                                       ; $742F: $4C
    rst RST_38                                    ; $7430: $FF
    ld c, [hl]                                    ; $7431: $4E
    rst RST_30                                    ; $7432: $F7
    ld c, b                                       ; $7433: $48
    cp a                                          ; $7434: $BF
    ld b, b                                       ; $7435: $40
    rst RST_38                                    ; $7436: $FF
    push bc                                       ; $7437: $C5
    cp a                                          ; $7438: $BF
    reti                                          ; $7439: $D9


    dec a                                         ; $743A: $3D
    di                                            ; $743B: $F3
    ccf                                           ; $743C: $3F
    ldh [$FF3F], a                                ; $743D: $E0 $3F
    ldh a, [rP1]                                  ; $743F: $F0 $00
    nop                                           ; $7441: $00
    nop                                           ; $7442: $00
    nop                                           ; $7443: $00
    nop                                           ; $7444: $00
    nop                                           ; $7445: $00
    nop                                           ; $7446: $00
    nop                                           ; $7447: $00
    nop                                           ; $7448: $00
    nop                                           ; $7449: $00
    nop                                           ; $744A: $00
    nop                                           ; $744B: $00
    nop                                           ; $744C: $00
    nop                                           ; $744D: $00
    nop                                           ; $744E: $00
    nop                                           ; $744F: $00
    nop                                           ; $7450: $00
    nop                                           ; $7451: $00
    nop                                           ; $7452: $00
    nop                                           ; $7453: $00
    nop                                           ; $7454: $00
    nop                                           ; $7455: $00
    jr nz, jr_023_7458                            ; $7456: $20 $00

jr_023_7458:
    ld b, b                                       ; $7458: $40
    nop                                           ; $7459: $00
    ret nz                                        ; $745A: $C0

    nop                                           ; $745B: $00
    add b                                         ; $745C: $80
    nop                                           ; $745D: $00
    ret nz                                        ; $745E: $C0

    ret nz                                        ; $745F: $C0

    rlca                                          ; $7460: $07
    nop                                           ; $7461: $00
    rrca                                          ; $7462: $0F
    rlca                                          ; $7463: $07
    rra                                           ; $7464: $1F
    rlca                                          ; $7465: $07
    ccf                                           ; $7466: $3F
    dec de                                        ; $7467: $1B
    ccf                                           ; $7468: $3F
    dec e                                         ; $7469: $1D
    ld a, a                                       ; $746A: $7F
    ld c, $7F                                     ; $746B: $0E $7F
    scf                                           ; $746D: $37
    ld a, a                                       ; $746E: $7F
    dec sp                                        ; $746F: $3B
    rst RST_38                                    ; $7470: $FF
    ld e, h                                       ; $7471: $5C
    rst RST_38                                    ; $7472: $FF
    ld l, [hl]                                    ; $7473: $6E
    rst RST_38                                    ; $7474: $FF
    ld [hl], b                                    ; $7475: $70
    cp $78                                        ; $7476: $FE $78
    ld a, b                                       ; $7478: $78
    nop                                           ; $7479: $00
    nop                                           ; $747A: $00
    nop                                           ; $747B: $00
    ld bc, $0100                                  ; $747C: $01 $00 $01
    nop                                           ; $747F: $00
    rst RST_38                                    ; $7480: $FF
    ldh [$FFF8], a                                ; $7481: $E0 $F8
    ld [hl], a                                    ; $7483: $77
    db $FC                                        ; $7484: $FC
    or a                                          ; $7485: $B7
    rst RST_38                                    ; $7486: $FF
    add $FF                                       ; $7487: $C6 $FF
    pop hl                                        ; $7489: $E1
    rst RST_30                                    ; $748A: $F7
    nop                                           ; $748B: $00
    rst RST_30                                    ; $748C: $F7
    add b                                         ; $748D: $80
    db $E3                                        ; $748E: $E3
    add b                                         ; $748F: $80
    rst RST_28                                    ; $7490: $EF
    nop                                           ; $7491: $00
    rst RST_18                                    ; $7492: $DF
    nop                                           ; $7493: $00
    sbc a                                         ; $7494: $9F
    nop                                           ; $7495: $00
    ccf                                           ; $7496: $3F
    nop                                           ; $7497: $00
    ld a, b                                       ; $7498: $78
    nop                                           ; $7499: $00
    ldh a, [rP1]                                  ; $749A: $F0 $00
    db $FC                                        ; $749C: $FC
    nop                                           ; $749D: $00
    cp $00                                        ; $749E: $FE $00
    ld l, a                                       ; $74A0: $6F
    rlca                                          ; $74A1: $07
    rst RST_08                                    ; $74A2: $CF
    nop                                           ; $74A3: $00
    ldh a, [rLCDC]                                ; $74A4: $F0 $40
    add hl, de                                    ; $74A6: $19
    ldh a, [$FFCE]                                ; $74A7: $F0 $CE
    ld sp, hl                                     ; $74A9: $F9
    cp $13                                        ; $74AA: $FE $13
    jr jr_023_74BD                                ; $74AC: $18 $0F

    sbc b                                         ; $74AE: $98
    rrca                                          ; $74AF: $0F
    sbc b                                         ; $74B0: $98
    rrca                                          ; $74B1: $0F
    call $CA06                                    ; $74B2: $CD $06 $CA
    inc b                                         ; $74B5: $04
    rrca                                          ; $74B6: $0F
    inc b                                         ; $74B7: $04
    rra                                           ; $74B8: $1F
    inc c                                         ; $74B9: $0C
    rra                                           ; $74BA: $1F
    ld [bc], a                                    ; $74BB: $02
    ccf                                           ; $74BC: $3F

jr_023_74BD:
    ld e, $3F                                     ; $74BD: $1E $3F
    nop                                           ; $74BF: $00
    rst RST_08                                    ; $74C0: $CF
    add b                                         ; $74C1: $80
    add e                                         ; $74C2: $83
    nop                                           ; $74C3: $00
    nop                                           ; $74C4: $00
    nop                                           ; $74C5: $00
    call nz, Call_023_4500                        ; $74C6: $C4 $00 $45
    add b                                         ; $74C9: $80
    ld b, l                                       ; $74CA: $45
    add b                                         ; $74CB: $80
    ld c, a                                       ; $74CC: $4F
    add b                                         ; $74CD: $80
    adc [hl]                                      ; $74CE: $8E
    nop                                           ; $74CF: $00
    sbc h                                         ; $74D0: $9C
    nop                                           ; $74D1: $00
    jr nc, jr_023_74D4                            ; $74D2: $30 $00

jr_023_74D4:
    ld h, c                                       ; $74D4: $61
    nop                                           ; $74D5: $00
    pop bc                                        ; $74D6: $C1
    nop                                           ; $74D7: $00
    add d                                         ; $74D8: $82
    nop                                           ; $74D9: $00
    ldh [rP1], a                                  ; $74DA: $E0 $00
    or b                                          ; $74DC: $B0
    ldh [$FFF0], a                                ; $74DD: $E0 $F0
    nop                                           ; $74DF: $00
    ret nc                                        ; $74E0: $D0

    rst RST_38                                    ; $74E1: $FF
    cp $03                                        ; $74E2: $FE $03
    db $FD                                        ; $74E4: $FD
    rlca                                          ; $74E5: $07
    ei                                            ; $74E6: $FB
    rrca                                          ; $74E7: $0F
    rst RST_38                                    ; $74E8: $FF
    dec c                                         ; $74E9: $0D
    cp a                                          ; $74EA: $BF
    ld de, $207F                                  ; $74EB: $11 $7F $20
    ld a, e                                       ; $74EE: $7B
    nop                                           ; $74EF: $00
    pop hl                                        ; $74F0: $E1
    nop                                           ; $74F1: $00
    pop bc                                        ; $74F2: $C1
    nop                                           ; $74F3: $00
    add b                                         ; $74F4: $80
    nop                                           ; $74F5: $00
    nop                                           ; $74F6: $00
    nop                                           ; $74F7: $00
    nop                                           ; $74F8: $00
    nop                                           ; $74F9: $00
    nop                                           ; $74FA: $00
    nop                                           ; $74FB: $00
    nop                                           ; $74FC: $00
    nop                                           ; $74FD: $00
    nop                                           ; $74FE: $00
    nop                                           ; $74FF: $00
    inc bc                                        ; $7500: $03
    rst RST_38                                    ; $7501: $FF
    rra                                           ; $7502: $1F
    ld hl, sp+$47                                 ; $7503: $F8 $47
    db $FC                                        ; $7505: $FC
    ld [hl], e                                    ; $7506: $73
    cp $7F                                        ; $7507: $FE $7F
    adc $7F                                       ; $7509: $CE $7F
    jp $C0FF                                      ; $750B: $C3 $FF $C0


    db $E3                                        ; $750E: $E3
    ret nz                                        ; $750F: $C0

    ldh [rLCDC], a                                ; $7510: $E0 $40
    ldh [rLCDC], a                                ; $7512: $E0 $40
    ret nz                                        ; $7514: $C0

    nop                                           ; $7515: $00
    ret nz                                        ; $7516: $C0

    nop                                           ; $7517: $00
    ld b, b                                       ; $7518: $40
    nop                                           ; $7519: $00
    nop                                           ; $751A: $00
    nop                                           ; $751B: $00
    nop                                           ; $751C: $00
    nop                                           ; $751D: $00
    nop                                           ; $751E: $00
    nop                                           ; $751F: $00
    ret nc                                        ; $7520: $D0

    ld [hl], b                                    ; $7521: $70
    ldh a, [rSVBK]                                ; $7522: $F0 $70
    ld b, b                                       ; $7524: $40
    ret nz                                        ; $7525: $C0

    cp $00                                        ; $7526: $FE $00
    ldh [rP1], a                                  ; $7528: $E0 $00
    db $FC                                        ; $752A: $FC
    add b                                         ; $752B: $80
    ld hl, sp+$00                                 ; $752C: $F8 $00
    ldh [rP1], a                                  ; $752E: $E0 $00
    add b                                         ; $7530: $80
    nop                                           ; $7531: $00
    ret nz                                        ; $7532: $C0

    nop                                           ; $7533: $00
    ldh [rP1], a                                  ; $7534: $E0 $00
    ldh a, [$FF80]                                ; $7536: $F0 $80
    ret c                                         ; $7538: $D8

    nop                                           ; $7539: $00
    db $E4                                        ; $753A: $E4
    nop                                           ; $753B: $00
    jr nc, jr_023_753E                            ; $753C: $30 $00

jr_023_753E:
    ld [$0000], sp                                ; $753E: $08 $00 $00
    nop                                           ; $7541: $00
    nop                                           ; $7542: $00
    nop                                           ; $7543: $00
    nop                                           ; $7544: $00
    nop                                           ; $7545: $00
    nop                                           ; $7546: $00
    nop                                           ; $7547: $00
    nop                                           ; $7548: $00
    nop                                           ; $7549: $00
    nop                                           ; $754A: $00
    nop                                           ; $754B: $00
    nop                                           ; $754C: $00
    nop                                           ; $754D: $00
    nop                                           ; $754E: $00
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
    jr c, jr_023_7560                             ; $755E: $38 $00

jr_023_7560:
    nop                                           ; $7560: $00
    nop                                           ; $7561: $00
    nop                                           ; $7562: $00
    nop                                           ; $7563: $00
    nop                                           ; $7564: $00
    nop                                           ; $7565: $00
    nop                                           ; $7566: $00
    nop                                           ; $7567: $00
    nop                                           ; $7568: $00
    nop                                           ; $7569: $00
    nop                                           ; $756A: $00
    nop                                           ; $756B: $00
    nop                                           ; $756C: $00
    nop                                           ; $756D: $00
    ld [bc], a                                    ; $756E: $02
    nop                                           ; $756F: $00
    inc bc                                        ; $7570: $03
    nop                                           ; $7571: $00
    rrca                                          ; $7572: $0F
    nop                                           ; $7573: $00
    ld sp, $600E                                  ; $7574: $31 $0E $60
    ccf                                           ; $7577: $3F
    ei                                            ; $7578: $FB
    ld a, h                                       ; $7579: $7C
    rst RST_38                                    ; $757A: $FF
    dec de                                        ; $757B: $1B
    rra                                           ; $757C: $1F
    nop                                           ; $757D: $00
    inc bc                                        ; $757E: $03
    nop                                           ; $757F: $00
    inc b                                         ; $7580: $04
    nop                                           ; $7581: $00
    inc c                                         ; $7582: $0C
    nop                                           ; $7583: $00
    inc c                                         ; $7584: $0C
    nop                                           ; $7585: $00
    db $DD                                        ; $7586: $DD
    ld [$89FF], sp                                ; $7587: $08 $FF $89
    rst RST_30                                    ; $758A: $F7
    ld e, [hl]                                    ; $758B: $5E
    jp nz, Jump_000_077C                          ; $758C: $C2 $7C $07

    db $FC                                        ; $758F: $FC
    db $E3                                        ; $7590: $E3
    cp $ED                                        ; $7591: $FE $ED
    ld d, a                                       ; $7593: $57
    rst RST_28                                    ; $7594: $EF
    db $10                                        ; $7595: $10
    cp c                                          ; $7596: $B9
    rla                                           ; $7597: $17
    ccf                                           ; $7598: $3F
    rlca                                          ; $7599: $07
    rla                                           ; $759A: $17
    ld c, $36                                     ; $759B: $0E $36
    inc c                                         ; $759D: $0C
    ld h, $1C                                     ; $759E: $26 $1C
    ld bc, $0300                                  ; $75A0: $01 $00 $03
    ld bc, $0103                                  ; $75A3: $01 $03 $01
    rlca                                          ; $75A6: $07
    inc bc                                        ; $75A7: $03
    rlca                                          ; $75A8: $07
    ld [bc], a                                    ; $75A9: $02
    rrca                                          ; $75AA: $0F
    nop                                           ; $75AB: $00
    ld c, $00                                     ; $75AC: $0E $00
    inc c                                         ; $75AE: $0C
    nop                                           ; $75AF: $00
    ld [$0000], sp                                ; $75B0: $08 $00 $00
    nop                                           ; $75B3: $00
    ld b, b                                       ; $75B4: $40
    nop                                           ; $75B5: $00
    add b                                         ; $75B6: $80
    nop                                           ; $75B7: $00
    add b                                         ; $75B8: $80
    nop                                           ; $75B9: $00
    ld bc, $0100                                  ; $75BA: $01 $00 $01
    nop                                           ; $75BD: $00
    pop bc                                        ; $75BE: $C1
    nop                                           ; $75BF: $00
    inc a                                         ; $75C0: $3C
    nop                                           ; $75C1: $00
    rst RST_38                                    ; $75C2: $FF
    inc a                                         ; $75C3: $3C
    ei                                            ; $75C4: $FB
    cp $F1                                        ; $75C5: $FE $F1
    rst RST_38                                    ; $75C7: $FF
    ei                                            ; $75C8: $FB
    sbc a                                         ; $75C9: $9F
    rst RST_38                                    ; $75CA: $FF
    ld c, $FF                                     ; $75CB: $0E $FF
    nop                                           ; $75CD: $00
    rst RST_38                                    ; $75CE: $FF
    nop                                           ; $75CF: $00
    ld a, [hl]                                    ; $75D0: $7E
    nop                                           ; $75D1: $00
    inc a                                         ; $75D2: $3C
    nop                                           ; $75D3: $00
    nop                                           ; $75D4: $00
    nop                                           ; $75D5: $00
    nop                                           ; $75D6: $00
    nop                                           ; $75D7: $00
    nop                                           ; $75D8: $00
    nop                                           ; $75D9: $00
    nop                                           ; $75DA: $00
    nop                                           ; $75DB: $00
    nop                                           ; $75DC: $00
    nop                                           ; $75DD: $00
    add c                                         ; $75DE: $81
    nop                                           ; $75DF: $00
    ldh [rP1], a                                  ; $75E0: $E0 $00
    db $FC                                        ; $75E2: $FC
    ldh [$FF9E], a                                ; $75E3: $E0 $9E
    db $F4                                        ; $75E5: $F4
    rst RST_38                                    ; $75E6: $FF
    halt                                          ; $75E7: $76
    ei                                            ; $75E8: $FB
    ld l, [hl]                                    ; $75E9: $6E
    db $FD                                        ; $75EA: $FD
    ld e, $1F                                     ; $75EB: $1E $1F
    ld c, $0F                                     ; $75ED: $0E $0F
    ld bc, $0306                                  ; $75EF: $01 $06 $03

jr_023_75F2:
    ld b, $03                                     ; $75F2: $06 $03
    inc bc                                        ; $75F4: $03
    nop                                           ; $75F5: $00
    ld [hl], $03                                  ; $75F6: $36 $03
    ld l, a                                       ; $75F8: $6F
    ld [hl-], a                                   ; $75F9: $32
    rst RST_20                                    ; $75FA: $E7
    ld a, l                                       ; $75FB: $7D
    db $EB                                        ; $75FC: $EB
    halt                                          ; $75FD: $76
    push af                                       ; $75FE: $F5
    ld a, [bc]                                    ; $75FF: $0A
    add b                                         ; $7600: $80
    nop                                           ; $7601: $00
    ret nz                                        ; $7602: $C0

    add b                                         ; $7603: $80
    ret nz                                        ; $7604: $C0

    add b                                         ; $7605: $80
    ret nz                                        ; $7606: $C0

    add b                                         ; $7607: $80
    ldh [rP1], a                                  ; $7608: $E0 $00
    ldh a, [$FF60]                                ; $760A: $F0 $60
    ret nc                                        ; $760C: $D0

    ldh [$FFD0], a                                ; $760D: $E0 $D0
    ldh [$FF98], a                                ; $760F: $E0 $98
    ldh [$FF3F], a                                ; $7611: $E0 $3F
    add sp, -$08                                  ; $7613: $E8 $F8
    ld e, a                                       ; $7615: $5F
    ld a, h                                       ; $7616: $7C
    sbc a                                         ; $7617: $9F
    ld a, a                                       ; $7618: $7F
    rst RST_08                                    ; $7619: $CF
    ld a, a                                       ; $761A: $7F
    add e                                         ; $761B: $83
    rst RST_38                                    ; $761C: $FF
    sub b                                         ; $761D: $90
    rst RST_38                                    ; $761E: $FF
    ld b, $00                                     ; $761F: $06 $00
    nop                                           ; $7621: $00
    nop                                           ; $7622: $00
    nop                                           ; $7623: $00
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
    ret nz                                        ; $762E: $C0

    nop                                           ; $762F: $00
    jr nz, jr_023_75F2                            ; $7630: $20 $C0

    db $10                                        ; $7632: $10
    ldh [$FFC8], a                                ; $7633: $E0 $C8
    ldh a, [$FFE8]                                ; $7635: $F0 $E8

jr_023_7637:
    ldh a, [$FFF4]                                ; $7637: $F0 $F4
    jr c, jr_023_7637                             ; $7639: $38 $FC

    ret z                                         ; $763B: $C8

    cp h                                          ; $763C: $BC
    ldh [$FFE0], a                                ; $763D: $E0 $E0
    nop                                           ; $763F: $00
    dec de                                        ; $7640: $1B
    ld c, $37                                     ; $7641: $0E $37
    ld e, $7E                                     ; $7643: $1E $7E
    inc a                                         ; $7645: $3C
    db $FC                                        ; $7646: $FC
    ld [hl], b                                    ; $7647: $70
    ld [hl], b                                    ; $7648: $70
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
    nop                                           ; $7658: $00
    nop                                           ; $7659: $00
    nop                                           ; $765A: $00
    nop                                           ; $765B: $00
    nop                                           ; $765C: $00
    nop                                           ; $765D: $00
    nop                                           ; $765E: $00
    nop                                           ; $765F: $00
    cp l                                          ; $7660: $BD
    ret nz                                        ; $7661: $C0

    sbc d                                         ; $7662: $9A
    ld l, l                                       ; $7663: $6D
    rst RST_18                                    ; $7664: $DF
    xor l                                         ; $7665: $AD
    db $FD                                        ; $7666: $FD
    nop                                           ; $7667: $00
    ldh a, [$FF60]                                ; $7668: $F0 $60
    ldh [$FFC0], a                                ; $766A: $E0 $C0
    ret nz                                        ; $766C: $C0

    nop                                           ; $766D: $00
    nop                                           ; $766E: $00
    nop                                           ; $766F: $00
    nop                                           ; $7670: $00
    nop                                           ; $7671: $00
    nop                                           ; $7672: $00
    nop                                           ; $7673: $00
    nop                                           ; $7674: $00
    nop                                           ; $7675: $00
    nop                                           ; $7676: $00
    nop                                           ; $7677: $00
    nop                                           ; $7678: $00
    nop                                           ; $7679: $00
    nop                                           ; $767A: $00
    nop                                           ; $767B: $00
    nop                                           ; $767C: $00
    nop                                           ; $767D: $00
    nop                                           ; $767E: $00
    nop                                           ; $767F: $00
    ei                                            ; $7680: $FB
    add c                                         ; $7681: $81
    rst RST_30                                    ; $7682: $F7
    ei                                            ; $7683: $FB
    rst RST_20                                    ; $7684: $E7
    ld a, e                                       ; $7685: $7B
    rst RST_30                                    ; $7686: $F7
    ld a, l                                       ; $7687: $7D
    rst RST_38                                    ; $7688: $FF
    cp l                                          ; $7689: $BD
    rst RST_38                                    ; $768A: $FF
    add hl, de                                    ; $768B: $19
    rra                                           ; $768C: $1F
    nop                                           ; $768D: $00
    ld bc, $0000                                  ; $768E: $01 $00 $00
    nop                                           ; $7691: $00
    nop                                           ; $7692: $00
    nop                                           ; $7693: $00
    nop                                           ; $7694: $00
    nop                                           ; $7695: $00
    ld bc, $0300                                  ; $7696: $01 $00 $03
    ld bc, $030F                                  ; $7699: $01 $0F $03
    rra                                           ; $769C: $1F
    inc bc                                        ; $769D: $03
    rra                                           ; $769E: $1F
    inc b                                         ; $769F: $04
    adc l                                         ; $76A0: $8D
    ld a, d                                       ; $76A1: $7A
    db $FD                                        ; $76A2: $FD
    ld b, $CF                                     ; $76A3: $06 $CF
    ld [hl], c                                    ; $76A5: $71
    sbc $6F                                       ; $76A6: $DE $6F
    cp $9F                                        ; $76A8: $FE $9F
    db $FD                                        ; $76AA: $FD
    rst RST_38                                    ; $76AB: $FF
    rst RST_38                                    ; $76AC: $FF
    ld hl, sp-$05                                 ; $76AD: $F8 $FB
    ld b, $F6                                     ; $76AF: $06 $F6
    jr @-$03                                      ; $76B1: $18 $FB

    ld b, $E6                                     ; $76B3: $06 $E6
    ld a, l                                       ; $76B5: $7D
    db $EC                                        ; $76B6: $EC
    dec sp                                        ; $76B7: $3B
    cp $D7                                        ; $76B8: $FE $D7
    rst RST_30                                    ; $76BA: $F7
    jp $80C3                                      ; $76BB: $C3 $C3 $80


    add b                                         ; $76BE: $80
    nop                                           ; $76BF: $00
    ld a, a                                       ; $76C0: $7F
    inc bc                                        ; $76C1: $03
    rra                                           ; $76C2: $1F
    nop                                           ; $76C3: $00
    inc bc                                        ; $76C4: $03
    nop                                           ; $76C5: $00
    nop                                           ; $76C6: $00
    nop                                           ; $76C7: $00
    add b                                         ; $76C8: $80
    nop                                           ; $76C9: $00
    ld b, b                                       ; $76CA: $40
    add b                                         ; $76CB: $80
    ld b, b                                       ; $76CC: $40
    add b                                         ; $76CD: $80
    ld hl, sp+$00                                 ; $76CE: $F8 $00
    call nz, $E278                                ; $76D0: $C4 $78 $E2
    ld a, h                                       ; $76D3: $7C
    ldh a, [c]                                    ; $76D4: $F2
    ld a, h                                       ; $76D5: $7C
    ld a, e                                       ; $76D6: $7B
    ld a, $3D                                     ; $76D7: $3E $3D
    ld b, $07                                     ; $76D9: $06 $07
    nop                                           ; $76DB: $00
    inc bc                                        ; $76DC: $03
    ld bc, $0103                                  ; $76DD: $01 $03 $01
    rra                                           ; $76E0: $1F
    rlca                                          ; $76E1: $07
    rra                                           ; $76E2: $1F
    nop                                           ; $76E3: $00
    rra                                           ; $76E4: $1F
    nop                                           ; $76E5: $00
    inc a                                         ; $76E6: $3C
    db $10                                        ; $76E7: $10
    ld a, h                                       ; $76E8: $7C
    jr c, @+$7E                                   ; $76E9: $38 $7C

    jr c, @+$7A                                   ; $76EB: $38 $78

    jr nc, jr_023_775F                            ; $76ED: $30 $70

    nop                                           ; $76EF: $00
    ld bc, $0000                                  ; $76F0: $01 $00 $00
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
    nop                                           ; $76FE: $00
    nop                                           ; $76FF: $00
    add b                                         ; $7700: $80
    nop                                           ; $7701: $00
    add b                                         ; $7702: $80
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
    inc bc                                        ; $770E: $03
    nop                                           ; $770F: $00
    rst RST_38                                    ; $7710: $FF
    nop                                           ; $7711: $00
    nop                                           ; $7712: $00
    nop                                           ; $7713: $00
    nop                                           ; $7714: $00
    nop                                           ; $7715: $00
    nop                                           ; $7716: $00
    nop                                           ; $7717: $00
    nop                                           ; $7718: $00
    nop                                           ; $7719: $00
    nop                                           ; $771A: $00
    nop                                           ; $771B: $00
    nop                                           ; $771C: $00
    nop                                           ; $771D: $00
    nop                                           ; $771E: $00
    nop                                           ; $771F: $00
    ld bc, $FF00                                  ; $7720: $01 $00 $FF
    nop                                           ; $7723: $00
    rst RST_38                                    ; $7724: $FF
    nop                                           ; $7725: $00
    nop                                           ; $7726: $00
    nop                                           ; $7727: $00
    nop                                           ; $7728: $00
    nop                                           ; $7729: $00
    nop                                           ; $772A: $00
    nop                                           ; $772B: $00
    nop                                           ; $772C: $00
    nop                                           ; $772D: $00
    nop                                           ; $772E: $00
    nop                                           ; $772F: $00
    nop                                           ; $7730: $00
    nop                                           ; $7731: $00
    nop                                           ; $7732: $00
    nop                                           ; $7733: $00
    nop                                           ; $7734: $00
    nop                                           ; $7735: $00
    nop                                           ; $7736: $00
    nop                                           ; $7737: $00
    nop                                           ; $7738: $00
    nop                                           ; $7739: $00
    nop                                           ; $773A: $00
    nop                                           ; $773B: $00
    nop                                           ; $773C: $00
    nop                                           ; $773D: $00
    nop                                           ; $773E: $00
    nop                                           ; $773F: $00
    add b                                         ; $7740: $80
    nop                                           ; $7741: $00
    ret nz                                        ; $7742: $C0

    add b                                         ; $7743: $80
    ldh [rP1], a                                  ; $7744: $E0 $00
    sub b                                         ; $7746: $90
    ldh [$FFE8], a                                ; $7747: $E0 $E8
    ldh a, [$FFF8]                                ; $7749: $F0 $F8
    nop                                           ; $774B: $00
    nop                                           ; $774C: $00
    nop                                           ; $774D: $00
    nop                                           ; $774E: $00
    nop                                           ; $774F: $00
    nop                                           ; $7750: $00
    nop                                           ; $7751: $00
    nop                                           ; $7752: $00
    nop                                           ; $7753: $00
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

jr_023_775F:
    nop                                           ; $775F: $00
    jr nz, jr_023_7762                            ; $7760: $20 $00

jr_023_7762:
    jr nz, jr_023_7764                            ; $7762: $20 $00

jr_023_7764:
    stop                                          ; $7764: $10 $00
    jr jr_023_7768                                ; $7766: $18 $00

jr_023_7768:
    inc e                                         ; $7768: $1C
    nop                                           ; $7769: $00
    ld c, $00                                     ; $776A: $0E $00
    rrca                                          ; $776C: $0F
    nop                                           ; $776D: $00
    rrca                                          ; $776E: $0F
    nop                                           ; $776F: $00
    rlca                                          ; $7770: $07
    ld [bc], a                                    ; $7771: $02
    rlca                                          ; $7772: $07
    ld bc, $0103                                  ; $7773: $01 $03 $01
    inc bc                                        ; $7776: $03
    nop                                           ; $7777: $00
    rra                                           ; $7778: $1F
    nop                                           ; $7779: $00
    ld a, l                                       ; $777A: $7D
    rlca                                          ; $777B: $07
    ccf                                           ; $777C: $3F
    nop                                           ; $777D: $00
    rlca                                          ; $777E: $07
    nop                                           ; $777F: $00
    nop                                           ; $7780: $00
    nop                                           ; $7781: $00
    nop                                           ; $7782: $00
    nop                                           ; $7783: $00
    nop                                           ; $7784: $00
    nop                                           ; $7785: $00
    nop                                           ; $7786: $00
    nop                                           ; $7787: $00
    nop                                           ; $7788: $00
    nop                                           ; $7789: $00
    nop                                           ; $778A: $00
    nop                                           ; $778B: $00
    ld bc, $0100                                  ; $778C: $01 $00 $01
    nop                                           ; $778F: $00
    inc bc                                        ; $7790: $03
    nop                                           ; $7791: $00
    inc hl                                        ; $7792: $23
    ld bc, $0127                                  ; $7793: $01 $27 $01
    scf                                           ; $7796: $37
    ld bc, $01BE                                  ; $7797: $01 $BE $01
    rst RST_38                                    ; $779A: $FF
    inc de                                        ; $779B: $13
    cp $13                                        ; $779C: $FE $13
    db $FC                                        ; $779E: $FC
    sbc e                                         ; $779F: $9B
    nop                                           ; $77A0: $00
    nop                                           ; $77A1: $00
    nop                                           ; $77A2: $00
    nop                                           ; $77A3: $00
    nop                                           ; $77A4: $00
    nop                                           ; $77A5: $00
    nop                                           ; $77A6: $00
    nop                                           ; $77A7: $00
    nop                                           ; $77A8: $00
    nop                                           ; $77A9: $00
    nop                                           ; $77AA: $00
    nop                                           ; $77AB: $00
    nop                                           ; $77AC: $00
    nop                                           ; $77AD: $00
    nop                                           ; $77AE: $00
    nop                                           ; $77AF: $00
    add e                                         ; $77B0: $83
    nop                                           ; $77B1: $00
    add a                                         ; $77B2: $87
    inc bc                                        ; $77B3: $03
    adc a                                         ; $77B4: $8F
    rlca                                          ; $77B5: $07
    adc a                                         ; $77B6: $8F
    ld b, $9F                                     ; $77B7: $06 $9F
    inc c                                         ; $77B9: $0C
    sbc a                                         ; $77BA: $9F
    ld [$00FF], sp                                ; $77BB: $08 $FF $00
    rst RST_38                                    ; $77BE: $FF
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
    di                                            ; $77CC: $F3
    nop                                           ; $77CD: $00
    rst RST_38                                    ; $77CE: $FF
    di                                            ; $77CF: $F3
    xor $FB                                       ; $77D0: $EE $FB
    rst RST_00                                    ; $77D2: $C7
    db $FD                                        ; $77D3: $FD
    rst RST_28                                    ; $77D4: $EF

jr_023_77D5:
    ld a, l                                       ; $77D5: $7D
    rst RST_38                                    ; $77D6: $FF
    jr c, jr_023_77D5                             ; $77D7: $38 $FC

    nop                                           ; $77D9: $00
    db $FC                                        ; $77DA: $FC
    nop                                           ; $77DB: $00
    ld hl, sp+$00                                 ; $77DC: $F8 $00
    ldh a, [rP1]                                  ; $77DE: $F0 $00
    add b                                         ; $77E0: $80
    nop                                           ; $77E1: $00
    ldh a, [$FF80]                                ; $77E2: $F0 $80
    ld a, b                                       ; $77E4: $78
    ret nc                                        ; $77E5: $D0

    db $FC                                        ; $77E6: $FC
    ret c                                         ; $77E7: $D8

    db $EC                                        ; $77E8: $EC
    cp b                                          ; $77E9: $B8
    db $F4                                        ; $77EA: $F4
    ld a, b                                       ; $77EB: $78
    ld a, [hl]                                    ; $77EC: $7E
    jr c, jr_023_782E                             ; $77ED: $38 $3F

    ld b, $1B                                     ; $77EF: $06 $1B
    ld c, $1F                                     ; $77F1: $0E $1F
    ld [bc], a                                    ; $77F3: $02
    dec de                                        ; $77F4: $1B
    inc c                                         ; $77F5: $0C
    add hl, sp                                    ; $77F6: $39
    rra                                           ; $77F7: $1F
    ld a, [hl-]                                   ; $77F8: $3A
    dec e                                         ; $77F9: $1D
    ld a, l                                       ; $77FA: $7D
    ld [bc], a                                    ; $77FB: $02
    and e                                         ; $77FC: $A3

jr_023_77FD:
    ld e, [hl]                                    ; $77FD: $5E
    ccf                                           ; $77FE: $3F
    pop bc                                        ; $77FF: $C1
    nop                                           ; $7800: $00
    nop                                           ; $7801: $00
    jr jr_023_7804                                ; $7802: $18 $00

jr_023_7804:
    inc a                                         ; $7804: $3C
    jr @+$76                                      ; $7805: $18 $74

    jr c, jr_023_77FD                             ; $7807: $38 $F4

    ld a, b                                       ; $7809: $78
    and $B8                                       ; $780A: $E6 $B8
    ld c, a                                       ; $780C: $4F
    cp d                                          ; $780D: $BA
    ld a, [hl]                                    ; $780E: $7E
    sub a                                         ; $780F: $97
    ld e, a                                       ; $7810: $5F
    and a                                         ; $7811: $A7
    rst RST_18                                    ; $7812: $DF
    ld [hl], e                                    ; $7813: $73
    sbc a                                         ; $7814: $9F
    ldh [$FFBF], a                                ; $7815: $E0 $BF
    db $E4                                        ; $7817: $E4
    ld a, a                                       ; $7818: $7F
    pop bc                                        ; $7819: $C1
    rst RST_18                                    ; $781A: $DF
    nop                                           ; $781B: $00
    rst RST_00                                    ; $781C: $C7
    add b                                         ; $781D: $80
    add b                                         ; $781E: $80
    nop                                           ; $781F: $00
    ld bc, $0300                                  ; $7820: $01 $00 $03
    nop                                           ; $7823: $00
    inc bc                                        ; $7824: $03
    ld bc, $0207                                  ; $7825: $01 $07 $02
    rlca                                          ; $7828: $07
    nop                                           ; $7829: $00
    ld c, $00                                     ; $782A: $0E $00
    inc c                                         ; $782C: $0C
    nop                                           ; $782D: $00

jr_023_782E:
    jr jr_023_7830                                ; $782E: $18 $00

jr_023_7830:
    stop                                          ; $7830: $10 $00
    jr nz, jr_023_7834                            ; $7832: $20 $00

jr_023_7834:
    nop                                           ; $7834: $00
    nop                                           ; $7835: $00
    nop                                           ; $7836: $00
    nop                                           ; $7837: $00
    nop                                           ; $7838: $00
    nop                                           ; $7839: $00
    nop                                           ; $783A: $00
    nop                                           ; $783B: $00
    nop                                           ; $783C: $00
    nop                                           ; $783D: $00
    nop                                           ; $783E: $00
    nop                                           ; $783F: $00
    db $F4                                        ; $7840: $F4
    rst RST_18                                    ; $7841: $DF
    sub b                                         ; $7842: $90
    rst RST_38                                    ; $7843: $FF
    nop                                           ; $7844: $00
    rst RST_38                                    ; $7845: $FF

jr_023_7846:
    pop hl                                        ; $7846: $E1
    ccf                                           ; $7847: $3F
    call nc, $B77F                                ; $7848: $D4 $7F $B7
    rst RST_38                                    ; $784B: $FF
    rst RST_30                                    ; $784C: $F7
    call c, Call_000_1CF7                         ; $784D: $DC $F7 $1C
    rst RST_38                                    ; $7850: $FF
    inc c                                         ; $7851: $0C
    cp a                                          ; $7852: $BF
    dec c                                         ; $7853: $0D
    rra                                           ; $7854: $1F
    dec b                                         ; $7855: $05
    rra                                           ; $7856: $1F
    inc b                                         ; $7857: $04
    ccf                                           ; $7858: $3F

jr_023_7859:
    ld [de], a                                    ; $7859: $12
    ld a, [hl]                                    ; $785A: $7E
    jr nc, jr_023_7859                            ; $785B: $30 $FC

    ld [hl], b                                    ; $785D: $70
    ld [hl], b                                    ; $785E: $70
    nop                                           ; $785F: $00
    db $FC                                        ; $7860: $FC
    nop                                           ; $7861: $00
    ld hl, sp+$10                                 ; $7862: $F8 $10
    ld hl, sp+$60                                 ; $7864: $F8 $60
    ldh a, [$FFC0]                                ; $7866: $F0 $C0
    rst RST_38                                    ; $7868: $FF
    add b                                         ; $7869: $80
    cp $C0                                        ; $786A: $FE $C0
    ccf                                           ; $786C: $3F
    ld hl, sp-$01                                 ; $786D: $F8 $FF
    add b                                         ; $786F: $80
    ld a, [hl]                                    ; $7870: $7E
    pop bc                                        ; $7871: $C1
    inc a                                         ; $7872: $3C
    db $E3                                        ; $7873: $E3
    rst RST_38                                    ; $7874: $FF
    ldh [$FFFE], a                                ; $7875: $E0 $FE
    jr nc, @+$01                                  ; $7877: $30 $FF

    ld [$00BD], sp                                ; $7879: $08 $BD $00
    adc [hl]                                      ; $787C: $8E
    nop                                           ; $787D: $00
    inc bc                                        ; $787E: $03
    nop                                           ; $787F: $00
    ldh [rP1], a                                  ; $7880: $E0 $00
    ld e, [hl]                                    ; $7882: $5E
    jr nz, jr_023_7846                            ; $7883: $20 $C1

    ld a, $E1                                     ; $7885: $3E $E1
    ld e, $A1                                     ; $7887: $1E $A1
    ld e, a                                       ; $7889: $5F
    sub c                                         ; $788A: $91
    ld l, a                                       ; $788B: $6F
    ld a, c                                       ; $788C: $79
    ld b, $07                                     ; $788D: $06 $07
    nop                                           ; $788F: $00
    nop                                           ; $7890: $00
    nop                                           ; $7891: $00
    add b                                         ; $7892: $80
    nop                                           ; $7893: $00
    ld b, b                                       ; $7894: $40
    nop                                           ; $7895: $00
    nop                                           ; $7896: $00
    nop                                           ; $7897: $00
    add b                                         ; $7898: $80
    nop                                           ; $7899: $00
    nop                                           ; $789A: $00
    nop                                           ; $789B: $00
    inc bc                                        ; $789C: $03
    nop                                           ; $789D: $00
    rlca                                          ; $789E: $07
    nop                                           ; $789F: $00
    inc sp                                        ; $78A0: $33
    call c, Call_023_5BB4                         ; $78A1: $DC $B4 $5B
    sbc b                                         ; $78A4: $98
    ld h, a                                       ; $78A5: $67
    add c                                         ; $78A6: $81
    ld a, a                                       ; $78A7: $7F
    jp Jump_023_7E3E                              ; $78A8: $C3 $3E $7E


    ld bc, $063D                                  ; $78AB: $01 $3D $06
    ld a, $01                                     ; $78AE: $3E $01
    ld hl, $731F                                  ; $78B0: $21 $1F $73
    ld c, $9F                                     ; $78B3: $0E $9F
    ld [hl], l                                    ; $78B5: $75
    dec e                                         ; $78B6: $1D
    ldh a, [$FF30]                                ; $78B7: $F0 $30
    ldh [$FFE0], a                                ; $78B9: $E0 $E0
    nop                                           ; $78BB: $00
    ld h, b                                       ; $78BC: $60
    ret nz                                        ; $78BD: $C0

    ldh [rP1], a                                  ; $78BE: $E0 $00
    ret nz                                        ; $78C0: $C0

    add b                                         ; $78C1: $80
    and b                                         ; $78C2: $A0
    ld b, b                                       ; $78C3: $40
    db $10                                        ; $78C4: $10
    ldh [$FF90], a                                ; $78C5: $E0 $90
    ldh [$FFFE], a                                ; $78C7: $E0 $FE
    ret nz                                        ; $78C9: $C0

    pop af                                        ; $78CA: $F1
    ld e, $38                                     ; $78CB: $1E $38
    rra                                           ; $78CD: $1F
    inc a                                         ; $78CE: $3C
    rra                                           ; $78CF: $1F
    ld e, $0F                                     ; $78D0: $1E $0F
    rrca                                          ; $78D2: $0F
    ld bc, $0001                                  ; $78D3: $01 $01 $00
    nop                                           ; $78D6: $00
    nop                                           ; $78D7: $00
    nop                                           ; $78D8: $00
    nop                                           ; $78D9: $00
    nop                                           ; $78DA: $00
    nop                                           ; $78DB: $00
    rst RST_38                                    ; $78DC: $FF
    nop                                           ; $78DD: $00
    rst RST_38                                    ; $78DE: $FF
    nop                                           ; $78DF: $00
    dec de                                        ; $78E0: $1B
    inc b                                         ; $78E1: $04
    add hl, de                                    ; $78E2: $19
    rlca                                          ; $78E3: $07
    rra                                           ; $78E4: $1F
    nop                                           ; $78E5: $00
    rra                                           ; $78E6: $1F
    nop                                           ; $78E7: $00
    inc l                                         ; $78E8: $2C
    db $10                                        ; $78E9: $10
    ld c, h                                       ; $78EA: $4C
    jr c, jr_023_7939                             ; $78EB: $38 $4C

    jr c, jr_023_7947                             ; $78ED: $38 $58

    jr nc, jr_023_7961                            ; $78EF: $30 $70

    nop                                           ; $78F1: $00
    ld bc, $0000                                  ; $78F2: $01 $00 $00
    nop                                           ; $78F5: $00
    nop                                           ; $78F6: $00
    nop                                           ; $78F7: $00
    nop                                           ; $78F8: $00
    nop                                           ; $78F9: $00
    nop                                           ; $78FA: $00
    nop                                           ; $78FB: $00
    nop                                           ; $78FC: $00
    nop                                           ; $78FD: $00
    nop                                           ; $78FE: $00
    nop                                           ; $78FF: $00
    add b                                         ; $7900: $80
    nop                                           ; $7901: $00
    add b                                         ; $7902: $80
    nop                                           ; $7903: $00
    ret nz                                        ; $7904: $C0

    add b                                         ; $7905: $80
    ld b, b                                       ; $7906: $40
    add b                                         ; $7907: $80
    ldh [rP1], a                                  ; $7908: $E0 $00
    ldh a, [$FF60]                                ; $790A: $F0 $60
    ld hl, sp+$40                                 ; $790C: $F8 $40
    ld h, h                                       ; $790E: $64
    jr c, @-$04                                   ; $790F: $38 $FA

    inc a                                         ; $7911: $3C
    cp $00                                        ; $7912: $FE $00
    nop                                           ; $7914: $00
    nop                                           ; $7915: $00
    nop                                           ; $7916: $00
    nop                                           ; $7917: $00
    nop                                           ; $7918: $00
    nop                                           ; $7919: $00
    nop                                           ; $791A: $00
    nop                                           ; $791B: $00
    nop                                           ; $791C: $00
    nop                                           ; $791D: $00
    nop                                           ; $791E: $00
    nop                                           ; $791F: $00
    nop                                           ; $7920: $00
    nop                                           ; $7921: $00
    nop                                           ; $7922: $00
    nop                                           ; $7923: $00
    nop                                           ; $7924: $00
    nop                                           ; $7925: $00
    nop                                           ; $7926: $00
    nop                                           ; $7927: $00
    nop                                           ; $7928: $00
    nop                                           ; $7929: $00
    nop                                           ; $792A: $00
    nop                                           ; $792B: $00
    ret nz                                        ; $792C: $C0

    nop                                           ; $792D: $00
    jr nc, @-$3E                                  ; $792E: $30 $C0

    ld [$C4F0], sp                                ; $7930: $08 $F0 $C4
    ld hl, sp-$0E                                 ; $7933: $F8 $F2
    db $FC                                        ; $7935: $FC
    ld a, [$FD3C]                                 ; $7936: $FA $3C $FD

jr_023_7939:
    adc [hl]                                      ; $7939: $8E
    rst RST_38                                    ; $793A: $FF
    ldh a, [c]                                    ; $793B: $F2
    rst RST_28                                    ; $793C: $EF
    jr c, @-$06                                   ; $793D: $38 $F8

    nop                                           ; $793F: $00
    ld a, a                                       ; $7940: $7F
    nop                                           ; $7941: $00
    nop                                           ; $7942: $00
    nop                                           ; $7943: $00
    nop                                           ; $7944: $00
    nop                                           ; $7945: $00
    nop                                           ; $7946: $00

jr_023_7947:
    nop                                           ; $7947: $00
    nop                                           ; $7948: $00
    nop                                           ; $7949: $00
    nop                                           ; $794A: $00
    nop                                           ; $794B: $00
    nop                                           ; $794C: $00
    nop                                           ; $794D: $00
    nop                                           ; $794E: $00
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
    nop                                           ; $795C: $00
    nop                                           ; $795D: $00
    nop                                           ; $795E: $00
    nop                                           ; $795F: $00
    nop                                           ; $7960: $00

jr_023_7961:
    nop                                           ; $7961: $00
    nop                                           ; $7962: $00
    nop                                           ; $7963: $00
    nop                                           ; $7964: $00
    nop                                           ; $7965: $00
    nop                                           ; $7966: $00
    nop                                           ; $7967: $00
    nop                                           ; $7968: $00
    nop                                           ; $7969: $00
    nop                                           ; $796A: $00
    nop                                           ; $796B: $00
    nop                                           ; $796C: $00
    nop                                           ; $796D: $00
    stop                                          ; $796E: $10 $00
    ld l, b                                       ; $7970: $68
    db $10                                        ; $7971: $10
    ld hl, sp+$60                                 ; $7972: $F8 $60
    call nc, Call_023_7E68                        ; $7974: $D4 $68 $7E
    jr nc, @+$3F                                  ; $7977: $30 $3D

    ld a, [de]                                    ; $7979: $1A
    rra                                           ; $797A: $1F
    inc c                                         ; $797B: $0C
    dec e                                         ; $797C: $1D
    rrca                                          ; $797D: $0F
    ld c, $07                                     ; $797E: $0E $07
    nop                                           ; $7980: $00
    nop                                           ; $7981: $00
    nop                                           ; $7982: $00
    nop                                           ; $7983: $00
    nop                                           ; $7984: $00
    nop                                           ; $7985: $00
    nop                                           ; $7986: $00
    nop                                           ; $7987: $00
    ld bc, $0200                                  ; $7988: $01 $00 $02
    ld bc, $0003                                  ; $798B: $01 $03 $00
    inc b                                         ; $798E: $04
    inc bc                                        ; $798F: $03
    rlca                                          ; $7990: $07
    nop                                           ; $7991: $00
    add hl, bc                                    ; $7992: $09
    ld b, $0F                                     ; $7993: $06 $0F
    ld bc, $0B17                                  ; $7995: $01 $17 $0B
    dec e                                         ; $7998: $1D
    ld b, $DB                                     ; $7999: $06 $DB
    inc c                                         ; $799B: $0C
    halt                                          ; $799C: $76
    call $CCB7                                    ; $799D: $CD $B7 $CC
    nop                                           ; $79A0: $00
    nop                                           ; $79A1: $00
    nop                                           ; $79A2: $00
    nop                                           ; $79A3: $00
    nop                                           ; $79A4: $00
    nop                                           ; $79A5: $00
    nop                                           ; $79A6: $00
    nop                                           ; $79A7: $00
    ldh [rP1], a                                  ; $79A8: $E0 $00
    ld a, b                                       ; $79AA: $78
    and b                                         ; $79AB: $A0
    call z, $EC78                                 ; $79AC: $CC $78 $EC
    ld e, b                                       ; $79AF: $58
    call z, $E8F8                                 ; $79B0: $CC $F8 $E8
    ldh a, [rNR10]                                ; $79B3: $F0 $10
    ldh [$FFB0], a                                ; $79B5: $E0 $B0
    ldh [$FFE0], a                                ; $79B7: $E0 $E0
    ld b, b                                       ; $79B9: $40
    ldh [rLCDC], a                                ; $79BA: $E0 $40
    ldh [rLCDC], a                                ; $79BC: $E0 $40
    ret nz                                        ; $79BE: $C0

    add b                                         ; $79BF: $80
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

Call_023_7B73:
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

Call_023_7C28:
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

Jump_023_7E3E:
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

Call_023_7E68:
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
