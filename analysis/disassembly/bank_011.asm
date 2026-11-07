; Disassembly of "original.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $011", ROMX[$4000], BANK[$11]

    nop                                           ; $4000: $00
    nop                                           ; $4001: $00
    nop                                           ; $4002: $00
    nop                                           ; $4003: $00
    nop                                           ; $4004: $00
    nop                                           ; $4005: $00
    nop                                           ; $4006: $00
    nop                                           ; $4007: $00
    nop                                           ; $4008: $00
    nop                                           ; $4009: $00
    nop                                           ; $400A: $00
    nop                                           ; $400B: $00
    ld bc, $0F00                                  ; $400C: $01 $00 $0F
    ld bc, $0F1F                                  ; $400F: $01 $1F $0F
    ccf                                           ; $4012: $3F
    inc de                                        ; $4013: $13
    scf                                           ; $4014: $37
    dec bc                                        ; $4015: $0B
    ld a, l                                       ; $4016: $7D
    scf                                           ; $4017: $37
    ld h, [hl]                                    ; $4018: $66
    add hl, sp                                    ; $4019: $39
    dec sp                                        ; $401A: $3B
    inc b                                         ; $401B: $04
    inc d                                         ; $401C: $14
    ld [$0008], sp                                ; $401D: $08 $08 $00
    ret nz                                        ; $4020: $C0

    nop                                           ; $4021: $00
    rst RST_38                                    ; $4022: $FF
    add b                                         ; $4023: $80
    rst RST_38                                    ; $4024: $FF
    cp a                                          ; $4025: $BF
    rst RST_38                                    ; $4026: $FF
    ld l, l                                       ; $4027: $6D
    rst RST_38                                    ; $4028: $FF
    ld sp, hl                                     ; $4029: $F9
    ccf                                           ; $402A: $3F
    rst RST_28                                    ; $402B: $EF
    rst RST_18                                    ; $402C: $DF
    dec l                                         ; $402D: $2D
    cpl                                           ; $402E: $2F
    rla                                           ; $402F: $17
    cpl                                           ; $4030: $2F
    ld d, $17                                     ; $4031: $16 $17
    dec bc                                        ; $4033: $0B
    rrca                                          ; $4034: $0F
    ld bc, $040F                                  ; $4035: $01 $0F $04
    rrca                                          ; $4038: $0F
    ld b, $0F                                     ; $4039: $06 $0F
    ld b, $0E                                     ; $403B: $06 $0E
    inc b                                         ; $403D: $04
    ld e, $0C                                     ; $403E: $1E $0C
    jp $FF00                                      ; $4040: $C3 $00 $FF


    jp $B5FF                                      ; $4043: $C3 $FF $B5


    rst RST_38                                    ; $4046: $FF
    ld e, a                                       ; $4047: $5F
    rst RST_38                                    ; $4048: $FF
    ld c, d                                       ; $4049: $4A
    rst RST_38                                    ; $404A: $FF
    jp c, $DDFB                                   ; $404B: $DA $FB $DD

    rst RST_30                                    ; $404E: $F7
    add sp, -$05                                  ; $404F: $E8 $FB
    and b                                         ; $4051: $A0
    di                                            ; $4052: $F3
    pop hl                                        ; $4053: $E1
    ei                                            ; $4054: $FB
    ld sp, $317B                                  ; $4055: $31 $7B $31
    dec sp                                        ; $4058: $3B
    ld de, $133F                                  ; $4059: $11 $3F $13
    rst RST_38                                    ; $405C: $FF
    ld [de], a                                    ; $405D: $12
    rst RST_38                                    ; $405E: $FF
    or [hl]                                       ; $405F: $B6
    ldh a, [rP1]                                  ; $4060: $F0 $00
    db $FC                                        ; $4062: $FC
    ldh a, [rIE]                                  ; $4063: $F0 $FF
    call z, Call_011_73FF                         ; $4065: $CC $FF $73
    rst RST_38                                    ; $4068: $FF
    ld hl, sp-$03                                 ; $4069: $F8 $FD
    ret c                                         ; $406B: $D8

    db $FC                                        ; $406C: $FC
    ld d, b                                       ; $406D: $50
    db $FC                                        ; $406E: $FC
    ld hl, sp-$02                                 ; $406F: $F8 $FE
    call nc, Call_000_3EFF                        ; $4071: $D4 $FF $3E
    rst RST_38                                    ; $4074: $FF
    ld a, [bc]                                    ; $4075: $0A
    rst RST_08                                    ; $4076: $CF
    add [hl]                                      ; $4077: $86
    adc $84                                       ; $4078: $CE $84
    adc [hl]                                      ; $407A: $8E
    inc b                                         ; $407B: $04
    sbc [hl]                                      ; $407C: $9E
    inc c                                         ; $407D: $0C
    ld a, h                                       ; $407E: $7C
    ld [$0080], sp                                ; $407F: $08 $80 $00
    ret nz                                        ; $4082: $C0

    add b                                         ; $4083: $80
    ret nz                                        ; $4084: $C0

    add b                                         ; $4085: $80
    ldh [rLCDC], a                                ; $4086: $E0 $40
    ldh [rLCDC], a                                ; $4088: $E0 $40
    ldh [rLCDC], a                                ; $408A: $E0 $40
    ldh [rLCDC], a                                ; $408C: $E0 $40
    ld [hl], b                                    ; $408E: $70
    jr nz, jr_011_4101                            ; $408F: $20 $70

    jr nz, jr_011_4103                            ; $4091: $20 $70

    jr nz, jr_011_4105                            ; $4093: $20 $70

    jr nz, jr_011_4107                            ; $4095: $20 $70

    jr nz, jr_011_40B9                            ; $4097: $20 $20

    nop                                           ; $4099: $00
    nop                                           ; $409A: $00
    nop                                           ; $409B: $00
    nop                                           ; $409C: $00
    nop                                           ; $409D: $00
    nop                                           ; $409E: $00
    nop                                           ; $409F: $00
    ld a, h                                       ; $40A0: $7C
    ld [$58FD], sp                                ; $40A1: $08 $FD $58
    ld sp, hl                                     ; $40A4: $F9
    nop                                           ; $40A5: $00
    nop                                           ; $40A6: $00
    nop                                           ; $40A7: $00
    nop                                           ; $40A8: $00
    nop                                           ; $40A9: $00
    nop                                           ; $40AA: $00
    nop                                           ; $40AB: $00
    nop                                           ; $40AC: $00
    nop                                           ; $40AD: $00
    nop                                           ; $40AE: $00
    nop                                           ; $40AF: $00
    nop                                           ; $40B0: $00
    nop                                           ; $40B1: $00
    nop                                           ; $40B2: $00
    nop                                           ; $40B3: $00
    nop                                           ; $40B4: $00
    nop                                           ; $40B5: $00
    nop                                           ; $40B6: $00
    nop                                           ; $40B7: $00
    nop                                           ; $40B8: $00

jr_011_40B9:
    nop                                           ; $40B9: $00
    nop                                           ; $40BA: $00
    nop                                           ; $40BB: $00
    nop                                           ; $40BC: $00
    nop                                           ; $40BD: $00
    nop                                           ; $40BE: $00
    nop                                           ; $40BF: $00
    cp $00                                        ; $40C0: $FE $00
    nop                                           ; $40C2: $00
    nop                                           ; $40C3: $00
    nop                                           ; $40C4: $00
    nop                                           ; $40C5: $00
    nop                                           ; $40C6: $00
    nop                                           ; $40C7: $00
    nop                                           ; $40C8: $00
    nop                                           ; $40C9: $00
    nop                                           ; $40CA: $00
    nop                                           ; $40CB: $00
    nop                                           ; $40CC: $00
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
    db $FC                                        ; $40E0: $FC
    ld e, b                                       ; $40E1: $58
    ld hl, sp+$00                                 ; $40E2: $F8 $00
    nop                                           ; $40E4: $00
    nop                                           ; $40E5: $00
    nop                                           ; $40E6: $00
    nop                                           ; $40E7: $00
    nop                                           ; $40E8: $00
    nop                                           ; $40E9: $00
    nop                                           ; $40EA: $00
    nop                                           ; $40EB: $00
    nop                                           ; $40EC: $00
    nop                                           ; $40ED: $00
    nop                                           ; $40EE: $00
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
    nop                                           ; $40FC: $00
    nop                                           ; $40FD: $00
    nop                                           ; $40FE: $00
    nop                                           ; $40FF: $00
    nop                                           ; $4100: $00

jr_011_4101:
    nop                                           ; $4101: $00
    nop                                           ; $4102: $00

jr_011_4103:
    nop                                           ; $4103: $00
    nop                                           ; $4104: $00

jr_011_4105:
    nop                                           ; $4105: $00
    nop                                           ; $4106: $00

jr_011_4107:
    nop                                           ; $4107: $00
    nop                                           ; $4108: $00
    nop                                           ; $4109: $00
    nop                                           ; $410A: $00
    nop                                           ; $410B: $00
    nop                                           ; $410C: $00
    nop                                           ; $410D: $00
    rlca                                          ; $410E: $07
    nop                                           ; $410F: $00
    rrca                                          ; $4110: $0F
    rlca                                          ; $4111: $07
    rra                                           ; $4112: $1F
    add hl, bc                                    ; $4113: $09
    dec de                                        ; $4114: $1B
    dec b                                         ; $4115: $05
    ld a, $1B                                     ; $4116: $3E $1B
    inc sp                                        ; $4118: $33
    inc e                                         ; $4119: $1C
    dec e                                         ; $411A: $1D
    ld [bc], a                                    ; $411B: $02
    ld a, [bc]                                    ; $411C: $0A
    inc b                                         ; $411D: $04
    inc b                                         ; $411E: $04
    nop                                           ; $411F: $00
    ldh [rP1], a                                  ; $4120: $E0 $00
    rst RST_38                                    ; $4122: $FF
    ret nz                                        ; $4123: $C0

    rst RST_38                                    ; $4124: $FF
    rst RST_18                                    ; $4125: $DF
    rst RST_38                                    ; $4126: $FF
    or [hl]                                       ; $4127: $B6
    rst RST_38                                    ; $4128: $FF
    db $FC                                        ; $4129: $FC
    sbc a                                         ; $412A: $9F
    rst RST_30                                    ; $412B: $F7
    ld l, a                                       ; $412C: $6F
    sub [hl]                                      ; $412D: $96
    sub a                                         ; $412E: $97
    dec bc                                        ; $412F: $0B
    rla                                           ; $4130: $17
    dec bc                                        ; $4131: $0B
    dec bc                                        ; $4132: $0B
    dec b                                         ; $4133: $05
    rrca                                          ; $4134: $0F
    nop                                           ; $4135: $00
    rrca                                          ; $4136: $0F
    inc b                                         ; $4137: $04
    rrca                                          ; $4138: $0F
    rlca                                          ; $4139: $07
    rrca                                          ; $413A: $0F
    ld b, $0E                                     ; $413B: $06 $0E
    inc b                                         ; $413D: $04
    ld e, $0C                                     ; $413E: $1E $0C
    add b                                         ; $4140: $80
    nop                                           ; $4141: $00
    pop hl                                        ; $4142: $E1
    add b                                         ; $4143: $80
    rst RST_38                                    ; $4144: $FF
    pop hl                                        ; $4145: $E1
    rst RST_38                                    ; $4146: $FF
    jp c, $AFFF                                   ; $4147: $DA $FF $AF

    rst RST_38                                    ; $414A: $FF
    and l                                         ; $414B: $A5
    rst RST_38                                    ; $414C: $FF
    db $ED                                        ; $414D: $ED
    db $FD                                        ; $414E: $FD
    ld l, [hl]                                    ; $414F: $6E
    ei                                            ; $4150: $FB
    db $F4                                        ; $4151: $F4
    db $FD                                        ; $4152: $FD
    ret nc                                        ; $4153: $D0

    ld sp, hl                                     ; $4154: $F9
    ld [hl], b                                    ; $4155: $70
    ld sp, hl                                     ; $4156: $F9
    jr nc, jr_011_41D2                            ; $4157: $30 $79

    jr nc, jr_011_4196                            ; $4159: $30 $3B

    ld de, $113B                                  ; $415B: $11 $3B $11
    rst RST_38                                    ; $415E: $FF
    inc de                                        ; $415F: $13
    ld a, b                                       ; $4160: $78
    nop                                           ; $4161: $00
    cp $78                                        ; $4162: $FE $78
    rst RST_38                                    ; $4164: $FF
    and $FF                                       ; $4165: $E6 $FF
    cp c                                          ; $4167: $B9
    rst RST_38                                    ; $4168: $FF
    db $FD                                        ; $4169: $FD
    rst RST_38                                    ; $416A: $FF
    ld l, h                                       ; $416B: $6C
    db $FD                                        ; $416C: $FD
    jr z, @+$01                                   ; $416D: $28 $FF

    db $FC                                        ; $416F: $FC
    rst RST_38                                    ; $4170: $FF
    ld l, d                                       ; $4171: $6A
    rst RST_38                                    ; $4172: $FF
    rra                                           ; $4173: $1F
    rst RST_38                                    ; $4174: $FF
    add l                                         ; $4175: $85
    rst RST_20                                    ; $4176: $E7
    jp $82C7                                      ; $4177: $C3 $C7 $82


    rst RST_08                                    ; $417A: $CF
    add [hl]                                      ; $417B: $86
    adc a                                         ; $417C: $8F
    inc b                                         ; $417D: $04
    cp $0C                                        ; $417E: $FE $0C
    add b                                         ; $4180: $80
    nop                                           ; $4181: $00
    add b                                         ; $4182: $80
    nop                                           ; $4183: $00
    ret nz                                        ; $4184: $C0

    add b                                         ; $4185: $80
    ret nz                                        ; $4186: $C0

    add b                                         ; $4187: $80
    ret nz                                        ; $4188: $C0

    add b                                         ; $4189: $80
    ret nz                                        ; $418A: $C0

    add b                                         ; $418B: $80
    ldh [rLCDC], a                                ; $418C: $E0 $40
    ldh [rLCDC], a                                ; $418E: $E0 $40
    ldh [rLCDC], a                                ; $4190: $E0 $40
    ret nz                                        ; $4192: $C0

    add b                                         ; $4193: $80
    ret nz                                        ; $4194: $C0

    add b                                         ; $4195: $80

jr_011_4196:
    ret nz                                        ; $4196: $C0

    add b                                         ; $4197: $80
    add b                                         ; $4198: $80
    nop                                           ; $4199: $00
    nop                                           ; $419A: $00
    nop                                           ; $419B: $00
    nop                                           ; $419C: $00
    nop                                           ; $419D: $00
    nop                                           ; $419E: $00
    nop                                           ; $419F: $00
    ld a, h                                       ; $41A0: $7C
    ld [$58FD], sp                                ; $41A1: $08 $FD $58
    ld sp, hl                                     ; $41A4: $F9
    nop                                           ; $41A5: $00
    nop                                           ; $41A6: $00
    nop                                           ; $41A7: $00
    nop                                           ; $41A8: $00
    nop                                           ; $41A9: $00
    nop                                           ; $41AA: $00
    nop                                           ; $41AB: $00
    nop                                           ; $41AC: $00
    nop                                           ; $41AD: $00
    nop                                           ; $41AE: $00
    nop                                           ; $41AF: $00
    nop                                           ; $41B0: $00
    nop                                           ; $41B1: $00
    nop                                           ; $41B2: $00
    nop                                           ; $41B3: $00
    nop                                           ; $41B4: $00
    nop                                           ; $41B5: $00
    nop                                           ; $41B6: $00
    nop                                           ; $41B7: $00
    nop                                           ; $41B8: $00
    nop                                           ; $41B9: $00
    nop                                           ; $41BA: $00
    nop                                           ; $41BB: $00
    nop                                           ; $41BC: $00
    nop                                           ; $41BD: $00
    nop                                           ; $41BE: $00
    nop                                           ; $41BF: $00
    rst RST_38                                    ; $41C0: $FF
    or [hl]                                       ; $41C1: $B6
    cp $00                                        ; $41C2: $FE $00
    nop                                           ; $41C4: $00
    nop                                           ; $41C5: $00
    nop                                           ; $41C6: $00
    nop                                           ; $41C7: $00
    nop                                           ; $41C8: $00
    nop                                           ; $41C9: $00
    nop                                           ; $41CA: $00
    nop                                           ; $41CB: $00
    nop                                           ; $41CC: $00
    nop                                           ; $41CD: $00
    nop                                           ; $41CE: $00
    nop                                           ; $41CF: $00
    nop                                           ; $41D0: $00
    nop                                           ; $41D1: $00

jr_011_41D2:
    nop                                           ; $41D2: $00
    nop                                           ; $41D3: $00
    nop                                           ; $41D4: $00
    nop                                           ; $41D5: $00
    nop                                           ; $41D6: $00
    nop                                           ; $41D7: $00
    nop                                           ; $41D8: $00
    nop                                           ; $41D9: $00
    nop                                           ; $41DA: $00
    nop                                           ; $41DB: $00
    nop                                           ; $41DC: $00
    nop                                           ; $41DD: $00
    nop                                           ; $41DE: $00
    nop                                           ; $41DF: $00
    db $FC                                        ; $41E0: $FC
    ld e, b                                       ; $41E1: $58
    ld hl, sp+$00                                 ; $41E2: $F8 $00
    nop                                           ; $41E4: $00
    nop                                           ; $41E5: $00
    nop                                           ; $41E6: $00
    nop                                           ; $41E7: $00
    nop                                           ; $41E8: $00
    nop                                           ; $41E9: $00
    nop                                           ; $41EA: $00
    nop                                           ; $41EB: $00
    nop                                           ; $41EC: $00
    nop                                           ; $41ED: $00
    nop                                           ; $41EE: $00
    nop                                           ; $41EF: $00
    nop                                           ; $41F0: $00
    nop                                           ; $41F1: $00
    nop                                           ; $41F2: $00
    nop                                           ; $41F3: $00
    nop                                           ; $41F4: $00
    nop                                           ; $41F5: $00
    nop                                           ; $41F6: $00
    nop                                           ; $41F7: $00
    nop                                           ; $41F8: $00
    nop                                           ; $41F9: $00
    nop                                           ; $41FA: $00
    nop                                           ; $41FB: $00
    nop                                           ; $41FC: $00
    nop                                           ; $41FD: $00
    nop                                           ; $41FE: $00
    nop                                           ; $41FF: $00
    nop                                           ; $4200: $00
    nop                                           ; $4201: $00
    nop                                           ; $4202: $00
    nop                                           ; $4203: $00
    nop                                           ; $4204: $00
    nop                                           ; $4205: $00
    nop                                           ; $4206: $00
    nop                                           ; $4207: $00
    nop                                           ; $4208: $00
    nop                                           ; $4209: $00
    nop                                           ; $420A: $00
    nop                                           ; $420B: $00
    inc bc                                        ; $420C: $03
    nop                                           ; $420D: $00
    rra                                           ; $420E: $1F
    inc bc                                        ; $420F: $03
    ccf                                           ; $4210: $3F
    rra                                           ; $4211: $1F
    ld a, a                                       ; $4212: $7F
    ld h, $6F                                     ; $4213: $26 $6F
    rla                                           ; $4215: $17
    ld a, [$CD6F]                                 ; $4216: $FA $6F $CD
    ld [hl], d                                    ; $4219: $72
    halt                                          ; $421A: $76
    ld [$1028], sp                                ; $421B: $08 $28 $10
    stop                                          ; $421E: $10 $00
    add b                                         ; $4220: $80
    nop                                           ; $4221: $00
    cp $00                                        ; $4222: $FE $00
    rst RST_38                                    ; $4224: $FF
    ld a, [hl]                                    ; $4225: $7E
    rst RST_38                                    ; $4226: $FF
    db $DB                                        ; $4227: $DB
    rst RST_38                                    ; $4228: $FF
    di                                            ; $4229: $F3
    ld a, a                                       ; $422A: $7F
    sbc $BF                                       ; $422B: $DE $BF
    ld e, d                                       ; $422D: $5A
    ld e, a                                       ; $422E: $5F
    cpl                                           ; $422F: $2F
    ld e, a                                       ; $4230: $5F
    dec l                                         ; $4231: $2D
    cpl                                           ; $4232: $2F
    rla                                           ; $4233: $17
    rra                                           ; $4234: $1F
    inc bc                                        ; $4235: $03
    rra                                           ; $4236: $1F
    add hl, bc                                    ; $4237: $09
    rra                                           ; $4238: $1F
    inc c                                         ; $4239: $0C
    ld e, $0C                                     ; $423A: $1E $0C
    inc e                                         ; $423C: $1C
    ld [$081C], sp                                ; $423D: $08 $1C $08
    ld bc, $8700                                  ; $4240: $01 $00 $87
    ld bc, $87FF                                  ; $4243: $01 $FF $87
    rst RST_38                                    ; $4246: $FF
    ld l, d                                       ; $4247: $6A
    rst RST_38                                    ; $4248: $FF
    cp a                                          ; $4249: $BF
    rst RST_38                                    ; $424A: $FF
    sub l                                         ; $424B: $95
    rst RST_38                                    ; $424C: $FF
    or h                                          ; $424D: $B4
    rst RST_30                                    ; $424E: $F7
    cp e                                          ; $424F: $BB
    rst RST_28                                    ; $4250: $EF
    pop de                                        ; $4251: $D1
    rst RST_30                                    ; $4252: $F7
    ld b, b                                       ; $4253: $40
    rst RST_20                                    ; $4254: $E7
    jp nz, Jump_011_63F7                          ; $4255: $C2 $F7 $63

    rst RST_30                                    ; $4258: $F7
    ld h, e                                       ; $4259: $63
    ld [hl], a                                    ; $425A: $77
    ld [hl+], a                                   ; $425B: $22
    ld a, a                                       ; $425C: $7F
    ld [hl-], a                                   ; $425D: $32
    rst RST_38                                    ; $425E: $FF
    ld [hl-], a                                   ; $425F: $32
    ldh [rP1], a                                  ; $4260: $E0 $00
    ld hl, sp-$20                                 ; $4262: $F8 $E0
    cp $98                                        ; $4264: $FE $98
    rst RST_38                                    ; $4266: $FF
    and $FF                                       ; $4267: $E6 $FF
    pop af                                        ; $4269: $F1
    ld sp, hl                                     ; $426A: $F9
    or b                                          ; $426B: $B0
    ld sp, hl                                     ; $426C: $F9
    and b                                         ; $426D: $A0
    ld hl, sp-$10                                 ; $426E: $F8 $F0
    db $FC                                        ; $4270: $FC
    xor b                                         ; $4271: $A8
    cp $7C                                        ; $4272: $FE $7C
    cp $14                                        ; $4274: $FE $14
    sbc $0C                                       ; $4276: $DE $0C
    adc [hl]                                      ; $4278: $8E
    inc b                                         ; $4279: $04
    ld c, $04                                     ; $427A: $0E $04
    ld e, $0C                                     ; $427C: $1E $0C
    ld a, h                                       ; $427E: $7C
    ld [$0080], sp                                ; $427F: $08 $80 $00
    ret nz                                        ; $4282: $C0

    add b                                         ; $4283: $80
    ret nz                                        ; $4284: $C0

    add b                                         ; $4285: $80
    ldh [rLCDC], a                                ; $4286: $E0 $40
    ldh [rLCDC], a                                ; $4288: $E0 $40
    ld [hl], b                                    ; $428A: $70
    jr nz, jr_011_42FD                            ; $428B: $20 $70

    jr nz, jr_011_42C7                            ; $428D: $20 $38

    db $10                                        ; $428F: $10
    jr c, @+$12                                   ; $4290: $38 $10

    jr c, jr_011_42A4                             ; $4292: $38 $10

    jr c, jr_011_42A6                             ; $4294: $38 $10

    stop                                          ; $4296: $10 $00
    nop                                           ; $4298: $00
    nop                                           ; $4299: $00
    nop                                           ; $429A: $00
    nop                                           ; $429B: $00
    nop                                           ; $429C: $00
    nop                                           ; $429D: $00
    nop                                           ; $429E: $00
    nop                                           ; $429F: $00
    ld a, h                                       ; $42A0: $7C
    ld [$58FD], sp                                ; $42A1: $08 $FD $58

jr_011_42A4:
    ld sp, hl                                     ; $42A4: $F9
    nop                                           ; $42A5: $00

jr_011_42A6:
    nop                                           ; $42A6: $00
    nop                                           ; $42A7: $00
    nop                                           ; $42A8: $00
    nop                                           ; $42A9: $00
    nop                                           ; $42AA: $00
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
    rst RST_38                                    ; $42C0: $FF
    xor [hl]                                      ; $42C1: $AE
    cp $00                                        ; $42C2: $FE $00
    nop                                           ; $42C4: $00
    nop                                           ; $42C5: $00
    nop                                           ; $42C6: $00

jr_011_42C7:
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
    db $FC                                        ; $42E0: $FC
    ld e, b                                       ; $42E1: $58
    ld hl, sp+$00                                 ; $42E2: $F8 $00
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
    nop                                           ; $42EE: $00
    nop                                           ; $42EF: $00
    nop                                           ; $42F0: $00
    nop                                           ; $42F1: $00
    nop                                           ; $42F2: $00
    nop                                           ; $42F3: $00
    nop                                           ; $42F4: $00
    nop                                           ; $42F5: $00
    nop                                           ; $42F6: $00
    nop                                           ; $42F7: $00
    nop                                           ; $42F8: $00
    nop                                           ; $42F9: $00
    nop                                           ; $42FA: $00
    nop                                           ; $42FB: $00
    nop                                           ; $42FC: $00

jr_011_42FD:
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
    inc bc                                        ; $430C: $03
    nop                                           ; $430D: $00
    rra                                           ; $430E: $1F
    inc bc                                        ; $430F: $03
    ccf                                           ; $4310: $3F
    rra                                           ; $4311: $1F
    ld a, a                                       ; $4312: $7F
    ld h, $6F                                     ; $4313: $26 $6F
    rla                                           ; $4315: $17
    ld a, [$CD6F]                                 ; $4316: $FA $6F $CD
    ld [hl], d                                    ; $4319: $72
    halt                                          ; $431A: $76
    ld [$1028], sp                                ; $431B: $08 $28 $10
    stop                                          ; $431E: $10 $00
    nop                                           ; $4320: $00
    nop                                           ; $4321: $00
    nop                                           ; $4322: $00
    nop                                           ; $4323: $00
    sbc [hl]                                      ; $4324: $9E
    nop                                           ; $4325: $00
    rst RST_38                                    ; $4326: $FF
    ld e, $FF                                     ; $4327: $1E $FF
    ld a, e                                       ; $4329: $7B
    rst RST_38                                    ; $432A: $FF
    db $D3                                        ; $432B: $D3
    rst RST_38                                    ; $432C: $FF
    cp $7F                                        ; $432D: $FE $7F
    jp c, Jump_011_5FBF                           ; $432F: $DA $BF $5F

    ld e, a                                       ; $4332: $5F
    dec l                                         ; $4333: $2D
    ld c, a                                       ; $4334: $4F
    scf                                           ; $4335: $37
    ld [hl], a                                    ; $4336: $77
    dec bc                                        ; $4337: $0B
    ld a, a                                       ; $4338: $7F
    ld bc, $007D                                  ; $4339: $01 $7D $00
    ld hl, sp+$60                                 ; $433C: $F8 $60
    ldh a, [$FF60]                                ; $433E: $F0 $60
    nop                                           ; $4340: $00
    nop                                           ; $4341: $00
    inc bc                                        ; $4342: $03
    nop                                           ; $4343: $00
    rst RST_08                                    ; $4344: $CF
    inc bc                                        ; $4345: $03
    rst RST_38                                    ; $4346: $FF
    ld c, [hl]                                    ; $4347: $4E
    rst RST_38                                    ; $4348: $FF
    xor e                                         ; $4349: $AB
    rst RST_38                                    ; $434A: $FF
    cp l                                          ; $434B: $BD
    rst RST_38                                    ; $434C: $FF
    sub h                                         ; $434D: $94
    rst RST_38                                    ; $434E: $FF
    or a                                          ; $434F: $B7
    rst RST_30                                    ; $4350: $F7
    reti                                          ; $4351: $D9


    rst RST_28                                    ; $4352: $EF
    ld d, b                                       ; $4353: $50
    rst RST_38                                    ; $4354: $FF
    ret nz                                        ; $4355: $C0

    rst RST_38                                    ; $4356: $FF
    ld h, [hl]                                    ; $4357: $66
    rst RST_38                                    ; $4358: $FF
    ld a, [hl]                                    ; $4359: $7E
    ld a, [hl]                                    ; $435A: $7E
    jr jr_011_4399                                ; $435B: $18 $3C

    nop                                           ; $435D: $00
    ld a, b                                       ; $435E: $78
    nop                                           ; $435F: $00
    ldh [rP1], a                                  ; $4360: $E0 $00
    ld hl, sp-$40                                 ; $4362: $F8 $C0
    cp $E8                                        ; $4364: $FE $E8
    rst RST_38                                    ; $4366: $FF
    or $FF                                        ; $4367: $F6 $FF
    or c                                          ; $4369: $B1
    ld sp, hl                                     ; $436A: $F9
    and b                                         ; $436B: $A0
    ld hl, sp-$10                                 ; $436C: $F8 $F0
    db $FC                                        ; $436E: $FC
    xor b                                         ; $436F: $A8
    cp $7C                                        ; $4370: $FE $7C
    cp $14                                        ; $4372: $FE $14
    ld e, $0C                                     ; $4374: $1E $0C
    rrca                                          ; $4376: $0F
    ld b, $07                                     ; $4377: $06 $07
    ld [bc], a                                    ; $4379: $02
    rlca                                          ; $437A: $07
    ld [bc], a                                    ; $437B: $02
    rra                                           ; $437C: $1F
    ld [bc], a                                    ; $437D: $02
    ld a, $14                                     ; $437E: $3E $14
    add b                                         ; $4380: $80
    nop                                           ; $4381: $00
    ret nz                                        ; $4382: $C0

    add b                                         ; $4383: $80
    ldh [rLCDC], a                                ; $4384: $E0 $40
    ldh [rLCDC], a                                ; $4386: $E0 $40
    ld [hl], b                                    ; $4388: $70
    jr nz, jr_011_43FB                            ; $4389: $20 $70

    jr nz, jr_011_43FD                            ; $438B: $20 $70

    jr nz, jr_011_43C7                            ; $438D: $20 $38

    db $10                                        ; $438F: $10
    jr c, @+$12                                   ; $4390: $38 $10

    jr c, jr_011_43A4                             ; $4392: $38 $10

    jr c, jr_011_43A6                             ; $4394: $38 $10

    stop                                          ; $4396: $10 $00
    nop                                           ; $4398: $00

jr_011_4399:
    nop                                           ; $4399: $00
    nop                                           ; $439A: $00
    nop                                           ; $439B: $00
    nop                                           ; $439C: $00
    nop                                           ; $439D: $00
    nop                                           ; $439E: $00
    nop                                           ; $439F: $00
    rrca                                          ; $43A0: $0F
    ld b, $7E                                     ; $43A1: $06 $7E
    inc c                                         ; $43A3: $0C

jr_011_43A4:
    db $FC                                        ; $43A4: $FC
    ld e, b                                       ; $43A5: $58

jr_011_43A6:
    ld hl, sp+$00                                 ; $43A6: $F8 $00
    nop                                           ; $43A8: $00
    nop                                           ; $43A9: $00
    nop                                           ; $43AA: $00
    nop                                           ; $43AB: $00
    nop                                           ; $43AC: $00
    nop                                           ; $43AD: $00
    nop                                           ; $43AE: $00
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
    db $FC                                        ; $43C0: $FC
    nop                                           ; $43C1: $00
    ld hl, sp+$00                                 ; $43C2: $F8 $00
    nop                                           ; $43C4: $00
    nop                                           ; $43C5: $00
    nop                                           ; $43C6: $00

jr_011_43C7:
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
    nop                                           ; $43D4: $00
    nop                                           ; $43D5: $00
    nop                                           ; $43D6: $00
    nop                                           ; $43D7: $00
    nop                                           ; $43D8: $00
    nop                                           ; $43D9: $00
    nop                                           ; $43DA: $00
    nop                                           ; $43DB: $00
    nop                                           ; $43DC: $00
    nop                                           ; $43DD: $00
    nop                                           ; $43DE: $00
    nop                                           ; $43DF: $00
    inc a                                         ; $43E0: $3C
    nop                                           ; $43E1: $00
    nop                                           ; $43E2: $00
    nop                                           ; $43E3: $00
    nop                                           ; $43E4: $00
    nop                                           ; $43E5: $00
    nop                                           ; $43E6: $00
    nop                                           ; $43E7: $00
    nop                                           ; $43E8: $00
    nop                                           ; $43E9: $00
    nop                                           ; $43EA: $00
    nop                                           ; $43EB: $00
    nop                                           ; $43EC: $00
    nop                                           ; $43ED: $00
    nop                                           ; $43EE: $00
    nop                                           ; $43EF: $00
    nop                                           ; $43F0: $00
    nop                                           ; $43F1: $00
    nop                                           ; $43F2: $00
    nop                                           ; $43F3: $00
    nop                                           ; $43F4: $00
    nop                                           ; $43F5: $00
    nop                                           ; $43F6: $00
    nop                                           ; $43F7: $00
    nop                                           ; $43F8: $00
    nop                                           ; $43F9: $00
    nop                                           ; $43FA: $00

jr_011_43FB:
    nop                                           ; $43FB: $00
    nop                                           ; $43FC: $00

jr_011_43FD:
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
    ld bc, $0300                                  ; $440E: $01 $00 $03
    ld bc, $0207                                  ; $4411: $01 $07 $02
    ld b, $01                                     ; $4414: $06 $01
    rrca                                          ; $4416: $0F
    ld b, $0C                                     ; $4417: $06 $0C
    rlca                                          ; $4419: $07
    rlca                                          ; $441A: $07
    nop                                           ; $441B: $00
    ld [bc], a                                    ; $441C: $02
    ld bc, $0001                                  ; $441D: $01 $01 $00
    nop                                           ; $4420: $00
    nop                                           ; $4421: $00
    nop                                           ; $4422: $00
    nop                                           ; $4423: $00
    nop                                           ; $4424: $00
    nop                                           ; $4425: $00
    nop                                           ; $4426: $00
    nop                                           ; $4427: $00
    nop                                           ; $4428: $00
    nop                                           ; $4429: $00
    jr c, jr_011_442C                             ; $442A: $38 $00

jr_011_442C:
    rst RST_38                                    ; $442C: $FF
    jr nc, @+$01                                  ; $442D: $30 $FF

    rst RST_30                                    ; $442F: $F7
    rst RST_38                                    ; $4430: $FF
    ld l, l                                       ; $4431: $6D
    rst RST_38                                    ; $4432: $FF
    ld a, a                                       ; $4433: $7F
    and a                                         ; $4434: $A7
    db $FD                                        ; $4435: $FD
    db $DB                                        ; $4436: $DB
    dec h                                         ; $4437: $25
    ld h, l                                       ; $4438: $65
    add d                                         ; $4439: $82
    add l                                         ; $443A: $85
    ld [bc], a                                    ; $443B: $02
    ld [bc], a                                    ; $443C: $02
    ld bc, $0001                                  ; $443D: $01 $01 $00
    nop                                           ; $4440: $00
    nop                                           ; $4441: $00
    ldh [rP1], a                                  ; $4442: $E0 $00
    ld hl, sp-$20                                 ; $4444: $F8 $E0
    rst RST_38                                    ; $4446: $FF
    cp b                                          ; $4447: $B8
    rst RST_38                                    ; $4448: $FF
    ld [hl], $FF                                  ; $4449: $36 $FF
    db $EB                                        ; $444B: $EB
    rst RST_38                                    ; $444C: $FF
    xor c                                         ; $444D: $A9
    rst RST_38                                    ; $444E: $FF
    ei                                            ; $444F: $FB
    rst RST_38                                    ; $4450: $FF
    db $DB                                        ; $4451: $DB
    cp $75                                        ; $4452: $FE $75
    rst RST_38                                    ; $4454: $FF
    inc a                                         ; $4455: $3C
    ld a, [hl]                                    ; $4456: $7E
    jr z, jr_011_44D5                             ; $4457: $28 $7C

    jr nc, jr_011_44D7                            ; $4459: $30 $7C

    jr nc, jr_011_44D9                            ; $445B: $30 $7C

    jr nc, jr_011_44DB                            ; $445D: $30 $7C

    jr nz, jr_011_447F                            ; $445F: $20 $1E

    nop                                           ; $4461: $00
    ld a, a                                       ; $4462: $7F
    ld e, $FF                                     ; $4463: $1E $FF
    ld a, c                                       ; $4465: $79
    rst RST_38                                    ; $4466: $FF
    xor [hl]                                      ; $4467: $AE
    rst RST_38                                    ; $4468: $FF
    rst RST_38                                    ; $4469: $FF
    rst RST_38                                    ; $446A: $FF
    ld e, e                                       ; $446B: $5B
    rst RST_38                                    ; $446C: $FF
    ld c, d                                       ; $446D: $4A
    ld a, a                                       ; $446E: $7F
    cp a                                          ; $446F: $BF
    rst RST_38                                    ; $4470: $FF
    ld a, [de]                                    ; $4471: $1A
    ld a, a                                       ; $4472: $7F
    rlca                                          ; $4473: $07
    ccf                                           ; $4474: $3F
    ld [bc], a                                    ; $4475: $02
    rra                                           ; $4476: $1F
    inc bc                                        ; $4477: $03
    rrca                                          ; $4478: $0F
    inc bc                                        ; $4479: $03
    rrca                                          ; $447A: $0F
    inc bc                                        ; $447B: $03
    rrca                                          ; $447C: $0F
    ld [bc], a                                    ; $447D: $02
    rra                                           ; $447E: $1F

jr_011_447F:
    ld [bc], a                                    ; $447F: $02
    add b                                         ; $4480: $80
    nop                                           ; $4481: $00
    ldh [$FF80], a                                ; $4482: $E0 $80
    ldh a, [$FF60]                                ; $4484: $F0 $60
    ld hl, sp+$10                                 ; $4486: $F8 $10
    sbc h                                         ; $4488: $9C
    ld [$048E], sp                                ; $4489: $08 $8E $04
    adc [hl]                                      ; $448C: $8E
    inc b                                         ; $448D: $04
    add a                                         ; $448E: $87
    ld [bc], a                                    ; $448F: $02
    rst RST_00                                    ; $4490: $C7
    add d                                         ; $4491: $82
    rst RST_00                                    ; $4492: $C7
    add d                                         ; $4493: $82
    add a                                         ; $4494: $87
    ld [bc], a                                    ; $4495: $02
    add a                                         ; $4496: $87
    ld [bc], a                                    ; $4497: $02
    adc [hl]                                      ; $4498: $8E
    inc b                                         ; $4499: $04
    ld c, $04                                     ; $449A: $0E $04
    inc c                                         ; $449C: $0C
    nop                                           ; $449D: $00
    nop                                           ; $449E: $00
    nop                                           ; $449F: $00
    ld a, a                                       ; $44A0: $7F

jr_011_44A1:
    ld [$58FF], sp                                ; $44A1: $08 $FF $58
    cp $00                                        ; $44A4: $FE $00
    nop                                           ; $44A6: $00
    nop                                           ; $44A7: $00
    nop                                           ; $44A8: $00
    nop                                           ; $44A9: $00
    nop                                           ; $44AA: $00
    nop                                           ; $44AB: $00
    nop                                           ; $44AC: $00
    nop                                           ; $44AD: $00
    nop                                           ; $44AE: $00
    nop                                           ; $44AF: $00
    nop                                           ; $44B0: $00
    nop                                           ; $44B1: $00
    nop                                           ; $44B2: $00
    nop                                           ; $44B3: $00
    nop                                           ; $44B4: $00
    nop                                           ; $44B5: $00
    nop                                           ; $44B6: $00
    nop                                           ; $44B7: $00
    nop                                           ; $44B8: $00
    nop                                           ; $44B9: $00
    nop                                           ; $44BA: $00
    nop                                           ; $44BB: $00
    nop                                           ; $44BC: $00
    nop                                           ; $44BD: $00
    nop                                           ; $44BE: $00
    nop                                           ; $44BF: $00
    ccf                                           ; $44C0: $3F
    ld d, $3E                                     ; $44C1: $16 $3E
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

jr_011_44D5:
    nop                                           ; $44D5: $00
    nop                                           ; $44D6: $00

jr_011_44D7:
    nop                                           ; $44D7: $00
    nop                                           ; $44D8: $00

jr_011_44D9:
    nop                                           ; $44D9: $00
    nop                                           ; $44DA: $00

jr_011_44DB:
    nop                                           ; $44DB: $00
    nop                                           ; $44DC: $00
    nop                                           ; $44DD: $00
    nop                                           ; $44DE: $00
    nop                                           ; $44DF: $00
    nop                                           ; $44E0: $00
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
    rlca                                          ; $44EE: $07
    nop                                           ; $44EF: $00
    rrca                                          ; $44F0: $0F
    rlca                                          ; $44F1: $07
    rra                                           ; $44F2: $1F
    add hl, bc                                    ; $44F3: $09
    dec de                                        ; $44F4: $1B
    dec b                                         ; $44F5: $05
    ld a, $1B                                     ; $44F6: $3E $1B
    inc sp                                        ; $44F8: $33
    inc e                                         ; $44F9: $1C
    dec e                                         ; $44FA: $1D
    ld [bc], a                                    ; $44FB: $02
    ld a, [bc]                                    ; $44FC: $0A
    inc b                                         ; $44FD: $04
    inc b                                         ; $44FE: $04
    nop                                           ; $44FF: $00
    nop                                           ; $4500: $00
    nop                                           ; $4501: $00
    rst RST_20                                    ; $4502: $E7
    nop                                           ; $4503: $00
    rst RST_38                                    ; $4504: $FF
    rst RST_00                                    ; $4505: $C7
    rst RST_38                                    ; $4506: $FF
    sbc $FF                                       ; $4507: $DE $FF
    or h                                          ; $4509: $B4
    rst RST_38                                    ; $450A: $FF
    rst RST_38                                    ; $450B: $FF
    sbc a                                         ; $450C: $9F
    or $6F                                        ; $450D: $F6 $6F
    sub a                                         ; $450F: $97
    sbc a                                         ; $4510: $9F
    add hl, bc                                    ; $4511: $09
    rra                                           ; $4512: $1F
    dec bc                                        ; $4513: $0B
    rra                                           ; $4514: $1F
    rrca                                          ; $4515: $0F
    rra                                           ; $4516: $1F
    ld a, [bc]                                    ; $4517: $0A
    rra                                           ; $4518: $1F
    ld c, $3E                                     ; $4519: $0E $3E
    inc e                                         ; $451B: $1C
    inc a                                         ; $451C: $3C
    jr jr_011_4597                                ; $451D: $18 $78

    jr nc, jr_011_44A1                            ; $451F: $30 $80

jr_011_4521:
    nop                                           ; $4521: $00
    ret nz                                        ; $4522: $C0

    add b                                         ; $4523: $80
    di                                            ; $4524: $F3
    ret nz                                        ; $4525: $C0

    rst RST_38                                    ; $4526: $FF
    db $D3                                        ; $4527: $D3
    rst RST_38                                    ; $4528: $FF
    xor d                                         ; $4529: $AA
    rst RST_38                                    ; $452A: $FF
    sbc a                                         ; $452B: $9F
    rst RST_38                                    ; $452C: $FF
    or e                                          ; $452D: $B3
    rst RST_38                                    ; $452E: $FF
    xor e                                         ; $452F: $AB
    rst RST_38                                    ; $4530: $FF
    halt                                          ; $4531: $76
    adc a                                         ; $4532: $8F
    ld [hl], a                                    ; $4533: $77
    rst RST_38                                    ; $4534: $FF
    ld b, $7F                                     ; $4535: $06 $7F
    inc bc                                        ; $4537: $03
    ccf                                           ; $4538: $3F
    inc bc                                        ; $4539: $03
    rra                                           ; $453A: $1F
    inc bc                                        ; $453B: $03
    rrca                                          ; $453C: $0F
    ld b, $7F                                     ; $453D: $06 $7F
    inc c                                         ; $453F: $0C
    cp $00                                        ; $4540: $FE $00
    rst RST_38                                    ; $4542: $FF
    or $FF                                        ; $4543: $F6 $FF
    cp c                                          ; $4545: $B9
    rst RST_38                                    ; $4546: $FF
    ld hl, sp-$01                                 ; $4547: $F8 $FF
    ld l, b                                       ; $4549: $68
    rst RST_38                                    ; $454A: $FF
    jr z, @+$01                                   ; $454B: $28 $FF

    ld hl, sp-$01                                 ; $454D: $F8 $FF
    or b                                          ; $454F: $B0
    rst RST_38                                    ; $4550: $FF
    ldh [$FFE7], a                                ; $4551: $E0 $E7
    ret nz                                        ; $4553: $C0

    ret nz                                        ; $4554: $C0

    nop                                           ; $4555: $00
    add b                                         ; $4556: $80
    nop                                           ; $4557: $00
    add b                                         ; $4558: $80
    nop                                           ; $4559: $00
    ldh a, [rP1]                                  ; $455A: $F0 $00
    ldh a, [rP1]                                  ; $455C: $F0 $00
    pop hl                                        ; $455E: $E1
    nop                                           ; $455F: $00
    add b                                         ; $4560: $80
    nop                                           ; $4561: $00
    ret nz                                        ; $4562: $C0

    add b                                         ; $4563: $80
    ldh [rLCDC], a                                ; $4564: $E0 $40
    ld [hl], b                                    ; $4566: $70
    jr nz, jr_011_4521                            ; $4567: $20 $B8

    db $10                                        ; $4569: $10
    sbc h                                         ; $456A: $9C
    ld [$08DC], sp                                ; $456B: $08 $DC $08
    xor $04                                       ; $456E: $EE $04
    cp $04                                        ; $4570: $FE $04
    rst RST_30                                    ; $4572: $F7
    ld [bc], a                                    ; $4573: $02
    ld [hl], a                                    ; $4574: $77
    ld [bc], a                                    ; $4575: $02
    ld h, a                                       ; $4576: $67
    ld [bc], a                                    ; $4577: $02
    ld h, a                                       ; $4578: $67
    ld [bc], a                                    ; $4579: $02
    ld h, d                                       ; $457A: $62
    nop                                           ; $457B: $00
    ldh [rP1], a                                  ; $457C: $E0 $00
    ret nz                                        ; $457E: $C0

    nop                                           ; $457F: $00
    ld a, [hl]                                    ; $4580: $7E
    inc c                                         ; $4581: $0C
    db $FC                                        ; $4582: $FC
    ld e, b                                       ; $4583: $58
    ld hl, sp+$00                                 ; $4584: $F8 $00
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
    nop                                           ; $4592: $00
    nop                                           ; $4593: $00
    nop                                           ; $4594: $00
    nop                                           ; $4595: $00
    nop                                           ; $4596: $00

jr_011_4597:
    nop                                           ; $4597: $00
    nop                                           ; $4598: $00
    nop                                           ; $4599: $00
    nop                                           ; $459A: $00
    nop                                           ; $459B: $00
    nop                                           ; $459C: $00
    nop                                           ; $459D: $00
    nop                                           ; $459E: $00
    nop                                           ; $459F: $00
    db $FC                                        ; $45A0: $FC
    ld e, b                                       ; $45A1: $58
    ld hl, sp+$00                                 ; $45A2: $F8 $00
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
    nop                                           ; $45B0: $00
    nop                                           ; $45B1: $00
    nop                                           ; $45B2: $00
    nop                                           ; $45B3: $00
    nop                                           ; $45B4: $00
    nop                                           ; $45B5: $00
    nop                                           ; $45B6: $00
    nop                                           ; $45B7: $00
    nop                                           ; $45B8: $00
    nop                                           ; $45B9: $00
    nop                                           ; $45BA: $00
    nop                                           ; $45BB: $00
    nop                                           ; $45BC: $00
    nop                                           ; $45BD: $00
    nop                                           ; $45BE: $00
    nop                                           ; $45BF: $00
    ld bc, $0000                                  ; $45C0: $01 $00 $00
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
    nop                                           ; $45D6: $00
    nop                                           ; $45D7: $00
    nop                                           ; $45D8: $00
    nop                                           ; $45D9: $00
    nop                                           ; $45DA: $00
    nop                                           ; $45DB: $00
    nop                                           ; $45DC: $00
    nop                                           ; $45DD: $00
    nop                                           ; $45DE: $00
    nop                                           ; $45DF: $00
    ldh [rP1], a                                  ; $45E0: $E0 $00
    ldh a, [$FFE0]                                ; $45E2: $F0 $E0
    rst RST_38                                    ; $45E4: $FF
    ld [hl], b                                    ; $45E5: $70
    rst RST_38                                    ; $45E6: $FF
    ld a, d                                       ; $45E7: $7A
    rst RST_38                                    ; $45E8: $FF
    rst RST_18                                    ; $45E9: $DF
    rst RST_38                                    ; $45EA: $FF
    ld e, e                                       ; $45EB: $5B
    rst RST_38                                    ; $45EC: $FF
    di                                            ; $45ED: $F3
    rst RST_38                                    ; $45EE: $FF
    ld b, $0F                                     ; $45EF: $06 $0F
    or $FE                                        ; $45F1: $F6 $FE
    inc b                                         ; $45F3: $04
    sbc [hl]                                      ; $45F4: $9E
    inc c                                         ; $45F5: $0C
    ld a, l                                       ; $45F6: $7D
    ld [$59FF], sp                                ; $45F7: $08 $FF $59
    rst RST_38                                    ; $45FA: $FF
    nop                                           ; $45FB: $00
    nop                                           ; $45FC: $00
    nop                                           ; $45FD: $00
    nop                                           ; $45FE: $00
    nop                                           ; $45FF: $00
    ld [hl], b                                    ; $4600: $70
    nop                                           ; $4601: $00
    pop af                                        ; $4602: $F1
    ld h, b                                       ; $4603: $60
    rst RST_38                                    ; $4604: $FF
    pop hl                                        ; $4605: $E1
    rst RST_38                                    ; $4606: $FF
    ld e, l                                       ; $4607: $5D
    rst RST_38                                    ; $4608: $FF
    ldh a, [c]                                    ; $4609: $F2
    ld e, a                                       ; $460A: $5F
    ei                                            ; $460B: $FB
    add a                                         ; $460C: $87
    ld a, a                                       ; $460D: $7F
    ld [hl], a                                    ; $460E: $77
    adc l                                         ; $460F: $8D
    adc c                                         ; $4610: $89
    ld b, $06                                     ; $4611: $06 $06
    ld bc, $0003                                  ; $4613: $01 $03 $00
    rlca                                          ; $4616: $07
    inc bc                                        ; $4617: $03
    ccf                                           ; $4618: $3F
    ld b, $7E                                     ; $4619: $06 $7E
    inc l                                         ; $461B: $2C
    ld a, h                                       ; $461C: $7C
    nop                                           ; $461D: $00
    nop                                           ; $461E: $00
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
    inc bc                                        ; $462E: $03
    nop                                           ; $462F: $00
    rlca                                          ; $4630: $07
    inc bc                                        ; $4631: $03
    rrca                                          ; $4632: $0F
    inc b                                         ; $4633: $04
    dec e                                         ; $4634: $1D
    ld [bc], a                                    ; $4635: $02
    rra                                           ; $4636: $1F
    dec c                                         ; $4637: $0D
    add hl, de                                    ; $4638: $19
    ld c, $0E                                     ; $4639: $0E $0E
    ld bc, $0205                                  ; $463B: $01 $05 $02
    ld [bc], a                                    ; $463E: $02
    nop                                           ; $463F: $00
    inc e                                         ; $4640: $1C
    nop                                           ; $4641: $00
    ld a, a                                       ; $4642: $7F
    inc e                                         ; $4643: $1C
    rst RST_38                                    ; $4644: $FF
    ld h, e                                       ; $4645: $63
    rst RST_38                                    ; $4646: $FF
    db $DD                                        ; $4647: $DD
    rst RST_38                                    ; $4648: $FF
    ld a, [hl-]                                   ; $4649: $3A
    rst RST_38                                    ; $464A: $FF
    cpl                                           ; $464B: $2F
    rst RST_38                                    ; $464C: $FF
    ld c, a                                       ; $464D: $4F
    rst RST_38                                    ; $464E: $FF
    ld a, e                                       ; $464F: $7B
    rst RST_38                                    ; $4650: $FF
    ld d, e                                       ; $4651: $53
    ld a, a                                       ; $4652: $7F
    ld a, $7F                                     ; $4653: $3E $7F
    nop                                           ; $4655: $00
    rst RST_30                                    ; $4656: $F7
    jr nz, @+$01                                  ; $4657: $20 $FF

    ld h, l                                       ; $4659: $65
    rst RST_28                                    ; $465A: $EF
    nop                                           ; $465B: $00
    nop                                           ; $465C: $00
    nop                                           ; $465D: $00
    nop                                           ; $465E: $00
    nop                                           ; $465F: $00
    add b                                         ; $4660: $80
    nop                                           ; $4661: $00
    add b                                         ; $4662: $80
    nop                                           ; $4663: $00
    ret nz                                        ; $4664: $C0

    add b                                         ; $4665: $80
    ldh [rP1], a                                  ; $4666: $E0 $00
    ldh a, [$FF60]                                ; $4668: $F0 $60
    ldh a, [$FFE0]                                ; $466A: $F0 $E0
    ldh a, [$FF60]                                ; $466C: $F0 $60
    db $FC                                        ; $466E: $FC
    ld d, b                                       ; $466F: $50
    rst RST_38                                    ; $4670: $FF
    call z, $83CF                                 ; $4671: $CC $CF $83
    jp $8080                                      ; $4674: $C3 $80 $80


    nop                                           ; $4677: $00
    nop                                           ; $4678: $00
    nop                                           ; $4679: $00
    nop                                           ; $467A: $00
    nop                                           ; $467B: $00
    nop                                           ; $467C: $00
    nop                                           ; $467D: $00
    nop                                           ; $467E: $00
    nop                                           ; $467F: $00
    add b                                         ; $4680: $80
    nop                                           ; $4681: $00
    add b                                         ; $4682: $80
    nop                                           ; $4683: $00
    nop                                           ; $4684: $00
    nop                                           ; $4685: $00
    nop                                           ; $4686: $00
    nop                                           ; $4687: $00
    nop                                           ; $4688: $00
    nop                                           ; $4689: $00
    nop                                           ; $468A: $00
    nop                                           ; $468B: $00
    nop                                           ; $468C: $00
    nop                                           ; $468D: $00
    nop                                           ; $468E: $00
    nop                                           ; $468F: $00
    nop                                           ; $4690: $00
    nop                                           ; $4691: $00
    nop                                           ; $4692: $00
    nop                                           ; $4693: $00
    nop                                           ; $4694: $00
    nop                                           ; $4695: $00
    nop                                           ; $4696: $00
    nop                                           ; $4697: $00
    nop                                           ; $4698: $00
    nop                                           ; $4699: $00
    nop                                           ; $469A: $00
    nop                                           ; $469B: $00
    nop                                           ; $469C: $00
    nop                                           ; $469D: $00
    nop                                           ; $469E: $00
    nop                                           ; $469F: $00
    nop                                           ; $46A0: $00
    nop                                           ; $46A1: $00
    nop                                           ; $46A2: $00
    nop                                           ; $46A3: $00
    nop                                           ; $46A4: $00
    nop                                           ; $46A5: $00
    nop                                           ; $46A6: $00
    nop                                           ; $46A7: $00
    nop                                           ; $46A8: $00
    nop                                           ; $46A9: $00
    nop                                           ; $46AA: $00
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
    ld bc, $0100                                  ; $46B6: $01 $00 $01
    nop                                           ; $46B9: $00
    inc bc                                        ; $46BA: $03
    ld bc, $0103                                  ; $46BB: $01 $03 $01
    ld bc, $0E00                                  ; $46BE: $01 $00 $0E
    nop                                           ; $46C1: $00
    ld a, [hl]                                    ; $46C2: $7E
    inc c                                         ; $46C3: $0C
    rst RST_38                                    ; $46C4: $FF
    ld a, h                                       ; $46C5: $7C
    rst RST_38                                    ; $46C6: $FF
    sbc e                                         ; $46C7: $9B
    cp a                                          ; $46C8: $BF
    ld e, [hl]                                    ; $46C9: $5E
    pop hl                                        ; $46CA: $E1
    cp a                                          ; $46CB: $BF

jr_011_46CC:
    dec a                                         ; $46CC: $3D
    jp Jump_000_21D2                              ; $46CD: $C3 $D2 $21


    and c                                         ; $46D0: $A1
    ld b, b                                       ; $46D1: $40
    ld e, a                                       ; $46D2: $5F
    nop                                           ; $46D3: $00
    ccf                                           ; $46D4: $3F
    ld e, $7F                                     ; $46D5: $1E $7F
    jr nc, jr_011_46CC                            ; $46D7: $30 $F3

    ld h, c                                       ; $46D9: $61
    rst RST_20                                    ; $46DA: $E7
    inc bc                                        ; $46DB: $03
    rlca                                          ; $46DC: $07
    nop                                           ; $46DD: $00
    nop                                           ; $46DE: $00
    nop                                           ; $46DF: $00
    nop                                           ; $46E0: $00
    nop                                           ; $46E1: $00
    nop                                           ; $46E2: $00
    nop                                           ; $46E3: $00
    nop                                           ; $46E4: $00
    nop                                           ; $46E5: $00
    inc e                                         ; $46E6: $1C
    nop                                           ; $46E7: $00
    cp $1C                                        ; $46E8: $FE $1C
    rst RST_38                                    ; $46EA: $FF
    xor [hl]                                      ; $46EB: $AE
    rst RST_38                                    ; $46EC: $FF
    ld c, [hl]                                    ; $46ED: $4E
    rst RST_38                                    ; $46EE: $FF
    ld a, e                                       ; $46EF: $7B
    rst RST_38                                    ; $46F0: $FF
    ld l, e                                       ; $46F1: $6B
    rst RST_38                                    ; $46F2: $FF
    cp a                                          ; $46F3: $BF
    ld a, a                                       ; $46F4: $7F
    adc $8F                                       ; $46F5: $CE $8F
    ld [hl], a                                    ; $46F7: $77
    rst RST_38                                    ; $46F8: $FF
    ld bc, $FFFF                                  ; $46F9: $01 $FF $FF
    rst RST_38                                    ; $46FC: $FF
    ret nz                                        ; $46FD: $C0

    ret nz                                        ; $46FE: $C0

    nop                                           ; $46FF: $00
    add b                                         ; $4700: $80
    nop                                           ; $4701: $00
    ret nz                                        ; $4702: $C0

    add b                                         ; $4703: $80
    ldh [rLCDC], a                                ; $4704: $E0 $40
    ldh a, [$FF60]                                ; $4706: $F0 $60
    ld hl, sp+$60                                 ; $4708: $F8 $60
    cp $B8                                        ; $470A: $FE $B8
    rst RST_38                                    ; $470C: $FF
    or b                                          ; $470D: $B0
    rst RST_38                                    ; $470E: $FF
    xor [hl]                                      ; $470F: $AE
    cp a                                          ; $4710: $BF
    ld d, a                                       ; $4711: $57
    rst RST_38                                    ; $4712: $FF
    ccf                                           ; $4713: $3F
    rst RST_38                                    ; $4714: $FF
    dec l                                         ; $4715: $2D
    rst RST_38                                    ; $4716: $FF
    dec h                                         ; $4717: $25
    rst RST_38                                    ; $4718: $FF
    rra                                           ; $4719: $1F
    ld a, a                                       ; $471A: $7F
    rrca                                          ; $471B: $0F
    ccf                                           ; $471C: $3F
    inc bc                                        ; $471D: $03
    rrca                                          ; $471E: $0F
    nop                                           ; $471F: $00
    nop                                           ; $4720: $00
    nop                                           ; $4721: $00
    nop                                           ; $4722: $00
    nop                                           ; $4723: $00
    nop                                           ; $4724: $00
    nop                                           ; $4725: $00
    nop                                           ; $4726: $00
    nop                                           ; $4727: $00
    nop                                           ; $4728: $00
    nop                                           ; $4729: $00
    nop                                           ; $472A: $00
    nop                                           ; $472B: $00
    add b                                         ; $472C: $80
    nop                                           ; $472D: $00
    ldh [$FF80], a                                ; $472E: $E0 $80
    ldh a, [$FF60]                                ; $4730: $F0 $60
    ld hl, sp+$10                                 ; $4732: $F8 $10
    call c, $DC88                                 ; $4734: $DC $88 $DC
    ld [$84CE], sp                                ; $4737: $08 $CE $84
    xor $44                                       ; $473A: $EE $44
    rst RST_30                                    ; $473C: $F7
    ldh [c], a                                    ; $473D: $E2
    rst RST_30                                    ; $473E: $F7
    ldh [c], a                                    ; $473F: $E2
    dec e                                         ; $4740: $1D
    nop                                           ; $4741: $00
    dec e                                         ; $4742: $1D
    ld [$081D], sp                                ; $4743: $08 $1D $08
    dec a                                         ; $4746: $3D
    jr @-$03                                      ; $4747: $18 $FB

    ld de, $B1FF                                  ; $4749: $11 $FF $B1
    rst RST_38                                    ; $474C: $FF
    dec bc                                        ; $474D: $0B
    rra                                           ; $474E: $1F
    nop                                           ; $474F: $00
    nop                                           ; $4750: $00
    nop                                           ; $4751: $00
    nop                                           ; $4752: $00
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
    rst RST_00                                    ; $4760: $C7
    add d                                         ; $4761: $82
    rst RST_00                                    ; $4762: $C7
    add d                                         ; $4763: $82
    rst RST_00                                    ; $4764: $C7
    add d                                         ; $4765: $82
    rst RST_00                                    ; $4766: $C7
    add d                                         ; $4767: $82
    jp nz, $8080                                  ; $4768: $C2 $80 $80

    nop                                           ; $476B: $00
    add b                                         ; $476C: $80
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
    ld bc, $0100                                  ; $4780: $01 $00 $01
    nop                                           ; $4783: $00
    nop                                           ; $4784: $00
    nop                                           ; $4785: $00
    nop                                           ; $4786: $00
    nop                                           ; $4787: $00
    nop                                           ; $4788: $00
    nop                                           ; $4789: $00
    nop                                           ; $478A: $00
    nop                                           ; $478B: $00
    nop                                           ; $478C: $00
    nop                                           ; $478D: $00
    nop                                           ; $478E: $00
    nop                                           ; $478F: $00
    nop                                           ; $4790: $00
    nop                                           ; $4791: $00
    nop                                           ; $4792: $00
    nop                                           ; $4793: $00
    nop                                           ; $4794: $00
    nop                                           ; $4795: $00
    nop                                           ; $4796: $00
    nop                                           ; $4797: $00
    nop                                           ; $4798: $00
    nop                                           ; $4799: $00
    nop                                           ; $479A: $00
    nop                                           ; $479B: $00
    nop                                           ; $479C: $00
    nop                                           ; $479D: $00
    nop                                           ; $479E: $00
    nop                                           ; $479F: $00
    ld bc, $0300                                  ; $47A0: $01 $00 $03
    ld bc, $0207                                  ; $47A3: $01 $07 $02
    rrca                                          ; $47A6: $0F
    rlca                                          ; $47A7: $07
    rra                                           ; $47A8: $1F
    rrca                                          ; $47A9: $0F
    ccf                                           ; $47AA: $3F
    dec e                                         ; $47AB: $1D
    ccf                                           ; $47AC: $3F
    dec d                                         ; $47AD: $15
    rst RST_38                                    ; $47AE: $FF
    add hl, sp                                    ; $47AF: $39
    ld sp, hl                                     ; $47B0: $F9
    xor [hl]                                      ; $47B1: $AE
    ei                                            ; $47B2: $FB
    db $FC                                        ; $47B3: $FC
    db $FD                                        ; $47B4: $FD
    ldh a, [$FFFB]                                ; $47B5: $F0 $FB
    sub h                                         ; $47B7: $94
    push de                                       ; $47B8: $D5
    xor d                                         ; $47B9: $AA
    rst RST_30                                    ; $47BA: $F7
    ld e, c                                       ; $47BB: $59
    ld a, a                                       ; $47BC: $7F
    add hl, de                                    ; $47BD: $19
    ld a, e                                       ; $47BE: $7B
    ld bc, $63F7                                  ; $47BF: $01 $F7 $63
    rst RST_20                                    ; $47C2: $E7
    jp nz, $06DF                                  ; $47C3: $C2 $DF $06

    ccf                                           ; $47C6: $3F
    ld d, $3E                                     ; $47C7: $16 $3E
    nop                                           ; $47C9: $00
    nop                                           ; $47CA: $00
    nop                                           ; $47CB: $00
    nop                                           ; $47CC: $00
    nop                                           ; $47CD: $00
    nop                                           ; $47CE: $00
    nop                                           ; $47CF: $00
    nop                                           ; $47D0: $00
    nop                                           ; $47D1: $00
    nop                                           ; $47D2: $00
    nop                                           ; $47D3: $00
    nop                                           ; $47D4: $00
    nop                                           ; $47D5: $00
    nop                                           ; $47D6: $00
    nop                                           ; $47D7: $00
    nop                                           ; $47D8: $00
    nop                                           ; $47D9: $00
    nop                                           ; $47DA: $00
    nop                                           ; $47DB: $00
    nop                                           ; $47DC: $00
    nop                                           ; $47DD: $00
    nop                                           ; $47DE: $00
    nop                                           ; $47DF: $00
    inc bc                                        ; $47E0: $03
    nop                                           ; $47E1: $00
    inc bc                                        ; $47E2: $03
    ld bc, $0103                                  ; $47E3: $01 $03 $01
    ld bc, $0100                                  ; $47E6: $01 $00 $01
    nop                                           ; $47E9: $00
    ld bc, $0100                                  ; $47EA: $01 $00 $01
    nop                                           ; $47ED: $00
    nop                                           ; $47EE: $00
    nop                                           ; $47EF: $00
    nop                                           ; $47F0: $00
    nop                                           ; $47F1: $00
    inc bc                                        ; $47F2: $03
    nop                                           ; $47F3: $00
    rlca                                          ; $47F4: $07
    ld [bc], a                                    ; $47F5: $02
    rlca                                          ; $47F6: $07
    nop                                           ; $47F7: $00
    nop                                           ; $47F8: $00
    nop                                           ; $47F9: $00
    nop                                           ; $47FA: $00
    nop                                           ; $47FB: $00
    nop                                           ; $47FC: $00
    nop                                           ; $47FD: $00
    nop                                           ; $47FE: $00
    nop                                           ; $47FF: $00
    rst RST_38                                    ; $4800: $FF
    db $FD                                        ; $4801: $FD
    rst RST_38                                    ; $4802: $FF
    rst RST_10                                    ; $4803: $D7
    rst RST_38                                    ; $4804: $FF
    cp e                                          ; $4805: $BB
    rst RST_38                                    ; $4806: $FF
    dec sp                                        ; $4807: $3B
    cp $EB                                        ; $4808: $FE $EB
    db $FD                                        ; $480A: $FD
    xor d                                         ; $480B: $AA
    cp $F8                                        ; $480C: $FE $F8
    db $FC                                        ; $480E: $FC
    ldh a, [$FFF8]                                ; $480F: $F0 $F8
    or b                                          ; $4811: $B0
    ldh a, [$FFE0]                                ; $4812: $F0 $E0
    ldh a, [$FFE0]                                ; $4814: $F0 $E0
    ldh [$FFC0], a                                ; $4816: $E0 $C0
    pop bc                                        ; $4818: $C1
    add b                                         ; $4819: $80
    pop bc                                        ; $481A: $C1
    add b                                         ; $481B: $80
    add b                                         ; $481C: $80
    nop                                           ; $481D: $00
    add b                                         ; $481E: $80
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
    ld a, a                                       ; $483C: $7F
    nop                                           ; $483D: $00
    rst RST_38                                    ; $483E: $FF
    ld e, a                                       ; $483F: $5F
    rst RST_38                                    ; $4840: $FF
    db $E3                                        ; $4841: $E3
    rst RST_38                                    ; $4842: $FF
    ld e, h                                       ; $4843: $5C
    rst RST_38                                    ; $4844: $FF
    cp d                                          ; $4845: $BA
    rst RST_38                                    ; $4846: $FF
    cpl                                           ; $4847: $2F
    rst RST_38                                    ; $4848: $FF
    ld c, a                                       ; $4849: $4F
    rst RST_38                                    ; $484A: $FF
    ld a, e                                       ; $484B: $7B
    rst RST_38                                    ; $484C: $FF
    ld d, e                                       ; $484D: $53
    ld a, a                                       ; $484E: $7F
    ld a, $3F                                     ; $484F: $3E $3F
    nop                                           ; $4851: $00
    rra                                           ; $4852: $1F
    inc c                                         ; $4853: $0C
    rra                                           ; $4854: $1F
    add hl, bc                                    ; $4855: $09
    ccf                                           ; $4856: $3F
    dec d                                         ; $4857: $15
    ccf                                           ; $4858: $3F
    db $10                                        ; $4859: $10
    ld hl, sp+$30                                 ; $485A: $F8 $30
    ldh a, [$FFA0]                                ; $485C: $F0 $A0
    ldh [rP1], a                                  ; $485E: $E0 $00
    add b                                         ; $4860: $80
    nop                                           ; $4861: $00
    ret nz                                        ; $4862: $C0

    add b                                         ; $4863: $80
    ldh [rLCDC], a                                ; $4864: $E0 $40
    ldh a, [rP1]                                  ; $4866: $F0 $00
    ld hl, sp+$60                                 ; $4868: $F8 $60
    ld hl, sp-$20                                 ; $486A: $F8 $E0
    db $FC                                        ; $486C: $FC
    ld l, b                                       ; $486D: $68
    db $FC                                        ; $486E: $FC
    ld c, b                                       ; $486F: $48
    db $FC                                        ; $4870: $FC
    ret z                                         ; $4871: $C8

    call c, $CE88                                 ; $4872: $DC $88 $CE
    add h                                         ; $4875: $84
    adc a                                         ; $4876: $8F
    inc b                                         ; $4877: $04
    rlca                                          ; $4878: $07
    inc bc                                        ; $4879: $03
    inc bc                                        ; $487A: $03
    nop                                           ; $487B: $00
    nop                                           ; $487C: $00
    nop                                           ; $487D: $00
    nop                                           ; $487E: $00
    nop                                           ; $487F: $00
    nop                                           ; $4880: $00
    nop                                           ; $4881: $00
    nop                                           ; $4882: $00
    nop                                           ; $4883: $00
    nop                                           ; $4884: $00
    nop                                           ; $4885: $00
    nop                                           ; $4886: $00
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
    inc a                                         ; $489C: $3C
    nop                                           ; $489D: $00
    rst RST_38                                    ; $489E: $FF
    inc a                                         ; $489F: $3C
    add b                                         ; $48A0: $80
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
    nop                                           ; $48AE: $00
    nop                                           ; $48AF: $00
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
    nop                                           ; $48BD: $00
    nop                                           ; $48BE: $00
    nop                                           ; $48BF: $00
    nop                                           ; $48C0: $00
    nop                                           ; $48C1: $00
    nop                                           ; $48C2: $00
    nop                                           ; $48C3: $00
    nop                                           ; $48C4: $00
    nop                                           ; $48C5: $00
    nop                                           ; $48C6: $00
    nop                                           ; $48C7: $00
    jr jr_011_48CA                                ; $48C8: $18 $00

jr_011_48CA:
    inc e                                         ; $48CA: $1C
    ld [$001C], sp                                ; $48CB: $08 $1C $00
    ld e, $0C                                     ; $48CE: $1E $0C
    rrca                                          ; $48D0: $0F
    ld b, $67                                     ; $48D1: $06 $67
    ld [bc], a                                    ; $48D3: $02
    ld [hl], e                                    ; $48D4: $73
    jr nz, jr_011_4952                            ; $48D5: $20 $7B

    ld bc, $193F                                  ; $48D7: $01 $3F $19
    ccf                                           ; $48DA: $3F
    ld e, $1F                                     ; $48DB: $1E $1F
    inc bc                                        ; $48DD: $03
    inc bc                                        ; $48DE: $03
    nop                                           ; $48DF: $00
    ld c, $00                                     ; $48E0: $0E $00
    ld a, [hl]                                    ; $48E2: $7E
    inc c                                         ; $48E3: $0C
    cp $7C                                        ; $48E4: $FE $7C
    rst RST_38                                    ; $48E6: $FF
    sbc d                                         ; $48E7: $9A
    cp a                                          ; $48E8: $BF
    ld e, a                                       ; $48E9: $5F
    jp hl                                         ; $48EA: $E9


    cp a                                          ; $48EB: $BF
    ld [hl], $C9                                  ; $48EC: $36 $C9
    reti                                          ; $48EE: $D9


    ld h, $FF                                     ; $48EF: $26 $FF
    pop bc                                        ; $48F1: $C1
    rst RST_38                                    ; $48F2: $FF
    rst RST_38                                    ; $48F3: $FF
    rst RST_38                                    ; $48F4: $FF
    dec sp                                        ; $48F5: $3B
    ccf                                           ; $48F6: $3F
    rra                                           ; $48F7: $1F
    rra                                           ; $48F8: $1F
    rlca                                          ; $48F9: $07
    rlca                                          ; $48FA: $07
    ld bc, $0003                                  ; $48FB: $01 $03 $00
    ld bc, $0000                                  ; $48FE: $01 $00 $00
    nop                                           ; $4901: $00
    nop                                           ; $4902: $00
    nop                                           ; $4903: $00
    nop                                           ; $4904: $00
    nop                                           ; $4905: $00
    add b                                         ; $4906: $80
    nop                                           ; $4907: $00
    ldh [$FF80], a                                ; $4908: $E0 $80
    ld hl, sp-$20                                 ; $490A: $F8 $E0
    db $FC                                        ; $490C: $FC

jr_011_490D:
    jr c, jr_011_490D                             ; $490D: $38 $FE

    db $F4                                        ; $490F: $F4
    cp $DC                                        ; $4910: $FE $DC
    rst RST_38                                    ; $4912: $FF
    ld c, [hl]                                    ; $4913: $4E
    rst RST_38                                    ; $4914: $FF
    db $F4                                        ; $4915: $F4
    rst RST_38                                    ; $4916: $FF
    ld a, $FF                                     ; $4917: $3E $FF
    or $FF                                        ; $4919: $F6 $FF
    ld c, $3F                                     ; $491B: $0E $3F
    ei                                            ; $491D: $FB
    sbc a                                         ; $491E: $9F
    ld a, a                                       ; $491F: $7F
    jr jr_011_4922                                ; $4920: $18 $00

jr_011_4922:
    inc e                                         ; $4922: $1C
    ld [$081C], sp                                ; $4923: $08 $1C $08
    ld c, $04                                     ; $4926: $0E $04
    ld c, $04                                     ; $4928: $0E $04
    ld c, $04                                     ; $492A: $0E $04
    add a                                         ; $492C: $87
    ld [bc], a                                    ; $492D: $02
    rst RST_00                                    ; $492E: $C7
    add d                                         ; $492F: $82
    rst RST_00                                    ; $4930: $C7
    add d                                         ; $4931: $82
    rst RST_00                                    ; $4932: $C7
    add d                                         ; $4933: $82
    rst RST_00                                    ; $4934: $C7

jr_011_4935:
    ld [bc], a                                    ; $4935: $02
    adc $84                                       ; $4936: $CE $84
    cp $44                                        ; $4938: $FE $44
    db $FC                                        ; $493A: $FC
    jr c, jr_011_4935                             ; $493B: $38 $F8

    nop                                           ; $493D: $00
    ret nz                                        ; $493E: $C0

    nop                                           ; $493F: $00
    ld a, a                                       ; $4940: $7F
    or $3F                                        ; $4941: $F6 $3F
    cp $BF                                        ; $4943: $FE $BF
    ld c, l                                       ; $4945: $4D
    ld a, a                                       ; $4946: $7F
    scf                                           ; $4947: $37
    ld a, a                                       ; $4948: $7F
    ccf                                           ; $4949: $3F
    rst RST_38                                    ; $494A: $FF
    ld a, a                                       ; $494B: $7F
    rst RST_38                                    ; $494C: $FF
    dec l                                         ; $494D: $2D
    rst RST_38                                    ; $494E: $FF
    ld a, [hl]                                    ; $494F: $7E
    rst RST_38                                    ; $4950: $FF
    ld e, d                                       ; $4951: $5A

jr_011_4952:
    rst RST_38                                    ; $4952: $FF
    ld c, d                                       ; $4953: $4A
    ld a, a                                       ; $4954: $7F
    ccf                                           ; $4955: $3F
    ccf                                           ; $4956: $3F
    ld a, [bc]                                    ; $4957: $0A
    rrca                                          ; $4958: $0F
    inc bc                                        ; $4959: $03
    inc bc                                        ; $495A: $03
    ld bc, $0001                                  ; $495B: $01 $01 $00
    ld bc, $E000                                  ; $495E: $01 $00 $E0
    add b                                         ; $4961: $80
    ldh a, [$FF80]                                ; $4962: $F0 $80
    ld hl, sp-$40                                 ; $4964: $F8 $C0
    ld hl, sp+$60                                 ; $4966: $F8 $60
    db $FC                                        ; $4968: $FC
    ld h, b                                       ; $4969: $60
    cp $40                                        ; $496A: $FE $40
    xor $40                                       ; $496C: $EE $40
    xor $40                                       ; $496E: $EE $40
    db $EC                                        ; $4970: $EC
    ret nz                                        ; $4971: $C0

    call c, $1800                                 ; $4972: $DC $00 $18
    nop                                           ; $4975: $00
    jr jr_011_4978                                ; $4976: $18 $00

jr_011_4978:
    nop                                           ; $4978: $00
    nop                                           ; $4979: $00
    nop                                           ; $497A: $00
    nop                                           ; $497B: $00
    nop                                           ; $497C: $00
    nop                                           ; $497D: $00
    nop                                           ; $497E: $00
    nop                                           ; $497F: $00
    ld bc, $0300                                  ; $4980: $01 $00 $03
    ld bc, $0003                                  ; $4983: $01 $03 $00
    nop                                           ; $4986: $00
    nop                                           ; $4987: $00
    nop                                           ; $4988: $00
    nop                                           ; $4989: $00
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
    ld bc, $0700                                  ; $49A0: $01 $00 $07
    ld bc, $070F                                  ; $49A3: $01 $0F $07
    rra                                           ; $49A6: $1F
    ld [$073F], sp                                ; $49A7: $08 $3F $07
    ccf                                           ; $49AA: $3F
    rra                                           ; $49AB: $1F
    ld a, a                                       ; $49AC: $7F
    add hl, sp                                    ; $49AD: $39
    ld a, a                                       ; $49AE: $7F
    ccf                                           ; $49AF: $3F
    ld a, a                                       ; $49B0: $7F
    dec h                                         ; $49B1: $25
    ccf                                           ; $49B2: $3F
    rla                                           ; $49B3: $17
    ccf                                           ; $49B4: $3F
    ld c, $3F                                     ; $49B5: $0E $3F
    ld de, $173E                                  ; $49B7: $11 $3E $17
    ld sp, hl                                     ; $49BA: $F9
    ld e, $FA                                     ; $49BB: $1E $FA
    ld l, h                                       ; $49BD: $6C
    ld a, [$7B7C]                                 ; $49BE: $FA $7C $7B
    inc a                                         ; $49C1: $3C
    ld a, [hl]                                    ; $49C2: $7E
    dec h                                         ; $49C3: $25
    ld [hl], l                                    ; $49C4: $75
    ld a, [hl+]                                   ; $49C5: $2A
    dec a                                         ; $49C6: $3D

jr_011_49C7:
    ld d, $1F                                     ; $49C7: $16 $1F
    ld b, $06                                     ; $49C9: $06 $06
    nop                                           ; $49CB: $00
    nop                                           ; $49CC: $00
    nop                                           ; $49CD: $00
    nop                                           ; $49CE: $00
    nop                                           ; $49CF: $00
    nop                                           ; $49D0: $00
    nop                                           ; $49D1: $00
    nop                                           ; $49D2: $00
    nop                                           ; $49D3: $00
    nop                                           ; $49D4: $00
    nop                                           ; $49D5: $00
    nop                                           ; $49D6: $00
    nop                                           ; $49D7: $00
    nop                                           ; $49D8: $00
    nop                                           ; $49D9: $00
    nop                                           ; $49DA: $00
    nop                                           ; $49DB: $00
    nop                                           ; $49DC: $00
    nop                                           ; $49DD: $00
    nop                                           ; $49DE: $00
    nop                                           ; $49DF: $00
    rlca                                          ; $49E0: $07
    nop                                           ; $49E1: $00
    rra                                           ; $49E2: $1F
    rlca                                          ; $49E3: $07
    ccf                                           ; $49E4: $3F
    ld e, $3F                                     ; $49E5: $1E $3F
    dec d                                         ; $49E7: $15
    rst RST_38                                    ; $49E8: $FF
    dec sp                                        ; $49E9: $3B
    rst RST_38                                    ; $49EA: $FF
    ldh a, [c]                                    ; $49EB: $F2
    rst RST_38                                    ; $49EC: $FF
    inc d                                         ; $49ED: $14
    rst RST_38                                    ; $49EE: $FF
    rst RST_20                                    ; $49EF: $E7
    rst RST_38                                    ; $49F0: $FF
    ld [hl], l                                    ; $49F1: $75
    rst RST_38                                    ; $49F2: $FF
    db $D3                                        ; $49F3: $D3
    ei                                            ; $49F4: $FB
    ret nc                                        ; $49F5: $D0

    ld sp, hl                                     ; $49F6: $F9
    sub b                                         ; $49F7: $90
    cp c                                          ; $49F8: $B9
    ld d, b                                       ; $49F9: $50
    cp e                                          ; $49FA: $BB
    ld d, c                                       ; $49FB: $51
    cp a                                          ; $49FC: $BF
    reti                                          ; $49FD: $D9


    ld a, a                                       ; $49FE: $7F
    sbc e                                         ; $49FF: $9B
    rst RST_38                                    ; $4A00: $FF
    inc c                                         ; $4A01: $0C
    ld a, [hl]                                    ; $4A02: $7E
    inc h                                         ; $4A03: $24
    halt                                          ; $4A04: $76
    jr nz, jr_011_4A77                            ; $4A05: $20 $70

    jr nz, jr_011_4A81                            ; $4A07: $20 $78

    jr nc, jr_011_49C7                            ; $4A09: $30 $BC

    jr jr_011_4A69                                ; $4A0B: $18 $5C

    adc b                                         ; $4A0D: $88
    adc h                                         ; $4A0E: $8C
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
    rst RST_38                                    ; $4A20: $FF
    ldh a, [rIE]                                  ; $4A21: $F0 $FF
    or $FF                                        ; $4A23: $F6 $FF
    cp [hl]                                       ; $4A25: $BE
    rst RST_38                                    ; $4A26: $FF
    ld [hl], $FF                                  ; $4A27: $36 $FF
    db $E4                                        ; $4A29: $E4
    rst RST_38                                    ; $4A2A: $FF
    inc c                                         ; $4A2B: $0C
    db $FD                                        ; $4A2C: $FD
    ret z                                         ; $4A2D: $C8

    db $FD                                        ; $4A2E: $FD
    sbc b                                         ; $4A2F: $98
    ei                                            ; $4A30: $FB
    ld d, c                                       ; $4A31: $51
    di                                            ; $4A32: $F3
    ld bc, $0287                                  ; $4A33: $01 $87 $02
    rlca                                          ; $4A36: $07
    ld [bc], a                                    ; $4A37: $02
    ld e, $04                                     ; $4A38: $1E $04
    inc a                                         ; $4A3A: $3C
    jr jr_011_4A55                                ; $4A3B: $18 $18

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
    nop                                           ; $4A50: $00
    nop                                           ; $4A51: $00
    nop                                           ; $4A52: $00
    nop                                           ; $4A53: $00
    nop                                           ; $4A54: $00

jr_011_4A55:
    nop                                           ; $4A55: $00
    ret nz                                        ; $4A56: $C0

    nop                                           ; $4A57: $00
    ldh a, [$FFC0]                                ; $4A58: $F0 $C0
    ld hl, sp+$30                                 ; $4A5A: $F8 $30
    db $FC                                        ; $4A5C: $FC
    ret z                                         ; $4A5D: $C8

    cp $A4                                        ; $4A5E: $FE $A4
    nop                                           ; $4A60: $00
    nop                                           ; $4A61: $00
    nop                                           ; $4A62: $00
    nop                                           ; $4A63: $00
    nop                                           ; $4A64: $00
    nop                                           ; $4A65: $00
    nop                                           ; $4A66: $00
    nop                                           ; $4A67: $00
    nop                                           ; $4A68: $00

jr_011_4A69:
    nop                                           ; $4A69: $00
    nop                                           ; $4A6A: $00
    nop                                           ; $4A6B: $00
    nop                                           ; $4A6C: $00
    nop                                           ; $4A6D: $00
    add b                                         ; $4A6E: $80
    nop                                           ; $4A6F: $00
    add b                                         ; $4A70: $80
    nop                                           ; $4A71: $00
    ret nz                                        ; $4A72: $C0

    add b                                         ; $4A73: $80
    ret nz                                        ; $4A74: $C0

    add b                                         ; $4A75: $80
    ret nz                                        ; $4A76: $C0

jr_011_4A77:
    add b                                         ; $4A77: $80
    ret nz                                        ; $4A78: $C0

    add b                                         ; $4A79: $80
    ret nz                                        ; $4A7A: $C0

    add b                                         ; $4A7B: $80
    add b                                         ; $4A7C: $80
    nop                                           ; $4A7D: $00
    add b                                         ; $4A7E: $80
    nop                                           ; $4A7F: $00
    nop                                           ; $4A80: $00

jr_011_4A81:
    nop                                           ; $4A81: $00
    nop                                           ; $4A82: $00
    nop                                           ; $4A83: $00
    inc bc                                        ; $4A84: $03
    nop                                           ; $4A85: $00
    rlca                                          ; $4A86: $07
    nop                                           ; $4A87: $00
    rrca                                          ; $4A88: $0F
    inc bc                                        ; $4A89: $03
    rra                                           ; $4A8A: $1F
    dec bc                                        ; $4A8B: $0B
    ccf                                           ; $4A8C: $3F
    ld de, $277F                                  ; $4A8D: $11 $7F $27
    ld a, a                                       ; $4A90: $7F
    cpl                                           ; $4A91: $2F
    rst RST_38                                    ; $4A92: $FF
    ld d, [hl]                                    ; $4A93: $56
    rst RST_38                                    ; $4A94: $FF
    ld e, a                                       ; $4A95: $5F
    rst RST_38                                    ; $4A96: $FF
    ld e, c                                       ; $4A97: $59
    rst RST_38                                    ; $4A98: $FF
    ld l, l                                       ; $4A99: $6D
    rst RST_38                                    ; $4A9A: $FF
    ld [hl], e                                    ; $4A9B: $73
    ld a, a                                       ; $4A9C: $7F
    jr z, jr_011_4B1E                             ; $4A9D: $28 $7F

    ld a, $FF                                     ; $4A9F: $3E $FF
    ld [hl], $3F                                  ; $4AA1: $36 $3F
    rla                                           ; $4AA3: $17
    ccf                                           ; $4AA4: $3F
    dec d                                         ; $4AA5: $15
    ccf                                           ; $4AA6: $3F
    dec de                                        ; $4AA7: $1B
    rra                                           ; $4AA8: $1F
    dec bc                                        ; $4AA9: $0B
    rra                                           ; $4AAA: $1F
    dec bc                                        ; $4AAB: $0B
    rrca                                          ; $4AAC: $0F
    dec b                                         ; $4AAD: $05
    rlca                                          ; $4AAE: $07
    ld bc, $0003                                  ; $4AAF: $01 $03 $00
    nop                                           ; $4AB2: $00
    nop                                           ; $4AB3: $00
    nop                                           ; $4AB4: $00
    nop                                           ; $4AB5: $00
    nop                                           ; $4AB6: $00
    nop                                           ; $4AB7: $00
    nop                                           ; $4AB8: $00
    nop                                           ; $4AB9: $00
    nop                                           ; $4ABA: $00
    nop                                           ; $4ABB: $00
    nop                                           ; $4ABC: $00
    nop                                           ; $4ABD: $00
    nop                                           ; $4ABE: $00
    nop                                           ; $4ABF: $00
    nop                                           ; $4AC0: $00
    nop                                           ; $4AC1: $00
    ld hl, sp+$00                                 ; $4AC2: $F8 $00
    cp $F8                                        ; $4AC4: $FE $F8
    rst RST_38                                    ; $4AC6: $FF
    ld b, $E7                                     ; $4AC7: $06 $E7
    add c                                         ; $4AC9: $81
    ld sp, hl                                     ; $4ACA: $F9
    ldh [$FFFC], a                                ; $4ACB: $E0 $FC

jr_011_4ACD:
    jr c, jr_011_4ACD                             ; $4ACD: $38 $FE

    adc h                                         ; $4ACF: $8C
    cp $C0                                        ; $4AD0: $FE $C0
    cp $54                                        ; $4AD2: $FE $54
    rst RST_38                                    ; $4AD4: $FF
    ld e, b                                       ; $4AD5: $58
    rst RST_38                                    ; $4AD6: $FF
    rst RST_00                                    ; $4AD7: $C7
    rst RST_20                                    ; $4AD8: $E7
    ld b, c                                       ; $4AD9: $41
    jp $FF80                                      ; $4ADA: $C3 $80 $FF


    inc bc                                        ; $4ADD: $03
    rst RST_38                                    ; $4ADE: $FF
    rst RST_38                                    ; $4ADF: $FF
    rst RST_38                                    ; $4AE0: $FF
    ld bc, $B8C7                                  ; $4AE1: $01 $C7 $B8
    ld a, [$FDCC]                                 ; $4AE4: $FA $CC $FD
    or $FE                                        ; $4AE7: $F6 $FE
    ld e, e                                       ; $4AE9: $5B
    cp $7B                                        ; $4AEA: $FE $7B
    rst RST_38                                    ; $4AEC: $FF
    ret                                           ; $4AED: $C9


    rst RST_38                                    ; $4AEE: $FF
    rst RST_10                                    ; $4AEF: $D7
    rst RST_38                                    ; $4AF0: $FF
    ldh [$FFE1], a                                ; $4AF1: $E0 $E1
    nop                                           ; $4AF3: $00
    ld bc, $0000                                  ; $4AF4: $01 $00 $00
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
    nop                                           ; $4B01: $00
    nop                                           ; $4B02: $00
    nop                                           ; $4B03: $00
    nop                                           ; $4B04: $00
    nop                                           ; $4B05: $00
    add b                                         ; $4B06: $80
    nop                                           ; $4B07: $00
    ret nz                                        ; $4B08: $C0

    add b                                         ; $4B09: $80
    ldh [rLCDC], a                                ; $4B0A: $E0 $40
    ld [hl], b                                    ; $4B0C: $70
    jr nz, jr_011_4B7F                            ; $4B0D: $20 $70

    jr nz, jr_011_4B31                            ; $4B0F: $20 $20

    nop                                           ; $4B11: $00
    nop                                           ; $4B12: $00
    nop                                           ; $4B13: $00
    nop                                           ; $4B14: $00
    nop                                           ; $4B15: $00
    add b                                         ; $4B16: $80
    nop                                           ; $4B17: $00
    ldh [rP1], a                                  ; $4B18: $E0 $00
    rst RST_20                                    ; $4B1A: $E7
    ret nz                                        ; $4B1B: $C0

    rst RST_08                                    ; $4B1C: $CF
    add [hl]                                      ; $4B1D: $86

jr_011_4B1E:
    cp $0C                                        ; $4B1E: $FE $0C
    ldh a, [$FFE0]                                ; $4B20: $F0 $E0
    add sp, $00                                   ; $4B22: $E8 $00
    inc d                                         ; $4B24: $14
    ld [$102E], sp                                ; $4B25: $08 $2E $10
    di                                            ; $4B28: $F3
    ld c, $1F                                     ; $4B29: $0E $1F
    or $F6                                        ; $4B2B: $F6 $F6
    add sp, -$02                                  ; $4B2D: $E8 $FE
    ld h, h                                       ; $4B2F: $64
    db $FC                                        ; $4B30: $FC

jr_011_4B31:
    ld hl, sp-$08                                 ; $4B31: $F8 $F8
    ret nz                                        ; $4B33: $C0

    ret nz                                        ; $4B34: $C0

    nop                                           ; $4B35: $00
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
    ld a, l                                       ; $4B40: $7D
    nop                                           ; $4B41: $00
    ld a, a                                       ; $4B42: $7F
    dec a                                         ; $4B43: $3D
    ccf                                           ; $4B44: $3F
    ld c, $7F                                     ; $4B45: $0E $7F
    inc hl                                        ; $4B47: $23
    ld l, a                                       ; $4B48: $6F
    dec d                                         ; $4B49: $15
    ei                                            ; $4B4A: $FB
    ld l, [hl]                                    ; $4B4B: $6E
    call Call_011_7372                            ; $4B4C: $CD $72 $73
    inc c                                         ; $4B4F: $0C
    cpl                                           ; $4B50: $2F
    inc de                                        ; $4B51: $13
    inc sp                                        ; $4B52: $33
    nop                                           ; $4B53: $00
    nop                                           ; $4B54: $00
    nop                                           ; $4B55: $00
    nop                                           ; $4B56: $00
    nop                                           ; $4B57: $00
    nop                                           ; $4B58: $00
    nop                                           ; $4B59: $00
    nop                                           ; $4B5A: $00
    nop                                           ; $4B5B: $00
    nop                                           ; $4B5C: $00
    nop                                           ; $4B5D: $00
    nop                                           ; $4B5E: $00
    nop                                           ; $4B5F: $00
    rra                                           ; $4B60: $1F
    nop                                           ; $4B61: $00
    ld a, a                                       ; $4B62: $7F
    dec e                                         ; $4B63: $1D
    rst RST_38                                    ; $4B64: $FF
    ld h, [hl]                                    ; $4B65: $66
    rst RST_38                                    ; $4B66: $FF
    ld e, c                                       ; $4B67: $59
    rst RST_38                                    ; $4B68: $FF
    or [hl]                                       ; $4B69: $B6
    rst RST_38                                    ; $4B6A: $FF
    cp d                                          ; $4B6B: $BA
    rst RST_38                                    ; $4B6C: $FF
    ld c, [hl]                                    ; $4B6D: $4E
    rst RST_38                                    ; $4B6E: $FF
    ld l, d                                       ; $4B6F: $6A
    rst RST_38                                    ; $4B70: $FF
    cp h                                          ; $4B71: $BC
    cp $D4                                        ; $4B72: $FE $D4
    db $FC                                        ; $4B74: $FC
    ret c                                         ; $4B75: $D8

    ld hl, sp+$70                                 ; $4B76: $F8 $70
    ld sp, hl                                     ; $4B78: $F9
    jr nc, @+$33                                  ; $4B79: $30 $31

    nop                                           ; $4B7B: $00
    nop                                           ; $4B7C: $00
    nop                                           ; $4B7D: $00
    nop                                           ; $4B7E: $00

jr_011_4B7F:
    nop                                           ; $4B7F: $00
    rlca                                          ; $4B80: $07
    nop                                           ; $4B81: $00
    ccf                                           ; $4B82: $3F
    rlca                                          ; $4B83: $07
    rst RST_38                                    ; $4B84: $FF
    inc a                                         ; $4B85: $3C
    rst RST_38                                    ; $4B86: $FF
    rst RST_38                                    ; $4B87: $FF
    rst RST_38                                    ; $4B88: $FF
    xor [hl]                                      ; $4B89: $AE
    rst RST_38                                    ; $4B8A: $FF
    db $DB                                        ; $4B8B: $DB
    rst RST_38                                    ; $4B8C: $FF
    sub e                                         ; $4B8D: $93
    rst RST_38                                    ; $4B8E: $FF
    sbc $BF                                       ; $4B8F: $DE $BF
    call nc, $8F5F                                ; $4B91: $D4 $5F $8F
    sbc a                                         ; $4B94: $9F
    nop                                           ; $4B95: $00

jr_011_4B96:
    ld e, $08                                     ; $4B96: $1E $08
    inc a                                         ; $4B98: $3C
    jr jr_011_4B96                                ; $4B99: $18 $FB

    db $10                                        ; $4B9B: $10
    rst RST_38                                    ; $4B9C: $FF
    or d                                          ; $4B9D: $B2
    rst RST_30                                    ; $4B9E: $F7
    nop                                           ; $4B9F: $00
    ret nz                                        ; $4BA0: $C0

    nop                                           ; $4BA1: $00
    ldh [$FFC0], a                                ; $4BA2: $E0 $C0
    ldh a, [rNR41]                                ; $4BA4: $F0 $20
    ld hl, sp-$70                                 ; $4BA6: $F8 $90
    ld hl, sp-$70                                 ; $4BA8: $F8 $90
    call c, $FC88                                 ; $4BAA: $DC $88 $FC
    ret z                                         ; $4BAD: $C8

    cp $B4                                        ; $4BAE: $FE $B4
    cp $F4                                        ; $4BB0: $FE $F4
    rst RST_38                                    ; $4BB2: $FF
    ld [hl-], a                                   ; $4BB3: $32
    ld [hl], a                                    ; $4BB4: $77
    ld [hl+], a                                   ; $4BB5: $22
    rst RST_30                                    ; $4BB6: $F7
    ld h, d                                       ; $4BB7: $62
    rst RST_20                                    ; $4BB8: $E7
    ld b, d                                       ; $4BB9: $42
    ldh [c], a                                    ; $4BBA: $E2
    ret nz                                        ; $4BBB: $C0

    ret nz                                        ; $4BBC: $C0

    nop                                           ; $4BBD: $00
    nop                                           ; $4BBE: $00
    nop                                           ; $4BBF: $00
    jr c, jr_011_4BC2                             ; $4BC0: $38 $00

jr_011_4BC2:
    rst RST_38                                    ; $4BC2: $FF
    jr c, @+$01                                   ; $4BC3: $38 $FF

    cp $FF                                        ; $4BC5: $FE $FF
    ld l, a                                       ; $4BC7: $6F
    rst RST_38                                    ; $4BC8: $FF
    ld [hl], l                                    ; $4BC9: $75
    rst RST_38                                    ; $4BCA: $FF
    sbc l                                         ; $4BCB: $9D
    cp $D5                                        ; $4BCC: $FE $D5
    db $FD                                        ; $4BCE: $FD
    ld a, d                                       ; $4BCF: $7A
    cp $A8                                        ; $4BD0: $FE $A8
    db $FC                                        ; $4BD2: $FC
    or b                                          ; $4BD3: $B0
    pop af                                        ; $4BD4: $F1
    ldh [$FFF3], a                                ; $4BD5: $E0 $F3
    ld h, c                                       ; $4BD7: $61
    ld h, e                                       ; $4BD8: $63
    nop                                           ; $4BD9: $00
    nop                                           ; $4BDA: $00
    nop                                           ; $4BDB: $00
    nop                                           ; $4BDC: $00
    nop                                           ; $4BDD: $00
    nop                                           ; $4BDE: $00
    nop                                           ; $4BDF: $00
    ld bc, $FB00                                  ; $4BE0: $01 $00 $FB
    ld bc, $7BFF                                  ; $4BE3: $01 $FF $7B
    ld a, a                                       ; $4BE6: $7F
    inc e                                         ; $4BE7: $1C
    rst RST_38                                    ; $4BE8: $FF
    ld b, [hl]                                    ; $4BE9: $46
    rst RST_18                                    ; $4BEA: $DF
    dec hl                                        ; $4BEB: $2B
    rst RST_30                                    ; $4BEC: $F7
    db $DD                                        ; $4BED: $DD
    sbc e                                         ; $4BEE: $9B
    push hl                                       ; $4BEF: $E5
    rst RST_20                                    ; $4BF0: $E7
    jr jr_011_4C52                                ; $4BF1: $18 $5F

    ld h, $66                                     ; $4BF3: $26 $66
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
    ld bc, $0100                                  ; $4C00: $01 $00 $01
    nop                                           ; $4C03: $00
    ld bc, $0000                                  ; $4C04: $01 $00 $00
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
    nop                                           ; $4C20: $00
    nop                                           ; $4C21: $00
    nop                                           ; $4C22: $00
    nop                                           ; $4C23: $00
    inc bc                                        ; $4C24: $03
    nop                                           ; $4C25: $00
    rra                                           ; $4C26: $1F
    inc bc                                        ; $4C27: $03
    ccf                                           ; $4C28: $3F
    rra                                           ; $4C29: $1F
    ld a, a                                       ; $4C2A: $7F
    ld a, [hl-]                                   ; $4C2B: $3A
    ld a, a                                       ; $4C2C: $7F
    daa                                           ; $4C2D: $27
    ld a, [$CD6F]                                 ; $4C2E: $FA $6F $CD
    ld [hl], d                                    ; $4C31: $72
    ld [hl], d                                    ; $4C32: $72
    inc c                                         ; $4C33: $0C
    inc l                                         ; $4C34: $2C
    db $10                                        ; $4C35: $10
    inc de                                        ; $4C36: $13
    nop                                           ; $4C37: $00
    rlca                                          ; $4C38: $07
    inc bc                                        ; $4C39: $03
    rrca                                          ; $4C3A: $0F
    ld b, $1E                                     ; $4C3B: $06 $1E
    inc c                                         ; $4C3D: $0C
    inc e                                         ; $4C3E: $1C
    nop                                           ; $4C3F: $00
    add b                                         ; $4C40: $80
    nop                                           ; $4C41: $00
    rst RST_38                                    ; $4C42: $FF
    nop                                           ; $4C43: $00
    rst RST_38                                    ; $4C44: $FF
    ld a, a                                       ; $4C45: $7F
    rst RST_38                                    ; $4C46: $FF
    db $DB                                        ; $4C47: $DB
    rst RST_38                                    ; $4C48: $FF
    di                                            ; $4C49: $F3
    ld a, a                                       ; $4C4A: $7F
    sbc $BF                                       ; $4C4B: $DE $BF
    ld e, d                                       ; $4C4D: $5A
    ld e, a                                       ; $4C4E: $5F
    cpl                                           ; $4C4F: $2F
    ld l, a                                       ; $4C50: $6F
    inc de                                        ; $4C51: $13

jr_011_4C52:
    di                                            ; $4C52: $F3
    ld l, l                                       ; $4C53: $6D
    rst RST_38                                    ; $4C54: $FF
    ldh a, [rIE]                                  ; $4C55: $F0 $FF
    rlca                                          ; $4C57: $07
    ccf                                           ; $4C58: $3F
    inc e                                         ; $4C59: $1C
    ld a, h                                       ; $4C5A: $7C
    jr c, jr_011_4CD5                             ; $4C5B: $38 $78

    jr nc, jr_011_4C8F                            ; $4C5D: $30 $30

    nop                                           ; $4C5F: $00
    jp $FF80                                      ; $4C60: $C3 $80 $FF


    jp $D5FF                                      ; $4C63: $C3 $FF $D5


jr_011_4C66:
    rst RST_38                                    ; $4C66: $FF
    ld l, a                                       ; $4C67: $6F
    rst RST_38                                    ; $4C68: $FF
    ld l, d                                       ; $4C69: $6A
    rst RST_38                                    ; $4C6A: $FF
    ld [$D5FB], a                                 ; $4C6B: $EA $FB $D5
    rst RST_38                                    ; $4C6E: $FF
    ldh a, [$FFFB]                                ; $4C6F: $F0 $FB
    jr nc, jr_011_4C66                            ; $4C71: $30 $F3

    pop hl                                        ; $4C73: $E1
    db $E3                                        ; $4C74: $E3
    ld bc, $0307                                  ; $4C75: $01 $07 $03
    rrca                                          ; $4C78: $0F
    ld [bc], a                                    ; $4C79: $02
    rra                                           ; $4C7A: $1F
    ld b, $3E                                     ; $4C7B: $06 $3E
    db $10                                        ; $4C7D: $10
    ld sp, $F000                                  ; $4C7E: $31 $00 $F0
    nop                                           ; $4C81: $00
    db $FC                                        ; $4C82: $FC
    ldh a, [$FFFE]                                ; $4C83: $F0 $FE
    call z, Call_011_72FF                         ; $4C85: $CC $FF $72
    rst RST_38                                    ; $4C88: $FF
    ld sp, hl                                     ; $4C89: $F9
    db $FD                                        ; $4C8A: $FD
    ret c                                         ; $4C8B: $D8

    db $FD                                        ; $4C8C: $FD
    ld d, b                                       ; $4C8D: $50
    db $FC                                        ; $4C8E: $FC

jr_011_4C8F:
    ld hl, sp-$02                                 ; $4C8F: $F8 $FE
    call nc, Call_000_3CFE                        ; $4C91: $D4 $FE $3C
    cp $94                                        ; $4C94: $FE $94
    sbc [hl]                                      ; $4C96: $9E
    inc c                                         ; $4C97: $0C
    sbc [hl]                                      ; $4C98: $9E
    inc c                                         ; $4C99: $0C
    inc e                                         ; $4C9A: $1C
    ld [$183C], sp                                ; $4C9B: $08 $3C $18
    ld hl, sp+$10                                 ; $4C9E: $F8 $10
    add b                                         ; $4CA0: $80
    nop                                           ; $4CA1: $00
    ret nz                                        ; $4CA2: $C0

    add b                                         ; $4CA3: $80
    ret nz                                        ; $4CA4: $C0

    add b                                         ; $4CA5: $80
    ldh [rLCDC], a                                ; $4CA6: $E0 $40
    ldh [rLCDC], a                                ; $4CA8: $E0 $40
    ldh [rLCDC], a                                ; $4CAA: $E0 $40
    ldh [rLCDC], a                                ; $4CAC: $E0 $40
    ldh [rLCDC], a                                ; $4CAE: $E0 $40
    ldh [rLCDC], a                                ; $4CB0: $E0 $40
    ldh [rLCDC], a                                ; $4CB2: $E0 $40
    ldh [rLCDC], a                                ; $4CB4: $E0 $40
    ld b, b                                       ; $4CB6: $40
    nop                                           ; $4CB7: $00
    nop                                           ; $4CB8: $00
    nop                                           ; $4CB9: $00
    nop                                           ; $4CBA: $00
    nop                                           ; $4CBB: $00
    nop                                           ; $4CBC: $00
    nop                                           ; $4CBD: $00
    nop                                           ; $4CBE: $00
    nop                                           ; $4CBF: $00
    db $FC                                        ; $4CC0: $FC
    ld e, b                                       ; $4CC1: $58
    ld hl, sp+$00                                 ; $4CC2: $F8 $00
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

jr_011_4CD5:
    nop                                           ; $4CD5: $00
    nop                                           ; $4CD6: $00
    nop                                           ; $4CD7: $00
    nop                                           ; $4CD8: $00
    nop                                           ; $4CD9: $00
    nop                                           ; $4CDA: $00
    nop                                           ; $4CDB: $00
    nop                                           ; $4CDC: $00
    nop                                           ; $4CDD: $00
    nop                                           ; $4CDE: $00
    nop                                           ; $4CDF: $00
    ccf                                           ; $4CE0: $3F
    nop                                           ; $4CE1: $00
    ld a, a                                       ; $4CE2: $7F
    dec a                                         ; $4CE3: $3D
    rst RST_38                                    ; $4CE4: $FF
    ld l, [hl]                                    ; $4CE5: $6E
    rst RST_38                                    ; $4CE6: $FF
    ld c, a                                       ; $4CE7: $4F
    rst RST_38                                    ; $4CE8: $FF
    ld a, e                                       ; $4CE9: $7B
    rst RST_38                                    ; $4CEA: $FF
    xor e                                         ; $4CEB: $AB
    ld a, a                                       ; $4CEC: $7F
    sbc a                                         ; $4CED: $9F
    rra                                           ; $4CEE: $1F
    ldh [$FFE1], a                                ; $4CEF: $E0 $E1
    ld e, $7F                                     ; $4CF1: $1E $7F
    nop                                           ; $4CF3: $00
    di                                            ; $4CF4: $F3
    ld h, c                                       ; $4CF5: $61
    rst RST_28                                    ; $4CF6: $EF
    pop bc                                        ; $4CF7: $C1
    rst RST_18                                    ; $4CF8: $DF
    adc e                                         ; $4CF9: $8B
    sbc a                                         ; $4CFA: $9F
    nop                                           ; $4CFB: $00
    nop                                           ; $4CFC: $00
    nop                                           ; $4CFD: $00
    nop                                           ; $4CFE: $00
    nop                                           ; $4CFF: $00
    inc c                                         ; $4D00: $0C
    nop                                           ; $4D01: $00
    ccf                                           ; $4D02: $3F
    inc c                                         ; $4D03: $0C
    ld a, a                                       ; $4D04: $7F
    dec a                                         ; $4D05: $3D
    rst RST_38                                    ; $4D06: $FF
    ld l, c                                       ; $4D07: $69
    rst RST_38                                    ; $4D08: $FF
    rrca                                          ; $4D09: $0F
    db $FC                                        ; $4D0A: $FC
    rst RST_18                                    ; $4D0B: $DF
    sbc e                                         ; $4D0C: $9B
    db $E4                                        ; $4D0D: $E4
    db $EC                                        ; $4D0E: $EC
    db $10                                        ; $4D0F: $10
    ld d, b                                       ; $4D10: $50
    jr nz, jr_011_4D3A                            ; $4D11: $20 $27

    nop                                           ; $4D13: $00
    rrca                                          ; $4D14: $0F
    dec b                                         ; $4D15: $05
    rrca                                          ; $4D16: $0F
    nop                                           ; $4D17: $00
    nop                                           ; $4D18: $00
    nop                                           ; $4D19: $00
    nop                                           ; $4D1A: $00
    nop                                           ; $4D1B: $00
    nop                                           ; $4D1C: $00
    nop                                           ; $4D1D: $00
    nop                                           ; $4D1E: $00
    nop                                           ; $4D1F: $00
    ld bc, $0100                                  ; $4D20: $01 $00 $01
    nop                                           ; $4D23: $00
    nop                                           ; $4D24: $00
    nop                                           ; $4D25: $00
    nop                                           ; $4D26: $00
    nop                                           ; $4D27: $00
    nop                                           ; $4D28: $00
    nop                                           ; $4D29: $00
    nop                                           ; $4D2A: $00
    nop                                           ; $4D2B: $00
    nop                                           ; $4D2C: $00
    nop                                           ; $4D2D: $00
    nop                                           ; $4D2E: $00
    nop                                           ; $4D2F: $00
    nop                                           ; $4D30: $00
    nop                                           ; $4D31: $00
    nop                                           ; $4D32: $00
    nop                                           ; $4D33: $00
    nop                                           ; $4D34: $00
    nop                                           ; $4D35: $00
    nop                                           ; $4D36: $00
    nop                                           ; $4D37: $00
    nop                                           ; $4D38: $00
    nop                                           ; $4D39: $00

jr_011_4D3A:
    nop                                           ; $4D3A: $00
    nop                                           ; $4D3B: $00
    nop                                           ; $4D3C: $00
    nop                                           ; $4D3D: $00
    nop                                           ; $4D3E: $00
    nop                                           ; $4D3F: $00
    rra                                           ; $4D40: $1F
    rrca                                          ; $4D41: $0F
    ld a, a                                       ; $4D42: $7F
    dec d                                         ; $4D43: $15
    rst RST_38                                    ; $4D44: $FF
    ld a, a                                       ; $4D45: $7F
    rst RST_38                                    ; $4D46: $FF
    db $EB                                        ; $4D47: $EB
    rst RST_38                                    ; $4D48: $FF
    add hl, hl                                    ; $4D49: $29
    rst RST_38                                    ; $4D4A: $FF
    ld d, a                                       ; $4D4B: $57
    rst RST_38                                    ; $4D4C: $FF
    db $E3                                        ; $4D4D: $E3
    rst RST_38                                    ; $4D4E: $FF
    ldh [rIE], a                                  ; $4D4F: $E0 $FF
    ld l, b                                       ; $4D51: $68
    cp $CC                                        ; $4D52: $FE $CC
    db $FC                                        ; $4D54: $FC
    ret z                                         ; $4D55: $C8

    call c, $FC88                                 ; $4D56: $DC $88 $FC
    sbc b                                         ; $4D59: $98
    ei                                            ; $4D5A: $FB
    db $10                                        ; $4D5B: $10
    rst RST_38                                    ; $4D5C: $FF
    ld [hl], d                                    ; $4D5D: $72
    rst RST_30                                    ; $4D5E: $F7
    nop                                           ; $4D5F: $00
    ld hl, sp+$30                                 ; $4D60: $F8 $30
    db $FC                                        ; $4D62: $FC
    ret z                                         ; $4D63: $C8

    cp $E4                                        ; $4D64: $FE $E4
    cp $64                                        ; $4D66: $FE $64
    rst RST_30                                    ; $4D68: $F7
    ld b, d                                       ; $4D69: $42
    rst RST_30                                    ; $4D6A: $F7
    ldh [c], a                                    ; $4D6B: $E2
    rst RST_38                                    ; $4D6C: $FF
    ld d, d                                       ; $4D6D: $52
    rst RST_38                                    ; $4D6E: $FF
    ldh a, [c]                                    ; $4D6F: $F2
    cp $54                                        ; $4D70: $FE $54
    ld a, [hl]                                    ; $4D72: $7E
    inc [hl]                                      ; $4D73: $34
    ld a, h                                       ; $4D74: $7C
    jr z, jr_011_4DF3                             ; $4D75: $28 $7C

    jr z, @-$06                                   ; $4D77: $28 $F8

    ld h, b                                       ; $4D79: $60
    ldh [rLCDC], a                                ; $4D7A: $E0 $40
    ldh [$FFC0], a                                ; $4D7C: $E0 $C0
    ret nz                                        ; $4D7E: $C0

    nop                                           ; $4D7F: $00
    nop                                           ; $4D80: $00
    nop                                           ; $4D81: $00
    nop                                           ; $4D82: $00
    nop                                           ; $4D83: $00
    nop                                           ; $4D84: $00
    nop                                           ; $4D85: $00
    nop                                           ; $4D86: $00
    nop                                           ; $4D87: $00
    nop                                           ; $4D88: $00
    nop                                           ; $4D89: $00
    nop                                           ; $4D8A: $00
    nop                                           ; $4D8B: $00
    nop                                           ; $4D8C: $00
    nop                                           ; $4D8D: $00
    nop                                           ; $4D8E: $00
    nop                                           ; $4D8F: $00
    nop                                           ; $4D90: $00
    nop                                           ; $4D91: $00
    nop                                           ; $4D92: $00
    nop                                           ; $4D93: $00
    nop                                           ; $4D94: $00
    nop                                           ; $4D95: $00
    nop                                           ; $4D96: $00
    nop                                           ; $4D97: $00
    nop                                           ; $4D98: $00
    nop                                           ; $4D99: $00
    nop                                           ; $4D9A: $00
    nop                                           ; $4D9B: $00
    inc a                                         ; $4D9C: $3C
    nop                                           ; $4D9D: $00
    rst RST_38                                    ; $4D9E: $FF
    inc a                                         ; $4D9F: $3C
    ld bc, $0100                                  ; $4DA0: $01 $00 $01
    nop                                           ; $4DA3: $00
    rlca                                          ; $4DA4: $07
    nop                                           ; $4DA5: $00
    rrca                                          ; $4DA6: $0F
    ld b, $1E                                     ; $4DA7: $06 $1E
    ld [$0E1F], sp                                ; $4DA9: $08 $1F $0E
    rrca                                          ; $4DAC: $0F
    inc bc                                        ; $4DAD: $03
    inc bc                                        ; $4DAE: $03
    nop                                           ; $4DAF: $00
    nop                                           ; $4DB0: $00
    nop                                           ; $4DB1: $00
    nop                                           ; $4DB2: $00
    nop                                           ; $4DB3: $00
    nop                                           ; $4DB4: $00
    nop                                           ; $4DB5: $00
    nop                                           ; $4DB6: $00
    nop                                           ; $4DB7: $00
    nop                                           ; $4DB8: $00
    nop                                           ; $4DB9: $00
    nop                                           ; $4DBA: $00
    nop                                           ; $4DBB: $00
    nop                                           ; $4DBC: $00
    nop                                           ; $4DBD: $00
    nop                                           ; $4DBE: $00
    nop                                           ; $4DBF: $00
    inc c                                         ; $4DC0: $0C
    nop                                           ; $4DC1: $00
    ld a, h                                       ; $4DC2: $7C
    ld [$70F9], sp                                ; $4DC3: $08 $F9 $70
    pop af                                        ; $4DC6: $F1
    ld b, b                                       ; $4DC7: $40
    rst RST_28                                    ; $4DC8: $EF
    ld b, b                                       ; $4DC9: $40
    rst RST_38                                    ; $4DCA: $FF
    ld c, a                                       ; $4DCB: $4F
    rst RST_38                                    ; $4DCC: $FF
    reti                                          ; $4DCD: $D9


    rst RST_38                                    ; $4DCE: $FF
    ei                                            ; $4DCF: $FB
    rst RST_38                                    ; $4DD0: $FF
    sbc $FF                                       ; $4DD1: $DE $FF
    ld e, $1F                                     ; $4DD3: $1E $1F
    dec bc                                        ; $4DD5: $0B
    rst RST_38                                    ; $4DD6: $FF
    rlca                                          ; $4DD7: $07
    rst RST_38                                    ; $4DD8: $FF
    ld hl, sp-$01                                 ; $4DD9: $F8 $FF
    rrca                                          ; $4DDB: $0F
    rrca                                          ; $4DDC: $0F
    nop                                           ; $4DDD: $00
    nop                                           ; $4DDE: $00
    nop                                           ; $4DDF: $00
    jr jr_011_4DE2                                ; $4DE0: $18 $00

jr_011_4DE2:
    ld hl, sp+$10                                 ; $4DE2: $F8 $10
    ldh a, [$FFC0]                                ; $4DE4: $F0 $C0
    sbc $80                                       ; $4DE6: $DE $80
    rst RST_18                                    ; $4DE8: $DF
    ld c, $CF                                     ; $4DE9: $0E $CF
    add d                                         ; $4DEB: $82

jr_011_4DEC:
    rst RST_38                                    ; $4DEC: $FF
    ld b, d                                       ; $4DED: $42
    rst RST_20                                    ; $4DEE: $E7
    jp c, Jump_011_56EF                           ; $4DEF: $DA $EF $56

    rst RST_38                                    ; $4DF2: $FF

jr_011_4DF3:
    sub l                                         ; $4DF3: $95
    rst RST_38                                    ; $4DF4: $FF
    xor l                                         ; $4DF5: $AD
    rst RST_38                                    ; $4DF6: $FF
    rst RST_28                                    ; $4DF7: $EF
    rst RST_38                                    ; $4DF8: $FF
    call Call_000_0EDF                            ; $4DF9: $CD $DF $0E
    rrca                                          ; $4DFC: $0F
    nop                                           ; $4DFD: $00
    nop                                           ; $4DFE: $00
    nop                                           ; $4DFF: $00
    ld [hl], b                                    ; $4E00: $70
    nop                                           ; $4E01: $00
    ld hl, sp+$70                                 ; $4E02: $F8 $70
    ld hl, sp+$10                                 ; $4E04: $F8 $10
    jr c, @+$12                                   ; $4E06: $38 $10

    ld hl, sp+$00                                 ; $4E08: $F8 $00
    jr jr_011_4DEC                                ; $4E0A: $18 $E0

    and $18                                       ; $4E0C: $E6 $18
    ld sp, hl                                     ; $4E0E: $F9
    and $FC                                       ; $4E0F: $E6 $FC
    ld e, a                                       ; $4E11: $5F
    rst RST_38                                    ; $4E12: $FF
    ld a, c                                       ; $4E13: $79
    rst RST_38                                    ; $4E14: $FF
    set 7, a                                      ; $4E15: $CB $FF
    call nc, $F0FD                                ; $4E17: $D4 $FD $F0
    pop af                                        ; $4E1A: $F1
    nop                                           ; $4E1B: $00
    nop                                           ; $4E1C: $00
    nop                                           ; $4E1D: $00
    nop                                           ; $4E1E: $00
    nop                                           ; $4E1F: $00
    ld [$1400], sp                                ; $4E20: $08 $00 $14
    ld [$106E], sp                                ; $4E23: $08 $6E $10
    or e                                          ; $4E26: $B3
    ld c, [hl]                                    ; $4E27: $4E
    ld a, a                                       ; $4E28: $7F
    or $FE                                        ; $4E29: $F6 $FE
    ldh a, [$FFFE]                                ; $4E2B: $F0 $FE
    ld l, h                                       ; $4E2D: $6C
    db $FC                                        ; $4E2E: $FC
    ld hl, sp-$08                                 ; $4E2F: $F8 $F8
    ret nz                                        ; $4E31: $C0

    ret nz                                        ; $4E32: $C0

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
    ld bc, $0700                                  ; $4E40: $01 $00 $07
    ld bc, $060F                                  ; $4E43: $01 $0F $06
    rra                                           ; $4E46: $1F
    ld a, [bc]                                    ; $4E47: $0A
    rra                                           ; $4E48: $1F
    dec b                                         ; $4E49: $05
    rra                                           ; $4E4A: $1F
    dec bc                                        ; $4E4B: $0B
    rra                                           ; $4E4C: $1F
    ld a, [bc]                                    ; $4E4D: $0A
    rra                                           ; $4E4E: $1F
    dec bc                                        ; $4E4F: $0B
    rrca                                          ; $4E50: $0F
    dec b                                         ; $4E51: $05
    rrca                                          ; $4E52: $0F
    rlca                                          ; $4E53: $07
    rlca                                          ; $4E54: $07
    inc bc                                        ; $4E55: $03
    rlca                                          ; $4E56: $07
    inc bc                                        ; $4E57: $03
    rlca                                          ; $4E58: $07
    inc bc                                        ; $4E59: $03
    rlca                                          ; $4E5A: $07
    inc bc                                        ; $4E5B: $03
    rrca                                          ; $4E5C: $0F
    ld b, $0F                                     ; $4E5D: $06 $0F
    ld b, $3E                                     ; $4E5F: $06 $3E
    inc c                                         ; $4E61: $0C
    ld a, [hl]                                    ; $4E62: $7E
    inc l                                         ; $4E63: $2C
    ld a, [hl]                                    ; $4E64: $7E
    nop                                           ; $4E65: $00
    nop                                           ; $4E66: $00
    nop                                           ; $4E67: $00
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

jr_011_4E7D:
    nop                                           ; $4E7D: $00
    nop                                           ; $4E7E: $00
    nop                                           ; $4E7F: $00
    ld c, $00                                     ; $4E80: $0E $00
    rrca                                          ; $4E82: $0F
    ld b, $0F                                     ; $4E83: $06 $0F
    rlca                                          ; $4E85: $07
    rst RST_38                                    ; $4E86: $FF
    dec bc                                        ; $4E87: $0B
    rst RST_38                                    ; $4E88: $FF
    ld a, a                                       ; $4E89: $7F
    db $FD                                        ; $4E8A: $FD
    add e                                         ; $4E8B: $83
    cp $7D                                        ; $4E8C: $FE $7D
    rst RST_38                                    ; $4E8E: $FF
    xor [hl]                                      ; $4E8F: $AE
    rst RST_38                                    ; $4E90: $FF
    or b                                          ; $4E91: $B0
    rst RST_38                                    ; $4E92: $FF
    rst RST_18                                    ; $4E93: $DF
    rst RST_38                                    ; $4E94: $FF
    ldh [$FFC3], a                                ; $4E95: $E0 $C3
    ld a, a                                       ; $4E97: $7F
    cp c                                          ; $4E98: $B9
    rst RST_00                                    ; $4E99: $C7
    inc a                                         ; $4E9A: $3C
    jp $807B                                      ; $4E9B: $C3 $7B $80


    ld a, b                                       ; $4E9E: $78
    add b                                         ; $4E9F: $80
    ret nz                                        ; $4EA0: $C0

    nop                                           ; $4EA1: $00
    ldh [$FFC0], a                                ; $4EA2: $E0 $C0
    ldh a, [rNR41]                                ; $4EA4: $F0 $20
    or b                                          ; $4EA6: $B0
    ld b, b                                       ; $4EA7: $40
    ld hl, sp-$50                                 ; $4EA8: $F8 $B0
    sbc b                                         ; $4EAA: $98
    ld [hl], b                                    ; $4EAB: $70
    ldh a, [rP1]                                  ; $4EAC: $F0 $00
    ldh a, [$FFE0]                                ; $4EAE: $F0 $E0
    ld hl, sp+$10                                 ; $4EB0: $F8 $10
    sbc h                                         ; $4EB2: $9C
    ld [$048E], sp                                ; $4EB3: $08 $8E $04
    xor $84                                       ; $4EB6: $EE $84
    rst RST_30                                    ; $4EB8: $F7
    ldh [c], a                                    ; $4EB9: $E2
    ld [hl], a                                    ; $4EBA: $77
    ldh [c], a                                    ; $4EBB: $E2
    rst RST_30                                    ; $4EBC: $F7
    ld h, d                                       ; $4EBD: $62
    ld [hl], d                                    ; $4EBE: $72
    jr nz, jr_011_4E7D                            ; $4EBF: $20 $BC

    nop                                           ; $4EC1: $00
    inc e                                         ; $4EC2: $1C
    nop                                           ; $4EC3: $00
    inc e                                         ; $4EC4: $1C
    nop                                           ; $4EC5: $00
    dec c                                         ; $4EC6: $0D
    nop                                           ; $4EC7: $00
    rrca                                          ; $4EC8: $0F
    ld bc, $000F                                  ; $4EC9: $01 $0F $00
    nop                                           ; $4ECC: $00
    nop                                           ; $4ECD: $00
    nop                                           ; $4ECE: $00
    nop                                           ; $4ECF: $00
    nop                                           ; $4ED0: $00
    nop                                           ; $4ED1: $00
    nop                                           ; $4ED2: $00
    nop                                           ; $4ED3: $00
    nop                                           ; $4ED4: $00

jr_011_4ED5:
    nop                                           ; $4ED5: $00
    nop                                           ; $4ED6: $00
    nop                                           ; $4ED7: $00
    nop                                           ; $4ED8: $00
    nop                                           ; $4ED9: $00
    nop                                           ; $4EDA: $00
    nop                                           ; $4EDB: $00
    nop                                           ; $4EDC: $00
    nop                                           ; $4EDD: $00
    nop                                           ; $4EDE: $00
    nop                                           ; $4EDF: $00
    ld [hl], b                                    ; $4EE0: $70
    jr nz, jr_011_4F53                            ; $4EE1: $20 $70

    jr nz, jr_011_4ED5                            ; $4EE3: $20 $F0

    ld h, b                                       ; $4EE5: $60
    ldh a, [$FF60]                                ; $4EE6: $F0 $60
    ldh [rP1], a                                  ; $4EE8: $E0 $00
    nop                                           ; $4EEA: $00
    nop                                           ; $4EEB: $00
    nop                                           ; $4EEC: $00
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
    nop                                           ; $4F00: $00
    nop                                           ; $4F01: $00
    nop                                           ; $4F02: $00
    nop                                           ; $4F03: $00
    nop                                           ; $4F04: $00
    nop                                           ; $4F05: $00
    ld bc, $0700                                  ; $4F06: $01 $00 $07
    ld bc, $060F                                  ; $4F09: $01 $0F $06
    ld e, $08                                     ; $4F0C: $1E $08
    inc e                                         ; $4F0E: $1C
    ld [$1038], sp                                ; $4F0F: $08 $38 $10
    jr c, @+$12                                   ; $4F12: $38 $10

    jr c, jr_011_4F26                             ; $4F14: $38 $10

    jr c, jr_011_4F28                             ; $4F16: $38 $10

    inc e                                         ; $4F18: $1C
    ld [$081C], sp                                ; $4F19: $08 $1C $08
    ld c, $04                                     ; $4F1C: $0E $04
    ld b, $00                                     ; $4F1E: $06 $00
    ld hl, sp+$00                                 ; $4F20: $F8 $00
    rst RST_38                                    ; $4F22: $FF
    ld hl, sp-$01                                 ; $4F23: $F8 $FF
    rlca                                          ; $4F25: $07

jr_011_4F26:
    rlca                                          ; $4F26: $07
    nop                                           ; $4F27: $00

jr_011_4F28:
    inc bc                                        ; $4F28: $03
    nop                                           ; $4F29: $00
    rlca                                          ; $4F2A: $07
    inc bc                                        ; $4F2B: $03
    rrca                                          ; $4F2C: $0F
    rlca                                          ; $4F2D: $07
    rrca                                          ; $4F2E: $0F
    ld b, $0F                                     ; $4F2F: $06 $0F
    ld [bc], a                                    ; $4F31: $02
    rrca                                          ; $4F32: $0F
    rlca                                          ; $4F33: $07
    rra                                           ; $4F34: $1F
    ld a, [bc]                                    ; $4F35: $0A
    rra                                           ; $4F36: $1F
    rrca                                          ; $4F37: $0F
    rra                                           ; $4F38: $1F
    ld a, [bc]                                    ; $4F39: $0A
    ld e, $0C                                     ; $4F3A: $1E $0C
    ld c, $04                                     ; $4F3C: $0E $04
    ld c, $04                                     ; $4F3E: $0E $04
    ret nz                                        ; $4F40: $C0

    nop                                           ; $4F41: $00
    ldh a, [$FFC0]                                ; $4F42: $F0 $C0
    ld hl, sp-$10                                 ; $4F44: $F8 $F0
    cp $A8                                        ; $4F46: $FE $A8
    rst RST_38                                    ; $4F48: $FF
    cp $FF                                        ; $4F49: $FE $FF
    rst RST_10                                    ; $4F4B: $D7
    rst RST_38                                    ; $4F4C: $FF
    sub h                                         ; $4F4D: $94
    rst RST_38                                    ; $4F4E: $FF
    ld [$C7FF], a                                 ; $4F4F: $EA $FF $C7
    rst RST_38                                    ; $4F52: $FF

jr_011_4F53:
    rlca                                          ; $4F53: $07
    rst RST_38                                    ; $4F54: $FF
    ld d, $7F                                     ; $4F55: $16 $7F
    inc sp                                        ; $4F57: $33
    ccf                                           ; $4F58: $3F
    inc de                                        ; $4F59: $13
    dec sp                                        ; $4F5A: $3B
    ld de, $193F                                  ; $4F5B: $11 $3F $19
    rst RST_18                                    ; $4F5E: $DF
    ld [$060F], sp                                ; $4F5F: $08 $0F $06
    rlca                                          ; $4F62: $07
    ld [bc], a                                    ; $4F63: $02
    rlca                                          ; $4F64: $07
    inc bc                                        ; $4F65: $03
    inc bc                                        ; $4F66: $03
    nop                                           ; $4F67: $00
    nop                                           ; $4F68: $00
    nop                                           ; $4F69: $00
    nop                                           ; $4F6A: $00
    nop                                           ; $4F6B: $00
    nop                                           ; $4F6C: $00
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
    rst RST_38                                    ; $4F80: $FF
    ld c, [hl]                                    ; $4F81: $4E
    rst RST_28                                    ; $4F82: $EF
    nop                                           ; $4F83: $00
    nop                                           ; $4F84: $00
    nop                                           ; $4F85: $00
    nop                                           ; $4F86: $00
    nop                                           ; $4F87: $00
    nop                                           ; $4F88: $00
    nop                                           ; $4F89: $00
    nop                                           ; $4F8A: $00

jr_011_4F8B:
    nop                                           ; $4F8B: $00
    nop                                           ; $4F8C: $00
    nop                                           ; $4F8D: $00
    nop                                           ; $4F8E: $00
    nop                                           ; $4F8F: $00
    nop                                           ; $4F90: $00
    nop                                           ; $4F91: $00
    nop                                           ; $4F92: $00
    nop                                           ; $4F93: $00
    nop                                           ; $4F94: $00
    nop                                           ; $4F95: $00
    nop                                           ; $4F96: $00
    nop                                           ; $4F97: $00
    nop                                           ; $4F98: $00
    nop                                           ; $4F99: $00
    nop                                           ; $4F9A: $00
    nop                                           ; $4F9B: $00
    nop                                           ; $4F9C: $00
    nop                                           ; $4F9D: $00
    nop                                           ; $4F9E: $00
    nop                                           ; $4F9F: $00
    jr jr_011_4FA2                                ; $4FA0: $18 $00

jr_011_4FA2:
    jr c, jr_011_4FB4                             ; $4FA2: $38 $10

    jr c, @+$12                                   ; $4FA4: $38 $10

    ld [hl], b                                    ; $4FA6: $70
    jr nz, jr_011_5019                            ; $4FA7: $20 $70

    jr nz, jr_011_4F8B                            ; $4FA9: $20 $E0

    ld b, b                                       ; $4FAB: $40
    ldh [rLCDC], a                                ; $4FAC: $E0 $40
    ldh [rLCDC], a                                ; $4FAE: $E0 $40
    ldh [rLCDC], a                                ; $4FB0: $E0 $40
    ldh [rLCDC], a                                ; $4FB2: $E0 $40

jr_011_4FB4:
    ld [hl], b                                    ; $4FB4: $70
    jr nz, jr_011_5027                            ; $4FB5: $20 $70

    jr nz, jr_011_4FF5                            ; $4FB7: $20 $3C

    db $10                                        ; $4FB9: $10
    rra                                           ; $4FBA: $1F
    inc c                                         ; $4FBB: $0C
    rrca                                          ; $4FBC: $0F
    inc bc                                        ; $4FBD: $03
    inc bc                                        ; $4FBE: $03
    nop                                           ; $4FBF: $00
    rlca                                          ; $4FC0: $07
    inc bc                                        ; $4FC1: $03
    rrca                                          ; $4FC2: $0F
    rlca                                          ; $4FC3: $07
    rrca                                          ; $4FC4: $0F
    ld b, $0F                                     ; $4FC5: $06 $0F
    ld [bc], a                                    ; $4FC7: $02
    rrca                                          ; $4FC8: $0F
    rlca                                          ; $4FC9: $07
    rra                                           ; $4FCA: $1F
    ld a, [bc]                                    ; $4FCB: $0A
    rra                                           ; $4FCC: $1F
    rrca                                          ; $4FCD: $0F
    rra                                           ; $4FCE: $1F
    ld a, [bc]                                    ; $4FCF: $0A
    ld e, $0C                                     ; $4FD0: $1E $0C
    ld c, $04                                     ; $4FD2: $0E $04
    ld c, $04                                     ; $4FD4: $0E $04
    rrca                                          ; $4FD6: $0F
    ld b, $07                                     ; $4FD7: $06 $07
    ld [bc], a                                    ; $4FD9: $02
    rlca                                          ; $4FDA: $07
    inc bc                                        ; $4FDB: $03
    inc bc                                        ; $4FDC: $03
    nop                                           ; $4FDD: $00
    nop                                           ; $4FDE: $00
    nop                                           ; $4FDF: $00
    add b                                         ; $4FE0: $80
    nop                                           ; $4FE1: $00
    ldh [$FF80], a                                ; $4FE2: $E0 $80
    ld hl, sp-$20                                 ; $4FE4: $F8 $E0
    cp $A8                                        ; $4FE6: $FE $A8
    rst RST_38                                    ; $4FE8: $FF
    cp $FF                                        ; $4FE9: $FE $FF
    rst RST_10                                    ; $4FEB: $D7
    rst RST_38                                    ; $4FEC: $FF
    sub h                                         ; $4FED: $94
    rst RST_38                                    ; $4FEE: $FF
    ld [$C7FF], a                                 ; $4FEF: $EA $FF $C7
    rst RST_38                                    ; $4FF2: $FF
    rlca                                          ; $4FF3: $07
    rst RST_38                                    ; $4FF4: $FF

jr_011_4FF5:
    ld d, $7F                                     ; $4FF5: $16 $7F
    inc sp                                        ; $4FF7: $33
    ccf                                           ; $4FF8: $3F
    inc de                                        ; $4FF9: $13
    dec sp                                        ; $4FFA: $3B
    ld de, $193F                                  ; $4FFB: $11 $3F $19
    rst RST_18                                    ; $4FFE: $DF
    ld [$4EFF], sp                                ; $4FFF: $08 $FF $4E
    rst RST_28                                    ; $5002: $EF
    nop                                           ; $5003: $00
    nop                                           ; $5004: $00
    nop                                           ; $5005: $00
    nop                                           ; $5006: $00
    nop                                           ; $5007: $00
    nop                                           ; $5008: $00
    nop                                           ; $5009: $00
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

jr_011_5019:
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
    nop                                           ; $5025: $00
    nop                                           ; $5026: $00

jr_011_5027:
    nop                                           ; $5027: $00
    nop                                           ; $5028: $00
    nop                                           ; $5029: $00
    nop                                           ; $502A: $00
    nop                                           ; $502B: $00
    nop                                           ; $502C: $00
    nop                                           ; $502D: $00
    jr c, jr_011_5030                             ; $502E: $38 $00

jr_011_5030:
    db $FC                                        ; $5030: $FC
    nop                                           ; $5031: $00
    rst RST_38                                    ; $5032: $FF
    nop                                           ; $5033: $00
    adc a                                         ; $5034: $8F
    nop                                           ; $5035: $00
    ld a, a                                       ; $5036: $7F
    ld b, $FF                                     ; $5037: $06 $FF
    ld a, a                                       ; $5039: $7F
    rst RST_38                                    ; $503A: $FF
    ld b, c                                       ; $503B: $41
    jp $8080                                      ; $503C: $C3 $80 $80


    nop                                           ; $503F: $00
    ld bc, $0700                                  ; $5040: $01 $00 $07
    ld bc, $060F                                  ; $5043: $01 $0F $06
    ld e, $08                                     ; $5046: $1E $08
    sbc h                                         ; $5048: $9C
    ld [$08DC], sp                                ; $5049: $08 $DC $08
    rst RST_38                                    ; $504C: $FF
    inc b                                         ; $504D: $04
    rst RST_38                                    ; $504E: $FF
    jp nz, $D1FF                                  ; $504F: $C2 $FF $D1

    rst RST_38                                    ; $5052: $FF
    ld a, [hl]                                    ; $5053: $7E
    ld a, a                                       ; $5054: $7F
    inc de                                        ; $5055: $13
    ld a, a                                       ; $5056: $7F
    ccf                                           ; $5057: $3F
    ccf                                           ; $5058: $3F
    ld d, $3F                                     ; $5059: $16 $3F
    inc de                                        ; $505B: $13
    rra                                           ; $505C: $1F
    ld c, $0F                                     ; $505D: $0E $0F
    nop                                           ; $505F: $00
    ld bc, $0000                                  ; $5060: $01 $00 $00
    nop                                           ; $5063: $00
    ldh [rP1], a                                  ; $5064: $E0 $00
    ldh a, [$FFE0]                                ; $5066: $F0 $E0
    db $FC                                        ; $5068: $FC
    ldh a, [rIE]                                  ; $5069: $F0 $FF
    db $EC                                        ; $506B: $EC
    rst RST_38                                    ; $506C: $FF
    rst RST_38                                    ; $506D: $FF
    rst RST_38                                    ; $506E: $FF
    db $DB                                        ; $506F: $DB
    rst RST_38                                    ; $5070: $FF
    xor $FF                                       ; $5071: $EE $FF
    db $ED                                        ; $5073: $ED
    rst RST_20                                    ; $5074: $E7
    sbc l                                         ; $5075: $9D
    sub e                                         ; $5076: $93
    dec c                                         ; $5077: $0D
    dec bc                                        ; $5078: $0B
    dec b                                         ; $5079: $05
    rlca                                          ; $507A: $07
    ld bc, $0003                                  ; $507B: $01 $03 $00
    ld bc, $0000                                  ; $507E: $01 $00 $00
    nop                                           ; $5081: $00
    nop                                           ; $5082: $00
    nop                                           ; $5083: $00
    nop                                           ; $5084: $00
    nop                                           ; $5085: $00
    nop                                           ; $5086: $00
    nop                                           ; $5087: $00
    nop                                           ; $5088: $00
    nop                                           ; $5089: $00
    nop                                           ; $508A: $00
    nop                                           ; $508B: $00
    nop                                           ; $508C: $00
    nop                                           ; $508D: $00
    nop                                           ; $508E: $00
    nop                                           ; $508F: $00
    nop                                           ; $5090: $00
    nop                                           ; $5091: $00
    nop                                           ; $5092: $00
    nop                                           ; $5093: $00
    nop                                           ; $5094: $00
    nop                                           ; $5095: $00
    nop                                           ; $5096: $00
    nop                                           ; $5097: $00
    ldh a, [rP1]                                  ; $5098: $F0 $00
    cp $F0                                        ; $509A: $FE $F0
    rst RST_38                                    ; $509C: $FF
    ld c, $0F                                     ; $509D: $0E $0F
    ld bc, $5AFF                                  ; $509F: $01 $FF $5A
    rst RST_38                                    ; $50A2: $FF
    ei                                            ; $50A3: $FB
    ei                                            ; $50A4: $FB
    push af                                       ; $50A5: $F5
    ld hl, sp-$29                                 ; $50A6: $F8 $D7
    rst RST_38                                    ; $50A8: $FF
    ld [hl], b                                    ; $50A9: $70
    rst RST_38                                    ; $50AA: $FF
    halt                                          ; $50AB: $76
    ld a, a                                       ; $50AC: $7F
    scf                                           ; $50AD: $37
    ccf                                           ; $50AE: $3F
    dec de                                        ; $50AF: $1B
    ccf                                           ; $50B0: $3F
    add hl, de                                    ; $50B1: $19
    dec e                                         ; $50B2: $1D
    ld [$0C1E], sp                                ; $50B3: $08 $1E $0C
    ld c, $04                                     ; $50B6: $0E $04
    rrca                                          ; $50B8: $0F
    ld b, $0F                                     ; $50B9: $06 $0F
    ld b, $07                                     ; $50BB: $06 $07
    nop                                           ; $50BD: $00
    ld bc, $C000                                  ; $50BE: $01 $00 $C0
    nop                                           ; $50C1: $00
    ld hl, sp-$40                                 ; $50C2: $F8 $C0
    db $FC                                        ; $50C4: $FC
    ld hl, sp-$02                                 ; $50C5: $F8 $FE
    ld b, h                                       ; $50C7: $44
    or $E8                                        ; $50C8: $F6 $E8
    ld e, a                                       ; $50CA: $5F
    or $B3                                        ; $50CB: $F6 $B3
    ld c, [hl]                                    ; $50CD: $4E
    ld l, [hl]                                    ; $50CE: $6E
    db $10                                        ; $50CF: $10
    sub h                                         ; $50D0: $94
    ld [$0088], sp                                ; $50D1: $08 $88 $00
    ret nz                                        ; $50D4: $C0

    add b                                         ; $50D5: $80
    ldh [$FFC0], a                                ; $50D6: $E0 $C0
    ldh a, [$FF60]                                ; $50D8: $F0 $60
    ld a, h                                       ; $50DA: $7C
    jr nc, jr_011_511B                            ; $50DB: $30 $3E

    inc d                                         ; $50DD: $14
    sbc [hl]                                      ; $50DE: $9E
    nop                                           ; $50DF: $00
    nop                                           ; $50E0: $00
    nop                                           ; $50E1: $00
    nop                                           ; $50E2: $00
    nop                                           ; $50E3: $00
    add b                                         ; $50E4: $80
    nop                                           ; $50E5: $00
    ret nz                                        ; $50E6: $C0

    add b                                         ; $50E7: $80
    ret nz                                        ; $50E8: $C0

    nop                                           ; $50E9: $00
    nop                                           ; $50EA: $00
    nop                                           ; $50EB: $00
    nop                                           ; $50EC: $00
    nop                                           ; $50ED: $00
    nop                                           ; $50EE: $00
    nop                                           ; $50EF: $00
    nop                                           ; $50F0: $00
    nop                                           ; $50F1: $00
    ldh [rP1], a                                  ; $50F2: $E0 $00
    ld hl, sp-$60                                 ; $50F4: $F8 $A0
    db $FC                                        ; $50F6: $FC
    ld hl, sp-$02                                 ; $50F7: $F8 $FE
    or h                                          ; $50F9: $B4
    cp $DC                                        ; $50FA: $FE $DC
    rst RST_38                                    ; $50FC: $FF
    adc $FF                                       ; $50FD: $CE $FF

Call_011_50FF:
    ld a, d                                       ; $50FF: $7A
    ret nz                                        ; $5100: $C0

    add b                                         ; $5101: $80
    ret nz                                        ; $5102: $C0

    nop                                           ; $5103: $00
    nop                                           ; $5104: $00
    nop                                           ; $5105: $00
    nop                                           ; $5106: $00
    nop                                           ; $5107: $00
    nop                                           ; $5108: $00
    nop                                           ; $5109: $00
    nop                                           ; $510A: $00
    nop                                           ; $510B: $00
    nop                                           ; $510C: $00
    nop                                           ; $510D: $00
    nop                                           ; $510E: $00
    nop                                           ; $510F: $00
    nop                                           ; $5110: $00
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

jr_011_511B:
    nop                                           ; $511B: $00
    nop                                           ; $511C: $00
    nop                                           ; $511D: $00
    nop                                           ; $511E: $00
    nop                                           ; $511F: $00
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
    inc bc                                        ; $5132: $03
    nop                                           ; $5133: $00
    inc bc                                        ; $5134: $03
    nop                                           ; $5135: $00
    nop                                           ; $5136: $00
    nop                                           ; $5137: $00
    nop                                           ; $5138: $00
    nop                                           ; $5139: $00
    nop                                           ; $513A: $00
    nop                                           ; $513B: $00
    ld bc, $0100                                  ; $513C: $01 $00 $01
    nop                                           ; $513F: $00
    inc bc                                        ; $5140: $03
    nop                                           ; $5141: $00
    rra                                           ; $5142: $1F
    inc bc                                        ; $5143: $03
    ccf                                           ; $5144: $3F
    rra                                           ; $5145: $1F
    ld a, a                                       ; $5146: $7F
    ld h, $6F                                     ; $5147: $26 $6F
    rla                                           ; $5149: $17
    ld hl, sp+$6F                                 ; $514A: $F8 $6F
    rst RST_08                                    ; $514C: $CF
    ld [hl], b                                    ; $514D: $70
    ld [hl], h                                    ; $514E: $74
    ld [$1028], sp                                ; $514F: $08 $28 $10
    stop                                          ; $5152: $10 $00
    inc bc                                        ; $5154: $03
    nop                                           ; $5155: $00
    rlca                                          ; $5156: $07
    inc bc                                        ; $5157: $03
    rrca                                          ; $5158: $0F
    ld b, $1E                                     ; $5159: $06 $1E
    inc c                                         ; $515B: $0C
    inc e                                         ; $515C: $1C
    nop                                           ; $515D: $00
    nop                                           ; $515E: $00
    nop                                           ; $515F: $00
    add b                                         ; $5160: $80
    nop                                           ; $5161: $00
    add b                                         ; $5162: $80
    nop                                           ; $5163: $00
    db $E3                                        ; $5164: $E3
    nop                                           ; $5165: $00
    rst RST_38                                    ; $5166: $FF
    db $E3                                        ; $5167: $E3
    rst RST_38                                    ; $5168: $FF
    or l                                          ; $5169: $B5
    ld a, a                                       ; $516A: $7F
    jp hl                                         ; $516B: $E9


    ld a, a                                       ; $516C: $7F
    rst RST_08                                    ; $516D: $CF
    cp a                                          ; $516E: $BF
    ld l, l                                       ; $516F: $6D
    ld e, a                                       ; $5170: $5F
    scf                                           ; $5171: $37
    cpl                                           ; $5172: $2F
    add hl, de                                    ; $5173: $19
    pop af                                        ; $5174: $F1

jr_011_5175:
    ld c, $FF                                     ; $5175: $0E $FF
    ret nz                                        ; $5177: $C0

    rst RST_38                                    ; $5178: $FF
    rra                                           ; $5179: $1F
    ld a, a                                       ; $517A: $7F
    jr c, jr_011_5175                             ; $517B: $38 $F8

    ld h, b                                       ; $517D: $60
    ldh [rP1], a                                  ; $517E: $E0 $00
    add b                                         ; $5180: $80
    nop                                           ; $5181: $00
    ret nz                                        ; $5182: $C0

    add b                                         ; $5183: $80
    di                                            ; $5184: $F3
    ret nz                                        ; $5185: $C0

    rst RST_38                                    ; $5186: $FF
    db $D3                                        ; $5187: $D3
    rst RST_38                                    ; $5188: $FF
    ld l, [hl]                                    ; $5189: $6E
    rst RST_38                                    ; $518A: $FF
    ld l, e                                       ; $518B: $6B
    rst RST_38                                    ; $518C: $FF
    rst RST_20                                    ; $518D: $E7
    rst RST_38                                    ; $518E: $FF
    push de                                       ; $518F: $D5
    db $FD                                        ; $5190: $FD
    or $FA                                        ; $5191: $F6 $FA
    inc [hl]                                      ; $5193: $34
    db $FC                                        ; $5194: $FC
    ldh [$FFE0], a                                ; $5195: $E0 $E0
    nop                                           ; $5197: $00
    nop                                           ; $5198: $00
    nop                                           ; $5199: $00
    nop                                           ; $519A: $00
    nop                                           ; $519B: $00
    nop                                           ; $519C: $00
    nop                                           ; $519D: $00
    nop                                           ; $519E: $00
    nop                                           ; $519F: $00
    nop                                           ; $51A0: $00
    nop                                           ; $51A1: $00
    nop                                           ; $51A2: $00
    nop                                           ; $51A3: $00
    ld bc, $0700                                  ; $51A4: $01 $00 $07
    ld bc, $060F                                  ; $51A7: $01 $0F $06
    ld e, $04                                     ; $51AA: $1E $04

jr_011_51AC:
    db $FC                                        ; $51AC: $FC
    jr jr_011_51AC                                ; $51AD: $18 $FD

    ldh [rIE], a                                  ; $51AF: $E0 $FF
    sbc l                                         ; $51B1: $9D
    rst RST_38                                    ; $51B2: $FF
    ld [hl], a                                    ; $51B3: $77
    rst RST_38                                    ; $51B4: $FF
    ld l, c                                       ; $51B5: $69
    rst RST_38                                    ; $51B6: $FF
    rst RST_38                                    ; $51B7: $FF
    rst RST_38                                    ; $51B8: $FF
    ld l, l                                       ; $51B9: $6D
    rst RST_38                                    ; $51BA: $FF
    add hl, sp                                    ; $51BB: $39
    ccf                                           ; $51BC: $3F
    ld c, $0E                                     ; $51BD: $0E $0E
    nop                                           ; $51BF: $00
    ld a, $00                                     ; $51C0: $3E $00
    rst RST_38                                    ; $51C2: $FF
    ld a, $FE                                     ; $51C3: $3E $FE
    ret nz                                        ; $51C5: $C0

    jp Jump_011_7700                              ; $51C6: $C3 $00 $77


    nop                                           ; $51C9: $00
    rst RST_38                                    ; $51CA: $FF
    ld [hl], b                                    ; $51CB: $70
    rst RST_38                                    ; $51CC: $FF
    sbc $FF                                       ; $51CD: $DE $FF
    ld h, e                                       ; $51CF: $63
    di                                            ; $51D0: $F3
    pop bc                                        ; $51D1: $C1
    pop hl                                        ; $51D2: $E1
    ld b, b                                       ; $51D3: $40
    ret nz                                        ; $51D4: $C0

    add b                                         ; $51D5: $80
    ret nz                                        ; $51D6: $C0

    add b                                         ; $51D7: $80
    add h                                         ; $51D8: $84
    nop                                           ; $51D9: $00
    ld b, $00                                     ; $51DA: $06 $00
    ld b, $00                                     ; $51DC: $06 $00
    rlca                                          ; $51DE: $07
    ld [bc], a                                    ; $51DF: $02
    nop                                           ; $51E0: $00
    nop                                           ; $51E1: $00
    nop                                           ; $51E2: $00
    nop                                           ; $51E3: $00
    nop                                           ; $51E4: $00
    nop                                           ; $51E5: $00
    nop                                           ; $51E6: $00
    nop                                           ; $51E7: $00
    ret nz                                        ; $51E8: $C0

    nop                                           ; $51E9: $00
    ldh a, [rP1]                                  ; $51EA: $F0 $00
    ld [hl], b                                    ; $51EC: $70
    nop                                           ; $51ED: $00
    add b                                         ; $51EE: $80
    nop                                           ; $51EF: $00
    ret nz                                        ; $51F0: $C0

    add b                                         ; $51F1: $80
    ldh [$FFC0], a                                ; $51F2: $E0 $C0
    ldh [rP1], a                                  ; $51F4: $E0 $00
    inc b                                         ; $51F6: $04
    nop                                           ; $51F7: $00
    inc c                                         ; $51F8: $0C
    nop                                           ; $51F9: $00
    inc e                                         ; $51FA: $1C
    ld [$183C], sp                                ; $51FB: $08 $3C $18

jr_011_51FE:
    ld a, h                                       ; $51FE: $7C
    jr c, jr_011_51FE                             ; $51FF: $38 $FD

    ld c, a                                       ; $5201: $4F
    ld sp, hl                                     ; $5202: $F9
    ld e, a                                       ; $5203: $5F
    pop af                                        ; $5204: $F1
    ld a, a                                       ; $5205: $7F
    pop hl                                        ; $5206: $E1
    ld a, a                                       ; $5207: $7F
    pop bc                                        ; $5208: $C1
    ld a, a                                       ; $5209: $7F
    pop bc                                        ; $520A: $C1
    ld a, a                                       ; $520B: $7F
    add c                                         ; $520C: $81
    ld a, a                                       ; $520D: $7F
    add b                                         ; $520E: $80
    ld a, a                                       ; $520F: $7F
    nop                                           ; $5210: $00
    nop                                           ; $5211: $00
    nop                                           ; $5212: $00
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
    add e                                         ; $5220: $83

jr_011_5221:
    nop                                           ; $5221: $00
    adc a                                         ; $5222: $8F
    ld [bc], a                                    ; $5223: $02
    cp [hl]                                       ; $5224: $BE
    inc c                                         ; $5225: $0C
    db $FC                                        ; $5226: $FC
    jr c, jr_011_5221                             ; $5227: $38 $F8

    ldh a, [$FFF0]                                ; $5229: $F0 $F0
    ldh [$FF60], a                                ; $522B: $E0 $60
    ret nz                                        ; $522D: $C0

    ret nz                                        ; $522E: $C0

    add b                                         ; $522F: $80
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
    add b                                         ; $5240: $80
    nop                                           ; $5241: $00
    nop                                           ; $5242: $00
    nop                                           ; $5243: $00
    nop                                           ; $5244: $00
    nop                                           ; $5245: $00
    nop                                           ; $5246: $00
    nop                                           ; $5247: $00
    nop                                           ; $5248: $00
    nop                                           ; $5249: $00
    nop                                           ; $524A: $00
    nop                                           ; $524B: $00
    nop                                           ; $524C: $00
    nop                                           ; $524D: $00
    nop                                           ; $524E: $00
    nop                                           ; $524F: $00
    nop                                           ; $5250: $00
    nop                                           ; $5251: $00
    nop                                           ; $5252: $00
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
    nop                                           ; $5260: $00
    nop                                           ; $5261: $00
    nop                                           ; $5262: $00
    nop                                           ; $5263: $00
    nop                                           ; $5264: $00
    nop                                           ; $5265: $00
    ld a, $00                                     ; $5266: $3E $00
    rst RST_38                                    ; $5268: $FF
    ld a, $FE                                     ; $5269: $3E $FE
    ret nz                                        ; $526B: $C0

    jp Jump_011_7700                              ; $526C: $C3 $00 $77


    nop                                           ; $526F: $00
    rst RST_38                                    ; $5270: $FF
    ld [hl], b                                    ; $5271: $70
    rst RST_38                                    ; $5272: $FF
    sbc $FF                                       ; $5273: $DE $FF
    ld h, e                                       ; $5275: $63
    di                                            ; $5276: $F3
    pop bc                                        ; $5277: $C1
    pop hl                                        ; $5278: $E1
    ld b, b                                       ; $5279: $40
    ret nz                                        ; $527A: $C0

    add b                                         ; $527B: $80
    ret nz                                        ; $527C: $C0

    add b                                         ; $527D: $80
    add b                                         ; $527E: $80
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
    nop                                           ; $528C: $00
    nop                                           ; $528D: $00
    nop                                           ; $528E: $00
    nop                                           ; $528F: $00
    nop                                           ; $5290: $00
    nop                                           ; $5291: $00
    ret nz                                        ; $5292: $C0

    nop                                           ; $5293: $00
    ldh a, [rP1]                                  ; $5294: $F0 $00
    ld [hl], b                                    ; $5296: $70
    nop                                           ; $5297: $00
    add b                                         ; $5298: $80
    nop                                           ; $5299: $00
    ret nz                                        ; $529A: $C0

    add b                                         ; $529B: $80
    ldh [$FFC0], a                                ; $529C: $E0 $C0
    ldh [rP1], a                                  ; $529E: $E0 $00
    jr nz, jr_011_52A2                            ; $52A0: $20 $00

jr_011_52A2:
    ld [hl], b                                    ; $52A2: $70
    jr nz, jr_011_5315                            ; $52A3: $20 $70

    jr nz, jr_011_5317                            ; $52A5: $20 $70

    jr nz, jr_011_531A                            ; $52A7: $20 $71

    jr nz, jr_011_52E4                            ; $52A9: $20 $39

    db $10                                        ; $52AB: $10
    dec sp                                        ; $52AC: $3B
    ld de, $081F                                  ; $52AD: $11 $1F $08
    rrca                                          ; $52B0: $0F
    ld b, $0F                                     ; $52B1: $06 $0F
    rlca                                          ; $52B3: $07
    rrca                                          ; $52B4: $0F
    ld b, $07                                     ; $52B5: $06 $07
    ld [bc], a                                    ; $52B7: $02
    rlca                                          ; $52B8: $07
    inc bc                                        ; $52B9: $03
    inc bc                                        ; $52BA: $03
    ld bc, $0103                                  ; $52BB: $01 $03 $01
    ld bc, $0000                                  ; $52BE: $01 $00 $00
    nop                                           ; $52C1: $00
    nop                                           ; $52C2: $00
    nop                                           ; $52C3: $00
    jr c, jr_011_52C6                             ; $52C4: $38 $00

jr_011_52C6:
    cp $38                                        ; $52C6: $FE $38
    rst RST_38                                    ; $52C8: $FF
    add $FF                                       ; $52C9: $C6 $FF
    cp e                                          ; $52CB: $BB
    rst RST_38                                    ; $52CC: $FF
    ld e, h                                       ; $52CD: $5C
    rst RST_38                                    ; $52CE: $FF
    db $F4                                        ; $52CF: $F4
    rst RST_38                                    ; $52D0: $FF
    ldh a, [c]                                    ; $52D1: $F2
    rst RST_38                                    ; $52D2: $FF
    sbc $FF                                       ; $52D3: $DE $FF
    jp z, Jump_011_7CFE                           ; $52D5: $CA $FE $7C

    cp $00                                        ; $52D8: $FE $00
    rst RST_28                                    ; $52DA: $EF
    inc b                                         ; $52DB: $04
    rst RST_38                                    ; $52DC: $FF
    and [hl]                                      ; $52DD: $A6
    rst RST_30                                    ; $52DE: $F7
    nop                                           ; $52DF: $00
    nop                                           ; $52E0: $00
    nop                                           ; $52E1: $00
    nop                                           ; $52E2: $00
    nop                                           ; $52E3: $00

jr_011_52E4:
    nop                                           ; $52E4: $00
    nop                                           ; $52E5: $00
    nop                                           ; $52E6: $00
    nop                                           ; $52E7: $00
    nop                                           ; $52E8: $00
    nop                                           ; $52E9: $00
    rlca                                          ; $52EA: $07
    nop                                           ; $52EB: $00
    rrca                                          ; $52EC: $0F
    rlca                                          ; $52ED: $07
    rlca                                          ; $52EE: $07
    nop                                           ; $52EF: $00
    inc c                                         ; $52F0: $0C
    nop                                           ; $52F1: $00
    ld a, $00                                     ; $52F2: $3E $00
    rst RST_38                                    ; $52F4: $FF
    nop                                           ; $52F5: $00
    rst RST_28                                    ; $52F6: $EF
    rlca                                          ; $52F7: $07
    rra                                           ; $52F8: $1F
    inc c                                         ; $52F9: $0C
    inc a                                         ; $52FA: $3C
    jr jr_011_5375                                ; $52FB: $18 $78

    jr nc, jr_011_536F                            ; $52FD: $30 $70

    nop                                           ; $52FF: $00
    ret nz                                        ; $5300: $C0

    nop                                           ; $5301: $00
    ld hl, sp-$40                                 ; $5302: $F8 $C0
    cp $38                                        ; $5304: $FE $38
    ccf                                           ; $5306: $3F
    ld b, $E7                                     ; $5307: $06 $E7
    ld [bc], a                                    ; $5309: $02
    di                                            ; $530A: $F3
    pop hl                                        ; $530B: $E1
    ei                                            ; $530C: $FB
    or b                                          ; $530D: $B0
    rst RST_38                                    ; $530E: $FF
    ld l, e                                       ; $530F: $6B
    rst RST_38                                    ; $5310: $FF
    ld a, $7F                                     ; $5311: $3E $7F
    add hl, hl                                    ; $5313: $29
    ccf                                           ; $5314: $3F

jr_011_5315:
    rra                                           ; $5315: $1F
    ccf                                           ; $5316: $3F

jr_011_5317:
    dec de                                        ; $5317: $1B
    rra                                           ; $5318: $1F
    add hl, bc                                    ; $5319: $09

jr_011_531A:
    rrca                                          ; $531A: $0F
    rlca                                          ; $531B: $07
    rlca                                          ; $531C: $07
    nop                                           ; $531D: $00
    nop                                           ; $531E: $00
    nop                                           ; $531F: $00
    add b                                         ; $5320: $80
    nop                                           ; $5321: $00
    ldh a, [$FF80]                                ; $5322: $F0 $80
    db $FC                                        ; $5324: $FC
    ld [hl], b                                    ; $5325: $70
    rst RST_38                                    ; $5326: $FF
    sbc h                                         ; $5327: $9C
    rst RST_38                                    ; $5328: $FF
    and $FF                                       ; $5329: $E6 $FF
    ld l, l                                       ; $532B: $6D
    rst RST_38                                    ; $532C: $FF
    rst RST_38                                    ; $532D: $FF
    rst RST_38                                    ; $532E: $FF
    ld l, e                                       ; $532F: $6B
    ei                                            ; $5330: $FB
    add $C5                                       ; $5331: $C6 $C5
    ld [bc], a                                    ; $5333: $02
    inc bc                                        ; $5334: $03
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
    rrca                                          ; $5340: $0F
    nop                                           ; $5341: $00
    rra                                           ; $5342: $1F
    rrca                                          ; $5343: $0F
    rst RST_38                                    ; $5344: $FF
    dec e                                         ; $5345: $1D
    rst RST_38                                    ; $5346: $FF
    cp h                                          ; $5347: $BC
    rst RST_38                                    ; $5348: $FF
    rst RST_30                                    ; $5349: $F7
    rst RST_38                                    ; $534A: $FF
    or l                                          ; $534B: $B5
    rst RST_38                                    ; $534C: $FF
    sbc a                                         ; $534D: $9F
    rst RST_38                                    ; $534E: $FF
    ret nz                                        ; $534F: $C0

    ldh [$FFDF], a                                ; $5350: $E0 $DF
    rst RST_38                                    ; $5352: $FF
    ld b, b                                       ; $5353: $40
    di                                            ; $5354: $F3
    ld h, c                                       ; $5355: $61
    ld a, l                                       ; $5356: $7D
    jr nz, jr_011_53D7                            ; $5357: $20 $7E

    inc [hl]                                      ; $5359: $34
    ld a, $00                                     ; $535A: $3E $00
    nop                                           ; $535C: $00
    nop                                           ; $535D: $00
    nop                                           ; $535E: $00
    nop                                           ; $535F: $00
    inc e                                         ; $5360: $1C
    nop                                           ; $5361: $00
    rra                                           ; $5362: $1F
    inc c                                         ; $5363: $0C
    rst RST_38                                    ; $5364: $FF
    rrca                                          ; $5365: $0F
    rst RST_38                                    ; $5366: $FF
    ld [hl], h                                    ; $5367: $74
    rst RST_38                                    ; $5368: $FF
    sbc [hl]                                      ; $5369: $9E
    push af                                       ; $536A: $F5
    cp a                                          ; $536B: $BF

jr_011_536C:
    jp $DCFC                                      ; $536C: $C3 $FC $DC


jr_011_536F:
    ld h, e                                       ; $536F: $63
    inc hl                                        ; $5370: $23
    ret nz                                        ; $5371: $C0

    ret nz                                        ; $5372: $C0

    nop                                           ; $5373: $00
    add b                                         ; $5374: $80

jr_011_5375:
    nop                                           ; $5375: $00
    ret nz                                        ; $5376: $C0

    add b                                         ; $5377: $80
    ld hl, sp-$40                                 ; $5378: $F8 $C0
    db $FC                                        ; $537A: $FC
    ld l, b                                       ; $537B: $68
    ld a, h                                       ; $537C: $7C
    nop                                           ; $537D: $00
    nop                                           ; $537E: $00
    nop                                           ; $537F: $00
    add b                                         ; $5380: $80
    nop                                           ; $5381: $00
    ret nz                                        ; $5382: $C0

    add b                                         ; $5383: $80
    ldh [rLCDC], a                                ; $5384: $E0 $40
    ld h, b                                       ; $5386: $60
    add b                                         ; $5387: $80
    ldh a, [$FF60]                                ; $5388: $F0 $60
    jr nc, jr_011_536C                            ; $538A: $30 $E0

    ldh [rP1], a                                  ; $538C: $E0 $00
    ld b, b                                       ; $538E: $40
    add b                                         ; $538F: $80
    add b                                         ; $5390: $80
    nop                                           ; $5391: $00
    nop                                           ; $5392: $00
    nop                                           ; $5393: $00
    nop                                           ; $5394: $00
    nop                                           ; $5395: $00
    nop                                           ; $5396: $00
    nop                                           ; $5397: $00
    nop                                           ; $5398: $00
    nop                                           ; $5399: $00
    nop                                           ; $539A: $00
    nop                                           ; $539B: $00
    nop                                           ; $539C: $00
    nop                                           ; $539D: $00
    nop                                           ; $539E: $00
    nop                                           ; $539F: $00
    nop                                           ; $53A0: $00
    nop                                           ; $53A1: $00
    inc b                                         ; $53A2: $04
    nop                                           ; $53A3: $00
    dec c                                         ; $53A4: $0D
    nop                                           ; $53A5: $00
    rra                                           ; $53A6: $1F
    ld [$081F], sp                                ; $53A7: $08 $1F $08
    ccf                                           ; $53AA: $3F
    jr jr_011_53EC                                ; $53AB: $18 $3F

    add hl, de                                    ; $53AD: $19
    ld a, a                                       ; $53AE: $7F
    dec sp                                        ; $53AF: $3B
    ld a, a                                       ; $53B0: $7F
    ccf                                           ; $53B1: $3F
    ld l, a                                       ; $53B2: $6F
    ccf                                           ; $53B3: $3F
    xor $7F                                       ; $53B4: $EE $7F
    call z, $C87F                                 ; $53B6: $CC $7F $C8
    ld a, a                                       ; $53B9: $7F
    ret nz                                        ; $53BA: $C0

    ld a, a                                       ; $53BB: $7F
    pop bc                                        ; $53BC: $C1
    ld a, a                                       ; $53BD: $7F
    pop bc                                        ; $53BE: $C1
    ld a, a                                       ; $53BF: $7F
    jp $C37E                                      ; $53C0: $C3 $7E $C3


    ld a, [hl]                                    ; $53C3: $7E
    rst RST_00                                    ; $53C4: $C7
    ld a, [hl]                                    ; $53C5: $7E
    add $7C                                       ; $53C6: $C6 $7C
    ld b, [hl]                                    ; $53C8: $46
    inc a                                         ; $53C9: $3C
    ld l, [hl]                                    ; $53CA: $6E
    inc a                                         ; $53CB: $3C
    ld l, h                                       ; $53CC: $6C
    jr c, jr_011_540B                             ; $53CD: $38 $3C

    jr jr_011_540D                                ; $53CF: $18 $3C

    jr jr_011_53EF                                ; $53D1: $18 $1C

    ld [$001C], sp                                ; $53D3: $08 $1C $00
    inc c                                         ; $53D6: $0C

jr_011_53D7:
    nop                                           ; $53D7: $00
    inc b                                         ; $53D8: $04
    nop                                           ; $53D9: $00
    nop                                           ; $53DA: $00
    nop                                           ; $53DB: $00
    nop                                           ; $53DC: $00
    nop                                           ; $53DD: $00
    nop                                           ; $53DE: $00
    nop                                           ; $53DF: $00
    nop                                           ; $53E0: $00
    nop                                           ; $53E1: $00
    nop                                           ; $53E2: $00
    nop                                           ; $53E3: $00
    nop                                           ; $53E4: $00
    nop                                           ; $53E5: $00
    nop                                           ; $53E6: $00
    nop                                           ; $53E7: $00
    nop                                           ; $53E8: $00
    nop                                           ; $53E9: $00
    nop                                           ; $53EA: $00
    nop                                           ; $53EB: $00

jr_011_53EC:
    rlca                                          ; $53EC: $07
    nop                                           ; $53ED: $00
    rra                                           ; $53EE: $1F

jr_011_53EF:
    nop                                           ; $53EF: $00
    ccf                                           ; $53F0: $3F
    nop                                           ; $53F1: $00
    rst RST_38                                    ; $53F2: $FF
    ld [bc], a                                    ; $53F3: $02
    rst RST_38                                    ; $53F4: $FF
    inc c                                         ; $53F5: $0C
    rst RST_38                                    ; $53F6: $FF
    jr c, @+$01                                   ; $53F7: $38 $FF

    ld a, b                                       ; $53F9: $78
    cp $F0                                        ; $53FA: $FE $F0
    db $FC                                        ; $53FC: $FC
    ldh a, [$FFF8]                                ; $53FD: $F0 $F8
    ldh [$FFF8], a                                ; $53FF: $E0 $F8
    ldh [rSVBK], a                                ; $5401: $E0 $70
    ret nz                                        ; $5403: $C0

    ld h, b                                       ; $5404: $60
    ret nz                                        ; $5405: $C0

    ldh [$FFC0], a                                ; $5406: $E0 $C0
    rst RST_00                                    ; $5408: $C7
    add b                                         ; $5409: $80
    rst RST_00                                    ; $540A: $C7

jr_011_540B:
    add e                                         ; $540B: $83
    add a                                         ; $540C: $87

jr_011_540D:
    inc bc                                        ; $540D: $03
    add e                                         ; $540E: $83
    ld bc, $0103                                  ; $540F: $01 $03 $01
    inc bc                                        ; $5412: $03
    ld bc, $0003                                  ; $5413: $01 $03 $00
    nop                                           ; $5416: $00
    nop                                           ; $5417: $00
    nop                                           ; $5418: $00
    nop                                           ; $5419: $00
    rlca                                          ; $541A: $07
    nop                                           ; $541B: $00
    rrca                                          ; $541C: $0F
    dec b                                         ; $541D: $05
    rrca                                          ; $541E: $0F
    nop                                           ; $541F: $00
    nop                                           ; $5420: $00
    nop                                           ; $5421: $00
    nop                                           ; $5422: $00
    nop                                           ; $5423: $00
    nop                                           ; $5424: $00
    nop                                           ; $5425: $00
    db $FC                                        ; $5426: $FC
    nop                                           ; $5427: $00
    ld hl, sp+$00                                 ; $5428: $F8 $00
    ldh a, [rP1]                                  ; $542A: $F0 $00
    ldh [rP1], a                                  ; $542C: $E0 $00
    ret nz                                        ; $542E: $C0

    nop                                           ; $542F: $00
    add b                                         ; $5430: $80
    nop                                           ; $5431: $00
    nop                                           ; $5432: $00
    nop                                           ; $5433: $00
    nop                                           ; $5434: $00
    nop                                           ; $5435: $00
    inc bc                                        ; $5436: $03
    nop                                           ; $5437: $00
    rlca                                          ; $5438: $07
    inc bc                                        ; $5439: $03
    rrca                                          ; $543A: $0F
    dec b                                         ; $543B: $05
    rra                                           ; $543C: $1F
    rrca                                          ; $543D: $0F
    ccf                                           ; $543E: $3F
    ld e, $7F                                     ; $543F: $1E $7F
    dec sp                                        ; $5441: $3B
    ld a, a                                       ; $5442: $7F
    dec hl                                        ; $5443: $2B
    rst RST_38                                    ; $5444: $FF
    ld [hl], e                                    ; $5445: $73
    di                                            ; $5446: $F3
    ld e, l                                       ; $5447: $5D
    rst RST_30                                    ; $5448: $F7
    ld sp, hl                                     ; $5449: $F9
    ei                                            ; $544A: $FB
    pop hl                                        ; $544B: $E1
    rst RST_30                                    ; $544C: $F7
    add hl, hl                                    ; $544D: $29
    xor e                                         ; $544E: $AB
    ld d, l                                       ; $544F: $55
    rst RST_28                                    ; $5450: $EF
    or e                                          ; $5451: $B3
    rst RST_38                                    ; $5452: $FF
    inc sp                                        ; $5453: $33
    rst RST_30                                    ; $5454: $F7
    ld [bc], a                                    ; $5455: $02
    rst RST_28                                    ; $5456: $EF
    add $CE                                       ; $5457: $C6 $CE
    add h                                         ; $5459: $84
    cp [hl]                                       ; $545A: $BE
    inc c                                         ; $545B: $0C
    ld a, [hl]                                    ; $545C: $7E
    inc l                                         ; $545D: $2C
    ld a, h                                       ; $545E: $7C
    nop                                           ; $545F: $00
    rst RST_38                                    ; $5460: $FF
    ld bc, $BEFF                                  ; $5461: $01 $FF $BE
    rst RST_38                                    ; $5464: $FF
    ei                                            ; $5465: $FB
    rst RST_38                                    ; $5466: $FF
    xor [hl]                                      ; $5467: $AE
    rst RST_38                                    ; $5468: $FF
    halt                                          ; $5469: $76
    rst RST_38                                    ; $546A: $FF
    halt                                          ; $546B: $76
    db $FD                                        ; $546C: $FD
    sub $FA                                       ; $546D: $D6 $FA
    ld d, h                                       ; $546F: $54
    db $FC                                        ; $5470: $FC
    ldh a, [$FFF8]                                ; $5471: $F0 $F8
    ldh [$FFF0], a                                ; $5473: $E0 $F0
    ld h, b                                       ; $5475: $60
    ldh [$FFC0], a                                ; $5476: $E0 $C0
    ldh [$FFC0], a                                ; $5478: $E0 $C0
    pop bc                                        ; $547A: $C1
    add b                                         ; $547B: $80
    add e                                         ; $547C: $83
    ld bc, $0083                                  ; $547D: $01 $83 $00
    ld a, b                                       ; $5480: $78
    nop                                           ; $5481: $00
    cp $78                                        ; $5482: $FE $78
    rst RST_38                                    ; $5484: $FF
    add $FF                                       ; $5485: $C6 $FF
    cp c                                          ; $5487: $B9
    rst RST_38                                    ; $5488: $FF
    ld [hl], h                                    ; $5489: $74
    rst RST_38                                    ; $548A: $FF
    ld e, [hl]                                    ; $548B: $5E
    rst RST_38                                    ; $548C: $FF
    sbc [hl]                                      ; $548D: $9E
    rst RST_38                                    ; $548E: $FF

jr_011_548F:
    rst RST_30                                    ; $548F: $F7
    rst RST_38                                    ; $5490: $FF
    and [hl]                                      ; $5491: $A6
    rst RST_38                                    ; $5492: $FF
    ld a, h                                       ; $5493: $7C
    ld a, a                                       ; $5494: $7F
    ld bc, $193F                                  ; $5495: $01 $3F $19
    ccf                                           ; $5498: $3F
    inc de                                        ; $5499: $13
    ld a, a                                       ; $549A: $7F
    ld a, [hl+]                                   ; $549B: $2A
    ld a, [hl]                                    ; $549C: $7E
    jr nz, jr_011_548F                            ; $549D: $20 $F0

    ld h, b                                       ; $549F: $60
    add b                                         ; $54A0: $80
    nop                                           ; $54A1: $00
    ret nz                                        ; $54A2: $C0

    add b                                         ; $54A3: $80
    ldh [rP1], a                                  ; $54A4: $E0 $00
    ldh a, [$FFC0]                                ; $54A6: $F0 $C0
    ldh a, [$FFC0]                                ; $54A8: $F0 $C0
    ld hl, sp-$30                                 ; $54AA: $F8 $D0
    ld hl, sp-$70                                 ; $54AC: $F8 $90
    ld hl, sp-$70                                 ; $54AE: $F8 $90
    cp b                                          ; $54B0: $B8
    db $10                                        ; $54B1: $10
    sbc h                                         ; $54B2: $9C
    ld [$081E], sp                                ; $54B3: $08 $1E $08
    rrca                                          ; $54B6: $0F
    ld b, $06                                     ; $54B7: $06 $06
    nop                                           ; $54B9: $00
    nop                                           ; $54BA: $00
    nop                                           ; $54BB: $00
    nop                                           ; $54BC: $00
    nop                                           ; $54BD: $00
    nop                                           ; $54BE: $00
    nop                                           ; $54BF: $00
    ldh [rLCDC], a                                ; $54C0: $E0 $40
    ret nz                                        ; $54C2: $C0

    nop                                           ; $54C3: $00
    nop                                           ; $54C4: $00
    nop                                           ; $54C5: $00
    nop                                           ; $54C6: $00
    nop                                           ; $54C7: $00
    nop                                           ; $54C8: $00
    nop                                           ; $54C9: $00
    nop                                           ; $54CA: $00
    nop                                           ; $54CB: $00
    nop                                           ; $54CC: $00
    nop                                           ; $54CD: $00
    nop                                           ; $54CE: $00
    nop                                           ; $54CF: $00
    nop                                           ; $54D0: $00
    nop                                           ; $54D1: $00
    nop                                           ; $54D2: $00
    nop                                           ; $54D3: $00
    nop                                           ; $54D4: $00
    nop                                           ; $54D5: $00
    nop                                           ; $54D6: $00
    nop                                           ; $54D7: $00
    nop                                           ; $54D8: $00
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
    nop                                           ; $54EC: $00
    nop                                           ; $54ED: $00
    nop                                           ; $54EE: $00
    nop                                           ; $54EF: $00
    nop                                           ; $54F0: $00
    nop                                           ; $54F1: $00
    nop                                           ; $54F2: $00
    nop                                           ; $54F3: $00
    nop                                           ; $54F4: $00
    nop                                           ; $54F5: $00
    nop                                           ; $54F6: $00
    nop                                           ; $54F7: $00
    nop                                           ; $54F8: $00
    nop                                           ; $54F9: $00
    nop                                           ; $54FA: $00
    nop                                           ; $54FB: $00
    nop                                           ; $54FC: $00
    nop                                           ; $54FD: $00
    ld bc, $8000                                  ; $54FE: $01 $00 $80
    nop                                           ; $5501: $00
    ret nz                                        ; $5502: $C0

    nop                                           ; $5503: $00
    ldh [rP1], a                                  ; $5504: $E0 $00
    ldh a, [rP1]                                  ; $5506: $F0 $00
    db $FC                                        ; $5508: $FC
    nop                                           ; $5509: $00
    ld a, [hl]                                    ; $550A: $7E
    nop                                           ; $550B: $00
    ld a, a                                       ; $550C: $7F
    db $10                                        ; $550D: $10
    ld a, a                                       ; $550E: $7F
    ld [$0E3F], sp                                ; $550F: $08 $3F $0E
    ccf                                           ; $5512: $3F
    rlca                                          ; $5513: $07
    rra                                           ; $5514: $1F
    rlca                                          ; $5515: $07
    rra                                           ; $5516: $1F
    inc bc                                        ; $5517: $03
    rrca                                          ; $5518: $0F
    ld bc, $0007                                  ; $5519: $01 $07 $00
    rra                                           ; $551C: $1F
    nop                                           ; $551D: $00
    rrca                                          ; $551E: $0F
    inc bc                                        ; $551F: $03
    ld hl, sp+$00                                 ; $5520: $F8 $00
    db $FC                                        ; $5522: $FC

jr_011_5523:
    ret nz                                        ; $5523: $C0

    rst RST_38                                    ; $5524: $FF
    ldh a, [rIE]                                  ; $5525: $F0 $FF
    cp $F7                                        ; $5527: $FE $F7
    ld a, a                                       ; $5529: $7F
    ld hl, sp+$3F                                 ; $552A: $F8 $3F
    db $FC                                        ; $552C: $FC
    rra                                           ; $552D: $1F
    cp $0F                                        ; $552E: $FE $0F
    rst RST_38                                    ; $5530: $FF
    ld a, a                                       ; $5531: $7F
    ld hl, sp+$3F                                 ; $5532: $F8 $3F
    ld a, [hl]                                    ; $5534: $7E
    rrca                                          ; $5535: $0F
    rra                                           ; $5536: $1F
    ld bc, $0003                                  ; $5537: $01 $03 $00
    nop                                           ; $553A: $00
    nop                                           ; $553B: $00
    nop                                           ; $553C: $00
    nop                                           ; $553D: $00
    nop                                           ; $553E: $00
    nop                                           ; $553F: $00
    ld a, a                                       ; $5540: $7F
    cpl                                           ; $5541: $2F
    ccf                                           ; $5542: $3F
    inc e                                         ; $5543: $1C
    rra                                           ; $5544: $1F
    rrca                                          ; $5545: $0F
    rrca                                          ; $5546: $0F
    ld b, $07                                     ; $5547: $06 $07
    inc bc                                        ; $5549: $03
    jp $F000                                      ; $554A: $C3 $00 $F0


    add b                                         ; $554D: $80
    cp $F0                                        ; $554E: $FE $F0
    rra                                           ; $5550: $1F
    cp $03                                        ; $5551: $FE $03
    rst RST_38                                    ; $5553: $FF
    add b                                         ; $5554: $80
    rst RST_38                                    ; $5555: $FF
    nop                                           ; $5556: $00
    rst RST_38                                    ; $5557: $FF
    nop                                           ; $5558: $00
    rst RST_38                                    ; $5559: $FF
    rst RST_38                                    ; $555A: $FF
    rst RST_38                                    ; $555B: $FF
    rst RST_38                                    ; $555C: $FF
    nop                                           ; $555D: $00
    nop                                           ; $555E: $00
    nop                                           ; $555F: $00
    rst RST_38                                    ; $5560: $FF
    add e                                         ; $5561: $83
    xor e                                         ; $5562: $AB
    ld b, h                                       ; $5563: $44
    sub a                                         ; $5564: $97
    ld l, b                                       ; $5565: $68
    ld sp, hl                                     ; $5566: $F9
    rst RST_20                                    ; $5567: $E7
    rst RST_38                                    ; $5568: $FF
    cp e                                          ; $5569: $BB
    ei                                            ; $556A: $FB
    db $F4                                        ; $556B: $F4
    rst RST_38                                    ; $556C: $FF
    ld [hl-], a                                   ; $556D: $32
    cp $7C                                        ; $556E: $FE $7C
    cp $20                                        ; $5570: $FE $20
    rst RST_38                                    ; $5572: $FF
    ret nz                                        ; $5573: $C0

    ld a, a                                       ; $5574: $7F
    db $FC                                        ; $5575: $FC
    ld e, $F8                                     ; $5576: $1E $F8
    ld a, b                                       ; $5578: $78
    ldh [$FFE0], a                                ; $5579: $E0 $E0
    nop                                           ; $557B: $00
    nop                                           ; $557C: $00
    nop                                           ; $557D: $00
    nop                                           ; $557E: $00
    nop                                           ; $557F: $00
    ld hl, sp-$40                                 ; $5580: $F8 $C0
    db $FC                                        ; $5582: $FC
    ld a, b                                       ; $5583: $78
    ld a, h                                       ; $5584: $7C
    jr jr_011_5523                                ; $5585: $18 $9C

    nop                                           ; $5587: $00
    adc $04                                       ; $5588: $CE $04
    and $40                                       ; $558A: $E6 $40
    ldh a, [$FF60]                                ; $558C: $F0 $60
    ld [hl], b                                    ; $558E: $70
    jr nz, @+$32                                  ; $558F: $20 $30

    nop                                           ; $5591: $00
    cp b                                          ; $5592: $B8
    db $10                                        ; $5593: $10
    jr jr_011_5596                                ; $5594: $18 $00

jr_011_5596:
    nop                                           ; $5596: $00
    nop                                           ; $5597: $00
    nop                                           ; $5598: $00
    nop                                           ; $5599: $00
    nop                                           ; $559A: $00
    nop                                           ; $559B: $00
    nop                                           ; $559C: $00
    nop                                           ; $559D: $00
    nop                                           ; $559E: $00
    nop                                           ; $559F: $00
    rrca                                          ; $55A0: $0F
    inc b                                         ; $55A1: $04
    rrca                                          ; $55A2: $0F
    dec b                                         ; $55A3: $05
    rra                                           ; $55A4: $1F
    ld a, [bc]                                    ; $55A5: $0A
    rra                                           ; $55A6: $1F
    dec bc                                        ; $55A7: $0B
    rra                                           ; $55A8: $1F
    dec bc                                        ; $55A9: $0B
    rra                                           ; $55AA: $1F
    dec c                                         ; $55AB: $0D
    rrca                                          ; $55AC: $0F
    ld b, $0F                                     ; $55AD: $06 $0F
    dec b                                         ; $55AF: $05
    rlca                                          ; $55B0: $07
    inc bc                                        ; $55B1: $03
    rlca                                          ; $55B2: $07
    ld [bc], a                                    ; $55B3: $02
    rlca                                          ; $55B4: $07
    inc bc                                        ; $55B5: $03
    rlca                                          ; $55B6: $07
    inc bc                                        ; $55B7: $03
    rlca                                          ; $55B8: $07
    inc bc                                        ; $55B9: $03
    rlca                                          ; $55BA: $07
    ld bc, $0307                                  ; $55BB: $01 $07 $03
    inc bc                                        ; $55BE: $03
    ld bc, $F1FF                                  ; $55BF: $01 $FF $F1
    rst RST_38                                    ; $55C2: $FF
    ld hl, sp-$01                                 ; $55C3: $F8 $FF
    jp z, $EBFF                                   ; $55C5: $CA $FF $EB

    rst RST_38                                    ; $55C8: $FF
    jr c, @-$02                                   ; $55C9: $38 $FC

    xor b                                         ; $55CB: $A8
    ld hl, sp+$70                                 ; $55CC: $F8 $70
    ldh a, [rP1]                                  ; $55CE: $F0 $00
    add sp, -$10                                  ; $55D0: $E8 $F0
    db $F4                                        ; $55D2: $F4
    ld hl, sp-$02                                 ; $55D3: $F8 $FE
    add b                                         ; $55D5: $80
    rst RST_38                                    ; $55D6: $FF
    ld a, h                                       ; $55D7: $7C
    rst RST_38                                    ; $55D8: $FF
    rst RST_20                                    ; $55D9: $E7
    rst RST_38                                    ; $55DA: $FF
    ld a, a                                       ; $55DB: $7F
    rst RST_38                                    ; $55DC: $FF
    sub [hl]                                      ; $55DD: $96
    rst RST_38                                    ; $55DE: $FF
    rst RST_18                                    ; $55DF: $DF
    rst RST_00                                    ; $55E0: $C7
    add d                                         ; $55E1: $82
    rst RST_00                                    ; $55E2: $C7
    ld [bc], a                                    ; $55E3: $02
    jp nz, $E080                                  ; $55E4: $C2 $80 $E0

    nop                                           ; $55E7: $00
    ldh a, [$FFE0]                                ; $55E8: $F0 $E0
    ld hl, sp+$30                                 ; $55EA: $F8 $30
    jr c, jr_011_55EE                             ; $55EC: $38 $00

jr_011_55EE:
    jr c, jr_011_5600                             ; $55EE: $38 $10

    jr jr_011_55F2                                ; $55F0: $18 $00

jr_011_55F2:
    nop                                           ; $55F2: $00
    nop                                           ; $55F3: $00
    nop                                           ; $55F4: $00
    nop                                           ; $55F5: $00
    nop                                           ; $55F6: $00
    nop                                           ; $55F7: $00
    ret nz                                        ; $55F8: $C0

    nop                                           ; $55F9: $00
    ldh [$FFC0], a                                ; $55FA: $E0 $C0
    ld hl, sp-$20                                 ; $55FC: $F8 $E0
    cp $F8                                        ; $55FE: $FE $F8

jr_011_5600:
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
    nop                                           ; $5612: $00
    nop                                           ; $5613: $00
    nop                                           ; $5614: $00
    nop                                           ; $5615: $00
    nop                                           ; $5616: $00
    nop                                           ; $5617: $00
    nop                                           ; $5618: $00
    nop                                           ; $5619: $00
    ld bc, $0300                                  ; $561A: $01 $00 $03
    ld bc, $0207                                  ; $561D: $01 $07 $02
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
    nop                                           ; $5632: $00
    nop                                           ; $5633: $00
    rra                                           ; $5634: $1F
    nop                                           ; $5635: $00
    ld a, a                                       ; $5636: $7F
    rra                                           ; $5637: $1F
    rst RST_38                                    ; $5638: $FF
    nop                                           ; $5639: $00
    db $FC                                        ; $563A: $FC
    ld [hl], b                                    ; $563B: $70
    rst RST_38                                    ; $563C: $FF
    ld a, h                                       ; $563D: $7C
    rst RST_38                                    ; $563E: $FF
    daa                                           ; $563F: $27
    nop                                           ; $5640: $00
    nop                                           ; $5641: $00
    nop                                           ; $5642: $00
    nop                                           ; $5643: $00
    nop                                           ; $5644: $00
    nop                                           ; $5645: $00
    nop                                           ; $5646: $00
    nop                                           ; $5647: $00
    nop                                           ; $5648: $00
    nop                                           ; $5649: $00
    nop                                           ; $564A: $00
    nop                                           ; $564B: $00
    nop                                           ; $564C: $00
    nop                                           ; $564D: $00
    nop                                           ; $564E: $00
    nop                                           ; $564F: $00
    nop                                           ; $5650: $00
    nop                                           ; $5651: $00
    nop                                           ; $5652: $00
    nop                                           ; $5653: $00
    nop                                           ; $5654: $00
    nop                                           ; $5655: $00
    ret nz                                        ; $5656: $C0

    nop                                           ; $5657: $00
    ldh a, [$FFC0]                                ; $5658: $F0 $C0
    ld hl, sp+$30                                 ; $565A: $F8 $30
    inc a                                         ; $565C: $3C
    ld [$048E], sp                                ; $565D: $08 $8E $04
    nop                                           ; $5660: $00
    nop                                           ; $5661: $00
    nop                                           ; $5662: $00
    nop                                           ; $5663: $00
    ld [bc], a                                    ; $5664: $02
    nop                                           ; $5665: $00
    ld b, $00                                     ; $5666: $06 $00
    ld c, $00                                     ; $5668: $0E $00
    ld c, $04                                     ; $566A: $0E $04
    ld e, $0C                                     ; $566C: $1E $0C
    ld e, $0C                                     ; $566E: $1E $0C
    ld [hl], $1C                                  ; $5670: $36 $1C
    scf                                           ; $5672: $37
    ld e, $23                                     ; $5673: $1E $23
    ld e, $63                                     ; $5675: $1E $63
    ld a, $63                                     ; $5677: $3E $63
    ccf                                           ; $5679: $3F
    ld h, c                                       ; $567A: $61
    ccf                                           ; $567B: $3F
    ld h, c                                       ; $567C: $61
    ccf                                           ; $567D: $3F
    ld h, b                                       ; $567E: $60
    ccf                                           ; $567F: $3F
    ld h, b                                       ; $5680: $60
    ccf                                           ; $5681: $3F
    ld h, b                                       ; $5682: $60
    ccf                                           ; $5683: $3F
    ld h, h                                       ; $5684: $64
    ccf                                           ; $5685: $3F
    ld h, [hl]                                    ; $5686: $66
    ccf                                           ; $5687: $3F
    ld [hl], a                                    ; $5688: $77
    ccf                                           ; $5689: $3F
    scf                                           ; $568A: $37
    rra                                           ; $568B: $1F
    ccf                                           ; $568C: $3F
    rra                                           ; $568D: $1F
    ccf                                           ; $568E: $3F
    dec e                                         ; $568F: $1D
    rra                                           ; $5690: $1F
    inc c                                         ; $5691: $0C
    rra                                           ; $5692: $1F
    inc c                                         ; $5693: $0C
    rrca                                          ; $5694: $0F
    inc b                                         ; $5695: $04
    rrca                                          ; $5696: $0F
    inc b                                         ; $5697: $04
    ld b, $00                                     ; $5698: $06 $00
    ld [bc], a                                    ; $569A: $02
    nop                                           ; $569B: $00
    nop                                           ; $569C: $00
    nop                                           ; $569D: $00
    nop                                           ; $569E: $00
    nop                                           ; $569F: $00
    add b                                         ; $56A0: $80
    nop                                           ; $56A1: $00
    ret nz                                        ; $56A2: $C0

    nop                                           ; $56A3: $00
    ldh [rLCDC], a                                ; $56A4: $E0 $40
    pop af                                        ; $56A6: $F1
    and b                                         ; $56A7: $A0
    di                                            ; $56A8: $F3
    and c                                         ; $56A9: $A1
    ld a, e                                       ; $56AA: $7B
    pop de                                        ; $56AB: $D1
    ld a, a                                       ; $56AC: $7F
    db $D3                                        ; $56AD: $D3
    ld a, a                                       ; $56AE: $7F
    ldh [c], a                                    ; $56AF: $E2
    ccf                                           ; $56B0: $3F
    and $BF                                       ; $56B1: $E6 $BF
    rst RST_20                                    ; $56B3: $E7
    rst RST_38                                    ; $56B4: $FF
    ldh a, [c]                                    ; $56B5: $F2
    rst RST_38                                    ; $56B6: $FF
    ldh a, [rIE]                                  ; $56B7: $F0 $FF
    ld hl, sp-$01                                 ; $56B9: $F8 $FF
    ld a, b                                       ; $56BB: $78
    rst RST_38                                    ; $56BC: $FF
    inc a                                         ; $56BD: $3C
    rst RST_38                                    ; $56BE: $FF
    inc e                                         ; $56BF: $1C
    rst RST_38                                    ; $56C0: $FF
    ld b, $7F                                     ; $56C1: $06 $7F
    ld bc, $001F                                  ; $56C3: $01 $1F $00
    rrca                                          ; $56C6: $0F
    nop                                           ; $56C7: $00
    inc bc                                        ; $56C8: $03
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
    nop                                           ; $56D4: $00
    nop                                           ; $56D5: $00
    nop                                           ; $56D6: $00
    nop                                           ; $56D7: $00
    nop                                           ; $56D8: $00
    nop                                           ; $56D9: $00
    nop                                           ; $56DA: $00
    nop                                           ; $56DB: $00
    nop                                           ; $56DC: $00
    nop                                           ; $56DD: $00
    nop                                           ; $56DE: $00
    nop                                           ; $56DF: $00
    rlca                                          ; $56E0: $07
    nop                                           ; $56E1: $00
    rrca                                          ; $56E2: $0F
    dec b                                         ; $56E3: $05
    rra                                           ; $56E4: $1F
    inc c                                         ; $56E5: $0C
    db $FC                                        ; $56E6: $FC
    ld [$A8FC], sp                                ; $56E7: $08 $FC $A8
    ld hl, sp-$70                                 ; $56EA: $F8 $90
    ld hl, sp+$30                                 ; $56EC: $F8 $30
    db $FC                                        ; $56EE: $FC

Jump_011_56EF:
    nop                                           ; $56EF: $00
    cp $7C                                        ; $56F0: $FE $7C
    rst RST_38                                    ; $56F2: $FF
    jp z, $DEFF                                   ; $56F3: $CA $FF $DE

    rst RST_38                                    ; $56F6: $FF
    ldh a, [c]                                    ; $56F7: $F2
    rst RST_38                                    ; $56F8: $FF
    db $F4                                        ; $56F9: $F4
    rst RST_38                                    ; $56FA: $FF
    ld e, l                                       ; $56FB: $5D
    rst RST_38                                    ; $56FC: $FF
    ld a, [hl-]                                   ; $56FD: $3A
    rst RST_38                                    ; $56FE: $FF
    ld b, a                                       ; $56FF: $47
    rst RST_38                                    ; $5700: $FF
    inc a                                         ; $5701: $3C
    db $FC                                        ; $5702: $FC
    nop                                           ; $5703: $00
    ldh [rP1], a                                  ; $5704: $E0 $00
    ldh a, [rP1]                                  ; $5706: $F0 $00
    ld hl, sp+$00                                 ; $5708: $F8 $00
    db $FC                                        ; $570A: $FC
    nop                                           ; $570B: $00
    cp $00                                        ; $570C: $FE $00
    rra                                           ; $570E: $1F
    nop                                           ; $570F: $00
    rlca                                          ; $5710: $07
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
    ld bc, $0100                                  ; $5720: $01 $00 $01
    nop                                           ; $5723: $00
    add e                                         ; $5724: $83
    ld bc, $0183                                  ; $5725: $01 $83 $01
    rlca                                          ; $5728: $07
    inc bc                                        ; $5729: $03
    rrca                                          ; $572A: $0F
    rlca                                          ; $572B: $07
    rrca                                          ; $572C: $0F
    rlca                                          ; $572D: $07
    rra                                           ; $572E: $1F
    dec c                                         ; $572F: $0D
    ccf                                           ; $5730: $3F
    rrca                                          ; $5731: $0F
    ld a, a                                       ; $5732: $7F
    rra                                           ; $5733: $1F
    cp a                                          ; $5734: $BF
    ld d, l                                       ; $5735: $55
    ld a, a                                       ; $5736: $7F
    rst RST_10                                    ; $5737: $D7
    rst RST_38                                    ; $5738: $FF
    call c, $DDFF                                 ; $5739: $DC $FF $DD
    rst RST_38                                    ; $573C: $FF
    db $EB                                        ; $573D: $EB
    rst RST_38                                    ; $573E: $FF
    cp a                                          ; $573F: $BF
    rst RST_38                                    ; $5740: $FF
    ld a, [$00FE]                                 ; $5741: $FA $FE $00
    nop                                           ; $5744: $00
    nop                                           ; $5745: $00
    nop                                           ; $5746: $00
    nop                                           ; $5747: $00
    nop                                           ; $5748: $00
    nop                                           ; $5749: $00
    nop                                           ; $574A: $00
    nop                                           ; $574B: $00
    nop                                           ; $574C: $00
    nop                                           ; $574D: $00
    nop                                           ; $574E: $00
    nop                                           ; $574F: $00
    nop                                           ; $5750: $00
    nop                                           ; $5751: $00
    add b                                         ; $5752: $80
    nop                                           ; $5753: $00
    ret nz                                        ; $5754: $C0

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
    ld a, h                                       ; $5776: $7C
    nop                                           ; $5777: $00
    db $FC                                        ; $5778: $FC
    ld l, b                                       ; $5779: $68
    ei                                            ; $577A: $FB
    ld h, b                                       ; $577B: $60
    rst RST_20                                    ; $577C: $E7
    ld b, e                                       ; $577D: $43
    rst RST_28                                    ; $577E: $EF
    add $DE                                       ; $577F: $C6 $DE
    add b                                         ; $5781: $80
    cp $98                                        ; $5782: $FE $98
    rst RST_28                                    ; $5784: $EF
    sbc d                                         ; $5785: $9A
    xor e                                         ; $5786: $AB
    ld d, l                                       ; $5787: $55
    rst RST_18                                    ; $5788: $DF
    add hl, hl                                    ; $5789: $29
    cp a                                          ; $578A: $BF
    rrca                                          ; $578B: $0F
    rst RST_18                                    ; $578C: $DF
    ccf                                           ; $578D: $3F
    sbc a                                         ; $578E: $9F
    ld [hl], l                                    ; $578F: $75
    rst RST_38                                    ; $5790: $FF
    sbc h                                         ; $5791: $9C
    db $FC                                        ; $5792: $FC
    xor b                                         ; $5793: $A8
    db $FC                                        ; $5794: $FC
    cp b                                          ; $5795: $B8
    ld hl, sp-$10                                 ; $5796: $F8 $F0
    ldh a, [$FFE0]                                ; $5798: $F0 $E0
    ldh [rLCDC], a                                ; $579A: $E0 $40
    ret nz                                        ; $579C: $C0

    add b                                         ; $579D: $80
    add b                                         ; $579E: $80
    nop                                           ; $579F: $00
    nop                                           ; $57A0: $00
    nop                                           ; $57A1: $00
    nop                                           ; $57A2: $00
    nop                                           ; $57A3: $00
    nop                                           ; $57A4: $00
    nop                                           ; $57A5: $00
    nop                                           ; $57A6: $00
    nop                                           ; $57A7: $00
    ldh [rP1], a                                  ; $57A8: $E0 $00
    ldh [rLCDC], a                                ; $57AA: $E0 $40
    ret nz                                        ; $57AC: $C0

    nop                                           ; $57AD: $00
    nop                                           ; $57AE: $00
    nop                                           ; $57AF: $00
    nop                                           ; $57B0: $00
    nop                                           ; $57B1: $00
    add b                                         ; $57B2: $80
    nop                                           ; $57B3: $00
    add b                                         ; $57B4: $80
    nop                                           ; $57B5: $00
    add b                                         ; $57B6: $80
    nop                                           ; $57B7: $00
    add b                                         ; $57B8: $80
    nop                                           ; $57B9: $00
    ret nz                                        ; $57BA: $C0

    add b                                         ; $57BB: $80
    ret nz                                        ; $57BC: $C0

    add b                                         ; $57BD: $80
    ret nz                                        ; $57BE: $C0

    nop                                           ; $57BF: $00
    nop                                           ; $57C0: $00
    nop                                           ; $57C1: $00
    inc bc                                        ; $57C2: $03
    nop                                           ; $57C3: $00
    rlca                                          ; $57C4: $07
    ld bc, $030F                                  ; $57C5: $01 $0F $03
    rra                                           ; $57C8: $1F
    nop                                           ; $57C9: $00
    rlca                                          ; $57CA: $07
    nop                                           ; $57CB: $00
    rrca                                          ; $57CC: $0F
    ld bc, $031F                                  ; $57CD: $01 $1F $03
    rra                                           ; $57D0: $1F
    rlca                                          ; $57D1: $07
    ccf                                           ; $57D2: $3F
    rlca                                          ; $57D3: $07
    ccf                                           ; $57D4: $3F
    inc c                                         ; $57D5: $0C
    ld a, a                                       ; $57D6: $7F
    db $10                                        ; $57D7: $10
    ld a, h                                       ; $57D8: $7C
    nop                                           ; $57D9: $00
    ldh a, [rP1]                                  ; $57DA: $F0 $00
    ldh [rP1], a                                  ; $57DC: $E0 $00
    add b                                         ; $57DE: $80
    nop                                           ; $57DF: $00
    nop                                           ; $57E0: $00
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
    rra                                           ; $57EC: $1F
    nop                                           ; $57ED: $00
    rst RST_38                                    ; $57EE: $FF
    rra                                           ; $57EF: $1F
    ldh a, [$FF7F]                                ; $57F0: $F0 $7F
    ret nz                                        ; $57F2: $C0

    rst RST_38                                    ; $57F3: $FF
    db $FC                                        ; $57F4: $FC
    rst RST_38                                    ; $57F5: $FF
    ld hl, sp+$3F                                 ; $57F6: $F8 $3F
    pop af                                        ; $57F8: $F1
    rst RST_38                                    ; $57F9: $FF
    rst RST_38                                    ; $57FA: $FF
    cp $FF                                        ; $57FB: $FE $FF
    ldh a, [$FFFE]                                ; $57FD: $F0 $FE
    ret nz                                        ; $57FF: $C0

    nop                                           ; $5800: $00
    nop                                           ; $5801: $00
    nop                                           ; $5802: $00
    nop                                           ; $5803: $00
    nop                                           ; $5804: $00
    nop                                           ; $5805: $00
    nop                                           ; $5806: $00
    nop                                           ; $5807: $00
    nop                                           ; $5808: $00
    nop                                           ; $5809: $00
    nop                                           ; $580A: $00
    nop                                           ; $580B: $00
    ld hl, sp+$00                                 ; $580C: $F8 $00
    rst RST_38                                    ; $580E: $FF
    ld hl, sp+$03                                 ; $580F: $F8 $03
    rst RST_38                                    ; $5811: $FF
    nop                                           ; $5812: $00
    rst RST_38                                    ; $5813: $FF
    inc bc                                        ; $5814: $03
    rst RST_38                                    ; $5815: $FF
    ccf                                           ; $5816: $3F
    cp $FE                                        ; $5817: $FE $FE
    ret nz                                        ; $5819: $C0

    ldh a, [rP1]                                  ; $581A: $F0 $00
    add b                                         ; $581C: $80
    nop                                           ; $581D: $00
    rra                                           ; $581E: $1F
    nop                                           ; $581F: $00
    nop                                           ; $5820: $00
    nop                                           ; $5821: $00
    nop                                           ; $5822: $00
    nop                                           ; $5823: $00
    nop                                           ; $5824: $00
    nop                                           ; $5825: $00
    nop                                           ; $5826: $00
    nop                                           ; $5827: $00
    nop                                           ; $5828: $00
    nop                                           ; $5829: $00
    nop                                           ; $582A: $00
    nop                                           ; $582B: $00
    nop                                           ; $582C: $00
    nop                                           ; $582D: $00
    nop                                           ; $582E: $00
    nop                                           ; $582F: $00
    nop                                           ; $5830: $00
    nop                                           ; $5831: $00
    nop                                           ; $5832: $00
    nop                                           ; $5833: $00
    nop                                           ; $5834: $00
    nop                                           ; $5835: $00
    nop                                           ; $5836: $00
    nop                                           ; $5837: $00
    ret nz                                        ; $5838: $C0

    nop                                           ; $5839: $00
    ldh a, [$FFC0]                                ; $583A: $F0 $C0
    ld hl, sp-$20                                 ; $583C: $F8 $E0
    db $FC                                        ; $583E: $FC
    nop                                           ; $583F: $00
    ld hl, sp+$00                                 ; $5840: $F8 $00
    ret nz                                        ; $5842: $C0

    nop                                           ; $5843: $00
    ld bc, $0300                                  ; $5844: $01 $00 $03
    ld bc, $0207                                  ; $5847: $01 $07 $02
    rrca                                          ; $584A: $0F
    inc b                                         ; $584B: $04
    rrca                                          ; $584C: $0F
    dec b                                         ; $584D: $05
    rra                                           ; $584E: $1F
    ld a, [bc]                                    ; $584F: $0A
    rra                                           ; $5850: $1F
    dec bc                                        ; $5851: $0B
    rra                                           ; $5852: $1F
    dec bc                                        ; $5853: $0B
    rra                                           ; $5854: $1F
    dec c                                         ; $5855: $0D
    rrca                                          ; $5856: $0F
    ld b, $0F                                     ; $5857: $06 $0F
    dec b                                         ; $5859: $05
    rlca                                          ; $585A: $07
    inc bc                                        ; $585B: $03
    rlca                                          ; $585C: $07
    ld [bc], a                                    ; $585D: $02
    rlca                                          ; $585E: $07
    inc bc                                        ; $585F: $03
    ld a, a                                       ; $5860: $7F
    rra                                           ; $5861: $1F
    rst RST_38                                    ; $5862: $FF
    nop                                           ; $5863: $00
    db $FC                                        ; $5864: $FC
    ld [hl], b                                    ; $5865: $70
    rst RST_38                                    ; $5866: $FF
    ld a, h                                       ; $5867: $7C
    rst RST_38                                    ; $5868: $FF
    daa                                           ; $5869: $27
    rst RST_38                                    ; $586A: $FF
    pop af                                        ; $586B: $F1
    rst RST_38                                    ; $586C: $FF
    ld hl, sp-$01                                 ; $586D: $F8 $FF
    jp z, $EBFF                                   ; $586F: $CA $FF $EB

    rst RST_38                                    ; $5872: $FF
    jr c, @-$02                                   ; $5873: $38 $FC

    xor b                                         ; $5875: $A8
    ld hl, sp+$70                                 ; $5876: $F8 $70
    ldh a, [rP1]                                  ; $5878: $F0 $00
    add sp, -$10                                  ; $587A: $E8 $F0
    db $F4                                        ; $587C: $F4
    ld hl, sp-$02                                 ; $587D: $F8 $FE
    add b                                         ; $587F: $80
    nop                                           ; $5880: $00
    nop                                           ; $5881: $00
    nop                                           ; $5882: $00
    nop                                           ; $5883: $00
    ret nz                                        ; $5884: $C0

jr_011_5885:
    nop                                           ; $5885: $00
    ldh a, [$FFC0]                                ; $5886: $F0 $C0
    ld hl, sp+$30                                 ; $5888: $F8 $30
    inc a                                         ; $588A: $3C
    ld [$048E], sp                                ; $588B: $08 $8E $04
    rst RST_00                                    ; $588E: $C7
    add d                                         ; $588F: $82
    rst RST_00                                    ; $5890: $C7
    ld [bc], a                                    ; $5891: $02
    jp nz, $E080                                  ; $5892: $C2 $80 $E0

    nop                                           ; $5895: $00
    ldh a, [$FFE0]                                ; $5896: $F0 $E0
    ld hl, sp+$30                                 ; $5898: $F8 $30
    jr c, jr_011_589C                             ; $589A: $38 $00

jr_011_589C:
    jr c, jr_011_58AE                             ; $589C: $38 $10

    jr jr_011_58A0                                ; $589E: $18 $00

jr_011_58A0:
    rst RST_38                                    ; $58A0: $FF
    ld l, a                                       ; $58A1: $6F
    rst RST_38                                    ; $58A2: $FF
    ld a, h                                       ; $58A3: $7C
    rst RST_38                                    ; $58A4: $FF
    cpl                                           ; $58A5: $2F
    rst RST_38                                    ; $58A6: $FF
    ld [hl], d                                    ; $58A7: $72
    ld a, a                                       ; $58A8: $7F
    dec sp                                        ; $58A9: $3B
    ld a, a                                       ; $58AA: $7F
    cpl                                           ; $58AB: $2F
    ccf                                           ; $58AC: $3F
    inc e                                         ; $58AD: $1C

jr_011_58AE:
    rra                                           ; $58AE: $1F
    rrca                                          ; $58AF: $0F
    rrca                                          ; $58B0: $0F
    ld b, $07                                     ; $58B1: $06 $07
    inc bc                                        ; $58B3: $03
    inc bc                                        ; $58B4: $03
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
    ldh [$FF80], a                                ; $58C0: $E0 $80
    ld hl, sp-$20                                 ; $58C2: $F8 $E0
    db $FC                                        ; $58C4: $FC
    ld hl, sp-$01                                 ; $58C5: $F8 $FF
    call c, $FFFF                                 ; $58C7: $DC $FF $FF
    rst RST_38                                    ; $58CA: $FF
    add e                                         ; $58CB: $83
    xor e                                         ; $58CC: $AB
    ld b, h                                       ; $58CD: $44
    sub a                                         ; $58CE: $97
    ld l, b                                       ; $58CF: $68
    ld sp, hl                                     ; $58D0: $F9
    rst RST_20                                    ; $58D1: $E7
    rst RST_38                                    ; $58D2: $FF
    cp e                                          ; $58D3: $BB
    ei                                            ; $58D4: $FB
    db $F4                                        ; $58D5: $F4
    rst RST_38                                    ; $58D6: $FF
    ld [hl-], a                                   ; $58D7: $32
    cp $7C                                        ; $58D8: $FE $7C
    cp $60                                        ; $58DA: $FE $60
    ldh [rP1], a                                  ; $58DC: $E0 $00
    nop                                           ; $58DE: $00
    nop                                           ; $58DF: $00
    ret nz                                        ; $58E0: $C0

    nop                                           ; $58E1: $00
    ld hl, sp-$40                                 ; $58E2: $F8 $C0
    db $FC                                        ; $58E4: $FC

jr_011_58E5:
    ld a, b                                       ; $58E5: $78
    ld a, h                                       ; $58E6: $7C
    jr jr_011_5885                                ; $58E7: $18 $9C

    nop                                           ; $58E9: $00
    adc $04                                       ; $58EA: $CE $04
    and $40                                       ; $58EC: $E6 $40
    ldh a, [$FF60]                                ; $58EE: $F0 $60
    ld [hl], b                                    ; $58F0: $70
    jr nz, jr_011_5923                            ; $58F1: $20 $30

    nop                                           ; $58F3: $00
    jr c, jr_011_5906                             ; $58F4: $38 $10

    jr jr_011_58F8                                ; $58F6: $18 $00

jr_011_58F8:
    nop                                           ; $58F8: $00
    nop                                           ; $58F9: $00
    nop                                           ; $58FA: $00
    nop                                           ; $58FB: $00
    nop                                           ; $58FC: $00
    nop                                           ; $58FD: $00
    nop                                           ; $58FE: $00
    nop                                           ; $58FF: $00
    db $FD                                        ; $5900: $FD
    ld a, [hl]                                    ; $5901: $7E
    cp $5F                                        ; $5902: $FE $5F
    rst RST_38                                    ; $5904: $FF
    ld [hl], b                                    ; $5905: $70

jr_011_5906:
    rst RST_38                                    ; $5906: $FF
    ld l, a                                       ; $5907: $6F
    rst RST_38                                    ; $5908: $FF
    ld a, h                                       ; $5909: $7C
    rst RST_38                                    ; $590A: $FF
    cpl                                           ; $590B: $2F
    rst RST_38                                    ; $590C: $FF
    ld [hl], d                                    ; $590D: $72
    ld a, a                                       ; $590E: $7F
    dec sp                                        ; $590F: $3B
    ld a, a                                       ; $5910: $7F
    cpl                                           ; $5911: $2F
    ccf                                           ; $5912: $3F
    inc e                                         ; $5913: $1C
    rra                                           ; $5914: $1F
    rrca                                          ; $5915: $0F
    rrca                                          ; $5916: $0F
    ld b, $07                                     ; $5917: $06 $07
    inc bc                                        ; $5919: $03
    inc bc                                        ; $591A: $03
    nop                                           ; $591B: $00
    nop                                           ; $591C: $00
    nop                                           ; $591D: $00
    nop                                           ; $591E: $00
    nop                                           ; $591F: $00
    inc bc                                        ; $5920: $03
    nop                                           ; $5921: $00
    add b                                         ; $5922: $80

jr_011_5923:
    nop                                           ; $5923: $00
    ret nz                                        ; $5924: $C0

    nop                                           ; $5925: $00
    ldh [$FF80], a                                ; $5926: $E0 $80
    ld hl, sp-$20                                 ; $5928: $F8 $E0
    db $FC                                        ; $592A: $FC
    ld hl, sp-$01                                 ; $592B: $F8 $FF
    call c, $FFFF                                 ; $592D: $DC $FF $FF
    rst RST_38                                    ; $5930: $FF
    add e                                         ; $5931: $83
    xor e                                         ; $5932: $AB
    ld b, h                                       ; $5933: $44
    sub a                                         ; $5934: $97
    ld l, b                                       ; $5935: $68
    ld sp, hl                                     ; $5936: $F9
    rst RST_20                                    ; $5937: $E7
    rst RST_38                                    ; $5938: $FF
    cp e                                          ; $5939: $BB
    ei                                            ; $593A: $FB
    db $F4                                        ; $593B: $F4
    rst RST_38                                    ; $593C: $FF
    ld [hl-], a                                   ; $593D: $32
    cp $7C                                        ; $593E: $FE $7C
    ret nz                                        ; $5940: $C0

    nop                                           ; $5941: $00
    ld hl, sp-$40                                 ; $5942: $F8 $C0
    db $FC                                        ; $5944: $FC
    ld a, b                                       ; $5945: $78
    ld a, h                                       ; $5946: $7C
    jr jr_011_58E5                                ; $5947: $18 $9C

    nop                                           ; $5949: $00
    adc $04                                       ; $594A: $CE $04
    and $40                                       ; $594C: $E6 $40
    ldh a, [$FF60]                                ; $594E: $F0 $60
    ld [hl], b                                    ; $5950: $70
    jr nz, jr_011_5983                            ; $5951: $20 $30

    nop                                           ; $5953: $00
    jr c, jr_011_5966                             ; $5954: $38 $10

    jr jr_011_5958                                ; $5956: $18 $00

jr_011_5958:
    nop                                           ; $5958: $00
    nop                                           ; $5959: $00
    nop                                           ; $595A: $00
    nop                                           ; $595B: $00
    nop                                           ; $595C: $00
    nop                                           ; $595D: $00
    nop                                           ; $595E: $00
    nop                                           ; $595F: $00
    cp $60                                        ; $5960: $FE $60
    ldh [rP1], a                                  ; $5962: $E0 $00
    nop                                           ; $5964: $00
    nop                                           ; $5965: $00

jr_011_5966:
    nop                                           ; $5966: $00
    nop                                           ; $5967: $00
    nop                                           ; $5968: $00
    nop                                           ; $5969: $00
    nop                                           ; $596A: $00
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
    nop                                           ; $5980: $00
    nop                                           ; $5981: $00
    nop                                           ; $5982: $00

jr_011_5983:
    nop                                           ; $5983: $00
    nop                                           ; $5984: $00
    nop                                           ; $5985: $00
    inc bc                                        ; $5986: $03
    nop                                           ; $5987: $00
    rlca                                          ; $5988: $07
    nop                                           ; $5989: $00
    rrca                                          ; $598A: $0F
    inc bc                                        ; $598B: $03
    rra                                           ; $598C: $1F
    dec bc                                        ; $598D: $0B
    ccf                                           ; $598E: $3F
    ld de, $277F                                  ; $598F: $11 $7F $27
    ld a, a                                       ; $5992: $7F
    cpl                                           ; $5993: $2F
    rst RST_38                                    ; $5994: $FF
    ld d, [hl]                                    ; $5995: $56
    rst RST_38                                    ; $5996: $FF
    ld e, a                                       ; $5997: $5F
    rst RST_38                                    ; $5998: $FF
    ld e, c                                       ; $5999: $59
    rst RST_38                                    ; $599A: $FF
    ld l, l                                       ; $599B: $6D
    ld a, a                                       ; $599C: $7F
    inc sp                                        ; $599D: $33
    ld a, a                                       ; $599E: $7F
    jr z, jr_011_59A1                             ; $599F: $28 $00

jr_011_59A1:
    nop                                           ; $59A1: $00
    nop                                           ; $59A2: $00
    nop                                           ; $59A3: $00
    ld hl, sp+$00                                 ; $59A4: $F8 $00
    cp $F8                                        ; $59A6: $FE $F8
    rst RST_38                                    ; $59A8: $FF
    ld b, $E7                                     ; $59A9: $06 $E7
    add c                                         ; $59AB: $81
    ld sp, hl                                     ; $59AC: $F9
    ldh [$FFFC], a                                ; $59AD: $E0 $FC

jr_011_59AF:
    jr c, jr_011_59AF                             ; $59AF: $38 $FE

    adc h                                         ; $59B1: $8C
    cp $C0                                        ; $59B2: $FE $C0
    cp $54                                        ; $59B4: $FE $54
    rst RST_38                                    ; $59B6: $FF
    ld e, b                                       ; $59B7: $58
    rst RST_38                                    ; $59B8: $FF
    rst RST_00                                    ; $59B9: $C7
    rst RST_20                                    ; $59BA: $E7
    ld b, c                                       ; $59BB: $41
    pop bc                                        ; $59BC: $C1
    add b                                         ; $59BD: $80
    add c                                         ; $59BE: $81
    nop                                           ; $59BF: $00
    nop                                           ; $59C0: $00
    nop                                           ; $59C1: $00
    nop                                           ; $59C2: $00
    nop                                           ; $59C3: $00
    nop                                           ; $59C4: $00
    nop                                           ; $59C5: $00
    nop                                           ; $59C6: $00
    nop                                           ; $59C7: $00
    add b                                         ; $59C8: $80
    nop                                           ; $59C9: $00
    ret nz                                        ; $59CA: $C0

    add b                                         ; $59CB: $80
    ldh [rLCDC], a                                ; $59CC: $E0 $40
    ld [hl], b                                    ; $59CE: $70
    jr nz, jr_011_5A09                            ; $59CF: $20 $38

    db $10                                        ; $59D1: $10
    jr c, jr_011_59E4                             ; $59D2: $38 $10

    stop                                          ; $59D4: $10 $00
    nop                                           ; $59D6: $00
    nop                                           ; $59D7: $00
    add b                                         ; $59D8: $80
    nop                                           ; $59D9: $00
    ret nz                                        ; $59DA: $C0

    add b                                         ; $59DB: $80
    ret nz                                        ; $59DC: $C0

    nop                                           ; $59DD: $00
    ret nz                                        ; $59DE: $C0

    add b                                         ; $59DF: $80
    dec b                                         ; $59E0: $05
    nop                                           ; $59E1: $00
    dec c                                         ; $59E2: $0D
    nop                                           ; $59E3: $00

jr_011_59E4:
    rra                                           ; $59E4: $1F
    dec b                                         ; $59E5: $05
    rra                                           ; $59E6: $1F
    dec c                                         ; $59E7: $0D
    rra                                           ; $59E8: $1F
    rrca                                          ; $59E9: $0F
    rrca                                          ; $59EA: $0F
    rlca                                          ; $59EB: $07
    rrca                                          ; $59EC: $0F
    inc b                                         ; $59ED: $04
    ld c, $05                                     ; $59EE: $0E $05
    rlca                                          ; $59F0: $07
    ld [bc], a                                    ; $59F1: $02
    inc bc                                        ; $59F2: $03
    nop                                           ; $59F3: $00
    inc bc                                        ; $59F4: $03
    nop                                           ; $59F5: $00
    rra                                           ; $59F6: $1F
    inc bc                                        ; $59F7: $03
    ccf                                           ; $59F8: $3F
    ld d, $3E                                     ; $59F9: $16 $3E
    nop                                           ; $59FB: $00
    ld bc, $0100                                  ; $59FC: $01 $00 $01
    nop                                           ; $59FF: $00
    nop                                           ; $5A00: $00
    nop                                           ; $5A01: $00
    nop                                           ; $5A02: $00
    nop                                           ; $5A03: $00
    dec b                                         ; $5A04: $05
    nop                                           ; $5A05: $00
    rlca                                          ; $5A06: $07
    nop                                           ; $5A07: $00
    xor a                                         ; $5A08: $AF

jr_011_5A09:
    ld b, $FF                                     ; $5A09: $06 $FF
    rrca                                          ; $5A0B: $0F
    rst RST_38                                    ; $5A0C: $FF
    ld d, [hl]                                    ; $5A0D: $56
    rst RST_38                                    ; $5A0E: $FF
    ld a, l                                       ; $5A0F: $7D
    rst RST_38                                    ; $5A10: $FF
    ld a, c                                       ; $5A11: $79
    rst RST_38                                    ; $5A12: $FF
    rst RST_28                                    ; $5A13: $EF
    rst RST_38                                    ; $5A14: $FF
    xor l                                         ; $5A15: $AD
    rst RST_38                                    ; $5A16: $FF
    rst RST_08                                    ; $5A17: $CF
    rst RST_08                                    ; $5A18: $CF
    ld [hl], a                                    ; $5A19: $77
    rst RST_18                                    ; $5A1A: $DF
    push hl                                       ; $5A1B: $E5
    rst RST_28                                    ; $5A1C: $EF
    add a                                         ; $5A1D: $87
    rst RST_18                                    ; $5A1E: $DF
    and a                                         ; $5A1F: $A7
    xor a                                         ; $5A20: $AF
    ld d, [hl]                                    ; $5A21: $56
    cp [hl]                                       ; $5A22: $BE
    call z, $CCFE                                 ; $5A23: $CC $FE $CC
    call c, $BC08                                 ; $5A26: $DC $08 $BC
    jr @+$3A                                      ; $5A29: $18 $38

    db $10                                        ; $5A2B: $10
    ld sp, hl                                     ; $5A2C: $F9
    jr nc, @-$05                                  ; $5A2D: $30 $F9

    or b                                          ; $5A2F: $B0
    ldh a, [rP1]                                  ; $5A30: $F0 $00
    nop                                           ; $5A32: $00
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
    add h                                         ; $5A40: $84
    nop                                           ; $5A41: $00
    add h                                         ; $5A42: $84
    nop                                           ; $5A43: $00
    sub $80                                       ; $5A44: $D6 $80
    rst RST_38                                    ; $5A46: $FF
    sub d                                         ; $5A47: $92
    rst RST_38                                    ; $5A48: $FF
    cp $FF                                        ; $5A49: $FE $FF
    rst RST_28                                    ; $5A4B: $EF
    rst RST_38                                    ; $5A4C: $FF
    or e                                          ; $5A4D: $B3
    rst RST_38                                    ; $5A4E: $FF
    rst RST_10                                    ; $5A4F: $D7
    rst RST_38                                    ; $5A50: $FF
    push de                                       ; $5A51: $D5
    rst RST_38                                    ; $5A52: $FF
    ld e, a                                       ; $5A53: $5F
    rst RST_38                                    ; $5A54: $FF
    ld c, e                                       ; $5A55: $4B
    rst RST_28                                    ; $5A56: $EF
    push de                                       ; $5A57: $D5
    rst RST_38                                    ; $5A58: $FF
    add a                                         ; $5A59: $87
    rst RST_08                                    ; $5A5A: $CF
    add e                                         ; $5A5B: $83
    adc a                                         ; $5A5C: $8F
    nop                                           ; $5A5D: $00
    adc a                                         ; $5A5E: $8F
    nop                                           ; $5A5F: $00
    rra                                           ; $5A60: $1F
    inc c                                         ; $5A61: $0C
    ld e, $0C                                     ; $5A62: $1E $0C

jr_011_5A64:
    inc e                                         ; $5A64: $1C
    ld [$183C], sp                                ; $5A65: $08 $3C $18
    add hl, sp                                    ; $5A68: $39
    db $10                                        ; $5A69: $10
    ei                                            ; $5A6A: $FB
    jr nc, jr_011_5A64                            ; $5A6B: $30 $F7

    jp nz, Jump_000_00C7                          ; $5A6D: $C2 $C7 $00

    nop                                           ; $5A70: $00
    nop                                           ; $5A71: $00
    nop                                           ; $5A72: $00
    nop                                           ; $5A73: $00
    nop                                           ; $5A74: $00
    nop                                           ; $5A75: $00
    nop                                           ; $5A76: $00
    nop                                           ; $5A77: $00
    nop                                           ; $5A78: $00
    nop                                           ; $5A79: $00
    nop                                           ; $5A7A: $00
    nop                                           ; $5A7B: $00
    nop                                           ; $5A7C: $00
    nop                                           ; $5A7D: $00
    nop                                           ; $5A7E: $00
    nop                                           ; $5A7F: $00
    ld b, h                                       ; $5A80: $44
    nop                                           ; $5A81: $00
    call z, $EC00                                 ; $5A82: $CC $00 $EC
    ret nz                                        ; $5A85: $C0

    cp $E4                                        ; $5A86: $FE $E4
    cp $34                                        ; $5A88: $FE $34
    cp $CC                                        ; $5A8A: $FE $CC
    cp $E4                                        ; $5A8C: $FE $E4
    cp $64                                        ; $5A8E: $FE $64
    rst RST_38                                    ; $5A90: $FF
    ld b, d                                       ; $5A91: $42
    rst RST_30                                    ; $5A92: $F7
    ldh [c], a                                    ; $5A93: $E2
    rst RST_38                                    ; $5A94: $FF
    ld d, d                                       ; $5A95: $52
    rst RST_38                                    ; $5A96: $FF
    ldh a, [c]                                    ; $5A97: $F2
    cp $54                                        ; $5A98: $FE $54
    ld a, [hl]                                    ; $5A9A: $7E
    inc [hl]                                      ; $5A9B: $34
    ld a, h                                       ; $5A9C: $7C
    jr z, jr_011_5B1B                             ; $5A9D: $28 $7C

    jr z, @-$06                                   ; $5A9F: $28 $F8

    ld h, b                                       ; $5AA1: $60
    ldh [rLCDC], a                                ; $5AA2: $E0 $40
    ldh [$FFC0], a                                ; $5AA4: $E0 $C0
    ret nz                                        ; $5AA6: $C0

    add b                                         ; $5AA7: $80
    ret nz                                        ; $5AA8: $C0

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
    nop                                           ; $5AB4: $00
    nop                                           ; $5AB5: $00
    nop                                           ; $5AB6: $00
    nop                                           ; $5AB7: $00
    nop                                           ; $5AB8: $00
    nop                                           ; $5AB9: $00
    nop                                           ; $5ABA: $00
    nop                                           ; $5ABB: $00
    nop                                           ; $5ABC: $00
    nop                                           ; $5ABD: $00
    nop                                           ; $5ABE: $00
    nop                                           ; $5ABF: $00
    inc b                                         ; $5AC0: $04
    nop                                           ; $5AC1: $00
    dec c                                         ; $5AC2: $0D
    nop                                           ; $5AC3: $00
    dec c                                         ; $5AC4: $0D
    nop                                           ; $5AC5: $00
    rra                                           ; $5AC6: $1F
    add hl, bc                                    ; $5AC7: $09
    rra                                           ; $5AC8: $1F
    dec c                                         ; $5AC9: $0D
    rra                                           ; $5ACA: $1F
    rrca                                          ; $5ACB: $0F
    rrca                                          ; $5ACC: $0F
    rlca                                          ; $5ACD: $07
    rrca                                          ; $5ACE: $0F
    inc b                                         ; $5ACF: $04
    ld c, $05                                     ; $5AD0: $0E $05
    rlca                                          ; $5AD2: $07
    ld [bc], a                                    ; $5AD3: $02
    inc bc                                        ; $5AD4: $03
    nop                                           ; $5AD5: $00
    inc bc                                        ; $5AD6: $03
    nop                                           ; $5AD7: $00
    rrca                                          ; $5AD8: $0F
    inc bc                                        ; $5AD9: $03
    rra                                           ; $5ADA: $1F
    ld b, $3E                                     ; $5ADB: $06 $3E
    db $10                                        ; $5ADD: $10
    jr nc, jr_011_5AE0                            ; $5ADE: $30 $00

jr_011_5AE0:
    nop                                           ; $5AE0: $00
    nop                                           ; $5AE1: $00
    nop                                           ; $5AE2: $00
    nop                                           ; $5AE3: $00
    ld bc, $0100                                  ; $5AE4: $01 $00 $01
    nop                                           ; $5AE7: $00
    ld b, e                                       ; $5AE8: $43
    nop                                           ; $5AE9: $00
    ld c, a                                       ; $5AEA: $4F
    ld [bc], a                                    ; $5AEB: $02
    rst RST_38                                    ; $5AEC: $FF
    ld c, a                                       ; $5AED: $4F
    rst RST_38                                    ; $5AEE: $FF
    ld d, [hl]                                    ; $5AEF: $56
    rst RST_38                                    ; $5AF0: $FF
    ld a, l                                       ; $5AF1: $7D
    rst RST_38                                    ; $5AF2: $FF
    ld a, c                                       ; $5AF3: $79
    rst RST_38                                    ; $5AF4: $FF
    rst RST_28                                    ; $5AF5: $EF
    rst RST_38                                    ; $5AF6: $FF
    xor l                                         ; $5AF7: $AD
    rst RST_38                                    ; $5AF8: $FF
    rst RST_08                                    ; $5AF9: $CF
    rst RST_08                                    ; $5AFA: $CF
    ld [hl], a                                    ; $5AFB: $77
    rst RST_18                                    ; $5AFC: $DF
    push hl                                       ; $5AFD: $E5
    rst RST_28                                    ; $5AFE: $EF
    add a                                         ; $5AFF: $87
    rst RST_28                                    ; $5B00: $EF
    ld d, e                                       ; $5B01: $53
    ld d, a                                       ; $5B02: $57
    xor e                                         ; $5B03: $AB
    rst RST_18                                    ; $5B04: $DF
    ld h, [hl]                                    ; $5B05: $66
    rst RST_38                                    ; $5B06: $FF
    ld h, [hl]                                    ; $5B07: $66
    xor $04                                       ; $5B08: $EE $04
    sbc $8C                                       ; $5B0A: $DE $8C
    sbc h                                         ; $5B0C: $9C
    ld [$183C], sp                                ; $5B0D: $08 $3C $18
    ld a, h                                       ; $5B10: $7C
    jr @-$06                                      ; $5B11: $18 $F8

    ld b, b                                       ; $5B13: $40
    ret nz                                        ; $5B14: $C0

    nop                                           ; $5B15: $00
    nop                                           ; $5B16: $00
    nop                                           ; $5B17: $00
    nop                                           ; $5B18: $00
    nop                                           ; $5B19: $00
    nop                                           ; $5B1A: $00

jr_011_5B1B:
    nop                                           ; $5B1B: $00
    nop                                           ; $5B1C: $00
    nop                                           ; $5B1D: $00
    nop                                           ; $5B1E: $00
    nop                                           ; $5B1F: $00
    add h                                         ; $5B20: $84
    nop                                           ; $5B21: $00
    add h                                         ; $5B22: $84
    nop                                           ; $5B23: $00
    push de                                       ; $5B24: $D5
    add b                                         ; $5B25: $80
    rst RST_10                                    ; $5B26: $D7
    add b                                         ; $5B27: $80
    rst RST_38                                    ; $5B28: $FF
    sub d                                         ; $5B29: $92
    rst RST_38                                    ; $5B2A: $FF
    cp $FF                                        ; $5B2B: $FE $FF
    rst RST_28                                    ; $5B2D: $EF
    rst RST_38                                    ; $5B2E: $FF
    or e                                          ; $5B2F: $B3
    rst RST_38                                    ; $5B30: $FF
    rst RST_10                                    ; $5B31: $D7
    rst RST_38                                    ; $5B32: $FF
    push de                                       ; $5B33: $D5

jr_011_5B34:
    rst RST_38                                    ; $5B34: $FF
    ld e, a                                       ; $5B35: $5F
    rst RST_38                                    ; $5B36: $FF
    ld c, e                                       ; $5B37: $4B
    rst RST_28                                    ; $5B38: $EF
    push de                                       ; $5B39: $D5
    rst RST_38                                    ; $5B3A: $FF
    add a                                         ; $5B3B: $87

jr_011_5B3C:
    rst RST_08                                    ; $5B3C: $CF
    add e                                         ; $5B3D: $83
    adc a                                         ; $5B3E: $8F
    nop                                           ; $5B3F: $00
    rst RST_00                                    ; $5B40: $C7
    add b                                         ; $5B41: $80
    adc a                                         ; $5B42: $8F
    ld b, $0F                                     ; $5B43: $06 $0F
    ld b, $0E                                     ; $5B45: $06 $0E
    inc b                                         ; $5B47: $04
    ld e, $0C                                     ; $5B48: $1E $0C
    inc e                                         ; $5B4A: $1C
    ld [$183C], sp                                ; $5B4B: $08 $3C $18
    ld a, c                                       ; $5B4E: $79
    jr nz, jr_011_5B34                            ; $5B4F: $20 $E3

    ld b, c                                       ; $5B51: $41
    db $E3                                        ; $5B52: $E3
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
    add b                                         ; $5B6A: $80
    nop                                           ; $5B6B: $00
    ldh [$FF80], a                                ; $5B6C: $E0 $80
    db $F4                                        ; $5B6E: $F4
    ldh [$FFFC], a                                ; $5B6F: $E0 $FC

jr_011_5B71:
    jr nc, jr_011_5B71                            ; $5B71: $30 $FE

    call z, $E4FE                                 ; $5B73: $CC $FE $E4
    cp $64                                        ; $5B76: $FE $64
    rst RST_38                                    ; $5B78: $FF
    ld b, d                                       ; $5B79: $42
    rst RST_30                                    ; $5B7A: $F7

jr_011_5B7B:
    ldh [c], a                                    ; $5B7B: $E2
    rst RST_38                                    ; $5B7C: $FF

jr_011_5B7D:
    ld d, d                                       ; $5B7D: $52
    rst RST_38                                    ; $5B7E: $FF
    ldh a, [c]                                    ; $5B7F: $F2
    rst RST_38                                    ; $5B80: $FF
    ld a, [hl+]                                   ; $5B81: $2A
    cp a                                          ; $5B82: $BF
    ld a, [de]                                    ; $5B83: $1A
    ld a, $14                                     ; $5B84: $3E $14
    ld a, $14                                     ; $5B86: $3E $14
    ld a, h                                       ; $5B88: $7C
    jr nc, jr_011_5B7B                            ; $5B89: $30 $F0

    jr nz, jr_011_5B7D                            ; $5B8B: $20 $F0

    ld h, b                                       ; $5B8D: $60
    ldh [rLCDC], a                                ; $5B8E: $E0 $40
    ldh [rP1], a                                  ; $5B90: $E0 $00
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
    nop                                           ; $5BA4: $00
    nop                                           ; $5BA5: $00
    nop                                           ; $5BA6: $00
    nop                                           ; $5BA7: $00
    nop                                           ; $5BA8: $00
    nop                                           ; $5BA9: $00
    nop                                           ; $5BAA: $00

jr_011_5BAB:
    nop                                           ; $5BAB: $00
    nop                                           ; $5BAC: $00
    nop                                           ; $5BAD: $00
    nop                                           ; $5BAE: $00
    nop                                           ; $5BAF: $00
    jr nc, jr_011_5BB2                            ; $5BB0: $30 $00

jr_011_5BB2:
    ld c, b                                       ; $5BB2: $48
    jr nc, jr_011_5B3C                            ; $5BB3: $30 $87

    ld a, b                                       ; $5BB5: $78
    add c                                         ; $5BB6: $81
    ld a, [hl]                                    ; $5BB7: $7E
    add c                                         ; $5BB8: $81
    ld a, [hl]                                    ; $5BB9: $7E
    add a                                         ; $5BBA: $87
    ld a, b                                       ; $5BBB: $78
    ld c, b                                       ; $5BBC: $48
    jr nc, jr_011_5BEF                            ; $5BBD: $30 $30

    nop                                           ; $5BBF: $00
    jr jr_011_5BC2                                ; $5BC0: $18 $00

jr_011_5BC2:
    jr c, jr_011_5BD4                             ; $5BC2: $38 $10

    jr c, @+$12                                   ; $5BC4: $38 $10

    ld [hl], b                                    ; $5BC6: $70
    jr nz, jr_011_5C39                            ; $5BC7: $20 $70

    jr nz, jr_011_5BAB                            ; $5BC9: $20 $E0

    ld b, b                                       ; $5BCB: $40
    ldh [rLCDC], a                                ; $5BCC: $E0 $40
    ldh [rLCDC], a                                ; $5BCE: $E0 $40
    ldh [rLCDC], a                                ; $5BD0: $E0 $40
    ldh [rLCDC], a                                ; $5BD2: $E0 $40

jr_011_5BD4:
    ld [hl], b                                    ; $5BD4: $70
    jr nz, @+$72                                  ; $5BD5: $20 $70

    jr nz, jr_011_5C15                            ; $5BD7: $20 $3C

    db $10                                        ; $5BD9: $10
    rra                                           ; $5BDA: $1F
    inc c                                         ; $5BDB: $0C
    rrca                                          ; $5BDC: $0F
    inc bc                                        ; $5BDD: $03
    inc bc                                        ; $5BDE: $03
    nop                                           ; $5BDF: $00
    rrca                                          ; $5BE0: $0F
    rlca                                          ; $5BE1: $07
    rra                                           ; $5BE2: $1F
    rrca                                          ; $5BE3: $0F
    rra                                           ; $5BE4: $1F
    dec c                                         ; $5BE5: $0D
    rra                                           ; $5BE6: $1F
    dec b                                         ; $5BE7: $05
    rra                                           ; $5BE8: $1F
    rrca                                          ; $5BE9: $0F
    ccf                                           ; $5BEA: $3F
    dec d                                         ; $5BEB: $15
    ccf                                           ; $5BEC: $3F
    ld e, $3F                                     ; $5BED: $1E $3F

jr_011_5BEF:
    inc d                                         ; $5BEF: $14
    inc a                                         ; $5BF0: $3C
    jr jr_011_5C0F                                ; $5BF1: $18 $1C

    ld [$081C], sp                                ; $5BF3: $08 $1C $08
    ld e, $0C                                     ; $5BF6: $1E $0C
    rrca                                          ; $5BF8: $0F
    inc b                                         ; $5BF9: $04
    rrca                                          ; $5BFA: $0F
    ld b, $07                                     ; $5BFB: $06 $07
    nop                                           ; $5BFD: $00
    nop                                           ; $5BFE: $00

Jump_011_5BFF:
    nop                                           ; $5BFF: $00
    db $FC                                        ; $5C00: $FC
    ld d, b                                       ; $5C01: $50
    rst RST_38                                    ; $5C02: $FF
    db $FC                                        ; $5C03: $FC
    rst RST_38                                    ; $5C04: $FF
    xor a                                         ; $5C05: $AF
    rst RST_38                                    ; $5C06: $FF
    jr z, @+$01                                   ; $5C07: $28 $FF

    push de                                       ; $5C09: $D5
    rst RST_38                                    ; $5C0A: $FF
    adc a                                         ; $5C0B: $8F
    rst RST_38                                    ; $5C0C: $FF
    rrca                                          ; $5C0D: $0F
    rst RST_38                                    ; $5C0E: $FF

jr_011_5C0F:
    dec l                                         ; $5C0F: $2D
    rst RST_38                                    ; $5C10: $FF
    ld h, [hl]                                    ; $5C11: $66
    ld a, a                                       ; $5C12: $7F
    ld h, $77                                     ; $5C13: $26 $77

jr_011_5C15:
    ld [hl+], a                                   ; $5C15: $22
    ld a, a                                       ; $5C16: $7F
    inc sp                                        ; $5C17: $33
    cp a                                          ; $5C18: $BF
    ld de, $9DFF                                  ; $5C19: $11 $FF $9D
    rst RST_18                                    ; $5C1C: $DF
    nop                                           ; $5C1D: $00
    nop                                           ; $5C1E: $00
    nop                                           ; $5C1F: $00
    ld hl, sp+$00                                 ; $5C20: $F8 $00
    db $FC                                        ; $5C22: $FC
    ld a, b                                       ; $5C23: $78
    cp $EC                                        ; $5C24: $FE $EC
    rst RST_38                                    ; $5C26: $FF
    db $E4                                        ; $5C27: $E4
    rst RST_38                                    ; $5C28: $FF
    cp l                                          ; $5C29: $BD
    rst RST_38                                    ; $5C2A: $FF
    xor e                                         ; $5C2B: $AB
    db $FD                                        ; $5C2C: $FD
    di                                            ; $5C2D: $F3
    ldh a, [rIF]                                  ; $5C2E: $F0 $0F
    rrca                                          ; $5C30: $0F
    ldh a, [$FFFC]                                ; $5C31: $F0 $FC
    nop                                           ; $5C33: $00
    sbc [hl]                                      ; $5C34: $9E
    inc c                                         ; $5C35: $0C
    rst RST_28                                    ; $5C36: $EF
    ld b, $F7                                     ; $5C37: $06 $F7

jr_011_5C39:
    and e                                         ; $5C39: $A3
    di                                            ; $5C3A: $F3
    nop                                           ; $5C3B: $00
    nop                                           ; $5C3C: $00
    nop                                           ; $5C3D: $00
    nop                                           ; $5C3E: $00
    nop                                           ; $5C3F: $00
    ld h, b                                       ; $5C40: $60
    nop                                           ; $5C41: $00
    ld hl, sp+$60                                 ; $5C42: $F8 $60
    db $FC                                        ; $5C44: $FC
    ld a, b                                       ; $5C45: $78
    cp $2C                                        ; $5C46: $FE $2C
    cp $E0                                        ; $5C48: $FE $E0
    ld a, a                                       ; $5C4A: $7F
    or $B3                                        ; $5C4B: $F6 $B3
    ld c, [hl]                                    ; $5C4D: $4E
    ld l, [hl]                                    ; $5C4E: $6E
    db $10                                        ; $5C4F: $10
    inc d                                         ; $5C50: $14
    ld [$00C8], sp                                ; $5C51: $08 $C8 $00
    ldh [rLCDC], a                                ; $5C54: $E0 $40
    ldh [rP1], a                                  ; $5C56: $E0 $00
    nop                                           ; $5C58: $00
    nop                                           ; $5C59: $00
    nop                                           ; $5C5A: $00
    nop                                           ; $5C5B: $00
    nop                                           ; $5C5C: $00
    nop                                           ; $5C5D: $00
    nop                                           ; $5C5E: $00
    nop                                           ; $5C5F: $00
    nop                                           ; $5C60: $00
    nop                                           ; $5C61: $00
    nop                                           ; $5C62: $00
    nop                                           ; $5C63: $00
    nop                                           ; $5C64: $00
    nop                                           ; $5C65: $00
    nop                                           ; $5C66: $00
    nop                                           ; $5C67: $00
    nop                                           ; $5C68: $00
    nop                                           ; $5C69: $00
    nop                                           ; $5C6A: $00
    nop                                           ; $5C6B: $00
    nop                                           ; $5C6C: $00
    nop                                           ; $5C6D: $00
    nop                                           ; $5C6E: $00
    nop                                           ; $5C6F: $00
    nop                                           ; $5C70: $00
    nop                                           ; $5C71: $00
    nop                                           ; $5C72: $00
    nop                                           ; $5C73: $00
    nop                                           ; $5C74: $00
    nop                                           ; $5C75: $00
    nop                                           ; $5C76: $00
    nop                                           ; $5C77: $00
    nop                                           ; $5C78: $00
    nop                                           ; $5C79: $00
    add b                                         ; $5C7A: $80
    nop                                           ; $5C7B: $00
    ldh [$FF80], a                                ; $5C7C: $E0 $80
    ld hl, sp-$20                                 ; $5C7E: $F8 $E0
    nop                                           ; $5C80: $00
    nop                                           ; $5C81: $00
    nop                                           ; $5C82: $00
    nop                                           ; $5C83: $00
    nop                                           ; $5C84: $00
    nop                                           ; $5C85: $00
    nop                                           ; $5C86: $00
    nop                                           ; $5C87: $00
    nop                                           ; $5C88: $00
    nop                                           ; $5C89: $00
    nop                                           ; $5C8A: $00
    nop                                           ; $5C8B: $00
    nop                                           ; $5C8C: $00
    nop                                           ; $5C8D: $00
    inc bc                                        ; $5C8E: $03
    nop                                           ; $5C8F: $00
    rlca                                          ; $5C90: $07
    inc bc                                        ; $5C91: $03
    rrca                                          ; $5C92: $0F
    inc b                                         ; $5C93: $04
    dec c                                         ; $5C94: $0D
    ld [bc], a                                    ; $5C95: $02
    rra                                           ; $5C96: $1F
    dec c                                         ; $5C97: $0D
    add hl, de                                    ; $5C98: $19
    ld c, $0E                                     ; $5C99: $0E $0E
    ld bc, $0205                                  ; $5C9B: $01 $05 $02
    ld [bc], a                                    ; $5C9E: $02
    nop                                           ; $5C9F: $00
    ld [hl], b                                    ; $5CA0: $70
    nop                                           ; $5CA1: $00
    ldh a, [$FF60]                                ; $5CA2: $F0 $60
    rst RST_38                                    ; $5CA4: $FF
    ldh [rIE], a                                  ; $5CA5: $E0 $FF
    db $DD                                        ; $5CA7: $DD
    rst RST_38                                    ; $5CA8: $FF
    ldh a, [c]                                    ; $5CA9: $F2
    rrca                                          ; $5CAA: $0F
    ei                                            ; $5CAB: $FB
    rst RST_28                                    ; $5CAC: $EF
    dec de                                        ; $5CAD: $1B
    sub a                                         ; $5CAE: $97
    dec c                                         ; $5CAF: $0D
    dec bc                                        ; $5CB0: $0B
    ld b, $3C                                     ; $5CB1: $06 $3C
    inc bc                                        ; $5CB3: $03
    ld a, a                                       ; $5CB4: $7F
    jr c, @+$01                                   ; $5CB5: $38 $FF

    ld h, e                                       ; $5CB7: $63
    rst RST_28                                    ; $5CB8: $EF
    rlca                                          ; $5CB9: $07
    rrca                                          ; $5CBA: $0F
    nop                                           ; $5CBB: $00
    nop                                           ; $5CBC: $00
    nop                                           ; $5CBD: $00
    nop                                           ; $5CBE: $00
    nop                                           ; $5CBF: $00
    ldh [rP1], a                                  ; $5CC0: $E0 $00
    ldh a, [$FFE0]                                ; $5CC2: $F0 $E0
    rst RST_38                                    ; $5CC4: $FF
    ld [hl], b                                    ; $5CC5: $70
    rst RST_38                                    ; $5CC6: $FF
    ld [hl], l                                    ; $5CC7: $75
    rst RST_38                                    ; $5CC8: $FF
    jp c, Jump_011_5BFF                           ; $5CC9: $DA $FF $5B

    rst RST_38                                    ; $5CCC: $FF
    ld a, [$75FF]                                 ; $5CCD: $FA $FF $75
    ld a, [hl]                                    ; $5CD0: $7E
    cp l                                          ; $5CD1: $BD
    rst RST_38                                    ; $5CD2: $FF
    inc c                                         ; $5CD3: $0C
    rst RST_38                                    ; $5CD4: $FF
    ld sp, hl                                     ; $5CD5: $F9
    rst RST_38                                    ; $5CD6: $FF
    nop                                           ; $5CD7: $00
    nop                                           ; $5CD8: $00
    nop                                           ; $5CD9: $00
    nop                                           ; $5CDA: $00
    nop                                           ; $5CDB: $00
    nop                                           ; $5CDC: $00
    nop                                           ; $5CDD: $00
    nop                                           ; $5CDE: $00
    nop                                           ; $5CDF: $00
    inc a                                         ; $5CE0: $3C
    nop                                           ; $5CE1: $00
    rst RST_38                                    ; $5CE2: $FF
    inc a                                         ; $5CE3: $3C
    rst RST_38                                    ; $5CE4: $FF
    pop bc                                        ; $5CE5: $C1
    rst RST_38                                    ; $5CE6: $FF
    cp d                                          ; $5CE7: $BA
    rst RST_38                                    ; $5CE8: $FF
    xor a                                         ; $5CE9: $AF
    rst RST_38                                    ; $5CEA: $FF
    ld c, a                                       ; $5CEB: $4F
    rst RST_38                                    ; $5CEC: $FF
    ld a, e                                       ; $5CED: $7B
    rst RST_38                                    ; $5CEE: $FF
    ld d, e                                       ; $5CEF: $53
    rst RST_38                                    ; $5CF0: $FF
    ld a, $FF                                     ; $5CF1: $3E $FF

Call_011_5CF3:
    nop                                           ; $5CF3: $00
    rst RST_38                                    ; $5CF4: $FF
    ld h, l                                       ; $5CF5: $65
    rst RST_28                                    ; $5CF6: $EF
    nop                                           ; $5CF7: $00
    nop                                           ; $5CF8: $00
    nop                                           ; $5CF9: $00
    nop                                           ; $5CFA: $00
    nop                                           ; $5CFB: $00
    nop                                           ; $5CFC: $00
    nop                                           ; $5CFD: $00
    nop                                           ; $5CFE: $00
    nop                                           ; $5CFF: $00
    add b                                         ; $5D00: $80
    nop                                           ; $5D01: $00
    ldh [$FF80], a                                ; $5D02: $E0 $80
    ldh a, [$FF60]                                ; $5D04: $F0 $60
    ldh a, [$FFE0]                                ; $5D06: $F0 $E0
    ldh a, [$FF60]                                ; $5D08: $F0 $60
    ld hl, sp+$50                                 ; $5D0A: $F8 $50
    ld hl, sp-$30                                 ; $5D0C: $F8 $D0
    rst RST_18                                    ; $5D0E: $DF
    adc b                                         ; $5D0F: $88
    rst RST_08                                    ; $5D10: $CF
    add a                                         ; $5D11: $87
    add a                                         ; $5D12: $87
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
    add b                                         ; $5D20: $80
    nop                                           ; $5D21: $00
    ret nz                                        ; $5D22: $C0

    add b                                         ; $5D23: $80
    add b                                         ; $5D24: $80
    nop                                           ; $5D25: $00
    nop                                           ; $5D26: $00
    nop                                           ; $5D27: $00
    nop                                           ; $5D28: $00
    nop                                           ; $5D29: $00
    nop                                           ; $5D2A: $00
    nop                                           ; $5D2B: $00
    nop                                           ; $5D2C: $00
    nop                                           ; $5D2D: $00
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
    ld bc, $0300                                  ; $5D40: $01 $00 $03
    ld bc, $020F                                  ; $5D43: $01 $0F $02
    ld a, $0C                                     ; $5D46: $3E $0C
    db $FC                                        ; $5D48: $FC

jr_011_5D49:
    jr nc, jr_011_5D49                            ; $5D49: $30 $FE

    ret nz                                        ; $5D4B: $C0

    rst RST_38                                    ; $5D4C: $FF
    cp d                                          ; $5D4D: $BA
    rst RST_38                                    ; $5D4E: $FF
    xor a                                         ; $5D4F: $AF
    rst RST_38                                    ; $5D50: $FF
    ld c, a                                       ; $5D51: $4F
    rst RST_38                                    ; $5D52: $FF
    ld a, e                                       ; $5D53: $7B
    rst RST_38                                    ; $5D54: $FF
    ld d, e                                       ; $5D55: $53
    rst RST_38                                    ; $5D56: $FF
    ld a, $FF                                     ; $5D57: $3E $FF
    nop                                           ; $5D59: $00
    rst RST_38                                    ; $5D5A: $FF
    ld h, l                                       ; $5D5B: $65
    rst RST_28                                    ; $5D5C: $EF
    nop                                           ; $5D5D: $00
    nop                                           ; $5D5E: $00
    nop                                           ; $5D5F: $00
    ld a, b                                       ; $5D60: $78
    nop                                           ; $5D61: $00
    db $FC                                        ; $5D62: $FC
    ld a, b                                       ; $5D63: $78
    cp $84                                        ; $5D64: $FE $84
    add a                                         ; $5D66: $87
    ld [bc], a                                    ; $5D67: $02
    rlca                                          ; $5D68: $07
    ld [bc], a                                    ; $5D69: $02
    inc bc                                        ; $5D6A: $03
    ld bc, $0103                                  ; $5D6B: $01 $03 $01
    ld h, e                                       ; $5D6E: $63
    ld bc, $61F3                                  ; $5D6F: $01 $F3 $61
    rst RST_30                                    ; $5D72: $F7
    ldh [c], a                                    ; $5D73: $E2
    rst RST_30                                    ; $5D74: $F7
    ld h, d                                       ; $5D75: $62
    ldh [c], a                                    ; $5D76: $E2
    ld b, b                                       ; $5D77: $40
    ldh [$FFC0], a                                ; $5D78: $E0 $C0
    ret nz                                        ; $5D7A: $C0

    add b                                         ; $5D7B: $80
    ret nz                                        ; $5D7C: $C0

    add b                                         ; $5D7D: $80
    add b                                         ; $5D7E: $80
    nop                                           ; $5D7F: $00
    add b                                         ; $5D80: $80
    nop                                           ; $5D81: $00
    add b                                         ; $5D82: $80
    nop                                           ; $5D83: $00
    add b                                         ; $5D84: $80
    nop                                           ; $5D85: $00
    add b                                         ; $5D86: $80
    nop                                           ; $5D87: $00
    nop                                           ; $5D88: $00
    nop                                           ; $5D89: $00
    nop                                           ; $5D8A: $00
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
    ld bc, $0700                                  ; $5DA0: $01 $00 $07
    ld bc, $063F                                  ; $5DA3: $01 $3F $06
    cp $38                                        ; $5DA6: $FE $38
    cp $C0                                        ; $5DA8: $FE $C0
    rst RST_38                                    ; $5DAA: $FF
    cp d                                          ; $5DAB: $BA
    rst RST_38                                    ; $5DAC: $FF
    xor a                                         ; $5DAD: $AF
    rst RST_38                                    ; $5DAE: $FF
    ld c, a                                       ; $5DAF: $4F
    rst RST_38                                    ; $5DB0: $FF
    ld a, e                                       ; $5DB1: $7B
    rst RST_38                                    ; $5DB2: $FF
    ld d, e                                       ; $5DB3: $53
    rst RST_38                                    ; $5DB4: $FF
    ld a, $FF                                     ; $5DB5: $3E $FF
    nop                                           ; $5DB7: $00
    rst RST_38                                    ; $5DB8: $FF
    ld h, l                                       ; $5DB9: $65
    rst RST_28                                    ; $5DBA: $EF
    nop                                           ; $5DBB: $00
    nop                                           ; $5DBC: $00
    nop                                           ; $5DBD: $00
    nop                                           ; $5DBE: $00
    nop                                           ; $5DBF: $00
    ccf                                           ; $5DC0: $3F
    ld c, $FF                                     ; $5DC1: $0E $FF
    ld sp, $C1F3                                  ; $5DC3: $31 $F3 $C1
    pop bc                                        ; $5DC6: $C1
    nop                                           ; $5DC7: $00
    ld bc, $0100                                  ; $5DC8: $01 $00 $01
    nop                                           ; $5DCB: $00
    ld bc, $6000                                  ; $5DCC: $01 $00 $60
    nop                                           ; $5DCF: $00
    ldh a, [$FF60]                                ; $5DD0: $F0 $60
    ldh a, [$FFE0]                                ; $5DD2: $F0 $E0
    ldh a, [$FF60]                                ; $5DD4: $F0 $60
    ldh [rLCDC], a                                ; $5DD6: $E0 $40
    ldh [$FFC0], a                                ; $5DD8: $E0 $C0
    ret nz                                        ; $5DDA: $C0

    add b                                         ; $5DDB: $80
    ret nz                                        ; $5DDC: $C0

    add b                                         ; $5DDD: $80
    add b                                         ; $5DDE: $80
    nop                                           ; $5DDF: $00
    nop                                           ; $5DE0: $00
    nop                                           ; $5DE1: $00
    nop                                           ; $5DE2: $00
    nop                                           ; $5DE3: $00
    nop                                           ; $5DE4: $00
    nop                                           ; $5DE5: $00
    nop                                           ; $5DE6: $00
    nop                                           ; $5DE7: $00
    nop                                           ; $5DE8: $00
    nop                                           ; $5DE9: $00
    nop                                           ; $5DEA: $00
    nop                                           ; $5DEB: $00
    nop                                           ; $5DEC: $00
    nop                                           ; $5DED: $00
    ldh [rP1], a                                  ; $5DEE: $E0 $00
    ldh a, [$FFE0]                                ; $5DF0: $F0 $E0
    ld hl, sp+$10                                 ; $5DF2: $F8 $10
    jr c, jr_011_5E06                             ; $5DF4: $38 $10

    inc e                                         ; $5DF6: $1C
    ld [$081C], sp                                ; $5DF7: $08 $1C $08
    inc e                                         ; $5DFA: $1C
    ld [$081C], sp                                ; $5DFB: $08 $1C $08
    ld [$3E00], sp                                ; $5DFE: $08 $00 $3E
    nop                                           ; $5E01: $00
    rst RST_38                                    ; $5E02: $FF
    ld a, $FF                                     ; $5E03: $3E $FF
    pop bc                                        ; $5E05: $C1

jr_011_5E06:
    rst RST_38                                    ; $5E06: $FF
    cp d                                          ; $5E07: $BA
    rst RST_38                                    ; $5E08: $FF
    xor a                                         ; $5E09: $AF
    rst RST_38                                    ; $5E0A: $FF
    ld c, a                                       ; $5E0B: $4F
    rst RST_38                                    ; $5E0C: $FF
    ld a, e                                       ; $5E0D: $7B
    rst RST_38                                    ; $5E0E: $FF
    ld d, e                                       ; $5E0F: $53
    rst RST_38                                    ; $5E10: $FF
    ld a, $FF                                     ; $5E11: $3E $FF
    nop                                           ; $5E13: $00
    rst RST_38                                    ; $5E14: $FF
    ld h, l                                       ; $5E15: $65
    rst RST_28                                    ; $5E16: $EF
    nop                                           ; $5E17: $00
    nop                                           ; $5E18: $00
    nop                                           ; $5E19: $00
    nop                                           ; $5E1A: $00
    nop                                           ; $5E1B: $00
    nop                                           ; $5E1C: $00
    nop                                           ; $5E1D: $00
    nop                                           ; $5E1E: $00
    nop                                           ; $5E1F: $00
    ld bc, $E300                                  ; $5E20: $01 $00 $E3
    nop                                           ; $5E23: $00
    rst RST_38                                    ; $5E24: $FF
    db $E3                                        ; $5E25: $E3
    rst RST_38                                    ; $5E26: $FF
    inc e                                         ; $5E27: $1C
    db $FC                                        ; $5E28: $FC
    ld h, b                                       ; $5E29: $60
    ldh a, [$FFE0]                                ; $5E2A: $F0 $E0
    ldh a, [$FF60]                                ; $5E2C: $F0 $60
    ldh [rLCDC], a                                ; $5E2E: $E0 $40
    ldh [$FFC0], a                                ; $5E30: $E0 $C0
    ret nz                                        ; $5E32: $C0

    add b                                         ; $5E33: $80
    ret nz                                        ; $5E34: $C0

    add b                                         ; $5E35: $80
    add b                                         ; $5E36: $80
    nop                                           ; $5E37: $00
    nop                                           ; $5E38: $00
    nop                                           ; $5E39: $00
    nop                                           ; $5E3A: $00
    nop                                           ; $5E3B: $00
    nop                                           ; $5E3C: $00
    nop                                           ; $5E3D: $00
    nop                                           ; $5E3E: $00
    nop                                           ; $5E3F: $00
    nop                                           ; $5E40: $00
    nop                                           ; $5E41: $00
    nop                                           ; $5E42: $00
    nop                                           ; $5E43: $00
    nop                                           ; $5E44: $00
    nop                                           ; $5E45: $00
    nop                                           ; $5E46: $00
    nop                                           ; $5E47: $00
    nop                                           ; $5E48: $00
    nop                                           ; $5E49: $00
    nop                                           ; $5E4A: $00
    nop                                           ; $5E4B: $00
    nop                                           ; $5E4C: $00
    nop                                           ; $5E4D: $00
    nop                                           ; $5E4E: $00
    nop                                           ; $5E4F: $00
    ld b, b                                       ; $5E50: $40
    nop                                           ; $5E51: $00
    ldh [rLCDC], a                                ; $5E52: $E0 $40
    ldh [rLCDC], a                                ; $5E54: $E0 $40
    ldh [rLCDC], a                                ; $5E56: $E0 $40
    ldh [rLCDC], a                                ; $5E58: $E0 $40
    ret nz                                        ; $5E5A: $C0

    add b                                         ; $5E5B: $80
    ret nz                                        ; $5E5C: $C0

    add b                                         ; $5E5D: $80
    add b                                         ; $5E5E: $80
    nop                                           ; $5E5F: $00
    ld [bc], a                                    ; $5E60: $02
    nop                                           ; $5E61: $00
    inc bc                                        ; $5E62: $03
    nop                                           ; $5E63: $00
    inc bc                                        ; $5E64: $03
    ld bc, $0103                                  ; $5E65: $01 $03 $01
    inc bc                                        ; $5E68: $03
    ld bc, $0103                                  ; $5E69: $01 $03 $01
    rlca                                          ; $5E6C: $07
    ld bc, $0107                                  ; $5E6D: $01 $07 $01
    rlca                                          ; $5E70: $07
    ld bc, $0103                                  ; $5E71: $01 $03 $01
    jp $F301                                      ; $5E74: $C3 $01 $F3


    pop bc                                        ; $5E77: $C1
    ccf                                           ; $5E78: $3F
    pop af                                        ; $5E79: $F1
    rrca                                          ; $5E7A: $0F
    db $FD                                        ; $5E7B: $FD
    inc bc                                        ; $5E7C: $03
    rst RST_38                                    ; $5E7D: $FF
    rlca                                          ; $5E7E: $07
    ld hl, sp+$01                                 ; $5E7F: $F8 $01
    nop                                           ; $5E81: $00
    ld bc, $2B00                                  ; $5E82: $01 $00 $2B
    ld bc, $033F                                  ; $5E85: $01 $3F $03
    ccf                                           ; $5E88: $3F
    dec d                                         ; $5E89: $15
    cp a                                          ; $5E8A: $BF
    rra                                           ; $5E8B: $1F
    rst RST_38                                    ; $5E8C: $FF
    sbc [hl]                                      ; $5E8D: $9E
    ld a, a                                       ; $5E8E: $7F
    db $DB                                        ; $5E8F: $DB
    ld a, a                                       ; $5E90: $7F
    xor e                                         ; $5E91: $AB
    sbc a                                         ; $5E92: $9F
    ld [hl], e                                    ; $5E93: $73
    xor a                                         ; $5E94: $AF
    ld e, c                                       ; $5E95: $59
    rlca                                          ; $5E96: $07
    db $FD                                        ; $5E97: $FD
    dec de                                        ; $5E98: $1B
    and $D7                                       ; $5E99: $E6 $D7
    add hl, hl                                    ; $5E9B: $29
    xor d                                         ; $5E9C: $AA
    ld d, l                                       ; $5E9D: $55
    ld c, h                                       ; $5E9E: $4C
    or e                                          ; $5E9F: $B3
    ld hl, $2100                                  ; $5EA0: $21 $00 $21
    nop                                           ; $5EA3: $00
    ld [hl], l                                    ; $5EA4: $75
    jr nz, @+$01                                  ; $5EA5: $20 $FF

    inc h                                         ; $5EA7: $24
    rst RST_38                                    ; $5EA8: $FF
    cp [hl]                                       ; $5EA9: $BE
    rst RST_38                                    ; $5EAA: $FF
    ld a, [$ADFF]                                 ; $5EAB: $FA $FF $AD
    rst RST_38                                    ; $5EAE: $FF
    ld [hl], l                                    ; $5EAF: $75
    cp $73                                        ; $5EB0: $FE $73
    cp $D3                                        ; $5EB2: $FE $D3
    db $FD                                        ; $5EB4: $FD
    ld d, [hl]                                    ; $5EB5: $56
    cp $F5                                        ; $5EB6: $FE $F5
    cp $E9                                        ; $5EB8: $FE $E9
    ei                                            ; $5EBA: $FB
    ld l, h                                       ; $5EBB: $6C
    di                                            ; $5EBC: $F3
    call c, Call_011_5CF3                         ; $5EBD: $DC $F3 $5C
    jr nz, jr_011_5EC2                            ; $5EC0: $20 $00

jr_011_5EC2:
    jr nz, jr_011_5EC4                            ; $5EC2: $20 $00

jr_011_5EC4:
    ld h, b                                       ; $5EC4: $60
    nop                                           ; $5EC5: $00
    ld h, b                                       ; $5EC6: $60
    nop                                           ; $5EC7: $00
    ldh [rLCDC], a                                ; $5EC8: $E0 $40
    pop af                                        ; $5ECA: $F1
    ld b, b                                       ; $5ECB: $40
    di                                            ; $5ECC: $F3
    ret nz                                        ; $5ECD: $C0

    ei                                            ; $5ECE: $FB
    ret nc                                        ; $5ECF: $D0

    ld a, a                                       ; $5ED0: $7F
    ret c                                         ; $5ED1: $D8

    ld a, a                                       ; $5ED2: $7F
    call z, Call_011_50FF                         ; $5ED3: $CC $FF $50
    ld a, a                                       ; $5ED6: $7F
    jp c, $DA7F                                   ; $5ED7: $DA $7F $DA

    rst RST_38                                    ; $5EDA: $FF
    ld d, [hl]                                    ; $5EDB: $56
    ld a, a                                       ; $5EDC: $7F
    sub $7B                                       ; $5EDD: $D6 $7B
    adc $80                                       ; $5EDF: $CE $80
    nop                                           ; $5EE1: $00
    add b                                         ; $5EE2: $80
    nop                                           ; $5EE3: $00
    add b                                         ; $5EE4: $80
    nop                                           ; $5EE5: $00
    add c                                         ; $5EE6: $81
    nop                                           ; $5EE7: $00
    add e                                         ; $5EE8: $83
    ld bc, $83C6                                  ; $5EE9: $01 $C6 $83
    call z, $D987                                 ; $5EEC: $CC $87 $D9
    adc a                                         ; $5EEF: $8F
    pop af                                        ; $5EF0: $F1
    sbc a                                         ; $5EF1: $9F
    db $E3                                        ; $5EF2: $E3
    ld a, $C3                                     ; $5EF3: $3E $C3
    ld a, [hl]                                    ; $5EF5: $7E
    add [hl]                                      ; $5EF6: $86
    db $FC                                        ; $5EF7: $FC
    ld b, $FC                                     ; $5EF8: $06 $FC
    inc c                                         ; $5EFA: $0C
    ld hl, sp+$0C                                 ; $5EFB: $F8 $0C
    ld hl, sp+$18                                 ; $5EFD: $F8 $18
    ldh a, [$FF80]                                ; $5EFF: $F0 $80
    nop                                           ; $5F01: $00
    ld h, b                                       ; $5F02: $60
    nop                                           ; $5F03: $00
    ld a, b                                       ; $5F04: $78
    jr nz, jr_011_5F45                            ; $5F05: $20 $3E

    jr jr_011_5F40                                ; $5F07: $18 $37

    ld e, $19                                     ; $5F09: $1E $19
    rrca                                          ; $5F0B: $0F
    jr jr_011_5F1D                                ; $5F0C: $18 $0F

    inc c                                         ; $5F0E: $0C
    rlca                                          ; $5F0F: $07
    inc c                                         ; $5F10: $0C
    rlca                                          ; $5F11: $07
    ld b, $03                                     ; $5F12: $06 $03
    ld b, $03                                     ; $5F14: $06 $03
    inc bc                                        ; $5F16: $03
    ld bc, $0103                                  ; $5F17: $01 $03 $01
    ld bc, $0100                                  ; $5F1A: $01 $00 $01

jr_011_5F1D:
    nop                                           ; $5F1D: $00
    nop                                           ; $5F1E: $00
    nop                                           ; $5F1F: $00
    nop                                           ; $5F20: $00
    nop                                           ; $5F21: $00
    nop                                           ; $5F22: $00

jr_011_5F23:
    nop                                           ; $5F23: $00
    nop                                           ; $5F24: $00
    nop                                           ; $5F25: $00
    ld [bc], a                                    ; $5F26: $02
    nop                                           ; $5F27: $00
    inc b                                         ; $5F28: $04
    nop                                           ; $5F29: $00
    inc c                                         ; $5F2A: $0C
    nop                                           ; $5F2B: $00
    jr jr_011_5F2E                                ; $5F2C: $18 $00

jr_011_5F2E:
    jr c, jr_011_5F40                             ; $5F2E: $38 $10

    ld [hl], b                                    ; $5F30: $70
    jr nz, jr_011_5F23                            ; $5F31: $20 $F0

    ld h, b                                       ; $5F33: $60
    ldh [$FFC0], a                                ; $5F34: $E0 $C0
    ld h, b                                       ; $5F36: $60
    ret nz                                        ; $5F37: $C0

    ret nz                                        ; $5F38: $C0

    add b                                         ; $5F39: $80
    ret nz                                        ; $5F3A: $C0

    add b                                         ; $5F3B: $80
    add b                                         ; $5F3C: $80
    nop                                           ; $5F3D: $00
    add b                                         ; $5F3E: $80
    nop                                           ; $5F3F: $00

jr_011_5F40:
    ei                                            ; $5F40: $FB
    ld c, [hl]                                    ; $5F41: $4E
    ei                                            ; $5F42: $FB
    ld d, [hl]                                    ; $5F43: $56
    di                                            ; $5F44: $F3

jr_011_5F45:
    ld e, [hl]                                    ; $5F45: $5E
    rst RST_30                                    ; $5F46: $F7
    ld l, d                                       ; $5F47: $6A
    ld d, a                                       ; $5F48: $57
    db $EB                                        ; $5F49: $EB
    ld h, $DB                                     ; $5F4A: $26 $DB
    ld l, b                                       ; $5F4C: $68
    sub a                                         ; $5F4D: $97
    ret z                                         ; $5F4E: $C8

    scf                                           ; $5F4F: $37
    ld d, b                                       ; $5F50: $50
    xor a                                         ; $5F51: $AF
    ldh a, [rIF]                                  ; $5F52: $F0 $0F
    nop                                           ; $5F54: $00
    rst RST_38                                    ; $5F55: $FF
    nop                                           ; $5F56: $00
    nop                                           ; $5F57: $00
    nop                                           ; $5F58: $00
    nop                                           ; $5F59: $00
    nop                                           ; $5F5A: $00
    nop                                           ; $5F5B: $00
    nop                                           ; $5F5C: $00
    nop                                           ; $5F5D: $00
    nop                                           ; $5F5E: $00
    nop                                           ; $5F5F: $00
    db $E4                                        ; $5F60: $E4
    cp e                                          ; $5F61: $BB
    call nz, $857B                                ; $5F62: $C4 $7B $85
    ld a, d                                       ; $5F65: $7A
    add hl, bc                                    ; $5F66: $09
    or $0A                                        ; $5F67: $F6 $0A
    push af                                       ; $5F69: $F5
    ld [hl-], a                                   ; $5F6A: $32
    call $B24D                                    ; $5F6B: $CD $4D $B2
    ld [hl], c                                    ; $5F6E: $71
    adc [hl]                                      ; $5F6F: $8E
    nop                                           ; $5F70: $00
    rst RST_38                                    ; $5F71: $FF
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
    nop                                           ; $5F7C: $00
    nop                                           ; $5F7D: $00
    nop                                           ; $5F7E: $00
    nop                                           ; $5F7F: $00
    call z, $F533                                 ; $5F80: $CC $33 $F5
    ld a, [bc]                                    ; $5F83: $0A
    add hl, hl                                    ; $5F84: $29
    sub $4A                                       ; $5F85: $D6 $4A
    or l                                          ; $5F87: $B5
    or d                                          ; $5F88: $B2
    ld c, l                                       ; $5F89: $4D
    ld d, d                                       ; $5F8A: $52
    xor l                                         ; $5F8B: $AD
    ld a, h                                       ; $5F8C: $7C
    add e                                         ; $5F8D: $83
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
    ld a, [bc]                                    ; $5FA0: $0A
    push af                                       ; $5FA1: $F5
    rrca                                          ; $5FA2: $0F
    ldh a, [$FF80]                                ; $5FA3: $F0 $80
    rst RST_38                                    ; $5FA5: $FF

jr_011_5FA6:
    add b                                         ; $5FA6: $80
    rst RST_38                                    ; $5FA7: $FF
    nop                                           ; $5FA8: $00
    nop                                           ; $5FA9: $00
    nop                                           ; $5FAA: $00
    nop                                           ; $5FAB: $00
    nop                                           ; $5FAC: $00
    nop                                           ; $5FAD: $00
    nop                                           ; $5FAE: $00
    nop                                           ; $5FAF: $00
    nop                                           ; $5FB0: $00
    nop                                           ; $5FB1: $00

jr_011_5FB2:
    nop                                           ; $5FB2: $00
    nop                                           ; $5FB3: $00
    nop                                           ; $5FB4: $00
    nop                                           ; $5FB5: $00
    nop                                           ; $5FB6: $00
    nop                                           ; $5FB7: $00
    nop                                           ; $5FB8: $00
    nop                                           ; $5FB9: $00

jr_011_5FBA:
    nop                                           ; $5FBA: $00
    nop                                           ; $5FBB: $00
    nop                                           ; $5FBC: $00
    nop                                           ; $5FBD: $00
    nop                                           ; $5FBE: $00

Jump_011_5FBF:
    nop                                           ; $5FBF: $00
    jr jr_011_5FB2                                ; $5FC0: $18 $F0

    jr nc, @-$1E                                  ; $5FC2: $30 $E0

    jr nc, jr_011_5FA6                            ; $5FC4: $30 $E0

    nop                                           ; $5FC6: $00
    nop                                           ; $5FC7: $00
    nop                                           ; $5FC8: $00
    nop                                           ; $5FC9: $00
    nop                                           ; $5FCA: $00
    nop                                           ; $5FCB: $00
    nop                                           ; $5FCC: $00
    nop                                           ; $5FCD: $00
    nop                                           ; $5FCE: $00
    nop                                           ; $5FCF: $00
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
    ld bc, $0300                                  ; $5FE0: $01 $00 $03
    ld bc, $0307                                  ; $5FE3: $01 $07 $03
    rlca                                          ; $5FE6: $07
    ld [bc], a                                    ; $5FE7: $02
    ld a, a                                       ; $5FE8: $7F
    rlca                                          ; $5FE9: $07
    ld a, a                                       ; $5FEA: $7F
    dec [hl]                                      ; $5FEB: $35
    ld a, a                                       ; $5FEC: $7F
    ccf                                           ; $5FED: $3F
    ccf                                           ; $5FEE: $3F
    ld e, $3F                                     ; $5FEF: $1E $3F
    ld [de], a                                    ; $5FF1: $12
    ld a, [hl-]                                   ; $5FF2: $3A
    dec d                                         ; $5FF3: $15
    ld e, $0B                                     ; $5FF4: $1E $0B
    rrca                                          ; $5FF6: $0F
    inc bc                                        ; $5FF7: $03
    rrca                                          ; $5FF8: $0F
    nop                                           ; $5FF9: $00
    ld a, [hl]                                    ; $5FFA: $7E
    dec c                                         ; $5FFB: $0D
    db $FC                                        ; $5FFC: $FC
    ld e, e                                       ; $5FFD: $5B
    ei                                            ; $5FFE: $FB
    inc b                                         ; $5FFF: $04
    ld bc, $0F00                                  ; $6000: $01 $00 $0F
    ld bc, $0A3F                                  ; $6003: $01 $3F $0A
    ld a, a                                       ; $6006: $7F
    ccf                                           ; $6007: $3F
    rst RST_38                                    ; $6008: $FF
    ld e, d                                       ; $6009: $5A
    rst RST_38                                    ; $600A: $FF
    rst RST_30                                    ; $600B: $F7
    rst RST_38                                    ; $600C: $FF
    rst RST_20                                    ; $600D: $E7
    rst RST_38                                    ; $600E: $FF
    cp l                                          ; $600F: $BD
    rst RST_38                                    ; $6010: $FF
    or l                                          ; $6011: $B5
    rst RST_38                                    ; $6012: $FF
    ccf                                           ; $6013: $3F
    ccf                                           ; $6014: $3F
    rst RST_18                                    ; $6015: $DF
    ld a, a                                       ; $6016: $7F
    sub [hl]                                      ; $6017: $96
    cp [hl]                                       ; $6018: $BE
    ld e, a                                       ; $6019: $5F
    ld a, [hl]                                    ; $601A: $7E
    sbc a                                         ; $601B: $9F
    cp h                                          ; $601C: $BC
    ld e, a                                       ; $601D: $5F
    db $FC                                        ; $601E: $FC
    ccf                                           ; $601F: $3F
    rra                                           ; $6020: $1F
    nop                                           ; $6021: $00
    rst RST_38                                    ; $6022: $FF
    rla                                           ; $6023: $17
    rst RST_38                                    ; $6024: $FF
    cp h                                          ; $6025: $BC
    rst RST_38                                    ; $6026: $FF
    db $EB                                        ; $6027: $EB
    rst RST_38                                    ; $6028: $FF
    or a                                          ; $6029: $B7
    rst RST_38                                    ; $602A: $FF
    push hl                                       ; $602B: $E5
    rst RST_38                                    ; $602C: $FF
    ld l, c                                       ; $602D: $69
    rst RST_38                                    ; $602E: $FF
    ld l, a                                       ; $602F: $6F
    rst RST_18                                    ; $6030: $DF
    ld l, d                                       ; $6031: $6A
    xor a                                         ; $6032: $AF
    ld d, a                                       ; $6033: $57
    rst RST_00                                    ; $6034: $C7
    jr c, jr_011_5FBA                             ; $6035: $38 $83

    ld a, l                                       ; $6037: $7D
    inc bc                                        ; $6038: $03
    db $FD                                        ; $6039: $FD
    rlca                                          ; $603A: $07
    ld a, [$FA07]                                 ; $603B: $FA $07 $FA
    rra                                           ; $603E: $1F
    rst RST_20                                    ; $603F: $E7
    rst RST_38                                    ; $6040: $FF
    nop                                           ; $6041: $00
    rst RST_38                                    ; $6042: $FF
    rst RST_38                                    ; $6043: $FF
    rst RST_38                                    ; $6044: $FF
    ld a, a                                       ; $6045: $7F
    db $FC                                        ; $6046: $FC
    sbc a                                         ; $6047: $9F
    cp $4F                                        ; $6048: $FE $4F
    rst RST_38                                    ; $604A: $FF
    rst RST_20                                    ; $604B: $E7
    rst RST_38                                    ; $604C: $FF
    db $EB                                        ; $604D: $EB
    rst RST_38                                    ; $604E: $FF
    ld a, e                                       ; $604F: $7B
    rst RST_38                                    ; $6050: $FF
    ld l, l                                       ; $6051: $6D
    rst RST_38                                    ; $6052: $FF
    call Call_000_0DFF                            ; $6053: $CD $FF $0D
    ei                                            ; $6056: $FB
    sbc l                                         ; $6057: $9D
    ld sp, hl                                     ; $6058: $F9
    ld e, $F1                                     ; $6059: $1E $F1
    cp [hl]                                       ; $605B: $BE
    ldh a, [rIF]                                  ; $605C: $F0 $0F
    nop                                           ; $605E: $00
    rst RST_38                                    ; $605F: $FF
    rst RST_38                                    ; $6060: $FF
    nop                                           ; $6061: $00
    rst RST_38                                    ; $6062: $FF
    rst RST_38                                    ; $6063: $FF
    rst RST_38                                    ; $6064: $FF
    rst RST_38                                    ; $6065: $FF
    nop                                           ; $6066: $00
    rst RST_38                                    ; $6067: $FF
    nop                                           ; $6068: $00
    rst RST_38                                    ; $6069: $FF
    nop                                           ; $606A: $00
    rst RST_38                                    ; $606B: $FF
    nop                                           ; $606C: $00
    rst RST_38                                    ; $606D: $FF
    nop                                           ; $606E: $00
    rst RST_38                                    ; $606F: $FF
    add b                                         ; $6070: $80
    rst RST_38                                    ; $6071: $FF
    add b                                         ; $6072: $80
    rst RST_38                                    ; $6073: $FF
    add b                                         ; $6074: $80
    rst RST_38                                    ; $6075: $FF
    ret nz                                        ; $6076: $C0

    rst RST_38                                    ; $6077: $FF
    ret nz                                        ; $6078: $C0

    rst RST_38                                    ; $6079: $FF
    ldh a, [rIE]                                  ; $607A: $F0 $FF
    ld hl, sp+$7F                                 ; $607C: $F8 $7F
    ld a, b                                       ; $607E: $78
    add a                                         ; $607F: $87
    rst RST_38                                    ; $6080: $FF
    nop                                           ; $6081: $00
    rst RST_38                                    ; $6082: $FF
    db $FC                                        ; $6083: $FC
    db $FC                                        ; $6084: $FC
    ldh a, [rSVBK]                                ; $6085: $F0 $70
    ret nz                                        ; $6087: $C0

    ldh [$FF80], a                                ; $6088: $E0 $80
    ld a, b                                       ; $608A: $78
    ldh [rNR34], a                                ; $608B: $E0 $1E
    ld hl, sp+$07                                 ; $608D: $F8 $07
    cp $01                                        ; $608F: $FE $01
    rst RST_38                                    ; $6091: $FF
    nop                                           ; $6092: $00
    rst RST_38                                    ; $6093: $FF
    ld bc, $07FF                                  ; $6094: $01 $FF $07
    cp $1E                                        ; $6097: $FE $1E
    ld hl, sp+$78                                 ; $6099: $F8 $78
    ldh [$FFE0], a                                ; $609B: $E0 $E0
    add b                                         ; $609D: $80
    ld a, b                                       ; $609E: $78
    ldh [rTAC], a                                 ; $609F: $E0 $07
    ld [bc], a                                    ; $60A1: $02
    rlca                                          ; $60A2: $07
    nop                                           ; $60A3: $00
    nop                                           ; $60A4: $00
    nop                                           ; $60A5: $00
    nop                                           ; $60A6: $00
    nop                                           ; $60A7: $00
    nop                                           ; $60A8: $00
    nop                                           ; $60A9: $00
    nop                                           ; $60AA: $00
    nop                                           ; $60AB: $00
    nop                                           ; $60AC: $00
    nop                                           ; $60AD: $00
    nop                                           ; $60AE: $00
    nop                                           ; $60AF: $00
    nop                                           ; $60B0: $00
    nop                                           ; $60B1: $00
    nop                                           ; $60B2: $00
    nop                                           ; $60B3: $00
    nop                                           ; $60B4: $00
    nop                                           ; $60B5: $00
    nop                                           ; $60B6: $00
    nop                                           ; $60B7: $00
    nop                                           ; $60B8: $00
    nop                                           ; $60B9: $00
    nop                                           ; $60BA: $00
    nop                                           ; $60BB: $00
    nop                                           ; $60BC: $00
    nop                                           ; $60BD: $00
    nop                                           ; $60BE: $00
    nop                                           ; $60BF: $00
    ld hl, sp+$3F                                 ; $60C0: $F8 $3F
    ld a, b                                       ; $60C2: $78
    cp a                                          ; $60C3: $BF
    ldh a, [$FF7F]                                ; $60C4: $F0 $7F
    ldh a, [$FF7F]                                ; $60C6: $F0 $7F
    rst RST_38                                    ; $60C8: $FF
    rst RST_38                                    ; $60C9: $FF
    rst RST_38                                    ; $60CA: $FF
    rst RST_38                                    ; $60CB: $FF
    rst RST_38                                    ; $60CC: $FF
    nop                                           ; $60CD: $00
    nop                                           ; $60CE: $00
    nop                                           ; $60CF: $00
    nop                                           ; $60D0: $00
    nop                                           ; $60D1: $00
    nop                                           ; $60D2: $00
    nop                                           ; $60D3: $00
    nop                                           ; $60D4: $00
    nop                                           ; $60D5: $00
    nop                                           ; $60D6: $00
    nop                                           ; $60D7: $00
    nop                                           ; $60D8: $00
    nop                                           ; $60D9: $00
    nop                                           ; $60DA: $00
    nop                                           ; $60DB: $00
    nop                                           ; $60DC: $00
    nop                                           ; $60DD: $00
    nop                                           ; $60DE: $00
    nop                                           ; $60DF: $00
    ccf                                           ; $60E0: $3F
    sub $3E                                       ; $60E1: $D6 $3E
    pop bc                                        ; $60E3: $C1
    nop                                           ; $60E4: $00
    rst RST_38                                    ; $60E5: $FF
    nop                                           ; $60E6: $00
    rst RST_38                                    ; $60E7: $FF
    nop                                           ; $60E8: $00
    rst RST_38                                    ; $60E9: $FF
    rst RST_38                                    ; $60EA: $FF
    rst RST_38                                    ; $60EB: $FF
    rst RST_38                                    ; $60EC: $FF
    rst RST_38                                    ; $60ED: $FF
    rst RST_38                                    ; $60EE: $FF
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
    nop                                           ; $6100: $00
    rst RST_38                                    ; $6101: $FF
    nop                                           ; $6102: $00
    rst RST_38                                    ; $6103: $FF
    nop                                           ; $6104: $00
    rst RST_38                                    ; $6105: $FF
    nop                                           ; $6106: $00
    rst RST_38                                    ; $6107: $FF
    nop                                           ; $6108: $00
    rst RST_38                                    ; $6109: $FF
    rst RST_38                                    ; $610A: $FF
    rst RST_38                                    ; $610B: $FF
    rst RST_38                                    ; $610C: $FF
    rst RST_38                                    ; $610D: $FF
    rst RST_38                                    ; $610E: $FF
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
    nop                                           ; $611E: $00
    nop                                           ; $611F: $00
    nop                                           ; $6120: $00
    rst RST_38                                    ; $6121: $FF
    nop                                           ; $6122: $00
    rst RST_38                                    ; $6123: $FF
    nop                                           ; $6124: $00
    rst RST_38                                    ; $6125: $FF
    nop                                           ; $6126: $00
    rst RST_38                                    ; $6127: $FF
    nop                                           ; $6128: $00
    rst RST_38                                    ; $6129: $FF
    rst RST_38                                    ; $612A: $FF
    rst RST_38                                    ; $612B: $FF
    rst RST_38                                    ; $612C: $FF
    rst RST_38                                    ; $612D: $FF
    rst RST_38                                    ; $612E: $FF
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
    ld e, $F8                                     ; $6140: $1E $F8
    rlca                                          ; $6142: $07
    cp $1E                                        ; $6143: $FE $1E
    ld hl, sp+$78                                 ; $6145: $F8 $78
    ldh [$FFE0], a                                ; $6147: $E0 $E0
    add b                                         ; $6149: $80
    ld hl, sp-$20                                 ; $614A: $F8 $E0
    cp $F8                                        ; $614C: $FE $F8
    rst RST_38                                    ; $614E: $FF
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
    nop                                           ; $615A: $00
    nop                                           ; $615B: $00
    nop                                           ; $615C: $00
    nop                                           ; $615D: $00
    nop                                           ; $615E: $00
    nop                                           ; $615F: $00
    nop                                           ; $6160: $00
    nop                                           ; $6161: $00
    nop                                           ; $6162: $00
    nop                                           ; $6163: $00
    nop                                           ; $6164: $00
    nop                                           ; $6165: $00
    nop                                           ; $6166: $00
    nop                                           ; $6167: $00
    nop                                           ; $6168: $00
    nop                                           ; $6169: $00
    add b                                         ; $616A: $80
    nop                                           ; $616B: $00
    ldh [$FF80], a                                ; $616C: $E0 $80
    ld [hl], b                                    ; $616E: $70
    ldh [$FFE0], a                                ; $616F: $E0 $E0
    add b                                         ; $6171: $80
    add b                                         ; $6172: $80
    nop                                           ; $6173: $00
    nop                                           ; $6174: $00
    nop                                           ; $6175: $00
    nop                                           ; $6176: $00
    nop                                           ; $6177: $00
    nop                                           ; $6178: $00
    nop                                           ; $6179: $00
    nop                                           ; $617A: $00
    nop                                           ; $617B: $00
    nop                                           ; $617C: $00
    nop                                           ; $617D: $00
    add b                                         ; $617E: $80
    nop                                           ; $617F: $00
    nop                                           ; $6180: $00
    nop                                           ; $6181: $00
    nop                                           ; $6182: $00
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
    nop                                           ; $6191: $00
    nop                                           ; $6192: $00
    nop                                           ; $6193: $00
    nop                                           ; $6194: $00
    nop                                           ; $6195: $00
    nop                                           ; $6196: $00
    nop                                           ; $6197: $00
    nop                                           ; $6198: $00
    nop                                           ; $6199: $00
    nop                                           ; $619A: $00
    nop                                           ; $619B: $00
    nop                                           ; $619C: $00
    nop                                           ; $619D: $00
    add b                                         ; $619E: $80
    nop                                           ; $619F: $00
    nop                                           ; $61A0: $00
    nop                                           ; $61A1: $00
    add c                                         ; $61A2: $81
    nop                                           ; $61A3: $00
    jp $C701                                      ; $61A4: $C3 $01 $C7


    inc bc                                        ; $61A7: $03
    rst RST_28                                    ; $61A8: $EF
    ld b, a                                       ; $61A9: $47
    db $FD                                        ; $61AA: $FD
    ld c, a                                       ; $61AB: $4F
    ld sp, hl                                     ; $61AC: $F9
    ld e, a                                       ; $61AD: $5F
    pop af                                        ; $61AE: $F1
    ld a, a                                       ; $61AF: $7F
    pop hl                                        ; $61B0: $E1
    ld a, a                                       ; $61B1: $7F
    pop bc                                        ; $61B2: $C1
    ld a, a                                       ; $61B3: $7F
    pop bc                                        ; $61B4: $C1
    ld a, a                                       ; $61B5: $7F
    add c                                         ; $61B6: $81
    ld a, a                                       ; $61B7: $7F
    add b                                         ; $61B8: $80
    ld a, a                                       ; $61B9: $7F
    nop                                           ; $61BA: $00
    nop                                           ; $61BB: $00
    nop                                           ; $61BC: $00
    nop                                           ; $61BD: $00
    nop                                           ; $61BE: $00
    nop                                           ; $61BF: $00
    add b                                         ; $61C0: $80
    nop                                           ; $61C1: $00
    add b                                         ; $61C2: $80
    nop                                           ; $61C3: $00
    add b                                         ; $61C4: $80
    nop                                           ; $61C5: $00
    add b                                         ; $61C6: $80
    nop                                           ; $61C7: $00
    add b                                         ; $61C8: $80
    nop                                           ; $61C9: $00
    add e                                         ; $61CA: $83

jr_011_61CB:
    nop                                           ; $61CB: $00
    adc a                                         ; $61CC: $8F
    ld [bc], a                                    ; $61CD: $02
    cp [hl]                                       ; $61CE: $BE
    inc c                                         ; $61CF: $0C
    db $FC                                        ; $61D0: $FC
    jr c, jr_011_61CB                             ; $61D1: $38 $F8

    ldh a, [$FFF0]                                ; $61D3: $F0 $F0
    ldh [$FF60], a                                ; $61D5: $E0 $60
    ret nz                                        ; $61D7: $C0

    ret nz                                        ; $61D8: $C0

    add b                                         ; $61D9: $80
    nop                                           ; $61DA: $00
    nop                                           ; $61DB: $00
    nop                                           ; $61DC: $00
    nop                                           ; $61DD: $00
    nop                                           ; $61DE: $00
    nop                                           ; $61DF: $00
    add b                                         ; $61E0: $80
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
    nop                                           ; $61F6: $00
    nop                                           ; $61F7: $00
    nop                                           ; $61F8: $00
    nop                                           ; $61F9: $00
    nop                                           ; $61FA: $00
    nop                                           ; $61FB: $00
    nop                                           ; $61FC: $00
    nop                                           ; $61FD: $00
    nop                                           ; $61FE: $00
    nop                                           ; $61FF: $00
    ret nz                                        ; $6200: $C0

    nop                                           ; $6201: $00
    ld hl, sp-$40                                 ; $6202: $F8 $C0
    db $FC                                        ; $6204: $FC
    ld hl, sp-$02                                 ; $6205: $F8 $FE
    ld h, h                                       ; $6207: $64
    or $E8                                        ; $6208: $F6 $E8
    rra                                           ; $620A: $1F
    or $F3                                        ; $620B: $F6 $F3
    ld c, $2E                                     ; $620D: $0E $2E
    db $10                                        ; $620F: $10
    inc d                                         ; $6210: $14
    ld [$00E8], sp                                ; $6211: $08 $E8 $00
    ldh a, [$FFE0]                                ; $6214: $F0 $E0
    ld hl, sp-$10                                 ; $6216: $F8 $F0
    inc a                                         ; $6218: $3C
    ld hl, sp-$44                                 ; $6219: $F8 $BC
    ld a, b                                       ; $621B: $78
    cp b                                          ; $621C: $B8
    ld [hl], b                                    ; $621D: $70
    ldh a, [rP1]                                  ; $621E: $F0 $00
    rst RST_38                                    ; $6220: $FF
    ret                                           ; $6221: $C9


    cp $7B                                        ; $6222: $FE $7B
    cp $5B                                        ; $6224: $FE $5B
    db $FD                                        ; $6226: $FD
    or $FA                                        ; $6227: $F6 $FA
    call z, $B8C7                                 ; $6229: $CC $C7 $B8
    rst RST_38                                    ; $622C: $FF
    ld bc, $FDFF                                  ; $622D: $01 $FF $FD
    rst RST_38                                    ; $6230: $FF
    sbc [hl]                                      ; $6231: $9E
    rst RST_38                                    ; $6232: $FF
    scf                                           ; $6233: $37
    rst RST_38                                    ; $6234: $FF
    rrca                                          ; $6235: $0F
    rst RST_38                                    ; $6236: $FF
    ld c, $7F                                     ; $6237: $0E $7F
    db $10                                        ; $6239: $10
    ld a, h                                       ; $623A: $7C
    nop                                           ; $623B: $00
    ldh a, [rP1]                                  ; $623C: $F0 $00
    ret nz                                        ; $623E: $C0

    nop                                           ; $623F: $00
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
    ld bc, $E100                                  ; $6258: $01 $00 $E1
    nop                                           ; $625B: $00
    rst RST_38                                    ; $625C: $FF
    ldh [rIE], a                                  ; $625D: $E0 $FF
    rst RST_10                                    ; $625F: $D7
    inc bc                                        ; $6260: $03
    nop                                           ; $6261: $00
    rlca                                          ; $6262: $07
    ld bc, $051F                                  ; $6263: $01 $1F $05
    ccf                                           ; $6266: $3F
    dec de                                        ; $6267: $1B
    ld e, a                                       ; $6268: $5F
    inc sp                                        ; $6269: $33
    cp a                                          ; $626A: $BF
    ld h, e                                       ; $626B: $63
    ld a, a                                       ; $626C: $7F
    push bc                                       ; $626D: $C5
    rst RST_38                                    ; $626E: $FF
    rst RST_00                                    ; $626F: $C7
    rst RST_38                                    ; $6270: $FF
    sub [hl]                                      ; $6271: $96
    rst RST_08                                    ; $6272: $CF
    dec sp                                        ; $6273: $3B
    add e                                         ; $6274: $83
    ld a, a                                       ; $6275: $7F
    rlca                                          ; $6276: $07
    cp $1F                                        ; $6277: $FE $1F
    ld hl, sp+$3F                                 ; $6279: $F8 $3F
    ldh [$FFFE], a                                ; $627B: $E0 $FE
    ret nz                                        ; $627D: $C0

    ld hl, sp-$80                                 ; $627E: $F8 $80
    ld bc, $0300                                  ; $6280: $01 $00 $03
    ld bc, $0306                                  ; $6283: $01 $06 $03
    inc c                                         ; $6286: $0C
    rlca                                          ; $6287: $07
    add hl, de                                    ; $6288: $19
    rrca                                          ; $6289: $0F
    ld [hl], c                                    ; $628A: $71
    rra                                           ; $628B: $1F
    db $E3                                        ; $628C: $E3
    ccf                                           ; $628D: $3F
    ret nz                                        ; $628E: $C0

    ld a, a                                       ; $628F: $7F
    add h                                         ; $6290: $84
    rst RST_38                                    ; $6291: $FF
    sbc b                                         ; $6292: $98
    rst RST_38                                    ; $6293: $FF
    ld a, e                                       ; $6294: $7B
    rst RST_38                                    ; $6295: $FF
    rst RST_30                                    ; $6296: $F7
    sbc $FF                                       ; $6297: $DE $FF
    inc a                                         ; $6299: $3C
    cp $30                                        ; $629A: $FE $30
    db $FC                                        ; $629C: $FC
    ld h, b                                       ; $629D: $60
    ldh a, [$FF80]                                ; $629E: $F0 $80
    ld bc, $0300                                  ; $62A0: $01 $00 $03
    nop                                           ; $62A3: $00
    rlca                                          ; $62A4: $07
    ld bc, $010F                                  ; $62A5: $01 $0F $01
    rra                                           ; $62A8: $1F
    inc bc                                        ; $62A9: $03
    ccf                                           ; $62AA: $3F
    inc bc                                        ; $62AB: $03
    ld a, a                                       ; $62AC: $7F
    inc b                                         ; $62AD: $04
    rst RST_38                                    ; $62AE: $FF
    nop                                           ; $62AF: $00
    rst RST_38                                    ; $62B0: $FF
    nop                                           ; $62B1: $00
    ei                                            ; $62B2: $FB
    nop                                           ; $62B3: $00
    rst RST_20                                    ; $62B4: $E7
    nop                                           ; $62B5: $00
    adc [hl]                                      ; $62B6: $8E
    nop                                           ; $62B7: $00
    inc c                                         ; $62B8: $0C
    nop                                           ; $62B9: $00
    stop                                          ; $62BA: $10 $00
    nop                                           ; $62BC: $00
    nop                                           ; $62BD: $00
    nop                                           ; $62BE: $00
    nop                                           ; $62BF: $00
    ld bc, $0300                                  ; $62C0: $01 $00 $03
    nop                                           ; $62C3: $00
    inc bc                                        ; $62C4: $03
    nop                                           ; $62C5: $00
    rlca                                          ; $62C6: $07
    nop                                           ; $62C7: $00
    rrca                                          ; $62C8: $0F
    nop                                           ; $62C9: $00
    inc c                                         ; $62CA: $0C
    nop                                           ; $62CB: $00
    stop                                          ; $62CC: $10 $00
    nop                                           ; $62CE: $00
    nop                                           ; $62CF: $00
    nop                                           ; $62D0: $00
    nop                                           ; $62D1: $00
    nop                                           ; $62D2: $00
    nop                                           ; $62D3: $00
    nop                                           ; $62D4: $00
    nop                                           ; $62D5: $00
    nop                                           ; $62D6: $00
    nop                                           ; $62D7: $00
    nop                                           ; $62D8: $00
    nop                                           ; $62D9: $00
    nop                                           ; $62DA: $00
    nop                                           ; $62DB: $00
    nop                                           ; $62DC: $00
    nop                                           ; $62DD: $00
    nop                                           ; $62DE: $00
    nop                                           ; $62DF: $00
    ldh [rP1], a                                  ; $62E0: $E0 $00
    add c                                         ; $62E2: $81
    nop                                           ; $62E3: $00
    inc bc                                        ; $62E4: $03
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
    ldh [rP1], a                                  ; $6300: $E0 $00
    add b                                         ; $6302: $80
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
    nop                                           ; $631C: $00
    nop                                           ; $631D: $00
    nop                                           ; $631E: $00
    nop                                           ; $631F: $00
    sbc a                                         ; $6320: $9F
    ld a, b                                       ; $6321: $78
    ld e, a                                       ; $6322: $5F
    ld [hl], $5F                                  ; $6323: $36 $5F
    ld a, $DE                                     ; $6325: $3E $DE
    inc a                                         ; $6327: $3C
    ld a, [hl]                                    ; $6328: $7E
    and h                                         ; $6329: $A4
    xor [hl]                                      ; $632A: $AE
    ld d, h                                       ; $632B: $54
    cp h                                          ; $632C: $BC
    ld l, b                                       ; $632D: $68
    ld hl, sp+$60                                 ; $632E: $F8 $60
    ld h, b                                       ; $6330: $60
    nop                                           ; $6331: $00
    nop                                           ; $6332: $00
    nop                                           ; $6333: $00
    nop                                           ; $6334: $00
    nop                                           ; $6335: $00
    nop                                           ; $6336: $00
    nop                                           ; $6337: $00
    nop                                           ; $6338: $00
    nop                                           ; $6339: $00
    nop                                           ; $633A: $00
    nop                                           ; $633B: $00
    nop                                           ; $633C: $00
    nop                                           ; $633D: $00
    nop                                           ; $633E: $00
    nop                                           ; $633F: $00
    add b                                         ; $6340: $80
    nop                                           ; $6341: $00
    add b                                         ; $6342: $80
    nop                                           ; $6343: $00
    ld b, b                                       ; $6344: $40
    add b                                         ; $6345: $80
    and b                                         ; $6346: $A0
    ret nz                                        ; $6347: $C0

    ldh a, [$FF60]                                ; $6348: $F0 $60

jr_011_634A:
    ldh a, [rNR41]                                ; $634A: $F0 $20
    ld hl, sp+$10                                 ; $634C: $F8 $10
    db $FC                                        ; $634E: $FC
    ldh [$FFFC], a                                ; $634F: $E0 $FC
    ld hl, sp-$02                                 ; $6351: $F8 $FE
    sbc h                                         ; $6353: $9C
    cp $FC                                        ; $6354: $FE $FC
    cp $A4                                        ; $6356: $FE $A4
    db $FC                                        ; $6358: $FC
    add sp, -$04                                  ; $6359: $E8 $FC
    ld [hl], b                                    ; $635B: $70

jr_011_635C:
    db $FC                                        ; $635C: $FC
    adc b                                         ; $635D: $88
    ld a, h                                       ; $635E: $7C
    add sp, -$80                                  ; $635F: $E8 $80
    nop                                           ; $6361: $00
    ret nz                                        ; $6362: $C0

    nop                                           ; $6363: $00
    ldh [$FF80], a                                ; $6364: $E0 $80
    ld [hl], b                                    ; $6366: $70
    ret nz                                        ; $6367: $C0

    jr nc, jr_011_634A                            ; $6368: $30 $E0

    jr jr_011_635C                                ; $636A: $18 $F0

    inc c                                         ; $636C: $0C
    ld hl, sp-$7A                                 ; $636D: $F8 $86
    db $FC                                        ; $636F: $FC
    inc hl                                        ; $6370: $23
    cp $39                                        ; $6371: $FE $39
    rst RST_38                                    ; $6373: $FF
    ld e, $E7                                     ; $6374: $1E $E7
    rrca                                          ; $6376: $0F
    di                                            ; $6377: $F3
    add a                                         ; $6378: $87
    ld hl, sp-$39                                 ; $6379: $F8 $C7
    ld a, h                                       ; $637B: $7C
    rst RST_08                                    ; $637C: $CF
    ld a, b                                       ; $637D: $78
    rst RST_28                                    ; $637E: $EF
    scf                                           ; $637F: $37
    rst RST_38                                    ; $6380: $FF
    ld a, $FF                                     ; $6381: $3E $FF
    dec de                                        ; $6383: $1B
    rst RST_38                                    ; $6384: $FF
    dec de                                        ; $6385: $1B
    rst RST_38                                    ; $6386: $FF
    add hl, bc                                    ; $6387: $09
    db $FD                                        ; $6388: $FD
    ld a, [hl+]                                   ; $6389: $2A
    db $FD                                        ; $638A: $FD
    ld a, [hl-]                                   ; $638B: $3A
    db $FD                                        ; $638C: $FD
    db $DB                                        ; $638D: $DB
    cp $F9                                        ; $638E: $FE $F9
    rst RST_38                                    ; $6390: $FF
    ldh a, [$FFFE]                                ; $6391: $F0 $FE
    ld l, h                                       ; $6393: $6C
    xor $1C                                       ; $6394: $EE $1C
    adc [hl]                                      ; $6396: $8E
    ld a, h                                       ; $6397: $7C
    cp $7C                                        ; $6398: $FE $7C
    db $FD                                        ; $639A: $FD
    ld a, b                                       ; $639B: $78
    ld a, d                                       ; $639C: $7A
    ld sp, $0031                                  ; $639D: $31 $31 $00
    ldh [rP1], a                                  ; $63A0: $E0 $00
    ldh a, [rP1]                                  ; $63A2: $F0 $00
    ld hl, sp+$00                                 ; $63A4: $F8 $00
    db $FC                                        ; $63A6: $FC
    nop                                           ; $63A7: $00
    cp $00                                        ; $63A8: $FE $00
    ld a, a                                       ; $63AA: $7F
    db $10                                        ; $63AB: $10
    rst RST_38                                    ; $63AC: $FF
    inc c                                         ; $63AD: $0C
    rst RST_38                                    ; $63AE: $FF
    rrca                                          ; $63AF: $0F
    db $FD                                        ; $63B0: $FD
    ld b, a                                       ; $63B1: $47
    cp $27                                        ; $63B2: $FE $27
    cp $3B                                        ; $63B4: $FE $3B
    ld a, a                                       ; $63B6: $7F
    rra                                           ; $63B7: $1F
    dec sp                                        ; $63B8: $3B
    rrca                                          ; $63B9: $0F
    inc a                                         ; $63BA: $3C
    rrca                                          ; $63BB: $0F
    ld e, $07                                     ; $63BC: $1E $07
    ld c, $03                                     ; $63BE: $0E $03
    rrca                                          ; $63C0: $0F
    inc bc                                        ; $63C1: $03
    rlca                                          ; $63C2: $07
    ld bc, $0007                                  ; $63C3: $01 $07 $00
    inc bc                                        ; $63C6: $03
    nop                                           ; $63C7: $00
    inc bc                                        ; $63C8: $03
    nop                                           ; $63C9: $00
    ld bc, $1100                                  ; $63CA: $01 $00 $11
    nop                                           ; $63CD: $00
    jr jr_011_63D0                                ; $63CE: $18 $00

jr_011_63D0:
    inc c                                         ; $63D0: $0C
    nop                                           ; $63D1: $00
    rrca                                          ; $63D2: $0F
    nop                                           ; $63D3: $00
    rlca                                          ; $63D4: $07
    nop                                           ; $63D5: $00
    rlca                                          ; $63D6: $07
    ld bc, $0003                                  ; $63D7: $01 $03 $00
    inc bc                                        ; $63DA: $03
    nop                                           ; $63DB: $00
    ld bc, $0100                                  ; $63DC: $01 $00 $01
    nop                                           ; $63DF: $00
    nop                                           ; $63E0: $00
    nop                                           ; $63E1: $00
    nop                                           ; $63E2: $00
    nop                                           ; $63E3: $00
    ld b, b                                       ; $63E4: $40
    nop                                           ; $63E5: $00
    jr nc, jr_011_63E8                            ; $63E6: $30 $00

jr_011_63E8:
    jr c, jr_011_63EA                             ; $63E8: $38 $00

jr_011_63EA:
    ld e, $00                                     ; $63EA: $1E $00
    rra                                           ; $63EC: $1F
    nop                                           ; $63ED: $00
    rrca                                          ; $63EE: $0F
    nop                                           ; $63EF: $00
    rlca                                          ; $63F0: $07
    nop                                           ; $63F1: $00
    rlca                                          ; $63F2: $07
    nop                                           ; $63F3: $00
    inc hl                                        ; $63F4: $23
    nop                                           ; $63F5: $00
    dec de                                        ; $63F6: $1B

Jump_011_63F7:
    nop                                           ; $63F7: $00
    dec e                                         ; $63F8: $1D
    nop                                           ; $63F9: $00
    rrca                                          ; $63FA: $0F
    nop                                           ; $63FB: $00
    rlca                                          ; $63FC: $07
    nop                                           ; $63FD: $00
    rlca                                          ; $63FE: $07
    ld bc, $0103                                  ; $63FF: $01 $03 $01
    inc bc                                        ; $6402: $03
    ld bc, $033F                                  ; $6403: $01 $3F $03
    ccf                                           ; $6406: $3F
    ld a, [de]                                    ; $6407: $1A
    ccf                                           ; $6408: $3F
    rra                                           ; $6409: $1F
    rra                                           ; $640A: $1F
    rrca                                          ; $640B: $0F
    rra                                           ; $640C: $1F
    add hl, bc                                    ; $640D: $09
    dec e                                         ; $640E: $1D
    ld a, [bc]                                    ; $640F: $0A
    rrca                                          ; $6410: $0F
    dec b                                         ; $6411: $05
    rlca                                          ; $6412: $07
    ld bc, $0007                                  ; $6413: $01 $07 $00
    ccf                                           ; $6416: $3F
    ld b, $7F                                     ; $6417: $06 $7F
    inc l                                         ; $6419: $2C
    ld a, a                                       ; $641A: $7F
    nop                                           ; $641B: $00
    inc bc                                        ; $641C: $03
    ld bc, $0003                                  ; $641D: $01 $03 $00
    rst RST_38                                    ; $6420: $FF
    sbc $FF                                       ; $6421: $DE $FF
    ld e, d                                       ; $6423: $5A
    rst RST_38                                    ; $6424: $FF
    sbc a                                         ; $6425: $9F
    sbc a                                         ; $6426: $9F
    rst RST_28                                    ; $6427: $EF
    cp a                                          ; $6428: $BF
    set 3, a                                      ; $6429: $CB $DF
    cpl                                           ; $642B: $2F
    cp a                                          ; $642C: $BF
    ld c, a                                       ; $642D: $4F
    ld e, [hl]                                    ; $642E: $5E
    xor a                                         ; $642F: $AF
    ld a, b                                       ; $6430: $78
    sbc a                                         ; $6431: $9F
    db $FC                                        ; $6432: $FC
    sbc a                                         ; $6433: $9F
    ld sp, hl                                     ; $6434: $F9
    ld e, $FC                                     ; $6435: $1E $FC
    ccf                                           ; $6437: $3F
    ldh a, [$FF3F]                                ; $6438: $F0 $3F
    rst RST_38                                    ; $643A: $FF
    ld a, b                                       ; $643B: $78
    ld hl, sp+$60                                 ; $643C: $F8 $60
    ldh [rP1], a                                  ; $643E: $E0 $00
    db $FC                                        ; $6440: $FC
    rst RST_18                                    ; $6441: $DF
    ldh a, [$FFDF]                                ; $6442: $F0 $DF
    ret nz                                        ; $6444: $C0

    cp a                                          ; $6445: $BF
    nop                                           ; $6446: $00
    rst RST_38                                    ; $6447: $FF
    cp $7F                                        ; $6448: $FE $7F
    ld hl, sp-$01                                 ; $644A: $F8 $FF
    ret nz                                        ; $644C: $C0

    rst RST_38                                    ; $644D: $FF
    inc bc                                        ; $644E: $03
    cp $00                                        ; $644F: $FE $00
    rst RST_38                                    ; $6451: $FF
    ld a, a                                       ; $6452: $7F
    rst RST_38                                    ; $6453: $FF
    rst RST_38                                    ; $6454: $FF
    nop                                           ; $6455: $00
    ret nz                                        ; $6456: $C0

    nop                                           ; $6457: $00
    ld h, b                                       ; $6458: $60
    ret nz                                        ; $6459: $C0

    ldh a, [rP1]                                  ; $645A: $F0 $00
    nop                                           ; $645C: $00
    nop                                           ; $645D: $00
    nop                                           ; $645E: $00
    nop                                           ; $645F: $00
    nop                                           ; $6460: $00
    rst RST_38                                    ; $6461: $FF
    nop                                           ; $6462: $00
    rst RST_38                                    ; $6463: $FF
    nop                                           ; $6464: $00
    rst RST_38                                    ; $6465: $FF
    rlca                                          ; $6466: $07
    db $FC                                        ; $6467: $FC
    inc bc                                        ; $6468: $03
    rst RST_38                                    ; $6469: $FF
    nop                                           ; $646A: $00
    rst RST_38                                    ; $646B: $FF
    rst RST_38                                    ; $646C: $FF
    add b                                         ; $646D: $80
    rst RST_38                                    ; $646E: $FF
    nop                                           ; $646F: $00
    ld hl, sp-$80                                 ; $6470: $F8 $80
    cp $E0                                        ; $6472: $FE $E0
    rst RST_38                                    ; $6474: $FF
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
    nop                                           ; $6486: $00
    nop                                           ; $6487: $00
    nop                                           ; $6488: $00
    nop                                           ; $6489: $00
    nop                                           ; $648A: $00
    nop                                           ; $648B: $00
    nop                                           ; $648C: $00
    nop                                           ; $648D: $00
    nop                                           ; $648E: $00
    nop                                           ; $648F: $00
    nop                                           ; $6490: $00
    nop                                           ; $6491: $00
    nop                                           ; $6492: $00
    nop                                           ; $6493: $00
    inc bc                                        ; $6494: $03
    nop                                           ; $6495: $00
    rrca                                          ; $6496: $0F
    ld [bc], a                                    ; $6497: $02
    rra                                           ; $6498: $1F
    rrca                                          ; $6499: $0F
    ccf                                           ; $649A: $3F
    ld d, $7F                                     ; $649B: $16 $7F
    dec a                                         ; $649D: $3D
    rst RST_38                                    ; $649E: $FF
    ld a, c                                       ; $649F: $79
    nop                                           ; $64A0: $00
    nop                                           ; $64A1: $00
    nop                                           ; $64A2: $00
    nop                                           ; $64A3: $00
    nop                                           ; $64A4: $00
    nop                                           ; $64A5: $00
    nop                                           ; $64A6: $00
    nop                                           ; $64A7: $00
    nop                                           ; $64A8: $00
    nop                                           ; $64A9: $00
    nop                                           ; $64AA: $00
    nop                                           ; $64AB: $00
    nop                                           ; $64AC: $00
    nop                                           ; $64AD: $00
    nop                                           ; $64AE: $00
    nop                                           ; $64AF: $00
    nop                                           ; $64B0: $00
    nop                                           ; $64B1: $00
    ld a, a                                       ; $64B2: $7F
    nop                                           ; $64B3: $00
    rst RST_38                                    ; $64B4: $FF
    ld l, a                                       ; $64B5: $6F
    db $FC                                        ; $64B6: $FC
    cp a                                          ; $64B7: $BF
    rst RST_38                                    ; $64B8: $FF
    rst RST_28                                    ; $64B9: $EF
    db $FC                                        ; $64BA: $FC
    cp a                                          ; $64BB: $BF
    ldh [$FFDF], a                                ; $64BC: $E0 $DF
    ld hl, sp-$31                                 ; $64BE: $F8 $CF
    nop                                           ; $64C0: $00
    nop                                           ; $64C1: $00
    nop                                           ; $64C2: $00
    nop                                           ; $64C3: $00
    nop                                           ; $64C4: $00
    nop                                           ; $64C5: $00
    nop                                           ; $64C6: $00
    nop                                           ; $64C7: $00
    nop                                           ; $64C8: $00
    nop                                           ; $64C9: $00
    nop                                           ; $64CA: $00
    nop                                           ; $64CB: $00
    nop                                           ; $64CC: $00
    nop                                           ; $64CD: $00
    nop                                           ; $64CE: $00
    nop                                           ; $64CF: $00
    nop                                           ; $64D0: $00
    nop                                           ; $64D1: $00
    rst RST_38                                    ; $64D2: $FF
    nop                                           ; $64D3: $00
    rst RST_38                                    ; $64D4: $FF
    cp $00                                        ; $64D5: $FE $00
    rst RST_38                                    ; $64D7: $FF
    ld bc, $07FF                                  ; $64D8: $01 $FF $07
    cp $1F                                        ; $64DB: $FE $1F
    db $FC                                        ; $64DD: $FC
    nop                                           ; $64DE: $00
    rst RST_38                                    ; $64DF: $FF
    nop                                           ; $64E0: $00
    nop                                           ; $64E1: $00
    ret nz                                        ; $64E2: $C0

    nop                                           ; $64E3: $00
    ld hl, sp+$00                                 ; $64E4: $F8 $00
    ccf                                           ; $64E6: $3F
    ldh a, [rIE]                                  ; $64E7: $F0 $FF
    add b                                         ; $64E9: $80
    ldh a, [rP1]                                  ; $64EA: $F0 $00

jr_011_64EC:
    cp $00                                        ; $64EC: $FE $00
    rst RST_38                                    ; $64EE: $FF
    ldh [rIF], a                                  ; $64EF: $E0 $0F
    cp $00                                        ; $64F1: $FE $00
    rst RST_38                                    ; $64F3: $FF
    rrca                                          ; $64F4: $0F
    ld hl, sp-$01                                 ; $64F5: $F8 $FF
    nop                                           ; $64F7: $00
    cp $80                                        ; $64F8: $FE $80
    jr c, jr_011_64EC                             ; $64FA: $38 $F0

    cp $00                                        ; $64FC: $FE $00
    rst RST_38                                    ; $64FE: $FF
    nop                                           ; $64FF: $00
    nop                                           ; $6500: $00
    nop                                           ; $6501: $00
    nop                                           ; $6502: $00
    nop                                           ; $6503: $00
    nop                                           ; $6504: $00
    nop                                           ; $6505: $00
    nop                                           ; $6506: $00
    nop                                           ; $6507: $00
    ret nz                                        ; $6508: $C0

    nop                                           ; $6509: $00
    nop                                           ; $650A: $00
    nop                                           ; $650B: $00
    nop                                           ; $650C: $00
    nop                                           ; $650D: $00
    ret nz                                        ; $650E: $C0

    nop                                           ; $650F: $00
    ldh a, [rP1]                                  ; $6510: $F0 $00
    db $FC                                        ; $6512: $FC
    ret nz                                        ; $6513: $C0

    ldh a, [rP1]                                  ; $6514: $F0 $00
    ret nz                                        ; $6516: $C0

    nop                                           ; $6517: $00
    nop                                           ; $6518: $00
    nop                                           ; $6519: $00
    nop                                           ; $651A: $00
    nop                                           ; $651B: $00
    nop                                           ; $651C: $00
    nop                                           ; $651D: $00
    add b                                         ; $651E: $80
    nop                                           ; $651F: $00
    rst RST_38                                    ; $6520: $FF
    rst RST_38                                    ; $6521: $FF
    rst RST_38                                    ; $6522: $FF
    rst RST_38                                    ; $6523: $FF
    rst RST_38                                    ; $6524: $FF
    rst RST_38                                    ; $6525: $FF
    rst RST_38                                    ; $6526: $FF
    rst RST_38                                    ; $6527: $FF
    rst RST_38                                    ; $6528: $FF
    rst RST_38                                    ; $6529: $FF
    rst RST_38                                    ; $652A: $FF
    rst RST_38                                    ; $652B: $FF
    rst RST_38                                    ; $652C: $FF
    rst RST_38                                    ; $652D: $FF
    rst RST_38                                    ; $652E: $FF
    rst RST_38                                    ; $652F: $FF
    rst RST_38                                    ; $6530: $FF
    rst RST_38                                    ; $6531: $FF
    rst RST_38                                    ; $6532: $FF
    rst RST_38                                    ; $6533: $FF
    rst RST_38                                    ; $6534: $FF
    rst RST_38                                    ; $6535: $FF
    rst RST_38                                    ; $6536: $FF
    rst RST_38                                    ; $6537: $FF
    rst RST_38                                    ; $6538: $FF
    rst RST_38                                    ; $6539: $FF
    rst RST_38                                    ; $653A: $FF
    rst RST_38                                    ; $653B: $FF
    rst RST_38                                    ; $653C: $FF
    rst RST_38                                    ; $653D: $FF
    rst RST_38                                    ; $653E: $FF
    rst RST_38                                    ; $653F: $FF
    rst RST_38                                    ; $6540: $FF
    rst RST_38                                    ; $6541: $FF
    rst RST_38                                    ; $6542: $FF
    rst RST_38                                    ; $6543: $FF
    rst RST_38                                    ; $6544: $FF
    rst RST_38                                    ; $6545: $FF
    rst RST_38                                    ; $6546: $FF
    rst RST_38                                    ; $6547: $FF
    rst RST_38                                    ; $6548: $FF
    rst RST_38                                    ; $6549: $FF
    rst RST_38                                    ; $654A: $FF
    rst RST_38                                    ; $654B: $FF
    rst RST_38                                    ; $654C: $FF
    rst RST_38                                    ; $654D: $FF
    rst RST_38                                    ; $654E: $FF
    rst RST_38                                    ; $654F: $FF
    rst RST_38                                    ; $6550: $FF
    rst RST_38                                    ; $6551: $FF
    rst RST_38                                    ; $6552: $FF
    rst RST_38                                    ; $6553: $FF
    rst RST_38                                    ; $6554: $FF
    rst RST_38                                    ; $6555: $FF
    rst RST_38                                    ; $6556: $FF
    rst RST_38                                    ; $6557: $FF
    rst RST_38                                    ; $6558: $FF
    rst RST_38                                    ; $6559: $FF
    rst RST_38                                    ; $655A: $FF
    rst RST_38                                    ; $655B: $FF
    rst RST_38                                    ; $655C: $FF
    rst RST_38                                    ; $655D: $FF
    rst RST_38                                    ; $655E: $FF
    rst RST_38                                    ; $655F: $FF
    rst RST_38                                    ; $6560: $FF
    rst RST_38                                    ; $6561: $FF
    rst RST_38                                    ; $6562: $FF
    rst RST_38                                    ; $6563: $FF
    rst RST_38                                    ; $6564: $FF
    rst RST_38                                    ; $6565: $FF
    rst RST_38                                    ; $6566: $FF
    rst RST_38                                    ; $6567: $FF
    rst RST_38                                    ; $6568: $FF
    rst RST_38                                    ; $6569: $FF
    rst RST_38                                    ; $656A: $FF
    rst RST_38                                    ; $656B: $FF
    rst RST_38                                    ; $656C: $FF
    rst RST_38                                    ; $656D: $FF
    rst RST_38                                    ; $656E: $FF
    rst RST_38                                    ; $656F: $FF
    rst RST_38                                    ; $6570: $FF
    rst RST_38                                    ; $6571: $FF
    rst RST_38                                    ; $6572: $FF
    rst RST_38                                    ; $6573: $FF
    rst RST_38                                    ; $6574: $FF
    rst RST_38                                    ; $6575: $FF
    rst RST_38                                    ; $6576: $FF
    rst RST_38                                    ; $6577: $FF
    rst RST_38                                    ; $6578: $FF
    rst RST_38                                    ; $6579: $FF
    rst RST_38                                    ; $657A: $FF
    rst RST_38                                    ; $657B: $FF
    rst RST_38                                    ; $657C: $FF
    rst RST_38                                    ; $657D: $FF
    rst RST_38                                    ; $657E: $FF
    rst RST_38                                    ; $657F: $FF
    rst RST_38                                    ; $6580: $FF
    rst RST_38                                    ; $6581: $FF
    rst RST_38                                    ; $6582: $FF
    rst RST_38                                    ; $6583: $FF
    rst RST_38                                    ; $6584: $FF
    rst RST_38                                    ; $6585: $FF
    rst RST_38                                    ; $6586: $FF
    rst RST_38                                    ; $6587: $FF
    rst RST_38                                    ; $6588: $FF
    rst RST_38                                    ; $6589: $FF
    rst RST_38                                    ; $658A: $FF
    rst RST_38                                    ; $658B: $FF
    rst RST_38                                    ; $658C: $FF
    rst RST_38                                    ; $658D: $FF
    rst RST_38                                    ; $658E: $FF
    rst RST_38                                    ; $658F: $FF
    rst RST_38                                    ; $6590: $FF
    rst RST_38                                    ; $6591: $FF
    rst RST_38                                    ; $6592: $FF
    rst RST_38                                    ; $6593: $FF
    rst RST_38                                    ; $6594: $FF
    rst RST_38                                    ; $6595: $FF
    rst RST_38                                    ; $6596: $FF
    rst RST_38                                    ; $6597: $FF
    rst RST_38                                    ; $6598: $FF
    rst RST_38                                    ; $6599: $FF
    rst RST_38                                    ; $659A: $FF
    rst RST_38                                    ; $659B: $FF
    rst RST_38                                    ; $659C: $FF
    rst RST_38                                    ; $659D: $FF
    rst RST_38                                    ; $659E: $FF
    rst RST_38                                    ; $659F: $FF
    rst RST_38                                    ; $65A0: $FF
    rst RST_38                                    ; $65A1: $FF
    rst RST_38                                    ; $65A2: $FF
    rst RST_38                                    ; $65A3: $FF
    rst RST_38                                    ; $65A4: $FF
    rst RST_38                                    ; $65A5: $FF
    rst RST_38                                    ; $65A6: $FF
    rst RST_38                                    ; $65A7: $FF
    rst RST_38                                    ; $65A8: $FF
    rst RST_38                                    ; $65A9: $FF
    rst RST_38                                    ; $65AA: $FF
    rst RST_38                                    ; $65AB: $FF
    rst RST_38                                    ; $65AC: $FF
    rst RST_38                                    ; $65AD: $FF
    rst RST_38                                    ; $65AE: $FF
    rst RST_38                                    ; $65AF: $FF
    rst RST_38                                    ; $65B0: $FF
    rst RST_38                                    ; $65B1: $FF
    rst RST_38                                    ; $65B2: $FF
    rst RST_38                                    ; $65B3: $FF
    rst RST_38                                    ; $65B4: $FF
    rst RST_38                                    ; $65B5: $FF
    rst RST_38                                    ; $65B6: $FF
    rst RST_38                                    ; $65B7: $FF
    rst RST_38                                    ; $65B8: $FF
    rst RST_38                                    ; $65B9: $FF
    rst RST_38                                    ; $65BA: $FF
    rst RST_38                                    ; $65BB: $FF
    rst RST_38                                    ; $65BC: $FF
    rst RST_38                                    ; $65BD: $FF
    rst RST_38                                    ; $65BE: $FF
    rst RST_38                                    ; $65BF: $FF
    rst RST_38                                    ; $65C0: $FF
    rst RST_38                                    ; $65C1: $FF
    rst RST_38                                    ; $65C2: $FF
    rst RST_38                                    ; $65C3: $FF
    rst RST_38                                    ; $65C4: $FF
    rst RST_38                                    ; $65C5: $FF
    rst RST_38                                    ; $65C6: $FF
    rst RST_38                                    ; $65C7: $FF
    rst RST_38                                    ; $65C8: $FF
    rst RST_38                                    ; $65C9: $FF
    rst RST_38                                    ; $65CA: $FF
    rst RST_38                                    ; $65CB: $FF
    rst RST_38                                    ; $65CC: $FF
    rst RST_38                                    ; $65CD: $FF
    rst RST_38                                    ; $65CE: $FF
    rst RST_38                                    ; $65CF: $FF
    rst RST_38                                    ; $65D0: $FF
    rst RST_38                                    ; $65D1: $FF
    rst RST_38                                    ; $65D2: $FF
    rst RST_38                                    ; $65D3: $FF
    rst RST_38                                    ; $65D4: $FF
    rst RST_38                                    ; $65D5: $FF
    rst RST_38                                    ; $65D6: $FF
    rst RST_38                                    ; $65D7: $FF
    rst RST_38                                    ; $65D8: $FF
    rst RST_38                                    ; $65D9: $FF
    rst RST_38                                    ; $65DA: $FF
    rst RST_38                                    ; $65DB: $FF
    rst RST_38                                    ; $65DC: $FF
    rst RST_38                                    ; $65DD: $FF
    rst RST_38                                    ; $65DE: $FF
    rst RST_38                                    ; $65DF: $FF
    rst RST_38                                    ; $65E0: $FF
    rst RST_38                                    ; $65E1: $FF
    rst RST_38                                    ; $65E2: $FF
    rst RST_38                                    ; $65E3: $FF
    rst RST_38                                    ; $65E4: $FF
    rst RST_38                                    ; $65E5: $FF
    rst RST_38                                    ; $65E6: $FF
    rst RST_38                                    ; $65E7: $FF
    rst RST_38                                    ; $65E8: $FF
    rst RST_38                                    ; $65E9: $FF
    rst RST_38                                    ; $65EA: $FF
    rst RST_38                                    ; $65EB: $FF
    rst RST_38                                    ; $65EC: $FF
    rst RST_38                                    ; $65ED: $FF
    rst RST_38                                    ; $65EE: $FF
    rst RST_38                                    ; $65EF: $FF
    rst RST_38                                    ; $65F0: $FF
    rst RST_38                                    ; $65F1: $FF
    rst RST_38                                    ; $65F2: $FF
    rst RST_38                                    ; $65F3: $FF
    rst RST_38                                    ; $65F4: $FF
    rst RST_38                                    ; $65F5: $FF
    rst RST_38                                    ; $65F6: $FF
    rst RST_38                                    ; $65F7: $FF
    rst RST_38                                    ; $65F8: $FF
    rst RST_38                                    ; $65F9: $FF
    rst RST_38                                    ; $65FA: $FF
    rst RST_38                                    ; $65FB: $FF
    rst RST_38                                    ; $65FC: $FF
    rst RST_38                                    ; $65FD: $FF
    rst RST_38                                    ; $65FE: $FF
    rst RST_38                                    ; $65FF: $FF
    rst RST_38                                    ; $6600: $FF
    rst RST_38                                    ; $6601: $FF
    rst RST_38                                    ; $6602: $FF
    rst RST_38                                    ; $6603: $FF
    rst RST_38                                    ; $6604: $FF
    rst RST_38                                    ; $6605: $FF
    rst RST_38                                    ; $6606: $FF
    rst RST_38                                    ; $6607: $FF
    rst RST_38                                    ; $6608: $FF
    rst RST_38                                    ; $6609: $FF
    rst RST_38                                    ; $660A: $FF
    rst RST_38                                    ; $660B: $FF
    rst RST_38                                    ; $660C: $FF
    rst RST_38                                    ; $660D: $FF
    rst RST_38                                    ; $660E: $FF
    rst RST_38                                    ; $660F: $FF
    rst RST_38                                    ; $6610: $FF
    rst RST_38                                    ; $6611: $FF
    rst RST_38                                    ; $6612: $FF
    rst RST_38                                    ; $6613: $FF
    rst RST_38                                    ; $6614: $FF
    rst RST_38                                    ; $6615: $FF
    rst RST_38                                    ; $6616: $FF
    rst RST_38                                    ; $6617: $FF
    rst RST_38                                    ; $6618: $FF
    rst RST_38                                    ; $6619: $FF
    rst RST_38                                    ; $661A: $FF
    rst RST_38                                    ; $661B: $FF
    rst RST_38                                    ; $661C: $FF
    rst RST_38                                    ; $661D: $FF
    rst RST_38                                    ; $661E: $FF
    rst RST_38                                    ; $661F: $FF
    rst RST_38                                    ; $6620: $FF
    rst RST_38                                    ; $6621: $FF
    rst RST_38                                    ; $6622: $FF
    rst RST_38                                    ; $6623: $FF
    rst RST_38                                    ; $6624: $FF
    rst RST_38                                    ; $6625: $FF
    rst RST_38                                    ; $6626: $FF
    rst RST_38                                    ; $6627: $FF
    rst RST_38                                    ; $6628: $FF
    rst RST_38                                    ; $6629: $FF
    rst RST_38                                    ; $662A: $FF
    rst RST_38                                    ; $662B: $FF
    rst RST_38                                    ; $662C: $FF
    rst RST_38                                    ; $662D: $FF
    rst RST_38                                    ; $662E: $FF
    rst RST_38                                    ; $662F: $FF
    rst RST_38                                    ; $6630: $FF
    rst RST_38                                    ; $6631: $FF
    rst RST_38                                    ; $6632: $FF
    rst RST_38                                    ; $6633: $FF
    rst RST_38                                    ; $6634: $FF
    rst RST_38                                    ; $6635: $FF
    rst RST_38                                    ; $6636: $FF
    rst RST_38                                    ; $6637: $FF
    rst RST_38                                    ; $6638: $FF
    rst RST_38                                    ; $6639: $FF
    rst RST_38                                    ; $663A: $FF
    rst RST_38                                    ; $663B: $FF
    rst RST_38                                    ; $663C: $FF
    rst RST_38                                    ; $663D: $FF
    rst RST_38                                    ; $663E: $FF
    rst RST_38                                    ; $663F: $FF
    rst RST_38                                    ; $6640: $FF
    rst RST_38                                    ; $6641: $FF
    rst RST_38                                    ; $6642: $FF
    rst RST_38                                    ; $6643: $FF
    rst RST_38                                    ; $6644: $FF
    rst RST_38                                    ; $6645: $FF
    rst RST_38                                    ; $6646: $FF
    rst RST_38                                    ; $6647: $FF
    rst RST_38                                    ; $6648: $FF
    rst RST_38                                    ; $6649: $FF
    rst RST_38                                    ; $664A: $FF
    rst RST_38                                    ; $664B: $FF
    rst RST_38                                    ; $664C: $FF
    rst RST_38                                    ; $664D: $FF
    rst RST_38                                    ; $664E: $FF
    rst RST_38                                    ; $664F: $FF
    rst RST_38                                    ; $6650: $FF
    rst RST_38                                    ; $6651: $FF
    rst RST_38                                    ; $6652: $FF
    rst RST_38                                    ; $6653: $FF
    rst RST_38                                    ; $6654: $FF
    rst RST_38                                    ; $6655: $FF
    rst RST_38                                    ; $6656: $FF
    rst RST_38                                    ; $6657: $FF
    rst RST_38                                    ; $6658: $FF
    rst RST_38                                    ; $6659: $FF
    rst RST_38                                    ; $665A: $FF
    rst RST_38                                    ; $665B: $FF
    rst RST_38                                    ; $665C: $FF
    rst RST_38                                    ; $665D: $FF
    rst RST_38                                    ; $665E: $FF
    rst RST_38                                    ; $665F: $FF
    rst RST_38                                    ; $6660: $FF
    rst RST_38                                    ; $6661: $FF
    rst RST_38                                    ; $6662: $FF
    rst RST_38                                    ; $6663: $FF
    rst RST_38                                    ; $6664: $FF
    rst RST_38                                    ; $6665: $FF
    rst RST_38                                    ; $6666: $FF
    rst RST_38                                    ; $6667: $FF
    rst RST_38                                    ; $6668: $FF
    rst RST_38                                    ; $6669: $FF
    rst RST_38                                    ; $666A: $FF
    rst RST_38                                    ; $666B: $FF
    rst RST_38                                    ; $666C: $FF
    rst RST_38                                    ; $666D: $FF
    rst RST_38                                    ; $666E: $FF
    rst RST_38                                    ; $666F: $FF
    rst RST_38                                    ; $6670: $FF
    rst RST_38                                    ; $6671: $FF
    rst RST_38                                    ; $6672: $FF
    rst RST_38                                    ; $6673: $FF
    rst RST_38                                    ; $6674: $FF
    rst RST_38                                    ; $6675: $FF
    rst RST_38                                    ; $6676: $FF
    rst RST_38                                    ; $6677: $FF
    rst RST_38                                    ; $6678: $FF
    rst RST_38                                    ; $6679: $FF
    rst RST_38                                    ; $667A: $FF
    rst RST_38                                    ; $667B: $FF
    rst RST_38                                    ; $667C: $FF
    rst RST_38                                    ; $667D: $FF
    rst RST_38                                    ; $667E: $FF
    rst RST_38                                    ; $667F: $FF
    rst RST_38                                    ; $6680: $FF
    rst RST_38                                    ; $6681: $FF
    rst RST_38                                    ; $6682: $FF
    rst RST_38                                    ; $6683: $FF
    rst RST_38                                    ; $6684: $FF
    rst RST_38                                    ; $6685: $FF
    rst RST_38                                    ; $6686: $FF
    rst RST_38                                    ; $6687: $FF
    rst RST_38                                    ; $6688: $FF
    rst RST_38                                    ; $6689: $FF
    rst RST_38                                    ; $668A: $FF
    rst RST_38                                    ; $668B: $FF
    rst RST_38                                    ; $668C: $FF
    rst RST_38                                    ; $668D: $FF
    rst RST_38                                    ; $668E: $FF
    rst RST_38                                    ; $668F: $FF
    rst RST_38                                    ; $6690: $FF
    rst RST_38                                    ; $6691: $FF
    rst RST_38                                    ; $6692: $FF
    rst RST_38                                    ; $6693: $FF
    rst RST_38                                    ; $6694: $FF
    rst RST_38                                    ; $6695: $FF
    rst RST_38                                    ; $6696: $FF
    rst RST_38                                    ; $6697: $FF
    rst RST_38                                    ; $6698: $FF
    rst RST_38                                    ; $6699: $FF
    rst RST_38                                    ; $669A: $FF
    rst RST_38                                    ; $669B: $FF
    rst RST_38                                    ; $669C: $FF
    rst RST_38                                    ; $669D: $FF
    rst RST_38                                    ; $669E: $FF
    rst RST_38                                    ; $669F: $FF
    rst RST_38                                    ; $66A0: $FF
    rst RST_38                                    ; $66A1: $FF
    rst RST_38                                    ; $66A2: $FF
    rst RST_38                                    ; $66A3: $FF
    rst RST_38                                    ; $66A4: $FF
    rst RST_38                                    ; $66A5: $FF
    rst RST_38                                    ; $66A6: $FF
    rst RST_38                                    ; $66A7: $FF
    rst RST_38                                    ; $66A8: $FF
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
    rst RST_38                                    ; $66B8: $FF
    rst RST_38                                    ; $66B9: $FF
    rst RST_38                                    ; $66BA: $FF
    rst RST_38                                    ; $66BB: $FF
    rst RST_38                                    ; $66BC: $FF
    rst RST_38                                    ; $66BD: $FF
    rst RST_38                                    ; $66BE: $FF
    rst RST_38                                    ; $66BF: $FF
    rst RST_38                                    ; $66C0: $FF
    rst RST_38                                    ; $66C1: $FF
    rst RST_38                                    ; $66C2: $FF
    rst RST_38                                    ; $66C3: $FF
    rst RST_38                                    ; $66C4: $FF
    rst RST_38                                    ; $66C5: $FF
    rst RST_38                                    ; $66C6: $FF
    rst RST_38                                    ; $66C7: $FF
    rst RST_38                                    ; $66C8: $FF
    rst RST_38                                    ; $66C9: $FF
    rst RST_38                                    ; $66CA: $FF
    rst RST_38                                    ; $66CB: $FF
    rst RST_38                                    ; $66CC: $FF
    rst RST_38                                    ; $66CD: $FF
    rst RST_38                                    ; $66CE: $FF
    rst RST_38                                    ; $66CF: $FF
    rst RST_38                                    ; $66D0: $FF
    rst RST_38                                    ; $66D1: $FF
    rst RST_38                                    ; $66D2: $FF
    rst RST_38                                    ; $66D3: $FF
    rst RST_38                                    ; $66D4: $FF
    rst RST_38                                    ; $66D5: $FF
    rst RST_38                                    ; $66D6: $FF
    rst RST_38                                    ; $66D7: $FF
    rst RST_38                                    ; $66D8: $FF
    rst RST_38                                    ; $66D9: $FF
    rst RST_38                                    ; $66DA: $FF
    rst RST_38                                    ; $66DB: $FF
    rst RST_38                                    ; $66DC: $FF
    rst RST_38                                    ; $66DD: $FF
    rst RST_38                                    ; $66DE: $FF
    rst RST_38                                    ; $66DF: $FF
    rst RST_38                                    ; $66E0: $FF
    rst RST_38                                    ; $66E1: $FF
    rst RST_38                                    ; $66E2: $FF
    rst RST_38                                    ; $66E3: $FF
    rst RST_38                                    ; $66E4: $FF
    rst RST_38                                    ; $66E5: $FF
    rst RST_38                                    ; $66E6: $FF
    rst RST_38                                    ; $66E7: $FF
    rst RST_38                                    ; $66E8: $FF
    rst RST_38                                    ; $66E9: $FF
    rst RST_38                                    ; $66EA: $FF
    rst RST_38                                    ; $66EB: $FF
    rst RST_38                                    ; $66EC: $FF
    rst RST_38                                    ; $66ED: $FF
    rst RST_38                                    ; $66EE: $FF
    rst RST_38                                    ; $66EF: $FF
    rst RST_38                                    ; $66F0: $FF
    rst RST_38                                    ; $66F1: $FF
    rst RST_38                                    ; $66F2: $FF
    rst RST_38                                    ; $66F3: $FF
    rst RST_38                                    ; $66F4: $FF
    rst RST_38                                    ; $66F5: $FF
    rst RST_38                                    ; $66F6: $FF
    rst RST_38                                    ; $66F7: $FF
    rst RST_38                                    ; $66F8: $FF
    rst RST_38                                    ; $66F9: $FF
    rst RST_38                                    ; $66FA: $FF
    rst RST_38                                    ; $66FB: $FF
    rst RST_38                                    ; $66FC: $FF
    rst RST_38                                    ; $66FD: $FF
    rst RST_38                                    ; $66FE: $FF
    rst RST_38                                    ; $66FF: $FF
    rst RST_38                                    ; $6700: $FF
    rst RST_38                                    ; $6701: $FF
    rst RST_38                                    ; $6702: $FF
    rst RST_38                                    ; $6703: $FF
    rst RST_38                                    ; $6704: $FF
    rst RST_38                                    ; $6705: $FF
    rst RST_38                                    ; $6706: $FF
    rst RST_38                                    ; $6707: $FF
    rst RST_38                                    ; $6708: $FF
    rst RST_38                                    ; $6709: $FF
    rst RST_38                                    ; $670A: $FF
    rst RST_38                                    ; $670B: $FF
    rst RST_38                                    ; $670C: $FF
    rst RST_38                                    ; $670D: $FF
    rst RST_38                                    ; $670E: $FF
    rst RST_38                                    ; $670F: $FF
    rst RST_38                                    ; $6710: $FF
    rst RST_38                                    ; $6711: $FF
    rst RST_38                                    ; $6712: $FF
    rst RST_38                                    ; $6713: $FF
    rst RST_38                                    ; $6714: $FF
    rst RST_38                                    ; $6715: $FF
    rst RST_38                                    ; $6716: $FF
    rst RST_38                                    ; $6717: $FF
    rst RST_38                                    ; $6718: $FF
    rst RST_38                                    ; $6719: $FF
    rst RST_38                                    ; $671A: $FF
    rst RST_38                                    ; $671B: $FF
    rst RST_38                                    ; $671C: $FF
    rst RST_38                                    ; $671D: $FF
    rst RST_38                                    ; $671E: $FF
    rst RST_38                                    ; $671F: $FF
    rst RST_38                                    ; $6720: $FF
    rst RST_38                                    ; $6721: $FF
    rst RST_38                                    ; $6722: $FF
    rst RST_38                                    ; $6723: $FF
    rst RST_38                                    ; $6724: $FF
    rst RST_38                                    ; $6725: $FF
    rst RST_38                                    ; $6726: $FF
    rst RST_38                                    ; $6727: $FF
    rst RST_38                                    ; $6728: $FF
    rst RST_38                                    ; $6729: $FF
    rst RST_38                                    ; $672A: $FF
    rst RST_38                                    ; $672B: $FF
    rst RST_38                                    ; $672C: $FF
    rst RST_38                                    ; $672D: $FF
    rst RST_38                                    ; $672E: $FF
    rst RST_38                                    ; $672F: $FF
    rst RST_38                                    ; $6730: $FF
    rst RST_38                                    ; $6731: $FF
    rst RST_38                                    ; $6732: $FF
    rst RST_38                                    ; $6733: $FF
    rst RST_38                                    ; $6734: $FF
    rst RST_38                                    ; $6735: $FF
    rst RST_38                                    ; $6736: $FF
    rst RST_38                                    ; $6737: $FF
    rst RST_38                                    ; $6738: $FF
    rst RST_38                                    ; $6739: $FF
    rst RST_38                                    ; $673A: $FF
    rst RST_38                                    ; $673B: $FF
    rst RST_38                                    ; $673C: $FF
    rst RST_38                                    ; $673D: $FF
    rst RST_38                                    ; $673E: $FF
    rst RST_38                                    ; $673F: $FF
    rst RST_38                                    ; $6740: $FF
    rst RST_38                                    ; $6741: $FF
    rst RST_38                                    ; $6742: $FF
    rst RST_38                                    ; $6743: $FF
    rst RST_38                                    ; $6744: $FF
    rst RST_38                                    ; $6745: $FF
    rst RST_38                                    ; $6746: $FF
    rst RST_38                                    ; $6747: $FF
    rst RST_38                                    ; $6748: $FF
    rst RST_38                                    ; $6749: $FF
    rst RST_38                                    ; $674A: $FF
    rst RST_38                                    ; $674B: $FF
    rst RST_38                                    ; $674C: $FF
    rst RST_38                                    ; $674D: $FF
    rst RST_38                                    ; $674E: $FF
    rst RST_38                                    ; $674F: $FF
    rst RST_38                                    ; $6750: $FF
    rst RST_38                                    ; $6751: $FF
    rst RST_38                                    ; $6752: $FF
    rst RST_38                                    ; $6753: $FF
    rst RST_38                                    ; $6754: $FF
    rst RST_38                                    ; $6755: $FF
    rst RST_38                                    ; $6756: $FF
    rst RST_38                                    ; $6757: $FF
    rst RST_38                                    ; $6758: $FF
    rst RST_38                                    ; $6759: $FF
    rst RST_38                                    ; $675A: $FF
    rst RST_38                                    ; $675B: $FF
    rst RST_38                                    ; $675C: $FF
    rst RST_38                                    ; $675D: $FF
    rst RST_38                                    ; $675E: $FF
    rst RST_38                                    ; $675F: $FF
    rst RST_38                                    ; $6760: $FF
    rst RST_38                                    ; $6761: $FF
    rst RST_38                                    ; $6762: $FF
    rst RST_38                                    ; $6763: $FF
    rst RST_38                                    ; $6764: $FF
    rst RST_38                                    ; $6765: $FF
    rst RST_38                                    ; $6766: $FF
    rst RST_38                                    ; $6767: $FF
    rst RST_38                                    ; $6768: $FF
    rst RST_38                                    ; $6769: $FF
    rst RST_38                                    ; $676A: $FF
    rst RST_38                                    ; $676B: $FF
    rst RST_38                                    ; $676C: $FF
    rst RST_38                                    ; $676D: $FF
    rst RST_38                                    ; $676E: $FF
    rst RST_38                                    ; $676F: $FF
    rst RST_38                                    ; $6770: $FF
    rst RST_38                                    ; $6771: $FF
    rst RST_38                                    ; $6772: $FF
    rst RST_38                                    ; $6773: $FF
    rst RST_38                                    ; $6774: $FF
    rst RST_38                                    ; $6775: $FF
    rst RST_38                                    ; $6776: $FF
    rst RST_38                                    ; $6777: $FF
    rst RST_38                                    ; $6778: $FF
    rst RST_38                                    ; $6779: $FF
    rst RST_38                                    ; $677A: $FF
    rst RST_38                                    ; $677B: $FF
    rst RST_38                                    ; $677C: $FF
    rst RST_38                                    ; $677D: $FF
    rst RST_38                                    ; $677E: $FF
    rst RST_38                                    ; $677F: $FF
    rst RST_38                                    ; $6780: $FF
    rst RST_38                                    ; $6781: $FF
    rst RST_38                                    ; $6782: $FF
    rst RST_38                                    ; $6783: $FF
    rst RST_38                                    ; $6784: $FF
    rst RST_38                                    ; $6785: $FF
    rst RST_38                                    ; $6786: $FF
    rst RST_38                                    ; $6787: $FF
    rst RST_38                                    ; $6788: $FF
    rst RST_38                                    ; $6789: $FF
    rst RST_38                                    ; $678A: $FF
    rst RST_38                                    ; $678B: $FF
    rst RST_38                                    ; $678C: $FF
    rst RST_38                                    ; $678D: $FF
    rst RST_38                                    ; $678E: $FF
    rst RST_38                                    ; $678F: $FF
    rst RST_38                                    ; $6790: $FF
    rst RST_38                                    ; $6791: $FF
    rst RST_38                                    ; $6792: $FF
    rst RST_38                                    ; $6793: $FF
    rst RST_38                                    ; $6794: $FF
    rst RST_38                                    ; $6795: $FF
    rst RST_38                                    ; $6796: $FF
    rst RST_38                                    ; $6797: $FF
    rst RST_38                                    ; $6798: $FF
    rst RST_38                                    ; $6799: $FF
    rst RST_38                                    ; $679A: $FF
    rst RST_38                                    ; $679B: $FF
    rst RST_38                                    ; $679C: $FF
    rst RST_38                                    ; $679D: $FF
    rst RST_38                                    ; $679E: $FF
    rst RST_38                                    ; $679F: $FF
    rst RST_38                                    ; $67A0: $FF
    rst RST_38                                    ; $67A1: $FF
    rst RST_38                                    ; $67A2: $FF
    rst RST_38                                    ; $67A3: $FF
    rst RST_38                                    ; $67A4: $FF
    rst RST_38                                    ; $67A5: $FF
    rst RST_38                                    ; $67A6: $FF
    rst RST_38                                    ; $67A7: $FF
    rst RST_38                                    ; $67A8: $FF
    rst RST_38                                    ; $67A9: $FF
    rst RST_38                                    ; $67AA: $FF
    rst RST_38                                    ; $67AB: $FF
    rst RST_38                                    ; $67AC: $FF
    rst RST_38                                    ; $67AD: $FF
    rst RST_38                                    ; $67AE: $FF
    rst RST_38                                    ; $67AF: $FF
    rst RST_38                                    ; $67B0: $FF
    rst RST_38                                    ; $67B1: $FF
    rst RST_38                                    ; $67B2: $FF
    rst RST_38                                    ; $67B3: $FF
    rst RST_38                                    ; $67B4: $FF
    rst RST_38                                    ; $67B5: $FF
    rst RST_38                                    ; $67B6: $FF
    rst RST_38                                    ; $67B7: $FF
    rst RST_38                                    ; $67B8: $FF
    rst RST_38                                    ; $67B9: $FF
    rst RST_38                                    ; $67BA: $FF
    rst RST_38                                    ; $67BB: $FF
    rst RST_38                                    ; $67BC: $FF
    rst RST_38                                    ; $67BD: $FF
    rst RST_38                                    ; $67BE: $FF
    rst RST_38                                    ; $67BF: $FF
    rst RST_38                                    ; $67C0: $FF
    rst RST_38                                    ; $67C1: $FF
    rst RST_38                                    ; $67C2: $FF
    rst RST_38                                    ; $67C3: $FF
    rst RST_38                                    ; $67C4: $FF
    rst RST_38                                    ; $67C5: $FF
    rst RST_38                                    ; $67C6: $FF
    rst RST_38                                    ; $67C7: $FF
    rst RST_38                                    ; $67C8: $FF
    rst RST_38                                    ; $67C9: $FF
    rst RST_38                                    ; $67CA: $FF
    rst RST_38                                    ; $67CB: $FF
    rst RST_38                                    ; $67CC: $FF
    rst RST_38                                    ; $67CD: $FF
    rst RST_38                                    ; $67CE: $FF
    rst RST_38                                    ; $67CF: $FF
    rst RST_38                                    ; $67D0: $FF
    rst RST_38                                    ; $67D1: $FF
    rst RST_38                                    ; $67D2: $FF
    rst RST_38                                    ; $67D3: $FF
    rst RST_38                                    ; $67D4: $FF
    rst RST_38                                    ; $67D5: $FF
    rst RST_38                                    ; $67D6: $FF
    rst RST_38                                    ; $67D7: $FF
    rst RST_38                                    ; $67D8: $FF
    rst RST_38                                    ; $67D9: $FF
    rst RST_38                                    ; $67DA: $FF
    rst RST_38                                    ; $67DB: $FF
    rst RST_38                                    ; $67DC: $FF
    rst RST_38                                    ; $67DD: $FF
    rst RST_38                                    ; $67DE: $FF
    rst RST_38                                    ; $67DF: $FF
    rst RST_38                                    ; $67E0: $FF
    rst RST_38                                    ; $67E1: $FF
    rst RST_38                                    ; $67E2: $FF
    rst RST_38                                    ; $67E3: $FF
    rst RST_38                                    ; $67E4: $FF
    rst RST_38                                    ; $67E5: $FF
    rst RST_38                                    ; $67E6: $FF
    rst RST_38                                    ; $67E7: $FF
    rst RST_38                                    ; $67E8: $FF
    rst RST_38                                    ; $67E9: $FF
    rst RST_38                                    ; $67EA: $FF
    rst RST_38                                    ; $67EB: $FF
    rst RST_38                                    ; $67EC: $FF
    rst RST_38                                    ; $67ED: $FF
    rst RST_38                                    ; $67EE: $FF
    rst RST_38                                    ; $67EF: $FF
    rst RST_38                                    ; $67F0: $FF
    rst RST_38                                    ; $67F1: $FF
    rst RST_38                                    ; $67F2: $FF
    rst RST_38                                    ; $67F3: $FF
    rst RST_38                                    ; $67F4: $FF
    rst RST_38                                    ; $67F5: $FF
    rst RST_38                                    ; $67F6: $FF
    rst RST_38                                    ; $67F7: $FF
    rst RST_38                                    ; $67F8: $FF
    rst RST_38                                    ; $67F9: $FF
    rst RST_38                                    ; $67FA: $FF
    rst RST_38                                    ; $67FB: $FF
    rst RST_38                                    ; $67FC: $FF
    rst RST_38                                    ; $67FD: $FF
    rst RST_38                                    ; $67FE: $FF
    rst RST_38                                    ; $67FF: $FF
    rst RST_38                                    ; $6800: $FF
    rst RST_38                                    ; $6801: $FF
    rst RST_38                                    ; $6802: $FF
    rst RST_38                                    ; $6803: $FF
    rst RST_38                                    ; $6804: $FF
    rst RST_38                                    ; $6805: $FF
    rst RST_38                                    ; $6806: $FF
    rst RST_38                                    ; $6807: $FF
    rst RST_38                                    ; $6808: $FF
    rst RST_38                                    ; $6809: $FF
    rst RST_38                                    ; $680A: $FF
    rst RST_38                                    ; $680B: $FF
    rst RST_38                                    ; $680C: $FF
    rst RST_38                                    ; $680D: $FF
    rst RST_38                                    ; $680E: $FF
    rst RST_38                                    ; $680F: $FF
    rst RST_38                                    ; $6810: $FF
    rst RST_38                                    ; $6811: $FF
    rst RST_38                                    ; $6812: $FF
    rst RST_38                                    ; $6813: $FF
    rst RST_38                                    ; $6814: $FF
    rst RST_38                                    ; $6815: $FF
    rst RST_38                                    ; $6816: $FF
    rst RST_38                                    ; $6817: $FF
    rst RST_38                                    ; $6818: $FF
    rst RST_38                                    ; $6819: $FF
    rst RST_38                                    ; $681A: $FF
    rst RST_38                                    ; $681B: $FF
    rst RST_38                                    ; $681C: $FF
    rst RST_38                                    ; $681D: $FF
    rst RST_38                                    ; $681E: $FF
    rst RST_38                                    ; $681F: $FF
    rst RST_38                                    ; $6820: $FF
    rst RST_38                                    ; $6821: $FF
    rst RST_38                                    ; $6822: $FF
    rst RST_38                                    ; $6823: $FF
    rst RST_38                                    ; $6824: $FF
    rst RST_38                                    ; $6825: $FF
    rst RST_38                                    ; $6826: $FF
    rst RST_38                                    ; $6827: $FF
    rst RST_38                                    ; $6828: $FF
    rst RST_38                                    ; $6829: $FF
    rst RST_38                                    ; $682A: $FF
    rst RST_38                                    ; $682B: $FF
    rst RST_38                                    ; $682C: $FF
    rst RST_38                                    ; $682D: $FF
    rst RST_38                                    ; $682E: $FF
    rst RST_38                                    ; $682F: $FF
    rst RST_38                                    ; $6830: $FF
    rst RST_38                                    ; $6831: $FF
    rst RST_38                                    ; $6832: $FF
    rst RST_38                                    ; $6833: $FF
    rst RST_38                                    ; $6834: $FF
    rst RST_38                                    ; $6835: $FF
    rst RST_38                                    ; $6836: $FF
    rst RST_38                                    ; $6837: $FF
    rst RST_38                                    ; $6838: $FF
    rst RST_38                                    ; $6839: $FF
    rst RST_38                                    ; $683A: $FF
    rst RST_38                                    ; $683B: $FF
    rst RST_38                                    ; $683C: $FF
    rst RST_38                                    ; $683D: $FF
    rst RST_38                                    ; $683E: $FF
    rst RST_38                                    ; $683F: $FF
    rst RST_38                                    ; $6840: $FF
    rst RST_38                                    ; $6841: $FF
    rst RST_38                                    ; $6842: $FF
    rst RST_38                                    ; $6843: $FF
    rst RST_38                                    ; $6844: $FF
    rst RST_38                                    ; $6845: $FF
    rst RST_38                                    ; $6846: $FF
    rst RST_38                                    ; $6847: $FF
    rst RST_38                                    ; $6848: $FF
    rst RST_38                                    ; $6849: $FF
    rst RST_38                                    ; $684A: $FF
    rst RST_38                                    ; $684B: $FF
    rst RST_38                                    ; $684C: $FF
    rst RST_38                                    ; $684D: $FF
    rst RST_38                                    ; $684E: $FF
    rst RST_38                                    ; $684F: $FF
    rst RST_38                                    ; $6850: $FF
    rst RST_38                                    ; $6851: $FF
    rst RST_38                                    ; $6852: $FF
    rst RST_38                                    ; $6853: $FF
    rst RST_38                                    ; $6854: $FF
    rst RST_38                                    ; $6855: $FF
    rst RST_38                                    ; $6856: $FF
    rst RST_38                                    ; $6857: $FF
    rst RST_38                                    ; $6858: $FF
    rst RST_38                                    ; $6859: $FF
    rst RST_38                                    ; $685A: $FF
    rst RST_38                                    ; $685B: $FF
    rst RST_38                                    ; $685C: $FF
    rst RST_38                                    ; $685D: $FF
    rst RST_38                                    ; $685E: $FF
    rst RST_38                                    ; $685F: $FF
    rst RST_38                                    ; $6860: $FF
    rst RST_38                                    ; $6861: $FF
    rst RST_38                                    ; $6862: $FF
    rst RST_38                                    ; $6863: $FF
    rst RST_38                                    ; $6864: $FF
    rst RST_38                                    ; $6865: $FF
    rst RST_38                                    ; $6866: $FF
    rst RST_38                                    ; $6867: $FF
    rst RST_38                                    ; $6868: $FF
    rst RST_38                                    ; $6869: $FF
    rst RST_38                                    ; $686A: $FF
    rst RST_38                                    ; $686B: $FF
    rst RST_38                                    ; $686C: $FF
    rst RST_38                                    ; $686D: $FF
    rst RST_38                                    ; $686E: $FF
    rst RST_38                                    ; $686F: $FF
    rst RST_38                                    ; $6870: $FF
    rst RST_38                                    ; $6871: $FF
    rst RST_38                                    ; $6872: $FF
    rst RST_38                                    ; $6873: $FF
    rst RST_38                                    ; $6874: $FF
    rst RST_38                                    ; $6875: $FF
    rst RST_38                                    ; $6876: $FF
    rst RST_38                                    ; $6877: $FF
    rst RST_38                                    ; $6878: $FF
    rst RST_38                                    ; $6879: $FF
    rst RST_38                                    ; $687A: $FF
    rst RST_38                                    ; $687B: $FF
    rst RST_38                                    ; $687C: $FF
    rst RST_38                                    ; $687D: $FF
    rst RST_38                                    ; $687E: $FF
    rst RST_38                                    ; $687F: $FF
    rst RST_38                                    ; $6880: $FF
    rst RST_38                                    ; $6881: $FF
    rst RST_38                                    ; $6882: $FF
    rst RST_38                                    ; $6883: $FF
    rst RST_38                                    ; $6884: $FF
    rst RST_38                                    ; $6885: $FF
    rst RST_38                                    ; $6886: $FF
    rst RST_38                                    ; $6887: $FF
    rst RST_38                                    ; $6888: $FF
    rst RST_38                                    ; $6889: $FF
    rst RST_38                                    ; $688A: $FF
    rst RST_38                                    ; $688B: $FF
    rst RST_38                                    ; $688C: $FF
    rst RST_38                                    ; $688D: $FF
    rst RST_38                                    ; $688E: $FF
    rst RST_38                                    ; $688F: $FF
    rst RST_38                                    ; $6890: $FF
    rst RST_38                                    ; $6891: $FF
    rst RST_38                                    ; $6892: $FF
    rst RST_38                                    ; $6893: $FF
    rst RST_38                                    ; $6894: $FF
    rst RST_38                                    ; $6895: $FF
    rst RST_38                                    ; $6896: $FF
    rst RST_38                                    ; $6897: $FF
    rst RST_38                                    ; $6898: $FF
    rst RST_38                                    ; $6899: $FF
    rst RST_38                                    ; $689A: $FF
    rst RST_38                                    ; $689B: $FF
    rst RST_38                                    ; $689C: $FF
    rst RST_38                                    ; $689D: $FF
    rst RST_38                                    ; $689E: $FF
    rst RST_38                                    ; $689F: $FF
    rst RST_38                                    ; $68A0: $FF
    rst RST_38                                    ; $68A1: $FF
    rst RST_38                                    ; $68A2: $FF
    rst RST_38                                    ; $68A3: $FF
    rst RST_38                                    ; $68A4: $FF
    rst RST_38                                    ; $68A5: $FF
    rst RST_38                                    ; $68A6: $FF
    rst RST_38                                    ; $68A7: $FF
    rst RST_38                                    ; $68A8: $FF
    rst RST_38                                    ; $68A9: $FF
    rst RST_38                                    ; $68AA: $FF
    rst RST_38                                    ; $68AB: $FF
    rst RST_38                                    ; $68AC: $FF
    rst RST_38                                    ; $68AD: $FF
    rst RST_38                                    ; $68AE: $FF
    rst RST_38                                    ; $68AF: $FF
    rst RST_38                                    ; $68B0: $FF
    rst RST_38                                    ; $68B1: $FF
    rst RST_38                                    ; $68B2: $FF
    rst RST_38                                    ; $68B3: $FF
    rst RST_38                                    ; $68B4: $FF
    rst RST_38                                    ; $68B5: $FF
    rst RST_38                                    ; $68B6: $FF
    rst RST_38                                    ; $68B7: $FF
    rst RST_38                                    ; $68B8: $FF
    rst RST_38                                    ; $68B9: $FF
    rst RST_38                                    ; $68BA: $FF
    rst RST_38                                    ; $68BB: $FF
    rst RST_38                                    ; $68BC: $FF
    rst RST_38                                    ; $68BD: $FF
    rst RST_38                                    ; $68BE: $FF
    rst RST_38                                    ; $68BF: $FF
    rst RST_38                                    ; $68C0: $FF
    rst RST_38                                    ; $68C1: $FF
    rst RST_38                                    ; $68C2: $FF
    rst RST_38                                    ; $68C3: $FF
    rst RST_38                                    ; $68C4: $FF
    rst RST_38                                    ; $68C5: $FF
    rst RST_38                                    ; $68C6: $FF
    rst RST_38                                    ; $68C7: $FF
    rst RST_38                                    ; $68C8: $FF
    rst RST_38                                    ; $68C9: $FF
    rst RST_38                                    ; $68CA: $FF
    rst RST_38                                    ; $68CB: $FF
    rst RST_38                                    ; $68CC: $FF
    rst RST_38                                    ; $68CD: $FF
    rst RST_38                                    ; $68CE: $FF
    rst RST_38                                    ; $68CF: $FF
    rst RST_38                                    ; $68D0: $FF
    rst RST_38                                    ; $68D1: $FF
    rst RST_38                                    ; $68D2: $FF
    rst RST_38                                    ; $68D3: $FF
    rst RST_38                                    ; $68D4: $FF
    rst RST_38                                    ; $68D5: $FF
    rst RST_38                                    ; $68D6: $FF
    rst RST_38                                    ; $68D7: $FF
    rst RST_38                                    ; $68D8: $FF
    rst RST_38                                    ; $68D9: $FF
    rst RST_38                                    ; $68DA: $FF
    rst RST_38                                    ; $68DB: $FF
    rst RST_38                                    ; $68DC: $FF
    rst RST_38                                    ; $68DD: $FF
    rst RST_38                                    ; $68DE: $FF
    rst RST_38                                    ; $68DF: $FF
    rst RST_38                                    ; $68E0: $FF
    rst RST_38                                    ; $68E1: $FF
    rst RST_38                                    ; $68E2: $FF
    rst RST_38                                    ; $68E3: $FF
    rst RST_38                                    ; $68E4: $FF
    rst RST_38                                    ; $68E5: $FF
    rst RST_38                                    ; $68E6: $FF
    rst RST_38                                    ; $68E7: $FF
    rst RST_38                                    ; $68E8: $FF
    rst RST_38                                    ; $68E9: $FF
    rst RST_38                                    ; $68EA: $FF
    rst RST_38                                    ; $68EB: $FF
    rst RST_38                                    ; $68EC: $FF
    rst RST_38                                    ; $68ED: $FF
    rst RST_38                                    ; $68EE: $FF
    rst RST_38                                    ; $68EF: $FF
    rst RST_38                                    ; $68F0: $FF
    rst RST_38                                    ; $68F1: $FF
    rst RST_38                                    ; $68F2: $FF
    rst RST_38                                    ; $68F3: $FF
    rst RST_38                                    ; $68F4: $FF
    rst RST_38                                    ; $68F5: $FF
    rst RST_38                                    ; $68F6: $FF
    rst RST_38                                    ; $68F7: $FF
    rst RST_38                                    ; $68F8: $FF
    rst RST_38                                    ; $68F9: $FF
    rst RST_38                                    ; $68FA: $FF
    rst RST_38                                    ; $68FB: $FF
    rst RST_38                                    ; $68FC: $FF
    rst RST_38                                    ; $68FD: $FF
    rst RST_38                                    ; $68FE: $FF
    rst RST_38                                    ; $68FF: $FF
    rst RST_38                                    ; $6900: $FF
    rst RST_38                                    ; $6901: $FF
    rst RST_38                                    ; $6902: $FF
    rst RST_38                                    ; $6903: $FF
    rst RST_38                                    ; $6904: $FF
    rst RST_38                                    ; $6905: $FF
    rst RST_38                                    ; $6906: $FF
    rst RST_38                                    ; $6907: $FF
    rst RST_38                                    ; $6908: $FF
    rst RST_38                                    ; $6909: $FF
    rst RST_38                                    ; $690A: $FF
    rst RST_38                                    ; $690B: $FF
    rst RST_38                                    ; $690C: $FF
    rst RST_38                                    ; $690D: $FF
    rst RST_38                                    ; $690E: $FF
    rst RST_38                                    ; $690F: $FF
    rst RST_38                                    ; $6910: $FF
    rst RST_38                                    ; $6911: $FF
    rst RST_38                                    ; $6912: $FF
    rst RST_38                                    ; $6913: $FF
    rst RST_38                                    ; $6914: $FF
    rst RST_38                                    ; $6915: $FF
    rst RST_38                                    ; $6916: $FF
    rst RST_38                                    ; $6917: $FF
    rst RST_38                                    ; $6918: $FF
    rst RST_38                                    ; $6919: $FF
    rst RST_38                                    ; $691A: $FF
    rst RST_38                                    ; $691B: $FF
    rst RST_38                                    ; $691C: $FF
    rst RST_38                                    ; $691D: $FF
    rst RST_38                                    ; $691E: $FF
    rst RST_38                                    ; $691F: $FF
    rst RST_38                                    ; $6920: $FF
    rst RST_38                                    ; $6921: $FF
    rst RST_38                                    ; $6922: $FF
    rst RST_38                                    ; $6923: $FF
    rst RST_38                                    ; $6924: $FF
    rst RST_38                                    ; $6925: $FF
    rst RST_38                                    ; $6926: $FF
    rst RST_38                                    ; $6927: $FF
    rst RST_38                                    ; $6928: $FF
    rst RST_38                                    ; $6929: $FF
    rst RST_38                                    ; $692A: $FF
    rst RST_38                                    ; $692B: $FF
    rst RST_38                                    ; $692C: $FF
    rst RST_38                                    ; $692D: $FF
    rst RST_38                                    ; $692E: $FF
    rst RST_38                                    ; $692F: $FF
    rst RST_38                                    ; $6930: $FF
    rst RST_38                                    ; $6931: $FF
    rst RST_38                                    ; $6932: $FF
    rst RST_38                                    ; $6933: $FF
    rst RST_38                                    ; $6934: $FF
    rst RST_38                                    ; $6935: $FF
    rst RST_38                                    ; $6936: $FF
    rst RST_38                                    ; $6937: $FF
    rst RST_38                                    ; $6938: $FF
    rst RST_38                                    ; $6939: $FF
    rst RST_38                                    ; $693A: $FF
    rst RST_38                                    ; $693B: $FF
    rst RST_38                                    ; $693C: $FF
    rst RST_38                                    ; $693D: $FF
    rst RST_38                                    ; $693E: $FF
    rst RST_38                                    ; $693F: $FF
    rst RST_38                                    ; $6940: $FF
    rst RST_38                                    ; $6941: $FF
    rst RST_38                                    ; $6942: $FF
    rst RST_38                                    ; $6943: $FF
    rst RST_38                                    ; $6944: $FF
    rst RST_38                                    ; $6945: $FF
    rst RST_38                                    ; $6946: $FF
    rst RST_38                                    ; $6947: $FF
    rst RST_38                                    ; $6948: $FF
    rst RST_38                                    ; $6949: $FF
    rst RST_38                                    ; $694A: $FF
    rst RST_38                                    ; $694B: $FF
    rst RST_38                                    ; $694C: $FF
    rst RST_38                                    ; $694D: $FF
    rst RST_38                                    ; $694E: $FF
    rst RST_38                                    ; $694F: $FF
    rst RST_38                                    ; $6950: $FF
    rst RST_38                                    ; $6951: $FF
    rst RST_38                                    ; $6952: $FF
    rst RST_38                                    ; $6953: $FF
    rst RST_38                                    ; $6954: $FF
    rst RST_38                                    ; $6955: $FF
    rst RST_38                                    ; $6956: $FF
    rst RST_38                                    ; $6957: $FF
    rst RST_38                                    ; $6958: $FF
    rst RST_38                                    ; $6959: $FF
    rst RST_38                                    ; $695A: $FF
    rst RST_38                                    ; $695B: $FF
    rst RST_38                                    ; $695C: $FF
    rst RST_38                                    ; $695D: $FF
    rst RST_38                                    ; $695E: $FF
    rst RST_38                                    ; $695F: $FF
    rst RST_38                                    ; $6960: $FF
    rst RST_38                                    ; $6961: $FF
    rst RST_38                                    ; $6962: $FF
    rst RST_38                                    ; $6963: $FF
    rst RST_38                                    ; $6964: $FF
    rst RST_38                                    ; $6965: $FF
    rst RST_38                                    ; $6966: $FF
    rst RST_38                                    ; $6967: $FF
    rst RST_38                                    ; $6968: $FF
    rst RST_38                                    ; $6969: $FF
    rst RST_38                                    ; $696A: $FF
    rst RST_38                                    ; $696B: $FF
    rst RST_38                                    ; $696C: $FF
    rst RST_38                                    ; $696D: $FF
    rst RST_38                                    ; $696E: $FF
    rst RST_38                                    ; $696F: $FF
    rst RST_38                                    ; $6970: $FF
    rst RST_38                                    ; $6971: $FF
    rst RST_38                                    ; $6972: $FF
    rst RST_38                                    ; $6973: $FF
    rst RST_38                                    ; $6974: $FF
    rst RST_38                                    ; $6975: $FF
    rst RST_38                                    ; $6976: $FF
    rst RST_38                                    ; $6977: $FF
    rst RST_38                                    ; $6978: $FF
    rst RST_38                                    ; $6979: $FF
    rst RST_38                                    ; $697A: $FF
    rst RST_38                                    ; $697B: $FF
    rst RST_38                                    ; $697C: $FF
    rst RST_38                                    ; $697D: $FF
    rst RST_38                                    ; $697E: $FF
    rst RST_38                                    ; $697F: $FF
    rst RST_38                                    ; $6980: $FF
    rst RST_38                                    ; $6981: $FF
    rst RST_38                                    ; $6982: $FF
    rst RST_38                                    ; $6983: $FF
    rst RST_38                                    ; $6984: $FF
    rst RST_38                                    ; $6985: $FF
    rst RST_38                                    ; $6986: $FF
    rst RST_38                                    ; $6987: $FF
    rst RST_38                                    ; $6988: $FF
    rst RST_38                                    ; $6989: $FF
    rst RST_38                                    ; $698A: $FF
    rst RST_38                                    ; $698B: $FF
    rst RST_38                                    ; $698C: $FF
    rst RST_38                                    ; $698D: $FF
    rst RST_38                                    ; $698E: $FF
    rst RST_38                                    ; $698F: $FF
    rst RST_38                                    ; $6990: $FF
    rst RST_38                                    ; $6991: $FF
    rst RST_38                                    ; $6992: $FF
    rst RST_38                                    ; $6993: $FF
    rst RST_38                                    ; $6994: $FF
    rst RST_38                                    ; $6995: $FF
    rst RST_38                                    ; $6996: $FF
    rst RST_38                                    ; $6997: $FF
    rst RST_38                                    ; $6998: $FF
    rst RST_38                                    ; $6999: $FF
    rst RST_38                                    ; $699A: $FF
    rst RST_38                                    ; $699B: $FF
    rst RST_38                                    ; $699C: $FF
    rst RST_38                                    ; $699D: $FF
    rst RST_38                                    ; $699E: $FF
    rst RST_38                                    ; $699F: $FF
    rst RST_38                                    ; $69A0: $FF
    rst RST_38                                    ; $69A1: $FF
    rst RST_38                                    ; $69A2: $FF
    rst RST_38                                    ; $69A3: $FF
    rst RST_38                                    ; $69A4: $FF
    rst RST_38                                    ; $69A5: $FF
    rst RST_38                                    ; $69A6: $FF
    rst RST_38                                    ; $69A7: $FF
    rst RST_38                                    ; $69A8: $FF
    rst RST_38                                    ; $69A9: $FF
    rst RST_38                                    ; $69AA: $FF
    rst RST_38                                    ; $69AB: $FF
    rst RST_38                                    ; $69AC: $FF
    rst RST_38                                    ; $69AD: $FF
    rst RST_38                                    ; $69AE: $FF
    rst RST_38                                    ; $69AF: $FF
    rst RST_38                                    ; $69B0: $FF
    rst RST_38                                    ; $69B1: $FF
    rst RST_38                                    ; $69B2: $FF
    rst RST_38                                    ; $69B3: $FF
    rst RST_38                                    ; $69B4: $FF
    rst RST_38                                    ; $69B5: $FF
    rst RST_38                                    ; $69B6: $FF
    rst RST_38                                    ; $69B7: $FF
    rst RST_38                                    ; $69B8: $FF
    rst RST_38                                    ; $69B9: $FF
    rst RST_38                                    ; $69BA: $FF
    rst RST_38                                    ; $69BB: $FF
    rst RST_38                                    ; $69BC: $FF
    rst RST_38                                    ; $69BD: $FF
    rst RST_38                                    ; $69BE: $FF
    rst RST_38                                    ; $69BF: $FF
    rst RST_38                                    ; $69C0: $FF
    rst RST_38                                    ; $69C1: $FF
    rst RST_38                                    ; $69C2: $FF
    rst RST_38                                    ; $69C3: $FF
    rst RST_38                                    ; $69C4: $FF
    rst RST_38                                    ; $69C5: $FF
    rst RST_38                                    ; $69C6: $FF
    rst RST_38                                    ; $69C7: $FF
    rst RST_38                                    ; $69C8: $FF
    rst RST_38                                    ; $69C9: $FF
    rst RST_38                                    ; $69CA: $FF
    rst RST_38                                    ; $69CB: $FF
    rst RST_38                                    ; $69CC: $FF
    rst RST_38                                    ; $69CD: $FF
    rst RST_38                                    ; $69CE: $FF
    rst RST_38                                    ; $69CF: $FF
    rst RST_38                                    ; $69D0: $FF
    rst RST_38                                    ; $69D1: $FF
    rst RST_38                                    ; $69D2: $FF
    rst RST_38                                    ; $69D3: $FF
    rst RST_38                                    ; $69D4: $FF
    rst RST_38                                    ; $69D5: $FF
    rst RST_38                                    ; $69D6: $FF
    rst RST_38                                    ; $69D7: $FF
    rst RST_38                                    ; $69D8: $FF
    rst RST_38                                    ; $69D9: $FF
    rst RST_38                                    ; $69DA: $FF
    rst RST_38                                    ; $69DB: $FF
    rst RST_38                                    ; $69DC: $FF
    rst RST_38                                    ; $69DD: $FF
    rst RST_38                                    ; $69DE: $FF
    rst RST_38                                    ; $69DF: $FF
    rst RST_38                                    ; $69E0: $FF
    rst RST_38                                    ; $69E1: $FF
    rst RST_38                                    ; $69E2: $FF
    rst RST_38                                    ; $69E3: $FF
    rst RST_38                                    ; $69E4: $FF
    rst RST_38                                    ; $69E5: $FF
    rst RST_38                                    ; $69E6: $FF
    rst RST_38                                    ; $69E7: $FF
    rst RST_38                                    ; $69E8: $FF
    rst RST_38                                    ; $69E9: $FF
    rst RST_38                                    ; $69EA: $FF
    rst RST_38                                    ; $69EB: $FF
    rst RST_38                                    ; $69EC: $FF
    rst RST_38                                    ; $69ED: $FF
    rst RST_38                                    ; $69EE: $FF
    rst RST_38                                    ; $69EF: $FF
    rst RST_38                                    ; $69F0: $FF
    rst RST_38                                    ; $69F1: $FF
    rst RST_38                                    ; $69F2: $FF
    rst RST_38                                    ; $69F3: $FF
    rst RST_38                                    ; $69F4: $FF
    rst RST_38                                    ; $69F5: $FF
    rst RST_38                                    ; $69F6: $FF
    rst RST_38                                    ; $69F7: $FF
    rst RST_38                                    ; $69F8: $FF
    rst RST_38                                    ; $69F9: $FF
    rst RST_38                                    ; $69FA: $FF
    rst RST_38                                    ; $69FB: $FF
    rst RST_38                                    ; $69FC: $FF
    rst RST_38                                    ; $69FD: $FF
    rst RST_38                                    ; $69FE: $FF
    rst RST_38                                    ; $69FF: $FF
    rst RST_38                                    ; $6A00: $FF
    rst RST_38                                    ; $6A01: $FF
    rst RST_38                                    ; $6A02: $FF
    rst RST_38                                    ; $6A03: $FF
    rst RST_38                                    ; $6A04: $FF
    rst RST_38                                    ; $6A05: $FF
    rst RST_38                                    ; $6A06: $FF
    rst RST_38                                    ; $6A07: $FF
    rst RST_38                                    ; $6A08: $FF
    rst RST_38                                    ; $6A09: $FF
    rst RST_38                                    ; $6A0A: $FF
    rst RST_38                                    ; $6A0B: $FF
    rst RST_38                                    ; $6A0C: $FF
    rst RST_38                                    ; $6A0D: $FF
    rst RST_38                                    ; $6A0E: $FF
    rst RST_38                                    ; $6A0F: $FF
    rst RST_38                                    ; $6A10: $FF
    rst RST_38                                    ; $6A11: $FF
    rst RST_38                                    ; $6A12: $FF
    rst RST_38                                    ; $6A13: $FF
    rst RST_38                                    ; $6A14: $FF
    rst RST_38                                    ; $6A15: $FF
    rst RST_38                                    ; $6A16: $FF
    rst RST_38                                    ; $6A17: $FF
    rst RST_38                                    ; $6A18: $FF
    rst RST_38                                    ; $6A19: $FF
    rst RST_38                                    ; $6A1A: $FF
    rst RST_38                                    ; $6A1B: $FF
    rst RST_38                                    ; $6A1C: $FF
    rst RST_38                                    ; $6A1D: $FF
    rst RST_38                                    ; $6A1E: $FF
    rst RST_38                                    ; $6A1F: $FF
    rst RST_38                                    ; $6A20: $FF
    rst RST_38                                    ; $6A21: $FF
    rst RST_38                                    ; $6A22: $FF
    rst RST_38                                    ; $6A23: $FF
    rst RST_38                                    ; $6A24: $FF
    rst RST_38                                    ; $6A25: $FF
    rst RST_38                                    ; $6A26: $FF
    rst RST_38                                    ; $6A27: $FF
    rst RST_38                                    ; $6A28: $FF
    rst RST_38                                    ; $6A29: $FF
    rst RST_38                                    ; $6A2A: $FF
    rst RST_38                                    ; $6A2B: $FF
    rst RST_38                                    ; $6A2C: $FF
    rst RST_38                                    ; $6A2D: $FF
    rst RST_38                                    ; $6A2E: $FF
    rst RST_38                                    ; $6A2F: $FF
    rst RST_38                                    ; $6A30: $FF
    rst RST_38                                    ; $6A31: $FF
    rst RST_38                                    ; $6A32: $FF
    rst RST_38                                    ; $6A33: $FF
    rst RST_38                                    ; $6A34: $FF
    rst RST_38                                    ; $6A35: $FF
    rst RST_38                                    ; $6A36: $FF
    rst RST_38                                    ; $6A37: $FF
    rst RST_38                                    ; $6A38: $FF
    rst RST_38                                    ; $6A39: $FF
    rst RST_38                                    ; $6A3A: $FF
    rst RST_38                                    ; $6A3B: $FF
    rst RST_38                                    ; $6A3C: $FF
    rst RST_38                                    ; $6A3D: $FF
    rst RST_38                                    ; $6A3E: $FF
    rst RST_38                                    ; $6A3F: $FF
    rst RST_38                                    ; $6A40: $FF
    rst RST_38                                    ; $6A41: $FF
    rst RST_38                                    ; $6A42: $FF
    rst RST_38                                    ; $6A43: $FF
    rst RST_38                                    ; $6A44: $FF
    rst RST_38                                    ; $6A45: $FF
    rst RST_38                                    ; $6A46: $FF
    rst RST_38                                    ; $6A47: $FF
    rst RST_38                                    ; $6A48: $FF
    rst RST_38                                    ; $6A49: $FF
    rst RST_38                                    ; $6A4A: $FF
    rst RST_38                                    ; $6A4B: $FF
    rst RST_38                                    ; $6A4C: $FF
    rst RST_38                                    ; $6A4D: $FF
    rst RST_38                                    ; $6A4E: $FF
    rst RST_38                                    ; $6A4F: $FF
    rst RST_38                                    ; $6A50: $FF
    rst RST_38                                    ; $6A51: $FF
    rst RST_38                                    ; $6A52: $FF
    rst RST_38                                    ; $6A53: $FF
    rst RST_38                                    ; $6A54: $FF
    rst RST_38                                    ; $6A55: $FF
    rst RST_38                                    ; $6A56: $FF
    rst RST_38                                    ; $6A57: $FF
    rst RST_38                                    ; $6A58: $FF
    rst RST_38                                    ; $6A59: $FF
    rst RST_38                                    ; $6A5A: $FF
    rst RST_38                                    ; $6A5B: $FF
    rst RST_38                                    ; $6A5C: $FF
    rst RST_38                                    ; $6A5D: $FF
    rst RST_38                                    ; $6A5E: $FF
    rst RST_38                                    ; $6A5F: $FF
    rst RST_38                                    ; $6A60: $FF
    rst RST_38                                    ; $6A61: $FF
    rst RST_38                                    ; $6A62: $FF
    rst RST_38                                    ; $6A63: $FF
    rst RST_38                                    ; $6A64: $FF
    rst RST_38                                    ; $6A65: $FF
    rst RST_38                                    ; $6A66: $FF
    rst RST_38                                    ; $6A67: $FF
    rst RST_38                                    ; $6A68: $FF
    rst RST_38                                    ; $6A69: $FF
    rst RST_38                                    ; $6A6A: $FF
    rst RST_38                                    ; $6A6B: $FF
    rst RST_38                                    ; $6A6C: $FF
    rst RST_38                                    ; $6A6D: $FF
    rst RST_38                                    ; $6A6E: $FF
    rst RST_38                                    ; $6A6F: $FF
    rst RST_38                                    ; $6A70: $FF
    rst RST_38                                    ; $6A71: $FF
    rst RST_38                                    ; $6A72: $FF
    rst RST_38                                    ; $6A73: $FF
    rst RST_38                                    ; $6A74: $FF
    rst RST_38                                    ; $6A75: $FF
    rst RST_38                                    ; $6A76: $FF
    rst RST_38                                    ; $6A77: $FF
    rst RST_38                                    ; $6A78: $FF
    rst RST_38                                    ; $6A79: $FF
    rst RST_38                                    ; $6A7A: $FF
    rst RST_38                                    ; $6A7B: $FF
    rst RST_38                                    ; $6A7C: $FF
    rst RST_38                                    ; $6A7D: $FF
    rst RST_38                                    ; $6A7E: $FF
    rst RST_38                                    ; $6A7F: $FF
    rst RST_38                                    ; $6A80: $FF
    rst RST_38                                    ; $6A81: $FF
    rst RST_38                                    ; $6A82: $FF
    rst RST_38                                    ; $6A83: $FF
    rst RST_38                                    ; $6A84: $FF
    rst RST_38                                    ; $6A85: $FF
    rst RST_38                                    ; $6A86: $FF
    rst RST_38                                    ; $6A87: $FF
    rst RST_38                                    ; $6A88: $FF
    rst RST_38                                    ; $6A89: $FF
    rst RST_38                                    ; $6A8A: $FF
    rst RST_38                                    ; $6A8B: $FF
    rst RST_38                                    ; $6A8C: $FF
    rst RST_38                                    ; $6A8D: $FF
    rst RST_38                                    ; $6A8E: $FF
    rst RST_38                                    ; $6A8F: $FF
    rst RST_38                                    ; $6A90: $FF
    rst RST_38                                    ; $6A91: $FF
    rst RST_38                                    ; $6A92: $FF
    rst RST_38                                    ; $6A93: $FF
    rst RST_38                                    ; $6A94: $FF
    rst RST_38                                    ; $6A95: $FF
    rst RST_38                                    ; $6A96: $FF
    rst RST_38                                    ; $6A97: $FF
    rst RST_38                                    ; $6A98: $FF
    rst RST_38                                    ; $6A99: $FF
    rst RST_38                                    ; $6A9A: $FF
    rst RST_38                                    ; $6A9B: $FF
    rst RST_38                                    ; $6A9C: $FF
    rst RST_38                                    ; $6A9D: $FF
    rst RST_38                                    ; $6A9E: $FF
    rst RST_38                                    ; $6A9F: $FF
    rst RST_38                                    ; $6AA0: $FF
    rst RST_38                                    ; $6AA1: $FF
    rst RST_38                                    ; $6AA2: $FF
    rst RST_38                                    ; $6AA3: $FF
    rst RST_38                                    ; $6AA4: $FF
    rst RST_38                                    ; $6AA5: $FF
    rst RST_38                                    ; $6AA6: $FF
    rst RST_38                                    ; $6AA7: $FF
    rst RST_38                                    ; $6AA8: $FF
    rst RST_38                                    ; $6AA9: $FF
    rst RST_38                                    ; $6AAA: $FF
    rst RST_38                                    ; $6AAB: $FF
    rst RST_38                                    ; $6AAC: $FF
    rst RST_38                                    ; $6AAD: $FF
    rst RST_38                                    ; $6AAE: $FF
    rst RST_38                                    ; $6AAF: $FF
    rst RST_38                                    ; $6AB0: $FF
    rst RST_38                                    ; $6AB1: $FF
    rst RST_38                                    ; $6AB2: $FF
    rst RST_38                                    ; $6AB3: $FF
    rst RST_38                                    ; $6AB4: $FF
    rst RST_38                                    ; $6AB5: $FF
    rst RST_38                                    ; $6AB6: $FF
    rst RST_38                                    ; $6AB7: $FF
    rst RST_38                                    ; $6AB8: $FF
    rst RST_38                                    ; $6AB9: $FF
    rst RST_38                                    ; $6ABA: $FF
    rst RST_38                                    ; $6ABB: $FF
    rst RST_38                                    ; $6ABC: $FF
    rst RST_38                                    ; $6ABD: $FF
    rst RST_38                                    ; $6ABE: $FF
    rst RST_38                                    ; $6ABF: $FF
    rst RST_38                                    ; $6AC0: $FF
    rst RST_38                                    ; $6AC1: $FF
    rst RST_38                                    ; $6AC2: $FF
    rst RST_38                                    ; $6AC3: $FF
    rst RST_38                                    ; $6AC4: $FF
    rst RST_38                                    ; $6AC5: $FF
    rst RST_38                                    ; $6AC6: $FF
    rst RST_38                                    ; $6AC7: $FF
    rst RST_38                                    ; $6AC8: $FF
    rst RST_38                                    ; $6AC9: $FF
    rst RST_38                                    ; $6ACA: $FF
    rst RST_38                                    ; $6ACB: $FF
    rst RST_38                                    ; $6ACC: $FF
    rst RST_38                                    ; $6ACD: $FF
    rst RST_38                                    ; $6ACE: $FF
    rst RST_38                                    ; $6ACF: $FF
    rst RST_38                                    ; $6AD0: $FF
    rst RST_38                                    ; $6AD1: $FF
    rst RST_38                                    ; $6AD2: $FF
    rst RST_38                                    ; $6AD3: $FF
    rst RST_38                                    ; $6AD4: $FF
    rst RST_38                                    ; $6AD5: $FF
    rst RST_38                                    ; $6AD6: $FF
    rst RST_38                                    ; $6AD7: $FF
    rst RST_38                                    ; $6AD8: $FF
    rst RST_38                                    ; $6AD9: $FF
    rst RST_38                                    ; $6ADA: $FF
    rst RST_38                                    ; $6ADB: $FF
    rst RST_38                                    ; $6ADC: $FF
    rst RST_38                                    ; $6ADD: $FF
    rst RST_38                                    ; $6ADE: $FF
    rst RST_38                                    ; $6ADF: $FF
    rst RST_38                                    ; $6AE0: $FF
    rst RST_38                                    ; $6AE1: $FF
    rst RST_38                                    ; $6AE2: $FF
    rst RST_38                                    ; $6AE3: $FF
    rst RST_38                                    ; $6AE4: $FF
    rst RST_38                                    ; $6AE5: $FF
    rst RST_38                                    ; $6AE6: $FF
    rst RST_38                                    ; $6AE7: $FF
    rst RST_38                                    ; $6AE8: $FF
    rst RST_38                                    ; $6AE9: $FF
    rst RST_38                                    ; $6AEA: $FF
    rst RST_38                                    ; $6AEB: $FF
    rst RST_38                                    ; $6AEC: $FF
    rst RST_38                                    ; $6AED: $FF
    rst RST_38                                    ; $6AEE: $FF
    rst RST_38                                    ; $6AEF: $FF
    rst RST_38                                    ; $6AF0: $FF
    rst RST_38                                    ; $6AF1: $FF
    rst RST_38                                    ; $6AF2: $FF
    rst RST_38                                    ; $6AF3: $FF
    rst RST_38                                    ; $6AF4: $FF
    rst RST_38                                    ; $6AF5: $FF
    rst RST_38                                    ; $6AF6: $FF
    rst RST_38                                    ; $6AF7: $FF
    rst RST_38                                    ; $6AF8: $FF
    rst RST_38                                    ; $6AF9: $FF
    rst RST_38                                    ; $6AFA: $FF
    rst RST_38                                    ; $6AFB: $FF
    rst RST_38                                    ; $6AFC: $FF
    rst RST_38                                    ; $6AFD: $FF
    rst RST_38                                    ; $6AFE: $FF
    rst RST_38                                    ; $6AFF: $FF
    rst RST_38                                    ; $6B00: $FF
    rst RST_38                                    ; $6B01: $FF
    rst RST_38                                    ; $6B02: $FF
    rst RST_38                                    ; $6B03: $FF
    rst RST_38                                    ; $6B04: $FF
    rst RST_38                                    ; $6B05: $FF
    rst RST_38                                    ; $6B06: $FF
    rst RST_38                                    ; $6B07: $FF
    rst RST_38                                    ; $6B08: $FF
    rst RST_38                                    ; $6B09: $FF
    rst RST_38                                    ; $6B0A: $FF
    rst RST_38                                    ; $6B0B: $FF
    rst RST_38                                    ; $6B0C: $FF
    rst RST_38                                    ; $6B0D: $FF
    rst RST_38                                    ; $6B0E: $FF
    rst RST_38                                    ; $6B0F: $FF
    rst RST_38                                    ; $6B10: $FF
    rst RST_38                                    ; $6B11: $FF
    rst RST_38                                    ; $6B12: $FF
    rst RST_38                                    ; $6B13: $FF
    rst RST_38                                    ; $6B14: $FF
    rst RST_38                                    ; $6B15: $FF
    rst RST_38                                    ; $6B16: $FF
    rst RST_38                                    ; $6B17: $FF
    rst RST_38                                    ; $6B18: $FF
    rst RST_38                                    ; $6B19: $FF
    rst RST_38                                    ; $6B1A: $FF
    rst RST_38                                    ; $6B1B: $FF
    rst RST_38                                    ; $6B1C: $FF
    rst RST_38                                    ; $6B1D: $FF
    rst RST_38                                    ; $6B1E: $FF
    rst RST_38                                    ; $6B1F: $FF
    rst RST_38                                    ; $6B20: $FF
    rst RST_38                                    ; $6B21: $FF
    rst RST_38                                    ; $6B22: $FF
    rst RST_38                                    ; $6B23: $FF
    rst RST_38                                    ; $6B24: $FF
    rst RST_38                                    ; $6B25: $FF
    rst RST_38                                    ; $6B26: $FF
    rst RST_38                                    ; $6B27: $FF
    rst RST_38                                    ; $6B28: $FF
    rst RST_38                                    ; $6B29: $FF
    rst RST_38                                    ; $6B2A: $FF
    rst RST_38                                    ; $6B2B: $FF
    rst RST_38                                    ; $6B2C: $FF
    rst RST_38                                    ; $6B2D: $FF
    rst RST_38                                    ; $6B2E: $FF
    rst RST_38                                    ; $6B2F: $FF
    rst RST_38                                    ; $6B30: $FF
    rst RST_38                                    ; $6B31: $FF
    rst RST_38                                    ; $6B32: $FF
    rst RST_38                                    ; $6B33: $FF
    rst RST_38                                    ; $6B34: $FF
    rst RST_38                                    ; $6B35: $FF
    rst RST_38                                    ; $6B36: $FF
    rst RST_38                                    ; $6B37: $FF
    rst RST_38                                    ; $6B38: $FF
    rst RST_38                                    ; $6B39: $FF
    rst RST_38                                    ; $6B3A: $FF
    rst RST_38                                    ; $6B3B: $FF
    rst RST_38                                    ; $6B3C: $FF
    rst RST_38                                    ; $6B3D: $FF
    rst RST_38                                    ; $6B3E: $FF
    rst RST_38                                    ; $6B3F: $FF
    rst RST_38                                    ; $6B40: $FF
    rst RST_38                                    ; $6B41: $FF
    rst RST_38                                    ; $6B42: $FF
    rst RST_38                                    ; $6B43: $FF
    rst RST_38                                    ; $6B44: $FF
    rst RST_38                                    ; $6B45: $FF
    rst RST_38                                    ; $6B46: $FF
    rst RST_38                                    ; $6B47: $FF
    rst RST_38                                    ; $6B48: $FF
    rst RST_38                                    ; $6B49: $FF
    rst RST_38                                    ; $6B4A: $FF
    rst RST_38                                    ; $6B4B: $FF
    rst RST_38                                    ; $6B4C: $FF
    rst RST_38                                    ; $6B4D: $FF
    rst RST_38                                    ; $6B4E: $FF
    rst RST_38                                    ; $6B4F: $FF
    rst RST_38                                    ; $6B50: $FF
    rst RST_38                                    ; $6B51: $FF
    rst RST_38                                    ; $6B52: $FF
    rst RST_38                                    ; $6B53: $FF
    rst RST_38                                    ; $6B54: $FF
    rst RST_38                                    ; $6B55: $FF
    rst RST_38                                    ; $6B56: $FF
    rst RST_38                                    ; $6B57: $FF
    rst RST_38                                    ; $6B58: $FF
    rst RST_38                                    ; $6B59: $FF
    rst RST_38                                    ; $6B5A: $FF
    rst RST_38                                    ; $6B5B: $FF
    rst RST_38                                    ; $6B5C: $FF
    rst RST_38                                    ; $6B5D: $FF
    rst RST_38                                    ; $6B5E: $FF
    rst RST_38                                    ; $6B5F: $FF
    rst RST_38                                    ; $6B60: $FF
    rst RST_38                                    ; $6B61: $FF
    rst RST_38                                    ; $6B62: $FF
    rst RST_38                                    ; $6B63: $FF
    rst RST_38                                    ; $6B64: $FF
    rst RST_38                                    ; $6B65: $FF
    rst RST_38                                    ; $6B66: $FF
    rst RST_38                                    ; $6B67: $FF
    rst RST_38                                    ; $6B68: $FF
    rst RST_38                                    ; $6B69: $FF
    rst RST_38                                    ; $6B6A: $FF
    rst RST_38                                    ; $6B6B: $FF
    rst RST_38                                    ; $6B6C: $FF
    rst RST_38                                    ; $6B6D: $FF
    rst RST_38                                    ; $6B6E: $FF
    rst RST_38                                    ; $6B6F: $FF
    rst RST_38                                    ; $6B70: $FF
    rst RST_38                                    ; $6B71: $FF
    rst RST_38                                    ; $6B72: $FF
    rst RST_38                                    ; $6B73: $FF
    rst RST_38                                    ; $6B74: $FF
    rst RST_38                                    ; $6B75: $FF
    rst RST_38                                    ; $6B76: $FF
    rst RST_38                                    ; $6B77: $FF
    rst RST_38                                    ; $6B78: $FF
    rst RST_38                                    ; $6B79: $FF
    rst RST_38                                    ; $6B7A: $FF
    rst RST_38                                    ; $6B7B: $FF
    rst RST_38                                    ; $6B7C: $FF
    rst RST_38                                    ; $6B7D: $FF
    rst RST_38                                    ; $6B7E: $FF
    rst RST_38                                    ; $6B7F: $FF
    rst RST_38                                    ; $6B80: $FF
    rst RST_38                                    ; $6B81: $FF
    rst RST_38                                    ; $6B82: $FF
    rst RST_38                                    ; $6B83: $FF
    rst RST_38                                    ; $6B84: $FF
    rst RST_38                                    ; $6B85: $FF
    rst RST_38                                    ; $6B86: $FF
    rst RST_38                                    ; $6B87: $FF
    rst RST_38                                    ; $6B88: $FF
    rst RST_38                                    ; $6B89: $FF
    rst RST_38                                    ; $6B8A: $FF
    rst RST_38                                    ; $6B8B: $FF
    rst RST_38                                    ; $6B8C: $FF
    rst RST_38                                    ; $6B8D: $FF
    rst RST_38                                    ; $6B8E: $FF
    rst RST_38                                    ; $6B8F: $FF
    rst RST_38                                    ; $6B90: $FF
    rst RST_38                                    ; $6B91: $FF
    rst RST_38                                    ; $6B92: $FF
    rst RST_38                                    ; $6B93: $FF
    rst RST_38                                    ; $6B94: $FF
    rst RST_38                                    ; $6B95: $FF
    rst RST_38                                    ; $6B96: $FF
    rst RST_38                                    ; $6B97: $FF
    rst RST_38                                    ; $6B98: $FF
    rst RST_38                                    ; $6B99: $FF
    rst RST_38                                    ; $6B9A: $FF
    rst RST_38                                    ; $6B9B: $FF
    rst RST_38                                    ; $6B9C: $FF
    rst RST_38                                    ; $6B9D: $FF
    rst RST_38                                    ; $6B9E: $FF
    rst RST_38                                    ; $6B9F: $FF
    rst RST_38                                    ; $6BA0: $FF
    rst RST_38                                    ; $6BA1: $FF
    rst RST_38                                    ; $6BA2: $FF
    rst RST_38                                    ; $6BA3: $FF
    rst RST_38                                    ; $6BA4: $FF
    rst RST_38                                    ; $6BA5: $FF
    rst RST_38                                    ; $6BA6: $FF
    rst RST_38                                    ; $6BA7: $FF
    rst RST_38                                    ; $6BA8: $FF
    rst RST_38                                    ; $6BA9: $FF
    rst RST_38                                    ; $6BAA: $FF
    rst RST_38                                    ; $6BAB: $FF
    rst RST_38                                    ; $6BAC: $FF
    rst RST_38                                    ; $6BAD: $FF
    rst RST_38                                    ; $6BAE: $FF
    rst RST_38                                    ; $6BAF: $FF
    rst RST_38                                    ; $6BB0: $FF
    rst RST_38                                    ; $6BB1: $FF
    rst RST_38                                    ; $6BB2: $FF
    rst RST_38                                    ; $6BB3: $FF
    rst RST_38                                    ; $6BB4: $FF
    rst RST_38                                    ; $6BB5: $FF
    rst RST_38                                    ; $6BB6: $FF
    rst RST_38                                    ; $6BB7: $FF
    rst RST_38                                    ; $6BB8: $FF
    rst RST_38                                    ; $6BB9: $FF
    rst RST_38                                    ; $6BBA: $FF
    rst RST_38                                    ; $6BBB: $FF
    rst RST_38                                    ; $6BBC: $FF
    rst RST_38                                    ; $6BBD: $FF
    rst RST_38                                    ; $6BBE: $FF
    rst RST_38                                    ; $6BBF: $FF
    rst RST_38                                    ; $6BC0: $FF
    rst RST_38                                    ; $6BC1: $FF
    rst RST_38                                    ; $6BC2: $FF
    rst RST_38                                    ; $6BC3: $FF
    rst RST_38                                    ; $6BC4: $FF
    rst RST_38                                    ; $6BC5: $FF
    rst RST_38                                    ; $6BC6: $FF
    rst RST_38                                    ; $6BC7: $FF
    rst RST_38                                    ; $6BC8: $FF
    rst RST_38                                    ; $6BC9: $FF
    rst RST_38                                    ; $6BCA: $FF
    rst RST_38                                    ; $6BCB: $FF
    rst RST_38                                    ; $6BCC: $FF
    rst RST_38                                    ; $6BCD: $FF
    rst RST_38                                    ; $6BCE: $FF
    rst RST_38                                    ; $6BCF: $FF
    rst RST_38                                    ; $6BD0: $FF
    rst RST_38                                    ; $6BD1: $FF
    rst RST_38                                    ; $6BD2: $FF
    rst RST_38                                    ; $6BD3: $FF
    rst RST_38                                    ; $6BD4: $FF
    rst RST_38                                    ; $6BD5: $FF
    rst RST_38                                    ; $6BD6: $FF
    rst RST_38                                    ; $6BD7: $FF
    rst RST_38                                    ; $6BD8: $FF
    rst RST_38                                    ; $6BD9: $FF
    rst RST_38                                    ; $6BDA: $FF
    rst RST_38                                    ; $6BDB: $FF
    rst RST_38                                    ; $6BDC: $FF
    rst RST_38                                    ; $6BDD: $FF
    rst RST_38                                    ; $6BDE: $FF
    rst RST_38                                    ; $6BDF: $FF
    rst RST_38                                    ; $6BE0: $FF
    rst RST_38                                    ; $6BE1: $FF
    rst RST_38                                    ; $6BE2: $FF
    rst RST_38                                    ; $6BE3: $FF
    rst RST_38                                    ; $6BE4: $FF
    rst RST_38                                    ; $6BE5: $FF
    rst RST_38                                    ; $6BE6: $FF
    rst RST_38                                    ; $6BE7: $FF
    rst RST_38                                    ; $6BE8: $FF
    rst RST_38                                    ; $6BE9: $FF
    rst RST_38                                    ; $6BEA: $FF
    rst RST_38                                    ; $6BEB: $FF
    rst RST_38                                    ; $6BEC: $FF
    rst RST_38                                    ; $6BED: $FF
    rst RST_38                                    ; $6BEE: $FF
    rst RST_38                                    ; $6BEF: $FF
    rst RST_38                                    ; $6BF0: $FF
    rst RST_38                                    ; $6BF1: $FF
    rst RST_38                                    ; $6BF2: $FF
    rst RST_38                                    ; $6BF3: $FF
    rst RST_38                                    ; $6BF4: $FF
    rst RST_38                                    ; $6BF5: $FF
    rst RST_38                                    ; $6BF6: $FF
    rst RST_38                                    ; $6BF7: $FF
    rst RST_38                                    ; $6BF8: $FF
    rst RST_38                                    ; $6BF9: $FF
    rst RST_38                                    ; $6BFA: $FF
    rst RST_38                                    ; $6BFB: $FF
    rst RST_38                                    ; $6BFC: $FF
    rst RST_38                                    ; $6BFD: $FF
    rst RST_38                                    ; $6BFE: $FF
    rst RST_38                                    ; $6BFF: $FF
    rst RST_38                                    ; $6C00: $FF
    rst RST_38                                    ; $6C01: $FF
    rst RST_38                                    ; $6C02: $FF
    rst RST_38                                    ; $6C03: $FF
    rst RST_38                                    ; $6C04: $FF
    rst RST_38                                    ; $6C05: $FF
    rst RST_38                                    ; $6C06: $FF
    rst RST_38                                    ; $6C07: $FF
    rst RST_38                                    ; $6C08: $FF
    rst RST_38                                    ; $6C09: $FF
    rst RST_38                                    ; $6C0A: $FF
    rst RST_38                                    ; $6C0B: $FF
    rst RST_38                                    ; $6C0C: $FF
    rst RST_38                                    ; $6C0D: $FF
    rst RST_38                                    ; $6C0E: $FF
    rst RST_38                                    ; $6C0F: $FF
    rst RST_38                                    ; $6C10: $FF
    rst RST_38                                    ; $6C11: $FF
    rst RST_38                                    ; $6C12: $FF
    rst RST_38                                    ; $6C13: $FF
    rst RST_38                                    ; $6C14: $FF
    rst RST_38                                    ; $6C15: $FF
    rst RST_38                                    ; $6C16: $FF
    rst RST_38                                    ; $6C17: $FF
    rst RST_38                                    ; $6C18: $FF
    rst RST_38                                    ; $6C19: $FF
    rst RST_38                                    ; $6C1A: $FF
    rst RST_38                                    ; $6C1B: $FF
    rst RST_38                                    ; $6C1C: $FF
    rst RST_38                                    ; $6C1D: $FF
    rst RST_38                                    ; $6C1E: $FF
    rst RST_38                                    ; $6C1F: $FF
    rst RST_38                                    ; $6C20: $FF
    rst RST_38                                    ; $6C21: $FF
    rst RST_38                                    ; $6C22: $FF
    rst RST_38                                    ; $6C23: $FF
    rst RST_38                                    ; $6C24: $FF
    rst RST_38                                    ; $6C25: $FF
    rst RST_38                                    ; $6C26: $FF
    rst RST_38                                    ; $6C27: $FF
    rst RST_38                                    ; $6C28: $FF
    rst RST_38                                    ; $6C29: $FF
    rst RST_38                                    ; $6C2A: $FF
    rst RST_38                                    ; $6C2B: $FF
    rst RST_38                                    ; $6C2C: $FF
    rst RST_38                                    ; $6C2D: $FF
    rst RST_38                                    ; $6C2E: $FF
    rst RST_38                                    ; $6C2F: $FF
    rst RST_38                                    ; $6C30: $FF
    rst RST_38                                    ; $6C31: $FF
    rst RST_38                                    ; $6C32: $FF
    rst RST_38                                    ; $6C33: $FF
    rst RST_38                                    ; $6C34: $FF
    rst RST_38                                    ; $6C35: $FF
    rst RST_38                                    ; $6C36: $FF
    rst RST_38                                    ; $6C37: $FF
    rst RST_38                                    ; $6C38: $FF
    rst RST_38                                    ; $6C39: $FF
    rst RST_38                                    ; $6C3A: $FF
    rst RST_38                                    ; $6C3B: $FF
    rst RST_38                                    ; $6C3C: $FF
    rst RST_38                                    ; $6C3D: $FF
    rst RST_38                                    ; $6C3E: $FF
    rst RST_38                                    ; $6C3F: $FF
    rst RST_38                                    ; $6C40: $FF
    rst RST_38                                    ; $6C41: $FF
    rst RST_38                                    ; $6C42: $FF
    rst RST_38                                    ; $6C43: $FF
    rst RST_38                                    ; $6C44: $FF
    rst RST_38                                    ; $6C45: $FF
    rst RST_38                                    ; $6C46: $FF
    rst RST_38                                    ; $6C47: $FF
    rst RST_38                                    ; $6C48: $FF
    rst RST_38                                    ; $6C49: $FF
    rst RST_38                                    ; $6C4A: $FF
    rst RST_38                                    ; $6C4B: $FF
    rst RST_38                                    ; $6C4C: $FF
    rst RST_38                                    ; $6C4D: $FF
    rst RST_38                                    ; $6C4E: $FF
    rst RST_38                                    ; $6C4F: $FF
    rst RST_38                                    ; $6C50: $FF
    rst RST_38                                    ; $6C51: $FF
    rst RST_38                                    ; $6C52: $FF
    rst RST_38                                    ; $6C53: $FF
    rst RST_38                                    ; $6C54: $FF
    rst RST_38                                    ; $6C55: $FF
    rst RST_38                                    ; $6C56: $FF
    rst RST_38                                    ; $6C57: $FF
    rst RST_38                                    ; $6C58: $FF
    rst RST_38                                    ; $6C59: $FF
    rst RST_38                                    ; $6C5A: $FF
    rst RST_38                                    ; $6C5B: $FF
    rst RST_38                                    ; $6C5C: $FF
    rst RST_38                                    ; $6C5D: $FF
    rst RST_38                                    ; $6C5E: $FF
    rst RST_38                                    ; $6C5F: $FF
    rst RST_38                                    ; $6C60: $FF
    rst RST_38                                    ; $6C61: $FF
    rst RST_38                                    ; $6C62: $FF
    rst RST_38                                    ; $6C63: $FF
    rst RST_38                                    ; $6C64: $FF
    rst RST_38                                    ; $6C65: $FF
    rst RST_38                                    ; $6C66: $FF
    rst RST_38                                    ; $6C67: $FF
    rst RST_38                                    ; $6C68: $FF
    rst RST_38                                    ; $6C69: $FF
    rst RST_38                                    ; $6C6A: $FF
    rst RST_38                                    ; $6C6B: $FF
    rst RST_38                                    ; $6C6C: $FF
    rst RST_38                                    ; $6C6D: $FF
    rst RST_38                                    ; $6C6E: $FF
    rst RST_38                                    ; $6C6F: $FF
    rst RST_38                                    ; $6C70: $FF
    rst RST_38                                    ; $6C71: $FF
    rst RST_38                                    ; $6C72: $FF
    rst RST_38                                    ; $6C73: $FF
    rst RST_38                                    ; $6C74: $FF
    rst RST_38                                    ; $6C75: $FF
    rst RST_38                                    ; $6C76: $FF
    rst RST_38                                    ; $6C77: $FF
    rst RST_38                                    ; $6C78: $FF
    rst RST_38                                    ; $6C79: $FF
    rst RST_38                                    ; $6C7A: $FF
    rst RST_38                                    ; $6C7B: $FF
    rst RST_38                                    ; $6C7C: $FF
    rst RST_38                                    ; $6C7D: $FF
    rst RST_38                                    ; $6C7E: $FF
    rst RST_38                                    ; $6C7F: $FF
    rst RST_38                                    ; $6C80: $FF
    rst RST_38                                    ; $6C81: $FF
    rst RST_38                                    ; $6C82: $FF
    rst RST_38                                    ; $6C83: $FF
    rst RST_38                                    ; $6C84: $FF
    rst RST_38                                    ; $6C85: $FF
    rst RST_38                                    ; $6C86: $FF
    rst RST_38                                    ; $6C87: $FF
    rst RST_38                                    ; $6C88: $FF
    rst RST_38                                    ; $6C89: $FF
    rst RST_38                                    ; $6C8A: $FF
    rst RST_38                                    ; $6C8B: $FF
    rst RST_38                                    ; $6C8C: $FF
    rst RST_38                                    ; $6C8D: $FF
    rst RST_38                                    ; $6C8E: $FF
    rst RST_38                                    ; $6C8F: $FF
    rst RST_38                                    ; $6C90: $FF
    rst RST_38                                    ; $6C91: $FF
    rst RST_38                                    ; $6C92: $FF
    rst RST_38                                    ; $6C93: $FF
    rst RST_38                                    ; $6C94: $FF
    rst RST_38                                    ; $6C95: $FF
    rst RST_38                                    ; $6C96: $FF
    rst RST_38                                    ; $6C97: $FF
    rst RST_38                                    ; $6C98: $FF
    rst RST_38                                    ; $6C99: $FF
    rst RST_38                                    ; $6C9A: $FF
    rst RST_38                                    ; $6C9B: $FF
    rst RST_38                                    ; $6C9C: $FF
    rst RST_38                                    ; $6C9D: $FF
    rst RST_38                                    ; $6C9E: $FF
    rst RST_38                                    ; $6C9F: $FF
    rst RST_38                                    ; $6CA0: $FF
    rst RST_38                                    ; $6CA1: $FF
    rst RST_38                                    ; $6CA2: $FF
    rst RST_38                                    ; $6CA3: $FF
    rst RST_38                                    ; $6CA4: $FF
    rst RST_38                                    ; $6CA5: $FF
    rst RST_38                                    ; $6CA6: $FF
    rst RST_38                                    ; $6CA7: $FF
    rst RST_38                                    ; $6CA8: $FF
    rst RST_38                                    ; $6CA9: $FF
    rst RST_38                                    ; $6CAA: $FF
    rst RST_38                                    ; $6CAB: $FF
    rst RST_38                                    ; $6CAC: $FF
    rst RST_38                                    ; $6CAD: $FF
    rst RST_38                                    ; $6CAE: $FF
    rst RST_38                                    ; $6CAF: $FF
    rst RST_38                                    ; $6CB0: $FF
    rst RST_38                                    ; $6CB1: $FF
    rst RST_38                                    ; $6CB2: $FF
    rst RST_38                                    ; $6CB3: $FF
    rst RST_38                                    ; $6CB4: $FF
    rst RST_38                                    ; $6CB5: $FF
    rst RST_38                                    ; $6CB6: $FF
    rst RST_38                                    ; $6CB7: $FF
    rst RST_38                                    ; $6CB8: $FF
    rst RST_38                                    ; $6CB9: $FF
    rst RST_38                                    ; $6CBA: $FF
    rst RST_38                                    ; $6CBB: $FF
    rst RST_38                                    ; $6CBC: $FF
    rst RST_38                                    ; $6CBD: $FF
    rst RST_38                                    ; $6CBE: $FF
    rst RST_38                                    ; $6CBF: $FF
    rst RST_38                                    ; $6CC0: $FF
    rst RST_38                                    ; $6CC1: $FF
    rst RST_38                                    ; $6CC2: $FF
    rst RST_38                                    ; $6CC3: $FF
    rst RST_38                                    ; $6CC4: $FF
    rst RST_38                                    ; $6CC5: $FF
    rst RST_38                                    ; $6CC6: $FF
    rst RST_38                                    ; $6CC7: $FF
    rst RST_38                                    ; $6CC8: $FF
    rst RST_38                                    ; $6CC9: $FF
    rst RST_38                                    ; $6CCA: $FF
    rst RST_38                                    ; $6CCB: $FF
    rst RST_38                                    ; $6CCC: $FF
    rst RST_38                                    ; $6CCD: $FF
    rst RST_38                                    ; $6CCE: $FF
    rst RST_38                                    ; $6CCF: $FF
    rst RST_38                                    ; $6CD0: $FF
    rst RST_38                                    ; $6CD1: $FF
    rst RST_38                                    ; $6CD2: $FF
    rst RST_38                                    ; $6CD3: $FF
    rst RST_38                                    ; $6CD4: $FF
    rst RST_38                                    ; $6CD5: $FF
    rst RST_38                                    ; $6CD6: $FF
    rst RST_38                                    ; $6CD7: $FF
    rst RST_38                                    ; $6CD8: $FF
    rst RST_38                                    ; $6CD9: $FF
    rst RST_38                                    ; $6CDA: $FF
    rst RST_38                                    ; $6CDB: $FF
    rst RST_38                                    ; $6CDC: $FF
    rst RST_38                                    ; $6CDD: $FF
    rst RST_38                                    ; $6CDE: $FF
    rst RST_38                                    ; $6CDF: $FF
    rst RST_38                                    ; $6CE0: $FF
    rst RST_38                                    ; $6CE1: $FF
    rst RST_38                                    ; $6CE2: $FF
    rst RST_38                                    ; $6CE3: $FF
    rst RST_38                                    ; $6CE4: $FF
    rst RST_38                                    ; $6CE5: $FF
    rst RST_38                                    ; $6CE6: $FF
    rst RST_38                                    ; $6CE7: $FF
    rst RST_38                                    ; $6CE8: $FF
    rst RST_38                                    ; $6CE9: $FF
    rst RST_38                                    ; $6CEA: $FF
    rst RST_38                                    ; $6CEB: $FF
    rst RST_38                                    ; $6CEC: $FF
    rst RST_38                                    ; $6CED: $FF
    rst RST_38                                    ; $6CEE: $FF
    rst RST_38                                    ; $6CEF: $FF
    rst RST_38                                    ; $6CF0: $FF
    rst RST_38                                    ; $6CF1: $FF
    rst RST_38                                    ; $6CF2: $FF
    rst RST_38                                    ; $6CF3: $FF
    rst RST_38                                    ; $6CF4: $FF
    rst RST_38                                    ; $6CF5: $FF
    rst RST_38                                    ; $6CF6: $FF
    rst RST_38                                    ; $6CF7: $FF
    rst RST_38                                    ; $6CF8: $FF
    rst RST_38                                    ; $6CF9: $FF
    rst RST_38                                    ; $6CFA: $FF
    rst RST_38                                    ; $6CFB: $FF
    rst RST_38                                    ; $6CFC: $FF
    rst RST_38                                    ; $6CFD: $FF
    rst RST_38                                    ; $6CFE: $FF
    rst RST_38                                    ; $6CFF: $FF
    rst RST_38                                    ; $6D00: $FF
    rst RST_38                                    ; $6D01: $FF
    rst RST_38                                    ; $6D02: $FF
    rst RST_38                                    ; $6D03: $FF
    rst RST_38                                    ; $6D04: $FF
    rst RST_38                                    ; $6D05: $FF
    rst RST_38                                    ; $6D06: $FF
    rst RST_38                                    ; $6D07: $FF
    rst RST_38                                    ; $6D08: $FF
    rst RST_38                                    ; $6D09: $FF
    rst RST_38                                    ; $6D0A: $FF
    rst RST_38                                    ; $6D0B: $FF
    rst RST_38                                    ; $6D0C: $FF
    rst RST_38                                    ; $6D0D: $FF
    rst RST_38                                    ; $6D0E: $FF
    rst RST_38                                    ; $6D0F: $FF
    rst RST_38                                    ; $6D10: $FF
    rst RST_38                                    ; $6D11: $FF
    rst RST_38                                    ; $6D12: $FF
    rst RST_38                                    ; $6D13: $FF
    rst RST_38                                    ; $6D14: $FF
    rst RST_38                                    ; $6D15: $FF
    rst RST_38                                    ; $6D16: $FF
    rst RST_38                                    ; $6D17: $FF
    rst RST_38                                    ; $6D18: $FF
    rst RST_38                                    ; $6D19: $FF
    rst RST_38                                    ; $6D1A: $FF
    rst RST_38                                    ; $6D1B: $FF
    rst RST_38                                    ; $6D1C: $FF
    rst RST_38                                    ; $6D1D: $FF
    rst RST_38                                    ; $6D1E: $FF
    rst RST_38                                    ; $6D1F: $FF
    rst RST_38                                    ; $6D20: $FF
    rst RST_38                                    ; $6D21: $FF
    rst RST_38                                    ; $6D22: $FF
    rst RST_38                                    ; $6D23: $FF
    rst RST_38                                    ; $6D24: $FF
    rst RST_38                                    ; $6D25: $FF
    rst RST_38                                    ; $6D26: $FF
    rst RST_38                                    ; $6D27: $FF
    rst RST_38                                    ; $6D28: $FF
    rst RST_38                                    ; $6D29: $FF
    rst RST_38                                    ; $6D2A: $FF
    rst RST_38                                    ; $6D2B: $FF
    rst RST_38                                    ; $6D2C: $FF
    rst RST_38                                    ; $6D2D: $FF
    rst RST_38                                    ; $6D2E: $FF
    rst RST_38                                    ; $6D2F: $FF
    rst RST_38                                    ; $6D30: $FF
    rst RST_38                                    ; $6D31: $FF
    rst RST_38                                    ; $6D32: $FF
    rst RST_38                                    ; $6D33: $FF
    rst RST_38                                    ; $6D34: $FF
    rst RST_38                                    ; $6D35: $FF
    rst RST_38                                    ; $6D36: $FF
    rst RST_38                                    ; $6D37: $FF
    rst RST_38                                    ; $6D38: $FF
    rst RST_38                                    ; $6D39: $FF
    rst RST_38                                    ; $6D3A: $FF
    rst RST_38                                    ; $6D3B: $FF
    rst RST_38                                    ; $6D3C: $FF
    rst RST_38                                    ; $6D3D: $FF
    rst RST_38                                    ; $6D3E: $FF
    rst RST_38                                    ; $6D3F: $FF
    rst RST_38                                    ; $6D40: $FF
    rst RST_38                                    ; $6D41: $FF
    rst RST_38                                    ; $6D42: $FF
    rst RST_38                                    ; $6D43: $FF
    rst RST_38                                    ; $6D44: $FF
    rst RST_38                                    ; $6D45: $FF
    rst RST_38                                    ; $6D46: $FF
    rst RST_38                                    ; $6D47: $FF
    rst RST_38                                    ; $6D48: $FF
    rst RST_38                                    ; $6D49: $FF
    rst RST_38                                    ; $6D4A: $FF
    rst RST_38                                    ; $6D4B: $FF
    rst RST_38                                    ; $6D4C: $FF
    rst RST_38                                    ; $6D4D: $FF
    rst RST_38                                    ; $6D4E: $FF
    rst RST_38                                    ; $6D4F: $FF
    rst RST_38                                    ; $6D50: $FF
    rst RST_38                                    ; $6D51: $FF
    rst RST_38                                    ; $6D52: $FF
    rst RST_38                                    ; $6D53: $FF
    rst RST_38                                    ; $6D54: $FF
    rst RST_38                                    ; $6D55: $FF
    rst RST_38                                    ; $6D56: $FF
    rst RST_38                                    ; $6D57: $FF
    rst RST_38                                    ; $6D58: $FF
    rst RST_38                                    ; $6D59: $FF
    rst RST_38                                    ; $6D5A: $FF
    rst RST_38                                    ; $6D5B: $FF
    rst RST_38                                    ; $6D5C: $FF
    rst RST_38                                    ; $6D5D: $FF
    rst RST_38                                    ; $6D5E: $FF
    rst RST_38                                    ; $6D5F: $FF
    rst RST_38                                    ; $6D60: $FF
    rst RST_38                                    ; $6D61: $FF
    rst RST_38                                    ; $6D62: $FF
    rst RST_38                                    ; $6D63: $FF
    rst RST_38                                    ; $6D64: $FF
    rst RST_38                                    ; $6D65: $FF
    rst RST_38                                    ; $6D66: $FF
    rst RST_38                                    ; $6D67: $FF
    rst RST_38                                    ; $6D68: $FF
    rst RST_38                                    ; $6D69: $FF
    rst RST_38                                    ; $6D6A: $FF
    rst RST_38                                    ; $6D6B: $FF
    rst RST_38                                    ; $6D6C: $FF
    rst RST_38                                    ; $6D6D: $FF
    rst RST_38                                    ; $6D6E: $FF
    rst RST_38                                    ; $6D6F: $FF
    rst RST_38                                    ; $6D70: $FF
    rst RST_38                                    ; $6D71: $FF
    rst RST_38                                    ; $6D72: $FF
    rst RST_38                                    ; $6D73: $FF
    rst RST_38                                    ; $6D74: $FF
    rst RST_38                                    ; $6D75: $FF
    rst RST_38                                    ; $6D76: $FF
    rst RST_38                                    ; $6D77: $FF
    rst RST_38                                    ; $6D78: $FF
    rst RST_38                                    ; $6D79: $FF
    rst RST_38                                    ; $6D7A: $FF
    rst RST_38                                    ; $6D7B: $FF
    rst RST_38                                    ; $6D7C: $FF
    rst RST_38                                    ; $6D7D: $FF
    rst RST_38                                    ; $6D7E: $FF
    rst RST_38                                    ; $6D7F: $FF
    rst RST_38                                    ; $6D80: $FF
    rst RST_38                                    ; $6D81: $FF
    rst RST_38                                    ; $6D82: $FF
    rst RST_38                                    ; $6D83: $FF
    rst RST_38                                    ; $6D84: $FF
    rst RST_38                                    ; $6D85: $FF
    rst RST_38                                    ; $6D86: $FF
    rst RST_38                                    ; $6D87: $FF
    rst RST_38                                    ; $6D88: $FF
    rst RST_38                                    ; $6D89: $FF
    rst RST_38                                    ; $6D8A: $FF
    rst RST_38                                    ; $6D8B: $FF
    rst RST_38                                    ; $6D8C: $FF
    rst RST_38                                    ; $6D8D: $FF
    rst RST_38                                    ; $6D8E: $FF
    rst RST_38                                    ; $6D8F: $FF
    rst RST_38                                    ; $6D90: $FF
    rst RST_38                                    ; $6D91: $FF
    rst RST_38                                    ; $6D92: $FF
    rst RST_38                                    ; $6D93: $FF
    rst RST_38                                    ; $6D94: $FF
    rst RST_38                                    ; $6D95: $FF
    rst RST_38                                    ; $6D96: $FF
    rst RST_38                                    ; $6D97: $FF
    rst RST_38                                    ; $6D98: $FF
    rst RST_38                                    ; $6D99: $FF
    rst RST_38                                    ; $6D9A: $FF
    rst RST_38                                    ; $6D9B: $FF
    rst RST_38                                    ; $6D9C: $FF
    rst RST_38                                    ; $6D9D: $FF
    rst RST_38                                    ; $6D9E: $FF
    rst RST_38                                    ; $6D9F: $FF
    rst RST_38                                    ; $6DA0: $FF
    rst RST_38                                    ; $6DA1: $FF
    rst RST_38                                    ; $6DA2: $FF
    rst RST_38                                    ; $6DA3: $FF
    rst RST_38                                    ; $6DA4: $FF
    rst RST_38                                    ; $6DA5: $FF
    rst RST_38                                    ; $6DA6: $FF
    rst RST_38                                    ; $6DA7: $FF
    rst RST_38                                    ; $6DA8: $FF
    rst RST_38                                    ; $6DA9: $FF
    rst RST_38                                    ; $6DAA: $FF
    rst RST_38                                    ; $6DAB: $FF
    rst RST_38                                    ; $6DAC: $FF
    rst RST_38                                    ; $6DAD: $FF
    rst RST_38                                    ; $6DAE: $FF
    rst RST_38                                    ; $6DAF: $FF
    rst RST_38                                    ; $6DB0: $FF
    rst RST_38                                    ; $6DB1: $FF
    rst RST_38                                    ; $6DB2: $FF
    rst RST_38                                    ; $6DB3: $FF
    rst RST_38                                    ; $6DB4: $FF
    rst RST_38                                    ; $6DB5: $FF
    rst RST_38                                    ; $6DB6: $FF
    rst RST_38                                    ; $6DB7: $FF
    rst RST_38                                    ; $6DB8: $FF
    rst RST_38                                    ; $6DB9: $FF
    rst RST_38                                    ; $6DBA: $FF
    rst RST_38                                    ; $6DBB: $FF
    rst RST_38                                    ; $6DBC: $FF
    rst RST_38                                    ; $6DBD: $FF
    rst RST_38                                    ; $6DBE: $FF
    rst RST_38                                    ; $6DBF: $FF
    rst RST_38                                    ; $6DC0: $FF
    rst RST_38                                    ; $6DC1: $FF
    rst RST_38                                    ; $6DC2: $FF
    rst RST_38                                    ; $6DC3: $FF
    rst RST_38                                    ; $6DC4: $FF
    rst RST_38                                    ; $6DC5: $FF
    rst RST_38                                    ; $6DC6: $FF
    rst RST_38                                    ; $6DC7: $FF
    rst RST_38                                    ; $6DC8: $FF
    rst RST_38                                    ; $6DC9: $FF
    rst RST_38                                    ; $6DCA: $FF
    rst RST_38                                    ; $6DCB: $FF
    rst RST_38                                    ; $6DCC: $FF
    rst RST_38                                    ; $6DCD: $FF
    rst RST_38                                    ; $6DCE: $FF
    rst RST_38                                    ; $6DCF: $FF
    rst RST_38                                    ; $6DD0: $FF
    rst RST_38                                    ; $6DD1: $FF
    rst RST_38                                    ; $6DD2: $FF
    rst RST_38                                    ; $6DD3: $FF
    rst RST_38                                    ; $6DD4: $FF
    rst RST_38                                    ; $6DD5: $FF
    rst RST_38                                    ; $6DD6: $FF
    rst RST_38                                    ; $6DD7: $FF
    rst RST_38                                    ; $6DD8: $FF
    rst RST_38                                    ; $6DD9: $FF
    rst RST_38                                    ; $6DDA: $FF
    rst RST_38                                    ; $6DDB: $FF
    rst RST_38                                    ; $6DDC: $FF
    rst RST_38                                    ; $6DDD: $FF
    rst RST_38                                    ; $6DDE: $FF
    rst RST_38                                    ; $6DDF: $FF
    rst RST_38                                    ; $6DE0: $FF
    rst RST_38                                    ; $6DE1: $FF
    rst RST_38                                    ; $6DE2: $FF
    rst RST_38                                    ; $6DE3: $FF
    rst RST_38                                    ; $6DE4: $FF
    rst RST_38                                    ; $6DE5: $FF
    rst RST_38                                    ; $6DE6: $FF
    rst RST_38                                    ; $6DE7: $FF
    rst RST_38                                    ; $6DE8: $FF
    rst RST_38                                    ; $6DE9: $FF
    rst RST_38                                    ; $6DEA: $FF
    rst RST_38                                    ; $6DEB: $FF
    rst RST_38                                    ; $6DEC: $FF
    rst RST_38                                    ; $6DED: $FF
    rst RST_38                                    ; $6DEE: $FF
    rst RST_38                                    ; $6DEF: $FF
    rst RST_38                                    ; $6DF0: $FF
    rst RST_38                                    ; $6DF1: $FF
    rst RST_38                                    ; $6DF2: $FF
    rst RST_38                                    ; $6DF3: $FF
    rst RST_38                                    ; $6DF4: $FF
    rst RST_38                                    ; $6DF5: $FF
    rst RST_38                                    ; $6DF6: $FF
    rst RST_38                                    ; $6DF7: $FF
    rst RST_38                                    ; $6DF8: $FF
    rst RST_38                                    ; $6DF9: $FF
    rst RST_38                                    ; $6DFA: $FF
    rst RST_38                                    ; $6DFB: $FF
    rst RST_38                                    ; $6DFC: $FF
    rst RST_38                                    ; $6DFD: $FF
    rst RST_38                                    ; $6DFE: $FF
    rst RST_38                                    ; $6DFF: $FF
    rst RST_38                                    ; $6E00: $FF
    rst RST_38                                    ; $6E01: $FF
    rst RST_38                                    ; $6E02: $FF
    rst RST_38                                    ; $6E03: $FF
    rst RST_38                                    ; $6E04: $FF
    rst RST_38                                    ; $6E05: $FF
    rst RST_38                                    ; $6E06: $FF
    rst RST_38                                    ; $6E07: $FF
    rst RST_38                                    ; $6E08: $FF
    rst RST_38                                    ; $6E09: $FF
    rst RST_38                                    ; $6E0A: $FF
    rst RST_38                                    ; $6E0B: $FF
    rst RST_38                                    ; $6E0C: $FF
    rst RST_38                                    ; $6E0D: $FF
    rst RST_38                                    ; $6E0E: $FF
    rst RST_38                                    ; $6E0F: $FF
    rst RST_38                                    ; $6E10: $FF
    rst RST_38                                    ; $6E11: $FF
    rst RST_38                                    ; $6E12: $FF
    rst RST_38                                    ; $6E13: $FF
    rst RST_38                                    ; $6E14: $FF
    rst RST_38                                    ; $6E15: $FF
    rst RST_38                                    ; $6E16: $FF
    rst RST_38                                    ; $6E17: $FF
    rst RST_38                                    ; $6E18: $FF
    rst RST_38                                    ; $6E19: $FF
    rst RST_38                                    ; $6E1A: $FF
    rst RST_38                                    ; $6E1B: $FF
    rst RST_38                                    ; $6E1C: $FF
    rst RST_38                                    ; $6E1D: $FF
    rst RST_38                                    ; $6E1E: $FF
    rst RST_38                                    ; $6E1F: $FF
    rst RST_38                                    ; $6E20: $FF
    rst RST_38                                    ; $6E21: $FF
    rst RST_38                                    ; $6E22: $FF
    rst RST_38                                    ; $6E23: $FF
    rst RST_38                                    ; $6E24: $FF
    rst RST_38                                    ; $6E25: $FF
    rst RST_38                                    ; $6E26: $FF
    rst RST_38                                    ; $6E27: $FF
    rst RST_38                                    ; $6E28: $FF
    rst RST_38                                    ; $6E29: $FF
    rst RST_38                                    ; $6E2A: $FF
    rst RST_38                                    ; $6E2B: $FF
    rst RST_38                                    ; $6E2C: $FF
    rst RST_38                                    ; $6E2D: $FF
    rst RST_38                                    ; $6E2E: $FF
    rst RST_38                                    ; $6E2F: $FF
    rst RST_38                                    ; $6E30: $FF
    rst RST_38                                    ; $6E31: $FF
    rst RST_38                                    ; $6E32: $FF
    rst RST_38                                    ; $6E33: $FF
    rst RST_38                                    ; $6E34: $FF
    rst RST_38                                    ; $6E35: $FF
    rst RST_38                                    ; $6E36: $FF
    rst RST_38                                    ; $6E37: $FF
    rst RST_38                                    ; $6E38: $FF
    rst RST_38                                    ; $6E39: $FF
    rst RST_38                                    ; $6E3A: $FF
    rst RST_38                                    ; $6E3B: $FF
    rst RST_38                                    ; $6E3C: $FF
    rst RST_38                                    ; $6E3D: $FF
    rst RST_38                                    ; $6E3E: $FF
    rst RST_38                                    ; $6E3F: $FF
    rst RST_38                                    ; $6E40: $FF
    rst RST_38                                    ; $6E41: $FF
    rst RST_38                                    ; $6E42: $FF
    rst RST_38                                    ; $6E43: $FF
    rst RST_38                                    ; $6E44: $FF
    rst RST_38                                    ; $6E45: $FF
    rst RST_38                                    ; $6E46: $FF
    rst RST_38                                    ; $6E47: $FF
    rst RST_38                                    ; $6E48: $FF
    rst RST_38                                    ; $6E49: $FF
    rst RST_38                                    ; $6E4A: $FF
    rst RST_38                                    ; $6E4B: $FF
    rst RST_38                                    ; $6E4C: $FF
    rst RST_38                                    ; $6E4D: $FF
    rst RST_38                                    ; $6E4E: $FF
    rst RST_38                                    ; $6E4F: $FF
    rst RST_38                                    ; $6E50: $FF
    rst RST_38                                    ; $6E51: $FF
    rst RST_38                                    ; $6E52: $FF
    rst RST_38                                    ; $6E53: $FF
    rst RST_38                                    ; $6E54: $FF
    rst RST_38                                    ; $6E55: $FF
    rst RST_38                                    ; $6E56: $FF
    rst RST_38                                    ; $6E57: $FF
    rst RST_38                                    ; $6E58: $FF
    rst RST_38                                    ; $6E59: $FF
    rst RST_38                                    ; $6E5A: $FF
    rst RST_38                                    ; $6E5B: $FF
    rst RST_38                                    ; $6E5C: $FF
    rst RST_38                                    ; $6E5D: $FF
    rst RST_38                                    ; $6E5E: $FF
    rst RST_38                                    ; $6E5F: $FF
    rst RST_38                                    ; $6E60: $FF
    rst RST_38                                    ; $6E61: $FF
    rst RST_38                                    ; $6E62: $FF
    rst RST_38                                    ; $6E63: $FF
    rst RST_38                                    ; $6E64: $FF
    rst RST_38                                    ; $6E65: $FF
    rst RST_38                                    ; $6E66: $FF
    rst RST_38                                    ; $6E67: $FF
    rst RST_38                                    ; $6E68: $FF
    rst RST_38                                    ; $6E69: $FF
    rst RST_38                                    ; $6E6A: $FF
    rst RST_38                                    ; $6E6B: $FF
    rst RST_38                                    ; $6E6C: $FF
    rst RST_38                                    ; $6E6D: $FF
    rst RST_38                                    ; $6E6E: $FF
    rst RST_38                                    ; $6E6F: $FF
    rst RST_38                                    ; $6E70: $FF
    rst RST_38                                    ; $6E71: $FF
    rst RST_38                                    ; $6E72: $FF
    rst RST_38                                    ; $6E73: $FF
    rst RST_38                                    ; $6E74: $FF
    rst RST_38                                    ; $6E75: $FF
    rst RST_38                                    ; $6E76: $FF
    rst RST_38                                    ; $6E77: $FF
    rst RST_38                                    ; $6E78: $FF
    rst RST_38                                    ; $6E79: $FF
    rst RST_38                                    ; $6E7A: $FF
    rst RST_38                                    ; $6E7B: $FF
    rst RST_38                                    ; $6E7C: $FF
    rst RST_38                                    ; $6E7D: $FF
    rst RST_38                                    ; $6E7E: $FF
    rst RST_38                                    ; $6E7F: $FF
    rst RST_38                                    ; $6E80: $FF
    rst RST_38                                    ; $6E81: $FF
    rst RST_38                                    ; $6E82: $FF
    rst RST_38                                    ; $6E83: $FF
    rst RST_38                                    ; $6E84: $FF
    rst RST_38                                    ; $6E85: $FF
    rst RST_38                                    ; $6E86: $FF
    rst RST_38                                    ; $6E87: $FF
    rst RST_38                                    ; $6E88: $FF
    rst RST_38                                    ; $6E89: $FF
    rst RST_38                                    ; $6E8A: $FF
    rst RST_38                                    ; $6E8B: $FF
    rst RST_38                                    ; $6E8C: $FF
    rst RST_38                                    ; $6E8D: $FF
    rst RST_38                                    ; $6E8E: $FF
    rst RST_38                                    ; $6E8F: $FF
    rst RST_38                                    ; $6E90: $FF
    rst RST_38                                    ; $6E91: $FF
    rst RST_38                                    ; $6E92: $FF
    rst RST_38                                    ; $6E93: $FF
    rst RST_38                                    ; $6E94: $FF
    rst RST_38                                    ; $6E95: $FF
    rst RST_38                                    ; $6E96: $FF
    rst RST_38                                    ; $6E97: $FF
    rst RST_38                                    ; $6E98: $FF
    rst RST_38                                    ; $6E99: $FF
    rst RST_38                                    ; $6E9A: $FF
    rst RST_38                                    ; $6E9B: $FF
    rst RST_38                                    ; $6E9C: $FF
    rst RST_38                                    ; $6E9D: $FF
    rst RST_38                                    ; $6E9E: $FF
    rst RST_38                                    ; $6E9F: $FF
    rst RST_38                                    ; $6EA0: $FF
    rst RST_38                                    ; $6EA1: $FF
    rst RST_38                                    ; $6EA2: $FF
    rst RST_38                                    ; $6EA3: $FF
    rst RST_38                                    ; $6EA4: $FF
    rst RST_38                                    ; $6EA5: $FF
    rst RST_38                                    ; $6EA6: $FF
    rst RST_38                                    ; $6EA7: $FF
    rst RST_38                                    ; $6EA8: $FF
    rst RST_38                                    ; $6EA9: $FF
    rst RST_38                                    ; $6EAA: $FF
    rst RST_38                                    ; $6EAB: $FF
    rst RST_38                                    ; $6EAC: $FF
    rst RST_38                                    ; $6EAD: $FF
    rst RST_38                                    ; $6EAE: $FF
    rst RST_38                                    ; $6EAF: $FF
    rst RST_38                                    ; $6EB0: $FF
    rst RST_38                                    ; $6EB1: $FF
    rst RST_38                                    ; $6EB2: $FF
    rst RST_38                                    ; $6EB3: $FF
    rst RST_38                                    ; $6EB4: $FF
    rst RST_38                                    ; $6EB5: $FF
    rst RST_38                                    ; $6EB6: $FF
    rst RST_38                                    ; $6EB7: $FF
    rst RST_38                                    ; $6EB8: $FF
    rst RST_38                                    ; $6EB9: $FF
    rst RST_38                                    ; $6EBA: $FF
    rst RST_38                                    ; $6EBB: $FF
    rst RST_38                                    ; $6EBC: $FF
    rst RST_38                                    ; $6EBD: $FF
    rst RST_38                                    ; $6EBE: $FF
    rst RST_38                                    ; $6EBF: $FF
    rst RST_38                                    ; $6EC0: $FF
    rst RST_38                                    ; $6EC1: $FF
    rst RST_38                                    ; $6EC2: $FF
    rst RST_38                                    ; $6EC3: $FF
    rst RST_38                                    ; $6EC4: $FF
    rst RST_38                                    ; $6EC5: $FF
    rst RST_38                                    ; $6EC6: $FF
    rst RST_38                                    ; $6EC7: $FF
    rst RST_38                                    ; $6EC8: $FF
    rst RST_38                                    ; $6EC9: $FF
    rst RST_38                                    ; $6ECA: $FF
    rst RST_38                                    ; $6ECB: $FF
    rst RST_38                                    ; $6ECC: $FF
    rst RST_38                                    ; $6ECD: $FF
    rst RST_38                                    ; $6ECE: $FF
    rst RST_38                                    ; $6ECF: $FF
    rst RST_38                                    ; $6ED0: $FF
    rst RST_38                                    ; $6ED1: $FF
    rst RST_38                                    ; $6ED2: $FF
    rst RST_38                                    ; $6ED3: $FF
    rst RST_38                                    ; $6ED4: $FF
    rst RST_38                                    ; $6ED5: $FF
    rst RST_38                                    ; $6ED6: $FF
    rst RST_38                                    ; $6ED7: $FF
    rst RST_38                                    ; $6ED8: $FF
    rst RST_38                                    ; $6ED9: $FF
    rst RST_38                                    ; $6EDA: $FF
    rst RST_38                                    ; $6EDB: $FF
    rst RST_38                                    ; $6EDC: $FF
    rst RST_38                                    ; $6EDD: $FF
    rst RST_38                                    ; $6EDE: $FF
    rst RST_38                                    ; $6EDF: $FF
    rst RST_38                                    ; $6EE0: $FF
    rst RST_38                                    ; $6EE1: $FF
    rst RST_38                                    ; $6EE2: $FF
    rst RST_38                                    ; $6EE3: $FF
    rst RST_38                                    ; $6EE4: $FF
    rst RST_38                                    ; $6EE5: $FF
    rst RST_38                                    ; $6EE6: $FF
    rst RST_38                                    ; $6EE7: $FF
    rst RST_38                                    ; $6EE8: $FF
    rst RST_38                                    ; $6EE9: $FF
    rst RST_38                                    ; $6EEA: $FF
    rst RST_38                                    ; $6EEB: $FF
    rst RST_38                                    ; $6EEC: $FF
    rst RST_38                                    ; $6EED: $FF
    rst RST_38                                    ; $6EEE: $FF
    rst RST_38                                    ; $6EEF: $FF
    rst RST_38                                    ; $6EF0: $FF
    rst RST_38                                    ; $6EF1: $FF
    rst RST_38                                    ; $6EF2: $FF
    rst RST_38                                    ; $6EF3: $FF
    rst RST_38                                    ; $6EF4: $FF
    rst RST_38                                    ; $6EF5: $FF
    rst RST_38                                    ; $6EF6: $FF
    rst RST_38                                    ; $6EF7: $FF
    rst RST_38                                    ; $6EF8: $FF
    rst RST_38                                    ; $6EF9: $FF
    rst RST_38                                    ; $6EFA: $FF
    rst RST_38                                    ; $6EFB: $FF
    rst RST_38                                    ; $6EFC: $FF
    rst RST_38                                    ; $6EFD: $FF
    rst RST_38                                    ; $6EFE: $FF
    rst RST_38                                    ; $6EFF: $FF
    rst RST_38                                    ; $6F00: $FF
    rst RST_38                                    ; $6F01: $FF
    rst RST_38                                    ; $6F02: $FF
    rst RST_38                                    ; $6F03: $FF
    rst RST_38                                    ; $6F04: $FF
    rst RST_38                                    ; $6F05: $FF
    rst RST_38                                    ; $6F06: $FF
    rst RST_38                                    ; $6F07: $FF
    rst RST_38                                    ; $6F08: $FF
    rst RST_38                                    ; $6F09: $FF
    rst RST_38                                    ; $6F0A: $FF
    rst RST_38                                    ; $6F0B: $FF
    rst RST_38                                    ; $6F0C: $FF
    rst RST_38                                    ; $6F0D: $FF
    rst RST_38                                    ; $6F0E: $FF
    rst RST_38                                    ; $6F0F: $FF
    rst RST_38                                    ; $6F10: $FF
    rst RST_38                                    ; $6F11: $FF
    rst RST_38                                    ; $6F12: $FF
    rst RST_38                                    ; $6F13: $FF
    rst RST_38                                    ; $6F14: $FF
    rst RST_38                                    ; $6F15: $FF
    rst RST_38                                    ; $6F16: $FF
    rst RST_38                                    ; $6F17: $FF
    rst RST_38                                    ; $6F18: $FF
    rst RST_38                                    ; $6F19: $FF
    rst RST_38                                    ; $6F1A: $FF
    rst RST_38                                    ; $6F1B: $FF
    rst RST_38                                    ; $6F1C: $FF
    rst RST_38                                    ; $6F1D: $FF
    rst RST_38                                    ; $6F1E: $FF
    rst RST_38                                    ; $6F1F: $FF
    rst RST_38                                    ; $6F20: $FF
    rst RST_38                                    ; $6F21: $FF
    rst RST_38                                    ; $6F22: $FF
    rst RST_38                                    ; $6F23: $FF
    rst RST_38                                    ; $6F24: $FF
    rst RST_38                                    ; $6F25: $FF
    rst RST_38                                    ; $6F26: $FF
    rst RST_38                                    ; $6F27: $FF
    rst RST_38                                    ; $6F28: $FF
    rst RST_38                                    ; $6F29: $FF
    rst RST_38                                    ; $6F2A: $FF
    rst RST_38                                    ; $6F2B: $FF
    rst RST_38                                    ; $6F2C: $FF
    rst RST_38                                    ; $6F2D: $FF
    rst RST_38                                    ; $6F2E: $FF
    rst RST_38                                    ; $6F2F: $FF
    rst RST_38                                    ; $6F30: $FF
    rst RST_38                                    ; $6F31: $FF
    rst RST_38                                    ; $6F32: $FF
    rst RST_38                                    ; $6F33: $FF
    rst RST_38                                    ; $6F34: $FF
    rst RST_38                                    ; $6F35: $FF
    rst RST_38                                    ; $6F36: $FF
    rst RST_38                                    ; $6F37: $FF
    rst RST_38                                    ; $6F38: $FF
    rst RST_38                                    ; $6F39: $FF
    rst RST_38                                    ; $6F3A: $FF
    rst RST_38                                    ; $6F3B: $FF
    rst RST_38                                    ; $6F3C: $FF
    rst RST_38                                    ; $6F3D: $FF
    rst RST_38                                    ; $6F3E: $FF
    rst RST_38                                    ; $6F3F: $FF
    rst RST_38                                    ; $6F40: $FF
    rst RST_38                                    ; $6F41: $FF
    rst RST_38                                    ; $6F42: $FF
    rst RST_38                                    ; $6F43: $FF
    rst RST_38                                    ; $6F44: $FF
    rst RST_38                                    ; $6F45: $FF
    rst RST_38                                    ; $6F46: $FF
    rst RST_38                                    ; $6F47: $FF
    rst RST_38                                    ; $6F48: $FF
    rst RST_38                                    ; $6F49: $FF
    rst RST_38                                    ; $6F4A: $FF
    rst RST_38                                    ; $6F4B: $FF
    rst RST_38                                    ; $6F4C: $FF
    rst RST_38                                    ; $6F4D: $FF
    rst RST_38                                    ; $6F4E: $FF
    rst RST_38                                    ; $6F4F: $FF
    rst RST_38                                    ; $6F50: $FF
    rst RST_38                                    ; $6F51: $FF
    rst RST_38                                    ; $6F52: $FF
    rst RST_38                                    ; $6F53: $FF
    rst RST_38                                    ; $6F54: $FF
    rst RST_38                                    ; $6F55: $FF
    rst RST_38                                    ; $6F56: $FF
    rst RST_38                                    ; $6F57: $FF
    rst RST_38                                    ; $6F58: $FF
    rst RST_38                                    ; $6F59: $FF
    rst RST_38                                    ; $6F5A: $FF
    rst RST_38                                    ; $6F5B: $FF
    rst RST_38                                    ; $6F5C: $FF
    rst RST_38                                    ; $6F5D: $FF
    rst RST_38                                    ; $6F5E: $FF
    rst RST_38                                    ; $6F5F: $FF
    rst RST_38                                    ; $6F60: $FF
    rst RST_38                                    ; $6F61: $FF
    rst RST_38                                    ; $6F62: $FF
    rst RST_38                                    ; $6F63: $FF
    rst RST_38                                    ; $6F64: $FF
    rst RST_38                                    ; $6F65: $FF
    rst RST_38                                    ; $6F66: $FF
    rst RST_38                                    ; $6F67: $FF
    rst RST_38                                    ; $6F68: $FF
    rst RST_38                                    ; $6F69: $FF
    rst RST_38                                    ; $6F6A: $FF
    rst RST_38                                    ; $6F6B: $FF
    rst RST_38                                    ; $6F6C: $FF
    rst RST_38                                    ; $6F6D: $FF
    rst RST_38                                    ; $6F6E: $FF
    rst RST_38                                    ; $6F6F: $FF
    rst RST_38                                    ; $6F70: $FF
    rst RST_38                                    ; $6F71: $FF
    rst RST_38                                    ; $6F72: $FF
    rst RST_38                                    ; $6F73: $FF
    rst RST_38                                    ; $6F74: $FF
    rst RST_38                                    ; $6F75: $FF
    rst RST_38                                    ; $6F76: $FF
    rst RST_38                                    ; $6F77: $FF
    rst RST_38                                    ; $6F78: $FF
    rst RST_38                                    ; $6F79: $FF
    rst RST_38                                    ; $6F7A: $FF
    rst RST_38                                    ; $6F7B: $FF
    rst RST_38                                    ; $6F7C: $FF
    rst RST_38                                    ; $6F7D: $FF
    rst RST_38                                    ; $6F7E: $FF
    rst RST_38                                    ; $6F7F: $FF
    rst RST_38                                    ; $6F80: $FF
    rst RST_38                                    ; $6F81: $FF
    rst RST_38                                    ; $6F82: $FF
    rst RST_38                                    ; $6F83: $FF
    rst RST_38                                    ; $6F84: $FF
    rst RST_38                                    ; $6F85: $FF
    rst RST_38                                    ; $6F86: $FF
    rst RST_38                                    ; $6F87: $FF
    rst RST_38                                    ; $6F88: $FF
    rst RST_38                                    ; $6F89: $FF
    rst RST_38                                    ; $6F8A: $FF
    rst RST_38                                    ; $6F8B: $FF
    rst RST_38                                    ; $6F8C: $FF
    rst RST_38                                    ; $6F8D: $FF
    rst RST_38                                    ; $6F8E: $FF
    rst RST_38                                    ; $6F8F: $FF
    rst RST_38                                    ; $6F90: $FF
    rst RST_38                                    ; $6F91: $FF
    rst RST_38                                    ; $6F92: $FF
    rst RST_38                                    ; $6F93: $FF
    rst RST_38                                    ; $6F94: $FF
    rst RST_38                                    ; $6F95: $FF
    rst RST_38                                    ; $6F96: $FF
    rst RST_38                                    ; $6F97: $FF
    rst RST_38                                    ; $6F98: $FF
    rst RST_38                                    ; $6F99: $FF
    rst RST_38                                    ; $6F9A: $FF
    rst RST_38                                    ; $6F9B: $FF
    rst RST_38                                    ; $6F9C: $FF
    rst RST_38                                    ; $6F9D: $FF
    rst RST_38                                    ; $6F9E: $FF
    rst RST_38                                    ; $6F9F: $FF
    rst RST_38                                    ; $6FA0: $FF
    rst RST_38                                    ; $6FA1: $FF
    rst RST_38                                    ; $6FA2: $FF
    rst RST_38                                    ; $6FA3: $FF
    rst RST_38                                    ; $6FA4: $FF
    rst RST_38                                    ; $6FA5: $FF
    rst RST_38                                    ; $6FA6: $FF
    rst RST_38                                    ; $6FA7: $FF
    rst RST_38                                    ; $6FA8: $FF
    rst RST_38                                    ; $6FA9: $FF
    rst RST_38                                    ; $6FAA: $FF
    rst RST_38                                    ; $6FAB: $FF
    rst RST_38                                    ; $6FAC: $FF
    rst RST_38                                    ; $6FAD: $FF
    rst RST_38                                    ; $6FAE: $FF
    rst RST_38                                    ; $6FAF: $FF
    rst RST_38                                    ; $6FB0: $FF
    rst RST_38                                    ; $6FB1: $FF
    rst RST_38                                    ; $6FB2: $FF
    rst RST_38                                    ; $6FB3: $FF
    rst RST_38                                    ; $6FB4: $FF
    rst RST_38                                    ; $6FB5: $FF
    rst RST_38                                    ; $6FB6: $FF
    rst RST_38                                    ; $6FB7: $FF
    rst RST_38                                    ; $6FB8: $FF
    rst RST_38                                    ; $6FB9: $FF
    rst RST_38                                    ; $6FBA: $FF
    rst RST_38                                    ; $6FBB: $FF
    rst RST_38                                    ; $6FBC: $FF
    rst RST_38                                    ; $6FBD: $FF
    rst RST_38                                    ; $6FBE: $FF
    rst RST_38                                    ; $6FBF: $FF
    rst RST_38                                    ; $6FC0: $FF
    rst RST_38                                    ; $6FC1: $FF
    rst RST_38                                    ; $6FC2: $FF
    rst RST_38                                    ; $6FC3: $FF
    rst RST_38                                    ; $6FC4: $FF
    rst RST_38                                    ; $6FC5: $FF
    rst RST_38                                    ; $6FC6: $FF
    rst RST_38                                    ; $6FC7: $FF
    rst RST_38                                    ; $6FC8: $FF
    rst RST_38                                    ; $6FC9: $FF
    rst RST_38                                    ; $6FCA: $FF
    rst RST_38                                    ; $6FCB: $FF
    rst RST_38                                    ; $6FCC: $FF
    rst RST_38                                    ; $6FCD: $FF
    rst RST_38                                    ; $6FCE: $FF
    rst RST_38                                    ; $6FCF: $FF
    rst RST_38                                    ; $6FD0: $FF
    rst RST_38                                    ; $6FD1: $FF
    rst RST_38                                    ; $6FD2: $FF
    rst RST_38                                    ; $6FD3: $FF
    rst RST_38                                    ; $6FD4: $FF
    rst RST_38                                    ; $6FD5: $FF
    rst RST_38                                    ; $6FD6: $FF
    rst RST_38                                    ; $6FD7: $FF
    rst RST_38                                    ; $6FD8: $FF
    rst RST_38                                    ; $6FD9: $FF
    rst RST_38                                    ; $6FDA: $FF
    rst RST_38                                    ; $6FDB: $FF
    rst RST_38                                    ; $6FDC: $FF
    rst RST_38                                    ; $6FDD: $FF
    rst RST_38                                    ; $6FDE: $FF
    rst RST_38                                    ; $6FDF: $FF
    rst RST_38                                    ; $6FE0: $FF
    rst RST_38                                    ; $6FE1: $FF
    rst RST_38                                    ; $6FE2: $FF
    rst RST_38                                    ; $6FE3: $FF
    rst RST_38                                    ; $6FE4: $FF
    rst RST_38                                    ; $6FE5: $FF
    rst RST_38                                    ; $6FE6: $FF
    rst RST_38                                    ; $6FE7: $FF
    rst RST_38                                    ; $6FE8: $FF
    rst RST_38                                    ; $6FE9: $FF
    rst RST_38                                    ; $6FEA: $FF
    rst RST_38                                    ; $6FEB: $FF
    rst RST_38                                    ; $6FEC: $FF
    rst RST_38                                    ; $6FED: $FF
    rst RST_38                                    ; $6FEE: $FF
    rst RST_38                                    ; $6FEF: $FF
    rst RST_38                                    ; $6FF0: $FF
    rst RST_38                                    ; $6FF1: $FF
    rst RST_38                                    ; $6FF2: $FF
    rst RST_38                                    ; $6FF3: $FF
    rst RST_38                                    ; $6FF4: $FF
    rst RST_38                                    ; $6FF5: $FF
    rst RST_38                                    ; $6FF6: $FF
    rst RST_38                                    ; $6FF7: $FF
    rst RST_38                                    ; $6FF8: $FF
    rst RST_38                                    ; $6FF9: $FF
    rst RST_38                                    ; $6FFA: $FF
    rst RST_38                                    ; $6FFB: $FF
    rst RST_38                                    ; $6FFC: $FF
    rst RST_38                                    ; $6FFD: $FF
    rst RST_38                                    ; $6FFE: $FF
    rst RST_38                                    ; $6FFF: $FF
    rst RST_38                                    ; $7000: $FF
    rst RST_38                                    ; $7001: $FF
    rst RST_38                                    ; $7002: $FF
    rst RST_38                                    ; $7003: $FF
    rst RST_38                                    ; $7004: $FF
    rst RST_38                                    ; $7005: $FF
    rst RST_38                                    ; $7006: $FF
    rst RST_38                                    ; $7007: $FF
    rst RST_38                                    ; $7008: $FF
    rst RST_38                                    ; $7009: $FF
    rst RST_38                                    ; $700A: $FF
    rst RST_38                                    ; $700B: $FF
    rst RST_38                                    ; $700C: $FF
    rst RST_38                                    ; $700D: $FF
    rst RST_38                                    ; $700E: $FF
    rst RST_38                                    ; $700F: $FF
    rst RST_38                                    ; $7010: $FF
    rst RST_38                                    ; $7011: $FF
    rst RST_38                                    ; $7012: $FF
    rst RST_38                                    ; $7013: $FF
    rst RST_38                                    ; $7014: $FF
    rst RST_38                                    ; $7015: $FF
    rst RST_38                                    ; $7016: $FF
    rst RST_38                                    ; $7017: $FF
    rst RST_38                                    ; $7018: $FF
    rst RST_38                                    ; $7019: $FF
    rst RST_38                                    ; $701A: $FF
    rst RST_38                                    ; $701B: $FF
    rst RST_38                                    ; $701C: $FF
    rst RST_38                                    ; $701D: $FF
    rst RST_38                                    ; $701E: $FF
    rst RST_38                                    ; $701F: $FF
    rst RST_38                                    ; $7020: $FF
    rst RST_38                                    ; $7021: $FF
    rst RST_38                                    ; $7022: $FF
    rst RST_38                                    ; $7023: $FF
    rst RST_38                                    ; $7024: $FF
    rst RST_38                                    ; $7025: $FF
    rst RST_38                                    ; $7026: $FF
    rst RST_38                                    ; $7027: $FF
    rst RST_38                                    ; $7028: $FF
    rst RST_38                                    ; $7029: $FF
    rst RST_38                                    ; $702A: $FF
    rst RST_38                                    ; $702B: $FF
    rst RST_38                                    ; $702C: $FF
    rst RST_38                                    ; $702D: $FF
    rst RST_38                                    ; $702E: $FF
    rst RST_38                                    ; $702F: $FF
    rst RST_38                                    ; $7030: $FF
    rst RST_38                                    ; $7031: $FF
    rst RST_38                                    ; $7032: $FF
    rst RST_38                                    ; $7033: $FF
    rst RST_38                                    ; $7034: $FF
    rst RST_38                                    ; $7035: $FF
    rst RST_38                                    ; $7036: $FF
    rst RST_38                                    ; $7037: $FF
    rst RST_38                                    ; $7038: $FF
    rst RST_38                                    ; $7039: $FF
    rst RST_38                                    ; $703A: $FF
    rst RST_38                                    ; $703B: $FF
    rst RST_38                                    ; $703C: $FF
    rst RST_38                                    ; $703D: $FF
    rst RST_38                                    ; $703E: $FF
    rst RST_38                                    ; $703F: $FF
    rst RST_38                                    ; $7040: $FF
    rst RST_38                                    ; $7041: $FF
    rst RST_38                                    ; $7042: $FF
    rst RST_38                                    ; $7043: $FF
    rst RST_38                                    ; $7044: $FF
    rst RST_38                                    ; $7045: $FF
    rst RST_38                                    ; $7046: $FF
    rst RST_38                                    ; $7047: $FF
    rst RST_38                                    ; $7048: $FF
    rst RST_38                                    ; $7049: $FF
    rst RST_38                                    ; $704A: $FF
    rst RST_38                                    ; $704B: $FF
    rst RST_38                                    ; $704C: $FF
    rst RST_38                                    ; $704D: $FF
    rst RST_38                                    ; $704E: $FF
    rst RST_38                                    ; $704F: $FF
    rst RST_38                                    ; $7050: $FF
    rst RST_38                                    ; $7051: $FF
    rst RST_38                                    ; $7052: $FF
    rst RST_38                                    ; $7053: $FF
    rst RST_38                                    ; $7054: $FF
    rst RST_38                                    ; $7055: $FF
    rst RST_38                                    ; $7056: $FF
    rst RST_38                                    ; $7057: $FF
    rst RST_38                                    ; $7058: $FF
    rst RST_38                                    ; $7059: $FF
    rst RST_38                                    ; $705A: $FF
    rst RST_38                                    ; $705B: $FF
    rst RST_38                                    ; $705C: $FF
    rst RST_38                                    ; $705D: $FF
    rst RST_38                                    ; $705E: $FF
    rst RST_38                                    ; $705F: $FF
    rst RST_38                                    ; $7060: $FF
    rst RST_38                                    ; $7061: $FF
    rst RST_38                                    ; $7062: $FF
    rst RST_38                                    ; $7063: $FF
    rst RST_38                                    ; $7064: $FF
    rst RST_38                                    ; $7065: $FF
    rst RST_38                                    ; $7066: $FF
    rst RST_38                                    ; $7067: $FF
    rst RST_38                                    ; $7068: $FF
    rst RST_38                                    ; $7069: $FF
    rst RST_38                                    ; $706A: $FF
    rst RST_38                                    ; $706B: $FF
    rst RST_38                                    ; $706C: $FF
    rst RST_38                                    ; $706D: $FF
    rst RST_38                                    ; $706E: $FF
    rst RST_38                                    ; $706F: $FF
    rst RST_38                                    ; $7070: $FF
    rst RST_38                                    ; $7071: $FF
    rst RST_38                                    ; $7072: $FF
    rst RST_38                                    ; $7073: $FF
    rst RST_38                                    ; $7074: $FF
    rst RST_38                                    ; $7075: $FF
    rst RST_38                                    ; $7076: $FF
    rst RST_38                                    ; $7077: $FF
    rst RST_38                                    ; $7078: $FF
    rst RST_38                                    ; $7079: $FF
    rst RST_38                                    ; $707A: $FF
    rst RST_38                                    ; $707B: $FF
    rst RST_38                                    ; $707C: $FF
    rst RST_38                                    ; $707D: $FF
    rst RST_38                                    ; $707E: $FF
    rst RST_38                                    ; $707F: $FF
    rst RST_38                                    ; $7080: $FF
    rst RST_38                                    ; $7081: $FF
    rst RST_38                                    ; $7082: $FF
    rst RST_38                                    ; $7083: $FF
    rst RST_38                                    ; $7084: $FF
    rst RST_38                                    ; $7085: $FF
    rst RST_38                                    ; $7086: $FF
    rst RST_38                                    ; $7087: $FF
    rst RST_38                                    ; $7088: $FF
    rst RST_38                                    ; $7089: $FF
    rst RST_38                                    ; $708A: $FF
    rst RST_38                                    ; $708B: $FF
    rst RST_38                                    ; $708C: $FF
    rst RST_38                                    ; $708D: $FF
    rst RST_38                                    ; $708E: $FF
    rst RST_38                                    ; $708F: $FF
    rst RST_38                                    ; $7090: $FF
    rst RST_38                                    ; $7091: $FF
    rst RST_38                                    ; $7092: $FF
    rst RST_38                                    ; $7093: $FF
    rst RST_38                                    ; $7094: $FF
    rst RST_38                                    ; $7095: $FF
    rst RST_38                                    ; $7096: $FF
    rst RST_38                                    ; $7097: $FF
    rst RST_38                                    ; $7098: $FF
    rst RST_38                                    ; $7099: $FF
    rst RST_38                                    ; $709A: $FF
    rst RST_38                                    ; $709B: $FF
    rst RST_38                                    ; $709C: $FF
    rst RST_38                                    ; $709D: $FF
    rst RST_38                                    ; $709E: $FF
    rst RST_38                                    ; $709F: $FF
    rst RST_38                                    ; $70A0: $FF
    rst RST_38                                    ; $70A1: $FF
    rst RST_38                                    ; $70A2: $FF
    rst RST_38                                    ; $70A3: $FF
    rst RST_38                                    ; $70A4: $FF
    rst RST_38                                    ; $70A5: $FF
    rst RST_38                                    ; $70A6: $FF
    rst RST_38                                    ; $70A7: $FF
    rst RST_38                                    ; $70A8: $FF
    rst RST_38                                    ; $70A9: $FF
    rst RST_38                                    ; $70AA: $FF
    rst RST_38                                    ; $70AB: $FF
    rst RST_38                                    ; $70AC: $FF
    rst RST_38                                    ; $70AD: $FF
    rst RST_38                                    ; $70AE: $FF
    rst RST_38                                    ; $70AF: $FF
    rst RST_38                                    ; $70B0: $FF
    rst RST_38                                    ; $70B1: $FF
    rst RST_38                                    ; $70B2: $FF
    rst RST_38                                    ; $70B3: $FF
    rst RST_38                                    ; $70B4: $FF
    rst RST_38                                    ; $70B5: $FF
    rst RST_38                                    ; $70B6: $FF
    rst RST_38                                    ; $70B7: $FF
    rst RST_38                                    ; $70B8: $FF
    rst RST_38                                    ; $70B9: $FF
    rst RST_38                                    ; $70BA: $FF
    rst RST_38                                    ; $70BB: $FF
    rst RST_38                                    ; $70BC: $FF
    rst RST_38                                    ; $70BD: $FF
    rst RST_38                                    ; $70BE: $FF
    rst RST_38                                    ; $70BF: $FF
    rst RST_38                                    ; $70C0: $FF
    rst RST_38                                    ; $70C1: $FF
    rst RST_38                                    ; $70C2: $FF
    rst RST_38                                    ; $70C3: $FF
    rst RST_38                                    ; $70C4: $FF
    rst RST_38                                    ; $70C5: $FF
    rst RST_38                                    ; $70C6: $FF
    rst RST_38                                    ; $70C7: $FF
    rst RST_38                                    ; $70C8: $FF
    rst RST_38                                    ; $70C9: $FF
    rst RST_38                                    ; $70CA: $FF
    rst RST_38                                    ; $70CB: $FF
    rst RST_38                                    ; $70CC: $FF
    rst RST_38                                    ; $70CD: $FF
    rst RST_38                                    ; $70CE: $FF
    rst RST_38                                    ; $70CF: $FF
    rst RST_38                                    ; $70D0: $FF
    rst RST_38                                    ; $70D1: $FF
    rst RST_38                                    ; $70D2: $FF
    rst RST_38                                    ; $70D3: $FF
    rst RST_38                                    ; $70D4: $FF
    rst RST_38                                    ; $70D5: $FF
    rst RST_38                                    ; $70D6: $FF
    rst RST_38                                    ; $70D7: $FF
    rst RST_38                                    ; $70D8: $FF
    rst RST_38                                    ; $70D9: $FF
    rst RST_38                                    ; $70DA: $FF
    rst RST_38                                    ; $70DB: $FF
    rst RST_38                                    ; $70DC: $FF
    rst RST_38                                    ; $70DD: $FF
    rst RST_38                                    ; $70DE: $FF
    rst RST_38                                    ; $70DF: $FF
    rst RST_38                                    ; $70E0: $FF
    rst RST_38                                    ; $70E1: $FF
    rst RST_38                                    ; $70E2: $FF
    rst RST_38                                    ; $70E3: $FF
    rst RST_38                                    ; $70E4: $FF
    rst RST_38                                    ; $70E5: $FF
    rst RST_38                                    ; $70E6: $FF
    rst RST_38                                    ; $70E7: $FF
    rst RST_38                                    ; $70E8: $FF
    rst RST_38                                    ; $70E9: $FF
    rst RST_38                                    ; $70EA: $FF
    rst RST_38                                    ; $70EB: $FF
    rst RST_38                                    ; $70EC: $FF
    rst RST_38                                    ; $70ED: $FF
    rst RST_38                                    ; $70EE: $FF
    rst RST_38                                    ; $70EF: $FF
    rst RST_38                                    ; $70F0: $FF
    rst RST_38                                    ; $70F1: $FF
    rst RST_38                                    ; $70F2: $FF
    rst RST_38                                    ; $70F3: $FF
    rst RST_38                                    ; $70F4: $FF
    rst RST_38                                    ; $70F5: $FF
    rst RST_38                                    ; $70F6: $FF
    rst RST_38                                    ; $70F7: $FF
    rst RST_38                                    ; $70F8: $FF
    rst RST_38                                    ; $70F9: $FF
    rst RST_38                                    ; $70FA: $FF
    rst RST_38                                    ; $70FB: $FF
    rst RST_38                                    ; $70FC: $FF
    rst RST_38                                    ; $70FD: $FF
    rst RST_38                                    ; $70FE: $FF
    rst RST_38                                    ; $70FF: $FF
    rst RST_38                                    ; $7100: $FF
    rst RST_38                                    ; $7101: $FF
    rst RST_38                                    ; $7102: $FF
    rst RST_38                                    ; $7103: $FF
    rst RST_38                                    ; $7104: $FF
    rst RST_38                                    ; $7105: $FF
    rst RST_38                                    ; $7106: $FF
    rst RST_38                                    ; $7107: $FF
    rst RST_38                                    ; $7108: $FF
    rst RST_38                                    ; $7109: $FF
    rst RST_38                                    ; $710A: $FF
    rst RST_38                                    ; $710B: $FF
    rst RST_38                                    ; $710C: $FF
    rst RST_38                                    ; $710D: $FF
    rst RST_38                                    ; $710E: $FF
    rst RST_38                                    ; $710F: $FF
    rst RST_38                                    ; $7110: $FF
    rst RST_38                                    ; $7111: $FF
    rst RST_38                                    ; $7112: $FF
    rst RST_38                                    ; $7113: $FF
    rst RST_38                                    ; $7114: $FF
    rst RST_38                                    ; $7115: $FF
    rst RST_38                                    ; $7116: $FF
    rst RST_38                                    ; $7117: $FF
    rst RST_38                                    ; $7118: $FF
    rst RST_38                                    ; $7119: $FF
    rst RST_38                                    ; $711A: $FF
    rst RST_38                                    ; $711B: $FF
    rst RST_38                                    ; $711C: $FF
    rst RST_38                                    ; $711D: $FF
    rst RST_38                                    ; $711E: $FF
    rst RST_38                                    ; $711F: $FF
    rst RST_38                                    ; $7120: $FF
    rst RST_38                                    ; $7121: $FF
    rst RST_38                                    ; $7122: $FF
    rst RST_38                                    ; $7123: $FF
    rst RST_38                                    ; $7124: $FF
    rst RST_38                                    ; $7125: $FF
    rst RST_38                                    ; $7126: $FF
    rst RST_38                                    ; $7127: $FF
    rst RST_38                                    ; $7128: $FF
    rst RST_38                                    ; $7129: $FF
    rst RST_38                                    ; $712A: $FF
    rst RST_38                                    ; $712B: $FF
    rst RST_38                                    ; $712C: $FF
    rst RST_38                                    ; $712D: $FF
    rst RST_38                                    ; $712E: $FF
    rst RST_38                                    ; $712F: $FF
    rst RST_38                                    ; $7130: $FF
    rst RST_38                                    ; $7131: $FF
    rst RST_38                                    ; $7132: $FF
    rst RST_38                                    ; $7133: $FF
    rst RST_38                                    ; $7134: $FF
    rst RST_38                                    ; $7135: $FF
    rst RST_38                                    ; $7136: $FF
    rst RST_38                                    ; $7137: $FF
    rst RST_38                                    ; $7138: $FF
    rst RST_38                                    ; $7139: $FF
    rst RST_38                                    ; $713A: $FF
    rst RST_38                                    ; $713B: $FF
    rst RST_38                                    ; $713C: $FF
    rst RST_38                                    ; $713D: $FF
    rst RST_38                                    ; $713E: $FF
    rst RST_38                                    ; $713F: $FF
    rst RST_38                                    ; $7140: $FF
    rst RST_38                                    ; $7141: $FF
    rst RST_38                                    ; $7142: $FF
    rst RST_38                                    ; $7143: $FF
    rst RST_38                                    ; $7144: $FF
    rst RST_38                                    ; $7145: $FF
    rst RST_38                                    ; $7146: $FF
    rst RST_38                                    ; $7147: $FF
    rst RST_38                                    ; $7148: $FF
    rst RST_38                                    ; $7149: $FF
    rst RST_38                                    ; $714A: $FF
    rst RST_38                                    ; $714B: $FF
    rst RST_38                                    ; $714C: $FF
    rst RST_38                                    ; $714D: $FF
    rst RST_38                                    ; $714E: $FF
    rst RST_38                                    ; $714F: $FF
    rst RST_38                                    ; $7150: $FF
    rst RST_38                                    ; $7151: $FF
    rst RST_38                                    ; $7152: $FF
    rst RST_38                                    ; $7153: $FF
    rst RST_38                                    ; $7154: $FF
    rst RST_38                                    ; $7155: $FF
    rst RST_38                                    ; $7156: $FF
    rst RST_38                                    ; $7157: $FF
    rst RST_38                                    ; $7158: $FF
    rst RST_38                                    ; $7159: $FF
    rst RST_38                                    ; $715A: $FF
    rst RST_38                                    ; $715B: $FF
    rst RST_38                                    ; $715C: $FF
    rst RST_38                                    ; $715D: $FF
    rst RST_38                                    ; $715E: $FF
    rst RST_38                                    ; $715F: $FF
    rst RST_38                                    ; $7160: $FF
    rst RST_38                                    ; $7161: $FF
    rst RST_38                                    ; $7162: $FF
    rst RST_38                                    ; $7163: $FF
    rst RST_38                                    ; $7164: $FF
    rst RST_38                                    ; $7165: $FF
    rst RST_38                                    ; $7166: $FF
    rst RST_38                                    ; $7167: $FF
    rst RST_38                                    ; $7168: $FF
    rst RST_38                                    ; $7169: $FF
    rst RST_38                                    ; $716A: $FF
    rst RST_38                                    ; $716B: $FF
    rst RST_38                                    ; $716C: $FF
    rst RST_38                                    ; $716D: $FF
    rst RST_38                                    ; $716E: $FF
    rst RST_38                                    ; $716F: $FF
    rst RST_38                                    ; $7170: $FF
    rst RST_38                                    ; $7171: $FF
    rst RST_38                                    ; $7172: $FF
    rst RST_38                                    ; $7173: $FF
    rst RST_38                                    ; $7174: $FF
    rst RST_38                                    ; $7175: $FF
    rst RST_38                                    ; $7176: $FF
    rst RST_38                                    ; $7177: $FF
    rst RST_38                                    ; $7178: $FF
    rst RST_38                                    ; $7179: $FF
    rst RST_38                                    ; $717A: $FF
    rst RST_38                                    ; $717B: $FF
    rst RST_38                                    ; $717C: $FF
    rst RST_38                                    ; $717D: $FF
    rst RST_38                                    ; $717E: $FF
    rst RST_38                                    ; $717F: $FF
    rst RST_38                                    ; $7180: $FF
    rst RST_38                                    ; $7181: $FF
    rst RST_38                                    ; $7182: $FF
    rst RST_38                                    ; $7183: $FF
    rst RST_38                                    ; $7184: $FF
    rst RST_38                                    ; $7185: $FF
    rst RST_38                                    ; $7186: $FF
    rst RST_38                                    ; $7187: $FF
    rst RST_38                                    ; $7188: $FF
    rst RST_38                                    ; $7189: $FF
    rst RST_38                                    ; $718A: $FF
    rst RST_38                                    ; $718B: $FF
    rst RST_38                                    ; $718C: $FF
    rst RST_38                                    ; $718D: $FF
    rst RST_38                                    ; $718E: $FF
    rst RST_38                                    ; $718F: $FF
    rst RST_38                                    ; $7190: $FF
    rst RST_38                                    ; $7191: $FF
    rst RST_38                                    ; $7192: $FF
    rst RST_38                                    ; $7193: $FF
    rst RST_38                                    ; $7194: $FF
    rst RST_38                                    ; $7195: $FF
    rst RST_38                                    ; $7196: $FF
    rst RST_38                                    ; $7197: $FF
    rst RST_38                                    ; $7198: $FF
    rst RST_38                                    ; $7199: $FF
    rst RST_38                                    ; $719A: $FF
    rst RST_38                                    ; $719B: $FF
    rst RST_38                                    ; $719C: $FF
    rst RST_38                                    ; $719D: $FF
    rst RST_38                                    ; $719E: $FF
    rst RST_38                                    ; $719F: $FF
    rst RST_38                                    ; $71A0: $FF
    rst RST_38                                    ; $71A1: $FF
    rst RST_38                                    ; $71A2: $FF
    rst RST_38                                    ; $71A3: $FF
    rst RST_38                                    ; $71A4: $FF
    rst RST_38                                    ; $71A5: $FF
    rst RST_38                                    ; $71A6: $FF
    rst RST_38                                    ; $71A7: $FF
    rst RST_38                                    ; $71A8: $FF
    rst RST_38                                    ; $71A9: $FF
    rst RST_38                                    ; $71AA: $FF
    rst RST_38                                    ; $71AB: $FF
    rst RST_38                                    ; $71AC: $FF
    rst RST_38                                    ; $71AD: $FF
    rst RST_38                                    ; $71AE: $FF
    rst RST_38                                    ; $71AF: $FF
    rst RST_38                                    ; $71B0: $FF
    rst RST_38                                    ; $71B1: $FF
    rst RST_38                                    ; $71B2: $FF
    rst RST_38                                    ; $71B3: $FF
    rst RST_38                                    ; $71B4: $FF
    rst RST_38                                    ; $71B5: $FF
    rst RST_38                                    ; $71B6: $FF
    rst RST_38                                    ; $71B7: $FF
    rst RST_38                                    ; $71B8: $FF
    rst RST_38                                    ; $71B9: $FF
    rst RST_38                                    ; $71BA: $FF
    rst RST_38                                    ; $71BB: $FF
    rst RST_38                                    ; $71BC: $FF
    rst RST_38                                    ; $71BD: $FF
    rst RST_38                                    ; $71BE: $FF
    rst RST_38                                    ; $71BF: $FF
    rst RST_38                                    ; $71C0: $FF
    rst RST_38                                    ; $71C1: $FF
    rst RST_38                                    ; $71C2: $FF
    rst RST_38                                    ; $71C3: $FF
    rst RST_38                                    ; $71C4: $FF
    rst RST_38                                    ; $71C5: $FF
    rst RST_38                                    ; $71C6: $FF
    rst RST_38                                    ; $71C7: $FF
    rst RST_38                                    ; $71C8: $FF
    rst RST_38                                    ; $71C9: $FF
    rst RST_38                                    ; $71CA: $FF
    rst RST_38                                    ; $71CB: $FF
    rst RST_38                                    ; $71CC: $FF
    rst RST_38                                    ; $71CD: $FF
    rst RST_38                                    ; $71CE: $FF
    rst RST_38                                    ; $71CF: $FF
    rst RST_38                                    ; $71D0: $FF
    rst RST_38                                    ; $71D1: $FF
    rst RST_38                                    ; $71D2: $FF
    rst RST_38                                    ; $71D3: $FF
    rst RST_38                                    ; $71D4: $FF
    rst RST_38                                    ; $71D5: $FF
    rst RST_38                                    ; $71D6: $FF
    rst RST_38                                    ; $71D7: $FF
    rst RST_38                                    ; $71D8: $FF
    rst RST_38                                    ; $71D9: $FF
    rst RST_38                                    ; $71DA: $FF
    rst RST_38                                    ; $71DB: $FF
    rst RST_38                                    ; $71DC: $FF
    rst RST_38                                    ; $71DD: $FF
    rst RST_38                                    ; $71DE: $FF
    rst RST_38                                    ; $71DF: $FF
    rst RST_38                                    ; $71E0: $FF
    rst RST_38                                    ; $71E1: $FF
    rst RST_38                                    ; $71E2: $FF
    rst RST_38                                    ; $71E3: $FF
    rst RST_38                                    ; $71E4: $FF
    rst RST_38                                    ; $71E5: $FF
    rst RST_38                                    ; $71E6: $FF
    rst RST_38                                    ; $71E7: $FF
    rst RST_38                                    ; $71E8: $FF
    rst RST_38                                    ; $71E9: $FF
    rst RST_38                                    ; $71EA: $FF
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
    rst RST_38                                    ; $71F8: $FF
    rst RST_38                                    ; $71F9: $FF
    rst RST_38                                    ; $71FA: $FF
    rst RST_38                                    ; $71FB: $FF
    rst RST_38                                    ; $71FC: $FF
    rst RST_38                                    ; $71FD: $FF
    rst RST_38                                    ; $71FE: $FF
    rst RST_38                                    ; $71FF: $FF
    rst RST_38                                    ; $7200: $FF
    rst RST_38                                    ; $7201: $FF
    rst RST_38                                    ; $7202: $FF
    rst RST_38                                    ; $7203: $FF
    rst RST_38                                    ; $7204: $FF
    rst RST_38                                    ; $7205: $FF
    rst RST_38                                    ; $7206: $FF
    rst RST_38                                    ; $7207: $FF
    rst RST_38                                    ; $7208: $FF
    rst RST_38                                    ; $7209: $FF
    rst RST_38                                    ; $720A: $FF
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
    rst RST_38                                    ; $7218: $FF
    rst RST_38                                    ; $7219: $FF
    rst RST_38                                    ; $721A: $FF
    rst RST_38                                    ; $721B: $FF
    rst RST_38                                    ; $721C: $FF
    rst RST_38                                    ; $721D: $FF
    rst RST_38                                    ; $721E: $FF
    rst RST_38                                    ; $721F: $FF
    rst RST_38                                    ; $7220: $FF
    rst RST_38                                    ; $7221: $FF
    rst RST_38                                    ; $7222: $FF
    rst RST_38                                    ; $7223: $FF
    rst RST_38                                    ; $7224: $FF
    rst RST_38                                    ; $7225: $FF
    rst RST_38                                    ; $7226: $FF
    rst RST_38                                    ; $7227: $FF
    rst RST_38                                    ; $7228: $FF
    rst RST_38                                    ; $7229: $FF
    rst RST_38                                    ; $722A: $FF
    rst RST_38                                    ; $722B: $FF
    rst RST_38                                    ; $722C: $FF
    rst RST_38                                    ; $722D: $FF
    rst RST_38                                    ; $722E: $FF
    rst RST_38                                    ; $722F: $FF
    rst RST_38                                    ; $7230: $FF
    rst RST_38                                    ; $7231: $FF
    rst RST_38                                    ; $7232: $FF
    rst RST_38                                    ; $7233: $FF
    rst RST_38                                    ; $7234: $FF
    rst RST_38                                    ; $7235: $FF
    rst RST_38                                    ; $7236: $FF
    rst RST_38                                    ; $7237: $FF
    rst RST_38                                    ; $7238: $FF
    rst RST_38                                    ; $7239: $FF
    rst RST_38                                    ; $723A: $FF
    rst RST_38                                    ; $723B: $FF
    rst RST_38                                    ; $723C: $FF
    rst RST_38                                    ; $723D: $FF
    rst RST_38                                    ; $723E: $FF
    rst RST_38                                    ; $723F: $FF
    rst RST_38                                    ; $7240: $FF
    rst RST_38                                    ; $7241: $FF
    rst RST_38                                    ; $7242: $FF
    rst RST_38                                    ; $7243: $FF
    rst RST_38                                    ; $7244: $FF
    rst RST_38                                    ; $7245: $FF
    rst RST_38                                    ; $7246: $FF
    rst RST_38                                    ; $7247: $FF
    rst RST_38                                    ; $7248: $FF
    rst RST_38                                    ; $7249: $FF
    rst RST_38                                    ; $724A: $FF
    rst RST_38                                    ; $724B: $FF
    rst RST_38                                    ; $724C: $FF
    rst RST_38                                    ; $724D: $FF
    rst RST_38                                    ; $724E: $FF
    rst RST_38                                    ; $724F: $FF
    rst RST_38                                    ; $7250: $FF
    rst RST_38                                    ; $7251: $FF
    rst RST_38                                    ; $7252: $FF
    rst RST_38                                    ; $7253: $FF
    rst RST_38                                    ; $7254: $FF
    rst RST_38                                    ; $7255: $FF
    rst RST_38                                    ; $7256: $FF
    rst RST_38                                    ; $7257: $FF
    rst RST_38                                    ; $7258: $FF
    rst RST_38                                    ; $7259: $FF
    rst RST_38                                    ; $725A: $FF
    rst RST_38                                    ; $725B: $FF
    rst RST_38                                    ; $725C: $FF
    rst RST_38                                    ; $725D: $FF
    rst RST_38                                    ; $725E: $FF
    rst RST_38                                    ; $725F: $FF
    rst RST_38                                    ; $7260: $FF
    rst RST_38                                    ; $7261: $FF
    rst RST_38                                    ; $7262: $FF
    rst RST_38                                    ; $7263: $FF
    rst RST_38                                    ; $7264: $FF
    rst RST_38                                    ; $7265: $FF
    rst RST_38                                    ; $7266: $FF
    rst RST_38                                    ; $7267: $FF
    rst RST_38                                    ; $7268: $FF
    rst RST_38                                    ; $7269: $FF
    rst RST_38                                    ; $726A: $FF
    rst RST_38                                    ; $726B: $FF
    rst RST_38                                    ; $726C: $FF
    rst RST_38                                    ; $726D: $FF
    rst RST_38                                    ; $726E: $FF
    rst RST_38                                    ; $726F: $FF
    rst RST_38                                    ; $7270: $FF
    rst RST_38                                    ; $7271: $FF
    rst RST_38                                    ; $7272: $FF
    rst RST_38                                    ; $7273: $FF
    rst RST_38                                    ; $7274: $FF
    rst RST_38                                    ; $7275: $FF
    rst RST_38                                    ; $7276: $FF
    rst RST_38                                    ; $7277: $FF
    rst RST_38                                    ; $7278: $FF
    rst RST_38                                    ; $7279: $FF
    rst RST_38                                    ; $727A: $FF
    rst RST_38                                    ; $727B: $FF
    rst RST_38                                    ; $727C: $FF
    rst RST_38                                    ; $727D: $FF
    rst RST_38                                    ; $727E: $FF
    rst RST_38                                    ; $727F: $FF
    rst RST_38                                    ; $7280: $FF
    rst RST_38                                    ; $7281: $FF
    rst RST_38                                    ; $7282: $FF
    rst RST_38                                    ; $7283: $FF
    rst RST_38                                    ; $7284: $FF
    rst RST_38                                    ; $7285: $FF
    rst RST_38                                    ; $7286: $FF
    rst RST_38                                    ; $7287: $FF
    rst RST_38                                    ; $7288: $FF
    rst RST_38                                    ; $7289: $FF
    rst RST_38                                    ; $728A: $FF
    rst RST_38                                    ; $728B: $FF
    rst RST_38                                    ; $728C: $FF
    rst RST_38                                    ; $728D: $FF
    rst RST_38                                    ; $728E: $FF
    rst RST_38                                    ; $728F: $FF
    rst RST_38                                    ; $7290: $FF
    rst RST_38                                    ; $7291: $FF
    rst RST_38                                    ; $7292: $FF
    rst RST_38                                    ; $7293: $FF
    rst RST_38                                    ; $7294: $FF
    rst RST_38                                    ; $7295: $FF
    rst RST_38                                    ; $7296: $FF
    rst RST_38                                    ; $7297: $FF
    rst RST_38                                    ; $7298: $FF
    rst RST_38                                    ; $7299: $FF
    rst RST_38                                    ; $729A: $FF
    rst RST_38                                    ; $729B: $FF
    rst RST_38                                    ; $729C: $FF
    rst RST_38                                    ; $729D: $FF
    rst RST_38                                    ; $729E: $FF
    rst RST_38                                    ; $729F: $FF
    rst RST_38                                    ; $72A0: $FF
    rst RST_38                                    ; $72A1: $FF
    rst RST_38                                    ; $72A2: $FF
    rst RST_38                                    ; $72A3: $FF
    rst RST_38                                    ; $72A4: $FF
    rst RST_38                                    ; $72A5: $FF
    rst RST_38                                    ; $72A6: $FF
    rst RST_38                                    ; $72A7: $FF
    rst RST_38                                    ; $72A8: $FF
    rst RST_38                                    ; $72A9: $FF
    rst RST_38                                    ; $72AA: $FF
    rst RST_38                                    ; $72AB: $FF
    rst RST_38                                    ; $72AC: $FF
    rst RST_38                                    ; $72AD: $FF
    rst RST_38                                    ; $72AE: $FF
    rst RST_38                                    ; $72AF: $FF
    rst RST_38                                    ; $72B0: $FF
    rst RST_38                                    ; $72B1: $FF
    rst RST_38                                    ; $72B2: $FF
    rst RST_38                                    ; $72B3: $FF
    rst RST_38                                    ; $72B4: $FF
    rst RST_38                                    ; $72B5: $FF
    rst RST_38                                    ; $72B6: $FF
    rst RST_38                                    ; $72B7: $FF
    rst RST_38                                    ; $72B8: $FF
    rst RST_38                                    ; $72B9: $FF
    rst RST_38                                    ; $72BA: $FF
    rst RST_38                                    ; $72BB: $FF
    rst RST_38                                    ; $72BC: $FF
    rst RST_38                                    ; $72BD: $FF
    rst RST_38                                    ; $72BE: $FF
    rst RST_38                                    ; $72BF: $FF
    rst RST_38                                    ; $72C0: $FF
    rst RST_38                                    ; $72C1: $FF
    rst RST_38                                    ; $72C2: $FF
    rst RST_38                                    ; $72C3: $FF
    rst RST_38                                    ; $72C4: $FF
    rst RST_38                                    ; $72C5: $FF
    rst RST_38                                    ; $72C6: $FF
    rst RST_38                                    ; $72C7: $FF
    rst RST_38                                    ; $72C8: $FF
    rst RST_38                                    ; $72C9: $FF
    rst RST_38                                    ; $72CA: $FF
    rst RST_38                                    ; $72CB: $FF
    rst RST_38                                    ; $72CC: $FF
    rst RST_38                                    ; $72CD: $FF
    rst RST_38                                    ; $72CE: $FF
    rst RST_38                                    ; $72CF: $FF
    rst RST_38                                    ; $72D0: $FF
    rst RST_38                                    ; $72D1: $FF
    rst RST_38                                    ; $72D2: $FF
    rst RST_38                                    ; $72D3: $FF
    rst RST_38                                    ; $72D4: $FF
    rst RST_38                                    ; $72D5: $FF
    rst RST_38                                    ; $72D6: $FF
    rst RST_38                                    ; $72D7: $FF
    rst RST_38                                    ; $72D8: $FF
    rst RST_38                                    ; $72D9: $FF
    rst RST_38                                    ; $72DA: $FF
    rst RST_38                                    ; $72DB: $FF
    rst RST_38                                    ; $72DC: $FF
    rst RST_38                                    ; $72DD: $FF
    rst RST_38                                    ; $72DE: $FF
    rst RST_38                                    ; $72DF: $FF
    rst RST_38                                    ; $72E0: $FF
    rst RST_38                                    ; $72E1: $FF
    rst RST_38                                    ; $72E2: $FF
    rst RST_38                                    ; $72E3: $FF
    rst RST_38                                    ; $72E4: $FF
    rst RST_38                                    ; $72E5: $FF
    rst RST_38                                    ; $72E6: $FF
    rst RST_38                                    ; $72E7: $FF
    rst RST_38                                    ; $72E8: $FF
    rst RST_38                                    ; $72E9: $FF
    rst RST_38                                    ; $72EA: $FF
    rst RST_38                                    ; $72EB: $FF
    rst RST_38                                    ; $72EC: $FF
    rst RST_38                                    ; $72ED: $FF
    rst RST_38                                    ; $72EE: $FF
    rst RST_38                                    ; $72EF: $FF
    rst RST_38                                    ; $72F0: $FF
    rst RST_38                                    ; $72F1: $FF
    rst RST_38                                    ; $72F2: $FF
    rst RST_38                                    ; $72F3: $FF
    rst RST_38                                    ; $72F4: $FF
    rst RST_38                                    ; $72F5: $FF
    rst RST_38                                    ; $72F6: $FF
    rst RST_38                                    ; $72F7: $FF
    rst RST_38                                    ; $72F8: $FF
    rst RST_38                                    ; $72F9: $FF
    rst RST_38                                    ; $72FA: $FF
    rst RST_38                                    ; $72FB: $FF
    rst RST_38                                    ; $72FC: $FF
    rst RST_38                                    ; $72FD: $FF
    rst RST_38                                    ; $72FE: $FF

Call_011_72FF:
    rst RST_38                                    ; $72FF: $FF
    rst RST_38                                    ; $7300: $FF
    rst RST_38                                    ; $7301: $FF
    rst RST_38                                    ; $7302: $FF
    rst RST_38                                    ; $7303: $FF
    rst RST_38                                    ; $7304: $FF
    rst RST_38                                    ; $7305: $FF
    rst RST_38                                    ; $7306: $FF
    rst RST_38                                    ; $7307: $FF
    rst RST_38                                    ; $7308: $FF
    rst RST_38                                    ; $7309: $FF
    rst RST_38                                    ; $730A: $FF
    rst RST_38                                    ; $730B: $FF
    rst RST_38                                    ; $730C: $FF
    rst RST_38                                    ; $730D: $FF
    rst RST_38                                    ; $730E: $FF
    rst RST_38                                    ; $730F: $FF
    rst RST_38                                    ; $7310: $FF
    rst RST_38                                    ; $7311: $FF
    rst RST_38                                    ; $7312: $FF
    rst RST_38                                    ; $7313: $FF
    rst RST_38                                    ; $7314: $FF
    rst RST_38                                    ; $7315: $FF
    rst RST_38                                    ; $7316: $FF
    rst RST_38                                    ; $7317: $FF
    rst RST_38                                    ; $7318: $FF
    rst RST_38                                    ; $7319: $FF
    rst RST_38                                    ; $731A: $FF
    rst RST_38                                    ; $731B: $FF
    rst RST_38                                    ; $731C: $FF
    rst RST_38                                    ; $731D: $FF
    rst RST_38                                    ; $731E: $FF
    rst RST_38                                    ; $731F: $FF
    rst RST_38                                    ; $7320: $FF
    rst RST_38                                    ; $7321: $FF
    rst RST_38                                    ; $7322: $FF
    rst RST_38                                    ; $7323: $FF
    rst RST_38                                    ; $7324: $FF
    rst RST_38                                    ; $7325: $FF
    rst RST_38                                    ; $7326: $FF
    rst RST_38                                    ; $7327: $FF
    rst RST_38                                    ; $7328: $FF
    rst RST_38                                    ; $7329: $FF
    rst RST_38                                    ; $732A: $FF
    rst RST_38                                    ; $732B: $FF
    rst RST_38                                    ; $732C: $FF
    rst RST_38                                    ; $732D: $FF
    rst RST_38                                    ; $732E: $FF
    rst RST_38                                    ; $732F: $FF
    rst RST_38                                    ; $7330: $FF
    rst RST_38                                    ; $7331: $FF
    rst RST_38                                    ; $7332: $FF
    rst RST_38                                    ; $7333: $FF
    rst RST_38                                    ; $7334: $FF
    rst RST_38                                    ; $7335: $FF
    rst RST_38                                    ; $7336: $FF
    rst RST_38                                    ; $7337: $FF
    rst RST_38                                    ; $7338: $FF
    rst RST_38                                    ; $7339: $FF
    rst RST_38                                    ; $733A: $FF
    rst RST_38                                    ; $733B: $FF
    rst RST_38                                    ; $733C: $FF
    rst RST_38                                    ; $733D: $FF
    rst RST_38                                    ; $733E: $FF
    rst RST_38                                    ; $733F: $FF
    rst RST_38                                    ; $7340: $FF
    rst RST_38                                    ; $7341: $FF
    rst RST_38                                    ; $7342: $FF
    rst RST_38                                    ; $7343: $FF
    rst RST_38                                    ; $7344: $FF
    rst RST_38                                    ; $7345: $FF
    rst RST_38                                    ; $7346: $FF
    rst RST_38                                    ; $7347: $FF
    rst RST_38                                    ; $7348: $FF
    rst RST_38                                    ; $7349: $FF
    rst RST_38                                    ; $734A: $FF
    rst RST_38                                    ; $734B: $FF
    rst RST_38                                    ; $734C: $FF
    rst RST_38                                    ; $734D: $FF
    rst RST_38                                    ; $734E: $FF
    rst RST_38                                    ; $734F: $FF
    rst RST_38                                    ; $7350: $FF
    rst RST_38                                    ; $7351: $FF
    rst RST_38                                    ; $7352: $FF
    rst RST_38                                    ; $7353: $FF
    rst RST_38                                    ; $7354: $FF
    rst RST_38                                    ; $7355: $FF
    rst RST_38                                    ; $7356: $FF
    rst RST_38                                    ; $7357: $FF
    rst RST_38                                    ; $7358: $FF
    rst RST_38                                    ; $7359: $FF
    rst RST_38                                    ; $735A: $FF
    rst RST_38                                    ; $735B: $FF
    rst RST_38                                    ; $735C: $FF
    rst RST_38                                    ; $735D: $FF
    rst RST_38                                    ; $735E: $FF
    rst RST_38                                    ; $735F: $FF
    rst RST_38                                    ; $7360: $FF
    rst RST_38                                    ; $7361: $FF
    rst RST_38                                    ; $7362: $FF
    rst RST_38                                    ; $7363: $FF
    rst RST_38                                    ; $7364: $FF
    rst RST_38                                    ; $7365: $FF
    rst RST_38                                    ; $7366: $FF
    rst RST_38                                    ; $7367: $FF
    rst RST_38                                    ; $7368: $FF
    rst RST_38                                    ; $7369: $FF
    rst RST_38                                    ; $736A: $FF
    rst RST_38                                    ; $736B: $FF
    rst RST_38                                    ; $736C: $FF
    rst RST_38                                    ; $736D: $FF
    rst RST_38                                    ; $736E: $FF
    rst RST_38                                    ; $736F: $FF
    rst RST_38                                    ; $7370: $FF
    rst RST_38                                    ; $7371: $FF

Call_011_7372:
    rst RST_38                                    ; $7372: $FF
    rst RST_38                                    ; $7373: $FF
    rst RST_38                                    ; $7374: $FF
    rst RST_38                                    ; $7375: $FF
    rst RST_38                                    ; $7376: $FF
    rst RST_38                                    ; $7377: $FF
    rst RST_38                                    ; $7378: $FF
    rst RST_38                                    ; $7379: $FF
    rst RST_38                                    ; $737A: $FF
    rst RST_38                                    ; $737B: $FF
    rst RST_38                                    ; $737C: $FF
    rst RST_38                                    ; $737D: $FF
    rst RST_38                                    ; $737E: $FF
    rst RST_38                                    ; $737F: $FF
    rst RST_38                                    ; $7380: $FF
    rst RST_38                                    ; $7381: $FF
    rst RST_38                                    ; $7382: $FF
    rst RST_38                                    ; $7383: $FF
    rst RST_38                                    ; $7384: $FF
    rst RST_38                                    ; $7385: $FF
    rst RST_38                                    ; $7386: $FF
    rst RST_38                                    ; $7387: $FF
    rst RST_38                                    ; $7388: $FF
    rst RST_38                                    ; $7389: $FF
    rst RST_38                                    ; $738A: $FF
    rst RST_38                                    ; $738B: $FF
    rst RST_38                                    ; $738C: $FF
    rst RST_38                                    ; $738D: $FF
    rst RST_38                                    ; $738E: $FF
    rst RST_38                                    ; $738F: $FF
    rst RST_38                                    ; $7390: $FF
    rst RST_38                                    ; $7391: $FF
    rst RST_38                                    ; $7392: $FF
    rst RST_38                                    ; $7393: $FF
    rst RST_38                                    ; $7394: $FF
    rst RST_38                                    ; $7395: $FF
    rst RST_38                                    ; $7396: $FF
    rst RST_38                                    ; $7397: $FF
    rst RST_38                                    ; $7398: $FF
    rst RST_38                                    ; $7399: $FF
    rst RST_38                                    ; $739A: $FF
    rst RST_38                                    ; $739B: $FF
    rst RST_38                                    ; $739C: $FF
    rst RST_38                                    ; $739D: $FF
    rst RST_38                                    ; $739E: $FF
    rst RST_38                                    ; $739F: $FF
    rst RST_38                                    ; $73A0: $FF
    rst RST_38                                    ; $73A1: $FF
    rst RST_38                                    ; $73A2: $FF
    rst RST_38                                    ; $73A3: $FF
    rst RST_38                                    ; $73A4: $FF
    rst RST_38                                    ; $73A5: $FF
    rst RST_38                                    ; $73A6: $FF
    rst RST_38                                    ; $73A7: $FF
    rst RST_38                                    ; $73A8: $FF
    rst RST_38                                    ; $73A9: $FF
    rst RST_38                                    ; $73AA: $FF
    rst RST_38                                    ; $73AB: $FF
    rst RST_38                                    ; $73AC: $FF
    rst RST_38                                    ; $73AD: $FF
    rst RST_38                                    ; $73AE: $FF
    rst RST_38                                    ; $73AF: $FF
    rst RST_38                                    ; $73B0: $FF
    rst RST_38                                    ; $73B1: $FF
    rst RST_38                                    ; $73B2: $FF
    rst RST_38                                    ; $73B3: $FF
    rst RST_38                                    ; $73B4: $FF
    rst RST_38                                    ; $73B5: $FF
    rst RST_38                                    ; $73B6: $FF
    rst RST_38                                    ; $73B7: $FF
    rst RST_38                                    ; $73B8: $FF
    rst RST_38                                    ; $73B9: $FF
    rst RST_38                                    ; $73BA: $FF
    rst RST_38                                    ; $73BB: $FF
    rst RST_38                                    ; $73BC: $FF
    rst RST_38                                    ; $73BD: $FF
    rst RST_38                                    ; $73BE: $FF
    rst RST_38                                    ; $73BF: $FF
    rst RST_38                                    ; $73C0: $FF
    rst RST_38                                    ; $73C1: $FF
    rst RST_38                                    ; $73C2: $FF
    rst RST_38                                    ; $73C3: $FF
    rst RST_38                                    ; $73C4: $FF
    rst RST_38                                    ; $73C5: $FF
    rst RST_38                                    ; $73C6: $FF
    rst RST_38                                    ; $73C7: $FF
    rst RST_38                                    ; $73C8: $FF
    rst RST_38                                    ; $73C9: $FF
    rst RST_38                                    ; $73CA: $FF
    rst RST_38                                    ; $73CB: $FF
    rst RST_38                                    ; $73CC: $FF
    rst RST_38                                    ; $73CD: $FF
    rst RST_38                                    ; $73CE: $FF
    rst RST_38                                    ; $73CF: $FF
    rst RST_38                                    ; $73D0: $FF
    rst RST_38                                    ; $73D1: $FF
    rst RST_38                                    ; $73D2: $FF
    rst RST_38                                    ; $73D3: $FF
    rst RST_38                                    ; $73D4: $FF
    rst RST_38                                    ; $73D5: $FF
    rst RST_38                                    ; $73D6: $FF
    rst RST_38                                    ; $73D7: $FF
    rst RST_38                                    ; $73D8: $FF
    rst RST_38                                    ; $73D9: $FF
    rst RST_38                                    ; $73DA: $FF
    rst RST_38                                    ; $73DB: $FF
    rst RST_38                                    ; $73DC: $FF
    rst RST_38                                    ; $73DD: $FF
    rst RST_38                                    ; $73DE: $FF
    rst RST_38                                    ; $73DF: $FF
    rst RST_38                                    ; $73E0: $FF
    rst RST_38                                    ; $73E1: $FF
    rst RST_38                                    ; $73E2: $FF
    rst RST_38                                    ; $73E3: $FF
    rst RST_38                                    ; $73E4: $FF
    rst RST_38                                    ; $73E5: $FF
    rst RST_38                                    ; $73E6: $FF
    rst RST_38                                    ; $73E7: $FF
    rst RST_38                                    ; $73E8: $FF
    rst RST_38                                    ; $73E9: $FF
    rst RST_38                                    ; $73EA: $FF
    rst RST_38                                    ; $73EB: $FF
    rst RST_38                                    ; $73EC: $FF
    rst RST_38                                    ; $73ED: $FF
    rst RST_38                                    ; $73EE: $FF
    rst RST_38                                    ; $73EF: $FF
    rst RST_38                                    ; $73F0: $FF
    rst RST_38                                    ; $73F1: $FF
    rst RST_38                                    ; $73F2: $FF
    rst RST_38                                    ; $73F3: $FF
    rst RST_38                                    ; $73F4: $FF
    rst RST_38                                    ; $73F5: $FF
    rst RST_38                                    ; $73F6: $FF
    rst RST_38                                    ; $73F7: $FF
    rst RST_38                                    ; $73F8: $FF
    rst RST_38                                    ; $73F9: $FF
    rst RST_38                                    ; $73FA: $FF
    rst RST_38                                    ; $73FB: $FF
    rst RST_38                                    ; $73FC: $FF
    rst RST_38                                    ; $73FD: $FF
    rst RST_38                                    ; $73FE: $FF

Call_011_73FF:
    rst RST_38                                    ; $73FF: $FF
    rst RST_38                                    ; $7400: $FF
    rst RST_38                                    ; $7401: $FF
    rst RST_38                                    ; $7402: $FF
    rst RST_38                                    ; $7403: $FF
    rst RST_38                                    ; $7404: $FF
    rst RST_38                                    ; $7405: $FF
    rst RST_38                                    ; $7406: $FF
    rst RST_38                                    ; $7407: $FF
    rst RST_38                                    ; $7408: $FF
    rst RST_38                                    ; $7409: $FF
    rst RST_38                                    ; $740A: $FF
    rst RST_38                                    ; $740B: $FF
    rst RST_38                                    ; $740C: $FF
    rst RST_38                                    ; $740D: $FF
    rst RST_38                                    ; $740E: $FF
    rst RST_38                                    ; $740F: $FF
    rst RST_38                                    ; $7410: $FF
    rst RST_38                                    ; $7411: $FF
    rst RST_38                                    ; $7412: $FF
    rst RST_38                                    ; $7413: $FF
    rst RST_38                                    ; $7414: $FF
    rst RST_38                                    ; $7415: $FF
    rst RST_38                                    ; $7416: $FF
    rst RST_38                                    ; $7417: $FF
    rst RST_38                                    ; $7418: $FF
    rst RST_38                                    ; $7419: $FF
    rst RST_38                                    ; $741A: $FF
    rst RST_38                                    ; $741B: $FF
    rst RST_38                                    ; $741C: $FF
    rst RST_38                                    ; $741D: $FF
    rst RST_38                                    ; $741E: $FF
    rst RST_38                                    ; $741F: $FF
    rst RST_38                                    ; $7420: $FF
    rst RST_38                                    ; $7421: $FF
    rst RST_38                                    ; $7422: $FF
    rst RST_38                                    ; $7423: $FF
    rst RST_38                                    ; $7424: $FF
    rst RST_38                                    ; $7425: $FF
    rst RST_38                                    ; $7426: $FF
    rst RST_38                                    ; $7427: $FF
    rst RST_38                                    ; $7428: $FF
    rst RST_38                                    ; $7429: $FF
    rst RST_38                                    ; $742A: $FF
    rst RST_38                                    ; $742B: $FF
    rst RST_38                                    ; $742C: $FF
    rst RST_38                                    ; $742D: $FF
    rst RST_38                                    ; $742E: $FF
    rst RST_38                                    ; $742F: $FF
    rst RST_38                                    ; $7430: $FF
    rst RST_38                                    ; $7431: $FF
    rst RST_38                                    ; $7432: $FF
    rst RST_38                                    ; $7433: $FF
    rst RST_38                                    ; $7434: $FF
    rst RST_38                                    ; $7435: $FF
    rst RST_38                                    ; $7436: $FF
    rst RST_38                                    ; $7437: $FF
    rst RST_38                                    ; $7438: $FF
    rst RST_38                                    ; $7439: $FF
    rst RST_38                                    ; $743A: $FF
    rst RST_38                                    ; $743B: $FF
    rst RST_38                                    ; $743C: $FF
    rst RST_38                                    ; $743D: $FF
    rst RST_38                                    ; $743E: $FF
    rst RST_38                                    ; $743F: $FF
    rst RST_38                                    ; $7440: $FF
    rst RST_38                                    ; $7441: $FF
    rst RST_38                                    ; $7442: $FF
    rst RST_38                                    ; $7443: $FF
    rst RST_38                                    ; $7444: $FF
    rst RST_38                                    ; $7445: $FF
    rst RST_38                                    ; $7446: $FF
    rst RST_38                                    ; $7447: $FF
    rst RST_38                                    ; $7448: $FF
    rst RST_38                                    ; $7449: $FF
    rst RST_38                                    ; $744A: $FF
    rst RST_38                                    ; $744B: $FF
    rst RST_38                                    ; $744C: $FF
    rst RST_38                                    ; $744D: $FF
    rst RST_38                                    ; $744E: $FF
    rst RST_38                                    ; $744F: $FF
    rst RST_38                                    ; $7450: $FF
    rst RST_38                                    ; $7451: $FF
    rst RST_38                                    ; $7452: $FF
    rst RST_38                                    ; $7453: $FF
    rst RST_38                                    ; $7454: $FF
    rst RST_38                                    ; $7455: $FF
    rst RST_38                                    ; $7456: $FF
    rst RST_38                                    ; $7457: $FF
    rst RST_38                                    ; $7458: $FF
    rst RST_38                                    ; $7459: $FF
    rst RST_38                                    ; $745A: $FF
    rst RST_38                                    ; $745B: $FF
    rst RST_38                                    ; $745C: $FF
    rst RST_38                                    ; $745D: $FF
    rst RST_38                                    ; $745E: $FF
    rst RST_38                                    ; $745F: $FF
    rst RST_38                                    ; $7460: $FF
    rst RST_38                                    ; $7461: $FF
    rst RST_38                                    ; $7462: $FF
    rst RST_38                                    ; $7463: $FF
    rst RST_38                                    ; $7464: $FF
    rst RST_38                                    ; $7465: $FF
    rst RST_38                                    ; $7466: $FF
    rst RST_38                                    ; $7467: $FF
    rst RST_38                                    ; $7468: $FF
    rst RST_38                                    ; $7469: $FF
    rst RST_38                                    ; $746A: $FF
    rst RST_38                                    ; $746B: $FF
    rst RST_38                                    ; $746C: $FF
    rst RST_38                                    ; $746D: $FF
    rst RST_38                                    ; $746E: $FF
    rst RST_38                                    ; $746F: $FF
    rst RST_38                                    ; $7470: $FF
    rst RST_38                                    ; $7471: $FF
    rst RST_38                                    ; $7472: $FF
    rst RST_38                                    ; $7473: $FF
    rst RST_38                                    ; $7474: $FF
    rst RST_38                                    ; $7475: $FF
    rst RST_38                                    ; $7476: $FF
    rst RST_38                                    ; $7477: $FF
    rst RST_38                                    ; $7478: $FF
    rst RST_38                                    ; $7479: $FF
    rst RST_38                                    ; $747A: $FF
    rst RST_38                                    ; $747B: $FF
    rst RST_38                                    ; $747C: $FF
    rst RST_38                                    ; $747D: $FF
    rst RST_38                                    ; $747E: $FF
    rst RST_38                                    ; $747F: $FF
    rst RST_38                                    ; $7480: $FF
    rst RST_38                                    ; $7481: $FF
    rst RST_38                                    ; $7482: $FF
    rst RST_38                                    ; $7483: $FF
    rst RST_38                                    ; $7484: $FF
    rst RST_38                                    ; $7485: $FF
    rst RST_38                                    ; $7486: $FF
    rst RST_38                                    ; $7487: $FF
    rst RST_38                                    ; $7488: $FF
    rst RST_38                                    ; $7489: $FF
    rst RST_38                                    ; $748A: $FF
    rst RST_38                                    ; $748B: $FF
    rst RST_38                                    ; $748C: $FF
    rst RST_38                                    ; $748D: $FF
    rst RST_38                                    ; $748E: $FF
    rst RST_38                                    ; $748F: $FF
    rst RST_38                                    ; $7490: $FF
    rst RST_38                                    ; $7491: $FF
    rst RST_38                                    ; $7492: $FF
    rst RST_38                                    ; $7493: $FF
    rst RST_38                                    ; $7494: $FF
    rst RST_38                                    ; $7495: $FF
    rst RST_38                                    ; $7496: $FF
    rst RST_38                                    ; $7497: $FF
    rst RST_38                                    ; $7498: $FF
    rst RST_38                                    ; $7499: $FF
    rst RST_38                                    ; $749A: $FF
    rst RST_38                                    ; $749B: $FF
    rst RST_38                                    ; $749C: $FF
    rst RST_38                                    ; $749D: $FF
    rst RST_38                                    ; $749E: $FF
    rst RST_38                                    ; $749F: $FF
    rst RST_38                                    ; $74A0: $FF
    rst RST_38                                    ; $74A1: $FF
    rst RST_38                                    ; $74A2: $FF
    rst RST_38                                    ; $74A3: $FF
    rst RST_38                                    ; $74A4: $FF
    rst RST_38                                    ; $74A5: $FF
    rst RST_38                                    ; $74A6: $FF
    rst RST_38                                    ; $74A7: $FF
    rst RST_38                                    ; $74A8: $FF
    rst RST_38                                    ; $74A9: $FF
    rst RST_38                                    ; $74AA: $FF
    rst RST_38                                    ; $74AB: $FF
    rst RST_38                                    ; $74AC: $FF
    rst RST_38                                    ; $74AD: $FF
    rst RST_38                                    ; $74AE: $FF
    rst RST_38                                    ; $74AF: $FF
    rst RST_38                                    ; $74B0: $FF
    rst RST_38                                    ; $74B1: $FF
    rst RST_38                                    ; $74B2: $FF
    rst RST_38                                    ; $74B3: $FF
    rst RST_38                                    ; $74B4: $FF
    rst RST_38                                    ; $74B5: $FF
    rst RST_38                                    ; $74B6: $FF
    rst RST_38                                    ; $74B7: $FF
    rst RST_38                                    ; $74B8: $FF
    rst RST_38                                    ; $74B9: $FF
    rst RST_38                                    ; $74BA: $FF
    rst RST_38                                    ; $74BB: $FF
    rst RST_38                                    ; $74BC: $FF
    rst RST_38                                    ; $74BD: $FF
    rst RST_38                                    ; $74BE: $FF
    rst RST_38                                    ; $74BF: $FF
    rst RST_38                                    ; $74C0: $FF
    rst RST_38                                    ; $74C1: $FF
    rst RST_38                                    ; $74C2: $FF
    rst RST_38                                    ; $74C3: $FF
    rst RST_38                                    ; $74C4: $FF
    rst RST_38                                    ; $74C5: $FF
    rst RST_38                                    ; $74C6: $FF
    rst RST_38                                    ; $74C7: $FF
    rst RST_38                                    ; $74C8: $FF
    rst RST_38                                    ; $74C9: $FF
    rst RST_38                                    ; $74CA: $FF
    rst RST_38                                    ; $74CB: $FF
    rst RST_38                                    ; $74CC: $FF
    rst RST_38                                    ; $74CD: $FF
    rst RST_38                                    ; $74CE: $FF
    rst RST_38                                    ; $74CF: $FF
    rst RST_38                                    ; $74D0: $FF
    rst RST_38                                    ; $74D1: $FF
    rst RST_38                                    ; $74D2: $FF
    rst RST_38                                    ; $74D3: $FF
    rst RST_38                                    ; $74D4: $FF
    rst RST_38                                    ; $74D5: $FF
    rst RST_38                                    ; $74D6: $FF
    rst RST_38                                    ; $74D7: $FF
    rst RST_38                                    ; $74D8: $FF
    rst RST_38                                    ; $74D9: $FF
    rst RST_38                                    ; $74DA: $FF
    rst RST_38                                    ; $74DB: $FF
    rst RST_38                                    ; $74DC: $FF
    rst RST_38                                    ; $74DD: $FF
    rst RST_38                                    ; $74DE: $FF
    rst RST_38                                    ; $74DF: $FF
    rst RST_38                                    ; $74E0: $FF
    rst RST_38                                    ; $74E1: $FF
    rst RST_38                                    ; $74E2: $FF
    rst RST_38                                    ; $74E3: $FF
    rst RST_38                                    ; $74E4: $FF
    rst RST_38                                    ; $74E5: $FF
    rst RST_38                                    ; $74E6: $FF
    rst RST_38                                    ; $74E7: $FF
    rst RST_38                                    ; $74E8: $FF
    rst RST_38                                    ; $74E9: $FF
    rst RST_38                                    ; $74EA: $FF
    rst RST_38                                    ; $74EB: $FF
    rst RST_38                                    ; $74EC: $FF
    rst RST_38                                    ; $74ED: $FF
    rst RST_38                                    ; $74EE: $FF
    rst RST_38                                    ; $74EF: $FF
    rst RST_38                                    ; $74F0: $FF
    rst RST_38                                    ; $74F1: $FF
    rst RST_38                                    ; $74F2: $FF
    rst RST_38                                    ; $74F3: $FF
    rst RST_38                                    ; $74F4: $FF
    rst RST_38                                    ; $74F5: $FF
    rst RST_38                                    ; $74F6: $FF
    rst RST_38                                    ; $74F7: $FF
    rst RST_38                                    ; $74F8: $FF
    rst RST_38                                    ; $74F9: $FF
    rst RST_38                                    ; $74FA: $FF
    rst RST_38                                    ; $74FB: $FF
    rst RST_38                                    ; $74FC: $FF
    rst RST_38                                    ; $74FD: $FF
    rst RST_38                                    ; $74FE: $FF
    rst RST_38                                    ; $74FF: $FF
    rst RST_38                                    ; $7500: $FF
    rst RST_38                                    ; $7501: $FF
    rst RST_38                                    ; $7502: $FF
    rst RST_38                                    ; $7503: $FF
    rst RST_38                                    ; $7504: $FF
    rst RST_38                                    ; $7505: $FF
    rst RST_38                                    ; $7506: $FF
    rst RST_38                                    ; $7507: $FF
    rst RST_38                                    ; $7508: $FF
    rst RST_38                                    ; $7509: $FF
    rst RST_38                                    ; $750A: $FF
    rst RST_38                                    ; $750B: $FF
    rst RST_38                                    ; $750C: $FF
    rst RST_38                                    ; $750D: $FF
    rst RST_38                                    ; $750E: $FF
    rst RST_38                                    ; $750F: $FF
    rst RST_38                                    ; $7510: $FF
    rst RST_38                                    ; $7511: $FF
    rst RST_38                                    ; $7512: $FF
    rst RST_38                                    ; $7513: $FF
    rst RST_38                                    ; $7514: $FF
    rst RST_38                                    ; $7515: $FF
    rst RST_38                                    ; $7516: $FF
    rst RST_38                                    ; $7517: $FF
    rst RST_38                                    ; $7518: $FF
    rst RST_38                                    ; $7519: $FF
    rst RST_38                                    ; $751A: $FF
    rst RST_38                                    ; $751B: $FF
    rst RST_38                                    ; $751C: $FF
    rst RST_38                                    ; $751D: $FF
    rst RST_38                                    ; $751E: $FF
    rst RST_38                                    ; $751F: $FF
    rst RST_38                                    ; $7520: $FF
    rst RST_38                                    ; $7521: $FF
    rst RST_38                                    ; $7522: $FF
    rst RST_38                                    ; $7523: $FF
    rst RST_38                                    ; $7524: $FF
    rst RST_38                                    ; $7525: $FF
    rst RST_38                                    ; $7526: $FF
    rst RST_38                                    ; $7527: $FF
    rst RST_38                                    ; $7528: $FF
    rst RST_38                                    ; $7529: $FF
    rst RST_38                                    ; $752A: $FF
    rst RST_38                                    ; $752B: $FF
    rst RST_38                                    ; $752C: $FF
    rst RST_38                                    ; $752D: $FF
    rst RST_38                                    ; $752E: $FF
    rst RST_38                                    ; $752F: $FF
    rst RST_38                                    ; $7530: $FF
    rst RST_38                                    ; $7531: $FF
    rst RST_38                                    ; $7532: $FF
    rst RST_38                                    ; $7533: $FF
    rst RST_38                                    ; $7534: $FF
    rst RST_38                                    ; $7535: $FF
    rst RST_38                                    ; $7536: $FF
    rst RST_38                                    ; $7537: $FF
    rst RST_38                                    ; $7538: $FF
    rst RST_38                                    ; $7539: $FF
    rst RST_38                                    ; $753A: $FF
    rst RST_38                                    ; $753B: $FF
    rst RST_38                                    ; $753C: $FF
    rst RST_38                                    ; $753D: $FF
    rst RST_38                                    ; $753E: $FF
    rst RST_38                                    ; $753F: $FF
    rst RST_38                                    ; $7540: $FF
    rst RST_38                                    ; $7541: $FF
    rst RST_38                                    ; $7542: $FF
    rst RST_38                                    ; $7543: $FF
    rst RST_38                                    ; $7544: $FF
    rst RST_38                                    ; $7545: $FF
    rst RST_38                                    ; $7546: $FF
    rst RST_38                                    ; $7547: $FF
    rst RST_38                                    ; $7548: $FF
    rst RST_38                                    ; $7549: $FF
    rst RST_38                                    ; $754A: $FF
    rst RST_38                                    ; $754B: $FF
    rst RST_38                                    ; $754C: $FF
    rst RST_38                                    ; $754D: $FF
    rst RST_38                                    ; $754E: $FF
    rst RST_38                                    ; $754F: $FF
    rst RST_38                                    ; $7550: $FF
    rst RST_38                                    ; $7551: $FF
    rst RST_38                                    ; $7552: $FF
    rst RST_38                                    ; $7553: $FF
    rst RST_38                                    ; $7554: $FF
    rst RST_38                                    ; $7555: $FF
    rst RST_38                                    ; $7556: $FF
    rst RST_38                                    ; $7557: $FF
    rst RST_38                                    ; $7558: $FF
    rst RST_38                                    ; $7559: $FF
    rst RST_38                                    ; $755A: $FF
    rst RST_38                                    ; $755B: $FF
    rst RST_38                                    ; $755C: $FF
    rst RST_38                                    ; $755D: $FF
    rst RST_38                                    ; $755E: $FF
    rst RST_38                                    ; $755F: $FF
    rst RST_38                                    ; $7560: $FF
    rst RST_38                                    ; $7561: $FF
    rst RST_38                                    ; $7562: $FF
    rst RST_38                                    ; $7563: $FF
    rst RST_38                                    ; $7564: $FF
    rst RST_38                                    ; $7565: $FF
    rst RST_38                                    ; $7566: $FF
    rst RST_38                                    ; $7567: $FF
    rst RST_38                                    ; $7568: $FF
    rst RST_38                                    ; $7569: $FF
    rst RST_38                                    ; $756A: $FF
    rst RST_38                                    ; $756B: $FF
    rst RST_38                                    ; $756C: $FF
    rst RST_38                                    ; $756D: $FF
    rst RST_38                                    ; $756E: $FF
    rst RST_38                                    ; $756F: $FF
    rst RST_38                                    ; $7570: $FF
    rst RST_38                                    ; $7571: $FF
    rst RST_38                                    ; $7572: $FF
    rst RST_38                                    ; $7573: $FF
    rst RST_38                                    ; $7574: $FF
    rst RST_38                                    ; $7575: $FF
    rst RST_38                                    ; $7576: $FF
    rst RST_38                                    ; $7577: $FF
    rst RST_38                                    ; $7578: $FF
    rst RST_38                                    ; $7579: $FF
    rst RST_38                                    ; $757A: $FF
    rst RST_38                                    ; $757B: $FF
    rst RST_38                                    ; $757C: $FF
    rst RST_38                                    ; $757D: $FF
    rst RST_38                                    ; $757E: $FF
    rst RST_38                                    ; $757F: $FF
    rst RST_38                                    ; $7580: $FF
    rst RST_38                                    ; $7581: $FF
    rst RST_38                                    ; $7582: $FF
    rst RST_38                                    ; $7583: $FF
    rst RST_38                                    ; $7584: $FF
    rst RST_38                                    ; $7585: $FF
    rst RST_38                                    ; $7586: $FF
    rst RST_38                                    ; $7587: $FF
    rst RST_38                                    ; $7588: $FF
    rst RST_38                                    ; $7589: $FF
    rst RST_38                                    ; $758A: $FF
    rst RST_38                                    ; $758B: $FF
    rst RST_38                                    ; $758C: $FF
    rst RST_38                                    ; $758D: $FF
    rst RST_38                                    ; $758E: $FF
    rst RST_38                                    ; $758F: $FF
    rst RST_38                                    ; $7590: $FF
    rst RST_38                                    ; $7591: $FF
    rst RST_38                                    ; $7592: $FF
    rst RST_38                                    ; $7593: $FF
    rst RST_38                                    ; $7594: $FF
    rst RST_38                                    ; $7595: $FF
    rst RST_38                                    ; $7596: $FF
    rst RST_38                                    ; $7597: $FF
    rst RST_38                                    ; $7598: $FF
    rst RST_38                                    ; $7599: $FF
    rst RST_38                                    ; $759A: $FF
    rst RST_38                                    ; $759B: $FF
    rst RST_38                                    ; $759C: $FF
    rst RST_38                                    ; $759D: $FF
    rst RST_38                                    ; $759E: $FF
    rst RST_38                                    ; $759F: $FF
    rst RST_38                                    ; $75A0: $FF
    rst RST_38                                    ; $75A1: $FF
    rst RST_38                                    ; $75A2: $FF
    rst RST_38                                    ; $75A3: $FF
    rst RST_38                                    ; $75A4: $FF
    rst RST_38                                    ; $75A5: $FF
    rst RST_38                                    ; $75A6: $FF
    rst RST_38                                    ; $75A7: $FF
    rst RST_38                                    ; $75A8: $FF
    rst RST_38                                    ; $75A9: $FF
    rst RST_38                                    ; $75AA: $FF
    rst RST_38                                    ; $75AB: $FF
    rst RST_38                                    ; $75AC: $FF
    rst RST_38                                    ; $75AD: $FF
    rst RST_38                                    ; $75AE: $FF
    rst RST_38                                    ; $75AF: $FF
    rst RST_38                                    ; $75B0: $FF
    rst RST_38                                    ; $75B1: $FF
    rst RST_38                                    ; $75B2: $FF
    rst RST_38                                    ; $75B3: $FF
    rst RST_38                                    ; $75B4: $FF
    rst RST_38                                    ; $75B5: $FF
    rst RST_38                                    ; $75B6: $FF
    rst RST_38                                    ; $75B7: $FF
    rst RST_38                                    ; $75B8: $FF
    rst RST_38                                    ; $75B9: $FF
    rst RST_38                                    ; $75BA: $FF
    rst RST_38                                    ; $75BB: $FF
    rst RST_38                                    ; $75BC: $FF
    rst RST_38                                    ; $75BD: $FF
    rst RST_38                                    ; $75BE: $FF
    rst RST_38                                    ; $75BF: $FF
    rst RST_38                                    ; $75C0: $FF
    rst RST_38                                    ; $75C1: $FF
    rst RST_38                                    ; $75C2: $FF
    rst RST_38                                    ; $75C3: $FF
    rst RST_38                                    ; $75C4: $FF
    rst RST_38                                    ; $75C5: $FF
    rst RST_38                                    ; $75C6: $FF
    rst RST_38                                    ; $75C7: $FF
    rst RST_38                                    ; $75C8: $FF
    rst RST_38                                    ; $75C9: $FF
    rst RST_38                                    ; $75CA: $FF
    rst RST_38                                    ; $75CB: $FF
    rst RST_38                                    ; $75CC: $FF
    rst RST_38                                    ; $75CD: $FF
    rst RST_38                                    ; $75CE: $FF
    rst RST_38                                    ; $75CF: $FF
    rst RST_38                                    ; $75D0: $FF
    rst RST_38                                    ; $75D1: $FF
    rst RST_38                                    ; $75D2: $FF
    rst RST_38                                    ; $75D3: $FF
    rst RST_38                                    ; $75D4: $FF
    rst RST_38                                    ; $75D5: $FF
    rst RST_38                                    ; $75D6: $FF
    rst RST_38                                    ; $75D7: $FF
    rst RST_38                                    ; $75D8: $FF
    rst RST_38                                    ; $75D9: $FF
    rst RST_38                                    ; $75DA: $FF
    rst RST_38                                    ; $75DB: $FF
    rst RST_38                                    ; $75DC: $FF
    rst RST_38                                    ; $75DD: $FF
    rst RST_38                                    ; $75DE: $FF
    rst RST_38                                    ; $75DF: $FF
    rst RST_38                                    ; $75E0: $FF
    rst RST_38                                    ; $75E1: $FF
    rst RST_38                                    ; $75E2: $FF
    rst RST_38                                    ; $75E3: $FF
    rst RST_38                                    ; $75E4: $FF
    rst RST_38                                    ; $75E5: $FF
    rst RST_38                                    ; $75E6: $FF
    rst RST_38                                    ; $75E7: $FF
    rst RST_38                                    ; $75E8: $FF
    rst RST_38                                    ; $75E9: $FF
    rst RST_38                                    ; $75EA: $FF
    rst RST_38                                    ; $75EB: $FF
    rst RST_38                                    ; $75EC: $FF
    rst RST_38                                    ; $75ED: $FF
    rst RST_38                                    ; $75EE: $FF
    rst RST_38                                    ; $75EF: $FF
    rst RST_38                                    ; $75F0: $FF
    rst RST_38                                    ; $75F1: $FF
    rst RST_38                                    ; $75F2: $FF
    rst RST_38                                    ; $75F3: $FF
    rst RST_38                                    ; $75F4: $FF
    rst RST_38                                    ; $75F5: $FF
    rst RST_38                                    ; $75F6: $FF
    rst RST_38                                    ; $75F7: $FF
    rst RST_38                                    ; $75F8: $FF
    rst RST_38                                    ; $75F9: $FF
    rst RST_38                                    ; $75FA: $FF
    rst RST_38                                    ; $75FB: $FF
    rst RST_38                                    ; $75FC: $FF
    rst RST_38                                    ; $75FD: $FF
    rst RST_38                                    ; $75FE: $FF
    rst RST_38                                    ; $75FF: $FF
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
    rst RST_38                                    ; $760C: $FF
    rst RST_38                                    ; $760D: $FF
    rst RST_38                                    ; $760E: $FF
    rst RST_38                                    ; $760F: $FF
    rst RST_38                                    ; $7610: $FF
    rst RST_38                                    ; $7611: $FF
    rst RST_38                                    ; $7612: $FF
    rst RST_38                                    ; $7613: $FF
    rst RST_38                                    ; $7614: $FF
    rst RST_38                                    ; $7615: $FF
    rst RST_38                                    ; $7616: $FF
    rst RST_38                                    ; $7617: $FF
    rst RST_38                                    ; $7618: $FF
    rst RST_38                                    ; $7619: $FF
    rst RST_38                                    ; $761A: $FF
    rst RST_38                                    ; $761B: $FF
    rst RST_38                                    ; $761C: $FF
    rst RST_38                                    ; $761D: $FF
    rst RST_38                                    ; $761E: $FF
    rst RST_38                                    ; $761F: $FF
    rst RST_38                                    ; $7620: $FF
    rst RST_38                                    ; $7621: $FF
    rst RST_38                                    ; $7622: $FF
    rst RST_38                                    ; $7623: $FF
    rst RST_38                                    ; $7624: $FF
    rst RST_38                                    ; $7625: $FF
    rst RST_38                                    ; $7626: $FF
    rst RST_38                                    ; $7627: $FF
    rst RST_38                                    ; $7628: $FF
    rst RST_38                                    ; $7629: $FF
    rst RST_38                                    ; $762A: $FF
    rst RST_38                                    ; $762B: $FF
    rst RST_38                                    ; $762C: $FF
    rst RST_38                                    ; $762D: $FF
    rst RST_38                                    ; $762E: $FF
    rst RST_38                                    ; $762F: $FF
    rst RST_38                                    ; $7630: $FF
    rst RST_38                                    ; $7631: $FF
    rst RST_38                                    ; $7632: $FF
    rst RST_38                                    ; $7633: $FF
    rst RST_38                                    ; $7634: $FF
    rst RST_38                                    ; $7635: $FF
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
    rst RST_38                                    ; $7640: $FF
    rst RST_38                                    ; $7641: $FF
    rst RST_38                                    ; $7642: $FF
    rst RST_38                                    ; $7643: $FF
    rst RST_38                                    ; $7644: $FF
    rst RST_38                                    ; $7645: $FF
    rst RST_38                                    ; $7646: $FF
    rst RST_38                                    ; $7647: $FF
    rst RST_38                                    ; $7648: $FF
    rst RST_38                                    ; $7649: $FF
    rst RST_38                                    ; $764A: $FF
    rst RST_38                                    ; $764B: $FF
    rst RST_38                                    ; $764C: $FF
    rst RST_38                                    ; $764D: $FF
    rst RST_38                                    ; $764E: $FF
    rst RST_38                                    ; $764F: $FF
    rst RST_38                                    ; $7650: $FF
    rst RST_38                                    ; $7651: $FF
    rst RST_38                                    ; $7652: $FF
    rst RST_38                                    ; $7653: $FF
    rst RST_38                                    ; $7654: $FF
    rst RST_38                                    ; $7655: $FF
    rst RST_38                                    ; $7656: $FF
    rst RST_38                                    ; $7657: $FF
    rst RST_38                                    ; $7658: $FF
    rst RST_38                                    ; $7659: $FF
    rst RST_38                                    ; $765A: $FF
    rst RST_38                                    ; $765B: $FF
    rst RST_38                                    ; $765C: $FF
    rst RST_38                                    ; $765D: $FF
    rst RST_38                                    ; $765E: $FF
    rst RST_38                                    ; $765F: $FF
    rst RST_38                                    ; $7660: $FF
    rst RST_38                                    ; $7661: $FF
    rst RST_38                                    ; $7662: $FF
    rst RST_38                                    ; $7663: $FF
    rst RST_38                                    ; $7664: $FF
    rst RST_38                                    ; $7665: $FF
    rst RST_38                                    ; $7666: $FF
    rst RST_38                                    ; $7667: $FF
    rst RST_38                                    ; $7668: $FF
    rst RST_38                                    ; $7669: $FF
    rst RST_38                                    ; $766A: $FF
    rst RST_38                                    ; $766B: $FF
    rst RST_38                                    ; $766C: $FF
    rst RST_38                                    ; $766D: $FF
    rst RST_38                                    ; $766E: $FF
    rst RST_38                                    ; $766F: $FF
    rst RST_38                                    ; $7670: $FF
    rst RST_38                                    ; $7671: $FF
    rst RST_38                                    ; $7672: $FF
    rst RST_38                                    ; $7673: $FF
    rst RST_38                                    ; $7674: $FF
    rst RST_38                                    ; $7675: $FF
    rst RST_38                                    ; $7676: $FF
    rst RST_38                                    ; $7677: $FF
    rst RST_38                                    ; $7678: $FF
    rst RST_38                                    ; $7679: $FF
    rst RST_38                                    ; $767A: $FF
    rst RST_38                                    ; $767B: $FF
    rst RST_38                                    ; $767C: $FF
    rst RST_38                                    ; $767D: $FF
    rst RST_38                                    ; $767E: $FF
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
    rst RST_38                                    ; $768C: $FF
    rst RST_38                                    ; $768D: $FF
    rst RST_38                                    ; $768E: $FF
    rst RST_38                                    ; $768F: $FF
    rst RST_38                                    ; $7690: $FF
    rst RST_38                                    ; $7691: $FF
    rst RST_38                                    ; $7692: $FF
    rst RST_38                                    ; $7693: $FF
    rst RST_38                                    ; $7694: $FF
    rst RST_38                                    ; $7695: $FF
    rst RST_38                                    ; $7696: $FF
    rst RST_38                                    ; $7697: $FF
    rst RST_38                                    ; $7698: $FF
    rst RST_38                                    ; $7699: $FF
    rst RST_38                                    ; $769A: $FF
    rst RST_38                                    ; $769B: $FF
    rst RST_38                                    ; $769C: $FF
    rst RST_38                                    ; $769D: $FF
    rst RST_38                                    ; $769E: $FF
    rst RST_38                                    ; $769F: $FF
    rst RST_38                                    ; $76A0: $FF
    rst RST_38                                    ; $76A1: $FF
    rst RST_38                                    ; $76A2: $FF
    rst RST_38                                    ; $76A3: $FF
    rst RST_38                                    ; $76A4: $FF
    rst RST_38                                    ; $76A5: $FF
    rst RST_38                                    ; $76A6: $FF
    rst RST_38                                    ; $76A7: $FF
    rst RST_38                                    ; $76A8: $FF
    rst RST_38                                    ; $76A9: $FF
    rst RST_38                                    ; $76AA: $FF
    rst RST_38                                    ; $76AB: $FF
    rst RST_38                                    ; $76AC: $FF
    rst RST_38                                    ; $76AD: $FF
    rst RST_38                                    ; $76AE: $FF
    rst RST_38                                    ; $76AF: $FF
    rst RST_38                                    ; $76B0: $FF
    rst RST_38                                    ; $76B1: $FF
    rst RST_38                                    ; $76B2: $FF
    rst RST_38                                    ; $76B3: $FF
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

Jump_011_7700:
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

Jump_011_7CFE:
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
