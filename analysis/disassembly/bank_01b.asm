; Disassembly of "original.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01b", ROMX[$4000], BANK[$1b]

    nop                                           ; $4000: $00
    nop                                           ; $4001: $00
    nop                                           ; $4002: $00
    nop                                           ; $4003: $00
    rlca                                          ; $4004: $07
    nop                                           ; $4005: $00
    jr jr_01B_400F                                ; $4006: $18 $07

    daa                                           ; $4008: $27
    rra                                           ; $4009: $1F
    ld e, a                                       ; $400A: $5F
    jr nz, jr_01B_406D                            ; $400B: $20 $60

    nop                                           ; $400D: $00
    nop                                           ; $400E: $00

jr_01B_400F:
    nop                                           ; $400F: $00
    rra                                           ; $4010: $1F
    nop                                           ; $4011: $00
    ld de, $090E                                  ; $4012: $11 $0E $09
    ld b, $05                                     ; $4015: $06 $05
    ld [bc], a                                    ; $4017: $02
    inc bc                                        ; $4018: $03
    nop                                           ; $4019: $00
    nop                                           ; $401A: $00
    nop                                           ; $401B: $00
    nop                                           ; $401C: $00
    nop                                           ; $401D: $00
    nop                                           ; $401E: $00
    nop                                           ; $401F: $00
    nop                                           ; $4020: $00
    nop                                           ; $4021: $00
    nop                                           ; $4022: $00
    nop                                           ; $4023: $00
    nop                                           ; $4024: $00
    nop                                           ; $4025: $00
    nop                                           ; $4026: $00
    nop                                           ; $4027: $00
    nop                                           ; $4028: $00
    nop                                           ; $4029: $00
    nop                                           ; $402A: $00
    nop                                           ; $402B: $00
    nop                                           ; $402C: $00
    nop                                           ; $402D: $00
    nop                                           ; $402E: $00
    nop                                           ; $402F: $00
    nop                                           ; $4030: $00
    nop                                           ; $4031: $00
    ld a, a                                       ; $4032: $7F
    nop                                           ; $4033: $00
    add c                                         ; $4034: $81
    ld a, [hl]                                    ; $4035: $7E
    ld bc, $FFFE                                  ; $4036: $01 $FE $FF
    cp $FF                                        ; $4039: $FE $FF
    nop                                           ; $403B: $00
    ccf                                           ; $403C: $3F
    add hl, bc                                    ; $403D: $09
    ld l, a                                       ; $403E: $6F
    dec de                                        ; $403F: $1B
    rst RST_38                                    ; $4040: $FF
    ld h, a                                       ; $4041: $67
    rst RST_38                                    ; $4042: $FF
    db $FC                                        ; $4043: $FC
    rst RST_38                                    ; $4044: $FF
    sbc a                                         ; $4045: $9F
    rst RST_38                                    ; $4046: $FF
    cp h                                          ; $4047: $BC
    rst RST_38                                    ; $4048: $FF
    db $E3                                        ; $4049: $E3
    rst RST_38                                    ; $404A: $FF
    ld e, a                                       ; $404B: $5F
    ld a, a                                       ; $404C: $7F
    jr jr_01B_4067                                ; $404D: $18 $18

    nop                                           ; $404F: $00
    ld bc, $0100                                  ; $4050: $01 $00 $01
    nop                                           ; $4053: $00
    inc bc                                        ; $4054: $03
    ld bc, $0103                                  ; $4055: $01 $03 $01
    rrca                                          ; $4058: $0F
    inc bc                                        ; $4059: $03
    dec de                                        ; $405A: $1B
    dec b                                         ; $405B: $05
    rra                                           ; $405C: $1F
    nop                                           ; $405D: $00
    nop                                           ; $405E: $00
    nop                                           ; $405F: $00
    nop                                           ; $4060: $00
    nop                                           ; $4061: $00
    nop                                           ; $4062: $00
    nop                                           ; $4063: $00
    jr jr_01B_4066                                ; $4064: $18 $00

jr_01B_4066:
    inc d                                         ; $4066: $14

jr_01B_4067:
    ld [$0817], sp                                ; $4067: $08 $17 $08
    dec l                                         ; $406A: $2D
    ld [de], a                                    ; $406B: $12
    ld a, [hl+]                                   ; $406C: $2A

jr_01B_406D:
    inc d                                         ; $406D: $14
    ld d, [hl]                                    ; $406E: $56
    jr z, @-$18                                   ; $406F: $28 $E6

    ld e, b                                       ; $4071: $58
    call $BF3A                                    ; $4072: $CD $3A $BF
    ld a, h                                       ; $4075: $7C
    cp $FC                                        ; $4076: $FE $FC
    rst RST_00                                    ; $4078: $C7
    ld hl, sp-$65                                 ; $4079: $F8 $9B
    push af                                       ; $407B: $F5
    rst RST_38                                    ; $407C: $FF
    ld a, c                                       ; $407D: $79
    rst RST_38                                    ; $407E: $FF
    ei                                            ; $407F: $FB
    rst RST_38                                    ; $4080: $FF
    ld a, e                                       ; $4081: $7B
    rst RST_38                                    ; $4082: $FF
    rst RST_30                                    ; $4083: $F7
    rst RST_38                                    ; $4084: $FF
    rst RST_28                                    ; $4085: $EF
    rst RST_38                                    ; $4086: $FF
    rst RST_30                                    ; $4087: $F7
    rst RST_38                                    ; $4088: $FF
    ld [hl], a                                    ; $4089: $77
    rst RST_38                                    ; $408A: $FF
    adc a                                         ; $408B: $8F
    rst RST_38                                    ; $408C: $FF
    dec sp                                        ; $408D: $3B
    rst RST_38                                    ; $408E: $FF
    ld e, e                                       ; $408F: $5B
    rst RST_38                                    ; $4090: $FF
    db $E4                                        ; $4091: $E4
    rst RST_38                                    ; $4092: $FF
    pop af                                        ; $4093: $F1
    rst RST_30                                    ; $4094: $F7
    db $E3                                        ; $4095: $E3
    rst RST_30                                    ; $4096: $F7
    db $E3                                        ; $4097: $E3
    rst RST_28                                    ; $4098: $EF
    jp $C4FB                                      ; $4099: $C3 $FB $C4


    jp nc, Jump_01B_7F2D                          ; $409C: $D2 $2D $7F

    nop                                           ; $409F: $00
    nop                                           ; $40A0: $00
    nop                                           ; $40A1: $00
    nop                                           ; $40A2: $00
    nop                                           ; $40A3: $00
    nop                                           ; $40A4: $00
    nop                                           ; $40A5: $00
    cp $00                                        ; $40A6: $FE $00
    pop de                                        ; $40A8: $D1
    cp $FA                                        ; $40A9: $FE $FA
    rst RST_38                                    ; $40AB: $FF

jr_01B_40AC:
    push af                                       ; $40AC: $F5
    rst RST_38                                    ; $40AD: $FF
    rst RST_38                                    ; $40AE: $FF
    rst RST_38                                    ; $40AF: $FF
    rst RST_38                                    ; $40B0: $FF
    rst RST_38                                    ; $40B1: $FF
    rst RST_38                                    ; $40B2: $FF
    sbc a                                         ; $40B3: $9F
    ld e, a                                       ; $40B4: $5F
    rst RST_28                                    ; $40B5: $EF
    xor a                                         ; $40B6: $AF
    rst RST_30                                    ; $40B7: $F7
    rst RST_38                                    ; $40B8: $FF
    rst RST_30                                    ; $40B9: $F7
    rst RST_28                                    ; $40BA: $EF
    rst RST_30                                    ; $40BB: $F7
    rst RST_38                                    ; $40BC: $FF
    rst RST_30                                    ; $40BD: $F7
    rst RST_38                                    ; $40BE: $FF
    rst RST_30                                    ; $40BF: $F7
    rst RST_38                                    ; $40C0: $FF
    rst RST_30                                    ; $40C1: $F7
    rst RST_38                                    ; $40C2: $FF
    rst RST_30                                    ; $40C3: $F7
    rst RST_38                                    ; $40C4: $FF
    ldh a, [$FFF7]                                ; $40C5: $F0 $F7
    db $E3                                        ; $40C7: $E3
    rst RST_38                                    ; $40C8: $FF
    rst RST_20                                    ; $40C9: $E7
    rst RST_30                                    ; $40CA: $F7
    ld c, e                                       ; $40CB: $4B
    ld e, a                                       ; $40CC: $5F
    add b                                         ; $40CD: $80
    ret nz                                        ; $40CE: $C0

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
    nop                                           ; $40E0: $00
    nop                                           ; $40E1: $00
    nop                                           ; $40E2: $00
    nop                                           ; $40E3: $00
    nop                                           ; $40E4: $00
    nop                                           ; $40E5: $00
    nop                                           ; $40E6: $00
    nop                                           ; $40E7: $00
    ret nz                                        ; $40E8: $C0

    nop                                           ; $40E9: $00
    jr nc, jr_01B_40AC                            ; $40EA: $30 $C0

    ld c, b                                       ; $40EC: $48
    ldh a, [$FFBC]                                ; $40ED: $F0 $BC
    ld hl, sp-$02                                 ; $40EF: $F8 $FE
    db $E4                                        ; $40F1: $E4
    rst RST_10                                    ; $40F2: $D7
    ld a, [$FCEB]                                 ; $40F3: $FA $EB $FC
    rst RST_38                                    ; $40F6: $FF
    db $FD                                        ; $40F7: $FD
    ei                                            ; $40F8: $FB
    cp $FF                                        ; $40F9: $FE $FF
    cp $FF                                        ; $40FB: $FE $FF
    cp $FF                                        ; $40FD: $FE $FF
    ld a, [hl]                                    ; $40FF: $7E
    rst RST_38                                    ; $4100: $FF
    ld a, c                                       ; $4101: $79
    rst RST_38                                    ; $4102: $FF
    cp a                                          ; $4103: $BF
    rst RST_38                                    ; $4104: $FF
    rrca                                          ; $4105: $0F
    rst RST_18                                    ; $4106: $DF
    adc a                                         ; $4107: $8F
    rst RST_18                                    ; $4108: $DF
    add a                                         ; $4109: $87
    rst RST_30                                    ; $410A: $F7
    adc b                                         ; $410B: $88
    and h                                         ; $410C: $A4
    ld e, e                                       ; $410D: $5B
    rst RST_38                                    ; $410E: $FF
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
    nop                                           ; $4120: $00
    nop                                           ; $4121: $00
    nop                                           ; $4122: $00
    nop                                           ; $4123: $00
    nop                                           ; $4124: $00
    nop                                           ; $4125: $00
    add b                                         ; $4126: $80
    nop                                           ; $4127: $00
    add b                                         ; $4128: $80
    nop                                           ; $4129: $00
    ret nz                                        ; $412A: $C0

    add b                                         ; $412B: $80
    ret nz                                        ; $412C: $C0

    add b                                         ; $412D: $80
    ldh [rLCDC], a                                ; $412E: $E0 $40
    ldh a, [$FF60]                                ; $4130: $F0 $60
    ld hl, sp+$70                                 ; $4132: $F8 $70
    db $FC                                        ; $4134: $FC
    ld a, b                                       ; $4135: $78
    cp $7C                                        ; $4136: $FE $7C
    rst RST_38                                    ; $4138: $FF
    ld a, $BF                                     ; $4139: $3E $BF
    nop                                           ; $413B: $00
    add b                                         ; $413C: $80
    nop                                           ; $413D: $00
    nop                                           ; $413E: $00
    nop                                           ; $413F: $00
    nop                                           ; $4140: $00
    nop                                           ; $4141: $00
    nop                                           ; $4142: $00
    nop                                           ; $4143: $00
    nop                                           ; $4144: $00
    nop                                           ; $4145: $00
    rrca                                          ; $4146: $0F
    nop                                           ; $4147: $00
    jr nc, jr_01B_4159                            ; $4148: $30 $0F

    ld c, a                                       ; $414A: $4F
    ccf                                           ; $414B: $3F
    cp a                                          ; $414C: $BF
    ld b, b                                       ; $414D: $40
    ret nz                                        ; $414E: $C0

    nop                                           ; $414F: $00
    nop                                           ; $4150: $00
    nop                                           ; $4151: $00
    ccf                                           ; $4152: $3F
    nop                                           ; $4153: $00
    inc hl                                        ; $4154: $23
    dec e                                         ; $4155: $1D
    inc de                                        ; $4156: $13
    dec c                                         ; $4157: $0D
    dec bc                                        ; $4158: $0B

jr_01B_4159:
    dec b                                         ; $4159: $05
    rlca                                          ; $415A: $07
    ld bc, $0001                                  ; $415B: $01 $01 $00
    nop                                           ; $415E: $00
    nop                                           ; $415F: $00
    nop                                           ; $4160: $00
    nop                                           ; $4161: $00
    ld bc, $FF00                                  ; $4162: $01 $00 $FF
    nop                                           ; $4165: $00
    inc bc                                        ; $4166: $03
    db $FC                                        ; $4167: $FC
    inc bc                                        ; $4168: $03
    db $FD                                        ; $4169: $FD
    rst RST_38                                    ; $416A: $FF
    db $FD                                        ; $416B: $FD
    rst RST_38                                    ; $416C: $FF
    ld bc, $127F                                  ; $416D: $01 $7F $12
    rst RST_18                                    ; $4170: $DF
    scf                                           ; $4171: $37
    rst RST_38                                    ; $4172: $FF
    adc $FF                                       ; $4173: $CE $FF
    ld sp, hl                                     ; $4175: $F9
    rst RST_38                                    ; $4176: $FF
    ccf                                           ; $4177: $3F
    rst RST_38                                    ; $4178: $FF
    ld a, c                                       ; $4179: $79
    rst RST_38                                    ; $417A: $FF
    jp nz, $87CF                                  ; $417B: $C2 $CF $87

    rst RST_38                                    ; $417E: $FF
    ld c, $3F                                     ; $417F: $0E $3F
    jr jr_01B_419C                                ; $4181: $18 $19

    nop                                           ; $4183: $00
    inc bc                                        ; $4184: $03
    ld bc, $0103                                  ; $4185: $01 $03 $01
    rrca                                          ; $4188: $0F
    inc bc                                        ; $4189: $03
    dec de                                        ; $418A: $1B
    dec b                                         ; $418B: $05
    rra                                           ; $418C: $1F
    nop                                           ; $418D: $00
    nop                                           ; $418E: $00
    nop                                           ; $418F: $00
    nop                                           ; $4190: $00
    nop                                           ; $4191: $00
    nop                                           ; $4192: $00
    nop                                           ; $4193: $00
    nop                                           ; $4194: $00
    nop                                           ; $4195: $00
    nop                                           ; $4196: $00
    nop                                           ; $4197: $00
    nop                                           ; $4198: $00
    nop                                           ; $4199: $00
    nop                                           ; $419A: $00
    nop                                           ; $419B: $00

jr_01B_419C:
    nop                                           ; $419C: $00
    nop                                           ; $419D: $00
    nop                                           ; $419E: $00
    nop                                           ; $419F: $00
    nop                                           ; $41A0: $00
    nop                                           ; $41A1: $00
    nop                                           ; $41A2: $00
    nop                                           ; $41A3: $00
    nop                                           ; $41A4: $00
    nop                                           ; $41A5: $00
    jr nc, jr_01B_41A8                            ; $41A6: $30 $00

jr_01B_41A8:
    jr z, @+$12                                   ; $41A8: $28 $10

    ld l, $10                                     ; $41AA: $2E $10
    ld e, d                                       ; $41AC: $5A
    inc h                                         ; $41AD: $24
    ld d, h                                       ; $41AE: $54
    jr z, @-$52                                   ; $41AF: $28 $AC

    ld d, b                                       ; $41B1: $50
    call z, $9AB0                                 ; $41B2: $CC $B0 $9A
    ld [hl], h                                    ; $41B5: $74
    ld a, [hl]                                    ; $41B6: $7E
    ld hl, sp-$04                                 ; $41B7: $F8 $FC
    ld hl, sp-$71                                 ; $41B9: $F8 $8F
    ldh a, [$FF37]                                ; $41BB: $F0 $37
    db $EB                                        ; $41BD: $EB
    rst RST_38                                    ; $41BE: $FF
    di                                            ; $41BF: $F3
    rst RST_38                                    ; $41C0: $FF
    rst RST_30                                    ; $41C1: $F7
    rst RST_38                                    ; $41C2: $FF
    rst RST_30                                    ; $41C3: $F7
    rst RST_38                                    ; $41C4: $FF
    rst RST_28                                    ; $41C5: $EF
    rst RST_38                                    ; $41C6: $FF
    rst RST_18                                    ; $41C7: $DF
    rst RST_38                                    ; $41C8: $FF
    rst RST_28                                    ; $41C9: $EF
    rst RST_38                                    ; $41CA: $FF
    rst RST_28                                    ; $41CB: $EF
    rst RST_38                                    ; $41CC: $FF
    rra                                           ; $41CD: $1F
    rst RST_38                                    ; $41CE: $FF
    dec sp                                        ; $41CF: $3B
    rst RST_38                                    ; $41D0: $FF
    set 7, a                                      ; $41D1: $CB $FF
    db $E4                                        ; $41D3: $E4
    rst RST_30                                    ; $41D4: $F7
    pop hl                                        ; $41D5: $E1
    rst RST_30                                    ; $41D6: $F7
    db $E3                                        ; $41D7: $E3
    rst RST_28                                    ; $41D8: $EF
    jp $C4FB                                      ; $41D9: $C3 $FB $C4


    jp nc, Jump_01B_7F2D                          ; $41DC: $D2 $2D $7F

    nop                                           ; $41DF: $00
    nop                                           ; $41E0: $00
    nop                                           ; $41E1: $00
    nop                                           ; $41E2: $00
    nop                                           ; $41E3: $00
    nop                                           ; $41E4: $00
    nop                                           ; $41E5: $00
    nop                                           ; $41E6: $00
    nop                                           ; $41E7: $00
    cp $00                                        ; $41E8: $FE $00
    pop de                                        ; $41EA: $D1
    cp $FA                                        ; $41EB: $FE $FA
    rst RST_38                                    ; $41ED: $FF
    push af                                       ; $41EE: $F5
    rst RST_38                                    ; $41EF: $FF
    rst RST_38                                    ; $41F0: $FF
    rst RST_38                                    ; $41F1: $FF
    rst RST_38                                    ; $41F2: $FF
    rst RST_38                                    ; $41F3: $FF
    rst RST_38                                    ; $41F4: $FF
    sbc a                                         ; $41F5: $9F
    ld e, a                                       ; $41F6: $5F
    rst RST_28                                    ; $41F7: $EF
    xor a                                         ; $41F8: $AF
    rst RST_30                                    ; $41F9: $F7
    rst RST_38                                    ; $41FA: $FF
    rst RST_30                                    ; $41FB: $F7
    rst RST_28                                    ; $41FC: $EF
    rst RST_30                                    ; $41FD: $F7

jr_01B_41FE:
    rst RST_38                                    ; $41FE: $FF
    rst RST_30                                    ; $41FF: $F7
    rst RST_38                                    ; $4200: $FF
    rst RST_30                                    ; $4201: $F7
    rst RST_38                                    ; $4202: $FF
    rst RST_30                                    ; $4203: $F7
    rst RST_38                                    ; $4204: $FF
    rst RST_30                                    ; $4205: $F7
    rst RST_30                                    ; $4206: $F7
    ldh [rIE], a                                  ; $4207: $E0 $FF
    rst RST_20                                    ; $4209: $E7
    rst RST_30                                    ; $420A: $F7
    ld c, e                                       ; $420B: $4B
    ld e, a                                       ; $420C: $5F
    add b                                         ; $420D: $80
    ret nz                                        ; $420E: $C0

    nop                                           ; $420F: $00
    nop                                           ; $4210: $00
    nop                                           ; $4211: $00
    nop                                           ; $4212: $00
    nop                                           ; $4213: $00
    nop                                           ; $4214: $00
    nop                                           ; $4215: $00
    nop                                           ; $4216: $00
    nop                                           ; $4217: $00
    nop                                           ; $4218: $00
    nop                                           ; $4219: $00
    nop                                           ; $421A: $00
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
    nop                                           ; $4228: $00
    nop                                           ; $4229: $00
    nop                                           ; $422A: $00
    nop                                           ; $422B: $00
    nop                                           ; $422C: $00
    nop                                           ; $422D: $00
    nop                                           ; $422E: $00
    nop                                           ; $422F: $00
    nop                                           ; $4230: $00
    nop                                           ; $4231: $00
    nop                                           ; $4232: $00
    nop                                           ; $4233: $00
    nop                                           ; $4234: $00
    nop                                           ; $4235: $00
    nop                                           ; $4236: $00
    nop                                           ; $4237: $00
    nop                                           ; $4238: $00
    nop                                           ; $4239: $00
    ret nz                                        ; $423A: $C0

    nop                                           ; $423B: $00
    jr nc, jr_01B_41FE                            ; $423C: $30 $C0

    ld c, b                                       ; $423E: $48
    ldh a, [$FFBC]                                ; $423F: $F0 $BC
    ld hl, sp-$02                                 ; $4241: $F8 $FE
    db $E4                                        ; $4243: $E4
    rst RST_10                                    ; $4244: $D7
    ld a, [$FCEB]                                 ; $4245: $FA $EB $FC
    rst RST_38                                    ; $4248: $FF
    db $FD                                        ; $4249: $FD
    db $FD                                        ; $424A: $FD
    cp $FF                                        ; $424B: $FE $FF
    cp $FF                                        ; $424D: $FE $FF
    cp $FF                                        ; $424F: $FE $FF
    ld a, [hl]                                    ; $4251: $7E
    rst RST_38                                    ; $4252: $FF
    cp c                                          ; $4253: $B9
    rst RST_38                                    ; $4254: $FF
    rst RST_08                                    ; $4255: $CF
    rst RST_18                                    ; $4256: $DF
    rrca                                          ; $4257: $0F
    rst RST_18                                    ; $4258: $DF
    add a                                         ; $4259: $87
    rst RST_30                                    ; $425A: $F7
    adc b                                         ; $425B: $88
    and h                                         ; $425C: $A4
    ld e, e                                       ; $425D: $5B
    rst RST_38                                    ; $425E: $FF
    nop                                           ; $425F: $00
    add b                                         ; $4260: $80
    nop                                           ; $4261: $00
    add b                                         ; $4262: $80
    nop                                           ; $4263: $00
    ret nz                                        ; $4264: $C0

    add b                                         ; $4265: $80
    ret nz                                        ; $4266: $C0

    nop                                           ; $4267: $00
    ldh [rLCDC], a                                ; $4268: $E0 $40
    ldh [rLCDC], a                                ; $426A: $E0 $40
    ldh [rLCDC], a                                ; $426C: $E0 $40
    ldh [rLCDC], a                                ; $426E: $E0 $40
    ret nz                                        ; $4270: $C0

    nop                                           ; $4271: $00
    add b                                         ; $4272: $80
    nop                                           ; $4273: $00
    add b                                         ; $4274: $80
    nop                                           ; $4275: $00
    nop                                           ; $4276: $00
    nop                                           ; $4277: $00
    nop                                           ; $4278: $00
    nop                                           ; $4279: $00
    nop                                           ; $427A: $00
    nop                                           ; $427B: $00
    nop                                           ; $427C: $00
    nop                                           ; $427D: $00
    nop                                           ; $427E: $00
    nop                                           ; $427F: $00
    nop                                           ; $4280: $00
    nop                                           ; $4281: $00
    nop                                           ; $4282: $00
    nop                                           ; $4283: $00
    ld bc, $1E00                                  ; $4284: $01 $00 $1E
    ld bc, $1F60                                  ; $4287: $01 $60 $1F
    sbc a                                         ; $428A: $9F
    ld a, a                                       ; $428B: $7F
    ld a, a                                       ; $428C: $7F
    add b                                         ; $428D: $80
    add b                                         ; $428E: $80
    nop                                           ; $428F: $00
    ld bc, $7F00                                  ; $4290: $01 $00 $7F
    ld bc, $3B47                                  ; $4293: $01 $47 $3B
    daa                                           ; $4296: $27
    ld a, [de]                                    ; $4297: $1A
    rla                                           ; $4298: $17
    ld a, [bc]                                    ; $4299: $0A
    rrca                                          ; $429A: $0F
    inc bc                                        ; $429B: $03
    inc bc                                        ; $429C: $03
    ld bc, $0001                                  ; $429D: $01 $01 $00
    nop                                           ; $42A0: $00
    nop                                           ; $42A1: $00
    nop                                           ; $42A2: $00
    nop                                           ; $42A3: $00
    ld bc, $0300                                  ; $42A4: $01 $00 $03
    ld bc, $00FF                                  ; $42A7: $01 $FF $00
    ld b, $F9                                     ; $42AA: $06 $F9
    rlca                                          ; $42AC: $07
    ei                                            ; $42AD: $FB
    rst RST_38                                    ; $42AE: $FF
    ei                                            ; $42AF: $FB
    cp $03                                        ; $42B0: $FE $03
    rst RST_38                                    ; $42B2: $FF
    dec h                                         ; $42B3: $25
    cp a                                          ; $42B4: $BF
    ld l, a                                       ; $42B5: $6F
    rst RST_38                                    ; $42B6: $FF
    sbc l                                         ; $42B7: $9D
    rst RST_38                                    ; $42B8: $FF
    di                                            ; $42B9: $F3
    rst RST_38                                    ; $42BA: $FF
    ld a, a                                       ; $42BB: $7F
    rst RST_38                                    ; $42BC: $FF
    di                                            ; $42BD: $F3
    rst RST_38                                    ; $42BE: $FF
    add l                                         ; $42BF: $85
    adc a                                         ; $42C0: $8F
    ld b, $8F                                     ; $42C1: $06 $8F
    ld b, $3F                                     ; $42C3: $06 $3F
    dec c                                         ; $42C5: $0D
    ccf                                           ; $42C6: $3F
    add hl, de                                    ; $42C7: $19
    rra                                           ; $42C8: $1F
    inc bc                                        ; $42C9: $03
    dec de                                        ; $42CA: $1B
    dec b                                         ; $42CB: $05
    rra                                           ; $42CC: $1F
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
    nop                                           ; $42E0: $00
    nop                                           ; $42E1: $00
    nop                                           ; $42E2: $00
    nop                                           ; $42E3: $00
    nop                                           ; $42E4: $00
    nop                                           ; $42E5: $00
    nop                                           ; $42E6: $00
    nop                                           ; $42E7: $00
    nop                                           ; $42E8: $00
    nop                                           ; $42E9: $00
    ld h, b                                       ; $42EA: $60
    nop                                           ; $42EB: $00
    ld d, b                                       ; $42EC: $50
    jr nz, jr_01B_434B                            ; $42ED: $20 $5C

    jr nz, @-$4A                                  ; $42EF: $20 $B4

    ld c, b                                       ; $42F1: $48
    xor b                                         ; $42F2: $A8
    ld d, b                                       ; $42F3: $50
    ld e, b                                       ; $42F4: $58
    and b                                         ; $42F5: $A0
    sbc b                                         ; $42F6: $98
    ld h, b                                       ; $42F7: $60
    dec [hl]                                      ; $42F8: $35
    add sp, -$01                                  ; $42F9: $E8 $FF
    pop af                                        ; $42FB: $F1
    rst RST_38                                    ; $42FC: $FF
    rst RST_30                                    ; $42FD: $F7
    rra                                           ; $42FE: $1F
    rst RST_20                                    ; $42FF: $E7
    ld l, a                                       ; $4300: $6F
    rst RST_10                                    ; $4301: $D7
    rst RST_38                                    ; $4302: $FF
    rst RST_20                                    ; $4303: $E7
    rst RST_38                                    ; $4304: $FF
    rst RST_28                                    ; $4305: $EF
    cp $EF                                        ; $4306: $FE $EF
    rst RST_38                                    ; $4308: $FF
    rst RST_18                                    ; $4309: $DF
    rst RST_38                                    ; $430A: $FF
    cp a                                          ; $430B: $BF
    rst RST_38                                    ; $430C: $FF
    rst RST_18                                    ; $430D: $DF
    rst RST_38                                    ; $430E: $FF
    rst RST_10                                    ; $430F: $D7
    rst RST_38                                    ; $4310: $FF
    ld [de], a                                    ; $4311: $12
    rst RST_38                                    ; $4312: $FF
    push hl                                       ; $4313: $E5
    rst RST_30                                    ; $4314: $F7
    pop hl                                        ; $4315: $E1
    rst RST_30                                    ; $4316: $F7
    db $E3                                        ; $4317: $E3
    rst RST_28                                    ; $4318: $EF
    jp $C4FB                                      ; $4319: $C3 $FB $C4


    jp nc, Jump_01B_7F2D                          ; $431C: $D2 $2D $7F

    nop                                           ; $431F: $00
    nop                                           ; $4320: $00
    nop                                           ; $4321: $00
    nop                                           ; $4322: $00
    nop                                           ; $4323: $00
    nop                                           ; $4324: $00
    nop                                           ; $4325: $00
    nop                                           ; $4326: $00
    nop                                           ; $4327: $00
    db $FC                                        ; $4328: $FC
    nop                                           ; $4329: $00
    and e                                         ; $432A: $A3
    db $FC                                        ; $432B: $FC
    db $F4                                        ; $432C: $F4
    rst RST_38                                    ; $432D: $FF
    ld [$FFFF], a                                 ; $432E: $EA $FF $FF
    rst RST_38                                    ; $4331: $FF
    rst RST_38                                    ; $4332: $FF
    rst RST_38                                    ; $4333: $FF
    rst RST_38                                    ; $4334: $FF
    ccf                                           ; $4335: $3F
    cp a                                          ; $4336: $BF
    rst RST_18                                    ; $4337: $DF
    ld e, a                                       ; $4338: $5F
    rst RST_28                                    ; $4339: $EF
    rst RST_38                                    ; $433A: $FF
    rst RST_28                                    ; $433B: $EF
    rst RST_18                                    ; $433C: $DF
    rst RST_28                                    ; $433D: $EF
    rst RST_38                                    ; $433E: $FF
    rst RST_30                                    ; $433F: $F7
    rst RST_38                                    ; $4340: $FF
    or $FF                                        ; $4341: $F6 $FF
    rst RST_30                                    ; $4343: $F7
    rst RST_38                                    ; $4344: $FF
    rst RST_30                                    ; $4345: $F7
    rst RST_38                                    ; $4346: $FF
    ldh [rIE], a                                  ; $4347: $E0 $FF
    rst RST_20                                    ; $4349: $E7
    rst RST_30                                    ; $434A: $F7

jr_01B_434B:
    ld c, e                                       ; $434B: $4B
    ld e, a                                       ; $434C: $5F
    add b                                         ; $434D: $80
    ret nz                                        ; $434E: $C0

    nop                                           ; $434F: $00
    nop                                           ; $4350: $00
    nop                                           ; $4351: $00
    nop                                           ; $4352: $00
    nop                                           ; $4353: $00
    nop                                           ; $4354: $00
    nop                                           ; $4355: $00
    nop                                           ; $4356: $00
    nop                                           ; $4357: $00
    nop                                           ; $4358: $00
    nop                                           ; $4359: $00
    nop                                           ; $435A: $00
    nop                                           ; $435B: $00
    nop                                           ; $435C: $00
    nop                                           ; $435D: $00
    nop                                           ; $435E: $00
    nop                                           ; $435F: $00
    nop                                           ; $4360: $00
    nop                                           ; $4361: $00
    nop                                           ; $4362: $00
    nop                                           ; $4363: $00
    nop                                           ; $4364: $00
    nop                                           ; $4365: $00
    nop                                           ; $4366: $00
    nop                                           ; $4367: $00
    nop                                           ; $4368: $00
    nop                                           ; $4369: $00
    nop                                           ; $436A: $00
    nop                                           ; $436B: $00
    nop                                           ; $436C: $00
    nop                                           ; $436D: $00
    nop                                           ; $436E: $00
    nop                                           ; $436F: $00
    nop                                           ; $4370: $00
    nop                                           ; $4371: $00
    nop                                           ; $4372: $00
    nop                                           ; $4373: $00
    nop                                           ; $4374: $00
    nop                                           ; $4375: $00
    nop                                           ; $4376: $00
    nop                                           ; $4377: $00
    nop                                           ; $4378: $00
    nop                                           ; $4379: $00
    add b                                         ; $437A: $80
    nop                                           ; $437B: $00
    ld h, b                                       ; $437C: $60
    add b                                         ; $437D: $80
    sub b                                         ; $437E: $90
    ldh [rP1], a                                  ; $437F: $E0 $00
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
    nop                                           ; $4396: $00
    nop                                           ; $4397: $00
    nop                                           ; $4398: $00
    nop                                           ; $4399: $00
    nop                                           ; $439A: $00
    nop                                           ; $439B: $00
    ld bc, $0100                                  ; $439C: $01 $00 $01
    nop                                           ; $439F: $00
    ld a, b                                       ; $43A0: $78
    ldh a, [$FFFC]                                ; $43A1: $F0 $FC
    ret z                                         ; $43A3: $C8

    xor [hl]                                      ; $43A4: $AE
    db $F4                                        ; $43A5: $F4
    sub $F8                                       ; $43A6: $D6 $F8
    rst RST_38                                    ; $43A8: $FF
    ld a, [$FCFB]                                 ; $43A9: $FA $FB $FC
    rst RST_38                                    ; $43AC: $FF
    db $FC                                        ; $43AD: $FC
    rst RST_38                                    ; $43AE: $FF
    cp $FF                                        ; $43AF: $FE $FF
    cp $FF                                        ; $43B1: $FE $FF
    ld a, c                                       ; $43B3: $79
    rst RST_38                                    ; $43B4: $FF
    sbc a                                         ; $43B5: $9F
    rst RST_18                                    ; $43B6: $DF
    rrca                                          ; $43B7: $0F
    rst RST_18                                    ; $43B8: $DF
    add a                                         ; $43B9: $87
    rst RST_30                                    ; $43BA: $F7
    adc b                                         ; $43BB: $88
    and h                                         ; $43BC: $A4
    ld e, e                                       ; $43BD: $5B
    rst RST_38                                    ; $43BE: $FF
    nop                                           ; $43BF: $00
    add b                                         ; $43C0: $80
    nop                                           ; $43C1: $00
    add b                                         ; $43C2: $80
    nop                                           ; $43C3: $00
    add b                                         ; $43C4: $80
    nop                                           ; $43C5: $00
    add b                                         ; $43C6: $80
    nop                                           ; $43C7: $00
    add b                                         ; $43C8: $80
    nop                                           ; $43C9: $00
    add b                                         ; $43CA: $80
    nop                                           ; $43CB: $00
    add b                                         ; $43CC: $80
    nop                                           ; $43CD: $00
    add b                                         ; $43CE: $80
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
    ld a, b                                       ; $43E0: $78
    ldh a, [$FFFC]                                ; $43E1: $F0 $FC
    ret z                                         ; $43E3: $C8

    xor [hl]                                      ; $43E4: $AE
    db $F4                                        ; $43E5: $F4
    sub $F8                                       ; $43E6: $D6 $F8
    rst RST_38                                    ; $43E8: $FF
    ld a, [$FDFB]                                 ; $43E9: $FA $FB $FD
    rst RST_38                                    ; $43EC: $FF
    db $FC                                        ; $43ED: $FC
    rst RST_38                                    ; $43EE: $FF
    cp $FF                                        ; $43EF: $FE $FF
    cp $FF                                        ; $43F1: $FE $FF
    ld a, c                                       ; $43F3: $79
    rst RST_38                                    ; $43F4: $FF
    sbc a                                         ; $43F5: $9F
    rst RST_18                                    ; $43F6: $DF
    rrca                                          ; $43F7: $0F
    rst RST_18                                    ; $43F8: $DF
    add a                                         ; $43F9: $87
    rst RST_30                                    ; $43FA: $F7
    adc b                                         ; $43FB: $88
    and h                                         ; $43FC: $A4
    ld e, e                                       ; $43FD: $5B
    rst RST_38                                    ; $43FE: $FF
    nop                                           ; $43FF: $00
    add b                                         ; $4400: $80
    nop                                           ; $4401: $00
    ret nz                                        ; $4402: $C0

    add b                                         ; $4403: $80
    ldh [rLCDC], a                                ; $4404: $E0 $40
    ldh a, [$FF60]                                ; $4406: $F0 $60
    ld hl, sp+$70                                 ; $4408: $F8 $70
    db $FC                                        ; $440A: $FC
    ld a, b                                       ; $440B: $78
    cp $7C                                        ; $440C: $FE $7C
    rst RST_38                                    ; $440E: $FF
    ld e, $9F                                     ; $440F: $1E $9F
    nop                                           ; $4411: $00
    add b                                         ; $4412: $80
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
    cp h                                          ; $4420: $BC
    ld hl, sp-$02                                 ; $4421: $F8 $FE
    db $E4                                        ; $4423: $E4
    rst RST_10                                    ; $4424: $D7
    ld a, [$FDEB]                                 ; $4425: $FA $EB $FD
    rst RST_38                                    ; $4428: $FF
    db $FD                                        ; $4429: $FD
    db $FD                                        ; $442A: $FD
    cp $FF                                        ; $442B: $FE $FF
    cp $FF                                        ; $442D: $FE $FF
    cp $FF                                        ; $442F: $FE $FF
    ld a, [hl]                                    ; $4431: $7E
    rst RST_38                                    ; $4432: $FF
    cp b                                          ; $4433: $B8
    rst RST_38                                    ; $4434: $FF
    adc $DF                                       ; $4435: $CE $DF
    ld c, $DF                                     ; $4437: $0E $DF
    add l                                         ; $4439: $85
    rst RST_30                                    ; $443A: $F7
    adc e                                         ; $443B: $8B
    and a                                         ; $443C: $A7
    ld e, b                                       ; $443D: $58
    rst RST_38                                    ; $443E: $FF
    nop                                           ; $443F: $00
    add b                                         ; $4440: $80
    nop                                           ; $4441: $00
    ret nz                                        ; $4442: $C0

    add b                                         ; $4443: $80
    ret nz                                        ; $4444: $C0

    add b                                         ; $4445: $80
    ldh [$FFC0], a                                ; $4446: $E0 $C0
    ldh [$FFC0], a                                ; $4448: $E0 $C0
    ldh a, [$FFE0]                                ; $444A: $F0 $E0
    ldh a, [$FF60]                                ; $444C: $F0 $60
    ldh a, [$FFE0]                                ; $444E: $F0 $E0
    ldh a, [$FFE0]                                ; $4450: $F0 $E0
    ldh a, [$FFE0]                                ; $4452: $F0 $E0
    ldh [$FFC0], a                                ; $4454: $E0 $C0
    ret nz                                        ; $4456: $C0

    nop                                           ; $4457: $00
    nop                                           ; $4458: $00
    nop                                           ; $4459: $00
    nop                                           ; $445A: $00
    nop                                           ; $445B: $00
    nop                                           ; $445C: $00
    nop                                           ; $445D: $00
    nop                                           ; $445E: $00
    nop                                           ; $445F: $00
    nop                                           ; $4460: $00
    nop                                           ; $4461: $00
    nop                                           ; $4462: $00
    nop                                           ; $4463: $00
    nop                                           ; $4464: $00
    nop                                           ; $4465: $00
    rrca                                          ; $4466: $0F
    nop                                           ; $4467: $00
    jr nc, jr_01B_4479                            ; $4468: $30 $0F

    ld c, a                                       ; $446A: $4F
    ccf                                           ; $446B: $3F
    cp a                                          ; $446C: $BF
    ld b, b                                       ; $446D: $40
    ret nz                                        ; $446E: $C0

    nop                                           ; $446F: $00
    nop                                           ; $4470: $00
    nop                                           ; $4471: $00
    ccf                                           ; $4472: $3F
    nop                                           ; $4473: $00
    inc hl                                        ; $4474: $23
    dec e                                         ; $4475: $1D
    inc de                                        ; $4476: $13
    dec c                                         ; $4477: $0D
    dec bc                                        ; $4478: $0B

jr_01B_4479:
    dec b                                         ; $4479: $05
    rlca                                          ; $447A: $07
    ld bc, $0001                                  ; $447B: $01 $01 $00
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
    ld bc, $FF00                                  ; $4492: $01 $00 $FF
    nop                                           ; $4495: $00
    inc bc                                        ; $4496: $03
    db $FC                                        ; $4497: $FC
    inc bc                                        ; $4498: $03
    db $FD                                        ; $4499: $FD
    rst RST_38                                    ; $449A: $FF
    db $FD                                        ; $449B: $FD
    rst RST_38                                    ; $449C: $FF
    ld bc, $127F                                  ; $449D: $01 $7F $12
    rst RST_18                                    ; $44A0: $DF
    scf                                           ; $44A1: $37
    rst RST_38                                    ; $44A2: $FF
    adc $FF                                       ; $44A3: $CE $FF
    ld sp, hl                                     ; $44A5: $F9
    rst RST_38                                    ; $44A6: $FF
    ccf                                           ; $44A7: $3F
    rst RST_38                                    ; $44A8: $FF
    ld a, c                                       ; $44A9: $79
    rst RST_38                                    ; $44AA: $FF
    add $FF                                       ; $44AB: $C6 $FF
    cp a                                          ; $44AD: $BF
    rst RST_38                                    ; $44AE: $FF
    jr nc, jr_01B_44E4                            ; $44AF: $30 $33

    ld bc, $0307                                  ; $44B1: $01 $07 $03
    dec de                                        ; $44B4: $1B
    dec b                                         ; $44B5: $05
    rra                                           ; $44B6: $1F
    nop                                           ; $44B7: $00
    nop                                           ; $44B8: $00
    nop                                           ; $44B9: $00
    nop                                           ; $44BA: $00
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
    jr nc, jr_01B_44C8                            ; $44C6: $30 $00

jr_01B_44C8:
    jr z, jr_01B_44DA                             ; $44C8: $28 $10

    ld l, $10                                     ; $44CA: $2E $10
    ld e, d                                       ; $44CC: $5A
    inc h                                         ; $44CD: $24
    ld d, h                                       ; $44CE: $54
    jr z, @-$52                                   ; $44CF: $28 $AC

    ld d, b                                       ; $44D1: $50
    call z, $9BB0                                 ; $44D2: $CC $B0 $9B
    ld [hl], h                                    ; $44D5: $74
    ld a, a                                       ; $44D6: $7F
    ld sp, hl                                     ; $44D7: $F9
    rst RST_38                                    ; $44D8: $FF
    ei                                            ; $44D9: $FB

jr_01B_44DA:
    adc a                                         ; $44DA: $8F
    di                                            ; $44DB: $F3
    scf                                           ; $44DC: $37
    db $EB                                        ; $44DD: $EB
    rst RST_38                                    ; $44DE: $FF
    di                                            ; $44DF: $F3
    rst RST_38                                    ; $44E0: $FF
    rst RST_30                                    ; $44E1: $F7
    rst RST_38                                    ; $44E2: $FF
    rst RST_30                                    ; $44E3: $F7

jr_01B_44E4:
    rst RST_38                                    ; $44E4: $FF
    rst RST_28                                    ; $44E5: $EF
    rst RST_38                                    ; $44E6: $FF
    db $DB                                        ; $44E7: $DB
    rst RST_38                                    ; $44E8: $FF
    db $EB                                        ; $44E9: $EB
    rst RST_38                                    ; $44EA: $FF
    db $ED                                        ; $44EB: $ED
    rst RST_38                                    ; $44EC: $FF
    ld b, $F7                                     ; $44ED: $06 $F7
    ldh [$FFF0], a                                ; $44EF: $E0 $F0
    ldh [$FFE1], a                                ; $44F1: $E0 $E1
    ret nz                                        ; $44F3: $C0

    rst RST_20                                    ; $44F4: $E7
    ret nz                                        ; $44F5: $C0

    jp z, $0F05                                   ; $44F6: $CA $05 $0F

    nop                                           ; $44F9: $00
    nop                                           ; $44FA: $00
    nop                                           ; $44FB: $00
    nop                                           ; $44FC: $00
    nop                                           ; $44FD: $00
    nop                                           ; $44FE: $00
    nop                                           ; $44FF: $00
    cp $00                                        ; $4500: $FE $00
    pop de                                        ; $4502: $D1
    cp $FA                                        ; $4503: $FE $FA
    rst RST_38                                    ; $4505: $FF

jr_01B_4506:
    push af                                       ; $4506: $F5
    rst RST_38                                    ; $4507: $FF
    rst RST_38                                    ; $4508: $FF
    rst RST_38                                    ; $4509: $FF
    rst RST_38                                    ; $450A: $FF
    rst RST_38                                    ; $450B: $FF
    cp a                                          ; $450C: $BF
    rst RST_18                                    ; $450D: $DF
    ld e, a                                       ; $450E: $5F
    rst RST_28                                    ; $450F: $EF
    cp a                                          ; $4510: $BF
    rst RST_30                                    ; $4511: $F7
    rst RST_28                                    ; $4512: $EF
    or $FF                                        ; $4513: $F6 $FF
    or $FF                                        ; $4515: $F6 $FF
    or $FF                                        ; $4517: $F6 $FF
    db $EB                                        ; $4519: $EB
    rst RST_38                                    ; $451A: $FF
    ei                                            ; $451B: $FB
    rst RST_38                                    ; $451C: $FF
    ld a, e                                       ; $451D: $7B
    rst RST_38                                    ; $451E: $FF
    ld a, b                                       ; $451F: $78
    db $FC                                        ; $4520: $FC
    ld a, b                                       ; $4521: $78
    ld a, l                                       ; $4522: $7D
    adc b                                         ; $4523: $88
    ld c, [hl]                                    ; $4524: $4E
    or c                                          ; $4525: $B1
    rst RST_38                                    ; $4526: $FF
    nop                                           ; $4527: $00
    nop                                           ; $4528: $00
    nop                                           ; $4529: $00
    nop                                           ; $452A: $00
    nop                                           ; $452B: $00
    nop                                           ; $452C: $00
    nop                                           ; $452D: $00
    nop                                           ; $452E: $00
    nop                                           ; $452F: $00
    nop                                           ; $4530: $00
    nop                                           ; $4531: $00
    nop                                           ; $4532: $00
    nop                                           ; $4533: $00
    nop                                           ; $4534: $00
    nop                                           ; $4535: $00
    nop                                           ; $4536: $00
    nop                                           ; $4537: $00
    nop                                           ; $4538: $00
    nop                                           ; $4539: $00
    nop                                           ; $453A: $00
    nop                                           ; $453B: $00
    nop                                           ; $453C: $00
    nop                                           ; $453D: $00
    nop                                           ; $453E: $00
    nop                                           ; $453F: $00
    nop                                           ; $4540: $00
    nop                                           ; $4541: $00
    ret nz                                        ; $4542: $C0

    nop                                           ; $4543: $00
    jr nc, jr_01B_4506                            ; $4544: $30 $C0

    ld c, b                                       ; $4546: $48
    ldh a, [$FFBC]                                ; $4547: $F0 $BC
    ld hl, sp-$2A                                 ; $4549: $F8 $D6
    db $FC                                        ; $454B: $FC
    rst RST_28                                    ; $454C: $EF
    ld a, [$FCFF]                                 ; $454D: $FA $FF $FC
    ei                                            ; $4550: $FB
    db $FD                                        ; $4551: $FD
    rst RST_38                                    ; $4552: $FF
    db $FD                                        ; $4553: $FD
    rst RST_38                                    ; $4554: $FF
    db $FD                                        ; $4555: $FD
    rst RST_38                                    ; $4556: $FF
    db $FC                                        ; $4557: $FC
    rst RST_38                                    ; $4558: $FF
    ld a, d                                       ; $4559: $7A
    rst RST_38                                    ; $455A: $FF
    ld a, [hl]                                    ; $455B: $7E
    rst RST_38                                    ; $455C: $FF
    adc [hl]                                      ; $455D: $8E
    rst RST_38                                    ; $455E: $FF
    dec a                                         ; $455F: $3D
    ld a, a                                       ; $4560: $7F
    inc e                                         ; $4561: $1C
    rst RST_18                                    ; $4562: $DF
    inc hl                                        ; $4563: $23
    sbc a                                         ; $4564: $9F
    ld h, a                                       ; $4565: $67
    rst RST_38                                    ; $4566: $FF
    nop                                           ; $4567: $00
    nop                                           ; $4568: $00
    nop                                           ; $4569: $00
    nop                                           ; $456A: $00
    nop                                           ; $456B: $00
    nop                                           ; $456C: $00
    nop                                           ; $456D: $00
    nop                                           ; $456E: $00
    nop                                           ; $456F: $00
    nop                                           ; $4570: $00
    nop                                           ; $4571: $00
    nop                                           ; $4572: $00
    nop                                           ; $4573: $00
    nop                                           ; $4574: $00
    nop                                           ; $4575: $00
    nop                                           ; $4576: $00
    nop                                           ; $4577: $00
    nop                                           ; $4578: $00
    nop                                           ; $4579: $00
    nop                                           ; $457A: $00
    nop                                           ; $457B: $00
    nop                                           ; $457C: $00
    nop                                           ; $457D: $00
    nop                                           ; $457E: $00
    nop                                           ; $457F: $00
    add b                                         ; $4580: $80
    nop                                           ; $4581: $00
    add b                                         ; $4582: $80
    nop                                           ; $4583: $00
    ret nz                                        ; $4584: $C0

    add b                                         ; $4585: $80
    ret nz                                        ; $4586: $C0

    add b                                         ; $4587: $80
    ldh [$FFC0], a                                ; $4588: $E0 $C0
    ldh [$FFC0], a                                ; $458A: $E0 $C0
    ldh a, [$FFE0]                                ; $458C: $F0 $E0
    ldh a, [$FFE0]                                ; $458E: $F0 $E0
    ldh a, [$FFE0]                                ; $4590: $F0 $E0
    ldh a, [$FFE0]                                ; $4592: $F0 $E0
    ldh [$FFC0], a                                ; $4594: $E0 $C0
    ret nz                                        ; $4596: $C0

    nop                                           ; $4597: $00
    nop                                           ; $4598: $00

jr_01B_4599:
    nop                                           ; $4599: $00
    nop                                           ; $459A: $00
    nop                                           ; $459B: $00
    nop                                           ; $459C: $00
    nop                                           ; $459D: $00
    nop                                           ; $459E: $00
    nop                                           ; $459F: $00
    nop                                           ; $45A0: $00
    nop                                           ; $45A1: $00
    nop                                           ; $45A2: $00
    nop                                           ; $45A3: $00
    nop                                           ; $45A4: $00
    nop                                           ; $45A5: $00
    nop                                           ; $45A6: $00
    nop                                           ; $45A7: $00
    rrca                                          ; $45A8: $0F
    nop                                           ; $45A9: $00
    jr nc, jr_01B_45BB                            ; $45AA: $30 $0F

    ld c, a                                       ; $45AC: $4F
    ccf                                           ; $45AD: $3F
    cp a                                          ; $45AE: $BF
    ld b, b                                       ; $45AF: $40
    ret nz                                        ; $45B0: $C0

    nop                                           ; $45B1: $00
    nop                                           ; $45B2: $00
    nop                                           ; $45B3: $00
    ccf                                           ; $45B4: $3F
    nop                                           ; $45B5: $00
    inc hl                                        ; $45B6: $23
    dec e                                         ; $45B7: $1D
    inc de                                        ; $45B8: $13
    dec c                                         ; $45B9: $0D
    dec bc                                        ; $45BA: $0B

jr_01B_45BB:
    dec b                                         ; $45BB: $05
    rlca                                          ; $45BC: $07
    ld bc, $0001                                  ; $45BD: $01 $01 $00
    rst RST_38                                    ; $45C0: $FF
    nop                                           ; $45C1: $00
    inc bc                                        ; $45C2: $03
    db $FC                                        ; $45C3: $FC
    inc bc                                        ; $45C4: $03
    db $FD                                        ; $45C5: $FD
    rst RST_38                                    ; $45C6: $FF
    db $FD                                        ; $45C7: $FD
    rst RST_38                                    ; $45C8: $FF
    ld bc, $127F                                  ; $45C9: $01 $7F $12
    rst RST_18                                    ; $45CC: $DF
    scf                                           ; $45CD: $37
    rst RST_38                                    ; $45CE: $FF
    adc $FF                                       ; $45CF: $CE $FF
    ld sp, hl                                     ; $45D1: $F9
    rst RST_38                                    ; $45D2: $FF
    ccf                                           ; $45D3: $3F
    rst RST_38                                    ; $45D4: $FF
    ld a, c                                       ; $45D5: $79
    rst RST_38                                    ; $45D6: $FF
    jp nz, $87CF                                  ; $45D7: $C2 $CF $87

    rst RST_38                                    ; $45DA: $FF
    ld c, $3E                                     ; $45DB: $0E $3E
    jr jr_01B_45F7                                ; $45DD: $18 $18

    nop                                           ; $45DF: $00
    nop                                           ; $45E0: $00
    nop                                           ; $45E1: $00
    jr nc, jr_01B_45E4                            ; $45E2: $30 $00

jr_01B_45E4:
    jr z, jr_01B_45F6                             ; $45E4: $28 $10

    ld l, $10                                     ; $45E6: $2E $10
    ld e, d                                       ; $45E8: $5A
    inc h                                         ; $45E9: $24
    ld d, h                                       ; $45EA: $54
    jr z, jr_01B_4599                             ; $45EB: $28 $AC

    ld d, b                                       ; $45ED: $50
    call z, $9BB0                                 ; $45EE: $CC $B0 $9B
    ld [hl], h                                    ; $45F1: $74
    ld a, a                                       ; $45F2: $7F
    ld sp, hl                                     ; $45F3: $F9
    rst RST_38                                    ; $45F4: $FF
    ei                                            ; $45F5: $FB

jr_01B_45F6:
    adc a                                         ; $45F6: $8F

jr_01B_45F7:
    di                                            ; $45F7: $F3
    scf                                           ; $45F8: $37
    db $EB                                        ; $45F9: $EB
    rst RST_38                                    ; $45FA: $FF
    di                                            ; $45FB: $F3
    rst RST_38                                    ; $45FC: $FF
    rst RST_30                                    ; $45FD: $F7
    rst RST_38                                    ; $45FE: $FF
    rst RST_30                                    ; $45FF: $F7
    rst RST_38                                    ; $4600: $FF
    rst RST_28                                    ; $4601: $EF
    rst RST_38                                    ; $4602: $FF
    rst RST_18                                    ; $4603: $DF
    rst RST_38                                    ; $4604: $FF
    db $EB                                        ; $4605: $EB
    rst RST_38                                    ; $4606: $FF
    db $EB                                        ; $4607: $EB
    rst RST_28                                    ; $4608: $EF
    inc b                                         ; $4609: $04
    rrca                                          ; $460A: $0F
    ld bc, $050F                                  ; $460B: $01 $0F $05
    rlca                                          ; $460E: $07
    ld [bc], a                                    ; $460F: $02
    rlca                                          ; $4610: $07
    ld [bc], a                                    ; $4611: $02
    rlca                                          ; $4612: $07
    nop                                           ; $4613: $00
    ld e, $01                                     ; $4614: $1E $01
    inc [hl]                                      ; $4616: $34
    dec bc                                        ; $4617: $0B
    ccf                                           ; $4618: $3F
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

jr_01B_4624:
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
    cp $00                                        ; $462E: $FE $00
    pop de                                        ; $4630: $D1
    cp $FA                                        ; $4631: $FE $FA
    rst RST_38                                    ; $4633: $FF
    push af                                       ; $4634: $F5
    rst RST_38                                    ; $4635: $FF
    rst RST_38                                    ; $4636: $FF
    rst RST_38                                    ; $4637: $FF
    rst RST_38                                    ; $4638: $FF
    rst RST_38                                    ; $4639: $FF
    rst RST_38                                    ; $463A: $FF
    sbc a                                         ; $463B: $9F
    ld e, a                                       ; $463C: $5F
    rst RST_28                                    ; $463D: $EF
    xor a                                         ; $463E: $AF
    rst RST_30                                    ; $463F: $F7
    rst RST_38                                    ; $4640: $FF
    rst RST_30                                    ; $4641: $F7
    rst RST_28                                    ; $4642: $EF
    rst RST_30                                    ; $4643: $F7
    rst RST_38                                    ; $4644: $FF
    rst RST_30                                    ; $4645: $F7
    rst RST_38                                    ; $4646: $FF
    rst RST_30                                    ; $4647: $F7
    rst RST_38                                    ; $4648: $FF
    rst RST_30                                    ; $4649: $F7
    rst RST_38                                    ; $464A: $FF
    rst RST_30                                    ; $464B: $F7
    rst RST_38                                    ; $464C: $FF
    ldh a, [$FFF8]                                ; $464D: $F0 $F8
    ldh a, [$FFF8]                                ; $464F: $F0 $F8
    ldh a, [$FFF8]                                ; $4651: $F0 $F8
    ld [hl], b                                    ; $4653: $70
    ld sp, hl                                     ; $4654: $F9
    db $10                                        ; $4655: $10
    sub e                                         ; $4656: $93
    ld h, b                                       ; $4657: $60
    di                                            ; $4658: $F3
    nop                                           ; $4659: $00
    nop                                           ; $465A: $00
    nop                                           ; $465B: $00
    nop                                           ; $465C: $00
    nop                                           ; $465D: $00
    nop                                           ; $465E: $00
    nop                                           ; $465F: $00
    ret nz                                        ; $4660: $C0

    nop                                           ; $4661: $00
    jr nc, jr_01B_4624                            ; $4662: $30 $C0

    ld c, b                                       ; $4664: $48
    ldh a, [$FFBC]                                ; $4665: $F0 $BC
    ld hl, sp-$02                                 ; $4667: $F8 $FE
    db $E4                                        ; $4669: $E4
    rst RST_10                                    ; $466A: $D7
    ld a, [$FCEB]                                 ; $466B: $FA $EB $FC
    rst RST_38                                    ; $466E: $FF
    db $FD                                        ; $466F: $FD
    ei                                            ; $4670: $FB
    cp $FF                                        ; $4671: $FE $FF
    cp $FF                                        ; $4673: $FE $FF
    ld a, [hl]                                    ; $4675: $7E
    rst RST_38                                    ; $4676: $FF
    ld a, [hl]                                    ; $4677: $7E
    rst RST_38                                    ; $4678: $FF
    ld a, b                                       ; $4679: $78
    rst RST_38                                    ; $467A: $FF
    cp [hl]                                       ; $467B: $BE
    rst RST_38                                    ; $467C: $FF
    ld a, $FF                                     ; $467D: $3E $FF
    ld e, [hl]                                    ; $467F: $5E
    rst RST_38                                    ; $4680: $FF
    ld e, [hl]                                    ; $4681: $5E
    rst RST_38                                    ; $4682: $FF
    ld c, [hl]                                    ; $4683: $4E
    rst RST_28                                    ; $4684: $EF
    db $10                                        ; $4685: $10
    ld c, c                                       ; $4686: $49
    or [hl]                                       ; $4687: $B6
    rst RST_38                                    ; $4688: $FF
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
    add b                                         ; $46A0: $80
    nop                                           ; $46A1: $00
    add b                                         ; $46A2: $80
    nop                                           ; $46A3: $00
    ret nz                                        ; $46A4: $C0

    add b                                         ; $46A5: $80
    ret nz                                        ; $46A6: $C0

    add b                                         ; $46A7: $80
    ldh [$FFC0], a                                ; $46A8: $E0 $C0
    ldh a, [$FFE0]                                ; $46AA: $F0 $E0
    ld hl, sp-$10                                 ; $46AC: $F8 $F0
    db $FC                                        ; $46AE: $FC
    ld hl, sp-$02                                 ; $46AF: $F8 $FE
    db $FC                                        ; $46B1: $FC
    rst RST_38                                    ; $46B2: $FF
    ld a, $3F                                     ; $46B3: $3E $3F
    nop                                           ; $46B5: $00
    nop                                           ; $46B6: $00
    nop                                           ; $46B7: $00
    nop                                           ; $46B8: $00
    nop                                           ; $46B9: $00
    nop                                           ; $46BA: $00
    nop                                           ; $46BB: $00
    nop                                           ; $46BC: $00
    nop                                           ; $46BD: $00
    nop                                           ; $46BE: $00
    nop                                           ; $46BF: $00
    nop                                           ; $46C0: $00
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
    nop                                           ; $46D4: $00
    nop                                           ; $46D5: $00
    nop                                           ; $46D6: $00

jr_01B_46D7:
    nop                                           ; $46D7: $00
    nop                                           ; $46D8: $00
    nop                                           ; $46D9: $00
    nop                                           ; $46DA: $00
    nop                                           ; $46DB: $00
    nop                                           ; $46DC: $00
    nop                                           ; $46DD: $00
    ld bc, $0000                                  ; $46DE: $01 $00 $00
    nop                                           ; $46E1: $00
    nop                                           ; $46E2: $00
    nop                                           ; $46E3: $00
    nop                                           ; $46E4: $00
    nop                                           ; $46E5: $00
    rrca                                          ; $46E6: $0F
    nop                                           ; $46E7: $00
    jr nc, jr_01B_46F9                            ; $46E8: $30 $0F

    ld c, a                                       ; $46EA: $4F
    ccf                                           ; $46EB: $3F
    cp a                                          ; $46EC: $BF
    ld b, b                                       ; $46ED: $40
    ret nz                                        ; $46EE: $C0

    nop                                           ; $46EF: $00
    nop                                           ; $46F0: $00
    nop                                           ; $46F1: $00
    ccf                                           ; $46F2: $3F
    nop                                           ; $46F3: $00
    inc hl                                        ; $46F4: $23
    dec e                                         ; $46F5: $1D
    inc de                                        ; $46F6: $13
    dec c                                         ; $46F7: $0D
    dec bc                                        ; $46F8: $0B

jr_01B_46F9:
    dec b                                         ; $46F9: $05
    rlca                                          ; $46FA: $07
    ld bc, $0001                                  ; $46FB: $01 $01 $00
    nop                                           ; $46FE: $00
    nop                                           ; $46FF: $00
    ld bc, $FF00                                  ; $4700: $01 $00 $FF
    nop                                           ; $4703: $00
    inc bc                                        ; $4704: $03
    db $FC                                        ; $4705: $FC
    inc bc                                        ; $4706: $03
    db $FD                                        ; $4707: $FD
    rst RST_38                                    ; $4708: $FF
    db $FD                                        ; $4709: $FD
    rst RST_38                                    ; $470A: $FF
    ld bc, $127F                                  ; $470B: $01 $7F $12
    rst RST_18                                    ; $470E: $DF
    scf                                           ; $470F: $37
    rst RST_38                                    ; $4710: $FF
    adc $FF                                       ; $4711: $CE $FF
    ld sp, hl                                     ; $4713: $F9
    rst RST_38                                    ; $4714: $FF
    ccf                                           ; $4715: $3F
    rst RST_38                                    ; $4716: $FF
    ld a, c                                       ; $4717: $79
    rst RST_38                                    ; $4718: $FF
    add $FF                                       ; $4719: $C6 $FF
    cp a                                          ; $471B: $BF
    rst RST_38                                    ; $471C: $FF
    jr nc, jr_01B_474F                            ; $471D: $30 $30

    nop                                           ; $471F: $00
    nop                                           ; $4720: $00
    nop                                           ; $4721: $00
    nop                                           ; $4722: $00
    nop                                           ; $4723: $00
    jr nc, jr_01B_4726                            ; $4724: $30 $00

jr_01B_4726:
    jr z, jr_01B_4738                             ; $4726: $28 $10

    ld l, $10                                     ; $4728: $2E $10
    ld e, d                                       ; $472A: $5A
    inc h                                         ; $472B: $24
    ld d, h                                       ; $472C: $54
    jr z, jr_01B_46D7                             ; $472D: $28 $A8

    ld d, b                                       ; $472F: $50
    call z, $9BB0                                 ; $4730: $CC $B0 $9B
    ld [hl], h                                    ; $4733: $74
    ld a, a                                       ; $4734: $7F
    ld sp, hl                                     ; $4735: $F9
    rst RST_38                                    ; $4736: $FF
    ei                                            ; $4737: $FB

jr_01B_4738:
    adc a                                         ; $4738: $8F
    di                                            ; $4739: $F3
    scf                                           ; $473A: $37
    db $EB                                        ; $473B: $EB
    rst RST_38                                    ; $473C: $FF
    di                                            ; $473D: $F3
    rst RST_38                                    ; $473E: $FF
    rst RST_30                                    ; $473F: $F7
    rst RST_38                                    ; $4740: $FF
    rst RST_30                                    ; $4741: $F7
    rst RST_38                                    ; $4742: $FF
    rst RST_28                                    ; $4743: $EF
    rst RST_38                                    ; $4744: $FF
    db $DB                                        ; $4745: $DB
    rst RST_38                                    ; $4746: $FF
    db $EB                                        ; $4747: $EB
    rst RST_38                                    ; $4748: $FF
    db $EB                                        ; $4749: $EB
    rst RST_38                                    ; $474A: $FF
    inc bc                                        ; $474B: $03
    adc a                                         ; $474C: $8F
    rlca                                          ; $474D: $07
    rrca                                          ; $474E: $0F

jr_01B_474F:
    rlca                                          ; $474F: $07
    rra                                           ; $4750: $1F
    rlca                                          ; $4751: $07
    ld [hl], a                                    ; $4752: $77
    ld [$5BA4], sp                                ; $4753: $08 $A4 $5B
    rst RST_38                                    ; $4756: $FF
    nop                                           ; $4757: $00
    nop                                           ; $4758: $00
    nop                                           ; $4759: $00
    nop                                           ; $475A: $00
    nop                                           ; $475B: $00
    nop                                           ; $475C: $00
    nop                                           ; $475D: $00
    nop                                           ; $475E: $00
    nop                                           ; $475F: $00
    cp $00                                        ; $4760: $FE $00
    pop de                                        ; $4762: $D1
    cp $FA                                        ; $4763: $FE $FA
    rst RST_38                                    ; $4765: $FF

jr_01B_4766:
    push af                                       ; $4766: $F5
    rst RST_38                                    ; $4767: $FF
    rst RST_38                                    ; $4768: $FF
    rst RST_38                                    ; $4769: $FF
    rst RST_38                                    ; $476A: $FF
    sbc a                                         ; $476B: $9F
    ld e, a                                       ; $476C: $5F
    rst RST_28                                    ; $476D: $EF
    xor a                                         ; $476E: $AF
    rst RST_30                                    ; $476F: $F7
    rst RST_38                                    ; $4770: $FF
    rst RST_30                                    ; $4771: $F7
    rst RST_28                                    ; $4772: $EF
    rst RST_30                                    ; $4773: $F7
    rst RST_38                                    ; $4774: $FF
    rst RST_30                                    ; $4775: $F7
    rst RST_38                                    ; $4776: $FF
    rst RST_30                                    ; $4777: $F7
    rst RST_38                                    ; $4778: $FF
    rst RST_28                                    ; $4779: $EF
    rst RST_38                                    ; $477A: $FF
    adc a                                         ; $477B: $8F
    rst RST_38                                    ; $477C: $FF
    rst RST_08                                    ; $477D: $CF
    rst RST_38                                    ; $477E: $FF
    ret nz                                        ; $477F: $C0

    rst RST_28                                    ; $4780: $EF
    add a                                         ; $4781: $87
    rst RST_30                                    ; $4782: $F7
    ld l, e                                       ; $4783: $6B
    rst RST_38                                    ; $4784: $FF
    nop                                           ; $4785: $00
    add b                                         ; $4786: $80
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
    nop                                           ; $47A0: $00
    nop                                           ; $47A1: $00
    ret nz                                        ; $47A2: $C0

    nop                                           ; $47A3: $00
    jr nc, jr_01B_4766                            ; $47A4: $30 $C0

    ld c, b                                       ; $47A6: $48
    ldh a, [$FFBC]                                ; $47A7: $F0 $BC
    ld hl, sp-$2A                                 ; $47A9: $F8 $D6
    ld hl, sp-$16                                 ; $47AB: $F8 $EA
    db $FC                                        ; $47AD: $FC
    rst RST_38                                    ; $47AE: $FF
    db $FC                                        ; $47AF: $FC
    ei                                            ; $47B0: $FB
    cp $FF                                        ; $47B1: $FE $FF
    cp $FF                                        ; $47B3: $FE $FF
    cp $FF                                        ; $47B5: $FE $FF
    ld a, [hl]                                    ; $47B7: $7E
    rst RST_38                                    ; $47B8: $FF
    ld a, c                                       ; $47B9: $79
    rst RST_38                                    ; $47BA: $FF
    cp a                                          ; $47BB: $BF
    rst RST_38                                    ; $47BC: $FF
    adc a                                         ; $47BD: $8F
    rst RST_38                                    ; $47BE: $FF
    ld d, a                                       ; $47BF: $57
    rst RST_38                                    ; $47C0: $FF
    or c                                          ; $47C1: $B1
    db $FD                                        ; $47C2: $FD
    ld [bc], a                                    ; $47C3: $02
    xor c                                         ; $47C4: $A9
    ld d, $3F                                     ; $47C5: $16 $3F
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
    nop                                           ; $47E0: $00
    nop                                           ; $47E1: $00
    add b                                         ; $47E2: $80
    nop                                           ; $47E3: $00
    add b                                         ; $47E4: $80
    nop                                           ; $47E5: $00
    add b                                         ; $47E6: $80
    nop                                           ; $47E7: $00
    add b                                         ; $47E8: $80
    nop                                           ; $47E9: $00
    ret nz                                        ; $47EA: $C0

    add b                                         ; $47EB: $80
    ret nz                                        ; $47EC: $C0

    add b                                         ; $47ED: $80
    ldh [$FFC0], a                                ; $47EE: $E0 $C0
    ldh [$FFC0], a                                ; $47F0: $E0 $C0
    ldh [rP1], a                                  ; $47F2: $E0 $00
    jr nz, @-$3E                                  ; $47F4: $20 $C0

    ldh [rP1], a                                  ; $47F6: $E0 $00
    nop                                           ; $47F8: $00
    nop                                           ; $47F9: $00
    nop                                           ; $47FA: $00
    nop                                           ; $47FB: $00
    nop                                           ; $47FC: $00
    nop                                           ; $47FD: $00
    nop                                           ; $47FE: $00
    nop                                           ; $47FF: $00
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
    rlca                                          ; $480A: $07
    nop                                           ; $480B: $00
    jr jr_01B_4815                                ; $480C: $18 $07

    daa                                           ; $480E: $27
    rra                                           ; $480F: $1F
    ld e, a                                       ; $4810: $5F
    jr nz, jr_01B_4873                            ; $4811: $20 $60

    nop                                           ; $4813: $00
    nop                                           ; $4814: $00

jr_01B_4815:
    nop                                           ; $4815: $00
    rra                                           ; $4816: $1F
    nop                                           ; $4817: $00
    ld de, $090E                                  ; $4818: $11 $0E $09
    ld b, $05                                     ; $481B: $06 $05
    ld [bc], a                                    ; $481D: $02
    inc bc                                        ; $481E: $03
    nop                                           ; $481F: $00
    ld a, a                                       ; $4820: $7F
    nop                                           ; $4821: $00
    add c                                         ; $4822: $81
    ld a, [hl]                                    ; $4823: $7E
    ld bc, $FFFE                                  ; $4824: $01 $FE $FF
    cp $FF                                        ; $4827: $FE $FF
    nop                                           ; $4829: $00
    ccf                                           ; $482A: $3F
    add hl, bc                                    ; $482B: $09
    ld l, a                                       ; $482C: $6F
    dec de                                        ; $482D: $1B
    rst RST_38                                    ; $482E: $FF
    ld h, a                                       ; $482F: $67
    rst RST_38                                    ; $4830: $FF
    db $FC                                        ; $4831: $FC
    rst RST_38                                    ; $4832: $FF
    sbc a                                         ; $4833: $9F

jr_01B_4834:
    rst RST_38                                    ; $4834: $FF
    cp h                                          ; $4835: $BC
    rst RST_38                                    ; $4836: $FF
    db $E3                                        ; $4837: $E3
    rst RST_38                                    ; $4838: $FF
    ld e, a                                       ; $4839: $5F
    ld a, a                                       ; $483A: $7F
    jr jr_01B_4858                                ; $483B: $18 $1B

    nop                                           ; $483D: $00
    nop                                           ; $483E: $00
    nop                                           ; $483F: $00
    jr jr_01B_4842                                ; $4840: $18 $00

jr_01B_4842:
    inc d                                         ; $4842: $14
    ld [$0817], sp                                ; $4843: $08 $17 $08
    dec l                                         ; $4846: $2D
    ld [de], a                                    ; $4847: $12
    ld a, [hl+]                                   ; $4848: $2A
    inc d                                         ; $4849: $14
    ld d, [hl]                                    ; $484A: $56
    jr z, jr_01B_4834                             ; $484B: $28 $E7

    ld e, b                                       ; $484D: $58
    call $BF3A                                    ; $484E: $CD $3A $BF
    ld a, h                                       ; $4851: $7C
    rst RST_38                                    ; $4852: $FF
    db $FD                                        ; $4853: $FD
    rst RST_00                                    ; $4854: $C7
    ld hl, sp-$65                                 ; $4855: $F8 $9B
    push af                                       ; $4857: $F5

jr_01B_4858:
    rst RST_38                                    ; $4858: $FF
    ld a, c                                       ; $4859: $79
    rst RST_38                                    ; $485A: $FF
    ei                                            ; $485B: $FB
    rst RST_38                                    ; $485C: $FF
    ld a, e                                       ; $485D: $7B
    rst RST_38                                    ; $485E: $FF
    di                                            ; $485F: $F3
    ld a, a                                       ; $4860: $7F
    nop                                           ; $4861: $00
    and b                                         ; $4862: $A0
    ld a, a                                       ; $4863: $7F

jr_01B_4864:
    push af                                       ; $4864: $F5
    rst RST_38                                    ; $4865: $FF
    rst RST_38                                    ; $4866: $FF
    rst RST_38                                    ; $4867: $FF
    rst RST_38                                    ; $4868: $FF
    rst RST_38                                    ; $4869: $FF
    rst RST_38                                    ; $486A: $FF
    ccf                                           ; $486B: $3F
    rst RST_38                                    ; $486C: $FF
    rst RST_08                                    ; $486D: $CF
    xor a                                         ; $486E: $AF
    rst RST_30                                    ; $486F: $F7
    rst RST_10                                    ; $4870: $D7
    ei                                            ; $4871: $FB
    rst RST_38                                    ; $4872: $FF

jr_01B_4873:
    ld sp, hl                                     ; $4873: $F9
    rst RST_30                                    ; $4874: $F7
    ld sp, hl                                     ; $4875: $F9
    rst RST_38                                    ; $4876: $FF
    db $FD                                        ; $4877: $FD
    rst RST_38                                    ; $4878: $FF
    db $FD                                        ; $4879: $FD
    rst RST_38                                    ; $487A: $FF
    dec a                                         ; $487B: $3D
    rst RST_38                                    ; $487C: $FF
    ld a, l                                       ; $487D: $7D
    ld a, a                                       ; $487E: $7F
    adc b                                         ; $487F: $88
    ldh [rP1], a                                  ; $4880: $E0 $00
    jr jr_01B_4864                                ; $4882: $18 $E0

    and [hl]                                      ; $4884: $A6
    ld hl, sp-$21                                 ; $4885: $F8 $DF
    cp $FF                                        ; $4887: $FE $FF
    pop af                                        ; $4889: $F1
    push af                                       ; $488A: $F5
    cp $EA                                        ; $488B: $FE $EA
    rst RST_38                                    ; $488D: $FF
    db $FD                                        ; $488E: $FD
    ld a, a                                       ; $488F: $7F
    rst RST_38                                    ; $4890: $FF
    ld a, a                                       ; $4891: $7F
    rst RST_38                                    ; $4892: $FF
    ld a, a                                       ; $4893: $7F
    rst RST_38                                    ; $4894: $FF
    ld a, a                                       ; $4895: $7F
    rst RST_38                                    ; $4896: $FF
    cp [hl]                                       ; $4897: $BE
    rst RST_38                                    ; $4898: $FF
    pop bc                                        ; $4899: $C1
    rst RST_38                                    ; $489A: $FF
    ld sp, hl                                     ; $489B: $F9
    db $FD                                        ; $489C: $FD
    ld [bc], a                                    ; $489D: $02
    jp hl                                         ; $489E: $E9


    ld d, $80                                     ; $489F: $16 $80
    nop                                           ; $48A1: $00
    ret nz                                        ; $48A2: $C0

    add b                                         ; $48A3: $80
    ldh [rP1], a                                  ; $48A4: $E0 $00
    ldh a, [rLCDC]                                ; $48A6: $F0 $40
    ldh a, [$FFC0]                                ; $48A8: $F0 $C0
    ld hl, sp-$30                                 ; $48AA: $F8 $D0
    ld hl, sp-$30                                 ; $48AC: $F8 $D0
    db $FC                                        ; $48AE: $FC
    ret c                                         ; $48AF: $D8

    db $FC                                        ; $48B0: $FC
    ret z                                         ; $48B1: $C8

    db $FC                                        ; $48B2: $FC
    cp b                                          ; $48B3: $B8
    db $FC                                        ; $48B4: $FC
    ld a, b                                       ; $48B5: $78
    ld hl, sp-$10                                 ; $48B6: $F8 $F0
    ldh a, [rP1]                                  ; $48B8: $F0 $00
    nop                                           ; $48BA: $00
    nop                                           ; $48BB: $00
    nop                                           ; $48BC: $00
    nop                                           ; $48BD: $00
    nop                                           ; $48BE: $00
    nop                                           ; $48BF: $00
    rst RST_38                                    ; $48C0: $FF
    db $EB                                        ; $48C1: $EB
    rst RST_38                                    ; $48C2: $FF
    push af                                       ; $48C3: $F5
    rst RST_38                                    ; $48C4: $FF
    halt                                          ; $48C5: $76
    rst RST_38                                    ; $48C6: $FF
    adc e                                         ; $48C7: $8B
    rst RST_38                                    ; $48C8: $FF
    ld a, b                                       ; $48C9: $78
    ld a, [$0F05]                                 ; $48CA: $FA $05 $0F
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
    ld c, a                                       ; $48E0: $4F
    or b                                          ; $48E1: $B0
    ld hl, sp+$00                                 ; $48E2: $F8 $00
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
    nop                                           ; $48EE: $00
    nop                                           ; $48EF: $00
    nop                                           ; $48F0: $00
    nop                                           ; $48F1: $00
    nop                                           ; $48F2: $00
    nop                                           ; $48F3: $00
    nop                                           ; $48F4: $00
    nop                                           ; $48F5: $00
    nop                                           ; $48F6: $00
    nop                                           ; $48F7: $00
    nop                                           ; $48F8: $00
    nop                                           ; $48F9: $00
    nop                                           ; $48FA: $00
    nop                                           ; $48FB: $00
    nop                                           ; $48FC: $00
    nop                                           ; $48FD: $00
    nop                                           ; $48FE: $00
    nop                                           ; $48FF: $00
    ccf                                           ; $4900: $3F
    nop                                           ; $4901: $00
    nop                                           ; $4902: $00
    nop                                           ; $4903: $00
    nop                                           ; $4904: $00
    nop                                           ; $4905: $00
    nop                                           ; $4906: $00
    nop                                           ; $4907: $00
    nop                                           ; $4908: $00
    nop                                           ; $4909: $00
    nop                                           ; $490A: $00
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
    nop                                           ; $4916: $00
    nop                                           ; $4917: $00
    nop                                           ; $4918: $00

jr_01B_4919:
    nop                                           ; $4919: $00
    nop                                           ; $491A: $00
    nop                                           ; $491B: $00
    nop                                           ; $491C: $00
    nop                                           ; $491D: $00
    nop                                           ; $491E: $00
    nop                                           ; $491F: $00
    nop                                           ; $4920: $00
    nop                                           ; $4921: $00
    nop                                           ; $4922: $00
    nop                                           ; $4923: $00
    nop                                           ; $4924: $00
    nop                                           ; $4925: $00
    nop                                           ; $4926: $00
    nop                                           ; $4927: $00
    rrca                                          ; $4928: $0F
    nop                                           ; $4929: $00
    jr nc, jr_01B_493B                            ; $492A: $30 $0F

    ld c, a                                       ; $492C: $4F
    ccf                                           ; $492D: $3F
    cp a                                          ; $492E: $BF
    ld b, b                                       ; $492F: $40
    ret nz                                        ; $4930: $C0

    nop                                           ; $4931: $00
    nop                                           ; $4932: $00
    nop                                           ; $4933: $00
    ccf                                           ; $4934: $3F
    nop                                           ; $4935: $00
    inc hl                                        ; $4936: $23
    dec e                                         ; $4937: $1D
    inc de                                        ; $4938: $13
    dec c                                         ; $4939: $0D
    dec bc                                        ; $493A: $0B

jr_01B_493B:
    dec b                                         ; $493B: $05
    rlca                                          ; $493C: $07
    ld bc, $0001                                  ; $493D: $01 $01 $00
    ld bc, $FF00                                  ; $4940: $01 $00 $FF
    nop                                           ; $4943: $00
    inc bc                                        ; $4944: $03
    db $FC                                        ; $4945: $FC
    inc bc                                        ; $4946: $03
    db $FD                                        ; $4947: $FD
    rst RST_38                                    ; $4948: $FF
    db $FD                                        ; $4949: $FD
    rst RST_38                                    ; $494A: $FF
    ld bc, $127F                                  ; $494B: $01 $7F $12
    rst RST_18                                    ; $494E: $DF
    scf                                           ; $494F: $37
    rst RST_38                                    ; $4950: $FF
    adc $FF                                       ; $4951: $CE $FF
    ld sp, hl                                     ; $4953: $F9
    rst RST_38                                    ; $4954: $FF
    ccf                                           ; $4955: $3F
    rst RST_38                                    ; $4956: $FF
    ld a, c                                       ; $4957: $79
    rst RST_38                                    ; $4958: $FF
    jp nz, $83C7                                  ; $4959: $C2 $C7 $83

    rst RST_00                                    ; $495C: $C7
    inc bc                                        ; $495D: $03
    rra                                           ; $495E: $1F
    ld b, $00                                     ; $495F: $06 $00
    nop                                           ; $4961: $00
    jr nc, jr_01B_4964                            ; $4962: $30 $00

jr_01B_4964:
    jr z, @+$12                                   ; $4964: $28 $10

    ld l, $10                                     ; $4966: $2E $10
    ld e, d                                       ; $4968: $5A
    inc h                                         ; $4969: $24
    ld d, h                                       ; $496A: $54
    jr z, jr_01B_4919                             ; $496B: $28 $AC

    ld d, b                                       ; $496D: $50
    call z, $9AB0                                 ; $496E: $CC $B0 $9A
    ld [hl], h                                    ; $4971: $74
    ld a, [hl]                                    ; $4972: $7E
    ld hl, sp-$01                                 ; $4973: $F8 $FF
    ld hl, sp-$71                                 ; $4975: $F8 $8F
    di                                            ; $4977: $F3
    scf                                           ; $4978: $37
    db $EB                                        ; $4979: $EB
    rst RST_38                                    ; $497A: $FF
    di                                            ; $497B: $F3
    rst RST_38                                    ; $497C: $FF
    rst RST_30                                    ; $497D: $F7
    rst RST_38                                    ; $497E: $FF
    rst RST_30                                    ; $497F: $F7
    rst RST_38                                    ; $4980: $FF
    rst RST_28                                    ; $4981: $EF
    cp $DF                                        ; $4982: $FE $DF
    rst RST_38                                    ; $4984: $FF
    rst RST_28                                    ; $4985: $EF
    rst RST_38                                    ; $4986: $FF
    rst RST_28                                    ; $4987: $EF
    rst RST_38                                    ; $4988: $FF
    rrca                                          ; $4989: $0F
    cp a                                          ; $498A: $BF
    rla                                           ; $498B: $17
    ccf                                           ; $498C: $3F
    rla                                           ; $498D: $17
    ccf                                           ; $498E: $3F
    add hl, de                                    ; $498F: $19
    ld a, a                                       ; $4990: $7F
    dec sp                                        ; $4991: $3B
    rst RST_38                                    ; $4992: $FF
    ld d, a                                       ; $4993: $57
    ld e, a                                       ; $4994: $5F
    and a                                         ; $4995: $A7
    ld e, a                                       ; $4996: $5F
    and e                                         ; $4997: $A3
    di                                            ; $4998: $F3
    inc c                                         ; $4999: $0C
    inc [hl]                                      ; $499A: $34
    dec bc                                        ; $499B: $0B
    dec [hl]                                      ; $499C: $35
    ld a, [bc]                                    ; $499D: $0A
    ld e, $00                                     ; $499E: $1E $00
    nop                                           ; $49A0: $00
    nop                                           ; $49A1: $00
    nop                                           ; $49A2: $00
    nop                                           ; $49A3: $00
    nop                                           ; $49A4: $00
    nop                                           ; $49A5: $00
    add b                                         ; $49A6: $80
    nop                                           ; $49A7: $00
    ldh [$FF80], a                                ; $49A8: $E0 $80
    ld hl, sp-$20                                 ; $49AA: $F8 $E0
    db $E4                                        ; $49AC: $E4
    ld hl, sp-$06                                 ; $49AD: $F8 $FA
    db $FC                                        ; $49AF: $FC
    push af                                       ; $49B0: $F5
    cp $FA                                        ; $49B1: $FE $FA
    ccf                                           ; $49B3: $3F
    cp [hl]                                       ; $49B4: $BE
    rst RST_18                                    ; $49B5: $DF
    ld e, a                                       ; $49B6: $5F
    rst RST_28                                    ; $49B7: $EF
    rst RST_38                                    ; $49B8: $FF
    rst RST_28                                    ; $49B9: $EF
    rst RST_18                                    ; $49BA: $DF
    rst RST_28                                    ; $49BB: $EF
    rst RST_38                                    ; $49BC: $FF
    rst RST_28                                    ; $49BD: $EF
    rst RST_38                                    ; $49BE: $FF
    db $EC                                        ; $49BF: $EC
    cp $EF                                        ; $49C0: $FE $EF
    db $FD                                        ; $49C2: $FD
    rst RST_28                                    ; $49C3: $EF
    rst RST_38                                    ; $49C4: $FF
    rst RST_28                                    ; $49C5: $EF
    rst RST_38                                    ; $49C6: $FF
    rst RST_18                                    ; $49C7: $DF
    rst RST_38                                    ; $49C8: $FF
    rst RST_18                                    ; $49C9: $DF
    rst RST_38                                    ; $49CA: $FF
    sbc a                                         ; $49CB: $9F
    rst RST_38                                    ; $49CC: $FF
    cpl                                           ; $49CD: $2F
    ld a, a                                       ; $49CE: $7F
    cpl                                           ; $49CF: $2F
    ld a, a                                       ; $49D0: $7F
    scf                                           ; $49D1: $37
    ccf                                           ; $49D2: $3F
    add hl, de                                    ; $49D3: $19
    rra                                           ; $49D4: $1F
    ld c, $1F                                     ; $49D5: $0E $1F
    inc c                                         ; $49D7: $0C
    dec l                                         ; $49D8: $2D
    db $10                                        ; $49D9: $10
    ld [hl-], a                                   ; $49DA: $32
    ld bc, $0102                                  ; $49DB: $01 $02 $01
    ld bc, $0000                                  ; $49DE: $01 $00 $00
    nop                                           ; $49E1: $00
    add b                                         ; $49E2: $80
    nop                                           ; $49E3: $00
    add b                                         ; $49E4: $80
    nop                                           ; $49E5: $00
    ld b, b                                       ; $49E6: $40
    add b                                         ; $49E7: $80
    ld b, b                                       ; $49E8: $40
    add b                                         ; $49E9: $80
    ret nz                                        ; $49EA: $C0

    add b                                         ; $49EB: $80
    ldh [$FFC0], a                                ; $49EC: $E0 $C0
    ldh [$FFC0], a                                ; $49EE: $E0 $C0
    ldh [rLCDC], a                                ; $49F0: $E0 $40
    ld h, b                                       ; $49F2: $60
    add b                                         ; $49F3: $80
    ldh a, [$FFA0]                                ; $49F4: $F0 $A0
    ld [hl], b                                    ; $49F6: $70
    ret nz                                        ; $49F7: $C0

    ldh a, [$FFC0]                                ; $49F8: $F0 $C0
    ld hl, sp-$30                                 ; $49FA: $F8 $D0
    ld hl, sp-$40                                 ; $49FC: $F8 $C0
    db $FC                                        ; $49FE: $FC
    jr z, @-$02                                   ; $49FF: $28 $FC

    ldh a, [$FFFE]                                ; $4A01: $F0 $FE
    db $F4                                        ; $4A03: $F4
    cp $F8                                        ; $4A04: $FE $F8
    rst RST_38                                    ; $4A06: $FF
    ld a, [hl-]                                   ; $4A07: $3A
    cp a                                          ; $4A08: $BF
    ld b, e                                       ; $4A09: $43
    and a                                         ; $4A0A: $A7
    ld e, e                                       ; $4A0B: $5B
    xor a                                         ; $4A0C: $AF
    ld d, c                                       ; $4A0D: $51
    reti                                          ; $4A0E: $D9


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
    ld e, $0C                                     ; $4A20: $1E $0C
    inc c                                         ; $4A22: $0C
    nop                                           ; $4A23: $00
    nop                                           ; $4A24: $00
    nop                                           ; $4A25: $00
    ld bc, $0100                                  ; $4A26: $01 $00 $01
    nop                                           ; $4A29: $00
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
    nop                                           ; $4A37: $00
    nop                                           ; $4A38: $00
    nop                                           ; $4A39: $00
    nop                                           ; $4A3A: $00
    nop                                           ; $4A3B: $00
    nop                                           ; $4A3C: $00
    nop                                           ; $4A3D: $00
    nop                                           ; $4A3E: $00
    nop                                           ; $4A3F: $00
    add b                                         ; $4A40: $80
    nop                                           ; $4A41: $00
    ret nz                                        ; $4A42: $C0

    add b                                         ; $4A43: $80
    ldh [$FFC0], a                                ; $4A44: $E0 $C0
    ldh [rP1], a                                  ; $4A46: $E0 $00
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
    nop                                           ; $4A55: $00
    nop                                           ; $4A56: $00
    nop                                           ; $4A57: $00
    nop                                           ; $4A58: $00
    nop                                           ; $4A59: $00
    nop                                           ; $4A5A: $00

jr_01B_4A5B:
    nop                                           ; $4A5B: $00
    nop                                           ; $4A5C: $00
    nop                                           ; $4A5D: $00
    nop                                           ; $4A5E: $00
    nop                                           ; $4A5F: $00
    nop                                           ; $4A60: $00
    nop                                           ; $4A61: $00
    nop                                           ; $4A62: $00
    nop                                           ; $4A63: $00
    rrca                                          ; $4A64: $0F
    nop                                           ; $4A65: $00
    jr nc, jr_01B_4A77                            ; $4A66: $30 $0F

    ld c, a                                       ; $4A68: $4F
    ccf                                           ; $4A69: $3F
    cp a                                          ; $4A6A: $BF
    ld b, b                                       ; $4A6B: $40
    ret nz                                        ; $4A6C: $C0

    nop                                           ; $4A6D: $00
    nop                                           ; $4A6E: $00
    nop                                           ; $4A6F: $00
    ccf                                           ; $4A70: $3F
    nop                                           ; $4A71: $00
    inc hl                                        ; $4A72: $23
    dec e                                         ; $4A73: $1D
    inc de                                        ; $4A74: $13
    dec c                                         ; $4A75: $0D
    dec bc                                        ; $4A76: $0B

jr_01B_4A77:
    dec b                                         ; $4A77: $05
    rlca                                          ; $4A78: $07
    ld bc, $0001                                  ; $4A79: $01 $01 $00
    nop                                           ; $4A7C: $00
    nop                                           ; $4A7D: $00
    nop                                           ; $4A7E: $00
    nop                                           ; $4A7F: $00
    ld bc, $FF00                                  ; $4A80: $01 $00 $FF
    nop                                           ; $4A83: $00
    inc bc                                        ; $4A84: $03
    db $FC                                        ; $4A85: $FC
    inc bc                                        ; $4A86: $03
    db $FD                                        ; $4A87: $FD
    rst RST_38                                    ; $4A88: $FF
    db $FD                                        ; $4A89: $FD
    rst RST_38                                    ; $4A8A: $FF
    ld bc, $127F                                  ; $4A8B: $01 $7F $12
    rst RST_18                                    ; $4A8E: $DF
    scf                                           ; $4A8F: $37
    rst RST_38                                    ; $4A90: $FF
    adc $FF                                       ; $4A91: $CE $FF
    ld sp, hl                                     ; $4A93: $F9
    rst RST_38                                    ; $4A94: $FF
    ccf                                           ; $4A95: $3F
    rst RST_38                                    ; $4A96: $FF
    ld a, c                                       ; $4A97: $79
    rst RST_38                                    ; $4A98: $FF
    add $FF                                       ; $4A99: $C6 $FF
    cp a                                          ; $4A9B: $BF
    rst RST_38                                    ; $4A9C: $FF
    jr nc, jr_01B_4ADE                            ; $4A9D: $30 $3F

    rlca                                          ; $4A9F: $07
    nop                                           ; $4AA0: $00
    nop                                           ; $4AA1: $00
    nop                                           ; $4AA2: $00
    nop                                           ; $4AA3: $00
    jr nc, jr_01B_4AA6                            ; $4AA4: $30 $00

jr_01B_4AA6:
    jr z, jr_01B_4AB8                             ; $4AA6: $28 $10

    ld l, $10                                     ; $4AA8: $2E $10
    ld e, d                                       ; $4AAA: $5A
    inc h                                         ; $4AAB: $24
    ld d, h                                       ; $4AAC: $54
    jr z, jr_01B_4A5B                             ; $4AAD: $28 $AC

    ld d, b                                       ; $4AAF: $50
    call z, $9BB0                                 ; $4AB0: $CC $B0 $9B
    ld [hl], h                                    ; $4AB3: $74
    ld a, a                                       ; $4AB4: $7F
    ld sp, hl                                     ; $4AB5: $F9
    rst RST_38                                    ; $4AB6: $FF
    ei                                            ; $4AB7: $FB

jr_01B_4AB8:
    adc a                                         ; $4AB8: $8F
    di                                            ; $4AB9: $F3
    scf                                           ; $4ABA: $37
    db $EB                                        ; $4ABB: $EB
    rst RST_38                                    ; $4ABC: $FF
    di                                            ; $4ABD: $F3
    rst RST_38                                    ; $4ABE: $FF
    rst RST_30                                    ; $4ABF: $F7
    rst RST_38                                    ; $4AC0: $FF
    rst RST_30                                    ; $4AC1: $F7
    rst RST_38                                    ; $4AC2: $FF
    rst RST_28                                    ; $4AC3: $EF

jr_01B_4AC4:
    rst RST_38                                    ; $4AC4: $FF
    rst RST_10                                    ; $4AC5: $D7
    rst RST_38                                    ; $4AC6: $FF
    rst RST_20                                    ; $4AC7: $E7
    rst RST_38                                    ; $4AC8: $FF
    rst RST_20                                    ; $4AC9: $E7
    rst RST_38                                    ; $4ACA: $FF
    inc de                                        ; $4ACB: $13
    rst RST_38                                    ; $4ACC: $FF
    rst RST_28                                    ; $4ACD: $EF
    rst RST_38                                    ; $4ACE: $FF
    rrca                                          ; $4ACF: $0F
    ccf                                           ; $4AD0: $3F
    rra                                           ; $4AD1: $1F
    ld a, a                                       ; $4AD2: $7F
    ld b, $AE                                     ; $4AD3: $06 $AE
    ld d, h                                       ; $4AD5: $54
    ld l, $D0                                     ; $4AD6: $2E $D0
    ldh a, [rP1]                                  ; $4AD8: $F0 $00
    nop                                           ; $4ADA: $00
    nop                                           ; $4ADB: $00
    nop                                           ; $4ADC: $00
    nop                                           ; $4ADD: $00

jr_01B_4ADE:
    nop                                           ; $4ADE: $00
    nop                                           ; $4ADF: $00
    db $FC                                        ; $4AE0: $FC
    nop                                           ; $4AE1: $00
    jp $F4FC                                      ; $4AE2: $C3 $FC $F4


    rst RST_38                                    ; $4AE5: $FF
    cp $FF                                        ; $4AE6: $FE $FF
    rst RST_38                                    ; $4AE8: $FF
    rst RST_38                                    ; $4AE9: $FF
    rst RST_38                                    ; $4AEA: $FF
    sbc a                                         ; $4AEB: $9F
    ld e, a                                       ; $4AEC: $5F
    rst RST_28                                    ; $4AED: $EF
    xor a                                         ; $4AEE: $AF
    rst RST_30                                    ; $4AEF: $F7
    rst RST_38                                    ; $4AF0: $FF
    rst RST_30                                    ; $4AF1: $F7
    rst RST_28                                    ; $4AF2: $EF
    rst RST_30                                    ; $4AF3: $F7
    rst RST_38                                    ; $4AF4: $FF
    xor $FF                                       ; $4AF5: $EE $FF
    xor $FF                                       ; $4AF7: $EE $FF
    rst RST_18                                    ; $4AF9: $DF
    rst RST_38                                    ; $4AFA: $FF
    rst RST_18                                    ; $4AFB: $DF
    rst RST_38                                    ; $4AFC: $FF
    add b                                         ; $4AFD: $80
    add e                                         ; $4AFE: $83
    nop                                           ; $4AFF: $00
    ret nz                                        ; $4B00: $C0

    nop                                           ; $4B01: $00
    jr nc, jr_01B_4AC4                            ; $4B02: $30 $C0

    call c, $FEF0                                 ; $4B04: $DC $F0 $FE
    db $E4                                        ; $4B07: $E4
    rst RST_10                                    ; $4B08: $D7
    ld a, [$FDEB]                                 ; $4B09: $FA $EB $FD

jr_01B_4B0C:
    rst RST_38                                    ; $4B0C: $FF
    db $FD                                        ; $4B0D: $FD
    ei                                            ; $4B0E: $FB
    cp $FF                                        ; $4B0F: $FE $FF
    cp $FF                                        ; $4B11: $FE $FF
    cp $FF                                        ; $4B13: $FE $FF
    cp $FF                                        ; $4B15: $FE $FF
    ld a, c                                       ; $4B17: $79
    rst RST_38                                    ; $4B18: $FF
    cp a                                          ; $4B19: $BF
    rst RST_38                                    ; $4B1A: $FF
    ld c, a                                       ; $4B1B: $4F
    rst RST_38                                    ; $4B1C: $FF
    rst RST_30                                    ; $4B1D: $F7
    rst RST_38                                    ; $4B1E: $FF
    dec de                                        ; $4B1F: $1B
    add b                                         ; $4B20: $80
    nop                                           ; $4B21: $00
    ret nz                                        ; $4B22: $C0

    add b                                         ; $4B23: $80
    ldh [$FFC0], a                                ; $4B24: $E0 $C0
    ldh a, [$FFE0]                                ; $4B26: $F0 $E0
    ldh a, [$FFE0]                                ; $4B28: $F0 $E0
    ld hl, sp+$70                                 ; $4B2A: $F8 $70
    ld hl, sp-$50                                 ; $4B2C: $F8 $B0
    db $FC                                        ; $4B2E: $FC
    cp b                                          ; $4B2F: $B8
    db $FC                                        ; $4B30: $FC
    ret c                                         ; $4B31: $D8

    cp $DC                                        ; $4B32: $FE $DC
    cp $CC                                        ; $4B34: $FE $CC
    cp $C4                                        ; $4B36: $FE $C4
    sub $20                                       ; $4B38: $D6 $20
    jr z, jr_01B_4B0C                             ; $4B3A: $28 $D0

    cp b                                          ; $4B3C: $B8
    ld b, b                                       ; $4B3D: $40
    ld h, b                                       ; $4B3E: $60
    nop                                           ; $4B3F: $00
    rla                                           ; $4B40: $17
    ld a, [bc]                                    ; $4B41: $0A
    ld e, $00                                     ; $4B42: $1E $00
    nop                                           ; $4B44: $00
    nop                                           ; $4B45: $00
    ld bc, $0100                                  ; $4B46: $01 $00 $01
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
    nop                                           ; $4B5B: $00
    nop                                           ; $4B5C: $00
    nop                                           ; $4B5D: $00
    nop                                           ; $4B5E: $00
    nop                                           ; $4B5F: $00
    rra                                           ; $4B60: $1F
    dec b                                         ; $4B61: $05
    rlca                                          ; $4B62: $07
    nop                                           ; $4B63: $00
    inc bc                                        ; $4B64: $03
    nop                                           ; $4B65: $00
    nop                                           ; $4B66: $00
    nop                                           ; $4B67: $00
    nop                                           ; $4B68: $00
    nop                                           ; $4B69: $00
    nop                                           ; $4B6A: $00
    nop                                           ; $4B6B: $00
    nop                                           ; $4B6C: $00
    nop                                           ; $4B6D: $00
    nop                                           ; $4B6E: $00
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
    ld bc, $0600                                  ; $4B80: $01 $00 $06
    ld bc, $050F                                  ; $4B83: $01 $0F $05
    dec d                                         ; $4B86: $15
    ld c, $1B                                     ; $4B87: $0E $1B
    ld b, $37                                     ; $4B89: $06 $37
    ld a, [de]                                    ; $4B8B: $1A
    ccf                                           ; $4B8C: $3F
    dec c                                         ; $4B8D: $0D
    ccf                                           ; $4B8E: $3F
    db $10                                        ; $4B8F: $10
    dec de                                        ; $4B90: $1B
    dec b                                         ; $4B91: $05
    ld de, $130E                                  ; $4B92: $11 $0E $13
    inc c                                         ; $4B95: $0C
    inc hl                                        ; $4B96: $23
    inc e                                         ; $4B97: $1C
    ld h, $19                                     ; $4B98: $26 $19
    ld c, d                                       ; $4B9A: $4A
    ld sp, $42B5                                  ; $4B9B: $31 $B5 $42
    rst RST_00                                    ; $4B9E: $C7
    nop                                           ; $4B9F: $00
    ld e, l                                       ; $4BA0: $5D
    or a                                          ; $4BA1: $B7
    ei                                            ; $4BA2: $FB
    or [hl]                                       ; $4BA3: $B6
    rst RST_38                                    ; $4BA4: $FF
    dec c                                         ; $4BA5: $0D
    sbc a                                         ; $4BA6: $9F
    ld h, e                                       ; $4BA7: $63
    sbc a                                         ; $4BA8: $9F
    ld h, l                                       ; $4BA9: $65
    rra                                           ; $4BAA: $1F
    db $ED                                        ; $4BAB: $ED
    scf                                           ; $4BAC: $37
    jp z, $AC57                                   ; $4BAD: $CA $57 $AC

    ld l, a                                       ; $4BB0: $6F
    sbc h                                         ; $4BB1: $9C
    rst RST_18                                    ; $4BB2: $DF
    ld a, [hl-]                                   ; $4BB3: $3A
    rst RST_18                                    ; $4BB4: $DF
    ld [hl], d                                    ; $4BB5: $72
    rst RST_38                                    ; $4BB6: $FF
    ld h, d                                       ; $4BB7: $62
    rst RST_38                                    ; $4BB8: $FF
    ld h, d                                       ; $4BB9: $62
    xor $44                                       ; $4BBA: $EE $44
    xor $40                                       ; $4BBC: $EE $40
    ldh [rP1], a                                  ; $4BBE: $E0 $00
    rst RST_08                                    ; $4BC0: $CF
    cp $DF                                        ; $4BC1: $FE $DF
    rst RST_38                                    ; $4BC3: $FF
    rst RST_38                                    ; $4BC4: $FF
    ld a, a                                       ; $4BC5: $7F
    rst RST_38                                    ; $4BC6: $FF
    ccf                                           ; $4BC7: $3F
    rst RST_38                                    ; $4BC8: $FF
    ccf                                           ; $4BC9: $3F
    rst RST_38                                    ; $4BCA: $FF
    ld e, [hl]                                    ; $4BCB: $5E
    rst RST_38                                    ; $4BCC: $FF
    ld b, e                                       ; $4BCD: $43
    rst RST_38                                    ; $4BCE: $FF
    sbc a                                         ; $4BCF: $9F
    rst RST_38                                    ; $4BD0: $FF
    rra                                           ; $4BD1: $1F
    cp a                                          ; $4BD2: $BF
    rra                                           ; $4BD3: $1F
    ccf                                           ; $4BD4: $3F
    ld e, $3F                                     ; $4BD5: $1E $3F
    ld [de], a                                    ; $4BD7: $12
    ld [hl], a                                    ; $4BD8: $77
    ld [$2A55], sp                                ; $4BD9: $08 $55 $2A
    ld d, l                                       ; $4BDC: $55
    ld a, [hl+]                                   ; $4BDD: $2A
    ld a, $00                                     ; $4BDE: $3E $00
    nop                                           ; $4BE0: $00
    nop                                           ; $4BE1: $00
    inc bc                                        ; $4BE2: $03
    nop                                           ; $4BE3: $00
    inc b                                         ; $4BE4: $04
    inc bc                                        ; $4BE5: $03
    add hl, bc                                    ; $4BE6: $09
    ld b, $12                                     ; $4BE7: $06 $12
    dec c                                         ; $4BE9: $0D
    inc [hl]                                      ; $4BEA: $34

jr_01B_4BEB:
    dec de                                        ; $4BEB: $1B
    jr z, jr_01B_4C05                             ; $4BEC: $28 $17

    ld l, c                                       ; $4BEE: $69
    scf                                           ; $4BEF: $37
    ld d, e                                       ; $4BF0: $53
    cpl                                           ; $4BF1: $2F
    push af                                       ; $4BF2: $F5
    ld l, a                                       ; $4BF3: $6F
    rst RST_38                                    ; $4BF4: $FF
    ld e, a                                       ; $4BF5: $5F
    rst RST_38                                    ; $4BF6: $FF
    ld e, a                                       ; $4BF7: $5F
    rst RST_38                                    ; $4BF8: $FF
    inc bc                                        ; $4BF9: $03
    rst RST_28                                    ; $4BFA: $EF
    cp l                                          ; $4BFB: $BD
    ld d, l                                       ; $4BFC: $55
    cp d                                          ; $4BFD: $BA
    xor $BB                                       ; $4BFE: $EE $BB
    inc bc                                        ; $4C00: $03
    nop                                           ; $4C01: $00
    rrca                                          ; $4C02: $0F
    ld [bc], a                                    ; $4C03: $02
    ccf                                           ; $4C04: $3F

jr_01B_4C05:
    dec c                                         ; $4C05: $0D
    rst RST_38                                    ; $4C06: $FF
    inc sp                                        ; $4C07: $33
    or a                                          ; $4C08: $B7
    rst RST_28                                    ; $4C09: $EF
    ld l, a                                       ; $4C0A: $6F
    sbc [hl]                                      ; $4C0B: $9E
    sbc $7D                                       ; $4C0C: $DE $7D
    ld l, $FD                                     ; $4C0E: $2E $FD
    ld e, [hl]                                    ; $4C10: $5E
    rst RST_38                                    ; $4C11: $FF
    cp [hl]                                       ; $4C12: $BE
    rst RST_38                                    ; $4C13: $FF
    ld a, a                                       ; $4C14: $7F
    rst RST_38                                    ; $4C15: $FF
    cp a                                          ; $4C16: $BF
    rst RST_38                                    ; $4C17: $FF
    rst RST_38                                    ; $4C18: $FF
    cp $FF                                        ; $4C19: $FE $FF
    db $E3                                        ; $4C1B: $E3
    db $E3                                        ; $4C1C: $E3
    db $DD                                        ; $4C1D: $DD
    push bc                                       ; $4C1E: $C5
    cp [hl]                                       ; $4C1F: $BE
    cp $F4                                        ; $4C20: $FE $F4
    cp $F4                                        ; $4C22: $FE $F4
    rst RST_38                                    ; $4C24: $FF
    or $FF                                        ; $4C25: $F6 $FF
    ld l, [hl]                                    ; $4C27: $6E
    rst RST_38                                    ; $4C28: $FF
    sub h                                         ; $4C29: $94
    push af                                       ; $4C2A: $F5
    adc d                                         ; $4C2B: $8A
    rst RST_10                                    ; $4C2C: $D7
    jr z, jr_01B_4BEB                             ; $4C2D: $28 $BC

    nop                                           ; $4C2F: $00
    add b                                         ; $4C30: $80
    nop                                           ; $4C31: $00
    add b                                         ; $4C32: $80
    nop                                           ; $4C33: $00
    ret nz                                        ; $4C34: $C0

    nop                                           ; $4C35: $00
    ret nz                                        ; $4C36: $C0

    add b                                         ; $4C37: $80
    ret nz                                        ; $4C38: $C0

    add b                                         ; $4C39: $80
    add b                                         ; $4C3A: $80
    nop                                           ; $4C3B: $00
    add b                                         ; $4C3C: $80
    nop                                           ; $4C3D: $00
    add b                                         ; $4C3E: $80
    nop                                           ; $4C3F: $00
    nop                                           ; $4C40: $00
    nop                                           ; $4C41: $00
    nop                                           ; $4C42: $00
    nop                                           ; $4C43: $00
    ld bc, $0F00                                  ; $4C44: $01 $00 $0F
    ld bc, $0F3F                                  ; $4C47: $01 $3F $0F
    rst RST_18                                    ; $4C4A: $DF
    ccf                                           ; $4C4B: $3F
    sbc a                                         ; $4C4C: $9F
    ld a, [hl]                                    ; $4C4D: $7E
    ld a, [hl]                                    ; $4C4E: $7E
    db $FC                                        ; $4C4F: $FC
    cp $FC                                        ; $4C50: $FE $FC
    db $FC                                        ; $4C52: $FC
    ld hl, sp-$04                                 ; $4C53: $F8 $FC
    jr jr_01B_4C6F                                ; $4C55: $18 $18

    ldh [$FF28], a                                ; $4C57: $E0 $28
    ldh a, [$FF7C]                                ; $4C59: $F0 $7C
    ldh a, [$FFFC]                                ; $4C5B: $F0 $FC
    ldh a, [$FFFE]                                ; $4C5D: $F0 $FE
    db $F4                                        ; $4C5F: $F4
    inc b                                         ; $4C60: $04
    inc bc                                        ; $4C61: $03
    ld [$1007], sp                                ; $4C62: $08 $07 $10
    rrca                                          ; $4C65: $0F
    rra                                           ; $4C66: $1F
    nop                                           ; $4C67: $00
    nop                                           ; $4C68: $00
    nop                                           ; $4C69: $00
    nop                                           ; $4C6A: $00
    nop                                           ; $4C6B: $00
    nop                                           ; $4C6C: $00
    nop                                           ; $4C6D: $00
    nop                                           ; $4C6E: $00

jr_01B_4C6F:
    nop                                           ; $4C6F: $00
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
    nop                                           ; $4C80: $00
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
    nop                                           ; $4C8E: $00
    nop                                           ; $4C8F: $00
    nop                                           ; $4C90: $00
    nop                                           ; $4C91: $00
    nop                                           ; $4C92: $00
    nop                                           ; $4C93: $00
    nop                                           ; $4C94: $00
    nop                                           ; $4C95: $00
    nop                                           ; $4C96: $00
    nop                                           ; $4C97: $00
    ldh a, [rP1]                                  ; $4C98: $F0 $00
    ldh a, [$FFE0]                                ; $4C9A: $F0 $E0
    ldh [$FF80], a                                ; $4C9C: $E0 $80
    add b                                         ; $4C9E: $80
    nop                                           ; $4C9F: $00
    inc bc                                        ; $4CA0: $03
    nop                                           ; $4CA1: $00
    inc bc                                        ; $4CA2: $03
    ld bc, $0305                                  ; $4CA3: $01 $05 $03
    ld b, $01                                     ; $4CA6: $06 $01
    dec c                                         ; $4CA8: $0D
    ld b, $0F                                     ; $4CA9: $06 $0F
    inc bc                                        ; $4CAB: $03
    rrca                                          ; $4CAC: $0F
    inc b                                         ; $4CAD: $04
    rlca                                          ; $4CAE: $07
    ld [bc], a                                    ; $4CAF: $02
    ld b, $01                                     ; $4CB0: $06 $01
    ld [bc], a                                    ; $4CB2: $02
    ld bc, $0304                                  ; $4CB3: $01 $04 $03
    add hl, bc                                    ; $4CB6: $09
    ld b, $13                                     ; $4CB7: $06 $13
    inc c                                         ; $4CB9: $0C
    dec l                                         ; $4CBA: $2D
    db $10                                        ; $4CBB: $10
    scf                                           ; $4CBC: $37
    nop                                           ; $4CBD: $00
    inc b                                         ; $4CBE: $04
    inc bc                                        ; $4CBF: $03
    rst RST_38                                    ; $4CC0: $FF
    nop                                           ; $4CC1: $00
    cp e                                          ; $4CC2: $BB
    ld l, a                                       ; $4CC3: $6F
    push de                                       ; $4CC4: $D5
    ld l, [hl]                                    ; $4CC5: $6E
    ld a, e                                       ; $4CC6: $7B
    xor [hl]                                      ; $4CC7: $AE
    rst RST_10                                    ; $4CC8: $D7
    xor l                                         ; $4CC9: $AD
    cp $AD                                        ; $4CCA: $FE $AD
    rst RST_38                                    ; $4CCC: $FF
    ld b, e                                       ; $4CCD: $43
    rst RST_20                                    ; $4CCE: $E7
    sbc b                                         ; $4CCF: $98
    rst RST_20                                    ; $4CD0: $E7
    ld e, c                                       ; $4CD1: $59
    ld b, a                                       ; $4CD2: $47
    cp e                                          ; $4CD3: $BB
    ld c, l                                       ; $4CD4: $4D
    or d                                          ; $4CD5: $B2
    push de                                       ; $4CD6: $D5
    dec hl                                        ; $4CD7: $2B
    sbc e                                         ; $4CD8: $9B
    ld h, a                                       ; $4CD9: $67
    or a                                          ; $4CDA: $B7
    ld c, [hl]                                    ; $4CDB: $4E
    ld [hl], a                                    ; $4CDC: $77
    sbc l                                         ; $4CDD: $9D
    rst RST_18                                    ; $4CDE: $DF
    ld a, [hl+]                                   ; $4CDF: $2A
    ccf                                           ; $4CE0: $3F
    jp z, $D43E                                   ; $4CE1: $CA $3E $D4

    ld a, $D0                                     ; $4CE4: $3E $D0
    ld hl, sp+$00                                 ; $4CE6: $F8 $00
    nop                                           ; $4CE8: $00
    nop                                           ; $4CE9: $00
    nop                                           ; $4CEA: $00
    nop                                           ; $4CEB: $00
    nop                                           ; $4CEC: $00
    nop                                           ; $4CED: $00
    nop                                           ; $4CEE: $00
    nop                                           ; $4CEF: $00
    nop                                           ; $4CF0: $00
    nop                                           ; $4CF1: $00
    nop                                           ; $4CF2: $00
    nop                                           ; $4CF3: $00
    nop                                           ; $4CF4: $00
    nop                                           ; $4CF5: $00
    nop                                           ; $4CF6: $00
    nop                                           ; $4CF7: $00
    nop                                           ; $4CF8: $00
    nop                                           ; $4CF9: $00
    nop                                           ; $4CFA: $00
    nop                                           ; $4CFB: $00
    nop                                           ; $4CFC: $00
    nop                                           ; $4CFD: $00
    nop                                           ; $4CFE: $00
    nop                                           ; $4CFF: $00
    add c                                         ; $4D00: $81
    nop                                           ; $4D01: $00
    ld b, [hl]                                    ; $4D02: $46
    add c                                         ; $4D03: $81
    cp c                                          ; $4D04: $B9
    rst RST_00                                    ; $4D05: $C7
    ld a, a                                       ; $4D06: $7F
    rst RST_18                                    ; $4D07: $DF
    rst RST_38                                    ; $4D08: $FF
    sbc a                                         ; $4D09: $9F
    rst RST_38                                    ; $4D0A: $FF
    ld l, a                                       ; $4D0B: $6F
    rst RST_38                                    ; $4D0C: $FF
    rst RST_28                                    ; $4D0D: $EF
    rst RST_38                                    ; $4D0E: $FF
    ld l, b                                       ; $4D0F: $68
    ld hl, sp+$5F                                 ; $4D10: $F8 $5F
    db $FD                                        ; $4D12: $FD
    cp a                                          ; $4D13: $BF
    rst RST_38                                    ; $4D14: $FF
    rst RST_18                                    ; $4D15: $DF
    rst RST_38                                    ; $4D16: $FF
    rst RST_18                                    ; $4D17: $DF
    rst RST_38                                    ; $4D18: $FF
    rst RST_18                                    ; $4D19: $DF
    rst RST_38                                    ; $4D1A: $FF
    dec sp                                        ; $4D1B: $3B
    ccf                                           ; $4D1C: $3F
    rlca                                          ; $4D1D: $07
    rra                                           ; $4D1E: $1F
    rlca                                          ; $4D1F: $07
    ld [hl], a                                    ; $4D20: $77
    ld [$5BA4], sp                                ; $4D21: $08 $A4 $5B
    rst RST_38                                    ; $4D24: $FF
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
    nop                                           ; $4D3A: $00
    nop                                           ; $4D3B: $00
    nop                                           ; $4D3C: $00
    nop                                           ; $4D3D: $00
    nop                                           ; $4D3E: $00
    nop                                           ; $4D3F: $00
    ld a, b                                       ; $4D40: $78
    nop                                           ; $4D41: $00
    add [hl]                                      ; $4D42: $86
    ld a, b                                       ; $4D43: $78
    ld l, c                                       ; $4D44: $69
    cp $B7                                        ; $4D45: $FE $B7
    rst RST_38                                    ; $4D47: $FF
    rst RST_38                                    ; $4D48: $FF
    cp $FA                                        ; $4D49: $FE $FA
    rst RST_38                                    ; $4D4B: $FF
    db $FD                                        ; $4D4C: $FD
    rst RST_38                                    ; $4D4D: $FF
    rst RST_38                                    ; $4D4E: $FF
    rst RST_38                                    ; $4D4F: $FF
    rst RST_38                                    ; $4D50: $FF
    rst RST_38                                    ; $4D51: $FF
    rst RST_38                                    ; $4D52: $FF
    ld l, a                                       ; $4D53: $6F
    ld a, a                                       ; $4D54: $7F
    xor a                                         ; $4D55: $AF
    rst RST_38                                    ; $4D56: $FF
    rst RST_08                                    ; $4D57: $CF
    rst RST_38                                    ; $4D58: $FF
    rst RST_10                                    ; $4D59: $D7
    rst RST_38                                    ; $4D5A: $FF
    rst RST_10                                    ; $4D5B: $D7
    rst RST_38                                    ; $4D5C: $FF
    ret c                                         ; $4D5D: $D8

    rst RST_38                                    ; $4D5E: $FF
    jp $83CF                                      ; $4D5F: $C3 $CF $83


    ei                                            ; $4D62: $FB
    add h                                         ; $4D63: $84
    jp nc, $FF2D                                  ; $4D64: $D2 $2D $FF

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
    jr nc, jr_01B_4D82                            ; $4D80: $30 $00

jr_01B_4D82:
    jr c, jr_01B_4D94                             ; $4D82: $38 $10

    inc l                                         ; $4D84: $2C
    jr @+$1E                                      ; $4D85: $18 $1C

    ld [$0C16], sp                                ; $4D87: $08 $16 $0C
    ld a, [de]                                    ; $4D8A: $1A
    inc c                                         ; $4D8B: $0C
    sub a                                         ; $4D8C: $97
    ld c, $FF                                     ; $4D8D: $0E $FF
    sbc [hl]                                      ; $4D8F: $9E
    rst RST_38                                    ; $4D90: $FF
    ld a, [hl]                                    ; $4D91: $7E
    ld a, a                                       ; $4D92: $7F
    cp [hl]                                       ; $4D93: $BE

jr_01B_4D94:
    ld a, a                                       ; $4D94: $7F
    cp [hl]                                       ; $4D95: $BE
    cp a                                          ; $4D96: $BF
    sbc $FF                                       ; $4D97: $DE $FF
    sbc $FE                                       ; $4D99: $DE $FE
    call c, $DCFE                                 ; $4D9B: $DC $FE $DC
    db $FC                                        ; $4D9E: $FC
    ret c                                         ; $4D9F: $D8

    ld hl, sp-$60                                 ; $4DA0: $F8 $A0
    ldh a, [$FFE0]                                ; $4DA2: $F0 $E0
    ldh a, [$FFE0]                                ; $4DA4: $F0 $E0
    ldh [$FFC0], a                                ; $4DA6: $E0 $C0
    ldh [$FFC0], a                                ; $4DA8: $E0 $C0
    ldh [rLCDC], a                                ; $4DAA: $E0 $40
    ld b, b                                       ; $4DAC: $40
    add b                                         ; $4DAD: $80
    ret nz                                        ; $4DAE: $C0

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
    ld a, [bc]                                    ; $4DC0: $0A
    dec b                                         ; $4DC1: $05
    rrca                                          ; $4DC2: $0F
    nop                                           ; $4DC3: $00
    nop                                           ; $4DC4: $00
    nop                                           ; $4DC5: $00
    nop                                           ; $4DC6: $00
    nop                                           ; $4DC7: $00
    nop                                           ; $4DC8: $00
    nop                                           ; $4DC9: $00
    nop                                           ; $4DCA: $00
    nop                                           ; $4DCB: $00
    nop                                           ; $4DCC: $00
    nop                                           ; $4DCD: $00
    nop                                           ; $4DCE: $00
    nop                                           ; $4DCF: $00
    nop                                           ; $4DD0: $00
    nop                                           ; $4DD1: $00
    nop                                           ; $4DD2: $00
    nop                                           ; $4DD3: $00
    nop                                           ; $4DD4: $00
    nop                                           ; $4DD5: $00
    nop                                           ; $4DD6: $00
    nop                                           ; $4DD7: $00
    nop                                           ; $4DD8: $00
    nop                                           ; $4DD9: $00
    nop                                           ; $4DDA: $00
    nop                                           ; $4DDB: $00
    nop                                           ; $4DDC: $00

jr_01B_4DDD:
    nop                                           ; $4DDD: $00
    nop                                           ; $4DDE: $00
    nop                                           ; $4DDF: $00
    nop                                           ; $4DE0: $00
    nop                                           ; $4DE1: $00
    nop                                           ; $4DE2: $00
    nop                                           ; $4DE3: $00
    nop                                           ; $4DE4: $00
    nop                                           ; $4DE5: $00
    rrca                                          ; $4DE6: $0F
    nop                                           ; $4DE7: $00
    jr nc, jr_01B_4DF9                            ; $4DE8: $30 $0F

    ld c, a                                       ; $4DEA: $4F
    ccf                                           ; $4DEB: $3F
    cp a                                          ; $4DEC: $BF
    ld b, b                                       ; $4DED: $40
    ret nz                                        ; $4DEE: $C0

    nop                                           ; $4DEF: $00
    nop                                           ; $4DF0: $00
    nop                                           ; $4DF1: $00
    ccf                                           ; $4DF2: $3F
    nop                                           ; $4DF3: $00
    inc hl                                        ; $4DF4: $23
    dec e                                         ; $4DF5: $1D
    inc de                                        ; $4DF6: $13
    dec c                                         ; $4DF7: $0D
    dec bc                                        ; $4DF8: $0B

jr_01B_4DF9:
    dec b                                         ; $4DF9: $05
    rlca                                          ; $4DFA: $07
    ld bc, $0001                                  ; $4DFB: $01 $01 $00
    nop                                           ; $4DFE: $00
    nop                                           ; $4DFF: $00
    nop                                           ; $4E00: $00
    nop                                           ; $4E01: $00
    ld bc, $FF00                                  ; $4E02: $01 $00 $FF
    nop                                           ; $4E05: $00
    inc bc                                        ; $4E06: $03
    db $FC                                        ; $4E07: $FC
    inc bc                                        ; $4E08: $03
    db $FD                                        ; $4E09: $FD
    rst RST_38                                    ; $4E0A: $FF
    db $FD                                        ; $4E0B: $FD
    rst RST_38                                    ; $4E0C: $FF
    ld bc, $127F                                  ; $4E0D: $01 $7F $12
    rst RST_18                                    ; $4E10: $DF
    scf                                           ; $4E11: $37
    rst RST_38                                    ; $4E12: $FF
    adc $FF                                       ; $4E13: $CE $FF
    ld sp, hl                                     ; $4E15: $F9
    rst RST_38                                    ; $4E16: $FF
    ccf                                           ; $4E17: $3F
    rst RST_38                                    ; $4E18: $FF
    ld a, c                                       ; $4E19: $79
    rst RST_38                                    ; $4E1A: $FF
    add $FF                                       ; $4E1B: $C6 $FF
    cp a                                          ; $4E1D: $BF
    rst RST_38                                    ; $4E1E: $FF
    nop                                           ; $4E1F: $00
    nop                                           ; $4E20: $00
    nop                                           ; $4E21: $00
    nop                                           ; $4E22: $00
    nop                                           ; $4E23: $00
    nop                                           ; $4E24: $00
    nop                                           ; $4E25: $00
    jr nc, jr_01B_4E28                            ; $4E26: $30 $00

jr_01B_4E28:
    jr z, jr_01B_4E3A                             ; $4E28: $28 $10

    ld l, $10                                     ; $4E2A: $2E $10
    ld e, d                                       ; $4E2C: $5A
    inc h                                         ; $4E2D: $24
    ld d, h                                       ; $4E2E: $54
    jr z, jr_01B_4DDD                             ; $4E2F: $28 $AC

    ld d, b                                       ; $4E31: $50
    call $9BB0                                    ; $4E32: $CD $B0 $9B
    ld [hl], l                                    ; $4E35: $75
    ld a, a                                       ; $4E36: $7F
    ld sp, hl                                     ; $4E37: $F9
    rst RST_38                                    ; $4E38: $FF
    ei                                            ; $4E39: $FB

jr_01B_4E3A:
    adc a                                         ; $4E3A: $8F
    ldh a, [c]                                    ; $4E3B: $F2
    scf                                           ; $4E3C: $37
    jp hl                                         ; $4E3D: $E9


    rst RST_38                                    ; $4E3E: $FF
    rst RST_30                                    ; $4E3F: $F7
    rst RST_38                                    ; $4E40: $FF
    rst RST_30                                    ; $4E41: $F7
    rst RST_38                                    ; $4E42: $FF
    rst RST_30                                    ; $4E43: $F7
    rst RST_38                                    ; $4E44: $FF
    rst RST_28                                    ; $4E45: $EF
    rst RST_38                                    ; $4E46: $FF
    rst RST_10                                    ; $4E47: $D7
    rst RST_38                                    ; $4E48: $FF
    ldh [$FFF7], a                                ; $4E49: $E0 $F7
    ldh [$FFEA], a                                ; $4E4B: $E0 $EA
    dec b                                         ; $4E4D: $05
    rrca                                          ; $4E4E: $0F
    nop                                           ; $4E4F: $00
    nop                                           ; $4E50: $00
    nop                                           ; $4E51: $00
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
    nop                                           ; $4E62: $00
    nop                                           ; $4E63: $00
    nop                                           ; $4E64: $00
    nop                                           ; $4E65: $00
    nop                                           ; $4E66: $00
    nop                                           ; $4E67: $00
    nop                                           ; $4E68: $00
    nop                                           ; $4E69: $00
    nop                                           ; $4E6A: $00
    nop                                           ; $4E6B: $00
    rlca                                          ; $4E6C: $07
    nop                                           ; $4E6D: $00
    ld a, [de]                                    ; $4E6E: $1A
    rlca                                          ; $4E6F: $07
    ld h, l                                       ; $4E70: $65
    rra                                           ; $4E71: $1F
    xor a                                         ; $4E72: $AF
    ld a, a                                       ; $4E73: $7F
    rst RST_38                                    ; $4E74: $FF
    rst RST_38                                    ; $4E75: $FF
    rst RST_38                                    ; $4E76: $FF
    rst RST_38                                    ; $4E77: $FF
    rst RST_38                                    ; $4E78: $FF
    rst RST_38                                    ; $4E79: $FF
    rst RST_38                                    ; $4E7A: $FF
    rra                                           ; $4E7B: $1F
    sbc a                                         ; $4E7C: $9F
    rst RST_28                                    ; $4E7D: $EF
    rst RST_28                                    ; $4E7E: $EF
    rst RST_30                                    ; $4E7F: $F7
    rst RST_38                                    ; $4E80: $FF
    di                                            ; $4E81: $F3
    rst RST_38                                    ; $4E82: $FF
    ei                                            ; $4E83: $FB
    rst RST_38                                    ; $4E84: $FF
    ei                                            ; $4E85: $FB
    rst RST_38                                    ; $4E86: $FF
    cp e                                          ; $4E87: $BB
    rst RST_38                                    ; $4E88: $FF
    ld a, b                                       ; $4E89: $78
    ld a, a                                       ; $4E8A: $7F
    adc e                                         ; $4E8B: $8B
    ld c, a                                       ; $4E8C: $4F
    or b                                          ; $4E8D: $B0
    db $FC                                        ; $4E8E: $FC
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
    inc c                                         ; $4EAA: $0C
    nop                                           ; $4EAB: $00
    ld c, $04                                     ; $4EAC: $0E $04
    rlca                                          ; $4EAE: $07
    ld [bc], a                                    ; $4EAF: $02
    dec b                                         ; $4EB0: $05
    inc bc                                        ; $4EB1: $03
    dec b                                         ; $4EB2: $05
    inc bc                                        ; $4EB3: $03
    dec b                                         ; $4EB4: $05
    inc bc                                        ; $4EB5: $03
    dec bc                                        ; $4EB6: $0B
    rlca                                          ; $4EB7: $07
    dec d                                         ; $4EB8: $15
    rrca                                          ; $4EB9: $0F
    rst RST_38                                    ; $4EBA: $FF
    rra                                           ; $4EBB: $1F
    ld e, a                                       ; $4EBC: $5F
    rst RST_38                                    ; $4EBD: $FF
    cp a                                          ; $4EBE: $BF
    rst RST_38                                    ; $4EBF: $FF
    rst RST_38                                    ; $4EC0: $FF
    rst RST_20                                    ; $4EC1: $E7
    rst RST_10                                    ; $4EC2: $D7
    ei                                            ; $4EC3: $FB
    db $EB                                        ; $4EC4: $EB
    db $FD                                        ; $4EC5: $FD
    rst RST_38                                    ; $4EC6: $FF
    db $FD                                        ; $4EC7: $FD
    ei                                            ; $4EC8: $FB
    cp $FF                                        ; $4EC9: $FE $FF
    cp $FF                                        ; $4ECB: $FE $FF
    cp $FF                                        ; $4ECD: $FE $FF
    ld a, [hl]                                    ; $4ECF: $7E
    rst RST_38                                    ; $4ED0: $FF
    ld a, c                                       ; $4ED1: $79
    rst RST_38                                    ; $4ED2: $FF
    cp a                                          ; $4ED3: $BF
    rst RST_38                                    ; $4ED4: $FF
    rst RST_08                                    ; $4ED5: $CF
    rst RST_38                                    ; $4ED6: $FF
    rrca                                          ; $4ED7: $0F
    rst RST_18                                    ; $4ED8: $DF
    adc a                                         ; $4ED9: $8F
    rst RST_28                                    ; $4EDA: $EF
    sub c                                         ; $4EDB: $91
    xor c                                         ; $4EDC: $A9
    ld d, [hl]                                    ; $4EDD: $56
    rst RST_38                                    ; $4EDE: $FF
    nop                                           ; $4EDF: $00
    add b                                         ; $4EE0: $80
    nop                                           ; $4EE1: $00
    add b                                         ; $4EE2: $80
    nop                                           ; $4EE3: $00
    ret nz                                        ; $4EE4: $C0

    add b                                         ; $4EE5: $80
    ret nz                                        ; $4EE6: $C0

    add b                                         ; $4EE7: $80
    ret nz                                        ; $4EE8: $C0

    add b                                         ; $4EE9: $80
    ldh [$FFC0], a                                ; $4EEA: $E0 $C0
    ldh [$FFC0], a                                ; $4EEC: $E0 $C0
    ldh [$FFC0], a                                ; $4EEE: $E0 $C0
    ldh [$FFC0], a                                ; $4EF0: $E0 $C0
    ldh [$FFC0], a                                ; $4EF2: $E0 $C0
    ret nz                                        ; $4EF4: $C0

    add b                                         ; $4EF5: $80
    ret nz                                        ; $4EF6: $C0

    add b                                         ; $4EF7: $80
    ret nz                                        ; $4EF8: $C0

    add b                                         ; $4EF9: $80
    add b                                         ; $4EFA: $80
    nop                                           ; $4EFB: $00
    add b                                         ; $4EFC: $80
    nop                                           ; $4EFD: $00
    nop                                           ; $4EFE: $00
    nop                                           ; $4EFF: $00
    add b                                         ; $4F00: $80
    nop                                           ; $4F01: $00
    add b                                         ; $4F02: $80
    nop                                           ; $4F03: $00
    add b                                         ; $4F04: $80
    nop                                           ; $4F05: $00
    add b                                         ; $4F06: $80
    nop                                           ; $4F07: $00
    add b                                         ; $4F08: $80
    nop                                           ; $4F09: $00
    add b                                         ; $4F0A: $80
    nop                                           ; $4F0B: $00
    add b                                         ; $4F0C: $80
    nop                                           ; $4F0D: $00
    nop                                           ; $4F0E: $00
    nop                                           ; $4F0F: $00
    nop                                           ; $4F10: $00
    nop                                           ; $4F11: $00
    nop                                           ; $4F12: $00
    nop                                           ; $4F13: $00
    nop                                           ; $4F14: $00
    nop                                           ; $4F15: $00
    nop                                           ; $4F16: $00
    nop                                           ; $4F17: $00
    nop                                           ; $4F18: $00
    nop                                           ; $4F19: $00
    nop                                           ; $4F1A: $00
    nop                                           ; $4F1B: $00
    nop                                           ; $4F1C: $00
    nop                                           ; $4F1D: $00
    nop                                           ; $4F1E: $00
    nop                                           ; $4F1F: $00
    ld bc, $0200                                  ; $4F20: $01 $00 $02
    ld bc, $0003                                  ; $4F23: $01 $03 $00
    ld b, $03                                     ; $4F26: $06 $03
    rlca                                          ; $4F28: $07
    ld bc, $0207                                  ; $4F29: $01 $07 $02
    inc bc                                        ; $4F2C: $03
    ld bc, $0003                                  ; $4F2D: $01 $03 $00
    ld bc, $0200                                  ; $4F30: $01 $00 $02
    ld bc, $0304                                  ; $4F33: $01 $04 $03
    add hl, bc                                    ; $4F36: $09
    ld b, $16                                     ; $4F37: $06 $16
    ld [$001B], sp                                ; $4F39: $08 $1B $00
    ld [bc], a                                    ; $4F3C: $02
    ld bc, $0001                                  ; $4F3D: $01 $01 $00
    ccf                                           ; $4F40: $3F
    nop                                           ; $4F41: $00
    db $DD                                        ; $4F42: $DD
    scf                                           ; $4F43: $37
    ld [$BDB7], a                                 ; $4F44: $EA $B7 $BD
    rst RST_10                                    ; $4F47: $D7
    ld l, e                                       ; $4F48: $6B
    sub $FF                                       ; $4F49: $D6 $FF
    ld d, [hl]                                    ; $4F4B: $56
    rst RST_38                                    ; $4F4C: $FF
    and c                                         ; $4F4D: $A1
    di                                            ; $4F4E: $F3
    ld c, h                                       ; $4F4F: $4C
    di                                            ; $4F50: $F3
    inc l                                         ; $4F51: $2C
    inc hl                                        ; $4F52: $23
    db $DD                                        ; $4F53: $DD
    ld h, $D9                                     ; $4F54: $26 $D9
    ld l, d                                       ; $4F56: $6A
    sub l                                         ; $4F57: $95
    call Call_01B_5B33                            ; $4F58: $CD $33 $5B
    daa                                           ; $4F5B: $27
    cp e                                          ; $4F5C: $BB
    ld c, [hl]                                    ; $4F5D: $4E
    rst RST_28                                    ; $4F5E: $EF
    dec d                                         ; $4F5F: $15
    add b                                         ; $4F60: $80
    nop                                           ; $4F61: $00
    ret nz                                        ; $4F62: $C0

    add b                                         ; $4F63: $80
    and b                                         ; $4F64: $A0
    ld b, b                                       ; $4F65: $40
    ret nc                                        ; $4F66: $D0

    ld h, b                                       ; $4F67: $60
    cp [hl]                                       ; $4F68: $BE
    ldh [$FF7F], a                                ; $4F69: $E0 $7F
    adc $FF                                       ; $4F6B: $CE $FF
    xor a                                         ; $4F6D: $AF
    rst RST_38                                    ; $4F6E: $FF
    ld l, a                                       ; $4F6F: $6F
    rst RST_38                                    ; $4F70: $FF
    or a                                          ; $4F71: $B7
    rst RST_38                                    ; $4F72: $FF
    and a                                         ; $4F73: $A7
    rst RST_38                                    ; $4F74: $FF
    ld c, h                                       ; $4F75: $4C
    ld a, [$FDBF]                                 ; $4F76: $FA $BF $FD
    cp a                                          ; $4F79: $BF
    rst RST_38                                    ; $4F7A: $FF
    ccf                                           ; $4F7B: $3F
    rst RST_38                                    ; $4F7C: $FF
    cp a                                          ; $4F7D: $BF
    rst RST_38                                    ; $4F7E: $FF
    ld e, a                                       ; $4F7F: $5F
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
    add b                                         ; $4F8A: $80
    nop                                           ; $4F8B: $00
    ldh [$FF80], a                                ; $4F8C: $E0 $80
    sub b                                         ; $4F8E: $90
    ldh [$FFE8], a                                ; $4F8F: $E0 $E8
    ldh a, [$FFD4]                                ; $4F91: $F0 $D4
    ld hl, sp-$14                                 ; $4F93: $F8 $EC
    ld hl, sp-$06                                 ; $4F95: $F8 $FA
    ld a, h                                       ; $4F97: $7C
    ld a, [hl]                                    ; $4F98: $7E
    cp h                                          ; $4F99: $BC
    cp $BC                                        ; $4F9A: $FE $BC
    ld a, a                                       ; $4F9C: $7F
    cp [hl]                                       ; $4F9D: $BE
    rst RST_38                                    ; $4F9E: $FF
    cp [hl]                                       ; $4F9F: $BE
    rra                                           ; $4FA0: $1F
    push hl                                       ; $4FA1: $E5
    rra                                           ; $4FA2: $1F
    ld [$699F], a                                 ; $4FA3: $EA $9F $69
    ld a, a                                       ; $4FA6: $7F
    nop                                           ; $4FA7: $00
    add hl, bc                                    ; $4FA8: $09
    ld b, $0F                                     ; $4FA9: $06 $0F
    ld bc, $050B                                  ; $4FAB: $01 $0B $05
    dec sp                                        ; $4FAE: $3B
    inc b                                         ; $4FAF: $04
    ld a, $10                                     ; $4FB0: $3E $10
    rra                                           ; $4FB2: $1F
    inc c                                         ; $4FB3: $0C
    rrca                                          ; $4FB4: $0F
    rlca                                          ; $4FB5: $07
    rlca                                          ; $4FB6: $07
    ld bc, $0001                                  ; $4FB7: $01 $01 $00
    nop                                           ; $4FBA: $00
    nop                                           ; $4FBB: $00
    nop                                           ; $4FBC: $00
    nop                                           ; $4FBD: $00
    nop                                           ; $4FBE: $00
    nop                                           ; $4FBF: $00
    rst RST_38                                    ; $4FC0: $FF
    ld e, a                                       ; $4FC1: $5F
    rst RST_38                                    ; $4FC2: $FF
    rst RST_20                                    ; $4FC3: $E7
    rst RST_38                                    ; $4FC4: $FF
    adc a                                         ; $4FC5: $8F
    rst RST_38                                    ; $4FC6: $FF
    ld e, a                                       ; $4FC7: $5F
    rst RST_38                                    ; $4FC8: $FF
    rst RST_18                                    ; $4FC9: $DF
    rst RST_38                                    ; $4FCA: $FF
    rst RST_08                                    ; $4FCB: $CF
    rst RST_08                                    ; $4FCC: $CF
    or d                                          ; $4FCD: $B2
    db $D3                                        ; $4FCE: $D3
    xor h                                         ; $4FCF: $AC
    rst RST_10                                    ; $4FD0: $D7
    add hl, hl                                    ; $4FD1: $29
    rst RST_38                                    ; $4FD2: $FF
    inc bc                                        ; $4FD3: $03
    rst RST_38                                    ; $4FD4: $FF
    rst RST_38                                    ; $4FD5: $FF
    rst RST_38                                    ; $4FD6: $FF
    rst RST_38                                    ; $4FD7: $FF
    rst RST_38                                    ; $4FD8: $FF
    ld a, a                                       ; $4FD9: $7F
    ld a, a                                       ; $4FDA: $7F
    nop                                           ; $4FDB: $00
    nop                                           ; $4FDC: $00
    nop                                           ; $4FDD: $00
    nop                                           ; $4FDE: $00
    nop                                           ; $4FDF: $00
    rst RST_38                                    ; $4FE0: $FF
    sbc [hl]                                      ; $4FE1: $9E
    rst RST_38                                    ; $4FE2: $FF
    cp [hl]                                       ; $4FE3: $BE
    rst RST_38                                    ; $4FE4: $FF
    cp [hl]                                       ; $4FE5: $BE
    rst RST_38                                    ; $4FE6: $FF
    cp [hl]                                       ; $4FE7: $BE
    rst RST_38                                    ; $4FE8: $FF
    ld a, [hl]                                    ; $4FE9: $7E
    rst RST_38                                    ; $4FEA: $FF
    ld a, [hl]                                    ; $4FEB: $7E
    cp $DC                                        ; $4FEC: $FE $DC
    cp $3C                                        ; $4FEE: $FE $3C
    cp $FC                                        ; $4FF0: $FE $FC
    db $FC                                        ; $4FF2: $FC
    ld hl, sp-$08                                 ; $4FF3: $F8 $F8
    ldh a, [$FFF0]                                ; $4FF5: $F0 $F0
    ldh [$FFE0], a                                ; $4FF7: $E0 $E0
    add b                                         ; $4FF9: $80
    add b                                         ; $4FFA: $80
    nop                                           ; $4FFB: $00
    nop                                           ; $4FFC: $00
    nop                                           ; $4FFD: $00
    nop                                           ; $4FFE: $00
    nop                                           ; $4FFF: $00
    nop                                           ; $5000: $00
    nop                                           ; $5001: $00
    nop                                           ; $5002: $00
    nop                                           ; $5003: $00
    nop                                           ; $5004: $00
    nop                                           ; $5005: $00
    ld b, $00                                     ; $5006: $06 $00
    add hl, bc                                    ; $5008: $09
    ld b, $0F                                     ; $5009: $06 $0F
    ld bc, $0639                                  ; $500B: $01 $39 $06
    ld a, a                                       ; $500E: $7F
    ld bc, $3847                                  ; $500F: $01 $47 $38
    ld [hl], a                                    ; $5012: $77
    dec bc                                        ; $5013: $0B
    ld c, b                                       ; $5014: $48
    scf                                           ; $5015: $37
    dec l                                         ; $5016: $2D
    rla                                           ; $5017: $17
    ld e, $0F                                     ; $5018: $1E $0F
    rrca                                          ; $501A: $0F
    rlca                                          ; $501B: $07
    rlca                                          ; $501C: $07
    ld bc, $0001                                  ; $501D: $01 $01 $00
    nop                                           ; $5020: $00
    nop                                           ; $5021: $00
    nop                                           ; $5022: $00
    nop                                           ; $5023: $00
    nop                                           ; $5024: $00
    nop                                           ; $5025: $00
    ld bc, $0200                                  ; $5026: $01 $00 $02
    ld bc, $0304                                  ; $5029: $01 $04 $03
    rlca                                          ; $502C: $07
    nop                                           ; $502D: $00
    add hl, bc                                    ; $502E: $09
    rlca                                          ; $502F: $07
    rla                                           ; $5030: $17
    inc c                                         ; $5031: $0C
    rra                                           ; $5032: $1F
    ld b, $07                                     ; $5033: $06 $07
    inc bc                                        ; $5035: $03
    ld h, a                                       ; $5036: $67
    inc bc                                        ; $5037: $03
    and a                                         ; $5038: $A7
    ld b, e                                       ; $5039: $43
    rst RST_38                                    ; $503A: $FF
    ld h, c                                       ; $503B: $61
    ld a, a                                       ; $503C: $7F
    dec a                                         ; $503D: $3D
    ccf                                           ; $503E: $3F
    dec de                                        ; $503F: $1B
    jr jr_01B_5042                                ; $5040: $18 $00

jr_01B_5042:
    inc d                                         ; $5042: $14
    ld [$04CA], sp                                ; $5043: $08 $CA $04
    ld c, d                                       ; $5046: $4A
    add h                                         ; $5047: $84
    ld c, l                                       ; $5048: $4D
    add [hl]                                      ; $5049: $86
    ld c, l                                       ; $504A: $4D
    add [hl]                                      ; $504B: $86
    call $CD06                                    ; $504C: $CD $06 $CD
    add [hl]                                      ; $504F: $86
    db $EC                                        ; $5050: $EC
    rst RST_00                                    ; $5051: $C7
    db $FC                                        ; $5052: $FC
    rst RST_00                                    ; $5053: $C7
    call c, $FCA7                                 ; $5054: $DC $A7 $FC
    or a                                          ; $5057: $B7
    db $FC                                        ; $5058: $FC
    rst RST_00                                    ; $5059: $C7
    db $FC                                        ; $505A: $FC
    ld h, a                                       ; $505B: $67
    rst RST_38                                    ; $505C: $FF
    ld [hl], b                                    ; $505D: $70
    rst RST_38                                    ; $505E: $FF
    xor [hl]                                      ; $505F: $AE
    rra                                           ; $5060: $1F
    rlca                                          ; $5061: $07
    adc a                                         ; $5062: $8F
    rlca                                          ; $5063: $07
    rst RST_38                                    ; $5064: $FF
    add [hl]                                      ; $5065: $86
    rst RST_38                                    ; $5066: $FF
    pop af                                        ; $5067: $F1
    rst RST_38                                    ; $5068: $FF
    rst RST_08                                    ; $5069: $CF
    rst RST_38                                    ; $506A: $FF
    ccf                                           ; $506B: $3F
    jp hl                                         ; $506C: $E9


    cp a                                          ; $506D: $BF
    ld [hl], l                                    ; $506E: $75
    rst RST_38                                    ; $506F: $FF
    rst RST_38                                    ; $5070: $FF
    rst RST_38                                    ; $5071: $FF
    rst RST_38                                    ; $5072: $FF
    rst RST_38                                    ; $5073: $FF
    rst RST_38                                    ; $5074: $FF
    cp $FF                                        ; $5075: $FE $FF
    ld bc, $7FFF                                  ; $5077: $01 $FF $7F
    rst RST_38                                    ; $507A: $FF
    ld a, a                                       ; $507B: $7F
    rst RST_38                                    ; $507C: $FF
    ld a, a                                       ; $507D: $7F
    rst RST_38                                    ; $507E: $FF
    ld a, a                                       ; $507F: $7F
    or $FF                                        ; $5080: $F6 $FF
    di                                            ; $5082: $F3
    rst RST_38                                    ; $5083: $FF
    ei                                            ; $5084: $FB
    rst RST_38                                    ; $5085: $FF
    ei                                            ; $5086: $FB
    ld [hl], a                                    ; $5087: $77
    rst RST_30                                    ; $5088: $F7
    adc e                                         ; $5089: $8B
    rst RST_38                                    ; $508A: $FF
    ldh [rIE], a                                  ; $508B: $E0 $FF
    db $FC                                        ; $508D: $FC
    cp $FC                                        ; $508E: $FE $FC
    cp $7C                                        ; $5090: $FE $7C
    db $FC                                        ; $5092: $FC
    ld a, b                                       ; $5093: $78
    db $FC                                        ; $5094: $FC
    ld hl, sp-$04                                 ; $5095: $F8 $FC
    ld hl, sp-$08                                 ; $5097: $F8 $F8
    ldh a, [$FFF8]                                ; $5099: $F0 $F8
    ldh a, [$FFF8]                                ; $509B: $F0 $F8
    ldh a, [$FFF8]                                ; $509D: $F0 $F8
    ldh a, [rP1]                                  ; $509F: $F0 $00
    nop                                           ; $50A1: $00
    add b                                         ; $50A2: $80
    nop                                           ; $50A3: $00
    add b                                         ; $50A4: $80
    nop                                           ; $50A5: $00
    add b                                         ; $50A6: $80
    nop                                           ; $50A7: $00
    add b                                         ; $50A8: $80
    nop                                           ; $50A9: $00
    add b                                         ; $50AA: $80
    nop                                           ; $50AB: $00
    add b                                         ; $50AC: $80
    nop                                           ; $50AD: $00
    add b                                         ; $50AE: $80
    nop                                           ; $50AF: $00
    ret nz                                        ; $50B0: $C0

    nop                                           ; $50B1: $00
    ldh [rLCDC], a                                ; $50B2: $E0 $40
    ld e, b                                       ; $50B4: $58
    and b                                         ; $50B5: $A0
    daa                                           ; $50B6: $27
    ret c                                         ; $50B7: $D8

    sbc c                                         ; $50B8: $99
    and $EE                                       ; $50B9: $E6 $EE
    db $10                                        ; $50BB: $10
    ld [hl], h                                    ; $50BC: $74
    adc b                                         ; $50BD: $88
    adc h                                         ; $50BE: $8C
    nop                                           ; $50BF: $00
    rst RST_18                                    ; $50C0: $DF
    rrca                                          ; $50C1: $0F
    cp a                                          ; $50C2: $BF
    ld c, a                                       ; $50C3: $4F
    cp a                                          ; $50C4: $BF
    ld b, a                                       ; $50C5: $47
    rst RST_38                                    ; $50C6: $FF
    scf                                           ; $50C7: $37
    ld a, a                                       ; $50C8: $7F
    scf                                           ; $50C9: $37
    ld a, a                                       ; $50CA: $7F
    ld a, [hl-]                                   ; $50CB: $3A
    ld a, a                                       ; $50CC: $7F
    ld a, [hl-]                                   ; $50CD: $3A
    ld a, a                                       ; $50CE: $7F
    inc e                                         ; $50CF: $1C
    rra                                           ; $50D0: $1F
    rlca                                          ; $50D1: $07
    rlca                                          ; $50D2: $07
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
    rst RST_38                                    ; $50E0: $FF
    cp $FF                                        ; $50E1: $FE $FF
    db $FC                                        ; $50E3: $FC
    rst RST_38                                    ; $50E4: $FF
    db $FD                                        ; $50E5: $FD
    rst RST_38                                    ; $50E6: $FF
    cp $FF                                        ; $50E7: $FE $FF
    cp $FF                                        ; $50E9: $FE $FF
    cp $FF                                        ; $50EB: $FE $FF
    ld a, [hl]                                    ; $50ED: $7E
    rst RST_38                                    ; $50EE: $FF
    ld a, c                                       ; $50EF: $79
    ld a, a                                       ; $50F0: $7F
    ccf                                           ; $50F1: $3F
    ccf                                           ; $50F2: $3F
    rrca                                          ; $50F3: $0F
    rrca                                          ; $50F4: $0F
    rlca                                          ; $50F5: $07
    rrca                                          ; $50F6: $0F
    ld bc, $020D                                  ; $50F7: $01 $0D $02
    dec d                                         ; $50FA: $15
    ld a, [bc]                                    ; $50FB: $0A
    dec d                                         ; $50FC: $15
    ld a, [bc]                                    ; $50FD: $0A
    ld c, $00                                     ; $50FE: $0E $00
    add b                                         ; $5100: $80
    nop                                           ; $5101: $00
    add b                                         ; $5102: $80
    nop                                           ; $5103: $00
    add b                                         ; $5104: $80
    nop                                           ; $5105: $00
    ret nz                                        ; $5106: $C0

    add b                                         ; $5107: $80
    ret nz                                        ; $5108: $C0

    nop                                           ; $5109: $00
    ldh [rLCDC], a                                ; $510A: $E0 $40
    ldh [$FF80], a                                ; $510C: $E0 $80
    ldh a, [$FFA0]                                ; $510E: $F0 $A0
    ldh a, [$FFC0]                                ; $5110: $F0 $C0
    ld hl, sp-$30                                 ; $5112: $F8 $D0
    db $FC                                        ; $5114: $FC
    jr jr_01B_5155                                ; $5115: $18 $3E

    call c, $8E7F                                 ; $5117: $DC $7F $8E
    rst RST_08                                    ; $511A: $CF
    nop                                           ; $511B: $00
    nop                                           ; $511C: $00
    nop                                           ; $511D: $00
    nop                                           ; $511E: $00
    nop                                           ; $511F: $00
    rrca                                          ; $5120: $0F
    nop                                           ; $5121: $00
    db $10                                        ; $5122: $10
    rrca                                          ; $5123: $0F
    add hl, hl                                    ; $5124: $29
    rra                                           ; $5125: $1F
    scf                                           ; $5126: $37
    rra                                           ; $5127: $1F
    ld a, a                                       ; $5128: $7F
    ccf                                           ; $5129: $3F
    ld a, a                                       ; $512A: $7F
    ccf                                           ; $512B: $3F
    adc a                                         ; $512C: $8F
    ld [hl], e                                    ; $512D: $73
    rst RST_10                                    ; $512E: $D7
    ld a, l                                       ; $512F: $7D
    rst RST_38                                    ; $5130: $FF
    ld a, [hl]                                    ; $5131: $7E
    rst RST_38                                    ; $5132: $FF
    ld a, [hl]                                    ; $5133: $7E
    rst RST_38                                    ; $5134: $FF
    ld a, [hl]                                    ; $5135: $7E
    rst RST_38                                    ; $5136: $FF
    ld a, [hl]                                    ; $5137: $7E
    rst RST_38                                    ; $5138: $FF
    ld [hl], b                                    ; $5139: $70
    rst RST_38                                    ; $513A: $FF
    ld l, a                                       ; $513B: $6F
    ld a, a                                       ; $513C: $7F
    ccf                                           ; $513D: $3F
    ld a, a                                       ; $513E: $7F
    rra                                           ; $513F: $1F
    rlca                                          ; $5140: $07
    nop                                           ; $5141: $00
    rrca                                          ; $5142: $0F
    ld bc, $001F                                  ; $5143: $01 $1F $00
    rra                                           ; $5146: $1F
    nop                                           ; $5147: $00
    ccf                                           ; $5148: $3F
    nop                                           ; $5149: $00
    ccf                                           ; $514A: $3F
    nop                                           ; $514B: $00
    rra                                           ; $514C: $1F
    nop                                           ; $514D: $00
    ccf                                           ; $514E: $3F
    nop                                           ; $514F: $00
    rst RST_38                                    ; $5150: $FF
    nop                                           ; $5151: $00
    cp a                                          ; $5152: $BF
    ld c, h                                       ; $5153: $4C
    ld l, a                                       ; $5154: $6F

jr_01B_5155:
    sub [hl]                                      ; $5155: $96
    sbc a                                         ; $5156: $9F
    add sp, -$52                                  ; $5157: $E8 $AE
    push af                                       ; $5159: $F5

jr_01B_515A:
    rst RST_10                                    ; $515A: $D7
    ld a, [$FBF7]                                 ; $515B: $FA $F7 $FB
    ei                                            ; $515E: $FB
    db $FD                                        ; $515F: $FD
    add b                                         ; $5160: $80
    nop                                           ; $5161: $00
    ld b, b                                       ; $5162: $40
    add b                                         ; $5163: $80
    ld b, a                                       ; $5164: $47
    add b                                         ; $5165: $80
    cp c                                          ; $5166: $B9
    add $A7                                       ; $5167: $C6 $A7
    ret c                                         ; $5169: $D8

    cp $C1                                        ; $516A: $FE $C1
    or c                                          ; $516C: $B1
    ld l, a                                       ; $516D: $6F
    cp a                                          ; $516E: $BF
    ld l, [hl]                                    ; $516F: $6E
    sbc [hl]                                      ; $5170: $9E
    ld h, b                                       ; $5171: $60
    call c, $F660                                 ; $5172: $DC $60 $F6
    add sp, $1F                                   ; $5175: $E8 $1F
    and $7F                                       ; $5177: $E6 $7F
    cp $FF                                        ; $5179: $FE $FF
    rst RST_38                                    ; $517B: $FF
    rst RST_38                                    ; $517C: $FF
    ld a, a                                       ; $517D: $7F
    rst RST_38                                    ; $517E: $FF
    ld h, d                                       ; $517F: $62
    nop                                           ; $5180: $00
    nop                                           ; $5181: $00
    nop                                           ; $5182: $00
    nop                                           ; $5183: $00
    nop                                           ; $5184: $00
    nop                                           ; $5185: $00
    nop                                           ; $5186: $00
    nop                                           ; $5187: $00
    ldh a, [rP1]                                  ; $5188: $F0 $00
    db $10                                        ; $518A: $10
    ldh [$FFE0], a                                ; $518B: $E0 $E0
    add b                                         ; $518D: $80
    add b                                         ; $518E: $80
    nop                                           ; $518F: $00
    nop                                           ; $5190: $00
    nop                                           ; $5191: $00
    ld h, b                                       ; $5192: $60
    nop                                           ; $5193: $00
    and b                                         ; $5194: $A0
    ld b, b                                       ; $5195: $40
    and b                                         ; $5196: $A0
    ld b, b                                       ; $5197: $40
    jr nz, jr_01B_515A                            ; $5198: $20 $C0

    ret nz                                        ; $519A: $C0

    nop                                           ; $519B: $00
    add b                                         ; $519C: $80
    nop                                           ; $519D: $00
    nop                                           ; $519E: $00
    nop                                           ; $519F: $00
    ld sp, hl                                     ; $51A0: $F9
    cp $FA                                        ; $51A1: $FE $FA
    rst RST_38                                    ; $51A3: $FF
    db $FD                                        ; $51A4: $FD
    cp a                                          ; $51A5: $BF
    rst RST_38                                    ; $51A6: $FF
    cp a                                          ; $51A7: $BF
    rst RST_38                                    ; $51A8: $FF
    cp a                                          ; $51A9: $BF
    rst RST_38                                    ; $51AA: $FF
    ld e, a                                       ; $51AB: $5F
    rst RST_38                                    ; $51AC: $FF
    ld e, a                                       ; $51AD: $5F
    rst RST_38                                    ; $51AE: $FF
    ld l, a                                       ; $51AF: $6F
    rst RST_38                                    ; $51B0: $FF
    ld [hl], e                                    ; $51B1: $73
    rst RST_38                                    ; $51B2: $FF
    nop                                           ; $51B3: $00
    dec bc                                        ; $51B4: $0B
    dec b                                         ; $51B5: $05
    rrca                                          ; $51B6: $0F
    nop                                           ; $51B7: $00
    nop                                           ; $51B8: $00
    nop                                           ; $51B9: $00
    nop                                           ; $51BA: $00
    nop                                           ; $51BB: $00
    nop                                           ; $51BC: $00
    nop                                           ; $51BD: $00
    nop                                           ; $51BE: $00
    nop                                           ; $51BF: $00
    and $80                                       ; $51C0: $E6 $80
    ldh [rLCDC], a                                ; $51C2: $E0 $40
    ld [hl], b                                    ; $51C4: $70
    and b                                         ; $51C5: $A0
    db $FC                                        ; $51C6: $FC
    and b                                         ; $51C7: $A0
    cp [hl]                                       ; $51C8: $BE
    call nc, $EADD                                ; $51C9: $D4 $DD $EA
    rst RST_28                                    ; $51CC: $EF
    db $F4                                        ; $51CD: $F4
    rst RST_38                                    ; $51CE: $FF
    ld a, [$FDFF]                                 ; $51CF: $FA $FF $FD
    rst RST_38                                    ; $51D2: $FF
    ld a, [hl]                                    ; $51D3: $7E
    rst RST_38                                    ; $51D4: $FF
    add b                                         ; $51D5: $80
    ldh [rP1], a                                  ; $51D6: $E0 $00
    nop                                           ; $51D8: $00
    nop                                           ; $51D9: $00
    nop                                           ; $51DA: $00
    nop                                           ; $51DB: $00
    nop                                           ; $51DC: $00
    nop                                           ; $51DD: $00
    nop                                           ; $51DE: $00
    nop                                           ; $51DF: $00
    ccf                                           ; $51E0: $3F
    rra                                           ; $51E1: $1F
    ccf                                           ; $51E2: $3F
    ld e, $7F                                     ; $51E3: $1E $7F
    ld e, $9F                                     ; $51E5: $1E $9F
    ld l, [hl]                                    ; $51E7: $6E
    rst RST_38                                    ; $51E8: $FF
    nop                                           ; $51E9: $00
    nop                                           ; $51EA: $00
    nop                                           ; $51EB: $00
    nop                                           ; $51EC: $00
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
    add b                                         ; $5200: $80
    nop                                           ; $5201: $00
    ret nz                                        ; $5202: $C0

    add b                                         ; $5203: $80
    ret nz                                        ; $5204: $C0

    nop                                           ; $5205: $00
    nop                                           ; $5206: $00
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
    ld bc, $0100                                  ; $5220: $01 $00 $01
    nop                                           ; $5223: $00
    ld bc, $0300                                  ; $5224: $01 $00 $03
    ld bc, $0103                                  ; $5227: $01 $03 $01
    inc bc                                        ; $522A: $03
    ld bc, $0001                                  ; $522B: $01 $01 $00
    rst RST_00                                    ; $522E: $C7
    ld bc, $46B9                                  ; $522F: $01 $B9 $46
    ld [hl], l                                    ; $5232: $75
    ld e, $5F                                     ; $5233: $1E $5F
    ld l, $5F                                     ; $5235: $2E $5F
    cpl                                           ; $5237: $2F
    ccf                                           ; $5238: $3F
    rrca                                          ; $5239: $0F
    rra                                           ; $523A: $1F
    ld c, $0E                                     ; $523B: $0E $0E
    nop                                           ; $523D: $00
    nop                                           ; $523E: $00
    nop                                           ; $523F: $00
    ccf                                           ; $5240: $3F
    nop                                           ; $5241: $00
    ld [hl], a                                    ; $5242: $77
    dec a                                         ; $5243: $3D
    xor d                                         ; $5244: $AA
    ld e, l                                       ; $5245: $5D
    ld [hl], a                                    ; $5246: $77
    db $DD                                        ; $5247: $DD
    cp d                                          ; $5248: $BA
    db $ED                                        ; $5249: $ED
    rst RST_18                                    ; $524A: $DF
    ld l, l                                       ; $524B: $6D
    rst RST_38                                    ; $524C: $FF
    or b                                          ; $524D: $B0
    ld sp, hl                                     ; $524E: $F9
    add $F9                                       ; $524F: $C6 $F9
    and [hl]                                      ; $5251: $A6
    ld hl, sp-$49                                 ; $5252: $F8 $B7
    db $EC                                        ; $5254: $EC
    ld d, e                                       ; $5255: $53
    ld [$F6F5], a                                 ; $5256: $EA $F5 $F6
    ld sp, hl                                     ; $5259: $F9
    ei                                            ; $525A: $FB
    call c, Call_000_2EFB                         ; $525B: $DC $FB $2E
    cp $95                                        ; $525E: $FE $95
    rst RST_08                                    ; $5260: $CF
    nop                                           ; $5261: $00
    ld [hl], b                                    ; $5262: $70
    adc a                                         ; $5263: $8F
    db $FD                                        ; $5264: $FD
    xor a                                         ; $5265: $AF
    xor [hl]                                      ; $5266: $AE
    ld [hl], a                                    ; $5267: $77
    rst RST_18                                    ; $5268: $DF
    ld h, a                                       ; $5269: $67
    rst RST_28                                    ; $526A: $EF
    ld e, e                                       ; $526B: $5B
    rst RST_38                                    ; $526C: $FF
    or e                                          ; $526D: $B3
    rst RST_38                                    ; $526E: $FF
    ld c, e                                       ; $526F: $4B
    rst RST_38                                    ; $5270: $FF
    sub a                                         ; $5271: $97
    sbc a                                         ; $5272: $9F
    ld h, l                                       ; $5273: $65
    sbc a                                         ; $5274: $9F
    ld h, l                                       ; $5275: $65
    rst RST_08                                    ; $5276: $CF
    ld sp, $9A67                                  ; $5277: $31 $67 $9A
    ld [hl], e                                    ; $527A: $73
    adc h                                         ; $527B: $8C
    cp l                                          ; $527C: $BD
    ld d, d                                       ; $527D: $52
    rst RST_38                                    ; $527E: $FF
    nop                                           ; $527F: $00
    ld b, $00                                     ; $5280: $06 $00
    rlca                                          ; $5282: $07
    ld [bc], a                                    ; $5283: $02
    dec b                                         ; $5284: $05
    inc bc                                        ; $5285: $03
    inc bc                                        ; $5286: $03
    ld bc, $0102                                  ; $5287: $01 $02 $01
    jp $3201                                      ; $528A: $C3 $01 $32


    pop bc                                        ; $528D: $C1
    rst RST_38                                    ; $528E: $FF
    di                                            ; $528F: $F3
    rst RST_38                                    ; $5290: $FF
    rst RST_08                                    ; $5291: $CF
    ld c, a                                       ; $5292: $4F
    rst RST_30                                    ; $5293: $F7
    xor a                                         ; $5294: $AF
    rst RST_30                                    ; $5295: $F7
    rst RST_30                                    ; $5296: $F7
    ei                                            ; $5297: $FB
    rst RST_38                                    ; $5298: $FF
    ei                                            ; $5299: $FB
    rst RST_38                                    ; $529A: $FF
    ei                                            ; $529B: $FB
    rst RST_38                                    ; $529C: $FF
    ei                                            ; $529D: $FB
    rst RST_38                                    ; $529E: $FF
    ei                                            ; $529F: $FB
    add b                                         ; $52A0: $80
    nop                                           ; $52A1: $00
    add b                                         ; $52A2: $80
    nop                                           ; $52A3: $00
    ret nz                                        ; $52A4: $C0

    add b                                         ; $52A5: $80
    ld b, b                                       ; $52A6: $40
    add b                                         ; $52A7: $80
    ldh [$FFC0], a                                ; $52A8: $E0 $C0
    ldh [$FFC0], a                                ; $52AA: $E0 $C0
    ldh [$FFC0], a                                ; $52AC: $E0 $C0
    ldh [$FFC0], a                                ; $52AE: $E0 $C0
    ldh [$FFC0], a                                ; $52B0: $E0 $C0
    ldh [$FFC0], a                                ; $52B2: $E0 $C0
    ldh [$FFC0], a                                ; $52B4: $E0 $C0
    ret nz                                        ; $52B6: $C0

    add b                                         ; $52B7: $80
    ret nz                                        ; $52B8: $C0

    add b                                         ; $52B9: $80
    add b                                         ; $52BA: $80
    nop                                           ; $52BB: $00
    nop                                           ; $52BC: $00
    nop                                           ; $52BD: $00
    nop                                           ; $52BE: $00
    nop                                           ; $52BF: $00
    rst RST_38                                    ; $52C0: $FF
    db $F4                                        ; $52C1: $F4
    cp $FC                                        ; $52C2: $FE $FC
    cp $1C                                        ; $52C4: $FE $1C
    db $FC                                        ; $52C6: $FC
    ld a, b                                       ; $52C7: $78
    db $FC                                        ; $52C8: $FC
    ld a, b                                       ; $52C9: $78
    ld a, h                                       ; $52CA: $7C
    adc b                                         ; $52CB: $88
    ld c, b                                       ; $52CC: $48
    or b                                          ; $52CD: $B0
    ld hl, sp+$00                                 ; $52CE: $F8 $00
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
    rst RST_38                                    ; $52E0: $FF
    inc d                                         ; $52E1: $14
    rra                                           ; $52E2: $1F
    ld a, [bc]                                    ; $52E3: $0A
    rrca                                          ; $52E4: $0F
    ld [bc], a                                    ; $52E5: $02
    rlca                                          ; $52E6: $07
    nop                                           ; $52E7: $00
    nop                                           ; $52E8: $00
    nop                                           ; $52E9: $00
    nop                                           ; $52EA: $00
    nop                                           ; $52EB: $00
    nop                                           ; $52EC: $00
    nop                                           ; $52ED: $00
    nop                                           ; $52EE: $00
    nop                                           ; $52EF: $00
    nop                                           ; $52F0: $00
    nop                                           ; $52F1: $00
    nop                                           ; $52F2: $00
    nop                                           ; $52F3: $00
    nop                                           ; $52F4: $00
    nop                                           ; $52F5: $00
    nop                                           ; $52F6: $00
    nop                                           ; $52F7: $00
    nop                                           ; $52F8: $00
    nop                                           ; $52F9: $00
    nop                                           ; $52FA: $00
    nop                                           ; $52FB: $00
    nop                                           ; $52FC: $00
    nop                                           ; $52FD: $00
    nop                                           ; $52FE: $00
    nop                                           ; $52FF: $00
    add hl, bc                                    ; $5300: $09
    ldh a, [rNR22]                                ; $5301: $F0 $17
    add sp, $3E                                   ; $5303: $E8 $3E
    pop bc                                        ; $5305: $C1
    rst RST_38                                    ; $5306: $FF
    nop                                           ; $5307: $00
    nop                                           ; $5308: $00
    nop                                           ; $5309: $00
    nop                                           ; $530A: $00
    nop                                           ; $530B: $00
    nop                                           ; $530C: $00
    nop                                           ; $530D: $00
    nop                                           ; $530E: $00
    nop                                           ; $530F: $00
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
    inc c                                         ; $532C: $0C
    nop                                           ; $532D: $00
    ld a, [hl-]                                   ; $532E: $3A
    inc b                                         ; $532F: $04
    dec h                                         ; $5330: $25
    ld a, [de]                                    ; $5331: $1A
    rla                                           ; $5332: $17
    ld [$070F], sp                                ; $5333: $08 $0F $07
    inc c                                         ; $5336: $0C
    rlca                                          ; $5337: $07
    rrca                                          ; $5338: $0F
    rlca                                          ; $5339: $07
    rrca                                          ; $533A: $0F
    rlca                                          ; $533B: $07
    rlca                                          ; $533C: $07
    inc bc                                        ; $533D: $03
    rlca                                          ; $533E: $07
    ld [bc], a                                    ; $533F: $02
    inc bc                                        ; $5340: $03
    ld bc, $0163                                  ; $5341: $01 $63 $01
    sbc a                                         ; $5344: $9F
    ld h, e                                       ; $5345: $63
    rst RST_38                                    ; $5346: $FF
    rlca                                          ; $5347: $07
    adc a                                         ; $5348: $8F
    ld [hl], a                                    ; $5349: $77
    ld a, a                                       ; $534A: $7F
    rrca                                          ; $534B: $0F
    sbc a                                         ; $534C: $9F

jr_01B_534D:
    ld l, a                                       ; $534D: $6F
    rst RST_18                                    ; $534E: $DF
    inc l                                         ; $534F: $2C
    ld a, a                                       ; $5350: $7F
    ld [bc], a                                    ; $5351: $02
    ld a, [hl]                                    ; $5352: $7E
    jr c, jr_01B_534D                             ; $5353: $38 $F8

    ld [hl], b                                    ; $5355: $70
    ldh a, [$FF60]                                ; $5356: $F0 $60
    ldh [rLCDC], a                                ; $5358: $E0 $40
    ret nz                                        ; $535A: $C0

    nop                                           ; $535B: $00
    nop                                           ; $535C: $00

jr_01B_535D:
    nop                                           ; $535D: $00
    nop                                           ; $535E: $00
    nop                                           ; $535F: $00
    nop                                           ; $5360: $00
    nop                                           ; $5361: $00
    add a                                         ; $5362: $87
    nop                                           ; $5363: $00
    sbc c                                         ; $5364: $99
    rlca                                          ; $5365: $07
    ld h, a                                       ; $5366: $67
    sbc a                                         ; $5367: $9F
    rst RST_38                                    ; $5368: $FF
    add a                                         ; $5369: $87
    rst RST_38                                    ; $536A: $FF
    ccf                                           ; $536B: $3F
    rst RST_08                                    ; $536C: $CF
    rst RST_38                                    ; $536D: $FF
    cp a                                          ; $536E: $BF
    rst RST_38                                    ; $536F: $FF
    ld e, a                                       ; $5370: $5F
    rst RST_38                                    ; $5371: $FF
    rst RST_38                                    ; $5372: $FF
    rst RST_38                                    ; $5373: $FF
    rst RST_38                                    ; $5374: $FF
    ld a, a                                       ; $5375: $7F
    rst RST_38                                    ; $5376: $FF
    ld a, c                                       ; $5377: $79
    rst RST_38                                    ; $5378: $FF
    add h                                         ; $5379: $84
    db $FC                                        ; $537A: $FC
    jr nz, jr_01B_535D                            ; $537B: $20 $E0

    add b                                         ; $537D: $80
    add b                                         ; $537E: $80
    nop                                           ; $537F: $00
    inc bc                                        ; $5380: $03
    nop                                           ; $5381: $00
    ld b, $01                                     ; $5382: $06 $01
    dec bc                                        ; $5384: $0B
    inc b                                         ; $5385: $04
    dec c                                         ; $5386: $0D
    ld [bc], a                                    ; $5387: $02

jr_01B_5388:
    rlca                                          ; $5388: $07
    nop                                           ; $5389: $00
    rlca                                          ; $538A: $07
    inc bc                                        ; $538B: $03
    rlca                                          ; $538C: $07
    inc bc                                        ; $538D: $03
    rlca                                          ; $538E: $07
    inc bc                                        ; $538F: $03
    ld c, $07                                     ; $5390: $0E $07
    rst RST_38                                    ; $5392: $FF
    rlca                                          ; $5393: $07
    rra                                           ; $5394: $1F
    rst RST_30                                    ; $5395: $F7
    ld a, a                                       ; $5396: $7F
    rst RST_30                                    ; $5397: $F7
    rst RST_38                                    ; $5398: $FF
    rst RST_30                                    ; $5399: $F7
    rst RST_38                                    ; $539A: $FF
    rst RST_30                                    ; $539B: $F7
    rst RST_38                                    ; $539C: $FF
    rst RST_30                                    ; $539D: $F7
    rst RST_38                                    ; $539E: $FF
    rst RST_30                                    ; $539F: $F7

jr_01B_53A0:
    rst RST_38                                    ; $53A0: $FF
    ei                                            ; $53A1: $FB
    rst RST_38                                    ; $53A2: $FF
    db $FC                                        ; $53A3: $FC
    rst RST_38                                    ; $53A4: $FF
    rst RST_38                                    ; $53A5: $FF
    rst RST_38                                    ; $53A6: $FF
    rst RST_38                                    ; $53A7: $FF
    rst RST_38                                    ; $53A8: $FF
    rst RST_38                                    ; $53A9: $FF
    rst RST_38                                    ; $53AA: $FF
    rrca                                          ; $53AB: $0F
    rrca                                          ; $53AC: $0F
    ld bc, $0001                                  ; $53AD: $01 $01 $00
    nop                                           ; $53B0: $00
    nop                                           ; $53B1: $00
    nop                                           ; $53B2: $00
    nop                                           ; $53B3: $00
    nop                                           ; $53B4: $00
    nop                                           ; $53B5: $00
    nop                                           ; $53B6: $00
    nop                                           ; $53B7: $00
    nop                                           ; $53B8: $00
    nop                                           ; $53B9: $00
    nop                                           ; $53BA: $00
    nop                                           ; $53BB: $00
    nop                                           ; $53BC: $00
    nop                                           ; $53BD: $00
    nop                                           ; $53BE: $00
    nop                                           ; $53BF: $00
    nop                                           ; $53C0: $00
    nop                                           ; $53C1: $00
    add b                                         ; $53C2: $80
    nop                                           ; $53C3: $00
    ld b, b                                       ; $53C4: $40
    add b                                         ; $53C5: $80
    jr nz, jr_01B_5388                            ; $53C6: $20 $C0

    ldh [rP1], a                                  ; $53C8: $E0 $00
    ldh a, [$FFC0]                                ; $53CA: $F0 $C0
    or b                                          ; $53CC: $B0
    ret nz                                        ; $53CD: $C0

    jr c, jr_01B_53A0                             ; $53CE: $38 $D0

    cp b                                          ; $53D0: $B8
    ret nc                                        ; $53D1: $D0

    ld a, b                                       ; $53D2: $78
    ret nc                                        ; $53D3: $D0

    db $FC                                        ; $53D4: $FC
    sbc b                                         ; $53D5: $98
    db $FC                                        ; $53D6: $FC
    add sp, -$43                                  ; $53D7: $E8 $BD
    add sp, $7F                                   ; $53D9: $E8 $7F
    ldh a, [$FFBF]                                ; $53DB: $F0 $BF
    rst RST_30                                    ; $53DD: $F7
    ccf                                           ; $53DE: $3F
    rst RST_30                                    ; $53DF: $F7
    rst RST_38                                    ; $53E0: $FF
    ei                                            ; $53E1: $FB
    rst RST_38                                    ; $53E2: $FF
    rst RST_30                                    ; $53E3: $F7
    rst RST_38                                    ; $53E4: $FF
    rst RST_28                                    ; $53E5: $EF
    rst RST_38                                    ; $53E6: $FF
    rst RST_28                                    ; $53E7: $EF
    rst RST_38                                    ; $53E8: $FF
    rst RST_08                                    ; $53E9: $CF
    db $EC                                        ; $53EA: $EC
    rst RST_10                                    ; $53EB: $D7
    pop af                                        ; $53EC: $F1
    rst RST_08                                    ; $53ED: $CF
    rst RST_38                                    ; $53EE: $FF
    rra                                           ; $53EF: $1F
    ld a, [hl]                                    ; $53F0: $7E
    rra                                           ; $53F1: $1F
    ld e, c                                       ; $53F2: $59
    ld l, $33                                     ; $53F3: $2E $33
    dec c                                         ; $53F5: $0D
    dec [hl]                                      ; $53F6: $35
    ld a, [bc]                                    ; $53F7: $0A
    ld a, [hl+]                                   ; $53F8: $2A
    inc d                                         ; $53F9: $14
    ld e, d                                       ; $53FA: $5A
    inc h                                         ; $53FB: $24
    ld [hl], h                                    ; $53FC: $74

jr_01B_53FD:
    ld [$0018], sp                                ; $53FD: $08 $18 $00
    jr nc, jr_01B_5402                            ; $5400: $30 $00

jr_01B_5402:
    ld l, b                                       ; $5402: $68
    jr nc, jr_01B_53FD                            ; $5403: $30 $F8

    ld h, b                                       ; $5405: $60
    db $E3                                        ; $5406: $E3
    ret nz                                        ; $5407: $C0

    ldh [c], a                                    ; $5408: $E2
    pop bc                                        ; $5409: $C1
    rst RST_38                                    ; $540A: $FF
    ld b, e                                       ; $540B: $43
    rst RST_38                                    ; $540C: $FF
    sbc [hl]                                      ; $540D: $9E
    rst RST_38                                    ; $540E: $FF
    db $FC                                        ; $540F: $FC
    rst RST_38                                    ; $5410: $FF
    sbc a                                         ; $5411: $9F
    rst RST_38                                    ; $5412: $FF
    ld [hl], e                                    ; $5413: $73
    ei                                            ; $5414: $FB
    db $EC                                        ; $5415: $EC
    cp $48                                        ; $5416: $FE $48
    rst RST_38                                    ; $5418: $FF
    add b                                         ; $5419: $80
    rst RST_38                                    ; $541A: $FF
    cp a                                          ; $541B: $BF
    ret nz                                        ; $541C: $C0

    cp a                                          ; $541D: $BF
    ret nz                                        ; $541E: $C0

    ccf                                           ; $541F: $3F
    rst RST_38                                    ; $5420: $FF
    nop                                           ; $5421: $00
    add b                                         ; $5422: $80
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
    nop                                           ; $5436: $00
    nop                                           ; $5437: $00
    nop                                           ; $5438: $00
    nop                                           ; $5439: $00
    nop                                           ; $543A: $00
    nop                                           ; $543B: $00
    nop                                           ; $543C: $00
    nop                                           ; $543D: $00
    nop                                           ; $543E: $00
    nop                                           ; $543F: $00
    add b                                         ; $5440: $80
    nop                                           ; $5441: $00
    ld h, b                                       ; $5442: $60
    add b                                         ; $5443: $80
    ld d, b                                       ; $5444: $50
    and b                                         ; $5445: $A0
    ret z                                         ; $5446: $C8

    or b                                          ; $5447: $B0
    call nz, $FCB8                                ; $5448: $C4 $B8 $FC
    nop                                           ; $544B: $00
    nop                                           ; $544C: $00
    nop                                           ; $544D: $00
    inc bc                                        ; $544E: $03
    nop                                           ; $544F: $00
    db $FD                                        ; $5450: $FD
    ld [bc], a                                    ; $5451: $02
    ldh a, [c]                                    ; $5452: $F2
    db $FC                                        ; $5453: $FC
    inc c                                         ; $5454: $0C
    ldh a, [$FFF0]                                ; $5455: $F0 $F0
    nop                                           ; $5457: $00
    nop                                           ; $5458: $00
    nop                                           ; $5459: $00
    nop                                           ; $545A: $00
    nop                                           ; $545B: $00
    nop                                           ; $545C: $00
    nop                                           ; $545D: $00
    nop                                           ; $545E: $00
    nop                                           ; $545F: $00
    nop                                           ; $5460: $00
    nop                                           ; $5461: $00
    ld bc, $0200                                  ; $5462: $01 $00 $02
    ld bc, $0103                                  ; $5465: $01 $03 $01
    inc bc                                        ; $5468: $03
    ld bc, $0003                                  ; $5469: $01 $03 $00
    ld b, $01                                     ; $546C: $06 $01
    dec c                                         ; $546E: $0D
    ld b, $17                                     ; $546F: $06 $17
    add hl, bc                                    ; $5471: $09
    ccf                                           ; $5472: $3F
    rla                                           ; $5473: $17
    ccf                                           ; $5474: $3F
    ld d, $7F                                     ; $5475: $16 $7F
    ld [hl], $7F                                  ; $5477: $36 $7F
    dec sp                                        ; $5479: $3B
    ld a, a                                       ; $547A: $7F
    inc a                                         ; $547B: $3C
    ccf                                           ; $547C: $3F
    rra                                           ; $547D: $1F
    rra                                           ; $547E: $1F
    nop                                           ; $547F: $00
    ld c, $00                                     ; $5480: $0E $00
    ld sp, $CF0E                                  ; $5482: $31 $0E $CF
    ld a, $BE                                     ; $5485: $3E $BE
    ld a, c                                       ; $5487: $79
    ld a, [$E567]                                 ; $5488: $FA $67 $E5
    ld e, a                                       ; $548B: $5F
    rst RST_18                                    ; $548C: $DF
    ccf                                           ; $548D: $3F
    ld a, [$FF7F]                                 ; $548E: $FA $7F $FF
    ret nz                                        ; $5491: $C0

    db $EB                                        ; $5492: $EB
    ccf                                           ; $5493: $3F
    or $FF                                        ; $5494: $F6 $FF
    rst RST_38                                    ; $5496: $FF
    rst RST_38                                    ; $5497: $FF
    rst RST_38                                    ; $5498: $FF
    rst RST_38                                    ; $5499: $FF
    rst RST_38                                    ; $549A: $FF
    rst RST_38                                    ; $549B: $FF
    rst RST_38                                    ; $549C: $FF
    ld a, a                                       ; $549D: $7F
    rst RST_38                                    ; $549E: $FF
    rra                                           ; $549F: $1F
    rrca                                          ; $54A0: $0F
    nop                                           ; $54A1: $00
    db $10                                        ; $54A2: $10
    rrca                                          ; $54A3: $0F
    ccf                                           ; $54A4: $3F
    nop                                           ; $54A5: $00
    ret nz                                        ; $54A6: $C0

    ccf                                           ; $54A7: $3F
    ld d, l                                       ; $54A8: $55
    rst RST_38                                    ; $54A9: $FF
    xor [hl]                                      ; $54AA: $AE
    rst RST_38                                    ; $54AB: $FF
    rst RST_38                                    ; $54AC: $FF
    rst RST_38                                    ; $54AD: $FF
    xor e                                         ; $54AE: $AB
    rst RST_38                                    ; $54AF: $FF
    db $DD                                        ; $54B0: $DD
    rst RST_38                                    ; $54B1: $FF
    rst RST_38                                    ; $54B2: $FF
    nop                                           ; $54B3: $00
    ld l, l                                       ; $54B4: $6D
    rst RST_38                                    ; $54B5: $FF
    db $DB                                        ; $54B6: $DB
    rst RST_38                                    ; $54B7: $FF
    rst RST_38                                    ; $54B8: $FF
    rst RST_38                                    ; $54B9: $FF
    rst RST_38                                    ; $54BA: $FF
    rst RST_38                                    ; $54BB: $FF
    rst RST_38                                    ; $54BC: $FF
    rst RST_38                                    ; $54BD: $FF
    rst RST_38                                    ; $54BE: $FF
    rst RST_38                                    ; $54BF: $FF
    ld b, $00                                     ; $54C0: $06 $00
    dec e                                         ; $54C2: $1D
    ld [bc], a                                    ; $54C3: $02
    ld d, $09                                     ; $54C4: $16 $09
    adc d                                         ; $54C6: $8A
    dec b                                         ; $54C7: $05
    ld c, l                                       ; $54C8: $4D
    add d                                         ; $54C9: $82
    db $EC                                        ; $54CA: $EC
    ld b, e                                       ; $54CB: $43
    halt                                          ; $54CC: $76
    adc e                                         ; $54CD: $8B
    cp h                                          ; $54CE: $BC
    rst RST_20                                    ; $54CF: $E7
    db $FC                                        ; $54D0: $FC
    rst RST_30                                    ; $54D1: $F7
    cp [hl]                                       ; $54D2: $BE
    rst RST_30                                    ; $54D3: $F7
    ld a, a                                       ; $54D4: $7F
    rst RST_28                                    ; $54D5: $EF
    or b                                          ; $54D6: $B0
    rst RST_08                                    ; $54D7: $CF
    add sp, $17                                   ; $54D8: $E8 $17
    ld [hl], b                                    ; $54DA: $70
    rst RST_08                                    ; $54DB: $CF
    ccf                                           ; $54DC: $3F
    rst RST_28                                    ; $54DD: $EF
    rst RST_38                                    ; $54DE: $FF
    rst RST_30                                    ; $54DF: $F7
    add b                                         ; $54E0: $80
    nop                                           ; $54E1: $00
    add b                                         ; $54E2: $80
    nop                                           ; $54E3: $00
    ld b, b                                       ; $54E4: $40
    add b                                         ; $54E5: $80
    ldh [rLCDC], a                                ; $54E6: $E0 $40
    ld a, a                                       ; $54E8: $7F
    add b                                         ; $54E9: $80
    or b                                          ; $54EA: $B0
    rst RST_08                                    ; $54EB: $CF
    ld [hl], b                                    ; $54EC: $70
    rst RST_28                                    ; $54ED: $EF
    ccf                                           ; $54EE: $3F
    rst RST_28                                    ; $54EF: $EF
    rst RST_38                                    ; $54F0: $FF
    ldh [$FF7F], a                                ; $54F1: $E0 $7F
    jp hl                                         ; $54F3: $E9


    rra                                           ; $54F4: $1F
    db $F4                                        ; $54F5: $F4
    ld a, a                                       ; $54F6: $7F
    db $F4                                        ; $54F7: $F4
    rst RST_38                                    ; $54F8: $FF
    jp hl                                         ; $54F9: $E9


    ccf                                           ; $54FA: $3F
    ldh [rSVBK], a                                ; $54FB: $E0 $70
    rst RST_28                                    ; $54FD: $EF
    ldh a, [$FFEF]                                ; $54FE: $F0 $EF
    ret nz                                        ; $5500: $C0

    nop                                           ; $5501: $00
    inc a                                         ; $5502: $3C
    ret nz                                        ; $5503: $C0

    inc bc                                        ; $5504: $03
    db $FC                                        ; $5505: $FC
    rst RST_38                                    ; $5506: $FF
    rst RST_38                                    ; $5507: $FF
    rst RST_38                                    ; $5508: $FF
    nop                                           ; $5509: $00
    ld hl, sp-$20                                 ; $550A: $F8 $E0
    db $E4                                        ; $550C: $E4
    ret c                                         ; $550D: $D8

    db $E4                                        ; $550E: $E4
    ret c                                         ; $550F: $D8

    ld hl, sp-$20                                 ; $5510: $F8 $E0
    rst RST_38                                    ; $5512: $FF
    nop                                           ; $5513: $00
    nop                                           ; $5514: $00
    rst RST_38                                    ; $5515: $FF
    ccf                                           ; $5516: $3F
    db $FC                                        ; $5517: $FC
    db $FC                                        ; $5518: $FC
    ret nz                                        ; $5519: $C0

    ret nz                                        ; $551A: $C0

    nop                                           ; $551B: $00
    nop                                           ; $551C: $00
    nop                                           ; $551D: $00
    nop                                           ; $551E: $00
    nop                                           ; $551F: $00
    rst RST_38                                    ; $5520: $FF
    ldh [$FFF0], a                                ; $5521: $E0 $F0
    nop                                           ; $5523: $00
    nop                                           ; $5524: $00
    nop                                           ; $5525: $00
    nop                                           ; $5526: $00
    nop                                           ; $5527: $00
    nop                                           ; $5528: $00
    nop                                           ; $5529: $00
    nop                                           ; $552A: $00
    nop                                           ; $552B: $00
    nop                                           ; $552C: $00
    nop                                           ; $552D: $00
    nop                                           ; $552E: $00
    nop                                           ; $552F: $00
    nop                                           ; $5530: $00
    nop                                           ; $5531: $00
    nop                                           ; $5532: $00
    nop                                           ; $5533: $00
    nop                                           ; $5534: $00
    nop                                           ; $5535: $00
    nop                                           ; $5536: $00
    nop                                           ; $5537: $00
    nop                                           ; $5538: $00
    nop                                           ; $5539: $00
    nop                                           ; $553A: $00
    nop                                           ; $553B: $00
    nop                                           ; $553C: $00
    nop                                           ; $553D: $00
    nop                                           ; $553E: $00
    nop                                           ; $553F: $00
    rst RST_38                                    ; $5540: $FF
    rst RST_38                                    ; $5541: $FF
    rst RST_38                                    ; $5542: $FF
    nop                                           ; $5543: $00
    nop                                           ; $5544: $00
    nop                                           ; $5545: $00
    nop                                           ; $5546: $00
    nop                                           ; $5547: $00
    nop                                           ; $5548: $00
    nop                                           ; $5549: $00
    nop                                           ; $554A: $00
    nop                                           ; $554B: $00
    nop                                           ; $554C: $00
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
    db $FC                                        ; $5560: $FC
    rst RST_30                                    ; $5561: $F7
    db $FC                                        ; $5562: $FC
    rst RST_30                                    ; $5563: $F7
    rst RST_38                                    ; $5564: $FF
    rst RST_20                                    ; $5565: $E7
    rst RST_30                                    ; $5566: $F7
    db $EB                                        ; $5567: $EB
    rst RST_38                                    ; $5568: $FF
    inc bc                                        ; $5569: $03
    rrca                                          ; $556A: $0F
    nop                                           ; $556B: $00
    nop                                           ; $556C: $00
    nop                                           ; $556D: $00
    nop                                           ; $556E: $00
    nop                                           ; $556F: $00
    nop                                           ; $5570: $00
    nop                                           ; $5571: $00
    nop                                           ; $5572: $00
    nop                                           ; $5573: $00
    nop                                           ; $5574: $00
    nop                                           ; $5575: $00
    nop                                           ; $5576: $00
    nop                                           ; $5577: $00
    nop                                           ; $5578: $00
    nop                                           ; $5579: $00
    nop                                           ; $557A: $00
    nop                                           ; $557B: $00
    nop                                           ; $557C: $00
    nop                                           ; $557D: $00
    nop                                           ; $557E: $00
    nop                                           ; $557F: $00
    rst RST_38                                    ; $5580: $FF
    rst RST_08                                    ; $5581: $CF
    rst RST_38                                    ; $5582: $FF
    add b                                         ; $5583: $80
    ldh [rLCDC], a                                ; $5584: $E0 $40
    ret nz                                        ; $5586: $C0

    nop                                           ; $5587: $00
    nop                                           ; $5588: $00
    nop                                           ; $5589: $00
    nop                                           ; $558A: $00
    nop                                           ; $558B: $00
    nop                                           ; $558C: $00
    nop                                           ; $558D: $00
    nop                                           ; $558E: $00
    nop                                           ; $558F: $00
    nop                                           ; $5590: $00
    nop                                           ; $5591: $00
    nop                                           ; $5592: $00
    nop                                           ; $5593: $00
    nop                                           ; $5594: $00
    nop                                           ; $5595: $00
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
    nop                                           ; $55AC: $00
    nop                                           ; $55AD: $00
    nop                                           ; $55AE: $00
    nop                                           ; $55AF: $00
    nop                                           ; $55B0: $00
    nop                                           ; $55B1: $00
    nop                                           ; $55B2: $00
    nop                                           ; $55B3: $00
    nop                                           ; $55B4: $00
    nop                                           ; $55B5: $00
    nop                                           ; $55B6: $00
    nop                                           ; $55B7: $00
    inc bc                                        ; $55B8: $03
    nop                                           ; $55B9: $00
    ld a, h                                       ; $55BA: $7C
    inc bc                                        ; $55BB: $03
    add e                                         ; $55BC: $83
    ld a, a                                       ; $55BD: $7F
    rst RST_38                                    ; $55BE: $FF
    nop                                           ; $55BF: $00
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
    nop                                           ; $55D0: $00
    nop                                           ; $55D1: $00
    nop                                           ; $55D2: $00
    nop                                           ; $55D3: $00
    nop                                           ; $55D4: $00
    nop                                           ; $55D5: $00
    rlca                                          ; $55D6: $07
    nop                                           ; $55D7: $00
    ld hl, sp+$07                                 ; $55D8: $F8 $07
    nop                                           ; $55DA: $00
    rst RST_38                                    ; $55DB: $FF
    rst RST_38                                    ; $55DC: $FF
    rst RST_38                                    ; $55DD: $FF
    rst RST_38                                    ; $55DE: $FF
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
    nop                                           ; $55EC: $00
    nop                                           ; $55ED: $00
    nop                                           ; $55EE: $00
    nop                                           ; $55EF: $00
    nop                                           ; $55F0: $00
    nop                                           ; $55F1: $00
    nop                                           ; $55F2: $00
    nop                                           ; $55F3: $00
    nop                                           ; $55F4: $00
    nop                                           ; $55F5: $00
    rst RST_38                                    ; $55F6: $FF
    nop                                           ; $55F7: $00
    nop                                           ; $55F8: $00
    rst RST_38                                    ; $55F9: $FF
    ld bc, $FFFE                                  ; $55FA: $01 $FE $FF
    cp $FF                                        ; $55FD: $FE $FF
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
    jr jr_01B_560C                                ; $560A: $18 $00

jr_01B_560C:
    inc d                                         ; $560C: $14
    ld [$0817], sp                                ; $560D: $08 $17 $08
    dec l                                         ; $5610: $2D
    ld [de], a                                    ; $5611: $12
    ld a, [hl+]                                   ; $5612: $2A
    inc d                                         ; $5613: $14
    ld d, [hl]                                    ; $5614: $56
    jr z, @-$17                                   ; $5615: $28 $E7

    ld e, b                                       ; $5617: $58
    call $BF3A                                    ; $5618: $CD $3A $BF
    ld a, h                                       ; $561B: $7C

jr_01B_561C:
    rst RST_38                                    ; $561C: $FF
    db $FD                                        ; $561D: $FD
    rst RST_00                                    ; $561E: $C7
    ld sp, hl                                     ; $561F: $F9
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
    nop                                           ; $5634: $00
    nop                                           ; $5635: $00
    ld a, [hl]                                    ; $5636: $7E
    nop                                           ; $5637: $00
    jp hl                                         ; $5638: $E9


    ld a, [hl]                                    ; $5639: $7E
    db $FD                                        ; $563A: $FD
    rst RST_38                                    ; $563B: $FF
    ld a, [$FFFF]                                 ; $563C: $FA $FF $FF
    rst RST_38                                    ; $563F: $FF
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
    nop                                           ; $5656: $00
    nop                                           ; $5657: $00
    ret nz                                        ; $5658: $C0

    nop                                           ; $5659: $00
    jr c, jr_01B_561C                             ; $565A: $38 $C0

    and [hl]                                      ; $565C: $A6
    ld hl, sp-$23                                 ; $565D: $F8 $DD
    cp $00                                        ; $565F: $FE $00
    nop                                           ; $5661: $00
    nop                                           ; $5662: $00
    nop                                           ; $5663: $00
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
    nop                                           ; $5672: $00
    nop                                           ; $5673: $00
    nop                                           ; $5674: $00
    nop                                           ; $5675: $00
    nop                                           ; $5676: $00
    nop                                           ; $5677: $00
    nop                                           ; $5678: $00
    nop                                           ; $5679: $00
    nop                                           ; $567A: $00
    nop                                           ; $567B: $00
    nop                                           ; $567C: $00
    nop                                           ; $567D: $00
    add b                                         ; $567E: $80
    nop                                           ; $567F: $00
    nop                                           ; $5680: $00
    nop                                           ; $5681: $00
    ld bc, $0300                                  ; $5682: $01 $00 $03
    nop                                           ; $5685: $00
    rst RST_38                                    ; $5686: $FF
    inc bc                                        ; $5687: $03
    adc a                                         ; $5688: $8F
    ld [hl], a                                    ; $5689: $77
    ld c, a                                       ; $568A: $4F
    inc [hl]                                      ; $568B: $34
    cpl                                           ; $568C: $2F
    dec d                                         ; $568D: $15
    rra                                           ; $568E: $1F
    rlca                                          ; $568F: $07
    rlca                                          ; $5690: $07
    ld [bc], a                                    ; $5691: $02
    inc bc                                        ; $5692: $03
    nop                                           ; $5693: $00
    nop                                           ; $5694: $00
    nop                                           ; $5695: $00
    nop                                           ; $5696: $00
    nop                                           ; $5697: $00
    nop                                           ; $5698: $00
    nop                                           ; $5699: $00
    nop                                           ; $569A: $00
    nop                                           ; $569B: $00
    nop                                           ; $569C: $00
    nop                                           ; $569D: $00
    nop                                           ; $569E: $00
    nop                                           ; $569F: $00
    db $FC                                        ; $56A0: $FC
    rlca                                          ; $56A1: $07
    rst RST_38                                    ; $56A2: $FF
    ld c, e                                       ; $56A3: $4B
    ld a, a                                       ; $56A4: $7F
    rst RST_18                                    ; $56A5: $DF
    rst RST_38                                    ; $56A6: $FF
    dec sp                                        ; $56A7: $3B
    rst RST_38                                    ; $56A8: $FF
    rst RST_20                                    ; $56A9: $E7
    rst RST_38                                    ; $56AA: $FF
    rst RST_38                                    ; $56AB: $FF
    rst RST_38                                    ; $56AC: $FF
    rst RST_20                                    ; $56AD: $E7
    rst RST_38                                    ; $56AE: $FF
    dec bc                                        ; $56AF: $0B
    rra                                           ; $56B0: $1F
    inc c                                         ; $56B1: $0C
    ld e, $0C                                     ; $56B2: $1E $0C
    ld a, h                                       ; $56B4: $7C
    jr jr_01B_572F                                ; $56B5: $18 $78

    jr nc, jr_01B_56F1                            ; $56B7: $30 $38

    nop                                           ; $56B9: $00
    nop                                           ; $56BA: $00
    nop                                           ; $56BB: $00
    nop                                           ; $56BC: $00
    nop                                           ; $56BD: $00
    nop                                           ; $56BE: $00
    nop                                           ; $56BF: $00
    rst RST_18                                    ; $56C0: $DF
    xor a                                         ; $56C1: $AF
    rst RST_38                                    ; $56C2: $FF
    adc $FD                                       ; $56C3: $CE $FD
    rst RST_18                                    ; $56C5: $DF
    cp $DF                                        ; $56C6: $FE $DF
    rst RST_38                                    ; $56C8: $FF
    cp a                                          ; $56C9: $BF
    rst RST_38                                    ; $56CA: $FF
    ld a, a                                       ; $56CB: $7F
    rst RST_38                                    ; $56CC: $FF
    xor a                                         ; $56CD: $AF
    rst RST_38                                    ; $56CE: $FF
    or a                                          ; $56CF: $B7
    cp a                                          ; $56D0: $BF
    rlca                                          ; $56D1: $07
    rra                                           ; $56D2: $1F
    dec bc                                        ; $56D3: $0B
    rrca                                          ; $56D4: $0F
    inc b                                         ; $56D5: $04
    rrca                                          ; $56D6: $0F
    rlca                                          ; $56D7: $07
    rrca                                          ; $56D8: $0F
    rlca                                          ; $56D9: $07
    rla                                           ; $56DA: $17
    ld [$021D], sp                                ; $56DB: $08 $1D $02
    rlca                                          ; $56DE: $07
    nop                                           ; $56DF: $00
    rst RST_38                                    ; $56E0: $FF
    rst RST_38                                    ; $56E1: $FF
    rst RST_38                                    ; $56E2: $FF
    ld a, a                                       ; $56E3: $7F
    ld a, a                                       ; $56E4: $7F
    cp a                                          ; $56E5: $BF
    cp a                                          ; $56E6: $BF
    rst RST_18                                    ; $56E7: $DF
    rst RST_38                                    ; $56E8: $FF
    rst RST_18                                    ; $56E9: $DF
    cp a                                          ; $56EA: $BF
    rst RST_28                                    ; $56EB: $EF
    rst RST_38                                    ; $56EC: $FF
    rst RST_28                                    ; $56ED: $EF
    rst RST_38                                    ; $56EE: $FF
    push hl                                       ; $56EF: $E5
    rst RST_38                                    ; $56F0: $FF

jr_01B_56F1:
    push de                                       ; $56F1: $D5
    rst RST_38                                    ; $56F2: $FF
    ld a, [$F8FF]                                 ; $56F3: $FA $FF $F8
    rst RST_38                                    ; $56F6: $FF
    ld a, h                                       ; $56F7: $7C
    cp $3C                                        ; $56F8: $FE $3C
    cp a                                          ; $56FA: $BF
    ld b, h                                       ; $56FB: $44
    daa                                           ; $56FC: $27
    ret c                                         ; $56FD: $D8

    db $FC                                        ; $56FE: $FC
    nop                                           ; $56FF: $00
    ei                                            ; $5700: $FB
    sbc h                                         ; $5701: $9C
    ld e, h                                       ; $5702: $5C
    rst RST_28                                    ; $5703: $EF
    xor a                                         ; $5704: $AF
    rst RST_30                                    ; $5705: $F7
    rst RST_38                                    ; $5706: $FF
    rst RST_30                                    ; $5707: $F7
    rst RST_28                                    ; $5708: $EF
    ei                                            ; $5709: $FB
    rst RST_38                                    ; $570A: $FF
    ei                                            ; $570B: $FB
    rst RST_38                                    ; $570C: $FF
    ei                                            ; $570D: $FB
    rst RST_38                                    ; $570E: $FF
    ld sp, hl                                     ; $570F: $F9
    rst RST_38                                    ; $5710: $FF
    and $FF                                       ; $5711: $E6 $FF
    cp $FF                                        ; $5713: $FE $FF
    ccf                                           ; $5715: $3F
    rst RST_38                                    ; $5716: $FF
    rst RST_18                                    ; $5717: $DF
    rst RST_38                                    ; $5718: $FF
    ld h, e                                       ; $5719: $63
    ld a, e                                       ; $571A: $7B
    add h                                         ; $571B: $84
    jp nc, Jump_000_3F2D                          ; $571C: $D2 $2D $3F

    nop                                           ; $571F: $00
    ret nz                                        ; $5720: $C0

    nop                                           ; $5721: $00
    or b                                          ; $5722: $B0
    ret nz                                        ; $5723: $C0

    db $FC                                        ; $5724: $FC
    ldh a, [rIE]                                  ; $5725: $F0 $FF
    db $FC                                        ; $5727: $FC
    rst RST_38                                    ; $5728: $FF
    rst RST_38                                    ; $5729: $FF
    rst RST_38                                    ; $572A: $FF
    rst RST_38                                    ; $572B: $FF
    rst RST_38                                    ; $572C: $FF
    db $FC                                        ; $572D: $FC
    db $FC                                        ; $572E: $FC

jr_01B_572F:
    ret nz                                        ; $572F: $C0

    ret nz                                        ; $5730: $C0

    nop                                           ; $5731: $00
    add b                                         ; $5732: $80
    nop                                           ; $5733: $00
    ret nz                                        ; $5734: $C0

    add b                                         ; $5735: $80
    ret nz                                        ; $5736: $C0

    add b                                         ; $5737: $80
    ret nz                                        ; $5738: $C0

    nop                                           ; $5739: $00
    ld b, b                                       ; $573A: $40
    add b                                         ; $573B: $80
    add b                                         ; $573C: $80
    nop                                           ; $573D: $00
    nop                                           ; $573E: $00
    nop                                           ; $573F: $00
    ret nz                                        ; $5740: $C0

    nop                                           ; $5741: $00
    ldh [$FFC0], a                                ; $5742: $E0 $C0
    ldh [rP1], a                                  ; $5744: $E0 $00
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
    nop                                           ; $5752: $00
    nop                                           ; $5753: $00
    nop                                           ; $5754: $00
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
    ld a, a                                       ; $5776: $7F
    nop                                           ; $5777: $00
    ld a, a                                       ; $5778: $7F
    ccf                                           ; $5779: $3F
    ccf                                           ; $577A: $3F
    rra                                           ; $577B: $1F
    rra                                           ; $577C: $1F
    rlca                                          ; $577D: $07
    rlca                                          ; $577E: $07
    nop                                           ; $577F: $00
    nop                                           ; $5780: $00
    nop                                           ; $5781: $00
    nop                                           ; $5782: $00
    nop                                           ; $5783: $00
    nop                                           ; $5784: $00
    nop                                           ; $5785: $00
    nop                                           ; $5786: $00
    nop                                           ; $5787: $00
    nop                                           ; $5788: $00
    nop                                           ; $5789: $00
    nop                                           ; $578A: $00
    nop                                           ; $578B: $00
    nop                                           ; $578C: $00
    nop                                           ; $578D: $00
    rrca                                          ; $578E: $0F
    nop                                           ; $578F: $00
    ld sp, hl                                     ; $5790: $F9
    rrca                                          ; $5791: $0F
    rst RST_38                                    ; $5792: $FF
    rst RST_38                                    ; $5793: $FF
    rst RST_38                                    ; $5794: $FF
    rst RST_38                                    ; $5795: $FF
    rst RST_38                                    ; $5796: $FF
    rst RST_38                                    ; $5797: $FF
    rst RST_38                                    ; $5798: $FF
    rst RST_38                                    ; $5799: $FF
    rst RST_38                                    ; $579A: $FF
    rst RST_38                                    ; $579B: $FF
    rst RST_38                                    ; $579C: $FF
    rrca                                          ; $579D: $0F
    rrca                                          ; $579E: $0F
    nop                                           ; $579F: $00
    nop                                           ; $57A0: $00
    nop                                           ; $57A1: $00
    nop                                           ; $57A2: $00
    nop                                           ; $57A3: $00
    nop                                           ; $57A4: $00
    nop                                           ; $57A5: $00
    nop                                           ; $57A6: $00
    nop                                           ; $57A7: $00
    ld bc, $0600                                  ; $57A8: $01 $00 $06
    ld bc, $0709                                  ; $57AB: $01 $09 $07
    ld [hl], $0F                                  ; $57AE: $36 $0F
    rst RST_18                                    ; $57B0: $DF
    inc sp                                        ; $57B1: $33
    dec [hl]                                      ; $57B2: $35
    rst RST_28                                    ; $57B3: $EF
    db $EB                                        ; $57B4: $EB
    rst RST_18                                    ; $57B5: $DF
    rst RST_38                                    ; $57B6: $FF
    rst RST_18                                    ; $57B7: $DF
    rst RST_28                                    ; $57B8: $EF
    cp a                                          ; $57B9: $BF
    rst RST_38                                    ; $57BA: $FF
    cp a                                          ; $57BB: $BF
    rst RST_38                                    ; $57BC: $FF
    cp a                                          ; $57BD: $BF
    rst RST_38                                    ; $57BE: $FF
    ccf                                           ; $57BF: $3F
    nop                                           ; $57C0: $00
    nop                                           ; $57C1: $00
    nop                                           ; $57C2: $00
    nop                                           ; $57C3: $00
    nop                                           ; $57C4: $00
    nop                                           ; $57C5: $00
    ccf                                           ; $57C6: $3F
    nop                                           ; $57C7: $00
    push bc                                       ; $57C8: $C5
    ccf                                           ; $57C9: $3F
    cpl                                           ; $57CA: $2F
    rst RST_38                                    ; $57CB: $FF
    ld d, a                                       ; $57CC: $57
    rst RST_38                                    ; $57CD: $FF
    rst RST_38                                    ; $57CE: $FF
    rst RST_38                                    ; $57CF: $FF
    rst RST_38                                    ; $57D0: $FF
    rst RST_38                                    ; $57D1: $FF
    rst RST_38                                    ; $57D2: $FF
    rst RST_20                                    ; $57D3: $E7
    db $EB                                        ; $57D4: $EB
    rst RST_18                                    ; $57D5: $DF
    rst RST_10                                    ; $57D6: $D7
    cp a                                          ; $57D7: $BF
    rst RST_38                                    ; $57D8: $FF
    cp a                                          ; $57D9: $BF
    rst RST_18                                    ; $57DA: $DF
    cp a                                          ; $57DB: $BF
    rst RST_38                                    ; $57DC: $FF
    cp a                                          ; $57DD: $BF
    rst RST_38                                    ; $57DE: $FF
    ccf                                           ; $57DF: $3F
    nop                                           ; $57E0: $00
    nop                                           ; $57E1: $00
    nop                                           ; $57E2: $00
    nop                                           ; $57E3: $00
    rrca                                          ; $57E4: $0F
    nop                                           ; $57E5: $00
    sbc l                                         ; $57E6: $9D
    rrca                                          ; $57E7: $0F
    ld [$DD97], a                                 ; $57E8: $EA $97 $DD
    or a                                          ; $57EB: $B7
    xor $BB                                       ; $57EC: $EE $BB
    rst RST_30                                    ; $57EE: $F7
    sbc e                                         ; $57EF: $9B
    rst RST_38                                    ; $57F0: $FF
    xor h                                         ; $57F1: $AC
    cp $71                                        ; $57F2: $FE $71
    cp $69                                        ; $57F4: $FE $69
    cp $AD                                        ; $57F6: $FE $AD
    ei                                            ; $57F8: $FB
    sub h                                         ; $57F9: $94
    ld a, [$FDCD]                                 ; $57FA: $FA $CD $FD
    ld c, [hl]                                    ; $57FD: $4E
    cp $57                                        ; $57FE: $FE $57
    nop                                           ; $5800: $00
    nop                                           ; $5801: $00
    nop                                           ; $5802: $00
    nop                                           ; $5803: $00
    ldh [rP1], a                                  ; $5804: $E0 $00
    ret c                                         ; $5806: $D8

    ld h, b                                       ; $5807: $60
    cp h                                          ; $5808: $BC
    ld l, b                                       ; $5809: $68
    ld [$B65C], a                                 ; $580A: $EA $5C $B6
    ld e, b                                       ; $580D: $58
    ei                                            ; $580E: $FB
    ld d, [hl]                                    ; $580F: $56
    rst RST_38                                    ; $5810: $FF
    inc l                                         ; $5811: $2C
    ld a, a                                       ; $5812: $7F
    add d                                         ; $5813: $82
    halt                                          ; $5814: $76
    xor b                                         ; $5815: $A8
    ld [hl+], a                                   ; $5816: $22
    call c, $CC32                                 ; $5817: $DC $32 $CC
    or c                                          ; $581A: $B1
    ld c, [hl]                                    ; $581B: $4E
    sbc c                                         ; $581C: $99
    ld h, [hl]                                    ; $581D: $66
    call nc, $FF23                                ; $581E: $D4 $23 $FF
    ld c, a                                       ; $5821: $4F
    rst RST_38                                    ; $5822: $FF
    ld a, [hl]                                    ; $5823: $7E
    rst RST_38                                    ; $5824: $FF
    ld a, b                                       ; $5825: $78
    db $FD                                        ; $5826: $FD
    ld a, b                                       ; $5827: $78
    db $FD                                        ; $5828: $FD
    ld [hl], b                                    ; $5829: $70
    rst RST_30                                    ; $582A: $F7
    ld [$6D92], sp                                ; $582B: $08 $92 $6D
    ld a, a                                       ; $582E: $7F
    nop                                           ; $582F: $00
    nop                                           ; $5830: $00
    nop                                           ; $5831: $00
    nop                                           ; $5832: $00
    nop                                           ; $5833: $00
    nop                                           ; $5834: $00
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
    rst RST_38                                    ; $5840: $FF
    inc a                                         ; $5841: $3C
    rst RST_38                                    ; $5842: $FF
    cp [hl]                                       ; $5843: $BE
    rst RST_38                                    ; $5844: $FF
    ccf                                           ; $5845: $3F
    rst RST_38                                    ; $5846: $FF
    rst RST_18                                    ; $5847: $DF
    rst RST_38                                    ; $5848: $FF
    rst RST_18                                    ; $5849: $DF
    rst RST_38                                    ; $584A: $FF
    add sp, -$07                                  ; $584B: $E8 $F9
    ld b, $8F                                     ; $584D: $06 $8F
    nop                                           ; $584F: $00
    nop                                           ; $5850: $00
    nop                                           ; $5851: $00
    nop                                           ; $5852: $00
    nop                                           ; $5853: $00
    nop                                           ; $5854: $00
    nop                                           ; $5855: $00
    nop                                           ; $5856: $00
    nop                                           ; $5857: $00
    nop                                           ; $5858: $00
    nop                                           ; $5859: $00
    nop                                           ; $585A: $00
    nop                                           ; $585B: $00
    nop                                           ; $585C: $00
    nop                                           ; $585D: $00
    nop                                           ; $585E: $00
    nop                                           ; $585F: $00
    cp $D3                                        ; $5860: $FE $D3
    rst RST_38                                    ; $5862: $FF
    ld de, $11FF                                  ; $5863: $11 $FF $11
    cp a                                          ; $5866: $BF
    ld a, [bc]                                    ; $5867: $0A
    rst RST_18                                    ; $5868: $DF
    ld [bc], a                                    ; $5869: $02
    ld a, [hl]                                    ; $586A: $7E
    adc l                                         ; $586B: $8D
    cpl                                           ; $586C: $2F
    ret nc                                        ; $586D: $D0

    ld hl, sp+$00                                 ; $586E: $F8 $00
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
    db $EB                                        ; $5880: $EB
    sub b                                         ; $5881: $90
    ld hl, sp-$80                                 ; $5882: $F8 $80
    ret z                                         ; $5884: $C8

    or b                                          ; $5885: $B0
    call nz, $C2B8                                ; $5886: $C4 $B8 $C2
    cp h                                          ; $5889: $BC
    cp $00                                        ; $588A: $FE $00
    ret nz                                        ; $588C: $C0

    nop                                           ; $588D: $00
    nop                                           ; $588E: $00
    nop                                           ; $588F: $00
    nop                                           ; $5890: $00
    nop                                           ; $5891: $00
    nop                                           ; $5892: $00
    nop                                           ; $5893: $00
    nop                                           ; $5894: $00
    nop                                           ; $5895: $00
    nop                                           ; $5896: $00
    nop                                           ; $5897: $00
    nop                                           ; $5898: $00
    nop                                           ; $5899: $00
    nop                                           ; $589A: $00
    nop                                           ; $589B: $00
    nop                                           ; $589C: $00
    nop                                           ; $589D: $00
    nop                                           ; $589E: $00
    nop                                           ; $589F: $00
    add b                                         ; $58A0: $80
    nop                                           ; $58A1: $00
    ld b, b                                       ; $58A2: $40
    add b                                         ; $58A3: $80
    ret nz                                        ; $58A4: $C0

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
    nop                                           ; $58D0: $00
    nop                                           ; $58D1: $00
    ld bc, $0300                                  ; $58D2: $01 $00 $03
    ld bc, $0307                                  ; $58D5: $01 $07 $03
    rrca                                          ; $58D8: $0F
    rlca                                          ; $58D9: $07

jr_01B_58DA:
    rra                                           ; $58DA: $1F
    rrca                                          ; $58DB: $0F
    ccf                                           ; $58DC: $3F
    rra                                           ; $58DD: $1F
    ld a, a                                       ; $58DE: $7F
    nop                                           ; $58DF: $00
    nop                                           ; $58E0: $00
    nop                                           ; $58E1: $00
    nop                                           ; $58E2: $00
    nop                                           ; $58E3: $00
    inc bc                                        ; $58E4: $03
    nop                                           ; $58E5: $00
    dec b                                         ; $58E6: $05
    ld [bc], a                                    ; $58E7: $02
    ld a, [bc]                                    ; $58E8: $0A
    inc b                                         ; $58E9: $04
    ld a, [de]                                    ; $58EA: $1A
    inc c                                         ; $58EB: $0C
    inc [hl]                                      ; $58EC: $34
    jr @+$66                                      ; $58ED: $18 $64

    jr c, jr_01B_58DA                             ; $58EF: $38 $E9

    ld [hl], b                                    ; $58F1: $70
    jp z, $CCF1                                   ; $58F2: $CA $F1 $CC

    di                                            ; $58F5: $F3
    sub e                                         ; $58F6: $93
    rst RST_28                                    ; $58F7: $EF
    add a                                         ; $58F8: $87
    rst RST_38                                    ; $58F9: $FF
    ccf                                           ; $58FA: $3F
    rst RST_38                                    ; $58FB: $FF
    rst RST_38                                    ; $58FC: $FF
    rst RST_38                                    ; $58FD: $FF
    rst RST_38                                    ; $58FE: $FF
    nop                                           ; $58FF: $00
    ld bc, $0200                                  ; $5900: $01 $00 $02
    ld bc, $0304                                  ; $5903: $01 $04 $03
    add hl, bc                                    ; $5906: $09
    rlca                                          ; $5907: $07
    inc de                                        ; $5908: $13
    rrca                                          ; $5909: $0F
    daa                                           ; $590A: $27
    rra                                           ; $590B: $1F
    ld c, [hl]                                    ; $590C: $4E
    ccf                                           ; $590D: $3F
    sbc [hl]                                      ; $590E: $9E
    ld a, a                                       ; $590F: $7F
    ld a, $FF                                     ; $5910: $3E $FF
    ld a, a                                       ; $5912: $7F
    rst RST_38                                    ; $5913: $FF
    rst RST_38                                    ; $5914: $FF
    rst RST_38                                    ; $5915: $FF
    rst RST_38                                    ; $5916: $FF
    rst RST_38                                    ; $5917: $FF
    rst RST_38                                    ; $5918: $FF
    rst RST_38                                    ; $5919: $FF
    rst RST_38                                    ; $591A: $FF
    rst RST_38                                    ; $591B: $FF
    rst RST_38                                    ; $591C: $FF
    rst RST_38                                    ; $591D: $FF
    rst RST_38                                    ; $591E: $FF
    nop                                           ; $591F: $00
    ld [$10F0], sp                                ; $5920: $08 $F0 $10
    ldh [$FF90], a                                ; $5923: $E0 $90
    ldh [rNR42], a                                ; $5925: $E0 $21
    ret nz                                        ; $5927: $C0

    ld h, $C1                                     ; $5928: $26 $C1
    ld e, b                                       ; $592A: $58
    add a                                         ; $592B: $87
    ld h, c                                       ; $592C: $61
    sbc a                                         ; $592D: $9F
    rlca                                          ; $592E: $07
    rst RST_38                                    ; $592F: $FF
    ccf                                           ; $5930: $3F
    rst RST_38                                    ; $5931: $FF
    rst RST_38                                    ; $5932: $FF
    rst RST_38                                    ; $5933: $FF
    rst RST_38                                    ; $5934: $FF
    rst RST_38                                    ; $5935: $FF
    rst RST_38                                    ; $5936: $FF
    rst RST_38                                    ; $5937: $FF
    rst RST_38                                    ; $5938: $FF
    rst RST_38                                    ; $5939: $FF
    rst RST_38                                    ; $593A: $FF
    rst RST_38                                    ; $593B: $FF
    rst RST_38                                    ; $593C: $FF
    cp a                                          ; $593D: $BF
    pop af                                        ; $593E: $F1
    ld a, $07                                     ; $593F: $3E $07
    nop                                           ; $5941: $00
    add hl, de                                    ; $5942: $19
    ld b, $62                                     ; $5943: $06 $62
    inc e                                         ; $5945: $1C
    add h                                         ; $5946: $84

jr_01B_5947:
    ld a, b                                       ; $5947: $78
    rrca                                          ; $5948: $0F
    ldh a, [rLCDC]                                ; $5949: $F0 $40
    rst RST_38                                    ; $594B: $FF
    add e                                         ; $594C: $83
    rst RST_38                                    ; $594D: $FF
    sbc a                                         ; $594E: $9F
    rst RST_38                                    ; $594F: $FF
    cp $FF                                        ; $5950: $FE $FF
    ld hl, sp-$01                                 ; $5952: $F8 $FF
    pop hl                                        ; $5954: $E1
    cp $9F                                        ; $5955: $FE $9F
    ldh [$FFFA], a                                ; $5957: $E0 $FA
    sbc a                                         ; $5959: $9F
    rst RST_38                                    ; $595A: $FF
    ccf                                           ; $595B: $3F
    cp $7F                                        ; $595C: $FE $7F
    rst RST_38                                    ; $595E: $FF
    ld a, a                                       ; $595F: $7F
    nop                                           ; $5960: $00
    nop                                           ; $5961: $00
    nop                                           ; $5962: $00
    nop                                           ; $5963: $00
    rrca                                          ; $5964: $0F
    nop                                           ; $5965: $00
    ldh a, [rIF]                                  ; $5966: $F0 $0F
    nop                                           ; $5968: $00
    rst RST_38                                    ; $5969: $FF
    nop                                           ; $596A: $00
    rst RST_38                                    ; $596B: $FF
    pop bc                                        ; $596C: $C1
    cp $86                                        ; $596D: $FE $86
    ld hl, sp+$18                                 ; $596F: $F8 $18
    ldh [$FF60], a                                ; $5971: $E0 $60
    add b                                         ; $5973: $80
    add b                                         ; $5974: $80
    nop                                           ; $5975: $00
    nop                                           ; $5976: $00
    nop                                           ; $5977: $00
    ld [hl], b                                    ; $5978: $70
    add b                                         ; $5979: $80
    ld c, [hl]                                    ; $597A: $4E
    ldh a, [$FFA9]                                ; $597B: $F0 $A9
    cp $F7                                        ; $597D: $FE $F7
    rst RST_38                                    ; $597F: $FF
    nop                                           ; $5980: $00
    nop                                           ; $5981: $00
    rst RST_38                                    ; $5982: $FF
    nop                                           ; $5983: $00
    ld bc, $06FE                                  ; $5984: $01 $FE $06
    ld hl, sp+$18                                 ; $5987: $F8 $18
    ldh [$FF60], a                                ; $5989: $E0 $60
    add b                                         ; $598B: $80
    add b                                         ; $598C: $80
    nop                                           ; $598D: $00
    nop                                           ; $598E: $00
    nop                                           ; $598F: $00
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
    add b                                         ; $599C: $80
    nop                                           ; $599D: $00
    ld h, b                                       ; $599E: $60
    add b                                         ; $599F: $80
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
    nop                                           ; $59AC: $00
    nop                                           ; $59AD: $00
    nop                                           ; $59AE: $00
    nop                                           ; $59AF: $00
    nop                                           ; $59B0: $00
    nop                                           ; $59B1: $00
    inc bc                                        ; $59B2: $03
    nop                                           ; $59B3: $00
    dec b                                         ; $59B4: $05
    ld [bc], a                                    ; $59B5: $02
    ld a, [bc]                                    ; $59B6: $0A
    inc b                                         ; $59B7: $04
    ld [de], a                                    ; $59B8: $12
    inc c                                         ; $59B9: $0C
    inc h                                         ; $59BA: $24
    jr jr_01B_5A01                                ; $59BB: $18 $44

    jr c, jr_01B_5947                             ; $59BD: $38 $88

    ld [hl], b                                    ; $59BF: $70
    rst RST_38                                    ; $59C0: $FF
    nop                                           ; $59C1: $00
    add b                                         ; $59C2: $80
    ld a, a                                       ; $59C3: $7F
    ld [hl], b                                    ; $59C4: $70
    rrca                                          ; $59C5: $0F
    rrca                                          ; $59C6: $0F
    nop                                           ; $59C7: $00
    nop                                           ; $59C8: $00
    nop                                           ; $59C9: $00
    nop                                           ; $59CA: $00
    nop                                           ; $59CB: $00
    nop                                           ; $59CC: $00
    nop                                           ; $59CD: $00
    nop                                           ; $59CE: $00
    nop                                           ; $59CF: $00
    nop                                           ; $59D0: $00
    nop                                           ; $59D1: $00
    nop                                           ; $59D2: $00
    nop                                           ; $59D3: $00
    nop                                           ; $59D4: $00
    nop                                           ; $59D5: $00
    nop                                           ; $59D6: $00
    nop                                           ; $59D7: $00
    nop                                           ; $59D8: $00
    nop                                           ; $59D9: $00
    nop                                           ; $59DA: $00
    nop                                           ; $59DB: $00
    nop                                           ; $59DC: $00
    nop                                           ; $59DD: $00
    nop                                           ; $59DE: $00
    nop                                           ; $59DF: $00
    rlca                                          ; $59E0: $07
    nop                                           ; $59E1: $00
    jr jr_01B_59EB                                ; $59E2: $18 $07

    daa                                           ; $59E4: $27
    rra                                           ; $59E5: $1F
    ld e, a                                       ; $59E6: $5F
    jr nz, jr_01B_5A49                            ; $59E7: $20 $60

    nop                                           ; $59E9: $00
    nop                                           ; $59EA: $00

jr_01B_59EB:
    nop                                           ; $59EB: $00
    rst RST_38                                    ; $59EC: $FF
    nop                                           ; $59ED: $00
    ld bc, $01FE                                  ; $59EE: $01 $FE $01
    cp $81                                        ; $59F1: $FE $81
    ld a, [hl]                                    ; $59F3: $7E
    ld a, a                                       ; $59F4: $7F
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
    ld a, a                                       ; $5A00: $7F

jr_01B_5A01:
    nop                                           ; $5A01: $00
    add c                                         ; $5A02: $81
    ld a, [hl]                                    ; $5A03: $7E
    ld bc, $FFFE                                  ; $5A04: $01 $FE $FF
    cp $FF                                        ; $5A07: $FE $FF
    nop                                           ; $5A09: $00
    ccf                                           ; $5A0A: $3F
    add hl, bc                                    ; $5A0B: $09
    ld l, a                                       ; $5A0C: $6F
    dec de                                        ; $5A0D: $1B
    rst RST_38                                    ; $5A0E: $FF
    ld h, a                                       ; $5A0F: $67
    rst RST_38                                    ; $5A10: $FF
    db $FC                                        ; $5A11: $FC
    rst RST_38                                    ; $5A12: $FF
    sbc a                                         ; $5A13: $9F

jr_01B_5A14:
    rst RST_38                                    ; $5A14: $FF
    cp h                                          ; $5A15: $BC
    rst RST_38                                    ; $5A16: $FF
    db $E3                                        ; $5A17: $E3
    rst RST_38                                    ; $5A18: $FF
    ld e, a                                       ; $5A19: $5F
    ld a, a                                       ; $5A1A: $7F
    jr jr_01B_5A35                                ; $5A1B: $18 $18

    nop                                           ; $5A1D: $00
    nop                                           ; $5A1E: $00
    nop                                           ; $5A1F: $00
    jr jr_01B_5A22                                ; $5A20: $18 $00

jr_01B_5A22:
    inc d                                         ; $5A22: $14
    ld [$0817], sp                                ; $5A23: $08 $17 $08
    dec l                                         ; $5A26: $2D
    ld [de], a                                    ; $5A27: $12
    ld a, [hl+]                                   ; $5A28: $2A
    inc d                                         ; $5A29: $14
    ld d, [hl]                                    ; $5A2A: $56
    jr z, jr_01B_5A14                             ; $5A2B: $28 $E7

    ld e, b                                       ; $5A2D: $58
    call $BF3A                                    ; $5A2E: $CD $3A $BF
    ld a, h                                       ; $5A31: $7C
    rst RST_38                                    ; $5A32: $FF
    db $FD                                        ; $5A33: $FD
    rst RST_00                                    ; $5A34: $C7

jr_01B_5A35:
    ld sp, hl                                     ; $5A35: $F9
    sbc e                                         ; $5A36: $9B
    push af                                       ; $5A37: $F5
    rst RST_38                                    ; $5A38: $FF
    ld a, c                                       ; $5A39: $79
    rst RST_38                                    ; $5A3A: $FF
    ei                                            ; $5A3B: $FB
    rst RST_38                                    ; $5A3C: $FF
    ld a, e                                       ; $5A3D: $7B
    rst RST_38                                    ; $5A3E: $FF
    push af                                       ; $5A3F: $F5
    rst RST_38                                    ; $5A40: $FF
    db $ED                                        ; $5A41: $ED
    rst RST_38                                    ; $5A42: $FF
    push af                                       ; $5A43: $F5

jr_01B_5A44:
    rst RST_38                                    ; $5A44: $FF
    ld [hl], d                                    ; $5A45: $72
    di                                            ; $5A46: $F3
    add b                                         ; $5A47: $80
    add d                                         ; $5A48: $82

jr_01B_5A49:
    ld bc, $0003                                  ; $5A49: $01 $03 $00
    nop                                           ; $5A4C: $00
    nop                                           ; $5A4D: $00
    nop                                           ; $5A4E: $00
    nop                                           ; $5A4F: $00
    nop                                           ; $5A50: $00
    nop                                           ; $5A51: $00
    nop                                           ; $5A52: $00
    nop                                           ; $5A53: $00
    nop                                           ; $5A54: $00
    nop                                           ; $5A55: $00
    nop                                           ; $5A56: $00
    nop                                           ; $5A57: $00
    nop                                           ; $5A58: $00
    nop                                           ; $5A59: $00
    nop                                           ; $5A5A: $00
    nop                                           ; $5A5B: $00
    nop                                           ; $5A5C: $00
    nop                                           ; $5A5D: $00
    nop                                           ; $5A5E: $00
    nop                                           ; $5A5F: $00
    ld a, [hl]                                    ; $5A60: $7E
    nop                                           ; $5A61: $00
    jp hl                                         ; $5A62: $E9


    ld a, [hl]                                    ; $5A63: $7E
    db $FD                                        ; $5A64: $FD
    rst RST_38                                    ; $5A65: $FF
    ld a, [$FFFF]                                 ; $5A66: $FA $FF $FF
    rst RST_38                                    ; $5A69: $FF
    rst RST_38                                    ; $5A6A: $FF
    rst RST_38                                    ; $5A6B: $FF
    rst RST_38                                    ; $5A6C: $FF
    rst RST_20                                    ; $5A6D: $E7
    rst RST_00                                    ; $5A6E: $C7
    ei                                            ; $5A6F: $FB
    db $EB                                        ; $5A70: $EB
    db $FD                                        ; $5A71: $FD
    rst RST_38                                    ; $5A72: $FF
    db $FC                                        ; $5A73: $FC
    rst RST_38                                    ; $5A74: $FF
    ei                                            ; $5A75: $FB
    rst RST_38                                    ; $5A76: $FF
    rst RST_38                                    ; $5A77: $FF
    rst RST_38                                    ; $5A78: $FF
    ld a, a                                       ; $5A79: $7F
    rst RST_38                                    ; $5A7A: $FF
    ld b, $FE                                     ; $5A7B: $06 $FE
    ld [hl], c                                    ; $5A7D: $71
    db $F4                                        ; $5A7E: $F4
    dec bc                                        ; $5A7F: $0B
    ret nz                                        ; $5A80: $C0

    nop                                           ; $5A81: $00
    jr c, jr_01B_5A44                             ; $5A82: $38 $C0

    and [hl]                                      ; $5A84: $A6
    ld hl, sp-$23                                 ; $5A85: $F8 $DD
    cp $FF                                        ; $5A87: $FE $FF
    ld hl, sp-$10                                 ; $5A89: $F8 $F0
    rst RST_38                                    ; $5A8B: $FF
    db $FD                                        ; $5A8C: $FD
    rst RST_38                                    ; $5A8D: $FF
    rst RST_38                                    ; $5A8E: $FF
    cp a                                          ; $5A8F: $BF
    rst RST_38                                    ; $5A90: $FF
    cp a                                          ; $5A91: $BF
    rst RST_38                                    ; $5A92: $FF
    ccf                                           ; $5A93: $3F
    rst RST_38                                    ; $5A94: $FF
    cp a                                          ; $5A95: $BF
    rst RST_38                                    ; $5A96: $FF
    rst RST_18                                    ; $5A97: $DF
    rst RST_38                                    ; $5A98: $FF
    ldh [rIE], a                                  ; $5A99: $E0 $FF
    rlca                                          ; $5A9B: $07
    sub a                                         ; $5A9C: $97
    ld h, b                                       ; $5A9D: $60
    ldh a, [rP1]                                  ; $5A9E: $F0 $00
    add b                                         ; $5AA0: $80
    nop                                           ; $5AA1: $00
    ld h, b                                       ; $5AA2: $60
    add b                                         ; $5AA3: $80
    sbc b                                         ; $5AA4: $98
    ld h, b                                       ; $5AA5: $60
    halt                                          ; $5AA6: $76
    cp b                                          ; $5AA7: $B8
    rst RST_38                                    ; $5AA8: $FF
    add $FF                                       ; $5AA9: $C6 $FF
    rst RST_10                                    ; $5AAB: $D7
    rst RST_38                                    ; $5AAC: $FF
    ei                                            ; $5AAD: $FB
    rst RST_38                                    ; $5AAE: $FF
    db $FD                                        ; $5AAF: $FD
    rst RST_38                                    ; $5AB0: $FF
    cp $FF                                        ; $5AB1: $FE $FF
    ld h, a                                       ; $5AB3: $67
    rst RST_30                                    ; $5AB4: $F7
    ld [$5BA4], sp                                ; $5AB5: $08 $A4 $5B
    rst RST_38                                    ; $5AB8: $FF
    nop                                           ; $5AB9: $00
    nop                                           ; $5ABA: $00
    nop                                           ; $5ABB: $00
    nop                                           ; $5ABC: $00
    nop                                           ; $5ABD: $00
    nop                                           ; $5ABE: $00
    nop                                           ; $5ABF: $00
    add b                                         ; $5AC0: $80
    nop                                           ; $5AC1: $00
    ldh [$FF80], a                                ; $5AC2: $E0 $80
    ld hl, sp-$20                                 ; $5AC4: $F8 $E0
    db $FC                                        ; $5AC6: $FC
    ld hl, sp-$04                                 ; $5AC7: $F8 $FC
    add b                                         ; $5AC9: $80
    add b                                         ; $5ACA: $80
    nop                                           ; $5ACB: $00
    add b                                         ; $5ACC: $80
    nop                                           ; $5ACD: $00
    add b                                         ; $5ACE: $80
    nop                                           ; $5ACF: $00
    add b                                         ; $5AD0: $80
    nop                                           ; $5AD1: $00
    nop                                           ; $5AD2: $00
    nop                                           ; $5AD3: $00
    nop                                           ; $5AD4: $00
    nop                                           ; $5AD5: $00
    nop                                           ; $5AD6: $00
    nop                                           ; $5AD7: $00
    nop                                           ; $5AD8: $00
    nop                                           ; $5AD9: $00
    nop                                           ; $5ADA: $00
    nop                                           ; $5ADB: $00
    nop                                           ; $5ADC: $00
    nop                                           ; $5ADD: $00
    nop                                           ; $5ADE: $00
    nop                                           ; $5ADF: $00
    rra                                           ; $5AE0: $1F
    nop                                           ; $5AE1: $00
    nop                                           ; $5AE2: $00
    nop                                           ; $5AE3: $00
    nop                                           ; $5AE4: $00
    nop                                           ; $5AE5: $00
    nop                                           ; $5AE6: $00
    nop                                           ; $5AE7: $00
    nop                                           ; $5AE8: $00
    nop                                           ; $5AE9: $00
    nop                                           ; $5AEA: $00
    nop                                           ; $5AEB: $00
    nop                                           ; $5AEC: $00
    nop                                           ; $5AED: $00
    nop                                           ; $5AEE: $00
    nop                                           ; $5AEF: $00
    nop                                           ; $5AF0: $00
    nop                                           ; $5AF1: $00
    nop                                           ; $5AF2: $00
    nop                                           ; $5AF3: $00
    nop                                           ; $5AF4: $00
    nop                                           ; $5AF5: $00
    nop                                           ; $5AF6: $00
    nop                                           ; $5AF7: $00
    nop                                           ; $5AF8: $00
    nop                                           ; $5AF9: $00
    nop                                           ; $5AFA: $00
    nop                                           ; $5AFB: $00
    nop                                           ; $5AFC: $00
    nop                                           ; $5AFD: $00
    nop                                           ; $5AFE: $00
    nop                                           ; $5AFF: $00
    nop                                           ; $5B00: $00
    nop                                           ; $5B01: $00
    ld bc, $0700                                  ; $5B02: $01 $00 $07
    ld bc, $071F                                  ; $5B05: $01 $1F $07
    ccf                                           ; $5B08: $3F
    rra                                           ; $5B09: $1F
    ccf                                           ; $5B0A: $3F
    nop                                           ; $5B0B: $00
    nop                                           ; $5B0C: $00
    nop                                           ; $5B0D: $00
    nop                                           ; $5B0E: $00
    nop                                           ; $5B0F: $00
    nop                                           ; $5B10: $00
    nop                                           ; $5B11: $00
    nop                                           ; $5B12: $00
    nop                                           ; $5B13: $00
    nop                                           ; $5B14: $00
    nop                                           ; $5B15: $00
    nop                                           ; $5B16: $00
    nop                                           ; $5B17: $00
    nop                                           ; $5B18: $00
    nop                                           ; $5B19: $00
    nop                                           ; $5B1A: $00
    nop                                           ; $5B1B: $00
    nop                                           ; $5B1C: $00
    nop                                           ; $5B1D: $00
    nop                                           ; $5B1E: $00
    nop                                           ; $5B1F: $00
    ld bc, $0300                                  ; $5B20: $01 $00 $03
    ld bc, $0307                                  ; $5B23: $01 $07 $03
    rra                                           ; $5B26: $1F
    rlca                                          ; $5B27: $07
    ld a, a                                       ; $5B28: $7F
    rra                                           ; $5B29: $1F
    rst RST_38                                    ; $5B2A: $FF
    ld a, [hl]                                    ; $5B2B: $7E
    rst RST_38                                    ; $5B2C: $FF
    db $FD                                        ; $5B2D: $FD
    rst RST_38                                    ; $5B2E: $FF
    ei                                            ; $5B2F: $FB
    rst RST_38                                    ; $5B30: $FF
    ldh a, [$FFF9]                                ; $5B31: $F0 $F9

Call_01B_5B33:
    ld b, $0F                                     ; $5B33: $06 $0F
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
    inc bc                                        ; $5B40: $03
    nop                                           ; $5B41: $00
    inc c                                         ; $5B42: $0C
    inc bc                                        ; $5B43: $03
    inc sp                                        ; $5B44: $33
    rrca                                          ; $5B45: $0F
    ld e, a                                       ; $5B46: $5F
    ccf                                           ; $5B47: $3F
    rst RST_38                                    ; $5B48: $FF
    ld [hl], e                                    ; $5B49: $73
    pop af                                        ; $5B4A: $F1
    rst RST_28                                    ; $5B4B: $EF
    db $EB                                        ; $5B4C: $EB
    rst RST_18                                    ; $5B4D: $DF
    rst RST_38                                    ; $5B4E: $FF
    sbc $FF                                       ; $5B4F: $DE $FF
    cp [hl]                                       ; $5B51: $BE
    rst RST_38                                    ; $5B52: $FF
    ld a, $FF                                     ; $5B53: $3E $FF
    sbc $FF                                       ; $5B55: $DE $FF
    cp $FF                                        ; $5B57: $FE $FF
    ld a, $7F                                     ; $5B59: $3E $7F
    adc b                                         ; $5B5B: $88
    add hl, hl                                    ; $5B5C: $29
    ret nc                                        ; $5B5D: $D0

    ld sp, hl                                     ; $5B5E: $F9
    nop                                           ; $5B5F: $00
    ld a, a                                       ; $5B60: $7F
    nop                                           ; $5B61: $00
    adc d                                         ; $5B62: $8A
    ld a, l                                       ; $5B63: $7D
    ld d, a                                       ; $5B64: $57
    db $FD                                        ; $5B65: $FD
    rst RST_38                                    ; $5B66: $FF
    db $FC                                        ; $5B67: $FC
    rst RST_38                                    ; $5B68: $FF
    db $FD                                        ; $5B69: $FD
    rst RST_38                                    ; $5B6A: $FF
    db $FD                                        ; $5B6B: $FD
    rst RST_38                                    ; $5B6C: $FF
    add e                                         ; $5B6D: $83
    sub a                                         ; $5B6E: $97
    ld a, c                                       ; $5B6F: $79
    cp a                                          ; $5B70: $BF
    ld a, h                                       ; $5B71: $7C

jr_01B_5B72:
    rst RST_38                                    ; $5B72: $FF
    cp $FF                                        ; $5B73: $FE $FF
    cp $FF                                        ; $5B75: $FE $FF
    rst RST_38                                    ; $5B77: $FF
    rst RST_38                                    ; $5B78: $FF
    rst RST_18                                    ; $5B79: $DF
    rst RST_38                                    ; $5B7A: $FF
    ldh [$FFEF], a                                ; $5B7B: $E0 $EF
    db $10                                        ; $5B7D: $10
    dec h                                         ; $5B7E: $25
    jp c, $007F                                   ; $5B7F: $DA $7F $00

    xor $7B                                       ; $5B82: $EE $7B
    ld d, l                                       ; $5B84: $55
    cp e                                          ; $5B85: $BB
    rst RST_28                                    ; $5B86: $EF
    cp d                                          ; $5B87: $BA
    ld [hl], l                                    ; $5B88: $75
    jp c, $DABF                                   ; $5B89: $DA $BF $DA

    rst RST_38                                    ; $5B8C: $FF
    ld h, c                                       ; $5B8D: $61
    di                                            ; $5B8E: $F3
    adc h                                         ; $5B8F: $8C
    di                                            ; $5B90: $F3
    ld c, l                                       ; $5B91: $4D
    pop af                                        ; $5B92: $F1
    ld l, [hl]                                    ; $5B93: $6E
    reti                                          ; $5B94: $D9


    and [hl]                                      ; $5B95: $A6
    push de                                       ; $5B96: $D5
    ld l, d                                       ; $5B97: $6A
    db $EC                                        ; $5B98: $EC
    ld [hl], e                                    ; $5B99: $73
    or $39                                        ; $5B9A: $F6 $39
    rst RST_30                                    ; $5B9C: $F7

jr_01B_5B9D:
    ld e, h                                       ; $5B9D: $5C
    db $FD                                        ; $5B9E: $FD
    xor d                                         ; $5B9F: $AA
    ret nz                                        ; $5BA0: $C0

    nop                                           ; $5BA1: $00
    ldh [rLCDC], a                                ; $5BA2: $E0 $40
    ld d, b                                       ; $5BA4: $50
    ldh [$FFB0], a                                ; $5BA5: $E0 $B0
    ret nz                                        ; $5BA7: $C0

    ret c                                         ; $5BA8: $D8

    or b                                          ; $5BA9: $B0
    ld hl, sp+$60                                 ; $5BAA: $F8 $60
    ld hl, sp-$70                                 ; $5BAC: $F8 $90
    ldh a, [rNR41]                                ; $5BAE: $F0 $20
    jr nc, jr_01B_5B72                            ; $5BB0: $30 $C0

    jr nz, @-$3E                                  ; $5BB2: $20 $C0

    sbc b                                         ; $5BB4: $98
    ld h, b                                       ; $5BB5: $60
    ret z                                         ; $5BB6: $C8

    jr nc, jr_01B_5B9D                            ; $5BB7: $30 $E4

    ld e, b                                       ; $5BB9: $58
    ld a, d                                       ; $5BBA: $7A
    and h                                         ; $5BBB: $A4
    cp $00                                        ; $5BBC: $FE $00
    inc d                                         ; $5BBE: $14
    add sp, -$01                                  ; $5BBF: $E8 $FF
    nop                                           ; $5BC1: $00
    nop                                           ; $5BC2: $00
    nop                                           ; $5BC3: $00
    nop                                           ; $5BC4: $00
    nop                                           ; $5BC5: $00
    nop                                           ; $5BC6: $00
    nop                                           ; $5BC7: $00
    nop                                           ; $5BC8: $00
    nop                                           ; $5BC9: $00
    nop                                           ; $5BCA: $00
    nop                                           ; $5BCB: $00
    nop                                           ; $5BCC: $00
    nop                                           ; $5BCD: $00
    nop                                           ; $5BCE: $00
    nop                                           ; $5BCF: $00
    nop                                           ; $5BD0: $00
    nop                                           ; $5BD1: $00
    nop                                           ; $5BD2: $00
    nop                                           ; $5BD3: $00
    nop                                           ; $5BD4: $00
    nop                                           ; $5BD5: $00
    nop                                           ; $5BD6: $00
    nop                                           ; $5BD7: $00
    nop                                           ; $5BD8: $00
    nop                                           ; $5BD9: $00
    nop                                           ; $5BDA: $00
    nop                                           ; $5BDB: $00
    nop                                           ; $5BDC: $00
    nop                                           ; $5BDD: $00
    nop                                           ; $5BDE: $00
    nop                                           ; $5BDF: $00
    cp $29                                        ; $5BE0: $FE $29
    ld a, $15                                     ; $5BE2: $3E $15
    ld a, $05                                     ; $5BE4: $3E $05
    rrca                                          ; $5BE6: $0F
    nop                                           ; $5BE7: $00
    nop                                           ; $5BE8: $00
    nop                                           ; $5BE9: $00
    nop                                           ; $5BEA: $00
    nop                                           ; $5BEB: $00
    nop                                           ; $5BEC: $00
    nop                                           ; $5BED: $00
    nop                                           ; $5BEE: $00
    nop                                           ; $5BEF: $00
    nop                                           ; $5BF0: $00
    nop                                           ; $5BF1: $00
    nop                                           ; $5BF2: $00
    nop                                           ; $5BF3: $00
    nop                                           ; $5BF4: $00
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
    inc a                                         ; $5C00: $3C
    ret nz                                        ; $5C01: $C0

    ld b, b                                       ; $5C02: $40
    add b                                         ; $5C03: $80
    add b                                         ; $5C04: $80
    nop                                           ; $5C05: $00
    nop                                           ; $5C06: $00
    nop                                           ; $5C07: $00
    nop                                           ; $5C08: $00
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
    ld a, [hl]                                    ; $5C20: $7E
    nop                                           ; $5C21: $00
    add c                                         ; $5C22: $81
    ld a, [hl]                                    ; $5C23: $7E
    add e                                         ; $5C24: $83
    ld a, a                                       ; $5C25: $7F
    add b                                         ; $5C26: $80
    ld a, a                                       ; $5C27: $7F
    add a                                         ; $5C28: $87
    ld a, a                                       ; $5C29: $7F
    sub e                                         ; $5C2A: $93
    ld a, a                                       ; $5C2B: $7F

jr_01B_5C2C:
    db $DD                                        ; $5C2C: $DD
    ld a, a                                       ; $5C2D: $7F
    rst RST_18                                    ; $5C2E: $DF
    ld a, a                                       ; $5C2F: $7F
    rst RST_38                                    ; $5C30: $FF
    ld a, a                                       ; $5C31: $7F
    rst RST_38                                    ; $5C32: $FF
    ld a, a                                       ; $5C33: $7F
    rst RST_38                                    ; $5C34: $FF
    ld a, a                                       ; $5C35: $7F
    rst RST_38                                    ; $5C36: $FF
    ld a, a                                       ; $5C37: $7F
    rst RST_38                                    ; $5C38: $FF
    ld a, a                                       ; $5C39: $7F
    rst RST_38                                    ; $5C3A: $FF
    ld a, a                                       ; $5C3B: $7F
    rst RST_38                                    ; $5C3C: $FF
    ld a, a                                       ; $5C3D: $7F
    rst RST_38                                    ; $5C3E: $FF
    ld a, a                                       ; $5C3F: $7F
    ldh a, [rP1]                                  ; $5C40: $F0 $00
    rst RST_38                                    ; $5C42: $FF
    ldh a, [rIE]                                  ; $5C43: $F0 $FF
    rst RST_38                                    ; $5C45: $FF
    rst RST_38                                    ; $5C46: $FF
    rst RST_38                                    ; $5C47: $FF
    rst RST_38                                    ; $5C48: $FF
    rst RST_38                                    ; $5C49: $FF
    rst RST_38                                    ; $5C4A: $FF
    cp $FC                                        ; $5C4B: $FE $FC
    rst RST_38                                    ; $5C4D: $FF
    cp $FF                                        ; $5C4E: $FE $FF
    rst RST_38                                    ; $5C50: $FF
    rst RST_38                                    ; $5C51: $FF
    ldh a, [rIE]                                  ; $5C52: $F0 $FF
    ld hl, sp-$01                                 ; $5C54: $F8 $FF
    ld hl, sp-$01                                 ; $5C56: $F8 $FF
    db $FC                                        ; $5C58: $FC
    rst RST_38                                    ; $5C59: $FF
    ld a, h                                       ; $5C5A: $7C
    rst RST_38                                    ; $5C5B: $FF
    ld e, $FF                                     ; $5C5C: $1E $FF
    ld b, $FF                                     ; $5C5E: $06 $FF
    ldh a, [rP1]                                  ; $5C60: $F0 $00
    cp $F0                                        ; $5C62: $FE $F0
    rst RST_38                                    ; $5C64: $FF
    cp $FF                                        ; $5C65: $FE $FF
    nop                                           ; $5C67: $00
    ldh a, [rP1]                                  ; $5C68: $F0 $00
    jr c, jr_01B_5C2C                             ; $5C6A: $38 $C0

    ld c, $F0                                     ; $5C6C: $0E $F0
    inc bc                                        ; $5C6E: $03
    db $FC                                        ; $5C6F: $FC
    nop                                           ; $5C70: $00
    rst RST_38                                    ; $5C71: $FF
    nop                                           ; $5C72: $00
    rst RST_38                                    ; $5C73: $FF
    ld a, [hl]                                    ; $5C74: $7E
    add c                                         ; $5C75: $81
    ccf                                           ; $5C76: $3F
    ret nc                                        ; $5C77: $D0

    ld a, $D8                                     ; $5C78: $3E $D8
    rra                                           ; $5C7A: $1F
    add sp, $1F                                   ; $5C7B: $E8 $1F
    db $E3                                        ; $5C7D: $E3
    rla                                           ; $5C7E: $17
    db $EB                                        ; $5C7F: $EB
    rrca                                          ; $5C80: $0F
    di                                            ; $5C81: $F3
    rrca                                          ; $5C82: $0F
    rst RST_30                                    ; $5C83: $F7
    rrca                                          ; $5C84: $0F
    rst RST_30                                    ; $5C85: $F7
    rst RST_00                                    ; $5C86: $C7
    dec sp                                        ; $5C87: $3B
    rst RST_30                                    ; $5C88: $F7
    set 5, l                                      ; $5C89: $CB $ED
    di                                            ; $5C8B: $F3
    ldh a, [c]                                    ; $5C8C: $F2
    rst RST_28                                    ; $5C8D: $EF
    db $FD                                        ; $5C8E: $FD
    rrca                                          ; $5C8F: $0F
    ccf                                           ; $5C90: $3F
    rla                                           ; $5C91: $17
    rra                                           ; $5C92: $1F
    rlca                                          ; $5C93: $07
    rra                                           ; $5C94: $1F
    add hl, bc                                    ; $5C95: $09
    rrca                                          ; $5C96: $0F
    dec b                                         ; $5C97: $05
    nop                                           ; $5C98: $00
    nop                                           ; $5C99: $00
    nop                                           ; $5C9A: $00
    nop                                           ; $5C9B: $00
    nop                                           ; $5C9C: $00
    nop                                           ; $5C9D: $00
    nop                                           ; $5C9E: $00
    nop                                           ; $5C9F: $00
    ld bc, $00FF                                  ; $5CA0: $01 $FF $00
    rst RST_38                                    ; $5CA3: $FF
    ld [$0CF7], sp                                ; $5CA4: $08 $F7 $0C
    di                                            ; $5CA7: $F3
    adc a                                         ; $5CA8: $8F
    ld [hl], h                                    ; $5CA9: $74
    adc a                                         ; $5CAA: $8F
    ld [hl], c                                    ; $5CAB: $71
    rst RST_00                                    ; $5CAC: $C7
    dec sp                                        ; $5CAD: $3B
    rst RST_00                                    ; $5CAE: $C7
    add hl, sp                                    ; $5CAF: $39
    rst RST_20                                    ; $5CB0: $E7
    ld e, b                                       ; $5CB1: $58
    rst RST_20                                    ; $5CB2: $E7
    add hl, de                                    ; $5CB3: $19
    rst RST_30                                    ; $5CB4: $F7
    jr z, @-$4A                                   ; $5CB5: $28 $B4

    ld [$000C], sp                                ; $5CB7: $08 $0C $00
    inc c                                         ; $5CBA: $0C
    nop                                           ; $5CBB: $00

jr_01B_5CBC:
    nop                                           ; $5CBC: $00
    nop                                           ; $5CBD: $00
    nop                                           ; $5CBE: $00
    nop                                           ; $5CBF: $00
    ld [hl], a                                    ; $5CC0: $77
    cpl                                           ; $5CC1: $2F
    ld [hl], e                                    ; $5CC2: $73
    cpl                                           ; $5CC3: $2F
    ld [hl], e                                    ; $5CC4: $73
    cpl                                           ; $5CC5: $2F
    ld a, c                                       ; $5CC6: $79
    daa                                           ; $5CC7: $27
    ld a, b                                       ; $5CC8: $78
    daa                                           ; $5CC9: $27
    ld a, b                                       ; $5CCA: $78
    daa                                           ; $5CCB: $27
    ld [hl], h                                    ; $5CCC: $74
    dec hl                                        ; $5CCD: $2B
    inc [hl]                                      ; $5CCE: $34
    dec bc                                        ; $5CCF: $0B
    inc c                                         ; $5CD0: $0C
    inc bc                                        ; $5CD1: $03
    ld [bc], a                                    ; $5CD2: $02
    ld bc, $0102                                  ; $5CD3: $01 $02 $01
    ld [bc], a                                    ; $5CD6: $02
    ld bc, $0001                                  ; $5CD7: $01 $01 $00
    nop                                           ; $5CDA: $00
    nop                                           ; $5CDB: $00
    nop                                           ; $5CDC: $00
    nop                                           ; $5CDD: $00
    nop                                           ; $5CDE: $00
    nop                                           ; $5CDF: $00
    nop                                           ; $5CE0: $00
    nop                                           ; $5CE1: $00
    nop                                           ; $5CE2: $00
    nop                                           ; $5CE3: $00
    nop                                           ; $5CE4: $00
    nop                                           ; $5CE5: $00
    nop                                           ; $5CE6: $00
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
    nop                                           ; $5CF1: $00
    nop                                           ; $5CF2: $00
    nop                                           ; $5CF3: $00
    nop                                           ; $5CF4: $00
    nop                                           ; $5CF5: $00
    nop                                           ; $5CF6: $00
    nop                                           ; $5CF7: $00
    ret nz                                        ; $5CF8: $C0

    nop                                           ; $5CF9: $00
    jr nc, jr_01B_5CBC                            ; $5CFA: $30 $C0

    inc c                                         ; $5CFC: $0C
    ldh a, [$FFFC]                                ; $5CFD: $F0 $FC
    nop                                           ; $5CFF: $00
    nop                                           ; $5D00: $00
    nop                                           ; $5D01: $00
    add b                                         ; $5D02: $80
    nop                                           ; $5D03: $00
    ldh [$FF80], a                                ; $5D04: $E0 $80
    ldh a, [$FFE0]                                ; $5D06: $F0 $E0
    add sp, -$10                                  ; $5D08: $E8 $F0
    db $FC                                        ; $5D0A: $FC
    ld hl, sp-$0A                                 ; $5D0B: $F8 $F6
    db $FC                                        ; $5D0D: $FC
    ei                                            ; $5D0E: $FB
    ld a, $BF                                     ; $5D0F: $3E $BF
    sbc $5F                                       ; $5D11: $DE $5F
    rst RST_28                                    ; $5D13: $EF
    rst RST_38                                    ; $5D14: $FF
    rst RST_28                                    ; $5D15: $EF
    rst RST_18                                    ; $5D16: $DF
    rst RST_28                                    ; $5D17: $EF
    rst RST_38                                    ; $5D18: $FF
    rst RST_28                                    ; $5D19: $EF
    rst RST_38                                    ; $5D1A: $FF
    call nc, $F7FE                                ; $5D1B: $D4 $FE $F7
    db $FD                                        ; $5D1E: $FD
    rst RST_30                                    ; $5D1F: $F7
    rst RST_38                                    ; $5D20: $FF
    ld c, a                                       ; $5D21: $4F
    ld a, a                                       ; $5D22: $7F
    cpl                                           ; $5D23: $2F
    ld a, a                                       ; $5D24: $7F
    inc h                                         ; $5D25: $24
    inc [hl]                                      ; $5D26: $34
    dec bc                                        ; $5D27: $0B
    inc de                                        ; $5D28: $13
    inc c                                         ; $5D29: $0C
    dec bc                                        ; $5D2A: $0B
    inc b                                         ; $5D2B: $04
    rlca                                          ; $5D2C: $07
    ld bc, $0103                                  ; $5D2D: $01 $03 $01
    ld bc, $0100                                  ; $5D30: $01 $00 $01

jr_01B_5D33:
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
    ld hl, sp-$10                                 ; $5D40: $F8 $F0
    ld hl, sp-$10                                 ; $5D42: $F8 $F0
    db $FC                                        ; $5D44: $FC
    ld hl, sp-$04                                 ; $5D45: $F8 $FC
    ld hl, sp-$02                                 ; $5D47: $F8 $FE
    ld c, h                                       ; $5D49: $4C
    xor $74                                       ; $5D4A: $EE $74
    sub $78                                       ; $5D4C: $D6 $78
    rst RST_38                                    ; $5D4E: $FF
    ld a, d                                       ; $5D4F: $7A
    rst RST_30                                    ; $5D50: $F7
    ld a, h                                       ; $5D51: $7C
    rst RST_38                                    ; $5D52: $FF
    ld a, h                                       ; $5D53: $7C
    rst RST_38                                    ; $5D54: $FF
    ld a, l                                       ; $5D55: $7D
    rst RST_38                                    ; $5D56: $FF
    db $FC                                        ; $5D57: $FC
    rst RST_38                                    ; $5D58: $FF
    ldh a, [c]                                    ; $5D59: $F2
    rst RST_38                                    ; $5D5A: $FF
    ld a, a                                       ; $5D5B: $7F
    rst RST_38                                    ; $5D5C: $FF
    sbc a                                         ; $5D5D: $9F
    rst RST_38                                    ; $5D5E: $FF
    rst RST_28                                    ; $5D5F: $EF
    rst RST_38                                    ; $5D60: $FF
    rst RST_00                                    ; $5D61: $C7
    rst RST_28                                    ; $5D62: $EF
    ld d, $9E                                     ; $5D63: $16 $9E
    ld h, c                                       ; $5D65: $61
    ld e, l                                       ; $5D66: $5D
    ld [hl+], a                                   ; $5D67: $22
    ld [hl-], a                                   ; $5D68: $32
    ld bc, $0001                                  ; $5D69: $01 $01 $00
    nop                                           ; $5D6C: $00
    nop                                           ; $5D6D: $00
    nop                                           ; $5D6E: $00
    nop                                           ; $5D6F: $00
    nop                                           ; $5D70: $00
    nop                                           ; $5D71: $00
    nop                                           ; $5D72: $00
    nop                                           ; $5D73: $00
    nop                                           ; $5D74: $00
    nop                                           ; $5D75: $00
    nop                                           ; $5D76: $00
    nop                                           ; $5D77: $00
    nop                                           ; $5D78: $00
    nop                                           ; $5D79: $00
    nop                                           ; $5D7A: $00
    nop                                           ; $5D7B: $00
    nop                                           ; $5D7C: $00
    nop                                           ; $5D7D: $00
    nop                                           ; $5D7E: $00
    nop                                           ; $5D7F: $00
    add b                                         ; $5D80: $80
    nop                                           ; $5D81: $00
    add b                                         ; $5D82: $80
    nop                                           ; $5D83: $00
    ret nz                                        ; $5D84: $C0

    add b                                         ; $5D85: $80
    ret nz                                        ; $5D86: $C0

jr_01B_5D87:
    nop                                           ; $5D87: $00
    ldh [rLCDC], a                                ; $5D88: $E0 $40
    ldh [$FF80], a                                ; $5D8A: $E0 $80
    ldh a, [$FFA0]                                ; $5D8C: $F0 $A0
    ldh a, [rNR41]                                ; $5D8E: $F0 $20
    ld a, b                                       ; $5D90: $78
    or b                                          ; $5D91: $B0
    ld a, b                                       ; $5D92: $78
    or b                                          ; $5D93: $B0
    db $FC                                        ; $5D94: $FC
    jr jr_01B_5D33                                ; $5D95: $18 $9C

    ld [$000C], sp                                ; $5D97: $08 $0C $00
    nop                                           ; $5D9A: $00
    nop                                           ; $5D9B: $00
    nop                                           ; $5D9C: $00
    nop                                           ; $5D9D: $00
    nop                                           ; $5D9E: $00
    nop                                           ; $5D9F: $00
    ld a, [hl]                                    ; $5DA0: $7E
    ld hl, sp-$01                                 ; $5DA1: $F8 $FF
    ld hl, sp-$71                                 ; $5DA3: $F8 $8F
    di                                            ; $5DA5: $F3
    scf                                           ; $5DA6: $37
    db $EB                                        ; $5DA7: $EB
    rst RST_38                                    ; $5DA8: $FF
    di                                            ; $5DA9: $F3
    rst RST_38                                    ; $5DAA: $FF
    rst RST_30                                    ; $5DAB: $F7
    rst RST_38                                    ; $5DAC: $FF
    rst RST_30                                    ; $5DAD: $F7
    rst RST_38                                    ; $5DAE: $FF
    rst RST_28                                    ; $5DAF: $EF
    cp $DF                                        ; $5DB0: $FE $DF
    rst RST_38                                    ; $5DB2: $FF
    rst RST_28                                    ; $5DB3: $EF
    rst RST_38                                    ; $5DB4: $FF
    rst RST_28                                    ; $5DB5: $EF
    rst RST_38                                    ; $5DB6: $FF
    rrca                                          ; $5DB7: $0F
    ccf                                           ; $5DB8: $3F
    rla                                           ; $5DB9: $17
    rra                                           ; $5DBA: $1F
    rlca                                          ; $5DBB: $07
    rra                                           ; $5DBC: $1F
    add hl, bc                                    ; $5DBD: $09
    rrca                                          ; $5DBE: $0F
    dec b                                         ; $5DBF: $05
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
    nop                                           ; $5DCA: $00
    nop                                           ; $5DCB: $00
    nop                                           ; $5DCC: $00
    nop                                           ; $5DCD: $00
    nop                                           ; $5DCE: $00
    nop                                           ; $5DCF: $00
    jr nc, jr_01B_5DD2                            ; $5DD0: $30 $00

jr_01B_5DD2:
    jr z, jr_01B_5DE4                             ; $5DD2: $28 $10

    ld l, $10                                     ; $5DD4: $2E $10
    ld e, d                                       ; $5DD6: $5A
    inc h                                         ; $5DD7: $24
    ld d, h                                       ; $5DD8: $54
    jr z, jr_01B_5D87                             ; $5DD9: $28 $AC

    ld d, b                                       ; $5DDB: $50
    call z, $9AB0                                 ; $5DDC: $CC $B0 $9A
    ld [hl], h                                    ; $5DDF: $74
    push bc                                       ; $5DE0: $C5
    ld a, b                                       ; $5DE1: $78
    ld h, e                                       ; $5DE2: $63
    inc a                                         ; $5DE3: $3C

jr_01B_5DE4:
    inc sp                                        ; $5DE4: $33
    inc e                                         ; $5DE5: $1C
    dec de                                        ; $5DE6: $1B
    dec c                                         ; $5DE7: $0D
    ccf                                           ; $5DE8: $3F
    dec d                                         ; $5DE9: $15
    ld a, a                                       ; $5DEA: $7F
    ld hl, $127F                                  ; $5DEB: $21 $7F $12
    rst RST_18                                    ; $5DEE: $DF
    scf                                           ; $5DEF: $37
    rst RST_38                                    ; $5DF0: $FF
    adc $FF                                       ; $5DF1: $CE $FF
    ld sp, hl                                     ; $5DF3: $F9
    rst RST_38                                    ; $5DF4: $FF
    ccf                                           ; $5DF5: $3F
    rst RST_38                                    ; $5DF6: $FF
    ld a, c                                       ; $5DF7: $79
    rst RST_38                                    ; $5DF8: $FF
    jp nz, $BFFF                                  ; $5DF9: $C2 $FF $BF

jr_01B_5DFC:
    rst RST_38                                    ; $5DFC: $FF
    jr nc, jr_01B_5E2F                            ; $5DFD: $30 $30

    nop                                           ; $5DFF: $00
    nop                                           ; $5E00: $00
    nop                                           ; $5E01: $00
    nop                                           ; $5E02: $00
    nop                                           ; $5E03: $00
    nop                                           ; $5E04: $00
    nop                                           ; $5E05: $00
    nop                                           ; $5E06: $00
    nop                                           ; $5E07: $00
    nop                                           ; $5E08: $00
    nop                                           ; $5E09: $00
    nop                                           ; $5E0A: $00
    nop                                           ; $5E0B: $00
    nop                                           ; $5E0C: $00
    nop                                           ; $5E0D: $00
    nop                                           ; $5E0E: $00
    nop                                           ; $5E0F: $00
    ccf                                           ; $5E10: $3F
    nop                                           ; $5E11: $00
    inc hl                                        ; $5E12: $23
    dec e                                         ; $5E13: $1D
    inc de                                        ; $5E14: $13
    dec c                                         ; $5E15: $0D
    dec bc                                        ; $5E16: $0B
    dec b                                         ; $5E17: $05
    rlca                                          ; $5E18: $07
    ld bc, $0001                                  ; $5E19: $01 $01 $00
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
    nop                                           ; $5E28: $00
    nop                                           ; $5E29: $00
    nop                                           ; $5E2A: $00
    nop                                           ; $5E2B: $00
    nop                                           ; $5E2C: $00
    nop                                           ; $5E2D: $00
    nop                                           ; $5E2E: $00

jr_01B_5E2F:
    nop                                           ; $5E2F: $00
    nop                                           ; $5E30: $00
    nop                                           ; $5E31: $00
    nop                                           ; $5E32: $00
    nop                                           ; $5E33: $00
    nop                                           ; $5E34: $00
    nop                                           ; $5E35: $00
    add b                                         ; $5E36: $80
    nop                                           ; $5E37: $00
    ld b, b                                       ; $5E38: $40
    add b                                         ; $5E39: $80
    jr nz, jr_01B_5DFC                            ; $5E3A: $20 $C0

    db $10                                        ; $5E3C: $10
    ldh [$FF88], a                                ; $5E3D: $E0 $88
    ldh a, [rP1]                                  ; $5E3F: $F0 $00
    nop                                           ; $5E41: $00
    nop                                           ; $5E42: $00
    nop                                           ; $5E43: $00
    nop                                           ; $5E44: $00
    nop                                           ; $5E45: $00
    nop                                           ; $5E46: $00
    nop                                           ; $5E47: $00
    ret nz                                        ; $5E48: $C0

    nop                                           ; $5E49: $00
    and b                                         ; $5E4A: $A0
    ld b, b                                       ; $5E4B: $40
    ret nc                                        ; $5E4C: $D0

    ld h, b                                       ; $5E4D: $60
    ld l, b                                       ; $5E4E: $68
    jr nc, jr_01B_5EB5                            ; $5E4F: $30 $64

    jr c, jr_01B_5E85                             ; $5E51: $38 $32

    inc e                                         ; $5E53: $1C
    ld sp, $181E                                  ; $5E54: $31 $1E $18
    rrca                                          ; $5E57: $0F
    inc c                                         ; $5E58: $0C
    rlca                                          ; $5E59: $07
    ld b, $03                                     ; $5E5A: $06 $03
    inc bc                                        ; $5E5C: $03
    ld bc, $0001                                  ; $5E5D: $01 $01 $00
    rst RST_38                                    ; $5E60: $FF
    rst RST_18                                    ; $5E61: $DF
    rst RST_38                                    ; $5E62: $FF
    db $DD                                        ; $5E63: $DD
    rst RST_38                                    ; $5E64: $FF
    adc [hl]                                      ; $5E65: $8E
    rst RST_38                                    ; $5E66: $FF
    add [hl]                                      ; $5E67: $86
    cp a                                          ; $5E68: $BF
    dec de                                        ; $5E69: $1B
    scf                                           ; $5E6A: $37
    dec bc                                        ; $5E6B: $0B
    rra                                           ; $5E6C: $1F
    rlca                                          ; $5E6D: $07
    rra                                           ; $5E6E: $1F

Call_01B_5E6F:
    rrca                                          ; $5E6F: $0F
    rra                                           ; $5E70: $1F
    rrca                                          ; $5E71: $0F
    ccf                                           ; $5E72: $3F
    dec bc                                        ; $5E73: $0B
    ld e, a                                       ; $5E74: $5F
    add hl, hl                                    ; $5E75: $29
    adc a                                         ; $5E76: $8F
    ld [hl], a                                    ; $5E77: $77
    rrca                                          ; $5E78: $0F
    di                                            ; $5E79: $F3
    di                                            ; $5E7A: $F3
    nop                                           ; $5E7B: $00
    nop                                           ; $5E7C: $00
    nop                                           ; $5E7D: $00
    nop                                           ; $5E7E: $00
    nop                                           ; $5E7F: $00
    add [hl]                                      ; $5E80: $86
    ld sp, hl                                     ; $5E81: $F9
    sbc e                                         ; $5E82: $9B
    rst RST_20                                    ; $5E83: $E7
    rst RST_20                                    ; $5E84: $E7

jr_01B_5E85:
    sbc a                                         ; $5E85: $9F
    sbc a                                         ; $5E86: $9F
    ld a, [hl]                                    ; $5E87: $7E
    ld a, a                                       ; $5E88: $7F
    cp $BF                                        ; $5E89: $FE $BF
    rst RST_38                                    ; $5E8B: $FF
    ld a, a                                       ; $5E8C: $7F
    rst RST_38                                    ; $5E8D: $FF
    rst RST_38                                    ; $5E8E: $FF
    ldh [$FFEB], a                                ; $5E8F: $E0 $EB
    rst RST_18                                    ; $5E91: $DF
    rst RST_18                                    ; $5E92: $DF
    cp a                                          ; $5E93: $BF
    rst RST_28                                    ; $5E94: $EF
    cp a                                          ; $5E95: $BF
    rst RST_18                                    ; $5E96: $DF
    rst RST_38                                    ; $5E97: $FF
    rst RST_38                                    ; $5E98: $FF
    ld a, a                                       ; $5E99: $7F
    rst RST_38                                    ; $5E9A: $FF
    sbc a                                         ; $5E9B: $9F
    rst RST_38                                    ; $5E9C: $FF
    call c, $EDFF                                 ; $5E9D: $DC $FF $ED
    dec c                                         ; $5EA0: $0D
    rst RST_38                                    ; $5EA1: $FF
    dec e                                         ; $5EA2: $1D
    rst RST_38                                    ; $5EA3: $FF
    rra                                           ; $5EA4: $1F
    rst RST_38                                    ; $5EA5: $FF
    rra                                           ; $5EA6: $1F
    rst RST_38                                    ; $5EA7: $FF
    ccf                                           ; $5EA8: $3F
    cp $3E                                        ; $5EA9: $FE $3E
    db $FD                                        ; $5EAB: $FD
    dec a                                         ; $5EAC: $3D
    ei                                            ; $5EAD: $FB
    ld a, l                                       ; $5EAE: $7D
    ei                                            ; $5EAF: $FB
    ld a, a                                       ; $5EB0: $7F
    rst RST_30                                    ; $5EB1: $F7
    ld a, a                                       ; $5EB2: $7F
    di                                            ; $5EB3: $F3
    ld a, e                                       ; $5EB4: $7B

jr_01B_5EB5:
    push af                                       ; $5EB5: $F5
    rst RST_38                                    ; $5EB6: $FF
    pop af                                        ; $5EB7: $F1
    pop af                                        ; $5EB8: $F1
    cp $E5                                        ; $5EB9: $FE $E5
    rst RST_38                                    ; $5EBB: $FF
    db $F4                                        ; $5EBC: $F4
    rst RST_28                                    ; $5EBD: $EF
    cp $EF                                        ; $5EBE: $FE $EF
    cpl                                           ; $5EC0: $2F
    rra                                           ; $5EC1: $1F
    cpl                                           ; $5EC2: $2F
    rra                                           ; $5EC3: $1F
    cpl                                           ; $5EC4: $2F
    rra                                           ; $5EC5: $1F
    ld c, a                                       ; $5EC6: $4F
    ccf                                           ; $5EC7: $3F
    ld e, a                                       ; $5EC8: $5F
    ccf                                           ; $5EC9: $3F
    ld e, a                                       ; $5ECA: $5F
    ld a, $5F                                     ; $5ECB: $3E $5F
    ld a, $5E                                     ; $5ECD: $3E $5E
    inc a                                         ; $5ECF: $3C
    cp h                                          ; $5ED0: $BC
    ld a, b                                       ; $5ED1: $78
    cp h                                          ; $5ED2: $BC
    ld a, b                                       ; $5ED3: $78
    cp b                                          ; $5ED4: $B8
    ld [hl], b                                    ; $5ED5: $70
    or b                                          ; $5ED6: $B0
    ld h, b                                       ; $5ED7: $60
    and c                                         ; $5ED8: $A1
    ld b, b                                       ; $5ED9: $40
    pop bc                                        ; $5EDA: $C1
    nop                                           ; $5EDB: $00
    nop                                           ; $5EDC: $00
    nop                                           ; $5EDD: $00
    nop                                           ; $5EDE: $00
    nop                                           ; $5EDF: $00
    ld bc, $0100                                  ; $5EE0: $01 $00 $01
    nop                                           ; $5EE3: $00
    ld bc, $0200                                  ; $5EE4: $01 $00 $02
    ld bc, $0102                                  ; $5EE7: $01 $02 $01
    ld [bc], a                                    ; $5EEA: $02
    ld bc, $0304                                  ; $5EEB: $01 $04 $03
    inc b                                         ; $5EEE: $04
    inc bc                                        ; $5EEF: $03
    inc b                                         ; $5EF0: $04
    inc bc                                        ; $5EF1: $03
    ld [$0A07], sp                                ; $5EF2: $08 $07 $0A
    rlca                                          ; $5EF5: $07
    ld a, [bc]                                    ; $5EF6: $0A
    rlca                                          ; $5EF7: $07
    ld [de], a                                    ; $5EF8: $12
    rrca                                          ; $5EF9: $0F
    ld d, $0F                                     ; $5EFA: $16 $0F
    rla                                           ; $5EFC: $17
    rrca                                          ; $5EFD: $0F
    daa                                           ; $5EFE: $27
    rra                                           ; $5EFF: $1F
    ld bc, $0200                                  ; $5F00: $01 $00 $02
    ld bc, $0102                                  ; $5F03: $01 $02 $01
    inc b                                         ; $5F06: $04
    inc bc                                        ; $5F07: $03
    inc b                                         ; $5F08: $04
    inc bc                                        ; $5F09: $03
    ld [$0807], sp                                ; $5F0A: $08 $07 $08
    rlca                                          ; $5F0D: $07
    db $10                                        ; $5F0E: $10
    rrca                                          ; $5F0F: $0F
    db $10                                        ; $5F10: $10
    rrca                                          ; $5F11: $0F
    jr nz, jr_01B_5F33                            ; $5F12: $20 $1F

    jr nz, @+$21                                  ; $5F14: $20 $1F

    ld b, h                                       ; $5F16: $44
    ccf                                           ; $5F17: $3F
    ld b, h                                       ; $5F18: $44
    ccf                                           ; $5F19: $3F
    ld b, h                                       ; $5F1A: $44
    ccf                                           ; $5F1B: $3F
    adc h                                         ; $5F1C: $8C
    ld a, a                                       ; $5F1D: $7F
    adc h                                         ; $5F1E: $8C
    ld a, a                                       ; $5F1F: $7F
    add b                                         ; $5F20: $80
    nop                                           ; $5F21: $00
    add b                                         ; $5F22: $80
    nop                                           ; $5F23: $00
    add b                                         ; $5F24: $80
    nop                                           ; $5F25: $00
    add b                                         ; $5F26: $80
    nop                                           ; $5F27: $00
    add b                                         ; $5F28: $80
    nop                                           ; $5F29: $00
    add b                                         ; $5F2A: $80
    nop                                           ; $5F2B: $00
    add [hl]                                      ; $5F2C: $86
    nop                                           ; $5F2D: $00
    adc d                                         ; $5F2E: $8A
    inc b                                         ; $5F2F: $04
    sub d                                         ; $5F30: $92
    inc c                                         ; $5F31: $0C
    and d                                         ; $5F32: $A2

jr_01B_5F33:
    inc e                                         ; $5F33: $1C
    call nz, $8438                                ; $5F34: $C4 $38 $84
    ld a, b                                       ; $5F37: $78
    dec bc                                        ; $5F38: $0B
    ldh a, [$FF0D]                                ; $5F39: $F0 $0D
    ldh a, [c]                                    ; $5F3B: $F2
    ld e, c                                       ; $5F3C: $59
    and $93                                       ; $5F3D: $E6 $93
    db $EC                                        ; $5F3F: $EC
    rst RST_38                                    ; $5F40: $FF
    ldh [$FFFC], a                                ; $5F41: $E0 $FC
    ret c                                         ; $5F43: $D8

    db $FC                                        ; $5F44: $FC
    ld hl, sp-$04                                 ; $5F45: $F8 $FC
    ld hl, sp-$08                                 ; $5F47: $F8 $F8
    ldh [$FFFC], a                                ; $5F49: $E0 $FC
    ret c                                         ; $5F4B: $D8

    db $FC                                        ; $5F4C: $FC
    sbc b                                         ; $5F4D: $98
    sbc $8C                                       ; $5F4E: $DE $8C
    adc [hl]                                      ; $5F50: $8E
    inc b                                         ; $5F51: $04
    adc a                                         ; $5F52: $8F
    ld b, $8F                                     ; $5F53: $06 $8F
    ld b, $86                                     ; $5F55: $06 $86
    nop                                           ; $5F57: $00
    ret nz                                        ; $5F58: $C0

    add b                                         ; $5F59: $80
    ret nz                                        ; $5F5A: $C0

    nop                                           ; $5F5B: $00
    nop                                           ; $5F5C: $00
    nop                                           ; $5F5D: $00
    nop                                           ; $5F5E: $00
    nop                                           ; $5F5F: $00
    rst RST_38                                    ; $5F60: $FF
    db $E3                                        ; $5F61: $E3
    rst RST_38                                    ; $5F62: $FF
    ld hl, sp-$02                                 ; $5F63: $F8 $FE
    db $FC                                        ; $5F65: $FC
    db $FD                                        ; $5F66: $FD
    ld a, [$7BFC]                                 ; $5F67: $FA $FC $7B
    ei                                            ; $5F6A: $FB
    inc [hl]                                      ; $5F6B: $34
    ld hl, sp-$39                                 ; $5F6C: $F8 $C7
    rst RST_38                                    ; $5F6E: $FF
    ldh [$FFE7], a                                ; $5F6F: $E0 $E7
    ld e, b                                       ; $5F71: $58
    ld a, h                                       ; $5F72: $7C
    jr nz, jr_01B_5F99                            ; $5F73: $20 $24

    jr jr_01B_5F8F                                ; $5F75: $18 $18

    nop                                           ; $5F77: $00
    nop                                           ; $5F78: $00
    nop                                           ; $5F79: $00
    nop                                           ; $5F7A: $00
    nop                                           ; $5F7B: $00
    nop                                           ; $5F7C: $00
    nop                                           ; $5F7D: $00
    nop                                           ; $5F7E: $00
    nop                                           ; $5F7F: $00
    cp $F0                                        ; $5F80: $FE $F0
    pop af                                        ; $5F82: $F1
    xor $FF                                       ; $5F83: $EE $FF
    ldh [$FFF9], a                                ; $5F85: $E0 $F9
    add $F6                                       ; $5F87: $C6 $F6
    and b                                         ; $5F89: $A0
    ld hl, sp-$50                                 ; $5F8A: $F8 $B0
    ld hl, sp+$70                                 ; $5F8C: $F8 $70
    db $F4                                        ; $5F8E: $F4

jr_01B_5F8F:
    ret z                                         ; $5F8F: $C8

    call z, $8080                                 ; $5F90: $CC $80 $80
    nop                                           ; $5F93: $00
    nop                                           ; $5F94: $00
    nop                                           ; $5F95: $00
    nop                                           ; $5F96: $00
    nop                                           ; $5F97: $00
    add b                                         ; $5F98: $80

jr_01B_5F99:
    nop                                           ; $5F99: $00
    add b                                         ; $5F9A: $80
    nop                                           ; $5F9B: $00
    add b                                         ; $5F9C: $80
    nop                                           ; $5F9D: $00
    add b                                         ; $5F9E: $80
    nop                                           ; $5F9F: $00
    nop                                           ; $5FA0: $00
    nop                                           ; $5FA1: $00
    nop                                           ; $5FA2: $00
    nop                                           ; $5FA3: $00
    nop                                           ; $5FA4: $00
    nop                                           ; $5FA5: $00
    ld bc, $0600                                  ; $5FA6: $01 $00 $06
    ld bc, $071B                                  ; $5FA9: $01 $1B $07
    ld h, a                                       ; $5FAC: $67
    rra                                           ; $5FAD: $1F
    rst RST_38                                    ; $5FAE: $FF
    ld a, h                                       ; $5FAF: $7C
    ld a, a                                       ; $5FB0: $7F
    pop hl                                        ; $5FB1: $E1
    rst RST_38                                    ; $5FB2: $FF
    sbc [hl]                                      ; $5FB3: $9E
    xor a                                         ; $5FB4: $AF
    ld a, [hl]                                    ; $5FB5: $7E
    ld a, a                                       ; $5FB6: $7F
    rst RST_38                                    ; $5FB7: $FF
    cp a                                          ; $5FB8: $BF
    rst RST_38                                    ; $5FB9: $FF
    rst RST_38                                    ; $5FBA: $FF
    rst RST_38                                    ; $5FBB: $FF
    rst RST_38                                    ; $5FBC: $FF
    rst RST_38                                    ; $5FBD: $FF
    rst RST_38                                    ; $5FBE: $FF
    inc e                                         ; $5FBF: $1C
    nop                                           ; $5FC0: $00
    nop                                           ; $5FC1: $00
    nop                                           ; $5FC2: $00
    nop                                           ; $5FC3: $00
    nop                                           ; $5FC4: $00
    nop                                           ; $5FC5: $00
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
    ld b, $00                                     ; $5FD0: $06 $00
    ld e, $04                                     ; $5FD2: $1E $04
    ld a, h                                       ; $5FD4: $7C
    jr @-$02                                      ; $5FD5: $18 $FC

    ld a, b                                       ; $5FD7: $78
    ld a, b                                       ; $5FD8: $78
    ldh a, [$FFFE]                                ; $5FD9: $F0 $FE
    ret nz                                        ; $5FDB: $C0

    ei                                            ; $5FDC: $FB
    inc [hl]                                      ; $5FDD: $34
    ld sp, hl                                     ; $5FDE: $F9
    or $7F                                        ; $5FDF: $F6 $7F
    rst RST_18                                    ; $5FE1: $DF
    ld a, a                                       ; $5FE2: $7F
    db $DD                                        ; $5FE3: $DD
    rst RST_38                                    ; $5FE4: $FF
    adc [hl]                                      ; $5FE5: $8E
    rst RST_38                                    ; $5FE6: $FF

jr_01B_5FE7:
    add [hl]                                      ; $5FE7: $86
    cp a                                          ; $5FE8: $BF
    dec de                                        ; $5FE9: $1B
    scf                                           ; $5FEA: $37
    dec bc                                        ; $5FEB: $0B
    rra                                           ; $5FEC: $1F
    rlca                                          ; $5FED: $07
    rra                                           ; $5FEE: $1F
    rrca                                          ; $5FEF: $0F
    rra                                           ; $5FF0: $1F
    rrca                                          ; $5FF1: $0F
    ccf                                           ; $5FF2: $3F
    dec bc                                        ; $5FF3: $0B
    ld e, a                                       ; $5FF4: $5F
    add hl, hl                                    ; $5FF5: $29
    adc a                                         ; $5FF6: $8F
    ld [hl], a                                    ; $5FF7: $77
    rrca                                          ; $5FF8: $0F
    di                                            ; $5FF9: $F3
    di                                            ; $5FFA: $F3
    nop                                           ; $5FFB: $00
    nop                                           ; $5FFC: $00
    nop                                           ; $5FFD: $00
    nop                                           ; $5FFE: $00
    nop                                           ; $5FFF: $00
    inc bc                                        ; $6000: $03
    nop                                           ; $6001: $00
    rra                                           ; $6002: $1F
    inc bc                                        ; $6003: $03
    ld h, a                                       ; $6004: $67
    rra                                           ; $6005: $1F
    sbc a                                         ; $6006: $9F
    ld a, [hl]                                    ; $6007: $7E
    ld a, a                                       ; $6008: $7F
    cp $BF                                        ; $6009: $FE $BF
    rst RST_38                                    ; $600B: $FF
    ld a, a                                       ; $600C: $7F
    rst RST_38                                    ; $600D: $FF
    rst RST_38                                    ; $600E: $FF
    ldh [$FFEB], a                                ; $600F: $E0 $EB
    rst RST_18                                    ; $6011: $DF
    rst RST_18                                    ; $6012: $DF
    cp a                                          ; $6013: $BF
    rst RST_28                                    ; $6014: $EF
    cp a                                          ; $6015: $BF
    rst RST_18                                    ; $6016: $DF
    rst RST_38                                    ; $6017: $FF
    rst RST_38                                    ; $6018: $FF
    ld a, a                                       ; $6019: $7F
    rst RST_38                                    ; $601A: $FF
    sbc a                                         ; $601B: $9F
    rst RST_38                                    ; $601C: $FF
    call c, $EDFF                                 ; $601D: $DC $FF $ED
    ld [bc], a                                    ; $6020: $02
    ld bc, $0304                                  ; $6021: $01 $04 $03
    inc b                                         ; $6024: $04
    inc bc                                        ; $6025: $03
    ld [$0907], sp                                ; $6026: $08 $07 $09
    rlca                                          ; $6029: $07
    inc de                                        ; $602A: $13
    ld c, $13                                     ; $602B: $0E $13
    ld c, $26                                     ; $602D: $0E $26
    inc e                                         ; $602F: $1C
    inc l                                         ; $6030: $2C
    jr jr_01B_607F                                ; $6031: $18 $4C

jr_01B_6033:
    jr c, jr_01B_608D                             ; $6033: $38 $58

    jr nc, jr_01B_5FE7                            ; $6035: $30 $B0

    ld h, b                                       ; $6037: $60
    and c                                         ; $6038: $A1
    ld b, b                                       ; $6039: $40
    pop bc                                        ; $603A: $C1
    nop                                           ; $603B: $00
    nop                                           ; $603C: $00
    nop                                           ; $603D: $00
    nop                                           ; $603E: $00
    nop                                           ; $603F: $00
    nop                                           ; $6040: $00
    nop                                           ; $6041: $00
    nop                                           ; $6042: $00
    nop                                           ; $6043: $00
    nop                                           ; $6044: $00
    nop                                           ; $6045: $00
    nop                                           ; $6046: $00
    nop                                           ; $6047: $00
    ld bc, $0200                                  ; $6048: $01 $00 $02
    ld bc, $0305                                  ; $604B: $01 $05 $03
    dec b                                         ; $604E: $05
    inc bc                                        ; $604F: $03
    rst RST_08                                    ; $6050: $CF
    rlca                                          ; $6051: $07
    xor a                                         ; $6052: $AF
    ld b, e                                       ; $6053: $43
    ei                                            ; $6054: $FB
    add l                                         ; $6055: $85
    sbc a                                         ; $6056: $9F
    ld [hl], c                                    ; $6057: $71
    ld b, c                                       ; $6058: $41
    cp [hl]                                       ; $6059: $BE
    and l                                         ; $605A: $A5
    rst RST_18                                    ; $605B: $DF
    call nc, Call_01B_5E6F                        ; $605C: $D4 $6F $5E
    xor a                                         ; $605F: $AF
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
    inc c                                         ; $606E: $0C
    nop                                           ; $606F: $00
    ld a, [bc]                                    ; $6070: $0A
    inc b                                         ; $6071: $04
    ccf                                           ; $6072: $3F
    nop                                           ; $6073: $00
    dec h                                         ; $6074: $25
    ld e, $18                                     ; $6075: $1E $18
    rlca                                          ; $6077: $07
    rlca                                          ; $6078: $07
    ld bc, $0001                                  ; $6079: $01 $01 $00
    ld bc, $0200                                  ; $607C: $01 $00 $02

jr_01B_607F:
    ld bc, $0000                                  ; $607F: $01 $00 $00
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
    ld b, b                                       ; $608C: $40

jr_01B_608D:
    add b                                         ; $608D: $80
    ld [hl], b                                    ; $608E: $70
    add b                                         ; $608F: $80
    ret nc                                        ; $6090: $D0

    jr nz, jr_01B_6033                            ; $6091: $20 $A0

    ld b, b                                       ; $6093: $40
    ld h, b                                       ; $6094: $60
    add b                                         ; $6095: $80
    ld [hl], a                                    ; $6096: $77
    add b                                         ; $6097: $80
    sbc $A7                                       ; $6098: $DE $A7
    rst RST_38                                    ; $609A: $FF
    rst RST_08                                    ; $609B: $CF
    rst RST_38                                    ; $609C: $FF
    rst RST_18                                    ; $609D: $DF
    ld a, a                                       ; $609E: $7F
    sbc a                                         ; $609F: $9F
    cp a                                          ; $60A0: $BF
    ld e, a                                       ; $60A1: $5F
    rst RST_38                                    ; $60A2: $FF
    sbc h                                         ; $60A3: $9C
    ld a, [$FDBF]                                 ; $60A4: $FA $BF $FD
    cp a                                          ; $60A7: $BF
    rst RST_38                                    ; $60A8: $FF
    ld a, a                                       ; $60A9: $7F
    rst RST_38                                    ; $60AA: $FF
    rst RST_38                                    ; $60AB: $FF
    rst RST_38                                    ; $60AC: $FF
    ld e, a                                       ; $60AD: $5F
    rst RST_38                                    ; $60AE: $FF
    ld l, a                                       ; $60AF: $6F
    ld a, a                                       ; $60B0: $7F
    rrca                                          ; $60B1: $0F
    ccf                                           ; $60B2: $3F
    rla                                           ; $60B3: $17
    rra                                           ; $60B4: $1F
    add hl, bc                                    ; $60B5: $09
    rra                                           ; $60B6: $1F
    ld c, $1F                                     ; $60B7: $0E $1F
    ld c, $2F                                     ; $60B9: $0E $2F
    db $10                                        ; $60BB: $10
    ld a, [hl-]                                   ; $60BC: $3A
    dec b                                         ; $60BD: $05
    rrca                                          ; $60BE: $0F
    nop                                           ; $60BF: $00
    ld bc, $0100                                  ; $60C0: $01 $00 $01
    nop                                           ; $60C3: $00
    ld bc, $0200                                  ; $60C4: $01 $00 $02
    ld bc, $0102                                  ; $60C7: $01 $02 $01
    dec b                                         ; $60CA: $05
    ld [bc], a                                    ; $60CB: $02
    ld c, $05                                     ; $60CC: $0E $05
    db $FC                                        ; $60CE: $FC
    inc bc                                        ; $60CF: $03
    dec de                                        ; $60D0: $1B
    rst RST_20                                    ; $60D1: $E7
    rra                                           ; $60D2: $1F
    rst RST_28                                    ; $60D3: $EF
    db $FC                                        ; $60D4: $FC
    rst RST_28                                    ; $60D5: $EF
    ld sp, hl                                     ; $60D6: $F9
    rrca                                          ; $60D7: $0F
    rst RST_38                                    ; $60D8: $FF
    sub a                                         ; $60D9: $97
    rst RST_38                                    ; $60DA: $FF
    cp a                                          ; $60DB: $BF
    rst RST_38                                    ; $60DC: $FF

jr_01B_60DD:
    ld [hl], a                                    ; $60DD: $77
    rst RST_38                                    ; $60DE: $FF
    rst RST_08                                    ; $60DF: $CF
    rst RST_38                                    ; $60E0: $FF
    cp $FF                                        ; $60E1: $FE $FF

jr_01B_60E3:
    rst RST_08                                    ; $60E3: $CF
    rst RST_38                                    ; $60E4: $FF
    rla                                           ; $60E5: $17
    ccf                                           ; $60E6: $3F
    jr jr_01B_6125                                ; $60E7: $18 $3C

    jr jr_01B_60E3                                ; $60E9: $18 $F8

    jr nc, jr_01B_60DD                            ; $60EB: $30 $F0

    ld h, b                                       ; $60ED: $60
    ld [hl], b                                    ; $60EE: $70
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
    inc bc                                        ; $6100: $03
    nop                                           ; $6101: $00
    inc a                                         ; $6102: $3C
    inc bc                                        ; $6103: $03
    ret nz                                        ; $6104: $C0

    ccf                                           ; $6105: $3F
    ccf                                           ; $6106: $3F
    rst RST_38                                    ; $6107: $FF
    rst RST_38                                    ; $6108: $FF
    nop                                           ; $6109: $00
    inc bc                                        ; $610A: $03
    nop                                           ; $610B: $00
    ld b, $01                                     ; $610C: $06 $01
    rst RST_38                                    ; $610E: $FF
    ld b, $1F                                     ; $610F: $06 $1F
    rst RST_28                                    ; $6111: $EF
    sbc a                                         ; $6112: $9F
    ld l, c                                       ; $6113: $69
    ld e, a                                       ; $6114: $5F
    dec hl                                        ; $6115: $2B
    ccf                                           ; $6116: $3F
    ld c, $0E                                     ; $6117: $0E $0E
    inc b                                         ; $6119: $04
    ld b, $00                                     ; $611A: $06 $00
    nop                                           ; $611C: $00
    nop                                           ; $611D: $00
    nop                                           ; $611E: $00
    nop                                           ; $611F: $00
    nop                                           ; $6120: $00
    nop                                           ; $6121: $00
    nop                                           ; $6122: $00
    nop                                           ; $6123: $00
    nop                                           ; $6124: $00

jr_01B_6125:
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
    ld bc, $0200                                  ; $6132: $01 $00 $02
    ld bc, $0205                                  ; $6135: $01 $05 $02
    ld b, $00                                     ; $6138: $06 $00
    nop                                           ; $613A: $00
    nop                                           ; $613B: $00
    ld bc, $0100                                  ; $613C: $01 $00 $01
    nop                                           ; $613F: $00
    ldh [rP1], a                                  ; $6140: $E0 $00

jr_01B_6142:
    sbc h                                         ; $6142: $9C
    ldh [$FFD3], a                                ; $6143: $E0 $D3
    db $FC                                        ; $6145: $FC
    xor d                                         ; $6146: $AA
    rst RST_38                                    ; $6147: $FF
    db $FD                                        ; $6148: $FD
    rst RST_38                                    ; $6149: $FF
    rst RST_38                                    ; $614A: $FF
    rst RST_38                                    ; $614B: $FF
    cp $FF                                        ; $614C: $FE $FF
    rst RST_38                                    ; $614E: $FF
    ld a, a                                       ; $614F: $7F
    ld a, a                                       ; $6150: $7F
    cp a                                          ; $6151: $BF
    rst RST_38                                    ; $6152: $FF
    cp a                                          ; $6153: $BF
    ld a, a                                       ; $6154: $7F
    rst RST_18                                    ; $6155: $DF
    rst RST_38                                    ; $6156: $FF
    rst RST_18                                    ; $6157: $DF
    rst RST_38                                    ; $6158: $FF
    set 7, a                                      ; $6159: $CB $FF
    xor e                                         ; $615B: $AB
    rst RST_38                                    ; $615C: $FF
    push af                                       ; $615D: $F5
    rst RST_38                                    ; $615E: $FF
    ldh a, [rIE]                                  ; $615F: $F0 $FF
    ld sp, hl                                     ; $6161: $F9
    db $FD                                        ; $6162: $FD
    ld a, b                                       ; $6163: $78
    ld a, [hl]                                    ; $6164: $7E
    adc c                                         ; $6165: $89
    ld c, a                                       ; $6166: $4F
    or b                                          ; $6167: $B0
    ld hl, sp+$00                                 ; $6168: $F8 $00
    nop                                           ; $616A: $00
    nop                                           ; $616B: $00
    nop                                           ; $616C: $00
    nop                                           ; $616D: $00
    nop                                           ; $616E: $00
    nop                                           ; $616F: $00
    nop                                           ; $6170: $00
    nop                                           ; $6171: $00
    nop                                           ; $6172: $00
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
    nop                                           ; $617E: $00
    nop                                           ; $617F: $00
    add b                                         ; $6180: $80
    nop                                           ; $6181: $00
    ld h, b                                       ; $6182: $60
    add b                                         ; $6183: $80
    ret c                                         ; $6184: $D8

    ldh [$FFF6], a                                ; $6185: $E0 $F6
    jr c, jr_01B_6142                             ; $6187: $38 $B9

    sbc $5F                                       ; $6189: $DE $5F
    rst RST_28                                    ; $618B: $EF
    rst RST_38                                    ; $618C: $FF
    rst RST_28                                    ; $618D: $EF
    rst RST_18                                    ; $618E: $DF
    rst RST_30                                    ; $618F: $F7
    rst RST_38                                    ; $6190: $FF
    rst RST_30                                    ; $6191: $F7
    rst RST_38                                    ; $6192: $FF
    rst RST_30                                    ; $6193: $F7
    rst RST_38                                    ; $6194: $FF
    di                                            ; $6195: $F3
    rst RST_38                                    ; $6196: $FF
    call $FCFF                                    ; $6197: $CD $FF $FC
    rst RST_38                                    ; $619A: $FF
    ld a, [hl]                                    ; $619B: $7E
    rst RST_38                                    ; $619C: $FF
    cp a                                          ; $619D: $BF
    rst RST_38                                    ; $619E: $FF
    rst RST_00                                    ; $619F: $C7
    rst RST_30                                    ; $61A0: $F7
    ld [$5BA4], sp                                ; $61A1: $08 $A4 $5B
    ld a, a                                       ; $61A4: $7F
    nop                                           ; $61A5: $00
    nop                                           ; $61A6: $00
    nop                                           ; $61A7: $00
    nop                                           ; $61A8: $00
    nop                                           ; $61A9: $00
    nop                                           ; $61AA: $00
    nop                                           ; $61AB: $00
    nop                                           ; $61AC: $00
    nop                                           ; $61AD: $00
    nop                                           ; $61AE: $00
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
    nop                                           ; $61B9: $00
    nop                                           ; $61BA: $00
    nop                                           ; $61BB: $00
    nop                                           ; $61BC: $00
    nop                                           ; $61BD: $00
    nop                                           ; $61BE: $00
    nop                                           ; $61BF: $00
    add b                                         ; $61C0: $80
    nop                                           ; $61C1: $00
    ld h, b                                       ; $61C2: $60
    add b                                         ; $61C3: $80
    ld hl, sp-$20                                 ; $61C4: $F8 $E0
    cp $F8                                        ; $61C6: $FE $F8
    rst RST_38                                    ; $61C8: $FF
    cp $FF                                        ; $61C9: $FE $FF
    rst RST_38                                    ; $61CB: $FF
    rst RST_38                                    ; $61CC: $FF
    ld hl, sp-$08                                 ; $61CD: $F8 $F8
    add b                                         ; $61CF: $80
    add b                                         ; $61D0: $80
    nop                                           ; $61D1: $00
    nop                                           ; $61D2: $00
    nop                                           ; $61D3: $00
    add b                                         ; $61D4: $80
    nop                                           ; $61D5: $00
    add b                                         ; $61D6: $80
    nop                                           ; $61D7: $00
    add b                                         ; $61D8: $80
    nop                                           ; $61D9: $00
    add b                                         ; $61DA: $80
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
    add b                                         ; $61FA: $80
    nop                                           ; $61FB: $00
    ret nz                                        ; $61FC: $C0

    add b                                         ; $61FD: $80
    ret nz                                        ; $61FE: $C0

    nop                                           ; $61FF: $00
    nop                                           ; $6200: $00
    nop                                           ; $6201: $00
    nop                                           ; $6202: $00
    nop                                           ; $6203: $00
    nop                                           ; $6204: $00
    nop                                           ; $6205: $00
    nop                                           ; $6206: $00
    nop                                           ; $6207: $00
    nop                                           ; $6208: $00
    nop                                           ; $6209: $00
    nop                                           ; $620A: $00
    nop                                           ; $620B: $00
    nop                                           ; $620C: $00
    nop                                           ; $620D: $00
    nop                                           ; $620E: $00
    nop                                           ; $620F: $00
    nop                                           ; $6210: $00
    nop                                           ; $6211: $00
    ld bc, $0200                                  ; $6212: $01 $00 $02
    ld bc, $0205                                  ; $6215: $01 $05 $02
    ld b, $00                                     ; $6218: $06 $00
    nop                                           ; $621A: $00
    nop                                           ; $621B: $00
    ld bc, $0100                                  ; $621C: $01 $00 $01
    nop                                           ; $621F: $00
    nop                                           ; $6220: $00
    nop                                           ; $6221: $00
    rlca                                          ; $6222: $07
    nop                                           ; $6223: $00
    ld a, b                                       ; $6224: $78
    rlca                                          ; $6225: $07
    add b                                         ; $6226: $80
    ld a, a                                       ; $6227: $7F
    ld a, a                                       ; $6228: $7F
    rst RST_38                                    ; $6229: $FF
    rst RST_38                                    ; $622A: $FF
    nop                                           ; $622B: $00
    inc bc                                        ; $622C: $03
    nop                                           ; $622D: $00
    ld b, $01                                     ; $622E: $06 $01
    rst RST_38                                    ; $6230: $FF
    ld b, $1F                                     ; $6231: $06 $1F
    rst RST_28                                    ; $6233: $EF
    sbc a                                         ; $6234: $9F
    ld l, c                                       ; $6235: $69
    ld e, a                                       ; $6236: $5F
    dec hl                                        ; $6237: $2B
    ccf                                           ; $6238: $3F

jr_01B_6239:
    ld c, $0F                                     ; $6239: $0E $0F
    dec b                                         ; $623B: $05
    rlca                                          ; $623C: $07
    ld bc, $0001                                  ; $623D: $01 $01 $00
    nop                                           ; $6240: $00
    nop                                           ; $6241: $00
    nop                                           ; $6242: $00
    nop                                           ; $6243: $00
    ld bc, $0100                                  ; $6244: $01 $00 $01
    nop                                           ; $6247: $00
    ld bc, $0200                                  ; $6248: $01 $00 $02
    ld bc, $0102                                  ; $624B: $01 $02 $01
    dec b                                         ; $624E: $05
    ld [bc], a                                    ; $624F: $02
    ld c, $05                                     ; $6250: $0E $05
    db $FC                                        ; $6252: $FC
    inc bc                                        ; $6253: $03
    dec de                                        ; $6254: $1B
    rst RST_20                                    ; $6255: $E7
    rra                                           ; $6256: $1F
    rst RST_28                                    ; $6257: $EF
    db $FC                                        ; $6258: $FC
    rst RST_28                                    ; $6259: $EF
    ld sp, hl                                     ; $625A: $F9
    rrca                                          ; $625B: $0F
    rst RST_38                                    ; $625C: $FF
    sub a                                         ; $625D: $97
    rst RST_38                                    ; $625E: $FF
    cp a                                          ; $625F: $BF
    rst RST_38                                    ; $6260: $FF
    ld [hl], a                                    ; $6261: $77
    rst RST_38                                    ; $6262: $FF
    rst RST_08                                    ; $6263: $CF
    rst RST_38                                    ; $6264: $FF
    cp $FF                                        ; $6265: $FE $FF
    rst RST_08                                    ; $6267: $CF
    rst RST_38                                    ; $6268: $FF
    scf                                           ; $6269: $37
    rst RST_38                                    ; $626A: $FF
    ld hl, sp-$07                                 ; $626B: $F8 $F9
    add b                                         ; $626D: $80
    add c                                         ; $626E: $81
    nop                                           ; $626F: $00
    nop                                           ; $6270: $00
    nop                                           ; $6271: $00
    nop                                           ; $6272: $00
    nop                                           ; $6273: $00
    nop                                           ; $6274: $00
    nop                                           ; $6275: $00
    nop                                           ; $6276: $00
    nop                                           ; $6277: $00
    nop                                           ; $6278: $00
    nop                                           ; $6279: $00
    nop                                           ; $627A: $00
    nop                                           ; $627B: $00
    nop                                           ; $627C: $00
    nop                                           ; $627D: $00
    nop                                           ; $627E: $00
    nop                                           ; $627F: $00
    nop                                           ; $6280: $00
    nop                                           ; $6281: $00
    nop                                           ; $6282: $00
    nop                                           ; $6283: $00
    add b                                         ; $6284: $80
    nop                                           ; $6285: $00
    ld b, b                                       ; $6286: $40
    add b                                         ; $6287: $80
    ld [hl], b                                    ; $6288: $70
    add b                                         ; $6289: $80
    db $D3                                        ; $628A: $D3
    jr nz, jr_01B_6239                            ; $628B: $20 $AC

    ld b, e                                       ; $628D: $43
    ld [hl], e                                    ; $628E: $73
    adc a                                         ; $628F: $8F
    ld a, a                                       ; $6290: $7F
    adc a                                         ; $6291: $8F
    rst RST_18                                    ; $6292: $DF
    xor a                                         ; $6293: $AF
    rst RST_38                                    ; $6294: $FF
    rst RST_18                                    ; $6295: $DF
    rst RST_38                                    ; $6296: $FF
    rst RST_18                                    ; $6297: $DF
    ld a, a                                       ; $6298: $7F
    sub c                                         ; $6299: $91
    or c                                          ; $629A: $B1
    ld e, [hl]                                    ; $629B: $5E
    ld a, [$FFBF]                                 ; $629C: $FA $BF $FF
    cp a                                          ; $629F: $BF
    rst RST_38                                    ; $62A0: $FF
    cp a                                          ; $62A1: $BF
    rst RST_38                                    ; $62A2: $FF
    ccf                                           ; $62A3: $3F
    rst RST_38                                    ; $62A4: $FF
    ld [hl], a                                    ; $62A5: $77
    rst RST_38                                    ; $62A6: $FF
    rrca                                          ; $62A7: $0F
    cp a                                          ; $62A8: $BF
    rrca                                          ; $62A9: $0F
    rst RST_28                                    ; $62AA: $EF
    ld de, $B649                                  ; $62AB: $11 $49 $B6
    rst RST_38                                    ; $62AE: $FF
    nop                                           ; $62AF: $00
    nop                                           ; $62B0: $00
    nop                                           ; $62B1: $00
    nop                                           ; $62B2: $00
    nop                                           ; $62B3: $00
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
    nop                                           ; $62C0: $00
    nop                                           ; $62C1: $00
    nop                                           ; $62C2: $00
    nop                                           ; $62C3: $00
    nop                                           ; $62C4: $00
    nop                                           ; $62C5: $00
    nop                                           ; $62C6: $00
    nop                                           ; $62C7: $00
    db $FC                                        ; $62C8: $FC
    nop                                           ; $62C9: $00
    rrca                                          ; $62CA: $0F
    db $FC                                        ; $62CB: $FC
    rst RST_10                                    ; $62CC: $D7
    rst RST_38                                    ; $62CD: $FF
    ld l, a                                       ; $62CE: $6F
    rst RST_38                                    ; $62CF: $FF
    rst RST_38                                    ; $62D0: $FF
    db $FC                                        ; $62D1: $FC
    db $F4                                        ; $62D2: $F4
    rst RST_38                                    ; $62D3: $FF
    ld a, [$FFFF]                                 ; $62D4: $FA $FF $FF
    rst RST_38                                    ; $62D7: $FF
    rst RST_38                                    ; $62D8: $FF
    rst RST_38                                    ; $62D9: $FF
    rst RST_38                                    ; $62DA: $FF
    rst RST_18                                    ; $62DB: $DF
    rst RST_38                                    ; $62DC: $FF
    ld e, a                                       ; $62DD: $5F
    rst RST_38                                    ; $62DE: $FF
    sbc a                                         ; $62DF: $9F
    rst RST_38                                    ; $62E0: $FF
    xor a                                         ; $62E1: $AF
    rst RST_38                                    ; $62E2: $FF
    xor a                                         ; $62E3: $AF
    rst RST_38                                    ; $62E4: $FF
    or c                                          ; $62E5: $B1
    rst RST_38                                    ; $62E6: $FF
    add a                                         ; $62E7: $87
    sbc a                                         ; $62E8: $9F
    rlca                                          ; $62E9: $07
    rst RST_30                                    ; $62EA: $F7
    ld [$5BA4], sp                                ; $62EB: $08 $A4 $5B
    rst RST_38                                    ; $62EE: $FF
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
    inc bc                                        ; $6308: $03
    nop                                           ; $6309: $00
    rlca                                          ; $630A: $07
    ld [bc], a                                    ; $630B: $02
    rlca                                          ; $630C: $07
    ld [bc], a                                    ; $630D: $02
    rrca                                          ; $630E: $0F
    ld b, $0F                                     ; $630F: $06 $0F
    ld b, $1F                                     ; $6311: $06 $1F
    ld c, $1F                                     ; $6313: $0E $1F
    ld c, $3F                                     ; $6315: $0E $3F
    ld e, $7F                                     ; $6317: $1E $7F
    ld a, $FF                                     ; $6319: $3E $FF
    ld a, [hl]                                    ; $631B: $7E
    rst RST_38                                    ; $631C: $FF
    cp $FE                                        ; $631D: $FE $FE
    db $FC                                        ; $631F: $FC
    cp $FC                                        ; $6320: $FE $FC
    cp $7C                                        ; $6322: $FE $7C
    cp $7C                                        ; $6324: $FE $7C
    ld a, h                                       ; $6326: $7C
    cp b                                          ; $6327: $B8
    db $FC                                        ; $6328: $FC
    cp b                                          ; $6329: $B8
    ld hl, sp-$50                                 ; $632A: $F8 $B0
    ld hl, sp-$50                                 ; $632C: $F8 $B0
    ldh a, [$FFA0]                                ; $632E: $F0 $A0
    ldh [rLCDC], a                                ; $6330: $E0 $40
    ldh [$FFC0], a                                ; $6332: $E0 $C0
    ldh [$FFC0], a                                ; $6334: $E0 $C0
    ret nz                                        ; $6336: $C0

    add b                                         ; $6337: $80
    ret nz                                        ; $6338: $C0

    add b                                         ; $6339: $80
    ret nz                                        ; $633A: $C0

    add b                                         ; $633B: $80
    add b                                         ; $633C: $80
    nop                                           ; $633D: $00
    add b                                         ; $633E: $80
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
    ld bc, $0100                                  ; $634A: $01 $00 $01
    nop                                           ; $634D: $00
    ld bc, $0900                                  ; $634E: $01 $00 $09
    nop                                           ; $6351: $00
    dec bc                                        ; $6352: $0B
    nop                                           ; $6353: $00
    inc c                                         ; $6354: $0C
    inc bc                                        ; $6355: $03
    dec bc                                        ; $6356: $0B
    inc b                                         ; $6357: $04
    inc c                                         ; $6358: $0C
    nop                                           ; $6359: $00
    nop                                           ; $635A: $00
    nop                                           ; $635B: $00
    inc bc                                        ; $635C: $03
    nop                                           ; $635D: $00
    ld [bc], a                                    ; $635E: $02
    ld bc, $0080                                  ; $635F: $01 $80 $00
    rst RST_08                                    ; $6362: $CF
    nop                                           ; $6363: $00
    or b                                          ; $6364: $B0
    ld c, a                                       ; $6365: $4F
    add b                                         ; $6366: $80
    ld a, a                                       ; $6367: $7F
    ld a, a                                       ; $6368: $7F
    rst RST_38                                    ; $6369: $FF
    rst RST_38                                    ; $636A: $FF
    nop                                           ; $636B: $00
    ld [hl+], a                                   ; $636C: $22
    ld bc, $0166                                  ; $636D: $01 $66 $01
    cp a                                          ; $6370: $BF
    ld b, [hl]                                    ; $6371: $46
    rla                                           ; $6372: $17
    rst RST_28                                    ; $6373: $EF
    sub a                                         ; $6374: $97
    ld l, c                                       ; $6375: $69
    ld d, a                                       ; $6376: $57
    dec hl                                        ; $6377: $2B
    ld sp, $0A0E                                  ; $6378: $31 $0E $0A
    dec b                                         ; $637B: $05
    ld b, $01                                     ; $637C: $06 $01
    ld bc, $0100                                  ; $637E: $01 $00 $01
    nop                                           ; $6381: $00
    ld de, $1100                                  ; $6382: $11 $00 $11
    nop                                           ; $6385: $00
    ld [de], a                                    ; $6386: $12
    ld bc, $0132                                  ; $6387: $01 $32 $01
    dec [hl]                                      ; $638A: $35
    ld [bc], a                                    ; $638B: $02
    ld e, [hl]                                    ; $638C: $5E
    dec h                                         ; $638D: $25
    sbc h                                         ; $638E: $9C
    ld h, e                                       ; $638F: $63
    dec de                                        ; $6390: $1B
    rst RST_20                                    ; $6391: $E7
    rra                                           ; $6392: $1F
    rst RST_28                                    ; $6393: $EF
    rst RST_38                                    ; $6394: $FF
    rst RST_28                                    ; $6395: $EF
    db $FD                                        ; $6396: $FD
    rrca                                          ; $6397: $0F
    ld a, l                                       ; $6398: $7D
    sub a                                         ; $6399: $97
    ld a, l                                       ; $639A: $7D
    cp a                                          ; $639B: $BF
    ld sp, hl                                     ; $639C: $F9
    ld [hl], a                                    ; $639D: $77
    cp b                                          ; $639E: $B8
    rst RST_08                                    ; $639F: $CF
    cp c                                          ; $63A0: $B9
    cp $30                                        ; $63A1: $FE $30
    rst RST_08                                    ; $63A3: $CF
    ret z                                         ; $63A4: $C8

    scf                                           ; $63A5: $37
    rlca                                          ; $63A6: $07
    ld hl, sp+$7A                                 ; $63A7: $F8 $7A
    add h                                         ; $63A9: $84
    db $FD                                        ; $63AA: $FD
    nop                                           ; $63AB: $00
    ld bc, $0000                                  ; $63AC: $01 $00 $00
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
    inc b                                         ; $63C0: $04
    nop                                           ; $63C1: $00
    add h                                         ; $63C2: $84
    nop                                           ; $63C3: $00
    ld b, [hl]                                    ; $63C4: $46
    add b                                         ; $63C5: $80
    halt                                          ; $63C6: $76
    add b                                         ; $63C7: $80
    rst RST_10                                    ; $63C8: $D7
    ld [hl+], a                                   ; $63C9: $22
    xor a                                         ; $63CA: $AF
    ld b, e                                       ; $63CB: $43
    ld a, a                                       ; $63CC: $7F
    adc a                                         ; $63CD: $8F
    ld a, a                                       ; $63CE: $7F
    adc a                                         ; $63CF: $8F
    rst RST_18                                    ; $63D0: $DF
    xor l                                         ; $63D1: $AD
    rst RST_38                                    ; $63D2: $FF
    db $DD                                        ; $63D3: $DD
    rst RST_38                                    ; $63D4: $FF
    reti                                          ; $63D5: $D9


    ei                                            ; $63D6: $FB
    sub l                                         ; $63D7: $95
    cp e                                          ; $63D8: $BB
    ld e, [hl]                                    ; $63D9: $5E
    db $DB                                        ; $63DA: $DB
    cp a                                          ; $63DB: $BF
    reti                                          ; $63DC: $D9


    cp a                                          ; $63DD: $BF
    pop de                                        ; $63DE: $D1
    cp a                                          ; $63DF: $BF
    ret nz                                        ; $63E0: $C0

    ccf                                           ; $63E1: $3F
    sub b                                         ; $63E2: $90
    ld l, a                                       ; $63E3: $6F
    ld hl, sp+$07                                 ; $63E4: $F8 $07
    sub b                                         ; $63E6: $90
    rrca                                          ; $63E7: $0F
    jr nc, jr_01B_63F9                            ; $63E8: $30 $0F

    xor $11                                       ; $63EA: $EE $11
    ld c, c                                       ; $63EC: $49
    or [hl]                                       ; $63ED: $B6
    rst RST_38                                    ; $63EE: $FF
    nop                                           ; $63EF: $00
    nop                                           ; $63F0: $00
    nop                                           ; $63F1: $00
    nop                                           ; $63F2: $00
    nop                                           ; $63F3: $00
    nop                                           ; $63F4: $00
    nop                                           ; $63F5: $00
    nop                                           ; $63F6: $00
    nop                                           ; $63F7: $00
    nop                                           ; $63F8: $00

jr_01B_63F9:
    nop                                           ; $63F9: $00
    nop                                           ; $63FA: $00
    nop                                           ; $63FB: $00
    nop                                           ; $63FC: $00
    nop                                           ; $63FD: $00
    nop                                           ; $63FE: $00
    nop                                           ; $63FF: $00
    stop                                          ; $6400: $10 $00
    stop                                          ; $6402: $10 $00
    stop                                          ; $6404: $10 $00
    stop                                          ; $6406: $10 $00
    jr jr_01B_640A                                ; $6408: $18 $00

jr_01B_640A:
    jr jr_01B_640C                                ; $640A: $18 $00

jr_01B_640C:
    inc e                                         ; $640C: $1C
    ld [$18FC], sp                                ; $640D: $08 $FC $18
    rst RST_38                                    ; $6410: $FF
    db $FC                                        ; $6411: $FC
    rst RST_30                                    ; $6412: $F7
    rst RST_38                                    ; $6413: $FF
    rst RST_30                                    ; $6414: $F7
    cp $F7                                        ; $6415: $FE $F7
    db $FC                                        ; $6417: $FC
    rst RST_30                                    ; $6418: $F7
    rst RST_38                                    ; $6419: $FF
    rst RST_30                                    ; $641A: $F7
    rst RST_38                                    ; $641B: $FF
    ldh [c], a                                    ; $641C: $E2
    rst RST_38                                    ; $641D: $FF
    ldh [c], a                                    ; $641E: $E2
    rst RST_38                                    ; $641F: $FF
    ldh [$FFDF], a                                ; $6420: $E0 $DF
    ldh [$FF5F], a                                ; $6422: $E0 $5F
    ldh [$FF5F], a                                ; $6424: $E0 $5F
    ld d, b                                       ; $6426: $50
    xor a                                         ; $6427: $AF
    ld d, b                                       ; $6428: $50
    xor a                                         ; $6429: $AF
    ld c, b                                       ; $642A: $48
    or a                                          ; $642B: $B7
    ld a, [hl]                                    ; $642C: $7E
    add c                                         ; $642D: $81
    ld c, b                                       ; $642E: $48
    add a                                         ; $642F: $87
    sbc b                                         ; $6430: $98
    rlca                                          ; $6431: $07
    rst RST_30                                    ; $6432: $F7
    ld [$5BA4], sp                                ; $6433: $08 $A4 $5B

jr_01B_6436:
    rst RST_38                                    ; $6436: $FF
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
    inc de                                        ; $6446: $13
    nop                                           ; $6447: $00
    rla                                           ; $6448: $17
    ld [bc], a                                    ; $6449: $02
    rla                                           ; $644A: $17
    ld [bc], a                                    ; $644B: $02
    rra                                           ; $644C: $1F
    ld b, $1F                                     ; $644D: $06 $1F
    ld b, $3F                                     ; $644F: $06 $3F
    ld c, $3F                                     ; $6451: $0E $3F
    ld c, $3B                                     ; $6453: $0E $3B
    ld e, $7B                                     ; $6455: $1E $7B
    ld a, $FB                                     ; $6457: $3E $FB
    ld a, [hl]                                    ; $6459: $7E
    db $EB                                        ; $645A: $EB
    cp $EA                                        ; $645B: $FE $EA
    cp h                                          ; $645D: $BC
    ld [$E2BC], a                                 ; $645E: $EA $BC $E2
    inc a                                         ; $6461: $3C
    ldh [c], a                                    ; $6462: $E2
    inc a                                         ; $6463: $3C
    call nz, $C4B8                                ; $6464: $C4 $B8 $C4
    cp b                                          ; $6467: $B8
    ret z                                         ; $6468: $C8

    or b                                          ; $6469: $B0
    ld c, b                                       ; $646A: $48
    or b                                          ; $646B: $B0
    ld d, b                                       ; $646C: $50
    and b                                         ; $646D: $A0
    ld h, b                                       ; $646E: $60
    add b                                         ; $646F: $80
    and b                                         ; $6470: $A0
    ld b, b                                       ; $6471: $40
    jr nz, @-$3E                                  ; $6472: $20 $C0

    jr nz, jr_01B_6436                            ; $6474: $20 $C0

    ld b, b                                       ; $6476: $40
    add b                                         ; $6477: $80
    ld b, b                                       ; $6478: $40
    add b                                         ; $6479: $80
    ld b, b                                       ; $647A: $40
    add b                                         ; $647B: $80
    add b                                         ; $647C: $80
    nop                                           ; $647D: $00
    add b                                         ; $647E: $80
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
    ld bc, $0200                                  ; $6492: $01 $00 $02
    ld bc, $0205                                  ; $6495: $01 $05 $02
    ld b, $00                                     ; $6498: $06 $00
    nop                                           ; $649A: $00
    nop                                           ; $649B: $00
    ld bc, $0100                                  ; $649C: $01 $00 $01
    nop                                           ; $649F: $00
    rlca                                          ; $64A0: $07
    nop                                           ; $64A1: $00
    ld a, b                                       ; $64A2: $78
    rlca                                          ; $64A3: $07
    add b                                         ; $64A4: $80
    ld a, a                                       ; $64A5: $7F
    ld a, a                                       ; $64A6: $7F
    rst RST_38                                    ; $64A7: $FF
    rst RST_38                                    ; $64A8: $FF
    nop                                           ; $64A9: $00
    inc bc                                        ; $64AA: $03
    nop                                           ; $64AB: $00
    ld b, $01                                     ; $64AC: $06 $01
    rst RST_38                                    ; $64AE: $FF
    ld b, $1F                                     ; $64AF: $06 $1F
    rst RST_28                                    ; $64B1: $EF
    sbc a                                         ; $64B2: $9F
    ld l, c                                       ; $64B3: $69
    ld e, a                                       ; $64B4: $5F
    dec hl                                        ; $64B5: $2B
    ccf                                           ; $64B6: $3F

jr_01B_64B7:
    ld c, $0F                                     ; $64B7: $0E $0F
    dec b                                         ; $64B9: $05
    rlca                                          ; $64BA: $07
    ld bc, $0001                                  ; $64BB: $01 $01 $00
    nop                                           ; $64BE: $00
    nop                                           ; $64BF: $00
    nop                                           ; $64C0: $00
    nop                                           ; $64C1: $00
    ld bc, $0100                                  ; $64C2: $01 $00 $01
    nop                                           ; $64C5: $00
    ld bc, $0200                                  ; $64C6: $01 $00 $02
    ld bc, $0102                                  ; $64C9: $01 $02 $01
    dec b                                         ; $64CC: $05
    ld [bc], a                                    ; $64CD: $02
    ld c, $05                                     ; $64CE: $0E $05
    db $FC                                        ; $64D0: $FC
    inc bc                                        ; $64D1: $03
    dec de                                        ; $64D2: $1B
    rst RST_20                                    ; $64D3: $E7
    rra                                           ; $64D4: $1F
    rst RST_28                                    ; $64D5: $EF
    db $FC                                        ; $64D6: $FC
    rst RST_28                                    ; $64D7: $EF
    ld sp, hl                                     ; $64D8: $F9
    rrca                                          ; $64D9: $0F
    rst RST_38                                    ; $64DA: $FF
    sub a                                         ; $64DB: $97
    rst RST_38                                    ; $64DC: $FF
    cp a                                          ; $64DD: $BF
    rst RST_38                                    ; $64DE: $FF
    ld [hl], a                                    ; $64DF: $77
    rst RST_38                                    ; $64E0: $FF
    rst RST_08                                    ; $64E1: $CF
    rst RST_38                                    ; $64E2: $FF
    and $EF                                       ; $64E3: $E6 $EF
    sub a                                         ; $64E5: $97
    rst RST_38                                    ; $64E6: $FF
    rlca                                          ; $64E7: $07
    rst RST_38                                    ; $64E8: $FF
    ld hl, sp-$01                                 ; $64E9: $F8 $FF
    add a                                         ; $64EB: $87
    sbc a                                         ; $64EC: $9F
    nop                                           ; $64ED: $00
    ld bc, $0000                                  ; $64EE: $01 $00 $00
    nop                                           ; $64F1: $00
    nop                                           ; $64F2: $00
    nop                                           ; $64F3: $00
    nop                                           ; $64F4: $00
    nop                                           ; $64F5: $00
    nop                                           ; $64F6: $00
    nop                                           ; $64F7: $00
    nop                                           ; $64F8: $00
    nop                                           ; $64F9: $00
    nop                                           ; $64FA: $00
    nop                                           ; $64FB: $00
    nop                                           ; $64FC: $00
    nop                                           ; $64FD: $00
    nop                                           ; $64FE: $00
    nop                                           ; $64FF: $00
    nop                                           ; $6500: $00
    nop                                           ; $6501: $00
    add b                                         ; $6502: $80
    nop                                           ; $6503: $00
    ld b, b                                       ; $6504: $40
    add b                                         ; $6505: $80
    ld [hl], b                                    ; $6506: $70
    add b                                         ; $6507: $80
    db $D3                                        ; $6508: $D3
    jr nz, jr_01B_64B7                            ; $6509: $20 $AC

    ld b, e                                       ; $650B: $43
    ld [hl], e                                    ; $650C: $73
    adc a                                         ; $650D: $8F
    ld a, a                                       ; $650E: $7F
    adc a                                         ; $650F: $8F
    rst RST_18                                    ; $6510: $DF
    xor a                                         ; $6511: $AF
    rst RST_38                                    ; $6512: $FF
    rst RST_18                                    ; $6513: $DF
    rst RST_38                                    ; $6514: $FF
    rst RST_18                                    ; $6515: $DF
    ld a, a                                       ; $6516: $7F
    sub c                                         ; $6517: $91
    or c                                          ; $6518: $B1
    ld e, [hl]                                    ; $6519: $5E
    ld a, [$FFBF]                                 ; $651A: $FA $BF $FF
    cp a                                          ; $651D: $BF
    rst RST_38                                    ; $651E: $FF
    cp a                                          ; $651F: $BF
    rst RST_38                                    ; $6520: $FF
    ccf                                           ; $6521: $3F
    rst RST_38                                    ; $6522: $FF
    ld a, a                                       ; $6523: $7F
    rst RST_38                                    ; $6524: $FF
    rlca                                          ; $6525: $07
    rst RST_38                                    ; $6526: $FF
    ld l, a                                       ; $6527: $6F
    rst RST_38                                    ; $6528: $FF
    rst RST_08                                    ; $6529: $CF
    rst RST_28                                    ; $652A: $EF
    ld de, $B649                                  ; $652B: $11 $49 $B6
    rst RST_38                                    ; $652E: $FF
    nop                                           ; $652F: $00
    nop                                           ; $6530: $00
    nop                                           ; $6531: $00
    nop                                           ; $6532: $00
    nop                                           ; $6533: $00
    nop                                           ; $6534: $00
    nop                                           ; $6535: $00
    nop                                           ; $6536: $00
    nop                                           ; $6537: $00
    nop                                           ; $6538: $00
    nop                                           ; $6539: $00
    nop                                           ; $653A: $00
    nop                                           ; $653B: $00
    nop                                           ; $653C: $00
    nop                                           ; $653D: $00
    nop                                           ; $653E: $00
    nop                                           ; $653F: $00
    nop                                           ; $6540: $00
    nop                                           ; $6541: $00
    nop                                           ; $6542: $00
    nop                                           ; $6543: $00
    nop                                           ; $6544: $00
    nop                                           ; $6545: $00
    db $FC                                        ; $6546: $FC
    nop                                           ; $6547: $00
    rrca                                          ; $6548: $0F
    db $FC                                        ; $6549: $FC
    rst RST_10                                    ; $654A: $D7
    rst RST_38                                    ; $654B: $FF
    ld l, a                                       ; $654C: $6F
    rst RST_38                                    ; $654D: $FF
    rst RST_38                                    ; $654E: $FF
    db $FC                                        ; $654F: $FC
    db $F4                                        ; $6550: $F4
    rst RST_38                                    ; $6551: $FF
    ld a, [$FFFF]                                 ; $6552: $FA $FF $FF
    rst RST_38                                    ; $6555: $FF
    rst RST_38                                    ; $6556: $FF
    rst RST_38                                    ; $6557: $FF
    rst RST_38                                    ; $6558: $FF
    rst RST_18                                    ; $6559: $DF
    rst RST_38                                    ; $655A: $FF
    ld e, a                                       ; $655B: $5F
    rst RST_38                                    ; $655C: $FF
    sbc a                                         ; $655D: $9F
    rst RST_38                                    ; $655E: $FF
    xor a                                         ; $655F: $AF
    rst RST_38                                    ; $6560: $FF
    xor a                                         ; $6561: $AF
    rst RST_38                                    ; $6562: $FF
    or c                                          ; $6563: $B1
    rst RST_38                                    ; $6564: $FF
    add a                                         ; $6565: $87
    rst RST_28                                    ; $6566: $EF
    add a                                         ; $6567: $87
    rst RST_38                                    ; $6568: $FF
    ld b, a                                       ; $6569: $47
    rst RST_30                                    ; $656A: $F7
    ld [$5BA4], sp                                ; $656B: $08 $A4 $5B
    rst RST_38                                    ; $656E: $FF
    nop                                           ; $656F: $00
    nop                                           ; $6570: $00
    nop                                           ; $6571: $00
    nop                                           ; $6572: $00
    nop                                           ; $6573: $00
    nop                                           ; $6574: $00
    nop                                           ; $6575: $00
    nop                                           ; $6576: $00
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
    inc bc                                        ; $6586: $03
    nop                                           ; $6587: $00
    rlca                                          ; $6588: $07
    ld [bc], a                                    ; $6589: $02
    rlca                                          ; $658A: $07
    ld [bc], a                                    ; $658B: $02
    rrca                                          ; $658C: $0F
    ld b, $0F                                     ; $658D: $06 $0F
    ld b, $1F                                     ; $658F: $06 $1F
    ld c, $1F                                     ; $6591: $0E $1F
    ld c, $3F                                     ; $6593: $0E $3F
    ld e, $7F                                     ; $6595: $1E $7F
    ld a, $FF                                     ; $6597: $3E $FF
    ld a, [hl]                                    ; $6599: $7E
    rst RST_38                                    ; $659A: $FF
    cp $FE                                        ; $659B: $FE $FE
    db $FC                                        ; $659D: $FC
    cp $FC                                        ; $659E: $FE $FC
    cp $7C                                        ; $65A0: $FE $7C
    cp $7C                                        ; $65A2: $FE $7C
    ld a, h                                       ; $65A4: $7C
    cp b                                          ; $65A5: $B8
    db $FC                                        ; $65A6: $FC
    cp b                                          ; $65A7: $B8
    ld hl, sp-$50                                 ; $65A8: $F8 $B0
    ld hl, sp-$50                                 ; $65AA: $F8 $B0
    ldh a, [$FFA0]                                ; $65AC: $F0 $A0
    ldh [rLCDC], a                                ; $65AE: $E0 $40
    ldh [rLCDC], a                                ; $65B0: $E0 $40
    ldh [$FFC0], a                                ; $65B2: $E0 $C0
    ldh [$FFC0], a                                ; $65B4: $E0 $C0
    ret nz                                        ; $65B6: $C0

    add b                                         ; $65B7: $80
    ret nz                                        ; $65B8: $C0

    add b                                         ; $65B9: $80
    ret nz                                        ; $65BA: $C0

    add b                                         ; $65BB: $80
    add b                                         ; $65BC: $80
    nop                                           ; $65BD: $00
    add b                                         ; $65BE: $80
    nop                                           ; $65BF: $00
    nop                                           ; $65C0: $00
    nop                                           ; $65C1: $00
    nop                                           ; $65C2: $00
    nop                                           ; $65C3: $00
    nop                                           ; $65C4: $00
    nop                                           ; $65C5: $00
    ld bc, $0200                                  ; $65C6: $01 $00 $02
    ld bc, $0205                                  ; $65C9: $01 $05 $02
    ld b, $00                                     ; $65CC: $06 $00
    nop                                           ; $65CE: $00
    nop                                           ; $65CF: $00
    ld bc, $0100                                  ; $65D0: $01 $00 $01
    nop                                           ; $65D3: $00
    nop                                           ; $65D4: $00
    nop                                           ; $65D5: $00
    nop                                           ; $65D6: $00
    nop                                           ; $65D7: $00
    nop                                           ; $65D8: $00
    nop                                           ; $65D9: $00
    nop                                           ; $65DA: $00
    nop                                           ; $65DB: $00
    nop                                           ; $65DC: $00
    nop                                           ; $65DD: $00
    nop                                           ; $65DE: $00
    nop                                           ; $65DF: $00
    nop                                           ; $65E0: $00
    nop                                           ; $65E1: $00
    rlca                                          ; $65E2: $07
    nop                                           ; $65E3: $00
    ld a, b                                       ; $65E4: $78
    rlca                                          ; $65E5: $07
    add b                                         ; $65E6: $80
    ld a, a                                       ; $65E7: $7F
    ld a, a                                       ; $65E8: $7F
    rst RST_38                                    ; $65E9: $FF
    rst RST_38                                    ; $65EA: $FF
    nop                                           ; $65EB: $00
    inc bc                                        ; $65EC: $03
    nop                                           ; $65ED: $00
    ld b, $01                                     ; $65EE: $06 $01
    rst RST_38                                    ; $65F0: $FF
    ld b, $1F                                     ; $65F1: $06 $1F
    rst RST_28                                    ; $65F3: $EF
    sbc a                                         ; $65F4: $9F
    ld l, c                                       ; $65F5: $69
    ld e, a                                       ; $65F6: $5F
    dec hl                                        ; $65F7: $2B
    ccf                                           ; $65F8: $3F

jr_01B_65F9:
    ld c, $0F                                     ; $65F9: $0E $0F
    dec b                                         ; $65FB: $05
    rlca                                          ; $65FC: $07
    ld bc, $0001                                  ; $65FD: $01 $01 $00
    nop                                           ; $6600: $00
    nop                                           ; $6601: $00
    nop                                           ; $6602: $00
    nop                                           ; $6603: $00
    ld bc, $0100                                  ; $6604: $01 $00 $01
    nop                                           ; $6607: $00
    ld bc, $0200                                  ; $6608: $01 $00 $02
    ld bc, $0102                                  ; $660B: $01 $02 $01
    dec b                                         ; $660E: $05
    ld [bc], a                                    ; $660F: $02
    ld c, $05                                     ; $6610: $0E $05
    db $FC                                        ; $6612: $FC
    inc bc                                        ; $6613: $03
    dec de                                        ; $6614: $1B
    rst RST_20                                    ; $6615: $E7
    rra                                           ; $6616: $1F
    rst RST_28                                    ; $6617: $EF
    db $FC                                        ; $6618: $FC
    rst RST_28                                    ; $6619: $EF
    ld sp, hl                                     ; $661A: $F9
    rrca                                          ; $661B: $0F
    rst RST_38                                    ; $661C: $FF
    sub a                                         ; $661D: $97
    rst RST_38                                    ; $661E: $FF
    cp a                                          ; $661F: $BF
    rst RST_38                                    ; $6620: $FF
    ld [hl], a                                    ; $6621: $77
    rst RST_38                                    ; $6622: $FF
    rst RST_08                                    ; $6623: $CF
    rst RST_28                                    ; $6624: $EF
    sub $CF                                       ; $6625: $D6 $CF
    or a                                          ; $6627: $B7
    rst RST_38                                    ; $6628: $FF
    rlca                                          ; $6629: $07
    rst RST_38                                    ; $662A: $FF
    ld hl, sp-$01                                 ; $662B: $F8 $FF
    add b                                         ; $662D: $80
    add c                                         ; $662E: $81
    nop                                           ; $662F: $00
    nop                                           ; $6630: $00
    nop                                           ; $6631: $00
    nop                                           ; $6632: $00
    nop                                           ; $6633: $00
    nop                                           ; $6634: $00
    nop                                           ; $6635: $00
    nop                                           ; $6636: $00
    nop                                           ; $6637: $00
    nop                                           ; $6638: $00
    nop                                           ; $6639: $00
    nop                                           ; $663A: $00
    nop                                           ; $663B: $00
    nop                                           ; $663C: $00
    nop                                           ; $663D: $00
    nop                                           ; $663E: $00
    nop                                           ; $663F: $00
    nop                                           ; $6640: $00
    nop                                           ; $6641: $00
    nop                                           ; $6642: $00
    nop                                           ; $6643: $00
    add b                                         ; $6644: $80
    nop                                           ; $6645: $00
    ld b, b                                       ; $6646: $40
    add b                                         ; $6647: $80
    ld [hl], b                                    ; $6648: $70
    add b                                         ; $6649: $80
    db $D3                                        ; $664A: $D3
    jr nz, jr_01B_65F9                            ; $664B: $20 $AC

    ld b, e                                       ; $664D: $43
    ld [hl], e                                    ; $664E: $73
    adc a                                         ; $664F: $8F
    ld a, a                                       ; $6650: $7F
    adc a                                         ; $6651: $8F
    rst RST_18                                    ; $6652: $DF
    xor a                                         ; $6653: $AF
    rst RST_38                                    ; $6654: $FF
    rst RST_18                                    ; $6655: $DF
    rst RST_38                                    ; $6656: $FF
    rst RST_18                                    ; $6657: $DF
    ld a, a                                       ; $6658: $7F
    sub c                                         ; $6659: $91
    or c                                          ; $665A: $B1
    ld e, [hl]                                    ; $665B: $5E
    ld a, [$FFBF]                                 ; $665C: $FA $BF $FF
    cp a                                          ; $665F: $BF
    rst RST_38                                    ; $6660: $FF
    cp a                                          ; $6661: $BF
    rst RST_38                                    ; $6662: $FF
    ccf                                           ; $6663: $3F
    rst RST_38                                    ; $6664: $FF
    ld [hl], a                                    ; $6665: $77
    rst RST_38                                    ; $6666: $FF
    rrca                                          ; $6667: $0F
    rst RST_38                                    ; $6668: $FF
    ld c, a                                       ; $6669: $4F
    rst RST_28                                    ; $666A: $EF
    ld de, $B649                                  ; $666B: $11 $49 $B6
    rst RST_38                                    ; $666E: $FF
    nop                                           ; $666F: $00
    nop                                           ; $6670: $00
    nop                                           ; $6671: $00
    nop                                           ; $6672: $00
    nop                                           ; $6673: $00
    nop                                           ; $6674: $00
    nop                                           ; $6675: $00
    nop                                           ; $6676: $00
    nop                                           ; $6677: $00
    nop                                           ; $6678: $00
    nop                                           ; $6679: $00
    nop                                           ; $667A: $00
    nop                                           ; $667B: $00
    nop                                           ; $667C: $00
    nop                                           ; $667D: $00
    nop                                           ; $667E: $00
    nop                                           ; $667F: $00
    rst RST_38                                    ; $6680: $FF
    db $FC                                        ; $6681: $FC
    db $F4                                        ; $6682: $F4
    rst RST_38                                    ; $6683: $FF
    ld a, [$FFFF]                                 ; $6684: $FA $FF $FF
    rst RST_38                                    ; $6687: $FF
    rst RST_38                                    ; $6688: $FF
    rst RST_38                                    ; $6689: $FF
    rst RST_38                                    ; $668A: $FF
    rst RST_18                                    ; $668B: $DF
    rst RST_38                                    ; $668C: $FF
    ld e, a                                       ; $668D: $5F
    rst RST_38                                    ; $668E: $FF
    sbc a                                         ; $668F: $9F
    rst RST_38                                    ; $6690: $FF
    xor a                                         ; $6691: $AF
    rst RST_38                                    ; $6692: $FF
    xor a                                         ; $6693: $AF
    rst RST_38                                    ; $6694: $FF
    or c                                          ; $6695: $B1
    rst RST_38                                    ; $6696: $FF
    add a                                         ; $6697: $87
    rst RST_18                                    ; $6698: $DF
    rlca                                          ; $6699: $07
    rst RST_30                                    ; $669A: $F7
    ld [$5BA4], sp                                ; $669B: $08 $A4 $5B
    rst RST_38                                    ; $669E: $FF
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
    nop                                           ; $66AE: $00
    nop                                           ; $66AF: $00
    nop                                           ; $66B0: $00
    nop                                           ; $66B1: $00
    rrca                                          ; $66B2: $0F
    nop                                           ; $66B3: $00
    rrca                                          ; $66B4: $0F
    rlca                                          ; $66B5: $07
    rlca                                          ; $66B6: $07
    inc bc                                        ; $66B7: $03
    rst RST_38                                    ; $66B8: $FF
    nop                                           ; $66B9: $00
    rrca                                          ; $66BA: $0F
    rst RST_38                                    ; $66BB: $FF
    rst RST_10                                    ; $66BC: $D7
    rst RST_38                                    ; $66BD: $FF
    ld l, a                                       ; $66BE: $6F
    rst RST_38                                    ; $66BF: $FF
    nop                                           ; $66C0: $00
    nop                                           ; $66C1: $00
    nop                                           ; $66C2: $00
    nop                                           ; $66C3: $00
    ret nz                                        ; $66C4: $C0

    nop                                           ; $66C5: $00
    ldh [$FFC0], a                                ; $66C6: $E0 $C0
    ldh a, [$FFE0]                                ; $66C8: $F0 $E0
    ldh a, [$FF60]                                ; $66CA: $F0 $60
    ld hl, sp-$10                                 ; $66CC: $F8 $F0
    ld hl, sp-$10                                 ; $66CE: $F8 $F0
    ld hl, sp-$10                                 ; $66D0: $F8 $F0
    ld hl, sp+$70                                 ; $66D2: $F8 $70
    ld hl, sp+$70                                 ; $66D4: $F8 $70
    ld a, b                                       ; $66D6: $78
    or b                                          ; $66D7: $B0
    ld hl, sp-$50                                 ; $66D8: $F8 $B0
    ld hl, sp-$50                                 ; $66DA: $F8 $B0
    ldh a, [$FFA0]                                ; $66DC: $F0 $A0
    ldh a, [$FFA0]                                ; $66DE: $F0 $A0
    ldh [rLCDC], a                                ; $66E0: $E0 $40
    ldh [$FFC0], a                                ; $66E2: $E0 $C0
    ldh [$FFC0], a                                ; $66E4: $E0 $C0
    ret nz                                        ; $66E6: $C0

    add b                                         ; $66E7: $80
    ret nz                                        ; $66E8: $C0

    add b                                         ; $66E9: $80
    ret nz                                        ; $66EA: $C0

    add b                                         ; $66EB: $80
    add b                                         ; $66EC: $80
    nop                                           ; $66ED: $00
    add b                                         ; $66EE: $80
    nop                                           ; $66EF: $00
    nop                                           ; $66F0: $00
    nop                                           ; $66F1: $00
    nop                                           ; $66F2: $00
    nop                                           ; $66F3: $00
    nop                                           ; $66F4: $00
    nop                                           ; $66F5: $00
    nop                                           ; $66F6: $00
    nop                                           ; $66F7: $00
    nop                                           ; $66F8: $00
    nop                                           ; $66F9: $00
    nop                                           ; $66FA: $00
    nop                                           ; $66FB: $00
    nop                                           ; $66FC: $00
    nop                                           ; $66FD: $00
    nop                                           ; $66FE: $00
    nop                                           ; $66FF: $00
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
    nop                                           ; $6712: $00
    nop                                           ; $6713: $00
    nop                                           ; $6714: $00
    nop                                           ; $6715: $00
    nop                                           ; $6716: $00
    nop                                           ; $6717: $00
    db $FC                                        ; $6718: $FC
    nop                                           ; $6719: $00
    rrca                                          ; $671A: $0F
    db $FC                                        ; $671B: $FC
    rst RST_10                                    ; $671C: $D7
    rst RST_38                                    ; $671D: $FF
    ld l, a                                       ; $671E: $6F
    rst RST_38                                    ; $671F: $FF
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
    add b                                         ; $672A: $80
    nop                                           ; $672B: $00
    ldh a, [$FF80]                                ; $672C: $F0 $80
    db $FC                                        ; $672E: $FC
    ldh a, [$FFFE]                                ; $672F: $F0 $FE
    db $FC                                        ; $6731: $FC
    rst RST_38                                    ; $6732: $FF
    ld a, [hl]                                    ; $6733: $7E
    rst RST_38                                    ; $6734: $FF
    ld a, [hl]                                    ; $6735: $7E
    ld a, a                                       ; $6736: $7F
    cp a                                          ; $6737: $BF
    rst RST_38                                    ; $6738: $FF
    cp a                                          ; $6739: $BF
    rst RST_38                                    ; $673A: $FF
    xor a                                         ; $673B: $AF
    rst RST_38                                    ; $673C: $FF
    or c                                          ; $673D: $B1
    pop af                                        ; $673E: $F1
    and b                                         ; $673F: $A0
    ldh [rLCDC], a                                ; $6740: $E0 $40
    ldh [$FFC0], a                                ; $6742: $E0 $C0
    ldh [$FFC0], a                                ; $6744: $E0 $C0
    ret nz                                        ; $6746: $C0

    add b                                         ; $6747: $80
    ret nz                                        ; $6748: $C0

    add b                                         ; $6749: $80
    ret nz                                        ; $674A: $C0

    add b                                         ; $674B: $80
    add b                                         ; $674C: $80
    nop                                           ; $674D: $00
    add b                                         ; $674E: $80
    nop                                           ; $674F: $00
    nop                                           ; $6750: $00
    nop                                           ; $6751: $00
    nop                                           ; $6752: $00
    nop                                           ; $6753: $00
    nop                                           ; $6754: $00
    nop                                           ; $6755: $00
    nop                                           ; $6756: $00
    nop                                           ; $6757: $00
    nop                                           ; $6758: $00
    nop                                           ; $6759: $00
    nop                                           ; $675A: $00
    nop                                           ; $675B: $00
    nop                                           ; $675C: $00
    nop                                           ; $675D: $00
    nop                                           ; $675E: $00
    nop                                           ; $675F: $00
    nop                                           ; $6760: $00
    nop                                           ; $6761: $00
    nop                                           ; $6762: $00
    nop                                           ; $6763: $00
    nop                                           ; $6764: $00
    nop                                           ; $6765: $00
    nop                                           ; $6766: $00
    nop                                           ; $6767: $00
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
    add b                                         ; $6776: $80
    nop                                           ; $6777: $00
    add b                                         ; $6778: $80
    nop                                           ; $6779: $00
    ret nz                                        ; $677A: $C0

    add b                                         ; $677B: $80
    ret nz                                        ; $677C: $C0

    add b                                         ; $677D: $80
    ret nz                                        ; $677E: $C0

    nop                                           ; $677F: $00
    nop                                           ; $6780: $00
    nop                                           ; $6781: $00
    ld b, b                                       ; $6782: $40
    nop                                           ; $6783: $00
    jr nc, jr_01B_6786                            ; $6784: $30 $00

jr_01B_6786:
    dec a                                         ; $6786: $3D
    db $10                                        ; $6787: $10
    rra                                           ; $6788: $1F
    inc c                                         ; $6789: $0C
    dec de                                        ; $678A: $1B
    rrca                                          ; $678B: $0F
    ld c, $05                                     ; $678C: $0E $05
    inc c                                         ; $678E: $0C
    rlca                                          ; $678F: $07
    rlca                                          ; $6790: $07
    ld [bc], a                                    ; $6791: $02
    rlca                                          ; $6792: $07
    ld [bc], a                                    ; $6793: $02
    inc bc                                        ; $6794: $03
    ld bc, $0103                                  ; $6795: $01 $03 $01
    ld bc, $0100                                  ; $6798: $01 $00 $01
    nop                                           ; $679B: $00
    nop                                           ; $679C: $00
    nop                                           ; $679D: $00
    nop                                           ; $679E: $00
    nop                                           ; $679F: $00
    ld bc, $0700                                  ; $67A0: $01 $00 $07
    nop                                           ; $67A3: $00
    ld a, c                                       ; $67A4: $79
    ld b, $81                                     ; $67A5: $06 $81
    ld a, [hl]                                    ; $67A7: $7E
    ld a, a                                       ; $67A8: $7F
    cp $FF                                        ; $67A9: $FE $FF
    nop                                           ; $67AB: $00
    db $E3                                        ; $67AC: $E3
    add b                                         ; $67AD: $80
    ld a, a                                       ; $67AE: $7F
    ldh [rIE], a                                  ; $67AF: $E0 $FF
    jr @+$19                                      ; $67B1: $18 $17

    xor $97                                       ; $67B3: $EE $97
    ld l, c                                       ; $67B5: $69
    ld d, h                                       ; $67B6: $54
    xor e                                         ; $67B7: $AB
    or c                                          ; $67B8: $B1
    adc $8A                                       ; $67B9: $CE $8A
    push af                                       ; $67BB: $F5
    add $79                                       ; $67BC: $C6 $79
    pop bc                                        ; $67BE: $C1
    ld a, [hl]                                    ; $67BF: $7E
    cp [hl]                                       ; $67C0: $BE
    push hl                                       ; $67C1: $E5
    db $FC                                        ; $67C2: $FC
    sub e                                         ; $67C3: $93
    sbc a                                         ; $67C4: $9F
    db $EB                                        ; $67C5: $EB
    sub a                                         ; $67C6: $97
    db $ED                                        ; $67C7: $ED
    sub e                                         ; $67C8: $93
    xor $F1                                       ; $67C9: $EE $F1
    adc a                                         ; $67CB: $8F
    add sp, -$69                                  ; $67CC: $E8 $97
    ret nz                                        ; $67CE: $C0

    cp a                                          ; $67CF: $BF
    adc b                                         ; $67D0: $88
    rst RST_30                                    ; $67D1: $F7
    or b                                          ; $67D2: $B0
    rst RST_08                                    ; $67D3: $CF
    add c                                         ; $67D4: $81
    cp $30                                        ; $67D5: $FE $30
    rst RST_08                                    ; $67D7: $CF
    ret z                                         ; $67D8: $C8

    scf                                           ; $67D9: $37
    rlca                                          ; $67DA: $07
    ld hl, sp+$79                                 ; $67DB: $F8 $79
    add [hl]                                      ; $67DD: $86
    add c                                         ; $67DE: $81
    ld a, [hl]                                    ; $67DF: $7E
    ld a, a                                       ; $67E0: $7F
    adc l                                         ; $67E1: $8D
    sbc $AB                                       ; $67E2: $DE $AB
    cp $DB                                        ; $67E4: $FE $DB
    db $FC                                        ; $67E6: $FC
    rst RST_10                                    ; $67E7: $D7
    ld a, [hl]                                    ; $67E8: $7E
    sub l                                         ; $67E9: $95
    cp c                                          ; $67EA: $B9
    ld c, [hl]                                    ; $67EB: $4E
    ld hl, sp-$51                                 ; $67EC: $F8 $AF
    ld [hl], b                                    ; $67EE: $70
    rst RST_18                                    ; $67EF: $DF
    ld h, b                                       ; $67F0: $60
    cp a                                          ; $67F1: $BF
    ret nz                                        ; $67F2: $C0

    ccf                                           ; $67F3: $3F
    adc b                                         ; $67F4: $88
    ld [hl], a                                    ; $67F5: $77
    ldh a, [rIF]                                  ; $67F6: $F0 $0F
    or b                                          ; $67F8: $B0
    ld c, a                                       ; $67F9: $4F
    xor $11                                       ; $67FA: $EE $11
    ld c, c                                       ; $67FC: $49
    or [hl]                                       ; $67FD: $B6
    rst RST_38                                    ; $67FE: $FF
    nop                                           ; $67FF: $00
    ccf                                           ; $6800: $3F
    db $ED                                        ; $6801: $ED
    scf                                           ; $6802: $37
    db $ED                                        ; $6803: $ED
    ccf                                           ; $6804: $3F
    db $EB                                        ; $6805: $EB
    ccf                                           ; $6806: $3F
    db $EB                                        ; $6807: $EB
    dec a                                         ; $6808: $3D
    rst RST_20                                    ; $6809: $E7
    dec a                                         ; $680A: $3D
    rst RST_20                                    ; $680B: $E7
    cp l                                          ; $680C: $BD
    ld l, a                                       ; $680D: $6F
    ld a, c                                       ; $680E: $79
    xor a                                         ; $680F: $AF
    ld a, c                                       ; $6810: $79
    cp a                                          ; $6811: $BF
    ld d, b                                       ; $6812: $50
    xor a                                         ; $6813: $AF
    ld c, [hl]                                    ; $6814: $4E
    or c                                          ; $6815: $B1
    ld a, b                                       ; $6816: $78
    add a                                         ; $6817: $87
    sbc b                                         ; $6818: $98
    ld h, a                                       ; $6819: $67
    rst RST_30                                    ; $681A: $F7
    ld [$5BA4], sp                                ; $681B: $08 $A4 $5B
    rst RST_38                                    ; $681E: $FF
    nop                                           ; $681F: $00
    cp $7C                                        ; $6820: $FE $7C
    rst RST_38                                    ; $6822: $FF
    ld a, h                                       ; $6823: $7C
    rst RST_38                                    ; $6824: $FF
    ld a, l                                       ; $6825: $7D
    cp $3B                                        ; $6826: $FE $3B
    db $FC                                        ; $6828: $FC
    scf                                           ; $6829: $37
    ld hl, sp+$2F                                 ; $682A: $F8 $2F
    ld sp, hl                                     ; $682C: $F9
    rla                                           ; $682D: $17
    pop af                                        ; $682E: $F1
    cpl                                           ; $682F: $2F
    db $E3                                        ; $6830: $E3
    ld e, [hl]                                    ; $6831: $5E
    and e                                         ; $6832: $A3
    sbc $26                                       ; $6833: $DE $26
    call c, $BC46                                 ; $6835: $DC $46 $BC
    ld c, h                                       ; $6838: $4C
    cp b                                          ; $6839: $B8
    ld c, h                                       ; $683A: $4C
    cp b                                          ; $683B: $B8
    sbc b                                         ; $683C: $98
    ld [hl], b                                    ; $683D: $70
    sbc b                                         ; $683E: $98
    ld [hl], b                                    ; $683F: $70
    nop                                           ; $6840: $00

jr_01B_6841:
    nop                                           ; $6841: $00
    ld bc, $0200                                  ; $6842: $01 $00 $02
    nop                                           ; $6845: $00
    ld b, $00                                     ; $6846: $06 $00
    inc c                                         ; $6848: $0C
    nop                                           ; $6849: $00
    inc e                                         ; $684A: $1C
    ld [$1038], sp                                ; $684B: $08 $38 $10
    ld a, b                                       ; $684E: $78
    jr nc, jr_01B_6841                            ; $684F: $30 $F0

    ld h, b                                       ; $6851: $60
    or b                                          ; $6852: $B0
    ldh [$FF60], a                                ; $6853: $E0 $60
    ret nz                                        ; $6855: $C0

    ld h, b                                       ; $6856: $60
    ret nz                                        ; $6857: $C0

    ret nz                                        ; $6858: $C0

    add b                                         ; $6859: $80
    ret nz                                        ; $685A: $C0

    add b                                         ; $685B: $80
    add b                                         ; $685C: $80
    nop                                           ; $685D: $00
    add b                                         ; $685E: $80
    nop                                           ; $685F: $00
    nop                                           ; $6860: $00
    nop                                           ; $6861: $00
    nop                                           ; $6862: $00
    nop                                           ; $6863: $00
    nop                                           ; $6864: $00
    nop                                           ; $6865: $00
    nop                                           ; $6866: $00
    nop                                           ; $6867: $00
    inc bc                                        ; $6868: $03
    nop                                           ; $6869: $00

jr_01B_686A:
    rlca                                          ; $686A: $07
    ld [bc], a                                    ; $686B: $02
    rlca                                          ; $686C: $07
    ld [bc], a                                    ; $686D: $02
    rrca                                          ; $686E: $0F
    ld b, $0F                                     ; $686F: $06 $0F
    ld b, $1F                                     ; $6871: $06 $1F
    ld c, $1F                                     ; $6873: $0E $1F
    ld c, $3F                                     ; $6875: $0E $3F
    ld e, $FF                                     ; $6877: $1E $FF
    ld a, $FF                                     ; $6879: $3E $FF
    ld a, [hl]                                    ; $687B: $7E
    rst RST_38                                    ; $687C: $FF
    ld a, [hl]                                    ; $687D: $7E
    cp $7C                                        ; $687E: $FE $7C
    nop                                           ; $6880: $00
    nop                                           ; $6881: $00
    nop                                           ; $6882: $00
    nop                                           ; $6883: $00
    nop                                           ; $6884: $00
    nop                                           ; $6885: $00
    nop                                           ; $6886: $00

jr_01B_6887:
    nop                                           ; $6887: $00
    nop                                           ; $6888: $00
    nop                                           ; $6889: $00
    stop                                          ; $688A: $10 $00
    stop                                          ; $688C: $10 $00
    jr nc, jr_01B_6890                            ; $688E: $30 $00

jr_01B_6890:
    jr nc, jr_01B_6892                            ; $6890: $30 $00

jr_01B_6892:
    ld [hl], b                                    ; $6892: $70
    jr nz, jr_01B_6905                            ; $6893: $20 $70

    jr nz, jr_01B_6887                            ; $6895: $20 $F0

    ld h, b                                       ; $6897: $60
    db $FC                                        ; $6898: $FC
    ld h, b                                       ; $6899: $60
    cp a                                          ; $689A: $BF
    db $EC                                        ; $689B: $EC
    or a                                          ; $689C: $B7
    xor $3F                                       ; $689D: $EE $3F
    xor $00                                       ; $689F: $EE $00
    nop                                           ; $68A1: $00
    nop                                           ; $68A2: $00
    nop                                           ; $68A3: $00
    nop                                           ; $68A4: $00
    nop                                           ; $68A5: $00
    nop                                           ; $68A6: $00
    nop                                           ; $68A7: $00
    nop                                           ; $68A8: $00
    nop                                           ; $68A9: $00
    nop                                           ; $68AA: $00
    nop                                           ; $68AB: $00
    nop                                           ; $68AC: $00
    nop                                           ; $68AD: $00
    nop                                           ; $68AE: $00
    nop                                           ; $68AF: $00
    nop                                           ; $68B0: $00
    nop                                           ; $68B1: $00
    nop                                           ; $68B2: $00
    nop                                           ; $68B3: $00
    add b                                         ; $68B4: $80
    nop                                           ; $68B5: $00
    ld b, b                                       ; $68B6: $40
    add b                                         ; $68B7: $80
    ld [hl], b                                    ; $68B8: $70
    add b                                         ; $68B9: $80
    db $D3                                        ; $68BA: $D3
    jr nz, jr_01B_686A                            ; $68BB: $20 $AD

jr_01B_68BD:
    ld b, d                                       ; $68BD: $42
    ld [hl], e                                    ; $68BE: $73
    adc l                                         ; $68BF: $8D
    nop                                           ; $68C0: $00
    nop                                           ; $68C1: $00
    nop                                           ; $68C2: $00
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
    ld bc, $0100                                  ; $68D4: $01 $00 $01
    nop                                           ; $68D7: $00
    ld bc, $8200                                  ; $68D8: $01 $00 $82
    ld bc, $81C2                                  ; $68DB: $01 $C2 $81
    push hl                                       ; $68DE: $E5
    jp nz, RST_00                                 ; $68DF: $C2 $00 $00

    nop                                           ; $68E2: $00
    nop                                           ; $68E3: $00
    nop                                           ; $68E4: $00
    nop                                           ; $68E5: $00
    nop                                           ; $68E6: $00
    nop                                           ; $68E7: $00
    nop                                           ; $68E8: $00
    nop                                           ; $68E9: $00
    nop                                           ; $68EA: $00
    nop                                           ; $68EB: $00
    nop                                           ; $68EC: $00
    nop                                           ; $68ED: $00
    nop                                           ; $68EE: $00
    nop                                           ; $68EF: $00
    nop                                           ; $68F0: $00
    nop                                           ; $68F1: $00
    nop                                           ; $68F2: $00
    nop                                           ; $68F3: $00
    nop                                           ; $68F4: $00
    nop                                           ; $68F5: $00

jr_01B_68F6:
    nop                                           ; $68F6: $00
    nop                                           ; $68F7: $00
    ld bc, $0100                                  ; $68F8: $01 $00 $01
    nop                                           ; $68FB: $00
    ld bc, $0100                                  ; $68FC: $01 $00 $01
    nop                                           ; $68FF: $00
    nop                                           ; $6900: $00
    nop                                           ; $6901: $00
    nop                                           ; $6902: $00
    nop                                           ; $6903: $00
    nop                                           ; $6904: $00

jr_01B_6905:
    nop                                           ; $6905: $00
    nop                                           ; $6906: $00
    nop                                           ; $6907: $00
    jr nc, jr_01B_690A                            ; $6908: $30 $00

jr_01B_690A:
    ld d, b                                       ; $690A: $50
    jr nz, jr_01B_68BD                            ; $690B: $20 $B0

    ld b, b                                       ; $690D: $40
    ld [hl], b                                    ; $690E: $70
    ret nz                                        ; $690F: $C0

    ret nc                                        ; $6910: $D0

    and b                                         ; $6911: $A0
    xor b                                         ; $6912: $A8
    ld d, b                                       ; $6913: $50
    jr c, jr_01B_68F6                             ; $6914: $38 $E0

    rst RST_30                                    ; $6916: $F7
    ldh [$FFFE], a                                ; $6917: $E0 $FE
    add a                                         ; $6919: $87
    rst RST_18                                    ; $691A: $DF
    xor a                                         ; $691B: $AF
    rst RST_38                                    ; $691C: $FF
    rst RST_18                                    ; $691D: $DF
    ld a, a                                       ; $691E: $7F
    cp a                                          ; $691F: $BF
    cp a                                          ; $6920: $BF
    ld e, a                                       ; $6921: $5F
    rst RST_38                                    ; $6922: $FF
    sbc h                                         ; $6923: $9C
    ld a, [$FD7F]                                 ; $6924: $FA $7F $FD
    rst RST_38                                    ; $6927: $FF
    rst RST_38                                    ; $6928: $FF
    rst RST_38                                    ; $6929: $FF
    rst RST_38                                    ; $692A: $FF
    rst RST_38                                    ; $692B: $FF
    rst RST_38                                    ; $692C: $FF
    rst RST_18                                    ; $692D: $DF
    rst RST_38                                    ; $692E: $FF
    ld l, a                                       ; $692F: $6F
    ld a, a                                       ; $6930: $7F
    rrca                                          ; $6931: $0F
    ccf                                           ; $6932: $3F
    rla                                           ; $6933: $17
    rra                                           ; $6934: $1F
    add hl, bc                                    ; $6935: $09
    rra                                           ; $6936: $1F
    ld c, $1F                                     ; $6937: $0E $1F
    ld c, $2F                                     ; $6939: $0E $2F
    db $10                                        ; $693B: $10
    ld a, [hl-]                                   ; $693C: $3A
    dec b                                         ; $693D: $05
    rrca                                          ; $693E: $0F
    nop                                           ; $693F: $00
    ei                                            ; $6940: $FB
    rlca                                          ; $6941: $07
    ld a, a                                       ; $6942: $7F
    rst RST_28                                    ; $6943: $EF
    rst RST_38                                    ; $6944: $FF
    ld c, a                                       ; $6945: $4F
    ld hl, sp-$71                                 ; $6946: $F8 $8F
    db $FC                                        ; $6948: $FC
    rst RST_30                                    ; $6949: $F7
    rst RST_38                                    ; $694A: $FF

jr_01B_694B:
    rst RST_18                                    ; $694B: $DF
    rst RST_38                                    ; $694C: $FF
    ld h, a                                       ; $694D: $67
    ld a, a                                       ; $694E: $7F
    ld a, $3F                                     ; $694F: $3E $3F
    ld e, $3F                                     ; $6951: $1E $3F
    ld c, $7F                                     ; $6953: $0E $7F
    inc [hl]                                      ; $6955: $34
    ld a, h                                       ; $6956: $7C
    jr nc, jr_01B_69D1                            ; $6957: $30 $78

    jr nc, jr_01B_694B                            ; $6959: $30 $F0

    ld h, b                                       ; $695B: $60
    ldh [$FFC0], a                                ; $695C: $E0 $C0
    ret nz                                        ; $695E: $C0

    nop                                           ; $695F: $00
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
    pop bc                                        ; $6976: $C1
    nop                                           ; $6977: $00
    ld [hl-], a                                   ; $6978: $32
    pop bc                                        ; $6979: $C1
    dec e                                         ; $697A: $1D
    db $E3                                        ; $697B: $E3
    rst RST_08                                    ; $697C: $CF
    db $F4                                        ; $697D: $F4
    db $FC                                        ; $697E: $FC
    inc sp                                        ; $697F: $33
    nop                                           ; $6980: $00
    nop                                           ; $6981: $00
    ret nz                                        ; $6982: $C0

    nop                                           ; $6983: $00
    or b                                          ; $6984: $B0
    ld b, b                                       ; $6985: $40
    ld c, h                                       ; $6986: $4C
    jr nc, jr_01B_69BC                            ; $6987: $30 $33

    inc e                                         ; $6989: $1C
    jr jr_01B_699B                                ; $698A: $18 $0F

    inc c                                         ; $698C: $0C
    rlca                                          ; $698D: $07
    ld b, a                                       ; $698E: $47
    inc bc                                        ; $698F: $03
    and e                                         ; $6990: $A3
    ld b, b                                       ; $6991: $40
    sub b                                         ; $6992: $90
    ld h, b                                       ; $6993: $60
    adc a                                         ; $6994: $8F
    ld [hl], b                                    ; $6995: $70
    sbc a                                         ; $6996: $9F
    ld l, [hl]                                    ; $6997: $6E
    ld a, a                                       ; $6998: $7F
    rra                                           ; $6999: $1F
    ld a, a                                       ; $699A: $7F

jr_01B_699B:
    rra                                           ; $699B: $1F
    ccf                                           ; $699C: $3F
    ld de, $0031                                  ; $699D: $11 $31 $00
    ld bc, $0100                                  ; $69A0: $01 $00 $01
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
    nop                                           ; $69BA: $00
    nop                                           ; $69BB: $00

jr_01B_69BC:
    nop                                           ; $69BC: $00
    nop                                           ; $69BD: $00
    nop                                           ; $69BE: $00
    nop                                           ; $69BF: $00
    nop                                           ; $69C0: $00
    nop                                           ; $69C1: $00
    nop                                           ; $69C2: $00
    nop                                           ; $69C3: $00
    inc bc                                        ; $69C4: $03
    nop                                           ; $69C5: $00
    rlca                                          ; $69C6: $07
    inc bc                                        ; $69C7: $03
    inc c                                         ; $69C8: $0C
    rlca                                          ; $69C9: $07
    jr @+$11                                      ; $69CA: $18 $0F

    jr nc, jr_01B_69ED                            ; $69CC: $30 $1F

    ld h, b                                       ; $69CE: $60
    ccf                                           ; $69CF: $3F
    ld h, b                                       ; $69D0: $60

jr_01B_69D1:
    ccf                                           ; $69D1: $3F
    ld h, b                                       ; $69D2: $60
    ccf                                           ; $69D3: $3F
    ld h, b                                       ; $69D4: $60
    ccf                                           ; $69D5: $3F
    jr nc, jr_01B_69F7                            ; $69D6: $30 $1F

    jr jr_01B_69E9                                ; $69D8: $18 $0F

    ld c, $07                                     ; $69DA: $0E $07
    rlca                                          ; $69DC: $07
    ld bc, $0001                                  ; $69DD: $01 $01 $00
    nop                                           ; $69E0: $00
    rst RST_38                                    ; $69E1: $FF
    rlca                                          ; $69E2: $07
    ld hl, sp+$38                                 ; $69E3: $F8 $38
    rst RST_00                                    ; $69E5: $C7
    ld b, b                                       ; $69E6: $40
    cp a                                          ; $69E7: $BF
    cp a                                          ; $69E8: $BF

jr_01B_69E9:
    ld b, b                                       ; $69E9: $40
    ld b, b                                       ; $69EA: $40
    cp a                                          ; $69EB: $BF
    nop                                           ; $69EC: $00

jr_01B_69ED:
    rst RST_38                                    ; $69ED: $FF
    ccf                                           ; $69EE: $3F
    ret nz                                        ; $69EF: $C0

    ld [hl+], a                                   ; $69F0: $22
    db $DD                                        ; $69F1: $DD
    ld [de], a                                    ; $69F2: $12
    db $ED                                        ; $69F3: $ED
    ld a, [bc]                                    ; $69F4: $0A
    push af                                       ; $69F5: $F5
    add [hl]                                      ; $69F6: $86

jr_01B_69F7:
    ld sp, hl                                     ; $69F7: $F9
    pop af                                        ; $69F8: $F1
    ld a, [hl]                                    ; $69F9: $7E
    ld a, [hl]                                    ; $69FA: $7E
    rrca                                          ; $69FB: $0F
    rrca                                          ; $69FC: $0F
    ld bc, $0001                                  ; $69FD: $01 $01 $00
    nop                                           ; $6A00: $00
    nop                                           ; $6A01: $00
    nop                                           ; $6A02: $00
    nop                                           ; $6A03: $00
    nop                                           ; $6A04: $00
    nop                                           ; $6A05: $00
    nop                                           ; $6A06: $00
    nop                                           ; $6A07: $00
    nop                                           ; $6A08: $00
    nop                                           ; $6A09: $00
    nop                                           ; $6A0A: $00
    nop                                           ; $6A0B: $00
    nop                                           ; $6A0C: $00
    nop                                           ; $6A0D: $00
    nop                                           ; $6A0E: $00
    nop                                           ; $6A0F: $00
    nop                                           ; $6A10: $00
    nop                                           ; $6A11: $00
    nop                                           ; $6A12: $00
    nop                                           ; $6A13: $00
    nop                                           ; $6A14: $00
    nop                                           ; $6A15: $00
    inc bc                                        ; $6A16: $03
    nop                                           ; $6A17: $00
    rrca                                          ; $6A18: $0F
    inc bc                                        ; $6A19: $03
    inc a                                         ; $6A1A: $3C
    rrca                                          ; $6A1B: $0F
    ldh a, [$FF3F]                                ; $6A1C: $F0 $3F
    ret nz                                        ; $6A1E: $C0

    rst RST_38                                    ; $6A1F: $FF
    ld [bc], a                                    ; $6A20: $02
    db $FD                                        ; $6A21: $FD
    ld [bc], a                                    ; $6A22: $02
    db $FD                                        ; $6A23: $FD
    cp $01                                        ; $6A24: $FE $01
    ld l, l                                       ; $6A26: $6D
    sub d                                         ; $6A27: $92
    ret z                                         ; $6A28: $C8

    scf                                           ; $6A29: $37
    ld sp, $06CE                                  ; $6A2A: $31 $CE $06
    ld sp, hl                                     ; $6A2D: $F9
    ret nz                                        ; $6A2E: $C0

    ccf                                           ; $6A2F: $3F
    add [hl]                                      ; $6A30: $86
    ld a, c                                       ; $6A31: $79
    dec a                                         ; $6A32: $3D
    jp nz, $BB44                                  ; $6A33: $C2 $44 $BB

    call nz, $D93B                                ; $6A36: $C4 $3B $D9
    and $FE                                       ; $6A39: $E6 $FE
    dec l                                         ; $6A3B: $2D
    ccf                                           ; $6A3C: $3F
    ld bc, $0003                                  ; $6A3D: $01 $03 $00
    nop                                           ; $6A40: $00
    nop                                           ; $6A41: $00
    nop                                           ; $6A42: $00
    nop                                           ; $6A43: $00
    nop                                           ; $6A44: $00
    nop                                           ; $6A45: $00
    nop                                           ; $6A46: $00
    nop                                           ; $6A47: $00
    nop                                           ; $6A48: $00
    nop                                           ; $6A49: $00
    inc bc                                        ; $6A4A: $03
    nop                                           ; $6A4B: $00
    rrca                                          ; $6A4C: $0F
    inc bc                                        ; $6A4D: $03
    inc a                                         ; $6A4E: $3C
    rrca                                          ; $6A4F: $0F
    pop af                                        ; $6A50: $F1
    ccf                                           ; $6A51: $3F
    jp Jump_000_03FE                              ; $6A52: $C3 $FE $03


    rst RST_38                                    ; $6A55: $FF
    nop                                           ; $6A56: $00
    rst RST_38                                    ; $6A57: $FF
    nop                                           ; $6A58: $00
    rst RST_38                                    ; $6A59: $FF
    ld bc, $7FFE                                  ; $6A5A: $01 $FE $7F
    add b                                         ; $6A5D: $80
    add e                                         ; $6A5E: $83
    ld a, h                                       ; $6A5F: $7C
    inc c                                         ; $6A60: $0C
    nop                                           ; $6A61: $00
    inc a                                         ; $6A62: $3C
    ld [$30F8], sp                                ; $6A63: $08 $F8 $30
    ldh a, [$FFE0]                                ; $6A66: $F0 $E0
    ld h, e                                       ; $6A68: $63
    ret nz                                        ; $6A69: $C0

    rst RST_38                                    ; $6A6A: $FF

jr_01B_6A6B:
    add e                                         ; $6A6B: $83
    db $FC                                        ; $6A6C: $FC
    rra                                           ; $6A6D: $1F
    db $E3                                        ; $6A6E: $E3
    rst RST_38                                    ; $6A6F: $FF
    ld e, a                                       ; $6A70: $5F
    and h                                         ; $6A71: $A4
    ld d, a                                       ; $6A72: $57
    xor b                                         ; $6A73: $A8
    xor a                                         ; $6A74: $AF
    ld d, e                                       ; $6A75: $53
    ld c, [hl]                                    ; $6A76: $4E
    or c                                          ; $6A77: $B1
    adc e                                         ; $6A78: $8B
    ld [hl], h                                    ; $6A79: $74
    ld b, $F9                                     ; $6A7A: $06 $F9
    inc b                                         ; $6A7C: $04
    ei                                            ; $6A7D: $FB
    inc c                                         ; $6A7E: $0C
    di                                            ; $6A7F: $F3
    dec d                                         ; $6A80: $15
    ld [$F30C], a                                 ; $6A81: $EA $0C $F3
    ld [$08F7], sp                                ; $6A84: $08 $F7 $08
    rst RST_30                                    ; $6A87: $F7
    db $10                                        ; $6A88: $10
    rst RST_28                                    ; $6A89: $EF
    jr nz, jr_01B_6A6B                            ; $6A8A: $20 $DF

    inc d                                         ; $6A8C: $14
    db $EB                                        ; $6A8D: $EB
    ld [de], a                                    ; $6A8E: $12
    db $ED                                        ; $6A8F: $ED
    rst RST_38                                    ; $6A90: $FF
    nop                                           ; $6A91: $00
    sbc a                                         ; $6A92: $9F
    ld h, [hl]                                    ; $6A93: $66
    rlca                                          ; $6A94: $07
    ld sp, hl                                     ; $6A95: $F9
    ld bc, $C0FE                                  ; $6A96: $01 $FE $C0
    rst RST_38                                    ; $6A99: $FF
    cp $3F                                        ; $6A9A: $FE $3F
    ccf                                           ; $6A9C: $3F
    ld bc, $0001                                  ; $6A9D: $01 $01 $00
    nop                                           ; $6AA0: $00
    nop                                           ; $6AA1: $00
    rrca                                          ; $6AA2: $0F
    nop                                           ; $6AA3: $00
    ld a, a                                       ; $6AA4: $7F
    ld c, $FE                                     ; $6AA5: $0E $FE
    ld a, h                                       ; $6AA7: $7C
    cp h                                          ; $6AA8: $BC
    ldh a, [$FFF0]                                ; $6AA9: $F0 $F0
    ret nz                                        ; $6AAB: $C0

    ret nz                                        ; $6AAC: $C0

    nop                                           ; $6AAD: $00
    nop                                           ; $6AAE: $00
    nop                                           ; $6AAF: $00
    ldh [rP1], a                                  ; $6AB0: $E0 $00
    rst RST_38                                    ; $6AB2: $FF
    ldh [rIE], a                                  ; $6AB3: $E0 $FF
    inc bc                                        ; $6AB5: $03
    inc bc                                        ; $6AB6: $03
    db $FC                                        ; $6AB7: $FC
    rrca                                          ; $6AB8: $0F
    di                                            ; $6AB9: $F3
    ccf                                           ; $6ABA: $3F
    rst RST_08                                    ; $6ABB: $CF
    rst RST_38                                    ; $6ABC: $FF
    ccf                                           ; $6ABD: $3F
    rst RST_38                                    ; $6ABE: $FF
    ld a, a                                       ; $6ABF: $7F
    ld a, a                                       ; $6AC0: $7F
    add a                                         ; $6AC1: $87
    rla                                           ; $6AC2: $17
    add sp, $08                                   ; $6AC3: $E8 $08
    rst RST_30                                    ; $6AC5: $F7
    ld [$04F7], sp                                ; $6AC6: $08 $F7 $04
    ei                                            ; $6AC9: $FB
    rlca                                          ; $6ACA: $07
    ld hl, sp+$7F                                 ; $6ACB: $F8 $7F
    add e                                         ; $6ACD: $83
    rst RST_38                                    ; $6ACE: $FF
    ld [hl], a                                    ; $6ACF: $77
    rst RST_38                                    ; $6AD0: $FF
    rst RST_38                                    ; $6AD1: $FF
    rst RST_38                                    ; $6AD2: $FF
    ccf                                           ; $6AD3: $3F

jr_01B_6AD4:
    rst RST_38                                    ; $6AD4: $FF
    rra                                           ; $6AD5: $1F
    ld a, a                                       ; $6AD6: $7F
    add b                                         ; $6AD7: $80
    add hl, de                                    ; $6AD8: $19
    ldh [$FFFC], a                                ; $6AD9: $E0 $FC
    ld hl, sp-$04                                 ; $6ADB: $F8 $FC
    nop                                           ; $6ADD: $00
    nop                                           ; $6ADE: $00
    nop                                           ; $6ADF: $00
    add b                                         ; $6AE0: $80
    nop                                           ; $6AE1: $00
    add b                                         ; $6AE2: $80
    nop                                           ; $6AE3: $00
    rst RST_38                                    ; $6AE4: $FF
    nop                                           ; $6AE5: $00
    db $FC                                        ; $6AE6: $FC
    ldh a, [$FFFC]                                ; $6AE7: $F0 $FC
    ldh [rIE], a                                  ; $6AE9: $E0 $FF
    db $FC                                        ; $6AEB: $FC
    rst RST_38                                    ; $6AEC: $FF
    rst RST_20                                    ; $6AED: $E7
    rst RST_38                                    ; $6AEE: $FF
    ei                                            ; $6AEF: $FB
    rst RST_38                                    ; $6AF0: $FF
    dec a                                         ; $6AF1: $3D
    ccf                                           ; $6AF2: $3F
    pop bc                                        ; $6AF3: $C1
    inc bc                                        ; $6AF4: $03
    db $FC                                        ; $6AF5: $FC
    rst RST_38                                    ; $6AF6: $FF
    ld [bc], a                                    ; $6AF7: $02
    rst RST_38                                    ; $6AF8: $FF
    cp $FF                                        ; $6AF9: $FE $FF
    ld a, $FF                                     ; $6AFB: $3E $FF
    cp c                                          ; $6AFD: $B9
    rst RST_38                                    ; $6AFE: $FF
    sbc a                                         ; $6AFF: $9F
    cp a                                          ; $6B00: $BF
    ld c, a                                       ; $6B01: $4F
    sbc a                                         ; $6B02: $9F
    ld l, a                                       ; $6B03: $6F
    ld a, a                                       ; $6B04: $7F
    add c                                         ; $6B05: $81
    sub c                                         ; $6B06: $91
    ld h, b                                       ; $6B07: $60
    ld a, h                                       ; $6B08: $7C
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
    nop                                           ; $6B1A: $00
    nop                                           ; $6B1B: $00
    nop                                           ; $6B1C: $00
    nop                                           ; $6B1D: $00
    nop                                           ; $6B1E: $00
    nop                                           ; $6B1F: $00
    rst RST_38                                    ; $6B20: $FF
    nop                                           ; $6B21: $00
    cp $F8                                        ; $6B22: $FE $F8
    db $FC                                        ; $6B24: $FC
    ldh a, [rIE]                                  ; $6B25: $F0 $FF
    db $FC                                        ; $6B27: $FC
    rst RST_38                                    ; $6B28: $FF
    rst RST_38                                    ; $6B29: $FF
    rst RST_38                                    ; $6B2A: $FF
    rst RST_38                                    ; $6B2B: $FF
    rst RST_38                                    ; $6B2C: $FF
    ld a, a                                       ; $6B2D: $7F
    rst RST_38                                    ; $6B2E: $FF
    sbc a                                         ; $6B2F: $9F
    rst RST_38                                    ; $6B30: $FF
    ldh [$FFF8], a                                ; $6B31: $E0 $F8
    ldh a, [rIE]                                  ; $6B33: $F0 $FF
    ldh a, [$FFFB]                                ; $6B35: $F0 $FB
    db $F4                                        ; $6B37: $F4
    ld a, [$E6C4]                                 ; $6B38: $FA $C4 $E6
    jr jr_01B_6AD4                                ; $6B3B: $18 $97

    ld l, b                                       ; $6B3D: $68
    ld a, a                                       ; $6B3E: $7F
    nop                                           ; $6B3F: $00
    add b                                         ; $6B40: $80
    nop                                           ; $6B41: $00
    nop                                           ; $6B42: $00
    nop                                           ; $6B43: $00
    nop                                           ; $6B44: $00
    nop                                           ; $6B45: $00
    nop                                           ; $6B46: $00
    nop                                           ; $6B47: $00
    db $FC                                        ; $6B48: $FC
    nop                                           ; $6B49: $00
    ldh a, [$FFC0]                                ; $6B4A: $F0 $C0
    db $FC                                        ; $6B4C: $FC
    ldh a, [rIE]                                  ; $6B4D: $F0 $FF
    db $FC                                        ; $6B4F: $FC
    rst RST_38                                    ; $6B50: $FF
    nop                                           ; $6B51: $00
    nop                                           ; $6B52: $00
    nop                                           ; $6B53: $00
    ret nz                                        ; $6B54: $C0

    nop                                           ; $6B55: $00
    nop                                           ; $6B56: $00
    nop                                           ; $6B57: $00
    nop                                           ; $6B58: $00
    nop                                           ; $6B59: $00
    nop                                           ; $6B5A: $00
    nop                                           ; $6B5B: $00
    nop                                           ; $6B5C: $00
    nop                                           ; $6B5D: $00
    ldh [rP1], a                                  ; $6B5E: $E0 $00
    nop                                           ; $6B60: $00
    nop                                           ; $6B61: $00
    nop                                           ; $6B62: $00
    nop                                           ; $6B63: $00
    nop                                           ; $6B64: $00
    nop                                           ; $6B65: $00
    nop                                           ; $6B66: $00
    nop                                           ; $6B67: $00
    nop                                           ; $6B68: $00
    nop                                           ; $6B69: $00
    nop                                           ; $6B6A: $00
    nop                                           ; $6B6B: $00
    rrca                                          ; $6B6C: $0F
    nop                                           ; $6B6D: $00
    inc bc                                        ; $6B6E: $03
    nop                                           ; $6B6F: $00
    nop                                           ; $6B70: $00
    nop                                           ; $6B71: $00
    ld bc, $0100                                  ; $6B72: $01 $00 $01
    nop                                           ; $6B75: $00
    nop                                           ; $6B76: $00
    nop                                           ; $6B77: $00
    nop                                           ; $6B78: $00
    nop                                           ; $6B79: $00
    nop                                           ; $6B7A: $00
    nop                                           ; $6B7B: $00
    nop                                           ; $6B7C: $00
    nop                                           ; $6B7D: $00
    inc bc                                        ; $6B7E: $03
    nop                                           ; $6B7F: $00
    nop                                           ; $6B80: $00
    nop                                           ; $6B81: $00
    nop                                           ; $6B82: $00
    nop                                           ; $6B83: $00
    inc bc                                        ; $6B84: $03
    nop                                           ; $6B85: $00
    db $FC                                        ; $6B86: $FC
    inc bc                                        ; $6B87: $03
    nop                                           ; $6B88: $00
    rst RST_38                                    ; $6B89: $FF
    sbc a                                         ; $6B8A: $9F
    ld a, a                                       ; $6B8B: $7F
    ld a, a                                       ; $6B8C: $7F
    add b                                         ; $6B8D: $80
    add b                                         ; $6B8E: $80
    nop                                           ; $6B8F: $00
    ld h, c                                       ; $6B90: $61
    nop                                           ; $6B91: $00
    ld e, a                                       ; $6B92: $5F
    ld hl, $1B27                                  ; $6B93: $21 $27 $1B
    rst RST_00                                    ; $6B96: $C7
    ld a, [hl-]                                   ; $6B97: $3A
    rst RST_30                                    ; $6B98: $F7
    ld a, [bc]                                    ; $6B99: $0A
    rrca                                          ; $6B9A: $0F
    inc bc                                        ; $6B9B: $03
    inc bc                                        ; $6B9C: $03
    ld bc, $0001                                  ; $6B9D: $01 $01 $00
    ccf                                           ; $6BA0: $3F
    nop                                           ; $6BA1: $00
    inc c                                         ; $6BA2: $0C
    inc bc                                        ; $6BA3: $03
    ld [bc], a                                    ; $6BA4: $02
    ld bc, $0102                                  ; $6BA5: $01 $02 $01
    inc bc                                        ; $6BA8: $03
    ld bc, $0205                                  ; $6BA9: $01 $05 $02
    ccf                                           ; $6BAC: $3F
    ld [bc], a                                    ; $6BAD: $02
    ld [de], a                                    ; $6BAE: $12
    dec c                                         ; $6BAF: $0D
    cp $05                                        ; $6BB0: $FE $05
    dec b                                         ; $6BB2: $05
    ei                                            ; $6BB3: $FB
    rlca                                          ; $6BB4: $07
    ld a, [$F9FE]                                 ; $6BB5: $FA $FE $F9
    db $FC                                        ; $6BB8: $FC
    inc bc                                        ; $6BB9: $03
    rst RST_38                                    ; $6BBA: $FF
    daa                                           ; $6BBB: $27
    cp h                                          ; $6BBC: $BC
    ld l, a                                       ; $6BBD: $6F
    ld sp, hl                                     ; $6BBE: $F9
    sbc a                                         ; $6BBF: $9F
    rst RST_38                                    ; $6BC0: $FF
    rst RST_38                                    ; $6BC1: $FF
    rst RST_38                                    ; $6BC2: $FF
    ld a, a                                       ; $6BC3: $7F
    rst RST_38                                    ; $6BC4: $FF
    pop hl                                        ; $6BC5: $E1
    rst RST_28                                    ; $6BC6: $EF
    add d                                         ; $6BC7: $82
    sbc a                                         ; $6BC8: $9F
    ld b, $FE                                     ; $6BC9: $06 $FE
    inc e                                         ; $6BCB: $1C
    ld a, [hl]                                    ; $6BCC: $7E
    jr c, jr_01B_6C08                             ; $6BCD: $38 $39

    nop                                           ; $6BCF: $00
    nop                                           ; $6BD0: $00
    nop                                           ; $6BD1: $00
    nop                                           ; $6BD2: $00
    nop                                           ; $6BD3: $00
    nop                                           ; $6BD4: $00
    nop                                           ; $6BD5: $00
    nop                                           ; $6BD6: $00
    nop                                           ; $6BD7: $00
    nop                                           ; $6BD8: $00
    nop                                           ; $6BD9: $00
    nop                                           ; $6BDA: $00
    nop                                           ; $6BDB: $00
    nop                                           ; $6BDC: $00
    nop                                           ; $6BDD: $00
    nop                                           ; $6BDE: $00
    nop                                           ; $6BDF: $00
    add b                                         ; $6BE0: $80
    nop                                           ; $6BE1: $00
    add b                                         ; $6BE2: $80
    nop                                           ; $6BE3: $00
    ret nz                                        ; $6BE4: $C0

    nop                                           ; $6BE5: $00
    and b                                         ; $6BE6: $A0
    ld b, b                                       ; $6BE7: $40
    xor a                                         ; $6BE8: $AF
    ld b, b                                       ; $6BE9: $40
    ld h, a                                       ; $6BEA: $67
    add c                                         ; $6BEB: $81
    ld d, e                                       ; $6BEC: $53
    and b                                         ; $6BED: $A0
    rst RST_28                                    ; $6BEE: $EF
    add e                                         ; $6BEF: $83
    rst RST_38                                    ; $6BF0: $FF
    rst RST_08                                    ; $6BF1: $CF
    rst RST_38                                    ; $6BF2: $FF
    sbc a                                         ; $6BF3: $9F
    cp a                                          ; $6BF4: $BF
    ld e, a                                       ; $6BF5: $5F
    ccf                                           ; $6BF6: $3F
    rst RST_18                                    ; $6BF7: $DF
    rst RST_38                                    ; $6BF8: $FF
    db $EC                                        ; $6BF9: $EC
    rst RST_38                                    ; $6BFA: $FF
    rst RST_28                                    ; $6BFB: $EF
    rst RST_38                                    ; $6BFC: $FF
    rst RST_28                                    ; $6BFD: $EF
    rst RST_38                                    ; $6BFE: $FF
    adc a                                         ; $6BFF: $8F
    rst RST_38                                    ; $6C00: $FF
    sbc $FF                                       ; $6C01: $DE $FF
    rst RST_18                                    ; $6C03: $DF
    rst RST_38                                    ; $6C04: $FF
    db $DD                                        ; $6C05: $DD
    rst RST_18                                    ; $6C06: $DF
    inc bc                                        ; $6C07: $03

jr_01B_6C08:
    rrca                                          ; $6C08: $0F
    inc bc                                        ; $6C09: $03
    dec sp                                        ; $6C0A: $3B
    inc b                                         ; $6C0B: $04
    ld d, d                                       ; $6C0C: $52
    dec l                                         ; $6C0D: $2D
    rst RST_38                                    ; $6C0E: $FF
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
    rra                                           ; $6C20: $1F
    nop                                           ; $6C21: $00
    rra                                           ; $6C22: $1F
    rrca                                          ; $6C23: $0F
    rrca                                          ; $6C24: $0F
    inc bc                                        ; $6C25: $03
    inc bc                                        ; $6C26: $03
    nop                                           ; $6C27: $00
    rra                                           ; $6C28: $1F
    inc bc                                        ; $6C29: $03
    rlca                                          ; $6C2A: $07
    nop                                           ; $6C2B: $00
    nop                                           ; $6C2C: $00
    nop                                           ; $6C2D: $00
    nop                                           ; $6C2E: $00
    nop                                           ; $6C2F: $00
    nop                                           ; $6C30: $00
    nop                                           ; $6C31: $00
    rst RST_38                                    ; $6C32: $FF
    nop                                           ; $6C33: $00
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
    ld a, a                                       ; $6C43: $7F
    rst RST_38                                    ; $6C44: $FF
    or [hl]                                       ; $6C45: $B6
    rst RST_38                                    ; $6C46: $FF
    rst RST_10                                    ; $6C47: $D7
    rst RST_38                                    ; $6C48: $FF
    or a                                          ; $6C49: $B7
    rst RST_38                                    ; $6C4A: $FF
    dec bc                                        ; $6C4B: $0B
    rst RST_38                                    ; $6C4C: $FF
    db $EB                                        ; $6C4D: $EB
    rst RST_38                                    ; $6C4E: $FF
    db $EC                                        ; $6C4F: $EC
    rst RST_38                                    ; $6C50: $FF
    pop hl                                        ; $6C51: $E1
    rst RST_20                                    ; $6C52: $E7
    pop bc                                        ; $6C53: $C1
    db $FD                                        ; $6C54: $FD
    ld b, d                                       ; $6C55: $42
    ld l, c                                       ; $6C56: $69
    sub [hl]                                      ; $6C57: $96

jr_01B_6C58:
    rst RST_38                                    ; $6C58: $FF
    nop                                           ; $6C59: $00
    nop                                           ; $6C5A: $00
    nop                                           ; $6C5B: $00
    nop                                           ; $6C5C: $00
    nop                                           ; $6C5D: $00
    nop                                           ; $6C5E: $00
    nop                                           ; $6C5F: $00
    ret nz                                        ; $6C60: $C0

    nop                                           ; $6C61: $00
    ldh a, [$FFC0]                                ; $6C62: $F0 $C0
    ld hl, sp-$10                                 ; $6C64: $F8 $F0
    db $FC                                        ; $6C66: $FC
    ld hl, sp-$02                                 ; $6C67: $F8 $FE
    db $FC                                        ; $6C69: $FC
    cp $3C                                        ; $6C6A: $FE $3C
    ld a, a                                       ; $6C6C: $7F
    ld a, $7F                                     ; $6C6D: $3E $7F
    ld a, $FF                                     ; $6C6F: $3E $FF
    ld a, [hl]                                    ; $6C71: $7E
    rst RST_38                                    ; $6C72: $FF
    cp $FF                                        ; $6C73: $FE $FF
    cp $FF                                        ; $6C75: $FE $FF
    cp $FF                                        ; $6C77: $FE $FF
    cp $FF                                        ; $6C79: $FE $FF
    ld a, $FF                                     ; $6C7B: $3E $FF
    sbc $FF                                       ; $6C7D: $DE $FF
    sbc $FE                                       ; $6C7F: $DE $FE
    db $EC                                        ; $6C81: $EC
    cp $9C                                        ; $6C82: $FE $9C
    cp $3C                                        ; $6C84: $FE $3C
    db $FC                                        ; $6C86: $FC
    ret z                                         ; $6C87: $C8

    db $FC                                        ; $6C88: $FC
    add sp, -$08                                  ; $6C89: $E8 $F8
    ret nc                                        ; $6C8B: $D0

    ld hl, sp-$10                                 ; $6C8C: $F8 $F0
    ld hl, sp+$70                                 ; $6C8E: $F8 $70
    ldh a, [$FFE0]                                ; $6C90: $F0 $E0
    ldh a, [$FFE0]                                ; $6C92: $F0 $E0
    ldh a, [rNR41]                                ; $6C94: $F0 $20
    jr nz, jr_01B_6C58                            ; $6C96: $20 $C0

    ldh [rP1], a                                  ; $6C98: $E0 $00
    nop                                           ; $6C9A: $00
    nop                                           ; $6C9B: $00
    nop                                           ; $6C9C: $00
    nop                                           ; $6C9D: $00
    nop                                           ; $6C9E: $00
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
    nop                                           ; $6CAE: $00
    nop                                           ; $6CAF: $00
    nop                                           ; $6CB0: $00
    nop                                           ; $6CB1: $00
    nop                                           ; $6CB2: $00
    nop                                           ; $6CB3: $00
    nop                                           ; $6CB4: $00
    nop                                           ; $6CB5: $00
    nop                                           ; $6CB6: $00
    nop                                           ; $6CB7: $00
    nop                                           ; $6CB8: $00
    nop                                           ; $6CB9: $00
    nop                                           ; $6CBA: $00
    nop                                           ; $6CBB: $00
    ld bc, $0100                                  ; $6CBC: $01 $00 $01
    nop                                           ; $6CBF: $00
    inc bc                                        ; $6CC0: $03
    nop                                           ; $6CC1: $00
    inc e                                         ; $6CC2: $1C
    inc bc                                        ; $6CC3: $03
    ld h, b                                       ; $6CC4: $60
    rra                                           ; $6CC5: $1F
    sbc a                                         ; $6CC6: $9F
    ld a, a                                       ; $6CC7: $7F
    ld a, a                                       ; $6CC8: $7F
    add b                                         ; $6CC9: $80
    add b                                         ; $6CCA: $80
    nop                                           ; $6CCB: $00
    ld h, c                                       ; $6CCC: $61
    nop                                           ; $6CCD: $00
    ld e, a                                       ; $6CCE: $5F
    ld hl, $1B27                                  ; $6CCF: $21 $27 $1B
    daa                                           ; $6CD2: $27
    ld a, [de]                                    ; $6CD3: $1A
    rla                                           ; $6CD4: $17
    ld a, [bc]                                    ; $6CD5: $0A
    rrca                                          ; $6CD6: $0F
    inc bc                                        ; $6CD7: $03
    inc bc                                        ; $6CD8: $03
    ld bc, $0001                                  ; $6CD9: $01 $01 $00
    nop                                           ; $6CDC: $00
    nop                                           ; $6CDD: $00
    nop                                           ; $6CDE: $00
    nop                                           ; $6CDF: $00
    ld bc, $0200                                  ; $6CE0: $01 $00 $02
    ld bc, $0102                                  ; $6CE3: $01 $02 $01
    ld [bc], a                                    ; $6CE6: $02
    ld bc, $0103                                  ; $6CE7: $01 $03 $01
    dec b                                         ; $6CEA: $05
    ld [bc], a                                    ; $6CEB: $02
    rlca                                          ; $6CEC: $07
    ld [bc], a                                    ; $6CED: $02
    ld a, [bc]                                    ; $6CEE: $0A
    dec b                                         ; $6CEF: $05
    cp $05                                        ; $6CF0: $FE $05
    dec b                                         ; $6CF2: $05
    ei                                            ; $6CF3: $FB
    rlca                                          ; $6CF4: $07
    ld a, [$F9FE]                                 ; $6CF5: $FA $FE $F9
    db $FC                                        ; $6CF8: $FC
    inc bc                                        ; $6CF9: $03
    rst RST_38                                    ; $6CFA: $FF
    daa                                           ; $6CFB: $27
    cp h                                          ; $6CFC: $BC
    ld l, a                                       ; $6CFD: $6F
    ld sp, hl                                     ; $6CFE: $F9
    sbc a                                         ; $6CFF: $9F
    rst RST_38                                    ; $6D00: $FF
    rst RST_38                                    ; $6D01: $FF
    rst RST_38                                    ; $6D02: $FF
    ld a, a                                       ; $6D03: $7F
    rst RST_38                                    ; $6D04: $FF
    pop hl                                        ; $6D05: $E1
    rst RST_28                                    ; $6D06: $EF
    add d                                         ; $6D07: $82
    sbc a                                         ; $6D08: $9F
    ld b, $FE                                     ; $6D09: $06 $FE
    inc e                                         ; $6D0B: $1C
    ld a, h                                       ; $6D0C: $7C
    jr c, jr_01B_6D47                             ; $6D0D: $38 $38

    nop                                           ; $6D0F: $00
    nop                                           ; $6D10: $00
    nop                                           ; $6D11: $00
    nop                                           ; $6D12: $00
    nop                                           ; $6D13: $00
    nop                                           ; $6D14: $00
    nop                                           ; $6D15: $00
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
    add b                                         ; $6D20: $80
    nop                                           ; $6D21: $00
    add b                                         ; $6D22: $80
    nop                                           ; $6D23: $00
    ret nz                                        ; $6D24: $C0

    nop                                           ; $6D25: $00
    and b                                         ; $6D26: $A0
    ld b, b                                       ; $6D27: $40
    and b                                         ; $6D28: $A0
    ld b, b                                       ; $6D29: $40
    ld h, b                                       ; $6D2A: $60
    add b                                         ; $6D2B: $80
    ld d, e                                       ; $6D2C: $53
    and b                                         ; $6D2D: $A0
    db $EC                                        ; $6D2E: $EC
    add e                                         ; $6D2F: $83
    rst RST_38                                    ; $6D30: $FF
    rst RST_08                                    ; $6D31: $CF
    rst RST_38                                    ; $6D32: $FF
    sbc a                                         ; $6D33: $9F
    cp a                                          ; $6D34: $BF
    ld e, a                                       ; $6D35: $5F
    ccf                                           ; $6D36: $3F
    rst RST_18                                    ; $6D37: $DF
    rst RST_38                                    ; $6D38: $FF
    db $EC                                        ; $6D39: $EC
    db $FC                                        ; $6D3A: $FC
    rst RST_28                                    ; $6D3B: $EF
    cp $EF                                        ; $6D3C: $FE $EF
    rst RST_38                                    ; $6D3E: $FF
    adc a                                         ; $6D3F: $8F
    rst RST_38                                    ; $6D40: $FF
    rst RST_18                                    ; $6D41: $DF
    rst RST_38                                    ; $6D42: $FF
    rst RST_18                                    ; $6D43: $DF
    rst RST_38                                    ; $6D44: $FF
    db $DD                                        ; $6D45: $DD
    rst RST_18                                    ; $6D46: $DF

jr_01B_6D47:
    inc bc                                        ; $6D47: $03
    rrca                                          ; $6D48: $0F
    inc bc                                        ; $6D49: $03
    dec sp                                        ; $6D4A: $3B
    inc b                                         ; $6D4B: $04
    ld d, d                                       ; $6D4C: $52
    dec l                                         ; $6D4D: $2D
    ld a, a                                       ; $6D4E: $7F
    nop                                           ; $6D4F: $00
    nop                                           ; $6D50: $00
    nop                                           ; $6D51: $00
    nop                                           ; $6D52: $00
    nop                                           ; $6D53: $00
    nop                                           ; $6D54: $00
    nop                                           ; $6D55: $00
    nop                                           ; $6D56: $00
    nop                                           ; $6D57: $00
    nop                                           ; $6D58: $00
    nop                                           ; $6D59: $00
    nop                                           ; $6D5A: $00
    nop                                           ; $6D5B: $00
    nop                                           ; $6D5C: $00
    nop                                           ; $6D5D: $00
    nop                                           ; $6D5E: $00
    nop                                           ; $6D5F: $00
    rra                                           ; $6D60: $1F
    nop                                           ; $6D61: $00
    ld [de], a                                    ; $6D62: $12
    rrca                                          ; $6D63: $0F
    rrca                                          ; $6D64: $0F
    inc bc                                        ; $6D65: $03
    inc bc                                        ; $6D66: $03
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
    ccf                                           ; $6D72: $3F
    nop                                           ; $6D73: $00
    jp $353F                                      ; $6D74: $C3 $3F $35


    rst RST_38                                    ; $6D77: $FF
    db $DB                                        ; $6D78: $DB
    rst RST_38                                    ; $6D79: $FF
    rst RST_38                                    ; $6D7A: $FF
    rst RST_38                                    ; $6D7B: $FF
    db $FD                                        ; $6D7C: $FD
    rst RST_38                                    ; $6D7D: $FF
    cp $FF                                        ; $6D7E: $FE $FF
    rst RST_38                                    ; $6D80: $FF
    rst RST_38                                    ; $6D81: $FF
    rst RST_38                                    ; $6D82: $FF
    ld a, a                                       ; $6D83: $7F
    ld a, a                                       ; $6D84: $7F
    or a                                          ; $6D85: $B7
    cp a                                          ; $6D86: $BF
    rst RST_10                                    ; $6D87: $D7
    rst RST_38                                    ; $6D88: $FF
    rst RST_20                                    ; $6D89: $E7
    rst RST_38                                    ; $6D8A: $FF
    db $EB                                        ; $6D8B: $EB
    rst RST_38                                    ; $6D8C: $FF
    db $EB                                        ; $6D8D: $EB
    rst RST_38                                    ; $6D8E: $FF
    db $EC                                        ; $6D8F: $EC
    rst RST_38                                    ; $6D90: $FF
    pop hl                                        ; $6D91: $E1
    rst RST_20                                    ; $6D92: $E7
    pop bc                                        ; $6D93: $C1
    db $FD                                        ; $6D94: $FD
    ld b, d                                       ; $6D95: $42
    ld l, c                                       ; $6D96: $69
    sub [hl]                                      ; $6D97: $96

jr_01B_6D98:
    rst RST_38                                    ; $6D98: $FF
    nop                                           ; $6D99: $00
    nop                                           ; $6D9A: $00
    nop                                           ; $6D9B: $00
    nop                                           ; $6D9C: $00
    nop                                           ; $6D9D: $00
    nop                                           ; $6D9E: $00
    nop                                           ; $6D9F: $00
    ret nz                                        ; $6DA0: $C0

    nop                                           ; $6DA1: $00
    or b                                          ; $6DA2: $B0
    ret nz                                        ; $6DA3: $C0

    ld l, b                                       ; $6DA4: $68
    ldh a, [$FFFC]                                ; $6DA5: $F0 $FC
    ld hl, sp-$02                                 ; $6DA7: $F8 $FE
    ld a, h                                       ; $6DA9: $7C
    ld a, [hl]                                    ; $6DAA: $7E
    inc a                                         ; $6DAB: $3C
    ld a, a                                       ; $6DAC: $7F
    ld a, $7F                                     ; $6DAD: $3E $7F
    ld a, $FF                                     ; $6DAF: $3E $FF
    ld a, [hl]                                    ; $6DB1: $7E
    rst RST_38                                    ; $6DB2: $FF
    cp $FF                                        ; $6DB3: $FE $FF
    cp $FF                                        ; $6DB5: $FE $FF
    cp $FF                                        ; $6DB7: $FE $FF
    cp $FF                                        ; $6DB9: $FE $FF
    ld a, $3F                                     ; $6DBB: $3E $3F
    sbc $BF                                       ; $6DBD: $DE $BF
    sbc $DE                                       ; $6DBF: $DE $DE
    db $EC                                        ; $6DC1: $EC
    cp $EC                                        ; $6DC2: $FE $EC
    cp $EC                                        ; $6DC4: $FE $EC
    db $FC                                        ; $6DC6: $FC
    add sp, -$04                                  ; $6DC7: $E8 $FC
    add sp, -$08                                  ; $6DC9: $E8 $F8
    ret nc                                        ; $6DCB: $D0

    ld hl, sp-$10                                 ; $6DCC: $F8 $F0
    ld hl, sp+$70                                 ; $6DCE: $F8 $70
    ldh a, [$FFE0]                                ; $6DD0: $F0 $E0
    ldh a, [$FFE0]                                ; $6DD2: $F0 $E0
    ldh a, [rNR41]                                ; $6DD4: $F0 $20
    jr nz, jr_01B_6D98                            ; $6DD6: $20 $C0

    ldh [rP1], a                                  ; $6DD8: $E0 $00
    nop                                           ; $6DDA: $00
    nop                                           ; $6DDB: $00
    nop                                           ; $6DDC: $00
    nop                                           ; $6DDD: $00
    nop                                           ; $6DDE: $00
    nop                                           ; $6DDF: $00
    ld bc, $0200                                  ; $6DE0: $01 $00 $02
    ld bc, $0003                                  ; $6DE3: $01 $03 $00
    rlca                                          ; $6DE6: $07
    inc bc                                        ; $6DE7: $03
    rrca                                          ; $6DE8: $0F
    ld b, $0F                                     ; $6DE9: $06 $0F
    inc bc                                        ; $6DEB: $03
    inc bc                                        ; $6DEC: $03
    ld bc, $0103                                  ; $6DED: $01 $03 $01
    nop                                           ; $6DF0: $00
    nop                                           ; $6DF1: $00
    nop                                           ; $6DF2: $00
    nop                                           ; $6DF3: $00
    jr nc, jr_01B_6DF6                            ; $6DF4: $30 $00

jr_01B_6DF6:
    ld a, b                                       ; $6DF6: $78
    jr nc, jr_01B_6E71                            ; $6DF7: $30 $78

    jr c, jr_01B_6E73                             ; $6DF9: $38 $78

    nop                                           ; $6DFB: $00
    nop                                           ; $6DFC: $00
    nop                                           ; $6DFD: $00
    jr nz, jr_01B_6E00                            ; $6DFE: $20 $00

jr_01B_6E00:
    nop                                           ; $6E00: $00
    nop                                           ; $6E01: $00
    nop                                           ; $6E02: $00
    nop                                           ; $6E03: $00
    nop                                           ; $6E04: $00
    nop                                           ; $6E05: $00
    nop                                           ; $6E06: $00
    nop                                           ; $6E07: $00
    inc c                                         ; $6E08: $0C
    nop                                           ; $6E09: $00
    ld a, [bc]                                    ; $6E0A: $0A
    inc b                                         ; $6E0B: $04
    dec [hl]                                      ; $6E0C: $35
    ld [bc], a                                    ; $6E0D: $02
    push de                                       ; $6E0E: $D5
    ld [hl+], a                                   ; $6E0F: $22
    ld h, $C3                                     ; $6E10: $26 $C3
    ld h, $C3                                     ; $6E12: $26 $C3
    and $03                                       ; $6E14: $E6 $03
    and $C3                                       ; $6E16: $E6 $C3
    or $63                                        ; $6E18: $F6 $63
    cp $63                                        ; $6E1A: $FE $63
    xor $D3                                       ; $6E1C: $EE $D3
    cp $DB                                        ; $6E1E: $FE $DB
    ret nc                                        ; $6E20: $D0

    ld h, b                                       ; $6E21: $60
    ret nc                                        ; $6E22: $D0

    ld h, b                                       ; $6E23: $60
    ret nc                                        ; $6E24: $D0

    ld h, b                                       ; $6E25: $60
    ret z                                         ; $6E26: $C8

    ld [hl], b                                    ; $6E27: $70
    ret z                                         ; $6E28: $C8

    ld [hl], b                                    ; $6E29: $70
    ret z                                         ; $6E2A: $C8

    ld [hl], b                                    ; $6E2B: $70
    ret z                                         ; $6E2C: $C8

    ld [hl], b                                    ; $6E2D: $70
    ret z                                         ; $6E2E: $C8

    ld [hl], b                                    ; $6E2F: $70
    ret z                                         ; $6E30: $C8

    ld [hl], b                                    ; $6E31: $70
    call z, $FB70                                 ; $6E32: $CC $70 $FB
    inc c                                         ; $6E35: $0C
    ld l, [hl]                                    ; $6E36: $6E
    or e                                          ; $6E37: $B3
    inc sp                                        ; $6E38: $33
    call c, $DFBC                                 ; $6E39: $DC $BC $DF
    sbc a                                         ; $6E3C: $9F
    add sp, -$03                                  ; $6E3D: $E8 $FD
    add d                                         ; $6E3F: $82
    nop                                           ; $6E40: $00
    nop                                           ; $6E41: $00
    nop                                           ; $6E42: $00
    nop                                           ; $6E43: $00
    nop                                           ; $6E44: $00
    nop                                           ; $6E45: $00
    nop                                           ; $6E46: $00
    nop                                           ; $6E47: $00
    nop                                           ; $6E48: $00
    nop                                           ; $6E49: $00
    nop                                           ; $6E4A: $00
    nop                                           ; $6E4B: $00
    nop                                           ; $6E4C: $00
    nop                                           ; $6E4D: $00
    jr jr_01B_6E50                                ; $6E4E: $18 $00

jr_01B_6E50:
    jr c, jr_01B_6E62                             ; $6E50: $38 $10

    jr c, @+$12                                   ; $6E52: $38 $10

    ld a, b                                       ; $6E54: $78
    jr nc, @+$7A                                  ; $6E55: $30 $78

    jr nc, jr_01B_6ED1                            ; $6E57: $30 $78

    jr nc, @-$06                                  ; $6E59: $30 $F8

    ld [hl], b                                    ; $6E5B: $70
    ld hl, sp+$70                                 ; $6E5C: $F8 $70
    ld hl, sp+$70                                 ; $6E5E: $F8 $70
    ccf                                           ; $6E60: $3F
    inc e                                         ; $6E61: $1C

jr_01B_6E62:
    ccf                                           ; $6E62: $3F
    ld e, $3B                                     ; $6E63: $1E $3B
    rra                                           ; $6E65: $1F
    ld sp, hl                                     ; $6E66: $F9
    rra                                           ; $6E67: $1F
    db $FD                                        ; $6E68: $FD
    cp a                                          ; $6E69: $BF
    rst RST_38                                    ; $6E6A: $FF
    and a                                         ; $6E6B: $A7
    rst RST_30                                    ; $6E6C: $F7
    dec hl                                        ; $6E6D: $2B
    ld [hl], a                                    ; $6E6E: $77
    dec bc                                        ; $6E6F: $0B
    inc sp                                        ; $6E70: $33

jr_01B_6E71:
    inc c                                         ; $6E71: $0C
    di                                            ; $6E72: $F3

jr_01B_6E73:
    dec c                                         ; $6E73: $0D
    pop af                                        ; $6E74: $F1
    adc $F1                                       ; $6E75: $CE $F1
    adc $F5                                       ; $6E77: $CE $F5
    ld l, $D4                                     ; $6E79: $2E $D4
    ld l, a                                       ; $6E7B: $6F
    halt                                          ; $6E7C: $76
    xor a                                         ; $6E7D: $AF
    ld [hl], $CF                                  ; $6E7E: $36 $CF
    dec sp                                        ; $6E80: $3B
    inc b                                         ; $6E81: $04
    ld l, e                                       ; $6E82: $6B
    dec d                                         ; $6E83: $15
    ld d, a                                       ; $6E84: $57
    dec hl                                        ; $6E85: $2B
    ld [hl], e                                    ; $6E86: $73
    inc c                                         ; $6E87: $0C
    sbc c                                         ; $6E88: $99
    ld h, [hl]                                    ; $6E89: $66
    ret c                                         ; $6E8A: $D8

    daa                                           ; $6E8B: $27
    inc a                                         ; $6E8C: $3C
    dec bc                                        ; $6E8D: $0B
    dec l                                         ; $6E8E: $2D
    inc de                                        ; $6E8F: $13
    ld [de], a                                    ; $6E90: $12
    dec c                                         ; $6E91: $0D
    ld [$0607], sp                                ; $6E92: $08 $07 $06
    inc bc                                        ; $6E95: $03
    inc bc                                        ; $6E96: $03
    ld bc, $0001                                  ; $6E97: $01 $01 $00
    nop                                           ; $6E9A: $00
    nop                                           ; $6E9B: $00
    nop                                           ; $6E9C: $00
    nop                                           ; $6E9D: $00
    nop                                           ; $6E9E: $00
    nop                                           ; $6E9F: $00
    cp $78                                        ; $6EA0: $FE $78
    db $FC                                        ; $6EA2: $FC
    ld hl, sp-$02                                 ; $6EA3: $F8 $FE
    db $FC                                        ; $6EA5: $FC
    rst RST_38                                    ; $6EA6: $FF
    ld a, $BF                                     ; $6EA7: $3E $BF
    ld e, [hl]                                    ; $6EA9: $5E
    cp a                                          ; $6EAA: $BF
    ld e, [hl]                                    ; $6EAB: $5E
    ccf                                           ; $6EAC: $3F
    sbc $1E                                       ; $6EAD: $DE $1E
    db $ED                                        ; $6EAF: $ED
    ld e, [hl]                                    ; $6EB0: $5E
    db $ED                                        ; $6EB1: $ED
    call z, $EDF3                                 ; $6EB2: $CC $F3 $ED
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
    nop                                           ; $6EBF: $00
    nop                                           ; $6EC0: $00
    nop                                           ; $6EC1: $00
    nop                                           ; $6EC2: $00
    nop                                           ; $6EC3: $00
    nop                                           ; $6EC4: $00
    nop                                           ; $6EC5: $00
    ldh a, [rP1]                                  ; $6EC6: $F0 $00
    adc b                                         ; $6EC8: $88
    ldh a, [$FFFE]                                ; $6EC9: $F0 $FE
    nop                                           ; $6ECB: $00
    ld a, [hl+]                                   ; $6ECC: $2A
    call nz, $04CA                                ; $6ECD: $C4 $CA $04
    inc de                                        ; $6ED0: $13

jr_01B_6ED1:
    inc c                                         ; $6ED1: $0C
    inc de                                        ; $6ED2: $13
    inc c                                         ; $6ED3: $0C
    inc hl                                        ; $6ED4: $23
    dec e                                         ; $6ED5: $1D
    and e                                         ; $6ED6: $A3
    dec e                                         ; $6ED7: $1D
    ld l, e                                       ; $6ED8: $6B
    sbc l                                         ; $6ED9: $9D
    ld c, e                                       ; $6EDA: $4B
    cp h                                          ; $6EDB: $BC
    dec de                                        ; $6EDC: $1B
    db $FD                                        ; $6EDD: $FD
    dec de                                        ; $6EDE: $1B
    db $FC                                        ; $6EDF: $FC
    ei                                            ; $6EE0: $FB
    ldh a, [$FFFD]                                ; $6EE1: $F0 $FD
    ldh a, [c]                                    ; $6EE3: $F2
    ld a, [$F2F4]                                 ; $6EE4: $FA $F4 $F2
    call z, Call_000_18E7                         ; $6EE7: $CC $E7 $18
    push bc                                       ; $6EEA: $C5
    cp d                                          ; $6EEB: $BA
    adc a                                         ; $6EEC: $8F
    ld [hl], b                                    ; $6EED: $70
    dec l                                         ; $6EEE: $2D
    ldh a, [c]                                    ; $6EEF: $F2
    ld d, e                                       ; $6EF0: $53
    db $EC                                        ; $6EF1: $EC
    push bc                                       ; $6EF2: $C5
    ld a, [$F09E]                                 ; $6EF3: $FA $9E $F0
    ld hl, sp-$20                                 ; $6EF6: $F8 $E0
    db $F4                                        ; $6EF8: $F4
    adc b                                         ; $6EF9: $88
    db $FC                                        ; $6EFA: $FC
    nop                                           ; $6EFB: $00
    nop                                           ; $6EFC: $00
    nop                                           ; $6EFD: $00
    nop                                           ; $6EFE: $00
    nop                                           ; $6EFF: $00
    sub a                                         ; $6F00: $97
    rst RST_28                                    ; $6F01: $EF
    rst RST_00                                    ; $6F02: $C7
    rst RST_38                                    ; $6F03: $FF
    ld [hl], a                                    ; $6F04: $77
    rst RST_38                                    ; $6F05: $FF
    rst RST_38                                    ; $6F06: $FF
    rst RST_38                                    ; $6F07: $FF
    rst RST_38                                    ; $6F08: $FF
    ld a, a                                       ; $6F09: $7F
    ld a, a                                       ; $6F0A: $7F
    rrca                                          ; $6F0B: $0F
    rrca                                          ; $6F0C: $0F
    ld bc, $0001                                  ; $6F0D: $01 $01 $00
    nop                                           ; $6F10: $00
    nop                                           ; $6F11: $00
    nop                                           ; $6F12: $00
    nop                                           ; $6F13: $00
    nop                                           ; $6F14: $00
    nop                                           ; $6F15: $00
    nop                                           ; $6F16: $00
    nop                                           ; $6F17: $00
    nop                                           ; $6F18: $00
    nop                                           ; $6F19: $00
    nop                                           ; $6F1A: $00
    nop                                           ; $6F1B: $00
    nop                                           ; $6F1C: $00
    nop                                           ; $6F1D: $00
    nop                                           ; $6F1E: $00
    nop                                           ; $6F1F: $00
    cp d                                          ; $6F20: $BA
    db $FD                                        ; $6F21: $FD
    ld hl, sp-$01                                 ; $6F22: $F8 $FF
    ei                                            ; $6F24: $FB
    rst RST_38                                    ; $6F25: $FF
    rst RST_38                                    ; $6F26: $FF
    rst RST_38                                    ; $6F27: $FF
    rst RST_38                                    ; $6F28: $FF
    rst RST_38                                    ; $6F29: $FF
    rst RST_38                                    ; $6F2A: $FF
    db $FC                                        ; $6F2B: $FC
    db $FC                                        ; $6F2C: $FC
    ldh [$FFE0], a                                ; $6F2D: $E0 $E0
    nop                                           ; $6F2F: $00
    nop                                           ; $6F30: $00
    nop                                           ; $6F31: $00
    nop                                           ; $6F32: $00
    nop                                           ; $6F33: $00
    nop                                           ; $6F34: $00
    nop                                           ; $6F35: $00
    nop                                           ; $6F36: $00
    nop                                           ; $6F37: $00
    nop                                           ; $6F38: $00
    nop                                           ; $6F39: $00
    nop                                           ; $6F3A: $00
    nop                                           ; $6F3B: $00
    nop                                           ; $6F3C: $00
    nop                                           ; $6F3D: $00
    nop                                           ; $6F3E: $00
    nop                                           ; $6F3F: $00
    ccf                                           ; $6F40: $3F
    inc e                                         ; $6F41: $1C
    ccf                                           ; $6F42: $3F
    ld e, $3B                                     ; $6F43: $1E $3B
    rra                                           ; $6F45: $1F
    ld sp, hl                                     ; $6F46: $F9
    rra                                           ; $6F47: $1F
    db $FD                                        ; $6F48: $FD
    cp a                                          ; $6F49: $BF
    rst RST_38                                    ; $6F4A: $FF
    cp a                                          ; $6F4B: $BF
    rst RST_38                                    ; $6F4C: $FF
    inc sp                                        ; $6F4D: $33
    ld a, a                                       ; $6F4E: $7F
    inc bc                                        ; $6F4F: $03
    ccf                                           ; $6F50: $3F
    inc e                                         ; $6F51: $1C
    rst RST_38                                    ; $6F52: $FF
    rra                                           ; $6F53: $1F
    rst RST_38                                    ; $6F54: $FF
    ret nc                                        ; $6F55: $D0

    rst RST_38                                    ; $6F56: $FF
    rst RST_08                                    ; $6F57: $CF
    rst RST_38                                    ; $6F58: $FF
    ccf                                           ; $6F59: $3F
    db $D3                                        ; $6F5A: $D3
    rst RST_38                                    ; $6F5B: $FF
    db $EB                                        ; $6F5C: $EB
    rst RST_38                                    ; $6F5D: $FF
    rst RST_38                                    ; $6F5E: $FF
    rst RST_38                                    ; $6F5F: $FF
    nop                                           ; $6F60: $00
    nop                                           ; $6F61: $00
    nop                                           ; $6F62: $00
    nop                                           ; $6F63: $00
    nop                                           ; $6F64: $00
    nop                                           ; $6F65: $00
    ldh a, [rP1]                                  ; $6F66: $F0 $00
    adc b                                         ; $6F68: $88
    ldh a, [$FFF8]                                ; $6F69: $F0 $F8
    nop                                           ; $6F6B: $00
    jr nz, @-$3E                                  ; $6F6C: $20 $C0

    ret nz                                        ; $6F6E: $C0

    nop                                           ; $6F6F: $00
    ld bc, $0100                                  ; $6F70: $01 $00 $01
    nop                                           ; $6F73: $00
    inc bc                                        ; $6F74: $03
    ld bc, $030F                                  ; $6F75: $01 $0F $03
    rst RST_38                                    ; $6F78: $FF
    rrca                                          ; $6F79: $0F
    rst RST_38                                    ; $6F7A: $FF
    db $FC                                        ; $6F7B: $FC
    rst RST_38                                    ; $6F7C: $FF
    pop hl                                        ; $6F7D: $E1
    rst RST_38                                    ; $6F7E: $FF
    sbc [hl]                                      ; $6F7F: $9E
    dec hl                                        ; $6F80: $2B
    inc b                                         ; $6F81: $04
    ld e, e                                       ; $6F82: $5B
    dec h                                         ; $6F83: $25
    ld c, a                                       ; $6F84: $4F
    inc sp                                        ; $6F85: $33
    ld l, a                                       ; $6F86: $6F
    inc d                                         ; $6F87: $14
    sbc a                                         ; $6F88: $9F
    ld h, a                                       ; $6F89: $67
    pop de                                        ; $6F8A: $D1
    cpl                                           ; $6F8B: $2F
    ld a, [hl-]                                   ; $6F8C: $3A
    rrca                                          ; $6F8D: $0F
    dec e                                         ; $6F8E: $1D
    rrca                                          ; $6F8F: $0F
    rrca                                          ; $6F90: $0F
    rlca                                          ; $6F91: $07
    rlca                                          ; $6F92: $07
    ld bc, $0001                                  ; $6F93: $01 $01 $00
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
    cp $78                                        ; $6FA0: $FE $78
    db $FC                                        ; $6FA2: $FC
    ld hl, sp-$02                                 ; $6FA3: $F8 $FE
    db $FC                                        ; $6FA5: $FC
    rst RST_38                                    ; $6FA6: $FF
    ld a, [hl]                                    ; $6FA7: $7E
    rst RST_38                                    ; $6FA8: $FF
    rst RST_38                                    ; $6FA9: $FF
    rst RST_38                                    ; $6FAA: $FF
    rst RST_38                                    ; $6FAB: $FF
    rst RST_38                                    ; $6FAC: $FF
    rst RST_38                                    ; $6FAD: $FF
    rst RST_38                                    ; $6FAE: $FF
    rst RST_38                                    ; $6FAF: $FF
    rst RST_38                                    ; $6FB0: $FF
    ld a, a                                       ; $6FB1: $7F
    rst RST_38                                    ; $6FB2: $FF
    rst RST_38                                    ; $6FB3: $FF
    rst RST_38                                    ; $6FB4: $FF
    rst RST_38                                    ; $6FB5: $FF
    rst RST_38                                    ; $6FB6: $FF
    rst RST_38                                    ; $6FB7: $FF
    rst RST_38                                    ; $6FB8: $FF
    rst RST_38                                    ; $6FB9: $FF
    cp a                                          ; $6FBA: $BF
    rst RST_38                                    ; $6FBB: $FF
    push bc                                       ; $6FBC: $C5
    ccf                                           ; $6FBD: $3F
    ccf                                           ; $6FBE: $3F
    nop                                           ; $6FBF: $00
    ld hl, sp-$10                                 ; $6FC0: $F8 $F0
    ld hl, sp-$10                                 ; $6FC2: $F8 $F0
    ld hl, sp-$10                                 ; $6FC4: $F8 $F0
    cp $C0                                        ; $6FC6: $FE $C0
    ei                                            ; $6FC8: $FB
    inc [hl]                                      ; $6FC9: $34
    ld sp, hl                                     ; $6FCA: $F9
    or $FE                                        ; $6FCB: $F6 $FE
    ldh a, [$FFF1]                                ; $6FCD: $F0 $F1
    xor $FF                                       ; $6FCF: $EE $FF
    ldh [$FFF9], a                                ; $6FD1: $E0 $F9
    add $F6                                       ; $6FD3: $C6 $F6
    and b                                         ; $6FD5: $A0
    ld hl, sp-$50                                 ; $6FD6: $F8 $B0
    db $F4                                        ; $6FD8: $F4
    ld l, b                                       ; $6FD9: $68
    db $FC                                        ; $6FDA: $FC
    nop                                           ; $6FDB: $00
    nop                                           ; $6FDC: $00
    nop                                           ; $6FDD: $00
    nop                                           ; $6FDE: $00
    nop                                           ; $6FDF: $00
    rst RST_38                                    ; $6FE0: $FF
    rst RST_38                                    ; $6FE1: $FF
    rst RST_38                                    ; $6FE2: $FF
    cp $FF                                        ; $6FE3: $FE $FF
    add hl, sp                                    ; $6FE5: $39
    ccf                                           ; $6FE6: $3F
    rlca                                          ; $6FE7: $07
    rlca                                          ; $6FE8: $07
    inc bc                                        ; $6FE9: $03
    inc bc                                        ; $6FEA: $03
    nop                                           ; $6FEB: $00
    nop                                           ; $6FEC: $00
    nop                                           ; $6FED: $00
    nop                                           ; $6FEE: $00
    nop                                           ; $6FEF: $00
    nop                                           ; $6FF0: $00
    nop                                           ; $6FF1: $00
    nop                                           ; $6FF2: $00
    nop                                           ; $6FF3: $00
    nop                                           ; $6FF4: $00
    nop                                           ; $6FF5: $00
    nop                                           ; $6FF6: $00
    nop                                           ; $6FF7: $00
    nop                                           ; $6FF8: $00
    nop                                           ; $6FF9: $00
    nop                                           ; $6FFA: $00
    nop                                           ; $6FFB: $00
    nop                                           ; $6FFC: $00
    nop                                           ; $6FFD: $00
    nop                                           ; $6FFE: $00
    nop                                           ; $6FFF: $00
    rst RST_38                                    ; $7000: $FF
    cp $B3                                        ; $7001: $FE $B3
    rst RST_38                                    ; $7003: $FF
    rst RST_28                                    ; $7004: $EF
    rst RST_38                                    ; $7005: $FF
    rst RST_10                                    ; $7006: $D7
    rst RST_38                                    ; $7007: $FF
    rst RST_38                                    ; $7008: $FF
    rst RST_38                                    ; $7009: $FF
    rst RST_38                                    ; $700A: $FF
    db $FC                                        ; $700B: $FC
    ld a, h                                       ; $700C: $7C
    ldh [$FFE0], a                                ; $700D: $E0 $E0
    nop                                           ; $700F: $00
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
    ret nc                                        ; $7020: $D0

    and b                                         ; $7021: $A0
    ldh a, [$FFC0]                                ; $7022: $F0 $C0
    db $FC                                        ; $7024: $FC
    ret nz                                        ; $7025: $C0

    ld a, a                                       ; $7026: $7F
    sbc h                                         ; $7027: $9C
    cp a                                          ; $7028: $BF
    ld e, a                                       ; $7029: $5F
    rst RST_38                                    ; $702A: $FF
    sbc a                                         ; $702B: $9F
    rst RST_38                                    ; $702C: $FF
    cp a                                          ; $702D: $BF
    rst RST_38                                    ; $702E: $FF
    cp a                                          ; $702F: $BF
    rst RST_38                                    ; $7030: $FF
    ld a, c                                       ; $7031: $79
    push af                                       ; $7032: $F5
    cp $FA                                        ; $7033: $FE $FA
    ld a, a                                       ; $7035: $7F
    rst RST_38                                    ; $7036: $FF
    ld a, a                                       ; $7037: $7F
    cp $7F                                        ; $7038: $FE $7F
    rst RST_38                                    ; $703A: $FF
    cp a                                          ; $703B: $BF
    rst RST_38                                    ; $703C: $FF
    cp a                                          ; $703D: $BF
    rst RST_38                                    ; $703E: $FF
    adc a                                         ; $703F: $8F
    rst RST_18                                    ; $7040: $DF
    rlca                                          ; $7041: $07
    rra                                           ; $7042: $1F
    ld [$0C1F], sp                                ; $7043: $08 $1F $0C
    dec e                                         ; $7046: $1D
    ld [$183D], sp                                ; $7047: $08 $3D $18
    dec a                                         ; $704A: $3D
    jr jr_01B_7086                                ; $704B: $18 $39

    nop                                           ; $704D: $00
    inc bc                                        ; $704E: $03
    ld bc, $0003                                  ; $704F: $01 $03 $00
    inc b                                         ; $7052: $04
    inc bc                                        ; $7053: $03
    dec b                                         ; $7054: $05
    ld [bc], a                                    ; $7055: $02
    rlca                                          ; $7056: $07
    nop                                           ; $7057: $00
    ld bc, $0300                                  ; $7058: $01 $00 $03
    nop                                           ; $705B: $00
    inc b                                         ; $705C: $04
    inc bc                                        ; $705D: $03
    rlca                                          ; $705E: $07
    nop                                           ; $705F: $00

jr_01B_7060:
    ld bc, $0200                                  ; $7060: $01 $00 $02
    ld bc, $0102                                  ; $7063: $01 $02 $01
    dec b                                         ; $7066: $05
    ld [bc], a                                    ; $7067: $02
    ld c, $05                                     ; $7068: $0E $05
    db $FC                                        ; $706A: $FC
    inc bc                                        ; $706B: $03
    dec de                                        ; $706C: $1B
    rst RST_20                                    ; $706D: $E7
    rra                                           ; $706E: $1F
    rst RST_28                                    ; $706F: $EF
    db $FC                                        ; $7070: $FC
    rst RST_28                                    ; $7071: $EF
    ld sp, hl                                     ; $7072: $F9
    rrca                                          ; $7073: $0F
    rst RST_38                                    ; $7074: $FF
    sub a                                         ; $7075: $97
    rst RST_38                                    ; $7076: $FF
    cp a                                          ; $7077: $BF
    rst RST_38                                    ; $7078: $FF
    ld [hl], a                                    ; $7079: $77
    rst RST_38                                    ; $707A: $FF
    rst RST_08                                    ; $707B: $CF
    rst RST_38                                    ; $707C: $FF
    cp $FF                                        ; $707D: $FE $FF
    rst RST_08                                    ; $707F: $CF
    nop                                           ; $7080: $00
    nop                                           ; $7081: $00
    nop                                           ; $7082: $00
    nop                                           ; $7083: $00
    nop                                           ; $7084: $00
    nop                                           ; $7085: $00

jr_01B_7086:
    nop                                           ; $7086: $00
    nop                                           ; $7087: $00
    nop                                           ; $7088: $00
    nop                                           ; $7089: $00
    nop                                           ; $708A: $00
    nop                                           ; $708B: $00
    nop                                           ; $708C: $00
    nop                                           ; $708D: $00
    nop                                           ; $708E: $00
    nop                                           ; $708F: $00
    nop                                           ; $7090: $00
    nop                                           ; $7091: $00
    ret nz                                        ; $7092: $C0

    nop                                           ; $7093: $00
    and b                                         ; $7094: $A0
    ld b, b                                       ; $7095: $40
    cp b                                          ; $7096: $B8
    ld b, b                                       ; $7097: $40
    ld l, b                                       ; $7098: $68
    sub b                                         ; $7099: $90
    ld d, b                                       ; $709A: $50
    and b                                         ; $709B: $A0
    or b                                          ; $709C: $B0
    ld b, b                                       ; $709D: $40
    jr nc, jr_01B_7060                            ; $709E: $30 $C0

    nop                                           ; $70A0: $00
    nop                                           ; $70A1: $00
    nop                                           ; $70A2: $00
    nop                                           ; $70A3: $00
    rlca                                          ; $70A4: $07
    nop                                           ; $70A5: $00
    ld a, b                                       ; $70A6: $78
    rlca                                          ; $70A7: $07
    add b                                         ; $70A8: $80
    ld a, a                                       ; $70A9: $7F
    ld a, a                                       ; $70AA: $7F
    rst RST_38                                    ; $70AB: $FF
    rst RST_38                                    ; $70AC: $FF
    nop                                           ; $70AD: $00
    inc bc                                        ; $70AE: $03
    nop                                           ; $70AF: $00
    ld b, $01                                     ; $70B0: $06 $01
    rst RST_38                                    ; $70B2: $FF
    ld b, $1F                                     ; $70B3: $06 $1F
    rst RST_28                                    ; $70B5: $EF
    sbc a                                         ; $70B6: $9F
    ld l, c                                       ; $70B7: $69
    ld e, a                                       ; $70B8: $5F
    dec hl                                        ; $70B9: $2B
    ccf                                           ; $70BA: $3F
    ld c, $0E                                     ; $70BB: $0E $0E
    inc b                                         ; $70BD: $04
    ld b, $00                                     ; $70BE: $06 $00
    nop                                           ; $70C0: $00
    nop                                           ; $70C1: $00
    nop                                           ; $70C2: $00
    nop                                           ; $70C3: $00
    nop                                           ; $70C4: $00
    nop                                           ; $70C5: $00
    nop                                           ; $70C6: $00
    nop                                           ; $70C7: $00
    nop                                           ; $70C8: $00
    nop                                           ; $70C9: $00
    nop                                           ; $70CA: $00
    nop                                           ; $70CB: $00

jr_01B_70CC:
    nop                                           ; $70CC: $00
    nop                                           ; $70CD: $00
    nop                                           ; $70CE: $00
    nop                                           ; $70CF: $00
    nop                                           ; $70D0: $00
    nop                                           ; $70D1: $00
    ld bc, $0200                                  ; $70D2: $01 $00 $02
    ld bc, $0205                                  ; $70D5: $01 $05 $02
    ld b, $00                                     ; $70D8: $06 $00
    nop                                           ; $70DA: $00
    nop                                           ; $70DB: $00
    ld bc, $0100                                  ; $70DC: $01 $00 $01
    nop                                           ; $70DF: $00
    rst RST_38                                    ; $70E0: $FF
    ld a, a                                       ; $70E1: $7F
    rst RST_38                                    ; $70E2: $FF
    cp $FF                                        ; $70E3: $FE $FF
    cp $FF                                        ; $70E5: $FE $FF
    db $FC                                        ; $70E7: $FC
    rst RST_38                                    ; $70E8: $FF
    ld [hl-], a                                   ; $70E9: $32
    ccf                                           ; $70EA: $3F
    call $B87D                                    ; $70EB: $CD $7D $B8
    db $FC                                        ; $70EE: $FC
    ld a, b                                       ; $70EF: $78
    ld hl, sp-$10                                 ; $70F0: $F8 $F0
    ld sp, hl                                     ; $70F2: $F9
    nop                                           ; $70F3: $00
    inc bc                                        ; $70F4: $03
    ld bc, $0007                                  ; $70F5: $01 $07 $00
    ld b, $01                                     ; $70F8: $06 $01
    ld b, $01                                     ; $70FA: $06 $01
    ld [bc], a                                    ; $70FC: $02
    ld bc, $0001                                  ; $70FD: $01 $01 $00
    nop                                           ; $7100: $00
    nop                                           ; $7101: $00
    nop                                           ; $7102: $00
    nop                                           ; $7103: $00
    nop                                           ; $7104: $00
    nop                                           ; $7105: $00
    nop                                           ; $7106: $00
    nop                                           ; $7107: $00
    ret nz                                        ; $7108: $C0

    nop                                           ; $7109: $00
    jr nz, jr_01B_70CC                            ; $710A: $20 $C0

    ret nc                                        ; $710C: $D0

    ldh [$FFA8], a                                ; $710D: $E0 $A8
    ldh a, [$FFD4]                                ; $710F: $F0 $D4
    ld hl, sp-$0C                                 ; $7111: $F8 $F4
    ld hl, sp-$06                                 ; $7113: $F8 $FA
    ld a, h                                       ; $7115: $7C
    ld a, [$FE7C]                                 ; $7116: $FA $7C $FE
    ld a, h                                       ; $7119: $7C
    rst RST_38                                    ; $711A: $FF
    ld a, [hl]                                    ; $711B: $7E
    rst RST_38                                    ; $711C: $FF
    ld a, [hl]                                    ; $711D: $7E
    rst RST_38                                    ; $711E: $FF
    ld h, [hl]                                    ; $711F: $66
    rst RST_10                                    ; $7120: $D7
    ld a, d                                       ; $7121: $7A
    db $EB                                        ; $7122: $EB
    db $FD                                        ; $7123: $FD
    rst RST_38                                    ; $7124: $FF
    db $FD                                        ; $7125: $FD
    ei                                            ; $7126: $FB
    cp $FF                                        ; $7127: $FE $FF
    cp $FF                                        ; $7129: $FE $FF
    ld a, [hl]                                    ; $712B: $7E
    rst RST_38                                    ; $712C: $FF
    ld a, [hl]                                    ; $712D: $7E
    rst RST_38                                    ; $712E: $FF
    ld a, $FF                                     ; $712F: $3E $FF
    ld c, h                                       ; $7131: $4C
    rst RST_38                                    ; $7132: $FF
    db $FC                                        ; $7133: $FC
    rst RST_38                                    ; $7134: $FF
    db $FC                                        ; $7135: $FC
    db $FD                                        ; $7136: $FD
    jr c, @-$46                                   ; $7137: $38 $B8

    ld b, b                                       ; $7139: $40
    sub b                                         ; $713A: $90
    ld h, b                                       ; $713B: $60
    ld d, b                                       ; $713C: $50
    and b                                         ; $713D: $A0
    ldh [rP1], a                                  ; $713E: $E0 $00
    nop                                           ; $7140: $00
    nop                                           ; $7141: $00
    add b                                         ; $7142: $80
    nop                                           ; $7143: $00
    add b                                         ; $7144: $80
    nop                                           ; $7145: $00
    add b                                         ; $7146: $80
    nop                                           ; $7147: $00
    ret nz                                        ; $7148: $C0

    add b                                         ; $7149: $80
    ret nz                                        ; $714A: $C0

    add b                                         ; $714B: $80
    ldh [$FFC0], a                                ; $714C: $E0 $C0
    ldh [$FFC0], a                                ; $714E: $E0 $C0
    ldh a, [$FFE0]                                ; $7150: $F0 $E0
    ldh a, [$FFE0]                                ; $7152: $F0 $E0
    ld hl, sp-$10                                 ; $7154: $F8 $F0
    db $FC                                        ; $7156: $FC
    ld a, b                                       ; $7157: $78
    ld a, [hl]                                    ; $7158: $7E
    inc e                                         ; $7159: $1C
    rra                                           ; $715A: $1F
    ld b, $07                                     ; $715B: $06 $07
    nop                                           ; $715D: $00
    nop                                           ; $715E: $00
    nop                                           ; $715F: $00
    nop                                           ; $7160: $00
    nop                                           ; $7161: $00
    ldh [rP1], a                                  ; $7162: $E0 $00
    db $FC                                        ; $7164: $FC
    ld h, b                                       ; $7165: $60
    rst RST_38                                    ; $7166: $FF
    inc a                                         ; $7167: $3C
    rst RST_38                                    ; $7168: $FF
    ccf                                           ; $7169: $3F
    rst RST_38                                    ; $716A: $FF
    rra                                           ; $716B: $1F
    rst RST_38                                    ; $716C: $FF
    rra                                           ; $716D: $1F
    rst RST_38                                    ; $716E: $FF
    rra                                           ; $716F: $1F
    rst RST_38                                    ; $7170: $FF
    add hl, de                                    ; $7171: $19
    push af                                       ; $7172: $F5
    ld e, $FA                                     ; $7173: $1E $FA
    rra                                           ; $7175: $1F
    rst RST_38                                    ; $7176: $FF
    rra                                           ; $7177: $1F
    cp $3F                                        ; $7178: $FE $3F
    rst RST_38                                    ; $717A: $FF
    ccf                                           ; $717B: $3F
    rst RST_38                                    ; $717C: $FF
    ccf                                           ; $717D: $3F
    rst RST_38                                    ; $717E: $FF
    adc a                                         ; $717F: $8F
    nop                                           ; $7180: $00
    nop                                           ; $7181: $00
    rlca                                          ; $7182: $07
    nop                                           ; $7183: $00
    rra                                           ; $7184: $1F
    nop                                           ; $7185: $00
    ldh [$FF1F], a                                ; $7186: $E0 $1F
    nop                                           ; $7188: $00
    rst RST_38                                    ; $7189: $FF
    rst RST_38                                    ; $718A: $FF
    nop                                           ; $718B: $00
    rra                                           ; $718C: $1F
    ld [bc], a                                    ; $718D: $02
    ld a, a                                       ; $718E: $7F
    cp a                                          ; $718F: $BF
    ld a, a                                       ; $7190: $7F
    and a                                         ; $7191: $A7
    ld a, a                                       ; $7192: $7F
    xor a                                         ; $7193: $AF
    rst RST_38                                    ; $7194: $FF
    jr c, @+$41                                   ; $7195: $38 $3F

    db $10                                        ; $7197: $10
    rra                                           ; $7198: $1F
    ld bc, $030F                                  ; $7199: $01 $0F $03
    rlca                                          ; $719C: $07
    nop                                           ; $719D: $00
    ld bc, $0100                                  ; $719E: $01 $00 $01
    nop                                           ; $71A1: $00
    ld bc, $0300                                  ; $71A2: $01 $00 $03
    ld bc, $0003                                  ; $71A5: $01 $03 $00
    inc b                                         ; $71A8: $04
    inc bc                                        ; $71A9: $03
    dec b                                         ; $71AA: $05
    ld [bc], a                                    ; $71AB: $02
    rlca                                          ; $71AC: $07
    nop                                           ; $71AD: $00
    ld bc, $0300                                  ; $71AE: $01 $00 $03
    nop                                           ; $71B1: $00
    inc b                                         ; $71B2: $04
    inc bc                                        ; $71B3: $03
    rlca                                          ; $71B4: $07
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
    nop                                           ; $71C0: $00
    nop                                           ; $71C1: $00
    nop                                           ; $71C2: $00
    nop                                           ; $71C3: $00
    nop                                           ; $71C4: $00
    nop                                           ; $71C5: $00
    nop                                           ; $71C6: $00
    nop                                           ; $71C7: $00
    nop                                           ; $71C8: $00
    nop                                           ; $71C9: $00
    nop                                           ; $71CA: $00
    nop                                           ; $71CB: $00
    nop                                           ; $71CC: $00
    nop                                           ; $71CD: $00
    nop                                           ; $71CE: $00
    nop                                           ; $71CF: $00
    nop                                           ; $71D0: $00
    nop                                           ; $71D1: $00
    ld bc, $0600                                  ; $71D2: $01 $00 $06
    ld bc, $0817                                  ; $71D5: $01 $17 $08
    jr jr_01B_71DA                                ; $71D8: $18 $00

jr_01B_71DA:
    inc b                                         ; $71DA: $04
    inc bc                                        ; $71DB: $03
    ld [bc], a                                    ; $71DC: $02
    ld bc, $0001                                  ; $71DD: $01 $01 $00
    nop                                           ; $71E0: $00
    nop                                           ; $71E1: $00
    ldh [rP1], a                                  ; $71E2: $E0 $00
    db $FC                                        ; $71E4: $FC
    ld h, b                                       ; $71E5: $60
    rst RST_38                                    ; $71E6: $FF
    inc a                                         ; $71E7: $3C
    rst RST_38                                    ; $71E8: $FF
    ccf                                           ; $71E9: $3F
    rst RST_38                                    ; $71EA: $FF
    rra                                           ; $71EB: $1F
    rst RST_38                                    ; $71EC: $FF
    rra                                           ; $71ED: $1F
    rst RST_38                                    ; $71EE: $FF
    rra                                           ; $71EF: $1F
    rst RST_38                                    ; $71F0: $FF
    add hl, de                                    ; $71F1: $19
    push af                                       ; $71F2: $F5
    ld e, $FA                                     ; $71F3: $1E $FA
    rra                                           ; $71F5: $1F
    rst RST_38                                    ; $71F6: $FF
    rra                                           ; $71F7: $1F
    cp $3F                                        ; $71F8: $FE $3F
    rst RST_38                                    ; $71FA: $FF
    ccf                                           ; $71FB: $3F
    rst RST_38                                    ; $71FC: $FF
    cp a                                          ; $71FD: $BF
    rst RST_38                                    ; $71FE: $FF
    adc a                                         ; $71FF: $8F
    nop                                           ; $7200: $00
    nop                                           ; $7201: $00
    rlca                                          ; $7202: $07
    nop                                           ; $7203: $00
    rrca                                          ; $7204: $0F
    nop                                           ; $7205: $00
    rra                                           ; $7206: $1F
    nop                                           ; $7207: $00
    rra                                           ; $7208: $1F
    nop                                           ; $7209: $00
    rra                                           ; $720A: $1F
    nop                                           ; $720B: $00
    rra                                           ; $720C: $1F
    nop                                           ; $720D: $00
    rra                                           ; $720E: $1F
    nop                                           ; $720F: $00
    rra                                           ; $7210: $1F
    nop                                           ; $7211: $00
    rra                                           ; $7212: $1F
    nop                                           ; $7213: $00
    rra                                           ; $7214: $1F
    nop                                           ; $7215: $00
    rra                                           ; $7216: $1F
    nop                                           ; $7217: $00
    rrca                                          ; $7218: $0F
    nop                                           ; $7219: $00
    rlca                                          ; $721A: $07
    nop                                           ; $721B: $00
    ld bc, $0100                                  ; $721C: $01 $00 $01
    nop                                           ; $721F: $00
    ld bc, $0100                                  ; $7220: $01 $00 $01
    nop                                           ; $7223: $00
    inc bc                                        ; $7224: $03
    ld bc, $0003                                  ; $7225: $01 $03 $00
    inc b                                         ; $7228: $04
    inc bc                                        ; $7229: $03
    dec b                                         ; $722A: $05
    ld [bc], a                                    ; $722B: $02
    rlca                                          ; $722C: $07
    nop                                           ; $722D: $00
    ld bc, $0300                                  ; $722E: $01 $00 $03
    nop                                           ; $7231: $00
    inc b                                         ; $7232: $04
    inc bc                                        ; $7233: $03
    rlca                                          ; $7234: $07
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
    nop                                           ; $7240: $00
    nop                                           ; $7241: $00
    ldh [rP1], a                                  ; $7242: $E0 $00
    db $FC                                        ; $7244: $FC
    ld h, b                                       ; $7245: $60
    rst RST_38                                    ; $7246: $FF
    inc a                                         ; $7247: $3C
    rst RST_38                                    ; $7248: $FF
    ccf                                           ; $7249: $3F
    rst RST_38                                    ; $724A: $FF
    sbc a                                         ; $724B: $9F
    rst RST_38                                    ; $724C: $FF
    sbc a                                         ; $724D: $9F
    rst RST_38                                    ; $724E: $FF
    sbc a                                         ; $724F: $9F
    rst RST_38                                    ; $7250: $FF
    sbc c                                         ; $7251: $99
    push af                                       ; $7252: $F5
    sbc [hl]                                      ; $7253: $9E
    ld a, [$FF1F]                                 ; $7254: $FA $1F $FF
    rra                                           ; $7257: $1F
    cp $3F                                        ; $7258: $FE $3F
    rst RST_38                                    ; $725A: $FF
    ccf                                           ; $725B: $3F
    rst RST_38                                    ; $725C: $FF
    cp a                                          ; $725D: $BF
    rst RST_38                                    ; $725E: $FF
    adc a                                         ; $725F: $8F
    nop                                           ; $7260: $00
    nop                                           ; $7261: $00
    rlca                                          ; $7262: $07
    nop                                           ; $7263: $00
    rrca                                          ; $7264: $0F
    nop                                           ; $7265: $00
    add hl, sp                                    ; $7266: $39
    ld b, $5F                                     ; $7267: $06 $5F
    daa                                           ; $7269: $27
    cp h                                          ; $726A: $BC
    ld b, e                                       ; $726B: $43
    cp a                                          ; $726C: $BF
    ld b, e                                       ; $726D: $43
    cp h                                          ; $726E: $BC
    ld b, e                                       ; $726F: $43
    cp a                                          ; $7270: $BF
    ld b, e                                       ; $7271: $43
    cp h                                          ; $7272: $BC
    ld b, e                                       ; $7273: $43
    ld e, a                                       ; $7274: $5F
    daa                                           ; $7275: $27
    add hl, sp                                    ; $7276: $39
    ld b, $0F                                     ; $7277: $06 $0F
    nop                                           ; $7279: $00
    rlca                                          ; $727A: $07
    nop                                           ; $727B: $00
    ld bc, $0100                                  ; $727C: $01 $00 $01
    nop                                           ; $727F: $00
    ld bc, $0100                                  ; $7280: $01 $00 $01
    nop                                           ; $7283: $00
    inc bc                                        ; $7284: $03
    ld bc, $0003                                  ; $7285: $01 $03 $00
    inc b                                         ; $7288: $04
    inc bc                                        ; $7289: $03
    dec b                                         ; $728A: $05
    ld [bc], a                                    ; $728B: $02
    rlca                                          ; $728C: $07
    nop                                           ; $728D: $00
    ld bc, $0300                                  ; $728E: $01 $00 $03
    nop                                           ; $7291: $00
    inc b                                         ; $7292: $04
    inc bc                                        ; $7293: $03
    rlca                                          ; $7294: $07
    nop                                           ; $7295: $00
    nop                                           ; $7296: $00
    nop                                           ; $7297: $00
    nop                                           ; $7298: $00
    nop                                           ; $7299: $00
    nop                                           ; $729A: $00
    nop                                           ; $729B: $00
    nop                                           ; $729C: $00
    nop                                           ; $729D: $00
    nop                                           ; $729E: $00
    nop                                           ; $729F: $00
    nop                                           ; $72A0: $00
    nop                                           ; $72A1: $00
    ldh [rP1], a                                  ; $72A2: $E0 $00
    db $FC                                        ; $72A4: $FC
    ld h, b                                       ; $72A5: $60
    rst RST_38                                    ; $72A6: $FF
    inc a                                         ; $72A7: $3C
    rst RST_38                                    ; $72A8: $FF
    ccf                                           ; $72A9: $3F
    rst RST_38                                    ; $72AA: $FF
    sbc a                                         ; $72AB: $9F
    rst RST_38                                    ; $72AC: $FF
    sbc a                                         ; $72AD: $9F
    rst RST_38                                    ; $72AE: $FF
    sbc a                                         ; $72AF: $9F
    rst RST_38                                    ; $72B0: $FF
    sbc c                                         ; $72B1: $99
    push af                                       ; $72B2: $F5
    sbc [hl]                                      ; $72B3: $9E
    ld a, [$FF1F]                                 ; $72B4: $FA $1F $FF
    rra                                           ; $72B7: $1F
    cp $3F                                        ; $72B8: $FE $3F
    rst RST_38                                    ; $72BA: $FF
    ccf                                           ; $72BB: $3F
    rst RST_38                                    ; $72BC: $FF
    cp a                                          ; $72BD: $BF
    rst RST_38                                    ; $72BE: $FF
    adc a                                         ; $72BF: $8F
    nop                                           ; $72C0: $00
    nop                                           ; $72C1: $00
    rlca                                          ; $72C2: $07
    nop                                           ; $72C3: $00
    rrca                                          ; $72C4: $0F
    nop                                           ; $72C5: $00
    ld sp, hl                                     ; $72C6: $F9
    ld b, $0F                                     ; $72C7: $06 $0F
    rst RST_30                                    ; $72C9: $F7
    inc b                                         ; $72CA: $04
    ei                                            ; $72CB: $FB
    rrca                                          ; $72CC: $0F
    ei                                            ; $72CD: $FB
    db $FC                                        ; $72CE: $FC
    ei                                            ; $72CF: $FB
    rlca                                          ; $72D0: $07
    ei                                            ; $72D1: $FB
    db $FC                                        ; $72D2: $FC
    ei                                            ; $72D3: $FB
    rst RST_38                                    ; $72D4: $FF
    rst RST_30                                    ; $72D5: $F7
    ld sp, hl                                     ; $72D6: $F9
    ld b, $0F                                     ; $72D7: $06 $0F
    nop                                           ; $72D9: $00
    rlca                                          ; $72DA: $07
    nop                                           ; $72DB: $00
    ld bc, $0100                                  ; $72DC: $01 $00 $01
    nop                                           ; $72DF: $00
    nop                                           ; $72E0: $00
    nop                                           ; $72E1: $00
    nop                                           ; $72E2: $00
    nop                                           ; $72E3: $00
    nop                                           ; $72E4: $00
    nop                                           ; $72E5: $00
    rra                                           ; $72E6: $1F
    nop                                           ; $72E7: $00
    inc l                                         ; $72E8: $2C
    inc de                                        ; $72E9: $13
    ld e, [hl]                                    ; $72EA: $5E
    ld hl, $215E                                  ; $72EB: $21 $5E $21
    ld e, a                                       ; $72EE: $5F
    ld hl, $215E                                  ; $72EF: $21 $5E $21
    ld e, a                                       ; $72F2: $5F
    ld hl, $132F                                  ; $72F3: $21 $2F $13
    rra                                           ; $72F6: $1F
    nop                                           ; $72F7: $00
    nop                                           ; $72F8: $00
    nop                                           ; $72F9: $00
    nop                                           ; $72FA: $00
    nop                                           ; $72FB: $00
    nop                                           ; $72FC: $00
    nop                                           ; $72FD: $00
    nop                                           ; $72FE: $00
    nop                                           ; $72FF: $00
    ld bc, $0100                                  ; $7300: $01 $00 $01
    nop                                           ; $7303: $00
    inc bc                                        ; $7304: $03
    ld bc, $0003                                  ; $7305: $01 $03 $00
    inc b                                         ; $7308: $04
    inc bc                                        ; $7309: $03
    dec b                                         ; $730A: $05
    ld [bc], a                                    ; $730B: $02
    rlca                                          ; $730C: $07
    nop                                           ; $730D: $00
    ld bc, $0300                                  ; $730E: $01 $00 $03
    nop                                           ; $7311: $00
    inc b                                         ; $7312: $04
    inc bc                                        ; $7313: $03
    rlca                                          ; $7314: $07
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

Jump_01B_7F2D:
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
