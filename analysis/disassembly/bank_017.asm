; Disassembly of "original.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $017", ROMX[$4000], BANK[$17]

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
    nop                                           ; $400C: $00
    nop                                           ; $400D: $00
    nop                                           ; $400E: $00
    nop                                           ; $400F: $00
    nop                                           ; $4010: $00
    nop                                           ; $4011: $00
    nop                                           ; $4012: $00
    nop                                           ; $4013: $00
    nop                                           ; $4014: $00
    nop                                           ; $4015: $00
    nop                                           ; $4016: $00
    nop                                           ; $4017: $00
    nop                                           ; $4018: $00
    nop                                           ; $4019: $00
    nop                                           ; $401A: $00
    nop                                           ; $401B: $00
    ld b, $00                                     ; $401C: $06 $00
    dec de                                        ; $401E: $1B
    inc b                                         ; $401F: $04
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
    nop                                           ; $4032: $00
    nop                                           ; $4033: $00
    nop                                           ; $4034: $00
    nop                                           ; $4035: $00
    inc bc                                        ; $4036: $03
    nop                                           ; $4037: $00
    rrca                                          ; $4038: $0F
    inc bc                                        ; $4039: $03
    ccf                                           ; $403A: $3F
    rrca                                          ; $403B: $0F
    cp $3F                                        ; $403C: $FE $3F
    and $5F                                       ; $403E: $E6 $5F
    nop                                           ; $4040: $00
    nop                                           ; $4041: $00
    nop                                           ; $4042: $00
    nop                                           ; $4043: $00
    nop                                           ; $4044: $00
    nop                                           ; $4045: $00
    nop                                           ; $4046: $00
    nop                                           ; $4047: $00
    nop                                           ; $4048: $00
    nop                                           ; $4049: $00
    nop                                           ; $404A: $00
    nop                                           ; $404B: $00
    nop                                           ; $404C: $00
    nop                                           ; $404D: $00
    nop                                           ; $404E: $00
    nop                                           ; $404F: $00
    nop                                           ; $4050: $00
    nop                                           ; $4051: $00
    nop                                           ; $4052: $00
    nop                                           ; $4053: $00
    inc bc                                        ; $4054: $03
    nop                                           ; $4055: $00
    rlca                                          ; $4056: $07
    ld [bc], a                                    ; $4057: $02
    add a                                         ; $4058: $87
    ld bc, $80FF                                  ; $4059: $01 $FF $80
    rst RST_38                                    ; $405C: $FF
    cp a                                          ; $405D: $BF
    dec l                                         ; $405E: $2D
    rst RST_18                                    ; $405F: $DF
    nop                                           ; $4060: $00
    nop                                           ; $4061: $00
    nop                                           ; $4062: $00

jr_017_4063:
    nop                                           ; $4063: $00
    nop                                           ; $4064: $00
    nop                                           ; $4065: $00
    nop                                           ; $4066: $00
    nop                                           ; $4067: $00
    nop                                           ; $4068: $00
    nop                                           ; $4069: $00
    nop                                           ; $406A: $00
    nop                                           ; $406B: $00
    nop                                           ; $406C: $00
    nop                                           ; $406D: $00
    nop                                           ; $406E: $00

jr_017_406F:
    nop                                           ; $406F: $00
    nop                                           ; $4070: $00

jr_017_4071:
    nop                                           ; $4071: $00
    rrca                                          ; $4072: $0F
    nop                                           ; $4073: $00
    rst RST_38                                    ; $4074: $FF
    dec bc                                        ; $4075: $0B
    rst RST_18                                    ; $4076: $DF
    db $EB                                        ; $4077: $EB
    cp a                                          ; $4078: $BF
    ret nz                                        ; $4079: $C0

    rst RST_38                                    ; $407A: $FF
    ld a, [de]                                    ; $407B: $1A
    rst RST_38                                    ; $407C: $FF
    db $10                                        ; $407D: $10
    db $FC                                        ; $407E: $FC
    add a                                         ; $407F: $87
    pop bc                                        ; $4080: $C1
    nop                                           ; $4081: $00
    db $E3                                        ; $4082: $E3
    pop bc                                        ; $4083: $C1
    db $E3                                        ; $4084: $E3
    pop bc                                        ; $4085: $C1
    db $E3                                        ; $4086: $E3
    nop                                           ; $4087: $00
    db $FC                                        ; $4088: $FC
    db $E3                                        ; $4089: $E3
    ldh a, [c]                                    ; $408A: $F2
    dec c                                         ; $408B: $0D
    ld a, a                                       ; $408C: $7F
    add b                                         ; $408D: $80
    jr nz, jr_017_406F                            ; $408E: $20 $DF

    jr nz, jr_017_4071                            ; $4090: $20 $DF

    jr nc, jr_017_4063                            ; $4092: $30 $CF

    inc c                                         ; $4094: $0C
    rst RST_30                                    ; $4095: $F7
    rra                                           ; $4096: $1F
    db $E3                                        ; $4097: $E3
    rst RST_20                                    ; $4098: $E7
    jr @+$01                                      ; $4099: $18 $FF

    add hl, bc                                    ; $409B: $09
    rst RST_30                                    ; $409C: $F7
    jp hl                                         ; $409D: $E9


    rst RST_38                                    ; $409E: $FF
    pop hl                                        ; $409F: $E1
    jp $C700                                      ; $40A0: $C3 $00 $C7


    add d                                         ; $40A3: $82
    ld b, a                                       ; $40A4: $47
    add d                                         ; $40A5: $82
    db $EB                                        ; $40A6: $EB
    ld b, $5B                                     ; $40A7: $06 $5B
    and [hl]                                      ; $40A9: $A6
    or e                                          ; $40AA: $B3
    ld c, [hl]                                    ; $40AB: $4E
    and [hl]                                      ; $40AC: $A6
    ld e, h                                       ; $40AD: $5C
    db $FC                                        ; $40AE: $FC
    nop                                           ; $40AF: $00
    inc c                                         ; $40B0: $0C
    ld hl, sp+$0C                                 ; $40B1: $F8 $0C
    ld hl, sp+$18                                 ; $40B3: $F8 $18
    ldh a, [rNR23]                                ; $40B5: $F0 $18
    ldh a, [$FF30]                                ; $40B7: $F0 $30
    ldh [$FFE0], a                                ; $40B9: $E0 $E0
    ret nz                                        ; $40BB: $C0

    ld hl, sp+$00                                 ; $40BC: $F8 $00
    ret z                                         ; $40BE: $C8

    or b                                          ; $40BF: $B0
    rst RST_38                                    ; $40C0: $FF
    rst RST_38                                    ; $40C1: $FF
    rst RST_38                                    ; $40C2: $FF
    cp $FF                                        ; $40C3: $FE $FF

jr_017_40C5:
    nop                                           ; $40C5: $00
    ld d, l                                       ; $40C6: $55
    xor d                                         ; $40C7: $AA
    call z, $3333                                 ; $40C8: $CC $33 $33
    call z, Call_000_00FF                         ; $40CB: $CC $FF $00
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
    ret z                                         ; $40E0: $C8

    or b                                          ; $40E1: $B0
    ret nc                                        ; $40E2: $D0

    jr nz, jr_017_40C5                            ; $40E3: $20 $E0

    nop                                           ; $40E5: $00
    ld b, b                                       ; $40E6: $40
    add b                                         ; $40E7: $80
    ret nz                                        ; $40E8: $C0

    nop                                           ; $40E9: $00
    ret nz                                        ; $40EA: $C0

    nop                                           ; $40EB: $00
    add b                                         ; $40EC: $80
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
    ld hl, sp-$71                                 ; $4100: $F8 $8F
    ld a, b                                       ; $4102: $78

jr_017_4103:
    adc a                                         ; $4103: $8F
    ld a, b                                       ; $4104: $78

jr_017_4105:
    adc a                                         ; $4105: $8F
    ld a, b                                       ; $4106: $78

jr_017_4107:
    adc a                                         ; $4107: $8F
    db $FC                                        ; $4108: $FC
    rla                                           ; $4109: $17
    rst RST_38                                    ; $410A: $FF
    nop                                           ; $410B: $00
    rst RST_38                                    ; $410C: $FF
    nop                                           ; $410D: $00
    ld e, a                                       ; $410E: $5F
    xor e                                         ; $410F: $AB
    rst RST_08                                    ; $4110: $CF
    scf                                           ; $4111: $37
    ld e, a                                       ; $4112: $5F
    and a                                         ; $4113: $A7
    rst RST_38                                    ; $4114: $FF
    rlca                                          ; $4115: $07
    rst RST_38                                    ; $4116: $FF
    nop                                           ; $4117: $00
    dec c                                         ; $4118: $0D
    ldh a, [c]                                    ; $4119: $F2
    db $FC                                        ; $411A: $FC
    inc bc                                        ; $411B: $03
    add a                                         ; $411C: $87
    ld a, b                                       ; $411D: $78
    rst RST_38                                    ; $411E: $FF
    nop                                           ; $411F: $00
    inc h                                         ; $4120: $24
    rst RST_18                                    ; $4121: $DF
    jr nz, jr_017_4103                            ; $4122: $20 $DF

    jr nz, jr_017_4105                            ; $4124: $20 $DF

    jr nz, jr_017_4107                            ; $4126: $20 $DF

    ld h, c                                       ; $4128: $61
    cp a                                          ; $4129: $BF
    ld a, a                                       ; $412A: $7F
    add b                                         ; $412B: $80
    rst RST_38                                    ; $412C: $FF
    nop                                           ; $412D: $00
    db $FD                                        ; $412E: $FD
    ld a, [$F8FF]                                 ; $412F: $FA $FF $F8
    db $FD                                        ; $4132: $FD
    ld a, [$00FF]                                 ; $4133: $FA $FF $00
    rst RST_38                                    ; $4136: $FF
    nop                                           ; $4137: $00
    rst RST_38                                    ; $4138: $FF
    nop                                           ; $4139: $00
    rst RST_38                                    ; $413A: $FF
    nop                                           ; $413B: $00
    rst RST_38                                    ; $413C: $FF
    nop                                           ; $413D: $00
    nop                                           ; $413E: $00
    nop                                           ; $413F: $00
    jp nc, $D22F                                  ; $4140: $D2 $2F $D2

    cpl                                           ; $4143: $2F
    ret nc                                        ; $4144: $D0

    cpl                                           ; $4145: $2F
    and b                                         ; $4146: $A0
    ld e, a                                       ; $4147: $5F
    pop hl                                        ; $4148: $E1
    ccf                                           ; $4149: $3F
    dec sp                                        ; $414A: $3B
    rrca                                          ; $414B: $0F
    ld e, a                                       ; $414C: $5F
    inc hl                                        ; $414D: $23
    ld a, e                                       ; $414E: $7B
    inc b                                         ; $414F: $04
    ld d, a                                       ; $4150: $57
    jr z, jr_017_4192                             ; $4151: $28 $3F

    ld bc, $001F                                  ; $4153: $01 $1F $00
    inc de                                        ; $4156: $13
    inc c                                         ; $4157: $0C
    rrca                                          ; $4158: $0F
    nop                                           ; $4159: $00
    add hl, bc                                    ; $415A: $09
    ld b, $07                                     ; $415B: $06 $07
    nop                                           ; $415D: $00
    nop                                           ; $415E: $00
    nop                                           ; $415F: $00
    ld a, a                                       ; $4160: $7F
    nop                                           ; $4161: $00
    rst RST_38                                    ; $4162: $FF
    nop                                           ; $4163: $00
    ld a, a                                       ; $4164: $7F
    nop                                           ; $4165: $00
    rra                                           ; $4166: $1F
    nop                                           ; $4167: $00
    ld b, $00                                     ; $4168: $06 $00
    nop                                           ; $416A: $00
    nop                                           ; $416B: $00
    nop                                           ; $416C: $00
    nop                                           ; $416D: $00
    nop                                           ; $416E: $00
    nop                                           ; $416F: $00
    nop                                           ; $4170: $00
    nop                                           ; $4171: $00
    nop                                           ; $4172: $00
    nop                                           ; $4173: $00
    nop                                           ; $4174: $00
    nop                                           ; $4175: $00
    nop                                           ; $4176: $00
    nop                                           ; $4177: $00
    nop                                           ; $4178: $00
    nop                                           ; $4179: $00
    nop                                           ; $417A: $00
    nop                                           ; $417B: $00
    nop                                           ; $417C: $00
    nop                                           ; $417D: $00
    nop                                           ; $417E: $00
    nop                                           ; $417F: $00
    nop                                           ; $4180: $00
    nop                                           ; $4181: $00
    nop                                           ; $4182: $00
    nop                                           ; $4183: $00
    nop                                           ; $4184: $00
    nop                                           ; $4185: $00
    nop                                           ; $4186: $00
    nop                                           ; $4187: $00
    nop                                           ; $4188: $00
    nop                                           ; $4189: $00
    nop                                           ; $418A: $00
    nop                                           ; $418B: $00
    nop                                           ; $418C: $00
    nop                                           ; $418D: $00
    nop                                           ; $418E: $00
    nop                                           ; $418F: $00
    nop                                           ; $4190: $00
    nop                                           ; $4191: $00

jr_017_4192:
    nop                                           ; $4192: $00
    nop                                           ; $4193: $00
    nop                                           ; $4194: $00
    nop                                           ; $4195: $00
    nop                                           ; $4196: $00
    nop                                           ; $4197: $00
    nop                                           ; $4198: $00
    nop                                           ; $4199: $00
    ld b, $00                                     ; $419A: $06 $00
    rra                                           ; $419C: $1F
    nop                                           ; $419D: $00
    ld a, l                                       ; $419E: $7D
    ld [bc], a                                    ; $419F: $02
    nop                                           ; $41A0: $00
    nop                                           ; $41A1: $00
    nop                                           ; $41A2: $00
    nop                                           ; $41A3: $00
    nop                                           ; $41A4: $00
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
    inc bc                                        ; $41B4: $03
    nop                                           ; $41B5: $00
    inc c                                         ; $41B6: $0C
    inc bc                                        ; $41B7: $03
    jr nc, jr_017_41C9                            ; $41B8: $30 $0F

    ret nz                                        ; $41BA: $C0

    ccf                                           ; $41BB: $3F
    and b                                         ; $41BC: $A0
    ld e, a                                       ; $41BD: $5F
    ret nc                                        ; $41BE: $D0

    cpl                                           ; $41BF: $2F
    nop                                           ; $41C0: $00
    nop                                           ; $41C1: $00

jr_017_41C2:
    nop                                           ; $41C2: $00
    nop                                           ; $41C3: $00
    nop                                           ; $41C4: $00
    nop                                           ; $41C5: $00
    nop                                           ; $41C6: $00
    nop                                           ; $41C7: $00
    nop                                           ; $41C8: $00

jr_017_41C9:
    nop                                           ; $41C9: $00
    nop                                           ; $41CA: $00
    nop                                           ; $41CB: $00
    nop                                           ; $41CC: $00
    nop                                           ; $41CD: $00
    nop                                           ; $41CE: $00
    nop                                           ; $41CF: $00
    nop                                           ; $41D0: $00
    nop                                           ; $41D1: $00
    inc bc                                        ; $41D2: $03
    nop                                           ; $41D3: $00
    rlca                                          ; $41D4: $07
    ld [bc], a                                    ; $41D5: $02
    add a                                         ; $41D6: $87
    ld bc, $807F                                  ; $41D7: $01 $7F $80
    ld b, b                                       ; $41DA: $40
    cp a                                          ; $41DB: $BF
    inc h                                         ; $41DC: $24
    rst RST_18                                    ; $41DD: $DF
    ld [hl+], a                                   ; $41DE: $22
    rst RST_18                                    ; $41DF: $DF
    nop                                           ; $41E0: $00
    nop                                           ; $41E1: $00
    nop                                           ; $41E2: $00

jr_017_41E3:
    nop                                           ; $41E3: $00
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

jr_017_41EF:
    nop                                           ; $41EF: $00
    rrca                                          ; $41F0: $0F

jr_017_41F1:
    nop                                           ; $41F1: $00
    rst RST_38                                    ; $41F2: $FF
    dec bc                                        ; $41F3: $0B
    rst RST_18                                    ; $41F4: $DF
    db $EB                                        ; $41F5: $EB
    cp a                                          ; $41F6: $BF
    ret nz                                        ; $41F7: $C0

    rst RST_38                                    ; $41F8: $FF
    ld a, [de]                                    ; $41F9: $1A
    rst RST_38                                    ; $41FA: $FF
    db $10                                        ; $41FB: $10
    ld a, h                                       ; $41FC: $7C
    add a                                         ; $41FD: $87
    ld a, b                                       ; $41FE: $78
    adc a                                         ; $41FF: $8F
    ret nz                                        ; $4200: $C0

    nop                                           ; $4201: $00
    ldh [$FFC0], a                                ; $4202: $E0 $C0
    ldh [$FFC0], a                                ; $4204: $E0 $C0
    ldh [rP1], a                                  ; $4206: $E0 $00
    ldh a, [$FFE0]                                ; $4208: $F0 $E0
    ldh a, [rP1]                                  ; $420A: $F0 $00
    ld a, a                                       ; $420C: $7F
    add b                                         ; $420D: $80
    jr nz, jr_017_41EF                            ; $420E: $20 $DF

    jr nz, jr_017_41F1                            ; $4210: $20 $DF

    jr nc, jr_017_41E3                            ; $4212: $30 $CF

    inc c                                         ; $4214: $0C
    rst RST_30                                    ; $4215: $F7
    rra                                           ; $4216: $1F
    db $E3                                        ; $4217: $E3
    rst RST_20                                    ; $4218: $E7

jr_017_4219:
    jr jr_017_41C2                                ; $4219: $18 $A7

    ld e, b                                       ; $421B: $58
    rst RST_38                                    ; $421C: $FF
    add hl, bc                                    ; $421D: $09
    rst RST_30                                    ; $421E: $F7
    jp hl                                         ; $421F: $E9


    db $FC                                        ; $4220: $FC
    nop                                           ; $4221: $00
    inc c                                         ; $4222: $0C
    ld hl, sp+$0C                                 ; $4223: $F8 $0C
    ld hl, sp+$18                                 ; $4225: $F8 $18
    ldh a, [$FF1F]                                ; $4227: $F0 $1F
    ldh a, [$FF3C]                                ; $4229: $F0 $3C
    db $E3                                        ; $422B: $E3
    push af                                       ; $422C: $F5
    jp z, Jump_000_2DD3                           ; $422D: $CA $D3 $2D

    ei                                            ; $4230: $FB
    inc b                                         ; $4231: $04
    jp z, $CCB4                                   ; $4232: $CA $B4 $CC

    or b                                          ; $4235: $B0
    ret nc                                        ; $4236: $D0

    jr nz, jr_017_4219                            ; $4237: $20 $E0

    nop                                           ; $4239: $00
    ld b, b                                       ; $423A: $40
    add b                                         ; $423B: $80
    ret nz                                        ; $423C: $C0

    nop                                           ; $423D: $00
    ret nz                                        ; $423E: $C0

    nop                                           ; $423F: $00
    rst RST_38                                    ; $4240: $FF
    pop hl                                        ; $4241: $E1
    rst RST_38                                    ; $4242: $FF
    rst RST_38                                    ; $4243: $FF
    rst RST_38                                    ; $4244: $FF
    cp $FF                                        ; $4245: $FE $FF
    nop                                           ; $4247: $00
    xor l                                         ; $4248: $AD
    ld d, d                                       ; $4249: $52
    ld c, d                                       ; $424A: $4A
    or l                                          ; $424B: $B5
    ld [hl], e                                    ; $424C: $73
    adc h                                         ; $424D: $8C
    rst RST_38                                    ; $424E: $FF
    nop                                           ; $424F: $00
    nop                                           ; $4250: $00
    nop                                           ; $4251: $00
    nop                                           ; $4252: $00
    nop                                           ; $4253: $00
    nop                                           ; $4254: $00
    nop                                           ; $4255: $00
    nop                                           ; $4256: $00
    nop                                           ; $4257: $00
    nop                                           ; $4258: $00
    nop                                           ; $4259: $00
    nop                                           ; $425A: $00
    nop                                           ; $425B: $00
    nop                                           ; $425C: $00
    nop                                           ; $425D: $00
    nop                                           ; $425E: $00
    nop                                           ; $425F: $00
    nop                                           ; $4260: $00
    nop                                           ; $4261: $00
    nop                                           ; $4262: $00
    nop                                           ; $4263: $00
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
    nop                                           ; $4270: $00
    nop                                           ; $4271: $00
    nop                                           ; $4272: $00
    nop                                           ; $4273: $00
    nop                                           ; $4274: $00
    nop                                           ; $4275: $00
    nop                                           ; $4276: $00
    nop                                           ; $4277: $00
    ldh a, [rP1]                                  ; $4278: $F0 $00
    ldh a, [$FF60]                                ; $427A: $F0 $60
    ldh [$FF80], a                                ; $427C: $E0 $80
    add b                                         ; $427E: $80
    nop                                           ; $427F: $00
    add b                                         ; $4280: $80
    nop                                           ; $4281: $00
    nop                                           ; $4282: $00
    nop                                           ; $4283: $00
    nop                                           ; $4284: $00
    nop                                           ; $4285: $00
    nop                                           ; $4286: $00
    nop                                           ; $4287: $00
    nop                                           ; $4288: $00
    nop                                           ; $4289: $00
    nop                                           ; $428A: $00
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
    ld a, b                                       ; $42A0: $78
    adc a                                         ; $42A1: $8F
    ld a, b                                       ; $42A2: $78
    adc a                                         ; $42A3: $8F
    ld a, b                                       ; $42A4: $78
    adc a                                         ; $42A5: $8F
    db $FC                                        ; $42A6: $FC
    rla                                           ; $42A7: $17
    rst RST_38                                    ; $42A8: $FF
    nop                                           ; $42A9: $00
    rst RST_38                                    ; $42AA: $FF
    ret c                                         ; $42AB: $D8

    rst RST_38                                    ; $42AC: $FF
    nop                                           ; $42AD: $00
    rst RST_18                                    ; $42AE: $DF
    dec hl                                        ; $42AF: $2B
    ld c, a                                       ; $42B0: $4F
    or a                                          ; $42B1: $B7
    rst RST_18                                    ; $42B2: $DF
    daa                                           ; $42B3: $27
    rst RST_38                                    ; $42B4: $FF
    rlca                                          ; $42B5: $07
    rst RST_38                                    ; $42B6: $FF
    nop                                           ; $42B7: $00
    db $FD                                        ; $42B8: $FD
    ld [bc], a                                    ; $42B9: $02
    dec b                                         ; $42BA: $05
    ld a, [$01FE]                                 ; $42BB: $FA $FE $01
    rst RST_38                                    ; $42BE: $FF
    nop                                           ; $42BF: $00
    ld h, e                                       ; $42C0: $63
    rst RST_18                                    ; $42C1: $DF
    ld h, e                                       ; $42C2: $63
    rst RST_18                                    ; $42C3: $DF
    ld [hl], a                                    ; $42C4: $77
    rst RST_18                                    ; $42C5: $DF
    rst RST_38                                    ; $42C6: $FF
    cp a                                          ; $42C7: $BF
    rst RST_38                                    ; $42C8: $FF
    add b                                         ; $42C9: $80
    sbc a                                         ; $42CA: $9F
    ld [$00FF], sp                                ; $42CB: $08 $FF $00
    cp $FD                                        ; $42CE: $FE $FD
    db $FD                                        ; $42D0: $FD
    ld a, [$FDFE]                                 ; $42D1: $FA $FE $FD
    rst RST_38                                    ; $42D4: $FF
    nop                                           ; $42D5: $00
    rst RST_38                                    ; $42D6: $FF
    nop                                           ; $42D7: $00
    rst RST_38                                    ; $42D8: $FF
    nop                                           ; $42D9: $00
    rst RST_38                                    ; $42DA: $FF
    nop                                           ; $42DB: $00
    rst RST_38                                    ; $42DC: $FF
    nop                                           ; $42DD: $00
    nop                                           ; $42DE: $00
    nop                                           ; $42DF: $00
    reti                                          ; $42E0: $D9


    cpl                                           ; $42E1: $2F
    reti                                          ; $42E2: $D9


    cpl                                           ; $42E3: $2F
    cp e                                          ; $42E4: $BB
    ld e, a                                       ; $42E5: $5F
    rst RST_38                                    ; $42E6: $FF
    ccf                                           ; $42E7: $3F
    ccf                                           ; $42E8: $3F
    rrca                                          ; $42E9: $0F
    ccf                                           ; $42EA: $3F
    inc bc                                        ; $42EB: $03
    ld l, e                                       ; $42EC: $6B
    inc d                                         ; $42ED: $14
    ld e, e                                       ; $42EE: $5B
    inc h                                         ; $42EF: $24
    ld l, e                                       ; $42F0: $6B
    dec d                                         ; $42F1: $15
    ccf                                           ; $42F2: $3F
    ld bc, $001F                                  ; $42F3: $01 $1F $00
    rra                                           ; $42F6: $1F
    nop                                           ; $42F7: $00
    add hl, bc                                    ; $42F8: $09
    ld b, $0F                                     ; $42F9: $06 $0F
    nop                                           ; $42FB: $00
    rlca                                          ; $42FC: $07
    nop                                           ; $42FD: $00
    nop                                           ; $42FE: $00
    nop                                           ; $42FF: $00
    db $FD                                        ; $4300: $FD
    ld [bc], a                                    ; $4301: $02
    ld a, l                                       ; $4302: $7D
    ld [bc], a                                    ; $4303: $02
    rra                                           ; $4304: $1F
    nop                                           ; $4305: $00
    ld b, $00                                     ; $4306: $06 $00
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
    nop                                           ; $4314: $00
    nop                                           ; $4315: $00
    nop                                           ; $4316: $00
    nop                                           ; $4317: $00
    nop                                           ; $4318: $00
    nop                                           ; $4319: $00
    nop                                           ; $431A: $00
    nop                                           ; $431B: $00
    nop                                           ; $431C: $00
    nop                                           ; $431D: $00
    nop                                           ; $431E: $00
    nop                                           ; $431F: $00
    nop                                           ; $4320: $00
    nop                                           ; $4321: $00
    nop                                           ; $4322: $00
    nop                                           ; $4323: $00
    nop                                           ; $4324: $00
    nop                                           ; $4325: $00
    nop                                           ; $4326: $00
    nop                                           ; $4327: $00
    nop                                           ; $4328: $00
    nop                                           ; $4329: $00
    nop                                           ; $432A: $00
    nop                                           ; $432B: $00
    nop                                           ; $432C: $00
    nop                                           ; $432D: $00
    nop                                           ; $432E: $00
    nop                                           ; $432F: $00
    nop                                           ; $4330: $00
    nop                                           ; $4331: $00
    ld b, $00                                     ; $4332: $06 $00
    dec de                                        ; $4334: $1B
    inc b                                         ; $4335: $04
    ld a, a                                       ; $4336: $7F
    nop                                           ; $4337: $00
    rst RST_38                                    ; $4338: $FF
    nop                                           ; $4339: $00
    ld a, a                                       ; $433A: $7F
    nop                                           ; $433B: $00
    rra                                           ; $433C: $1F
    nop                                           ; $433D: $00
    ld b, $00                                     ; $433E: $06 $00
    inc bc                                        ; $4340: $03
    nop                                           ; $4341: $00
    rrca                                          ; $4342: $0F
    inc bc                                        ; $4343: $03
    ccf                                           ; $4344: $3F
    rrca                                          ; $4345: $0F
    cp $3F                                        ; $4346: $FE $3F
    and $5F                                       ; $4348: $E6 $5F
    jp nc, $D22F                                  ; $434A: $D2 $2F $D2

    cpl                                           ; $434D: $2F
    ret nc                                        ; $434E: $D0

jr_017_434F:
    cpl                                           ; $434F: $2F
    and b                                         ; $4350: $A0

jr_017_4351:
    ld e, a                                       ; $4351: $5F
    pop hl                                        ; $4352: $E1

jr_017_4353:
    ccf                                           ; $4353: $3F
    dec sp                                        ; $4354: $3B
    rrca                                          ; $4355: $0F
    ld e, a                                       ; $4356: $5F
    inc hl                                        ; $4357: $23
    ld a, e                                       ; $4358: $7B
    inc b                                         ; $4359: $04
    ld d, a                                       ; $435A: $57
    jr z, jr_017_439C                             ; $435B: $28 $3F

    ld bc, $001F                                  ; $435D: $01 $1F $00
    inc bc                                        ; $4360: $03
    nop                                           ; $4361: $00
    rlca                                          ; $4362: $07
    ld [bc], a                                    ; $4363: $02
    add a                                         ; $4364: $87
    ld bc, $80FF                                  ; $4365: $01 $FF $80
    rst RST_38                                    ; $4368: $FF
    cp a                                          ; $4369: $BF
    dec l                                         ; $436A: $2D
    rst RST_18                                    ; $436B: $DF
    inc h                                         ; $436C: $24
    rst RST_18                                    ; $436D: $DF
    jr nz, jr_017_434F                            ; $436E: $20 $DF

    jr nz, jr_017_4351                            ; $4370: $20 $DF

    jr nz, jr_017_4353                            ; $4372: $20 $DF

    ld h, c                                       ; $4374: $61
    cp a                                          ; $4375: $BF
    ld a, a                                       ; $4376: $7F
    add b                                         ; $4377: $80
    rst RST_38                                    ; $4378: $FF
    nop                                           ; $4379: $00
    db $FD                                        ; $437A: $FD
    ld a, [$F8FF]                                 ; $437B: $FA $FF $F8
    db $FD                                        ; $437E: $FD
    ld a, [$000F]                                 ; $437F: $FA $0F $00
    rst RST_38                                    ; $4382: $FF

jr_017_4383:
    dec bc                                        ; $4383: $0B
    rst RST_18                                    ; $4384: $DF
    db $EB                                        ; $4385: $EB
    cp a                                          ; $4386: $BF
    ret nz                                        ; $4387: $C0

    rst RST_38                                    ; $4388: $FF
    ld a, [de]                                    ; $4389: $1A
    rst RST_38                                    ; $438A: $FF
    db $10                                        ; $438B: $10
    db $FC                                        ; $438C: $FC
    add a                                         ; $438D: $87
    ld hl, sp-$71                                 ; $438E: $F8 $8F
    ld a, b                                       ; $4390: $78

jr_017_4391:
    adc a                                         ; $4391: $8F
    ld a, b                                       ; $4392: $78
    adc a                                         ; $4393: $8F
    ld a, b                                       ; $4394: $78
    adc a                                         ; $4395: $8F
    db $FC                                        ; $4396: $FC
    rla                                           ; $4397: $17
    rst RST_38                                    ; $4398: $FF
    nop                                           ; $4399: $00
    rst RST_38                                    ; $439A: $FF
    nop                                           ; $439B: $00

jr_017_439C:
    ld e, a                                       ; $439C: $5F
    xor e                                         ; $439D: $AB
    rst RST_08                                    ; $439E: $CF
    scf                                           ; $439F: $37
    pop bc                                        ; $43A0: $C1
    nop                                           ; $43A1: $00
    db $E3                                        ; $43A2: $E3
    pop bc                                        ; $43A3: $C1
    db $E3                                        ; $43A4: $E3
    pop bc                                        ; $43A5: $C1
    db $E3                                        ; $43A6: $E3
    nop                                           ; $43A7: $00
    db $FC                                        ; $43A8: $FC
    db $E3                                        ; $43A9: $E3
    ldh a, [c]                                    ; $43AA: $F2
    dec c                                         ; $43AB: $0D
    ld a, a                                       ; $43AC: $7F
    add b                                         ; $43AD: $80
    jr nz, @-$1F                                  ; $43AE: $20 $DF

    jr nz, jr_017_4391                            ; $43B0: $20 $DF

    jr nc, jr_017_4383                            ; $43B2: $30 $CF

    inc c                                         ; $43B4: $0C
    rst RST_30                                    ; $43B5: $F7
    rra                                           ; $43B6: $1F
    db $E3                                        ; $43B7: $E3
    rst RST_20                                    ; $43B8: $E7
    jr @+$01                                      ; $43B9: $18 $FF

    add hl, bc                                    ; $43BB: $09
    rst RST_30                                    ; $43BC: $F7
    jp hl                                         ; $43BD: $E9


    rst RST_38                                    ; $43BE: $FF
    pop hl                                        ; $43BF: $E1
    jp $C700                                      ; $43C0: $C3 $00 $C7


    add d                                         ; $43C3: $82
    ld b, a                                       ; $43C4: $47
    add d                                         ; $43C5: $82
    db $EB                                        ; $43C6: $EB
    ld b, $5B                                     ; $43C7: $06 $5B
    and [hl]                                      ; $43C9: $A6
    or e                                          ; $43CA: $B3
    ld c, [hl]                                    ; $43CB: $4E
    and [hl]                                      ; $43CC: $A6
    ld e, h                                       ; $43CD: $5C
    db $FC                                        ; $43CE: $FC
    nop                                           ; $43CF: $00
    inc c                                         ; $43D0: $0C
    ld hl, sp+$0C                                 ; $43D1: $F8 $0C
    ld hl, sp+$18                                 ; $43D3: $F8 $18
    ldh a, [rNR23]                                ; $43D5: $F0 $18
    ldh a, [$FF30]                                ; $43D7: $F0 $30
    ldh [$FFE0], a                                ; $43D9: $E0 $E0
    ret nz                                        ; $43DB: $C0

    ld hl, sp+$00                                 ; $43DC: $F8 $00
    ret z                                         ; $43DE: $C8

    or b                                          ; $43DF: $B0
    inc de                                        ; $43E0: $13
    inc c                                         ; $43E1: $0C
    rrca                                          ; $43E2: $0F
    nop                                           ; $43E3: $00
    add hl, bc                                    ; $43E4: $09
    ld b, $07                                     ; $43E5: $06 $07
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
    nop                                           ; $43FB: $00
    nop                                           ; $43FC: $00
    nop                                           ; $43FD: $00
    nop                                           ; $43FE: $00
    nop                                           ; $43FF: $00
    rst RST_38                                    ; $4400: $FF
    nop                                           ; $4401: $00
    rst RST_38                                    ; $4402: $FF
    nop                                           ; $4403: $00
    rst RST_38                                    ; $4404: $FF
    nop                                           ; $4405: $00
    rst RST_38                                    ; $4406: $FF
    nop                                           ; $4407: $00
    rst RST_38                                    ; $4408: $FF
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
    ld e, a                                       ; $4420: $5F
    and a                                         ; $4421: $A7
    rst RST_38                                    ; $4422: $FF
    rlca                                          ; $4423: $07
    rst RST_38                                    ; $4424: $FF
    nop                                           ; $4425: $00
    dec c                                         ; $4426: $0D
    ldh a, [c]                                    ; $4427: $F2
    db $FC                                        ; $4428: $FC
    inc bc                                        ; $4429: $03
    add a                                         ; $442A: $87
    ld a, b                                       ; $442B: $78
    rst RST_38                                    ; $442C: $FF
    nop                                           ; $442D: $00
    nop                                           ; $442E: $00
    nop                                           ; $442F: $00
    nop                                           ; $4430: $00
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
    rst RST_38                                    ; $4440: $FF
    rst RST_38                                    ; $4441: $FF
    rst RST_38                                    ; $4442: $FF
    cp $FF                                        ; $4443: $FE $FF

jr_017_4445:
    nop                                           ; $4445: $00
    ld d, l                                       ; $4446: $55
    xor d                                         ; $4447: $AA
    call z, $3333                                 ; $4448: $CC $33 $33
    call z, Call_000_00FF                         ; $444B: $CC $FF $00
    nop                                           ; $444E: $00
    nop                                           ; $444F: $00
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
    ret z                                         ; $4460: $C8

    or b                                          ; $4461: $B0
    ret nc                                        ; $4462: $D0

    jr nz, jr_017_4445                            ; $4463: $20 $E0

    nop                                           ; $4465: $00
    ld b, b                                       ; $4466: $40
    add b                                         ; $4467: $80
    ret nz                                        ; $4468: $C0

    nop                                           ; $4469: $00
    ret nz                                        ; $446A: $C0

    nop                                           ; $446B: $00
    add b                                         ; $446C: $80
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
    ld b, $00                                     ; $4492: $06 $00
    rra                                           ; $4494: $1F
    nop                                           ; $4495: $00
    ld a, l                                       ; $4496: $7D
    ld [bc], a                                    ; $4497: $02
    db $FD                                        ; $4498: $FD
    ld [bc], a                                    ; $4499: $02
    ld a, l                                       ; $449A: $7D
    ld [bc], a                                    ; $449B: $02
    rra                                           ; $449C: $1F
    nop                                           ; $449D: $00
    ld b, $00                                     ; $449E: $06 $00
    nop                                           ; $44A0: $00
    nop                                           ; $44A1: $00
    nop                                           ; $44A2: $00
    nop                                           ; $44A3: $00
    inc bc                                        ; $44A4: $03
    nop                                           ; $44A5: $00
    inc c                                         ; $44A6: $0C
    inc bc                                        ; $44A7: $03
    jr nc, jr_017_44B9                            ; $44A8: $30 $0F

    ret nz                                        ; $44AA: $C0

    ccf                                           ; $44AB: $3F
    and b                                         ; $44AC: $A0
    ld e, a                                       ; $44AD: $5F
    ret nc                                        ; $44AE: $D0

    cpl                                           ; $44AF: $2F
    reti                                          ; $44B0: $D9


    cpl                                           ; $44B1: $2F
    reti                                          ; $44B2: $D9


    cpl                                           ; $44B3: $2F
    cp e                                          ; $44B4: $BB
    ld e, a                                       ; $44B5: $5F
    rst RST_38                                    ; $44B6: $FF
    ccf                                           ; $44B7: $3F
    ccf                                           ; $44B8: $3F

jr_017_44B9:
    rrca                                          ; $44B9: $0F
    ccf                                           ; $44BA: $3F
    inc bc                                        ; $44BB: $03
    ld l, e                                       ; $44BC: $6B
    inc d                                         ; $44BD: $14
    ld e, e                                       ; $44BE: $5B
    inc h                                         ; $44BF: $24
    nop                                           ; $44C0: $00
    nop                                           ; $44C1: $00

jr_017_44C2:
    inc bc                                        ; $44C2: $03
    nop                                           ; $44C3: $00
    rlca                                          ; $44C4: $07
    ld [bc], a                                    ; $44C5: $02
    add a                                         ; $44C6: $87
    ld bc, $807F                                  ; $44C7: $01 $7F $80
    ld b, b                                       ; $44CA: $40
    cp a                                          ; $44CB: $BF
    inc h                                         ; $44CC: $24
    rst RST_18                                    ; $44CD: $DF
    ld [hl+], a                                   ; $44CE: $22
    rst RST_18                                    ; $44CF: $DF
    ld h, e                                       ; $44D0: $63
    rst RST_18                                    ; $44D1: $DF
    ld h, e                                       ; $44D2: $63
    rst RST_18                                    ; $44D3: $DF
    ld [hl], a                                    ; $44D4: $77
    rst RST_18                                    ; $44D5: $DF
    rst RST_38                                    ; $44D6: $FF
    cp a                                          ; $44D7: $BF
    rst RST_38                                    ; $44D8: $FF
    add b                                         ; $44D9: $80
    sbc a                                         ; $44DA: $9F
    ld [$00FF], sp                                ; $44DB: $08 $FF $00
    cp $FD                                        ; $44DE: $FE $FD
    rrca                                          ; $44E0: $0F
    nop                                           ; $44E1: $00
    rst RST_38                                    ; $44E2: $FF

jr_017_44E3:
    dec bc                                        ; $44E3: $0B
    rst RST_18                                    ; $44E4: $DF
    db $EB                                        ; $44E5: $EB
    cp a                                          ; $44E6: $BF
    ret nz                                        ; $44E7: $C0

    rst RST_38                                    ; $44E8: $FF
    ld a, [de]                                    ; $44E9: $1A
    rst RST_38                                    ; $44EA: $FF
    db $10                                        ; $44EB: $10
    ld a, h                                       ; $44EC: $7C
    add a                                         ; $44ED: $87
    ld a, b                                       ; $44EE: $78

jr_017_44EF:
    adc a                                         ; $44EF: $8F
    ld a, b                                       ; $44F0: $78

jr_017_44F1:
    adc a                                         ; $44F1: $8F
    ld a, b                                       ; $44F2: $78
    adc a                                         ; $44F3: $8F
    ld a, b                                       ; $44F4: $78
    adc a                                         ; $44F5: $8F
    db $FC                                        ; $44F6: $FC
    rla                                           ; $44F7: $17
    rst RST_38                                    ; $44F8: $FF
    nop                                           ; $44F9: $00
    rst RST_38                                    ; $44FA: $FF
    ret c                                         ; $44FB: $D8

    rst RST_38                                    ; $44FC: $FF
    nop                                           ; $44FD: $00
    rst RST_18                                    ; $44FE: $DF
    dec hl                                        ; $44FF: $2B
    ret nz                                        ; $4500: $C0

    nop                                           ; $4501: $00
    ldh [$FFC0], a                                ; $4502: $E0 $C0
    ldh [$FFC0], a                                ; $4504: $E0 $C0
    ldh [rP1], a                                  ; $4506: $E0 $00
    ldh a, [$FFE0]                                ; $4508: $F0 $E0
    ldh a, [rP1]                                  ; $450A: $F0 $00
    ld a, a                                       ; $450C: $7F
    add b                                         ; $450D: $80
    jr nz, jr_017_44EF                            ; $450E: $20 $DF

    jr nz, jr_017_44F1                            ; $4510: $20 $DF

    jr nc, jr_017_44E3                            ; $4512: $30 $CF

    inc c                                         ; $4514: $0C
    rst RST_30                                    ; $4515: $F7
    rra                                           ; $4516: $1F
    db $E3                                        ; $4517: $E3
    rst RST_20                                    ; $4518: $E7

jr_017_4519:
    jr jr_017_44C2                                ; $4519: $18 $A7

    ld e, b                                       ; $451B: $58
    rst RST_38                                    ; $451C: $FF
    add hl, bc                                    ; $451D: $09
    rst RST_30                                    ; $451E: $F7
    jp hl                                         ; $451F: $E9


    db $FC                                        ; $4520: $FC
    nop                                           ; $4521: $00
    inc c                                         ; $4522: $0C
    ld hl, sp+$0C                                 ; $4523: $F8 $0C
    ld hl, sp+$18                                 ; $4525: $F8 $18
    ldh a, [$FF1F]                                ; $4527: $F0 $1F
    ldh a, [$FF3C]                                ; $4529: $F0 $3C
    db $E3                                        ; $452B: $E3
    push af                                       ; $452C: $F5
    jp z, Jump_000_2DD3                           ; $452D: $CA $D3 $2D

    ei                                            ; $4530: $FB
    inc b                                         ; $4531: $04
    jp z, $CCB4                                   ; $4532: $CA $B4 $CC

    or b                                          ; $4535: $B0
    ret nc                                        ; $4536: $D0

    jr nz, jr_017_4519                            ; $4537: $20 $E0

    nop                                           ; $4539: $00
    ld b, b                                       ; $453A: $40
    add b                                         ; $453B: $80
    ret nz                                        ; $453C: $C0

    nop                                           ; $453D: $00
    ret nz                                        ; $453E: $C0

    nop                                           ; $453F: $00
    rst RST_10                                    ; $4540: $D7
    dec hl                                        ; $4541: $2B
    ld a, a                                       ; $4542: $7F
    inc bc                                        ; $4543: $03
    ccf                                           ; $4544: $3F
    nop                                           ; $4545: $00
    ccf                                           ; $4546: $3F
    nop                                           ; $4547: $00
    inc de                                        ; $4548: $13
    inc c                                         ; $4549: $0C
    rra                                           ; $454A: $1F
    nop                                           ; $454B: $00
    rrca                                          ; $454C: $0F
    nop                                           ; $454D: $00
    nop                                           ; $454E: $00
    nop                                           ; $454F: $00
    nop                                           ; $4550: $00
    nop                                           ; $4551: $00
    nop                                           ; $4552: $00
    nop                                           ; $4553: $00
    nop                                           ; $4554: $00
    nop                                           ; $4555: $00
    nop                                           ; $4556: $00
    nop                                           ; $4557: $00
    nop                                           ; $4558: $00
    nop                                           ; $4559: $00
    nop                                           ; $455A: $00
    nop                                           ; $455B: $00
    nop                                           ; $455C: $00
    nop                                           ; $455D: $00
    nop                                           ; $455E: $00
    nop                                           ; $455F: $00
    ld a, [$FDF5]                                 ; $4560: $FA $F5 $FD
    ld a, [$00FF]                                 ; $4563: $FA $FF $00
    rst RST_38                                    ; $4566: $FF
    nop                                           ; $4567: $00
    rst RST_38                                    ; $4568: $FF
    nop                                           ; $4569: $00
    cp $01                                        ; $456A: $FE $01
    rst RST_38                                    ; $456C: $FF
    nop                                           ; $456D: $00
    ld bc, $0000                                  ; $456E: $01 $00 $00
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
    sbc a                                         ; $4580: $9F
    ld l, a                                       ; $4581: $6F
    cp a                                          ; $4582: $BF
    ld c, a                                       ; $4583: $4F
    rst RST_38                                    ; $4584: $FF
    rrca                                          ; $4585: $0F
    rst RST_38                                    ; $4586: $FF
    nop                                           ; $4587: $00
    ei                                            ; $4588: $FB
    inc b                                         ; $4589: $04
    ld a, [bc]                                    ; $458A: $0A
    push af                                       ; $458B: $F5
    db $FC                                        ; $458C: $FC
    inc bc                                        ; $458D: $03
    rst RST_38                                    ; $458E: $FF
    nop                                           ; $458F: $00
    nop                                           ; $4590: $00
    nop                                           ; $4591: $00
    nop                                           ; $4592: $00
    nop                                           ; $4593: $00
    nop                                           ; $4594: $00
    nop                                           ; $4595: $00
    nop                                           ; $4596: $00
    nop                                           ; $4597: $00
    nop                                           ; $4598: $00
    nop                                           ; $4599: $00
    nop                                           ; $459A: $00
    nop                                           ; $459B: $00
    nop                                           ; $459C: $00
    nop                                           ; $459D: $00
    nop                                           ; $459E: $00
    nop                                           ; $459F: $00
    rst RST_38                                    ; $45A0: $FF
    jp $FEFF                                      ; $45A1: $C3 $FF $FE


    rst RST_38                                    ; $45A4: $FF
    db $FC                                        ; $45A5: $FC
    cp $01                                        ; $45A6: $FE $01
    ld e, e                                       ; $45A8: $5B
    and h                                         ; $45A9: $A4
    sub l                                         ; $45AA: $95
    ld l, d                                       ; $45AB: $6A
    rst RST_20                                    ; $45AC: $E7

jr_017_45AD:
    jr jr_017_45AD                                ; $45AD: $18 $FE

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
    ldh a, [rP1]                                  ; $45C0: $F0 $00
    ldh a, [$FF60]                                ; $45C2: $F0 $60
    ldh [$FF80], a                                ; $45C4: $E0 $80
    add b                                         ; $45C6: $80
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
    nop                                           ; $45E0: $00
    nop                                           ; $45E1: $00
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
    nop                                           ; $45F0: $00
    nop                                           ; $45F1: $00
    ld b, $00                                     ; $45F2: $06 $00
    rra                                           ; $45F4: $1F
    nop                                           ; $45F5: $00
    ld a, a                                       ; $45F6: $7F
    nop                                           ; $45F7: $00
    rst RST_38                                    ; $45F8: $FF
    nop                                           ; $45F9: $00
    ld a, a                                       ; $45FA: $7F
    nop                                           ; $45FB: $00
    dec de                                        ; $45FC: $1B
    inc b                                         ; $45FD: $04
    ld b, $00                                     ; $45FE: $06 $00
    inc bc                                        ; $4600: $03
    nop                                           ; $4601: $00
    rrca                                          ; $4602: $0F
    inc bc                                        ; $4603: $03
    ccf                                           ; $4604: $3F
    rrca                                          ; $4605: $0F
    cp $3F                                        ; $4606: $FE $3F
    and $5F                                       ; $4608: $E6 $5F
    jp nc, $D22F                                  ; $460A: $D2 $2F $D2

    cpl                                           ; $460D: $2F
    ret nc                                        ; $460E: $D0

    cpl                                           ; $460F: $2F
    and b                                         ; $4610: $A0

jr_017_4611:
    ld e, a                                       ; $4611: $5F
    pop hl                                        ; $4612: $E1

jr_017_4613:
    ccf                                           ; $4613: $3F
    dec sp                                        ; $4614: $3B

jr_017_4615:
    rrca                                          ; $4615: $0F
    ld e, a                                       ; $4616: $5F
    inc hl                                        ; $4617: $23
    ld a, e                                       ; $4618: $7B
    inc b                                         ; $4619: $04
    ld d, a                                       ; $461A: $57
    jr z, jr_017_465C                             ; $461B: $28 $3F

    ld bc, $001F                                  ; $461D: $01 $1F $00
    inc bc                                        ; $4620: $03
    nop                                           ; $4621: $00
    rlca                                          ; $4622: $07
    ld [bc], a                                    ; $4623: $02
    rlca                                          ; $4624: $07
    ld bc, $0387                                  ; $4625: $01 $87 $03
    rst RST_38                                    ; $4628: $FF
    add b                                         ; $4629: $80
    rst RST_38                                    ; $462A: $FF
    cp a                                          ; $462B: $BF
    dec l                                         ; $462C: $2D
    rst RST_18                                    ; $462D: $DF
    inc h                                         ; $462E: $24
    rst RST_18                                    ; $462F: $DF
    jr nz, jr_017_4611                            ; $4630: $20 $DF

    jr nz, jr_017_4613                            ; $4632: $20 $DF

    jr nz, jr_017_4615                            ; $4634: $20 $DF

    ld h, c                                       ; $4636: $61
    cp a                                          ; $4637: $BF
    ld a, a                                       ; $4638: $7F
    add b                                         ; $4639: $80
    rst RST_38                                    ; $463A: $FF
    nop                                           ; $463B: $00
    db $FD                                        ; $463C: $FD
    ld a, [$F8FF]                                 ; $463D: $FA $FF $F8
    rrca                                          ; $4640: $0F
    nop                                           ; $4641: $00
    rst RST_38                                    ; $4642: $FF
    dec bc                                        ; $4643: $0B
    rst RST_18                                    ; $4644: $DF

jr_017_4645:
    db $EB                                        ; $4645: $EB
    cp a                                          ; $4646: $BF
    ret nz                                        ; $4647: $C0

    rst RST_38                                    ; $4648: $FF
    jp c, $1AFF                                   ; $4649: $DA $FF $1A

    rst RST_38                                    ; $464C: $FF
    nop                                           ; $464D: $00
    db $FC                                        ; $464E: $FC
    add a                                         ; $464F: $87
    ld hl, sp-$71                                 ; $4650: $F8 $8F
    ld a, b                                       ; $4652: $78

jr_017_4653:
    adc a                                         ; $4653: $8F
    ld a, b                                       ; $4654: $78
    adc a                                         ; $4655: $8F
    ld a, b                                       ; $4656: $78
    adc a                                         ; $4657: $8F
    db $FC                                        ; $4658: $FC
    rla                                           ; $4659: $17
    rst RST_38                                    ; $465A: $FF
    nop                                           ; $465B: $00

jr_017_465C:
    rst RST_38                                    ; $465C: $FF
    nop                                           ; $465D: $00
    ld e, a                                       ; $465E: $5F
    xor e                                         ; $465F: $AB
    ret nz                                        ; $4660: $C0

    nop                                           ; $4661: $00
    ldh [$FFC0], a                                ; $4662: $E0 $C0
    ldh [$FFC0], a                                ; $4664: $E0 $C0
    ldh [rP1], a                                  ; $4666: $E0 $00
    ldh a, [$FFE0]                                ; $4668: $F0 $E0
    ldh a, [$FFE0]                                ; $466A: $F0 $E0
    ldh a, [rP1]                                  ; $466C: $F0 $00
    ld a, a                                       ; $466E: $7F
    add b                                         ; $466F: $80
    jr nz, @-$1F                                  ; $4670: $20 $DF

    jr nz, jr_017_4653                            ; $4672: $20 $DF

    jr nc, jr_017_4645                            ; $4674: $30 $CF

    inc c                                         ; $4676: $0C
    rst RST_30                                    ; $4677: $F7
    rra                                           ; $4678: $1F
    db $E3                                        ; $4679: $E3
    rst RST_20                                    ; $467A: $E7
    jr @+$01                                      ; $467B: $18 $FF

    add hl, bc                                    ; $467D: $09
    rst RST_30                                    ; $467E: $F7
    jp hl                                         ; $467F: $E9


    db $FC                                        ; $4680: $FC
    nop                                           ; $4681: $00
    inc c                                         ; $4682: $0C
    ld hl, sp+$0C                                 ; $4683: $F8 $0C
    ld hl, sp+$18                                 ; $4685: $F8 $18
    ldh a, [rNR23]                                ; $4687: $F0 $18
    ldh a, [$FF30]                                ; $4689: $F0 $30
    ldh [$FFE0], a                                ; $468B: $E0 $E0
    ret nz                                        ; $468D: $C0

    ldh a, [rP1]                                  ; $468E: $F0 $00
    db $EC                                        ; $4690: $EC
    sub b                                         ; $4691: $90
    ld [$D194], a                                 ; $4692: $EA $94 $D1
    ld l, $DF                                     ; $4695: $2E $DF
    jr nz, jr_017_46F8                            ; $4697: $20 $5F

    and a                                         ; $4699: $A7
    db $F4                                        ; $469A: $F4
    dec bc                                        ; $469B: $0B
    rst RST_08                                    ; $469C: $CF
    nop                                           ; $469D: $00
    add b                                         ; $469E: $80
    nop                                           ; $469F: $00
    inc de                                        ; $46A0: $13
    inc c                                         ; $46A1: $0C
    rrca                                          ; $46A2: $0F
    nop                                           ; $46A3: $00
    add hl, bc                                    ; $46A4: $09
    ld b, $07                                     ; $46A5: $06 $07
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
    db $FD                                        ; $46C0: $FD
    ld a, [$00FF]                                 ; $46C1: $FA $FF $00
    rst RST_38                                    ; $46C4: $FF
    nop                                           ; $46C5: $00
    rst RST_38                                    ; $46C6: $FF
    nop                                           ; $46C7: $00
    rst RST_38                                    ; $46C8: $FF
    nop                                           ; $46C9: $00
    rst RST_38                                    ; $46CA: $FF
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
    nop                                           ; $46D7: $00
    nop                                           ; $46D8: $00
    nop                                           ; $46D9: $00
    nop                                           ; $46DA: $00
    nop                                           ; $46DB: $00
    nop                                           ; $46DC: $00
    nop                                           ; $46DD: $00
    nop                                           ; $46DE: $00
    nop                                           ; $46DF: $00
    rst RST_08                                    ; $46E0: $CF
    scf                                           ; $46E1: $37
    ld e, a                                       ; $46E2: $5F
    and a                                         ; $46E3: $A7
    rst RST_38                                    ; $46E4: $FF
    rlca                                          ; $46E5: $07
    rst RST_38                                    ; $46E6: $FF
    nop                                           ; $46E7: $00
    dec c                                         ; $46E8: $0D
    ldh a, [c]                                    ; $46E9: $F2
    db $FC                                        ; $46EA: $FC
    inc bc                                        ; $46EB: $03
    add a                                         ; $46EC: $87
    ld a, b                                       ; $46ED: $78
    rst RST_38                                    ; $46EE: $FF
    nop                                           ; $46EF: $00
    nop                                           ; $46F0: $00
    nop                                           ; $46F1: $00
    nop                                           ; $46F2: $00
    nop                                           ; $46F3: $00
    nop                                           ; $46F4: $00
    nop                                           ; $46F5: $00
    nop                                           ; $46F6: $00
    nop                                           ; $46F7: $00

jr_017_46F8:
    nop                                           ; $46F8: $00
    nop                                           ; $46F9: $00
    nop                                           ; $46FA: $00
    nop                                           ; $46FB: $00
    nop                                           ; $46FC: $00
    nop                                           ; $46FD: $00
    nop                                           ; $46FE: $00
    nop                                           ; $46FF: $00
    rst RST_38                                    ; $4700: $FF
    pop hl                                        ; $4701: $E1
    rst RST_38                                    ; $4702: $FF
    rst RST_38                                    ; $4703: $FF
    rst RST_38                                    ; $4704: $FF
    cp $FF                                        ; $4705: $FE $FF
    nop                                           ; $4707: $00
    ld d, l                                       ; $4708: $55
    xor d                                         ; $4709: $AA
    call z, $3333                                 ; $470A: $CC $33 $33
    call z, Call_000_00FF                         ; $470D: $CC $FF $00
    nop                                           ; $4710: $00
    nop                                           ; $4711: $00
    nop                                           ; $4712: $00
    nop                                           ; $4713: $00
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
    ret nz                                        ; $4720: $C0

    nop                                           ; $4721: $00
    ldh [$FFC0], a                                ; $4722: $E0 $C0
    ldh [rP1], a                                  ; $4724: $E0 $00
    nop                                           ; $4726: $00
    nop                                           ; $4727: $00
    nop                                           ; $4728: $00
    nop                                           ; $4729: $00
    nop                                           ; $472A: $00
    nop                                           ; $472B: $00
    nop                                           ; $472C: $00
    nop                                           ; $472D: $00
    nop                                           ; $472E: $00
    nop                                           ; $472F: $00
    nop                                           ; $4730: $00
    nop                                           ; $4731: $00
    nop                                           ; $4732: $00
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
    nop                                           ; $4740: $00
    nop                                           ; $4741: $00
    nop                                           ; $4742: $00
    nop                                           ; $4743: $00
    ld bc, $0100                                  ; $4744: $01 $00 $01
    nop                                           ; $4747: $00
    inc bc                                        ; $4748: $03
    nop                                           ; $4749: $00
    inc bc                                        ; $474A: $03
    nop                                           ; $474B: $00
    rlca                                          ; $474C: $07
    nop                                           ; $474D: $00
    rlca                                          ; $474E: $07
    nop                                           ; $474F: $00
    rlca                                          ; $4750: $07
    nop                                           ; $4751: $00
    inc bc                                        ; $4752: $03
    nop                                           ; $4753: $00
    inc bc                                        ; $4754: $03
    nop                                           ; $4755: $00
    ld bc, $0100                                  ; $4756: $01 $00 $01
    nop                                           ; $4759: $00
    nop                                           ; $475A: $00
    nop                                           ; $475B: $00
    nop                                           ; $475C: $00
    nop                                           ; $475D: $00
    nop                                           ; $475E: $00
    nop                                           ; $475F: $00
    add b                                         ; $4760: $80
    nop                                           ; $4761: $00
    add b                                         ; $4762: $80
    nop                                           ; $4763: $00
    ret nz                                        ; $4764: $C0

    nop                                           ; $4765: $00
    ret nz                                        ; $4766: $C0

    nop                                           ; $4767: $00
    rst RST_38                                    ; $4768: $FF
    nop                                           ; $4769: $00
    rst RST_38                                    ; $476A: $FF
    ccf                                           ; $476B: $3F
    rst RST_18                                    ; $476C: $DF
    ccf                                           ; $476D: $3F
    call Call_000_0C3F                            ; $476E: $CD $3F $0C
    rst RST_38                                    ; $4771: $FF
    adc b                                         ; $4772: $88
    ld a, a                                       ; $4773: $7F
    ld b, b                                       ; $4774: $40
    ccf                                           ; $4775: $3F
    jr nz, jr_017_4797                            ; $4776: $20 $1F

    db $10                                        ; $4778: $10
    rrca                                          ; $4779: $0F
    jr jr_017_4783                                ; $477A: $18 $07

    dec l                                         ; $477C: $2D
    ld [de], a                                    ; $477D: $12
    ccf                                           ; $477E: $3F
    nop                                           ; $477F: $00
    add b                                         ; $4780: $80
    nop                                           ; $4781: $00
    ret nz                                        ; $4782: $C0

jr_017_4783:
    add b                                         ; $4783: $80
    pop hl                                        ; $4784: $E1
    ret nz                                        ; $4785: $C0

    ei                                            ; $4786: $FB
    pop bc                                        ; $4787: $C1
    rst RST_38                                    ; $4788: $FF
    ret c                                         ; $4789: $D8

    rst RST_38                                    ; $478A: $FF
    rst RST_18                                    ; $478B: $DF
    ld h, a                                       ; $478C: $67
    cp a                                          ; $478D: $BF
    ld h, d                                       ; $478E: $62
    cp a                                          ; $478F: $BF
    ld b, d                                       ; $4790: $42
    cp a                                          ; $4791: $BF
    add b                                         ; $4792: $80
    ld a, a                                       ; $4793: $7F
    pop bc                                        ; $4794: $C1
    ld a, $FA                                     ; $4795: $3E $FA

jr_017_4797:
    dec b                                         ; $4797: $05
    rst RST_38                                    ; $4798: $FF
    ld h, b                                       ; $4799: $60
    cp $7D                                        ; $479A: $FE $7D
    rst RST_38                                    ; $479C: $FF
    ld a, [hl]                                    ; $479D: $7E
    rst RST_38                                    ; $479E: $FF
    ld c, $07                                     ; $479F: $0E $07
    nop                                           ; $47A1: $00
    rrca                                          ; $47A2: $0F
    dec b                                         ; $47A3: $05
    rst RST_38                                    ; $47A4: $FF
    dec b                                         ; $47A5: $05
    rst RST_28                                    ; $47A6: $EF
    ld [hl], b                                    ; $47A7: $70
    rst RST_18                                    ; $47A8: $DF
    push hl                                       ; $47A9: $E5
    rst RST_38                                    ; $47AA: $FF
    inc b                                         ; $47AB: $04
    rst RST_38                                    ; $47AC: $FF
    pop bc                                        ; $47AD: $C1
    ld a, [hl]                                    ; $47AE: $7E
    db $E3                                        ; $47AF: $E3
    ld a, $E3                                     ; $47B0: $3E $E3
    ld a, $E3                                     ; $47B2: $3E $E3
    cp $03                                        ; $47B4: $FE $03
    cp a                                          ; $47B6: $BF
    ld b, l                                       ; $47B7: $45
    rst RST_28                                    ; $47B8: $EF
    db $10                                        ; $47B9: $10
    and a                                         ; $47BA: $A7
    ld e, c                                       ; $47BB: $59
    rst RST_20                                    ; $47BC: $E7
    dec de                                        ; $47BD: $1B
    rst RST_38                                    ; $47BE: $FF
    db $E3                                        ; $47BF: $E3
    inc bc                                        ; $47C0: $03

jr_017_47C1:
    nop                                           ; $47C1: $00
    inc bc                                        ; $47C2: $03
    ld bc, $0103                                  ; $47C3: $01 $03 $01
    inc bc                                        ; $47C6: $03
    ld bc, $0103                                  ; $47C7: $01 $03 $01
    inc bc                                        ; $47CA: $03
    ld bc, $00E1                                  ; $47CB: $01 $E1 $00
    ldh a, [$FFE0]                                ; $47CE: $F0 $E0
    pop af                                        ; $47D0: $F1
    ldh [$FFFB], a                                ; $47D1: $E0 $FB
    nop                                           ; $47D3: $00
    cp $B9                                        ; $47D4: $FE $B9
    db $FC                                        ; $47D6: $FC
    inc bc                                        ; $47D7: $03
    jr jr_017_47C1                                ; $47D8: $18 $E7

    ld [$08F7], sp                                ; $47DA: $08 $F7 $08
    rst RST_30                                    ; $47DD: $F7
    rrca                                          ; $47DE: $0F
    di                                            ; $47DF: $F3
    inc c                                         ; $47E0: $0C
    nop                                           ; $47E1: $00
    ld c, $04                                     ; $47E2: $0E $04
    adc [hl]                                      ; $47E4: $8E
    inc b                                         ; $47E5: $04
    adc e                                         ; $47E6: $8B
    ld b, $8B                                     ; $47E7: $06 $8B
    ld b, $7B                                     ; $47E9: $06 $7B
    add [hl]                                      ; $47EB: $86
    res 6, [hl]                                   ; $47EC: $CB $B6
    adc a                                         ; $47EE: $8F
    ld [hl], b                                    ; $47EF: $70
    sbc e                                         ; $47F0: $9B
    ld h, [hl]                                    ; $47F1: $66
    ld h, e                                       ; $47F2: $63
    sbc [hl]                                      ; $47F3: $9E
    add e                                         ; $47F4: $83
    ld a, [hl]                                    ; $47F5: $7E
    inc bc                                        ; $47F6: $03
    cp $03                                        ; $47F7: $FE $03
    cp $07                                        ; $47F9: $FE $07
    db $FC                                        ; $47FB: $FC
    ld e, $F8                                     ; $47FC: $1E $F8
    ld a, b                                       ; $47FE: $78
    ldh [$FF2A], a                                ; $47FF: $E0 $2A
    dec d                                         ; $4801: $15
    ld e, $01                                     ; $4802: $1E $01
    rra                                           ; $4804: $1F
    ld c, $0F                                     ; $4805: $0E $0F
    nop                                           ; $4807: $00
    add hl, bc                                    ; $4808: $09
    ld b, $0F                                     ; $4809: $06 $0F
    nop                                           ; $480B: $00
    inc b                                         ; $480C: $04
    inc bc                                        ; $480D: $03
    rlca                                          ; $480E: $07
    nop                                           ; $480F: $00
    nop                                           ; $4810: $00
    nop                                           ; $4811: $00
    nop                                           ; $4812: $00
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
    rst RST_38                                    ; $4820: $FF
    nop                                           ; $4821: $00
    rst RST_38                                    ; $4822: $FF
    nop                                           ; $4823: $00
    rst RST_38                                    ; $4824: $FF
    nop                                           ; $4825: $00
    rst RST_38                                    ; $4826: $FF
    nop                                           ; $4827: $00
    ccf                                           ; $4828: $3F
    nop                                           ; $4829: $00
    inc bc                                        ; $482A: $03
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
    nop                                           ; $483C: $00
    nop                                           ; $483D: $00
    nop                                           ; $483E: $00
    nop                                           ; $483F: $00
    rst RST_38                                    ; $4840: $FF
    nop                                           ; $4841: $00
    rst RST_38                                    ; $4842: $FF
    nop                                           ; $4843: $00
    add [hl]                                      ; $4844: $86
    ld a, c                                       ; $4845: $79

jr_017_4846:
    cp $01                                        ; $4846: $FE $01
    jp $FF3C                                      ; $4848: $C3 $3C $FF


    nop                                           ; $484B: $00
    ccf                                           ; $484C: $3F
    nop                                           ; $484D: $00
    ld bc, $0000                                  ; $484E: $01 $00 $00
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
    inc bc                                        ; $4860: $03
    db $FC                                        ; $4861: $FC
    rlca                                          ; $4862: $07
    ld hl, sp-$01                                 ; $4863: $F8 $FF
    nop                                           ; $4865: $00
    di                                            ; $4866: $F3
    adc h                                         ; $4867: $8C
    rst RST_38                                    ; $4868: $FF
    db $E4                                        ; $4869: $E4
    ei                                            ; $486A: $FB
    db $F4                                        ; $486B: $F4
    rst RST_38                                    ; $486C: $FF
    ld hl, sp-$01                                 ; $486D: $F8 $FF
    ccf                                           ; $486F: $3F
    rst RST_38                                    ; $4870: $FF
    rrca                                          ; $4871: $0F
    ld a, a                                       ; $4872: $7F
    add b                                         ; $4873: $80
    xor d                                         ; $4874: $AA
    ld d, l                                       ; $4875: $55
    and $19                                       ; $4876: $E6 $19
    sbc c                                         ; $4878: $99
    ld h, [hl]                                    ; $4879: $66
    rst RST_38                                    ; $487A: $FF
    nop                                           ; $487B: $00
    nop                                           ; $487C: $00
    nop                                           ; $487D: $00
    nop                                           ; $487E: $00
    nop                                           ; $487F: $00
    add sp, -$70                                  ; $4880: $E8 $90
    sub b                                         ; $4882: $90
    ld h, b                                       ; $4883: $60
    jr nz, jr_017_4846                            ; $4884: $20 $C0

    ret nz                                        ; $4886: $C0

    nop                                           ; $4887: $00
    add b                                         ; $4888: $80
    nop                                           ; $4889: $00
    db $FC                                        ; $488A: $FC
    add b                                         ; $488B: $80
    db $E4                                        ; $488C: $E4
    ret c                                         ; $488D: $D8

    db $E4                                        ; $488E: $E4
    ret c                                         ; $488F: $D8

    add sp, -$70                                  ; $4890: $E8 $90
    ldh a, [rP1]                                  ; $4892: $F0 $00
    and b                                         ; $4894: $A0
    ld b, b                                       ; $4895: $40
    ldh [rP1], a                                  ; $4896: $E0 $00
    ld h, b                                       ; $4898: $60
    add b                                         ; $4899: $80
    ret nz                                        ; $489A: $C0

    nop                                           ; $489B: $00
    add b                                         ; $489C: $80
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
    nop                                           ; $48AE: $00
    nop                                           ; $48AF: $00
    nop                                           ; $48B0: $00
    nop                                           ; $48B1: $00
    ld bc, $0300                                  ; $48B2: $01 $00 $03
    ld bc, $0003                                  ; $48B5: $01 $03 $00
    nop                                           ; $48B8: $00
    nop                                           ; $48B9: $00
    nop                                           ; $48BA: $00
    nop                                           ; $48BB: $00
    ld bc, $0100                                  ; $48BC: $01 $00 $01
    nop                                           ; $48BF: $00
    inc bc                                        ; $48C0: $03
    nop                                           ; $48C1: $00
    rst RST_38                                    ; $48C2: $FF
    ld bc, $EAF5                                  ; $48C3: $01 $F5 $EA
    ld l, c                                       ; $48C6: $69
    sub [hl]                                      ; $48C7: $96
    xor c                                         ; $48C8: $A9
    ld d, [hl]                                    ; $48C9: $56
    ld a, [$AE05]                                 ; $48CA: $FA $05 $AE
    ld b, c                                       ; $48CD: $41
    ld b, e                                       ; $48CE: $43
    add b                                         ; $48CF: $80
    add b                                         ; $48D0: $80
    nop                                           ; $48D1: $00
    nop                                           ; $48D2: $00
    nop                                           ; $48D3: $00
    nop                                           ; $48D4: $00
    nop                                           ; $48D5: $00
    ld bc, $0300                                  ; $48D6: $01 $00 $03
    ld bc, $0103                                  ; $48D9: $01 $03 $01
    ld bc, $0100                                  ; $48DC: $01 $00 $01
    nop                                           ; $48DF: $00
    inc bc                                        ; $48E0: $03
    nop                                           ; $48E1: $00
    ld [bc], a                                    ; $48E2: $02
    ld bc, $01FE                                  ; $48E3: $01 $FE $01
    rst RST_38                                    ; $48E6: $FF
    cp $03                                        ; $48E7: $FE $03
    cp $03                                        ; $48E9: $FE $03
    cp $83                                        ; $48EB: $FE $83
    ld a, [hl]                                    ; $48ED: $7E
    add a                                         ; $48EE: $87
    ld a, h                                       ; $48EF: $7C
    ld b, [hl]                                    ; $48F0: $46
    cp l                                          ; $48F1: $BD
    ld b, a                                       ; $48F2: $47
    cp h                                          ; $48F3: $BC
    and [hl]                                      ; $48F4: $A6
    ld e, l                                       ; $48F5: $5D
    db $EC                                        ; $48F6: $EC
    inc de                                        ; $48F7: $13
    ldh a, [rVBK]                                 ; $48F8: $F0 $4F
    ldh a, [$FF2F]                                ; $48FA: $F0 $2F
    ldh a, [$FFAF]                                ; $48FC: $F0 $AF
    ld hl, sp-$29                                 ; $48FE: $F8 $D7
    add b                                         ; $4900: $80
    nop                                           ; $4901: $00
    ld h, b                                       ; $4902: $60
    add b                                         ; $4903: $80
    ld a, a                                       ; $4904: $7F
    add b                                         ; $4905: $80
    ld sp, hl                                     ; $4906: $F9
    ld b, [hl]                                    ; $4907: $46
    db $FC                                        ; $4908: $FC
    di                                            ; $4909: $F3
    rst RST_38                                    ; $490A: $FF

jr_017_490B:
    jr c, jr_017_490B                             ; $490B: $38 $FE

    add hl, de                                    ; $490D: $19
    cp a                                          ; $490E: $BF
    call z, $CCBF                                 ; $490F: $CC $BF $CC
    ld a, a                                       ; $4912: $7F
    sbc $FF                                       ; $4913: $DE $FF
    ld a, $3F                                     ; $4915: $3E $3F
    rst RST_18                                    ; $4917: $DF
    ccf                                           ; $4918: $3F
    rst RST_18                                    ; $4919: $DF
    rra                                           ; $491A: $1F
    rst RST_20                                    ; $491B: $E7
    rra                                           ; $491C: $1F
    add sp, $39                                   ; $491D: $E8 $39
    and $C0                                       ; $491F: $E6 $C0
    nop                                           ; $4921: $00
    ld b, b                                       ; $4922: $40
    add b                                         ; $4923: $80
    ld h, b                                       ; $4924: $60
    add b                                         ; $4925: $80
    or b                                          ; $4926: $B0
    ld b, b                                       ; $4927: $40
    db $10                                        ; $4928: $10
    ldh [$FFD8], a                                ; $4929: $E0 $D8
    jr nz, @-$46                                  ; $492B: $20 $B8

    ld b, b                                       ; $492D: $40
    call z, $EC30                                 ; $492E: $CC $30 $EC
    db $10                                        ; $4931: $10
    sbc h                                         ; $4932: $9C
    ld h, b                                       ; $4933: $60
    ld a, [$EA04]                                 ; $4934: $FA $04 $EA
    inc d                                         ; $4937: $14
    ld [$6E14], a                                 ; $4938: $EA $14 $6E
    sub b                                         ; $493B: $90
    xor [hl]                                      ; $493C: $AE
    ld d, b                                       ; $493D: $50
    ld a, [hl]                                    ; $493E: $7E
    add b                                         ; $493F: $80
    db $FC                                        ; $4940: $FC
    rst RST_10                                    ; $4941: $D7
    rst RST_38                                    ; $4942: $FF
    db $EB                                        ; $4943: $EB
    rst RST_38                                    ; $4944: $FF
    ld l, h                                       ; $4945: $6C
    rst RST_38                                    ; $4946: $FF
    ld d, e                                       ; $4947: $53
    ld a, a                                       ; $4948: $7F
    ld [hl-], a                                   ; $4949: $32
    ld [hl], e                                    ; $494A: $73
    inc l                                         ; $494B: $2C
    ccf                                           ; $494C: $3F
    ld c, $0F                                     ; $494D: $0E $0F
    nop                                           ; $494F: $00
    rlca                                          ; $4950: $07
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
    ei                                            ; $4960: $FB
    call nz, $39FE                                ; $4961: $C4 $FE $39
    rst RST_38                                    ; $4964: $FF
    ret nz                                        ; $4965: $C0

    rst RST_38                                    ; $4966: $FF
    nop                                           ; $4967: $00
    rst RST_38                                    ; $4968: $FF
    dec e                                         ; $4969: $1D
    and a                                         ; $496A: $A7
    ld a, [hl]                                    ; $496B: $7E
    rrca                                          ; $496C: $0F
    cp $17                                        ; $496D: $FE $17
    rst RST_38                                    ; $496F: $FF
    add c                                         ; $4970: $81
    ld a, [hl]                                    ; $4971: $7E
    add [hl]                                      ; $4972: $86
    ld a, c                                       ; $4973: $79
    ld e, c                                       ; $4974: $59
    daa                                           ; $4975: $27
    ld h, c                                       ; $4976: $61
    rra                                           ; $4977: $1F
    ld b, d                                       ; $4978: $42
    ccf                                           ; $4979: $3F
    add b                                         ; $497A: $80
    ld a, a                                       ; $497B: $7F
    ret nz                                        ; $497C: $C0

    ccf                                           ; $497D: $3F
    jr nc, jr_017_498F                            ; $497E: $30 $0F

    cp $40                                        ; $4980: $FE $40
    cp $C0                                        ; $4982: $FE $C0
    rst RST_38                                    ; $4984: $FF
    ldh [rIE], a                                  ; $4985: $E0 $FF
    ldh [rIE], a                                  ; $4987: $E0 $FF
    ld h, b                                       ; $4989: $60
    rst RST_38                                    ; $498A: $FF
    db $10                                        ; $498B: $10
    db $FD                                        ; $498C: $FD
    ldh [c], a                                    ; $498D: $E2
    push af                                       ; $498E: $F5

jr_017_498F:
    ld [$E0FE], a                                 ; $498F: $EA $FE $E0
    ld [hl], h                                    ; $4992: $74
    add sp, -$48                                  ; $4993: $E8 $B8
    ldh [$FF30], a                                ; $4995: $E0 $30
    ldh [rSVBK], a                                ; $4997: $E0 $70
    ldh [$FF30], a                                ; $4999: $E0 $30
    ret nz                                        ; $499B: $C0

    ld l, h                                       ; $499C: $6C
    sub b                                         ; $499D: $90
    call c, Call_000_0C20                         ; $499E: $DC $20 $0C
    inc bc                                        ; $49A1: $03
    inc bc                                        ; $49A2: $03
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
    ld a, $00                                     ; $49C0: $3E $00
    ld a, $00                                     ; $49C2: $3E $00
    ld e, $00                                     ; $49C4: $1E $00
    ld b, $00                                     ; $49C6: $06 $00
    nop                                           ; $49C8: $00
    nop                                           ; $49C9: $00
    nop                                           ; $49CA: $00
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
    nop                                           ; $49E0: $00
    nop                                           ; $49E1: $00
    nop                                           ; $49E2: $00
    nop                                           ; $49E3: $00
    nop                                           ; $49E4: $00
    nop                                           ; $49E5: $00
    nop                                           ; $49E6: $00
    nop                                           ; $49E7: $00
    nop                                           ; $49E8: $00
    nop                                           ; $49E9: $00
    nop                                           ; $49EA: $00
    nop                                           ; $49EB: $00
    nop                                           ; $49EC: $00
    nop                                           ; $49ED: $00
    nop                                           ; $49EE: $00
    nop                                           ; $49EF: $00
    nop                                           ; $49F0: $00
    nop                                           ; $49F1: $00
    ld b, $00                                     ; $49F2: $06 $00
    dec de                                        ; $49F4: $1B
    inc b                                         ; $49F5: $04
    ld a, a                                       ; $49F6: $7F
    nop                                           ; $49F7: $00
    rst RST_38                                    ; $49F8: $FF
    nop                                           ; $49F9: $00
    ld a, a                                       ; $49FA: $7F
    nop                                           ; $49FB: $00
    rra                                           ; $49FC: $1F
    nop                                           ; $49FD: $00
    ld b, $00                                     ; $49FE: $06 $00
    ld a, a                                       ; $4A00: $7F
    nop                                           ; $4A01: $00
    ccf                                           ; $4A02: $3F
    rrca                                          ; $4A03: $0F
    rrca                                          ; $4A04: $0F
    ld bc, $0001                                  ; $4A05: $01 $01 $00
    rra                                           ; $4A08: $1F
    nop                                           ; $4A09: $00
    rrca                                          ; $4A0A: $0F
    inc bc                                        ; $4A0B: $03
    inc bc                                        ; $4A0C: $03
    nop                                           ; $4A0D: $00
    nop                                           ; $4A0E: $00
    nop                                           ; $4A0F: $00
    nop                                           ; $4A10: $00
    nop                                           ; $4A11: $00
    inc bc                                        ; $4A12: $03
    nop                                           ; $4A13: $00
    rrca                                          ; $4A14: $0F
    inc bc                                        ; $4A15: $03
    ccf                                           ; $4A16: $3F
    rrca                                          ; $4A17: $0F
    cp $3F                                        ; $4A18: $FE $3F
    and $5F                                       ; $4A1A: $E6 $5F
    jp nc, $D22F                                  ; $4A1C: $D2 $2F $D2

jr_017_4A1F:
    cpl                                           ; $4A1F: $2F
    ldh a, [rP1]                                  ; $4A20: $F0 $00
    cp $F0                                        ; $4A22: $FE $F0
    adc a                                         ; $4A24: $8F
    cp $E1                                        ; $4A25: $FE $E1
    ld a, a                                       ; $4A27: $7F
    ldh a, [$FF1F]                                ; $4A28: $F0 $1F
    ld hl, sp-$01                                 ; $4A2A: $F8 $FF
    ret nz                                        ; $4A2C: $C0

    rst RST_38                                    ; $4A2D: $FF
    ldh a, [$FF3F]                                ; $4A2E: $F0 $3F
    dec sp                                        ; $4A30: $3B
    inc c                                         ; $4A31: $0C
    rst RST_38                                    ; $4A32: $FF
    ld a, [hl-]                                   ; $4A33: $3A
    rst RST_30                                    ; $4A34: $F7
    add hl, de                                    ; $4A35: $19
    rst RST_38                                    ; $4A36: $FF
    add b                                         ; $4A37: $80
    rst RST_38                                    ; $4A38: $FF
    cp a                                          ; $4A39: $BF
    dec l                                         ; $4A3A: $2D
    rst RST_18                                    ; $4A3B: $DF
    inc h                                         ; $4A3C: $24
    rst RST_18                                    ; $4A3D: $DF
    jr nz, jr_017_4A1F                            ; $4A3E: $20 $DF

    ld a, a                                       ; $4A40: $7F
    nop                                           ; $4A41: $00
    ccf                                           ; $4A42: $3F
    rrca                                          ; $4A43: $0F
    rrca                                          ; $4A44: $0F
    inc bc                                        ; $4A45: $03
    inc bc                                        ; $4A46: $03
    nop                                           ; $4A47: $00
    add b                                         ; $4A48: $80
    nop                                           ; $4A49: $00
    rst RST_18                                    ; $4A4A: $DF
    add b                                         ; $4A4B: $80
    ld l, a                                       ; $4A4C: $6F
    jp $E133                                      ; $4A4D: $C3 $33 $E1


    add hl, de                                    ; $4A50: $19
    ldh a, [rIF]                                  ; $4A51: $F0 $0F
    pop af                                        ; $4A53: $F1
    rst RST_38                                    ; $4A54: $FF
    ld a, [bc]                                    ; $4A55: $0A
    rst RST_18                                    ; $4A56: $DF
    add sp, -$41                                  ; $4A57: $E8 $BF
    ret nz                                        ; $4A59: $C0

    rst RST_38                                    ; $4A5A: $FF
    ld a, [de]                                    ; $4A5B: $1A
    rst RST_38                                    ; $4A5C: $FF
    db $10                                        ; $4A5D: $10
    db $FC                                        ; $4A5E: $FC
    add a                                         ; $4A5F: $87
    ldh [rP1], a                                  ; $4A60: $E0 $00
    ld hl, sp-$20                                 ; $4A62: $F8 $E0
    sbc [hl]                                      ; $4A64: $9E
    ld hl, sp-$39                                 ; $4A65: $F8 $C7
    ld a, [hl]                                    ; $4A67: $7E
    pop hl                                        ; $4A68: $E1
    ccf                                           ; $4A69: $3F
    ldh a, [$FF9F]                                ; $4A6A: $F0 $9F
    ld a, b                                       ; $4A6C: $78
    rst RST_28                                    ; $4A6D: $EF
    sbc b                                         ; $4A6E: $98
    rst RST_38                                    ; $4A6F: $FF
    add h                                         ; $4A70: $84
    rst RST_38                                    ; $4A71: $FF
    ret nz                                        ; $4A72: $C0

    ld a, a                                       ; $4A73: $7F
    ldh [$FF3F], a                                ; $4A74: $E0 $3F
    ldh a, [$FFDF]                                ; $4A76: $F0 $DF
    ldh a, [$FF7F]                                ; $4A78: $F0 $7F
    add sp, $3F                                   ; $4A7A: $E8 $3F
    ld [hl], b                                    ; $4A7C: $70
    sbc a                                         ; $4A7D: $9F
    jr c, @-$2F                                   ; $4A7E: $38 $CF

    jr nc, jr_017_4A82                            ; $4A80: $30 $00

jr_017_4A82:
    jr c, @+$12                                   ; $4A82: $38 $10

    jr c, @+$12                                   ; $4A84: $38 $10

    xor h                                         ; $4A86: $AC
    jr @-$12                                      ; $4A87: $18 $EC

    sbc b                                         ; $4A89: $98
    ld l, h                                       ; $4A8A: $6C
    ret c                                         ; $4A8B: $D8

    inc a                                         ; $4A8C: $3C
    add sp, $1C                                   ; $4A8D: $E8 $1C
    ldh a, [rNR32]                                ; $4A8F: $F0 $1C
    ldh a, [$FF0C]                                ; $4A91: $F0 $0C
    ld hl, sp+$0C                                 ; $4A93: $F8 $0C
    ld hl, sp+$06                                 ; $4A95: $F8 $06
    db $FC                                        ; $4A97: $FC
    ld b, $FC                                     ; $4A98: $06 $FC
    ld b, $FC                                     ; $4A9A: $06 $FC
    inc bc                                        ; $4A9C: $03
    cp $43                                        ; $4A9D: $FE $43
    cp $D0                                        ; $4A9F: $FE $D0

jr_017_4AA1:
    cpl                                           ; $4AA1: $2F
    and b                                         ; $4AA2: $A0

jr_017_4AA3:
    ld e, a                                       ; $4AA3: $5F
    pop hl                                        ; $4AA4: $E1
    ccf                                           ; $4AA5: $3F
    dec sp                                        ; $4AA6: $3B
    rrca                                          ; $4AA7: $0F
    ld e, a                                       ; $4AA8: $5F
    inc hl                                        ; $4AA9: $23
    ld a, e                                       ; $4AAA: $7B
    inc b                                         ; $4AAB: $04
    ld d, a                                       ; $4AAC: $57
    jr z, jr_017_4AEE                             ; $4AAD: $28 $3F

    ld bc, $001F                                  ; $4AAF: $01 $1F $00
    inc de                                        ; $4AB2: $13
    inc c                                         ; $4AB3: $0C
    rrca                                          ; $4AB4: $0F
    nop                                           ; $4AB5: $00
    add hl, bc                                    ; $4AB6: $09
    ld b, $07                                     ; $4AB7: $06 $07
    nop                                           ; $4AB9: $00
    nop                                           ; $4ABA: $00
    nop                                           ; $4ABB: $00
    nop                                           ; $4ABC: $00
    nop                                           ; $4ABD: $00
    nop                                           ; $4ABE: $00
    nop                                           ; $4ABF: $00
    jr nz, jr_017_4AA1                            ; $4AC0: $20 $DF

    jr nz, jr_017_4AA3                            ; $4AC2: $20 $DF

    ld h, c                                       ; $4AC4: $61
    cp a                                          ; $4AC5: $BF
    ld a, a                                       ; $4AC6: $7F
    add b                                         ; $4AC7: $80
    rst RST_38                                    ; $4AC8: $FF
    nop                                           ; $4AC9: $00
    db $FD                                        ; $4ACA: $FD
    ld a, [$F8FF]                                 ; $4ACB: $FA $FF $F8
    db $FD                                        ; $4ACE: $FD
    ld a, [$00FF]                                 ; $4ACF: $FA $FF $00
    rst RST_38                                    ; $4AD2: $FF
    nop                                           ; $4AD3: $00
    rst RST_38                                    ; $4AD4: $FF
    nop                                           ; $4AD5: $00
    rst RST_38                                    ; $4AD6: $FF
    nop                                           ; $4AD7: $00
    rst RST_38                                    ; $4AD8: $FF
    nop                                           ; $4AD9: $00
    rrca                                          ; $4ADA: $0F
    nop                                           ; $4ADB: $00
    inc bc                                        ; $4ADC: $03
    nop                                           ; $4ADD: $00
    ld bc, $F800                                  ; $4ADE: $01 $00 $F8
    adc a                                         ; $4AE1: $8F
    ld a, b                                       ; $4AE2: $78
    adc a                                         ; $4AE3: $8F
    ld a, b                                       ; $4AE4: $78
    adc a                                         ; $4AE5: $8F
    ld a, b                                       ; $4AE6: $78
    adc a                                         ; $4AE7: $8F
    db $FC                                        ; $4AE8: $FC
    rla                                           ; $4AE9: $17
    rst RST_38                                    ; $4AEA: $FF
    nop                                           ; $4AEB: $00
    rst RST_38                                    ; $4AEC: $FF
    nop                                           ; $4AED: $00

jr_017_4AEE:
    ld e, a                                       ; $4AEE: $5F
    xor e                                         ; $4AEF: $AB
    rst RST_08                                    ; $4AF0: $CF
    scf                                           ; $4AF1: $37
    ld e, a                                       ; $4AF2: $5F
    and a                                         ; $4AF3: $A7
    rst RST_38                                    ; $4AF4: $FF
    rlca                                          ; $4AF5: $07
    rst RST_38                                    ; $4AF6: $FF
    nop                                           ; $4AF7: $00
    dec c                                         ; $4AF8: $0D
    ldh a, [c]                                    ; $4AF9: $F2
    db $FC                                        ; $4AFA: $FC
    inc bc                                        ; $4AFB: $03
    add a                                         ; $4AFC: $87
    ld a, b                                       ; $4AFD: $78
    rst RST_38                                    ; $4AFE: $FF
    nop                                           ; $4AFF: $00
    inc a                                         ; $4B00: $3C
    rst RST_00                                    ; $4B01: $C7
    ld a, $C3                                     ; $4B02: $3E $C3
    rrca                                          ; $4B04: $0F
    pop af                                        ; $4B05: $F1
    rra                                           ; $4B06: $1F
    pop hl                                        ; $4B07: $E1
    rst RST_20                                    ; $4B08: $E7

jr_017_4B09:
    jr jr_017_4B09                                ; $4B09: $18 $FE

    jr @-$08                                      ; $4B0B: $18 $F6

    add sp, -$01                                  ; $4B0D: $E8 $FF
    ldh [rIE], a                                  ; $4B0F: $E0 $FF
    di                                            ; $4B11: $F3
    rst RST_38                                    ; $4B12: $FF
    rst RST_38                                    ; $4B13: $FF
    rst RST_38                                    ; $4B14: $FF
    rra                                           ; $4B15: $1F
    ld a, a                                       ; $4B16: $7F
    add e                                         ; $4B17: $83
    rst RST_28                                    ; $4B18: $EF
    db $10                                        ; $4B19: $10
    ld [hl], a                                    ; $4B1A: $77
    adc b                                         ; $4B1B: $88
    call $F332                                    ; $4B1C: $CD $32 $F3
    inc c                                         ; $4B1F: $0C
    ld h, e                                       ; $4B20: $63
    cp $73                                        ; $4B21: $FE $73
    sbc [hl]                                      ; $4B23: $9E
    ld a, e                                       ; $4B24: $7B
    adc $FB                                       ; $4B25: $CE $FB
    adc $EF                                       ; $4B27: $CE $EF
    ld b, [hl]                                    ; $4B29: $46
    rst RST_28                                    ; $4B2A: $EF

jr_017_4B2B:
    ld b, [hl]                                    ; $4B2B: $46
    ld h, a                                       ; $4B2C: $67
    ld [bc], a                                    ; $4B2D: $02
    add a                                         ; $4B2E: $87
    ld [bc], a                                    ; $4B2F: $02
    rst RST_00                                    ; $4B30: $C7
    add d                                         ; $4B31: $82
    db $E3                                        ; $4B32: $E3
    add b                                         ; $4B33: $80
    db $D3                                        ; $4B34: $D3
    and b                                         ; $4B35: $A0
    ret                                           ; $4B36: $C9


    or b                                          ; $4B37: $B0
    ret                                           ; $4B38: $C9


    jr nc, jr_017_4B2B                            ; $4B39: $30 $F0

    nop                                           ; $4B3B: $00
    add b                                         ; $4B3C: $80
    nop                                           ; $4B3D: $00
    add b                                         ; $4B3E: $80
    nop                                           ; $4B3F: $00
    rst RST_38                                    ; $4B40: $FF
    nop                                           ; $4B41: $00
    ld hl, sp+$00                                 ; $4B42: $F8 $00
    ldh a, [rP1]                                  ; $4B44: $F0 $00
    nop                                           ; $4B46: $00
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
    nop                                           ; $4B58: $00
    nop                                           ; $4B59: $00
    nop                                           ; $4B5A: $00
    nop                                           ; $4B5B: $00
    nop                                           ; $4B5C: $00
    nop                                           ; $4B5D: $00
    nop                                           ; $4B5E: $00
    nop                                           ; $4B5F: $00
    ld a, [$7D05]                                 ; $4B60: $FA $05 $7D
    ld [bc], a                                    ; $4B63: $02
    ld a, $00                                     ; $4B64: $3E $00
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
    ld bc, $0100                                  ; $4B80: $01 $00 $01
    nop                                           ; $4B83: $00
    inc bc                                        ; $4B84: $03
    ld bc, $0103                                  ; $4B85: $01 $03 $01
    ld b, $03                                     ; $4B88: $06 $03
    ld b, $03                                     ; $4B8A: $06 $03
    inc c                                         ; $4B8C: $0C
    rlca                                          ; $4B8D: $07
    dec c                                         ; $4B8E: $0D
    rlca                                          ; $4B8F: $07
    dec c                                         ; $4B90: $0D
    ld b, $1B                                     ; $4B91: $06 $1B
    inc c                                         ; $4B93: $0C
    ld e, $09                                     ; $4B94: $1E $09
    jr jr_017_4BA7                                ; $4B96: $18 $0F

    inc sp                                        ; $4B98: $33
    inc e                                         ; $4B99: $1C
    inc a                                         ; $4B9A: $3C
    db $10                                        ; $4B9B: $10
    jr nc, jr_017_4B9E                            ; $4B9C: $30 $00

jr_017_4B9E:
    nop                                           ; $4B9E: $00
    nop                                           ; $4B9F: $00
    ld bc, $0300                                  ; $4BA0: $01 $00 $03
    ld bc, $0307                                  ; $4BA3: $01 $07 $03
    rrca                                          ; $4BA6: $0F

jr_017_4BA7:
    rlca                                          ; $4BA7: $07
    rra                                           ; $4BA8: $1F
    ld c, $3F                                     ; $4BA9: $0E $3F
    ld e, $7F                                     ; $4BAB: $1E $7F
    ccf                                           ; $4BAD: $3F
    rst RST_38                                    ; $4BAE: $FF
    ld a, [hl]                                    ; $4BAF: $7E
    rst RST_38                                    ; $4BB0: $FF
    ld a, l                                       ; $4BB1: $7D
    or $FB                                        ; $4BB2: $F6 $FB
    db $EC                                        ; $4BB4: $EC
    rst RST_30                                    ; $4BB5: $F7
    ret c                                         ; $4BB6: $D8

    rst RST_28                                    ; $4BB7: $EF
    ldh a, [$FFDF]                                ; $4BB8: $F0 $DF
    ldh a, [$FF9F]                                ; $4BBA: $F0 $9F
    ld h, b                                       ; $4BBC: $60
    cp a                                          ; $4BBD: $BF
    rst RST_00                                    ; $4BBE: $C7
    ld a, b                                       ; $4BBF: $78
    jr nc, jr_017_4BC2                            ; $4BC0: $30 $00

jr_017_4BC2:
    ld [hl], b                                    ; $4BC2: $70
    jr nz, @-$1E                                  ; $4BC3: $20 $E0

    ld b, b                                       ; $4BC5: $40
    call z, $DC80                                 ; $4BC6: $CC $80 $DC
    adc b                                         ; $4BC9: $88
    cp e                                          ; $4BCA: $BB
    db $10                                        ; $4BCB: $10
    rst RST_38                                    ; $4BCC: $FF
    inc sp                                        ; $4BCD: $33
    rst RST_38                                    ; $4BCE: $FF
    ld c, a                                       ; $4BCF: $4F
    rst RST_38                                    ; $4BD0: $FF
    cp a                                          ; $4BD1: $BF
    rst RST_18                                    ; $4BD2: $DF
    ld a, a                                       ; $4BD3: $7F
    cp [hl]                                       ; $4BD4: $BE
    rst RST_38                                    ; $4BD5: $FF
    jr c, @+$01                                   ; $4BD6: $38 $FF

    ld [hl], b                                    ; $4BD8: $70
    rst RST_38                                    ; $4BD9: $FF
    ld h, b                                       ; $4BDA: $60
    rst RST_38                                    ; $4BDB: $FF
    ld b, b                                       ; $4BDC: $40
    rst RST_38                                    ; $4BDD: $FF
    add b                                         ; $4BDE: $80
    rst RST_38                                    ; $4BDF: $FF
    inc bc                                        ; $4BE0: $03
    nop                                           ; $4BE1: $00
    rrca                                          ; $4BE2: $0F
    inc bc                                        ; $4BE3: $03
    ccf                                           ; $4BE4: $3F
    rrca                                          ; $4BE5: $0F
    rst RST_38                                    ; $4BE6: $FF
    ld a, $FF                                     ; $4BE7: $3E $FF
    db $FC                                        ; $4BE9: $FC
    rst RST_38                                    ; $4BEA: $FF
    ld sp, hl                                     ; $4BEB: $F9
    rst RST_38                                    ; $4BEC: $FF
    rst RST_38                                    ; $4BED: $FF
    rst RST_38                                    ; $4BEE: $FF
    rst RST_38                                    ; $4BEF: $FF
    cp a                                          ; $4BF0: $BF
    rst RST_38                                    ; $4BF1: $FF
    ld a, c                                       ; $4BF2: $79
    rst RST_38                                    ; $4BF3: $FF
    ld h, e                                       ; $4BF4: $63
    cp $C7                                        ; $4BF5: $FE $C7
    db $FD                                        ; $4BF7: $FD
    adc a                                         ; $4BF8: $8F
    ld hl, sp+$1F                                 ; $4BF9: $F8 $1F
    di                                            ; $4BFB: $F3
    inc e                                         ; $4BFC: $1C
    rst RST_38                                    ; $4BFD: $FF
    inc bc                                        ; $4BFE: $03
    db $FC                                        ; $4BFF: $FC
    rra                                           ; $4C00: $1F
    nop                                           ; $4C01: $00
    rst RST_38                                    ; $4C02: $FF
    ld e, $FE                                     ; $4C03: $1E $FE
    ld hl, sp-$08                                 ; $4C05: $F8 $F8
    ldh [$FFE0], a                                ; $4C07: $E0 $E0
    add b                                         ; $4C09: $80
    cp a                                          ; $4C0A: $BF
    nop                                           ; $4C0B: $00
    rst RST_38                                    ; $4C0C: $FF
    ld a, $FE                                     ; $4C0D: $3E $FE
    ld hl, sp-$01                                 ; $4C0F: $F8 $FF
    ldh [rIE], a                                  ; $4C11: $E0 $FF
    set 3, a                                      ; $4C13: $CB $DF
    xor e                                         ; $4C15: $AB
    cp a                                          ; $4C16: $BF
    ld b, b                                       ; $4C17: $40
    rst RST_38                                    ; $4C18: $FF
    nop                                           ; $4C19: $00
    ldh [$FF1F], a                                ; $4C1A: $E0 $1F
    ret nz                                        ; $4C1C: $C0

    ccf                                           ; $4C1D: $3F
    ldh a, [$FFCF]                                ; $4C1E: $F0 $CF
    ret nz                                        ; $4C20: $C0

    nop                                           ; $4C21: $00
    ldh [$FFC0], a                                ; $4C22: $E0 $C0
    ldh [$FFC0], a                                ; $4C24: $E0 $C0
    ldh [rP1], a                                  ; $4C26: $E0 $00
    ldh a, [$FF60]                                ; $4C28: $F0 $60
    ldh a, [$FF80]                                ; $4C2A: $F0 $80
    ld a, h                                       ; $4C2C: $7C
    ret nz                                        ; $4C2D: $C0

    ld h, h                                       ; $4C2E: $64

jr_017_4C2F:
    ret c                                         ; $4C2F: $D8

    ld h, a                                       ; $4C30: $67
    ret c                                         ; $4C31: $D8

    ld h, h                                       ; $4C32: $64
    db $DB                                        ; $4C33: $DB
    db $FC                                        ; $4C34: $FC
    add e                                         ; $4C35: $83
    and h                                         ; $4C36: $A4
    ld e, e                                       ; $4C37: $5B
    and a                                         ; $4C38: $A7
    ld e, b                                       ; $4C39: $58
    rst RST_38                                    ; $4C3A: $FF
    add hl, bc                                    ; $4C3B: $09
    rst RST_30                                    ; $4C3C: $F7
    jp hl                                         ; $4C3D: $E9


    rst RST_38                                    ; $4C3E: $FF
    pop hl                                        ; $4C3F: $E1
    ret nz                                        ; $4C40: $C0

    nop                                           ; $4C41: $00
    or b                                          ; $4C42: $B0
    ld b, b                                       ; $4C43: $40
    xor b                                         ; $4C44: $A8
    ld d, b                                       ; $4C45: $50
    xor h                                         ; $4C46: $AC
    ld d, b                                       ; $4C47: $50
    ld a, [$CB04]                                 ; $4C48: $FA $04 $CB
    or h                                          ; $4C4B: $B4
    rst RST_08                                    ; $4C4C: $CF
    or b                                          ; $4C4D: $B0
    call c, $EF27                                 ; $4C4E: $DC $27 $EF
    inc de                                        ; $4C51: $13
    ld e, a                                       ; $4C52: $5F
    add b                                         ; $4C53: $80
    ret nz                                        ; $4C54: $C0

    nop                                           ; $4C55: $00
    ret nz                                        ; $4C56: $C0

    nop                                           ; $4C57: $00
    add b                                         ; $4C58: $80
    nop                                           ; $4C59: $00
    nop                                           ; $4C5A: $00
    nop                                           ; $4C5B: $00
    nop                                           ; $4C5C: $00
    nop                                           ; $4C5D: $00
    nop                                           ; $4C5E: $00
    nop                                           ; $4C5F: $00
    db $DB                                        ; $4C60: $DB
    ld h, h                                       ; $4C61: $64
    ldh [$FF9F], a                                ; $4C62: $E0 $9F
    add b                                         ; $4C64: $80
    ld a, a                                       ; $4C65: $7F
    jr c, jr_017_4C2F                             ; $4C66: $38 $C7

    rst RST_00                                    ; $4C68: $C7
    nop                                           ; $4C69: $00
    nop                                           ; $4C6A: $00
    nop                                           ; $4C6B: $00
    nop                                           ; $4C6C: $00
    nop                                           ; $4C6D: $00
    nop                                           ; $4C6E: $00
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
    rst RST_38                                    ; $4C81: $FF
    nop                                           ; $4C82: $00
    rst RST_38                                    ; $4C83: $FF
    inc bc                                        ; $4C84: $03
    db $FC                                        ; $4C85: $FC
    rst RST_38                                    ; $4C86: $FF
    inc bc                                        ; $4C87: $03
    rst RST_38                                    ; $4C88: $FF
    ld h, e                                       ; $4C89: $63
    cp e                                          ; $4C8A: $BB
    ld b, h                                       ; $4C8B: $44
    rst RST_30                                    ; $4C8C: $F7
    ld [HeaderManufacturerCode], sp               ; $4C8D: $08 $3F $01
    rra                                           ; $4C90: $1F
    nop                                           ; $4C91: $00
    inc de                                        ; $4C92: $13
    inc c                                         ; $4C93: $0C
    rrca                                          ; $4C94: $0F
    nop                                           ; $4C95: $00
    add hl, bc                                    ; $4C96: $09
    ld b, $07                                     ; $4C97: $06 $07
    nop                                           ; $4C99: $00
    nop                                           ; $4C9A: $00
    nop                                           ; $4C9B: $00
    nop                                           ; $4C9C: $00
    nop                                           ; $4C9D: $00
    nop                                           ; $4C9E: $00
    nop                                           ; $4C9F: $00
    inc a                                         ; $4CA0: $3C
    jp Jump_000_3FE1                              ; $4CA1: $C3 $E1 $3F


    ld a, a                                       ; $4CA4: $7F
    add b                                         ; $4CA5: $80
    rst RST_38                                    ; $4CA6: $FF
    nop                                           ; $4CA7: $00
    db $FD                                        ; $4CA8: $FD
    ld a, [$F8FF]                                 ; $4CA9: $FA $FF $F8
    db $FD                                        ; $4CAC: $FD
    ld a, [$00FF]                                 ; $4CAD: $FA $FF $00
    rst RST_38                                    ; $4CB0: $FF
    nop                                           ; $4CB1: $00
    rst RST_38                                    ; $4CB2: $FF
    nop                                           ; $4CB3: $00
    rst RST_38                                    ; $4CB4: $FF
    nop                                           ; $4CB5: $00
    rst RST_38                                    ; $4CB6: $FF
    nop                                           ; $4CB7: $00
    nop                                           ; $4CB8: $00
    nop                                           ; $4CB9: $00
    nop                                           ; $4CBA: $00
    nop                                           ; $4CBB: $00
    nop                                           ; $4CBC: $00
    nop                                           ; $4CBD: $00
    nop                                           ; $4CBE: $00
    nop                                           ; $4CBF: $00
    db $10                                        ; $4CC0: $10
    rst RST_28                                    ; $4CC1: $EF
    ldh a, [rIF]                                  ; $4CC2: $F0 $0F
    ld a, b                                       ; $4CC4: $78
    sub a                                         ; $4CC5: $97
    rst RST_38                                    ; $4CC6: $FF
    jr @+$01                                      ; $4CC7: $18 $FF

    ccf                                           ; $4CC9: $3F
    rst RST_38                                    ; $4CCA: $FF
    nop                                           ; $4CCB: $00
    ld e, a                                       ; $4CCC: $5F
    xor e                                         ; $4CCD: $AB
    rst RST_08                                    ; $4CCE: $CF
    scf                                           ; $4CCF: $37
    ld e, a                                       ; $4CD0: $5F
    and a                                         ; $4CD1: $A7
    rst RST_38                                    ; $4CD2: $FF
    rlca                                          ; $4CD3: $07
    rst RST_38                                    ; $4CD4: $FF
    nop                                           ; $4CD5: $00
    dec c                                         ; $4CD6: $0D
    ldh a, [c]                                    ; $4CD7: $F2
    db $FC                                        ; $4CD8: $FC
    inc bc                                        ; $4CD9: $03
    add a                                         ; $4CDA: $87
    ld a, b                                       ; $4CDB: $78
    rst RST_38                                    ; $4CDC: $FF
    nop                                           ; $4CDD: $00
    nop                                           ; $4CDE: $00
    nop                                           ; $4CDF: $00
    rst RST_38                                    ; $4CE0: $FF
    rst RST_38                                    ; $4CE1: $FF
    rst RST_38                                    ; $4CE2: $FF
    cp $FF                                        ; $4CE3: $FE $FF
    nop                                           ; $4CE5: $00
    ld d, l                                       ; $4CE6: $55
    xor d                                         ; $4CE7: $AA
    call z, $3333                                 ; $4CE8: $CC $33 $33
    call z, Call_000_00FF                         ; $4CEB: $CC $FF $00
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
    ret nz                                        ; $4D00: $C0

    nop                                           ; $4D01: $00
    ldh [$FFC0], a                                ; $4D02: $E0 $C0
    ldh [rP1], a                                  ; $4D04: $E0 $00
    nop                                           ; $4D06: $00
    nop                                           ; $4D07: $00
    nop                                           ; $4D08: $00
    nop                                           ; $4D09: $00
    nop                                           ; $4D0A: $00
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
    nop                                           ; $4D20: $00
    nop                                           ; $4D21: $00
    nop                                           ; $4D22: $00
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
    ld b, $00                                     ; $4D32: $06 $00
    rra                                           ; $4D34: $1F
    nop                                           ; $4D35: $00
    ld a, l                                       ; $4D36: $7D
    ld [bc], a                                    ; $4D37: $02
    db $FD                                        ; $4D38: $FD
    ld [bc], a                                    ; $4D39: $02
    ld a, l                                       ; $4D3A: $7D
    ld [bc], a                                    ; $4D3B: $02
    rra                                           ; $4D3C: $1F
    nop                                           ; $4D3D: $00
    ld b, $00                                     ; $4D3E: $06 $00
    inc bc                                        ; $4D40: $03
    nop                                           ; $4D41: $00
    inc c                                         ; $4D42: $0C
    inc bc                                        ; $4D43: $03
    jr nc, jr_017_4D55                            ; $4D44: $30 $0F

    ret nz                                        ; $4D46: $C0

    ccf                                           ; $4D47: $3F
    and b                                         ; $4D48: $A0
    ld e, a                                       ; $4D49: $5F
    ret nc                                        ; $4D4A: $D0

    cpl                                           ; $4D4B: $2F
    reti                                          ; $4D4C: $D9


    cpl                                           ; $4D4D: $2F
    reti                                          ; $4D4E: $D9


    cpl                                           ; $4D4F: $2F
    cp e                                          ; $4D50: $BB
    ld e, a                                       ; $4D51: $5F
    rst RST_38                                    ; $4D52: $FF
    ccf                                           ; $4D53: $3F
    ccf                                           ; $4D54: $3F

jr_017_4D55:
    rrca                                          ; $4D55: $0F
    ccf                                           ; $4D56: $3F
    inc bc                                        ; $4D57: $03
    ld l, e                                       ; $4D58: $6B
    inc d                                         ; $4D59: $14
    ld e, e                                       ; $4D5A: $5B
    inc h                                         ; $4D5B: $24
    ld l, e                                       ; $4D5C: $6B
    dec d                                         ; $4D5D: $15
    ccf                                           ; $4D5E: $3F
    ld bc, $0038                                  ; $4D5F: $01 $38 $00
    ld a, [hl]                                    ; $4D62: $7E
    jr c, @+$49                                   ; $4D63: $38 $47

    ld a, $41                                     ; $4D65: $3E $41
    ccf                                           ; $4D67: $3F
    ld b, c                                       ; $4D68: $41
    ccf                                           ; $4D69: $3F
    ld b, e                                       ; $4D6A: $43
    ld a, $43                                     ; $4D6B: $3E $43
    ld a, $43                                     ; $4D6D: $3E $43
    ld a, $46                                     ; $4D6F: $3E $46
    inc a                                         ; $4D71: $3C
    ld b, a                                       ; $4D72: $47
    inc a                                         ; $4D73: $3C
    ld b, a                                       ; $4D74: $47
    ld a, [hl-]                                   ; $4D75: $3A
    rst RST_08                                    ; $4D76: $CF
    add hl, sp                                    ; $4D77: $39
    ld a, a                                       ; $4D78: $7F
    add b                                         ; $4D79: $80
    ld b, b                                       ; $4D7A: $40
    cp a                                          ; $4D7B: $BF
    inc h                                         ; $4D7C: $24
    rst RST_18                                    ; $4D7D: $DF

jr_017_4D7E:
    ld [hl+], a                                   ; $4D7E: $22
    rst RST_18                                    ; $4D7F: $DF
    inc bc                                        ; $4D80: $03
    nop                                           ; $4D81: $00
    rlca                                          ; $4D82: $07
    inc bc                                        ; $4D83: $03
    inc b                                         ; $4D84: $04
    inc bc                                        ; $4D85: $03
    add h                                         ; $4D86: $84
    inc bc                                        ; $4D87: $03
    add h                                         ; $4D88: $84
    inc bc                                        ; $4D89: $03
    add h                                         ; $4D8A: $84
    inc bc                                        ; $4D8B: $03
    inc b                                         ; $4D8C: $04
    inc bc                                        ; $4D8D: $03
    inc b                                         ; $4D8E: $04
    inc bc                                        ; $4D8F: $03
    inc b                                         ; $4D90: $04
    inc bc                                        ; $4D91: $03
    inc c                                         ; $4D92: $0C
    inc bc                                        ; $4D93: $03
    db $FC                                        ; $4D94: $FC
    dec bc                                        ; $4D95: $0B
    call c, $BDEB                                 ; $4D96: $DC $EB $BD
    jp nz, Jump_000_1AFD                          ; $4D99: $C2 $FD $1A

    rst RST_38                                    ; $4D9C: $FF
    db $10                                        ; $4D9D: $10
    ld a, h                                       ; $4D9E: $7C
    add a                                         ; $4D9F: $87
    add b                                         ; $4DA0: $80
    nop                                           ; $4DA1: $00
    ldh [$FF80], a                                ; $4DA2: $E0 $80
    ld a, b                                       ; $4DA4: $78
    ldh [rNR23], a                                ; $4DA5: $E0 $18
    ldh a, [rNR23]                                ; $4DA7: $F0 $18
    ldh a, [$FF30]                                ; $4DA9: $F0 $30
    ldh [$FF30], a                                ; $4DAB: $E0 $30
    ldh [$FF30], a                                ; $4DAD: $E0 $30
    ldh [$FF60], a                                ; $4DAF: $E0 $60
    ret nz                                        ; $4DB1: $C0

    ld h, b                                       ; $4DB2: $60
    ret nz                                        ; $4DB3: $C0

jr_017_4DB4:
    ld h, b                                       ; $4DB4: $60
    ret nz                                        ; $4DB5: $C0

    ldh [$FF80], a                                ; $4DB6: $E0 $80
    ldh [rP1], a                                  ; $4DB8: $E0 $00
    ld [hl], b                                    ; $4DBA: $70
    and b                                         ; $4DBB: $A0
    jr nc, jr_017_4D7E                            ; $4DBC: $30 $C0

    ld a, $C0                                     ; $4DBE: $3E $C0
    ld h, e                                       ; $4DC0: $63
    rst RST_18                                    ; $4DC1: $DF
    ld h, e                                       ; $4DC2: $63
    rst RST_18                                    ; $4DC3: $DF
    ld [hl], a                                    ; $4DC4: $77
    rst RST_18                                    ; $4DC5: $DF
    rst RST_38                                    ; $4DC6: $FF
    cp a                                          ; $4DC7: $BF
    rst RST_38                                    ; $4DC8: $FF
    add b                                         ; $4DC9: $80
    rst RST_38                                    ; $4DCA: $FF
    ld [$00FF], sp                                ; $4DCB: $08 $FF $00
    cp $FD                                        ; $4DCE: $FE $FD
    db $FD                                        ; $4DD0: $FD
    ld a, [$FDFE]                                 ; $4DD1: $FA $FE $FD
    rst RST_38                                    ; $4DD4: $FF
    nop                                           ; $4DD5: $00
    rst RST_38                                    ; $4DD6: $FF
    nop                                           ; $4DD7: $00
    rst RST_38                                    ; $4DD8: $FF
    nop                                           ; $4DD9: $00
    rst RST_38                                    ; $4DDA: $FF
    nop                                           ; $4DDB: $00
    rst RST_38                                    ; $4DDC: $FF
    nop                                           ; $4DDD: $00
    nop                                           ; $4DDE: $00
    nop                                           ; $4DDF: $00
    ld a, b                                       ; $4DE0: $78
    adc a                                         ; $4DE1: $8F
    ld a, b                                       ; $4DE2: $78
    adc a                                         ; $4DE3: $8F
    ld a, b                                       ; $4DE4: $78
    adc a                                         ; $4DE5: $8F
    ld a, b                                       ; $4DE6: $78
    adc a                                         ; $4DE7: $8F
    db $FC                                        ; $4DE8: $FC
    rla                                           ; $4DE9: $17
    rst RST_38                                    ; $4DEA: $FF
    nop                                           ; $4DEB: $00
    rst RST_38                                    ; $4DEC: $FF
    ret c                                         ; $4DED: $D8

    rst RST_38                                    ; $4DEE: $FF
    nop                                           ; $4DEF: $00
    rst RST_18                                    ; $4DF0: $DF
    dec hl                                        ; $4DF1: $2B
    ld c, a                                       ; $4DF2: $4F
    or a                                          ; $4DF3: $B7
    rst RST_18                                    ; $4DF4: $DF
    daa                                           ; $4DF5: $27
    rst RST_38                                    ; $4DF6: $FF
    rlca                                          ; $4DF7: $07
    rst RST_38                                    ; $4DF8: $FF
    nop                                           ; $4DF9: $00
    db $FD                                        ; $4DFA: $FD
    ld [bc], a                                    ; $4DFB: $02
    dec b                                         ; $4DFC: $05
    ld a, [$01FE]                                 ; $4DFD: $FA $FE $01
    ld [hl+], a                                   ; $4E00: $22
    call c, $DC23                                 ; $4E01: $DC $23 $DC
    ld [hl-], a                                   ; $4E04: $32
    call $D52A                                    ; $4E05: $CD $2A $D5
    ld a, h                                       ; $4E08: $7C
    add e                                         ; $4E09: $83
    rst RST_20                                    ; $4E0A: $E7
    jr jr_017_4DB4                                ; $4E0B: $18 $A7

    ld e, b                                       ; $4E0D: $58
    rst RST_38                                    ; $4E0E: $FF
    add hl, bc                                    ; $4E0F: $09
    rst RST_30                                    ; $4E10: $F7
    jp hl                                         ; $4E11: $E9


    rst RST_38                                    ; $4E12: $FF
    pop hl                                        ; $4E13: $E1
    rst RST_38                                    ; $4E14: $FF

jr_017_4E15:
    rst RST_38                                    ; $4E15: $FF
    rst RST_38                                    ; $4E16: $FF
    cp $FF                                        ; $4E17: $FE $FF
    nop                                           ; $4E19: $00
    xor l                                         ; $4E1A: $AD
    ld d, d                                       ; $4E1B: $52
    ld c, d                                       ; $4E1C: $4A
    or l                                          ; $4E1D: $B5
    ld [hl], e                                    ; $4E1E: $73
    adc h                                         ; $4E1F: $8C
    rst RST_38                                    ; $4E20: $FF
    nop                                           ; $4E21: $00
    xor e                                         ; $4E22: $AB
    ld d, l                                       ; $4E23: $55
    xor a                                         ; $4E24: $AF

jr_017_4E25:
    ld d, b                                       ; $4E25: $50
    xor a                                         ; $4E26: $AF
    ld d, e                                       ; $4E27: $53
    xor a                                         ; $4E28: $AF
    ld d, h                                       ; $4E29: $54
    db $FC                                        ; $4E2A: $FC
    jr c, jr_017_4E25                             ; $4E2B: $38 $F8

    nop                                           ; $4E2D: $00
    ret z                                         ; $4E2E: $C8

    or b                                          ; $4E2F: $B0
    ret z                                         ; $4E30: $C8

    or b                                          ; $4E31: $B0
    ret nc                                        ; $4E32: $D0

    jr nz, jr_017_4E15                            ; $4E33: $20 $E0

    nop                                           ; $4E35: $00
    ld b, b                                       ; $4E36: $40
    add b                                         ; $4E37: $80
    ret nz                                        ; $4E38: $C0

    nop                                           ; $4E39: $00
    ret nz                                        ; $4E3A: $C0

    nop                                           ; $4E3B: $00
    add b                                         ; $4E3C: $80
    nop                                           ; $4E3D: $00
    nop                                           ; $4E3E: $00
    nop                                           ; $4E3F: $00
    rra                                           ; $4E40: $1F
    nop                                           ; $4E41: $00
    rra                                           ; $4E42: $1F
    nop                                           ; $4E43: $00
    add hl, bc                                    ; $4E44: $09
    ld b, $0F                                     ; $4E45: $06 $0F
    nop                                           ; $4E47: $00
    rlca                                          ; $4E48: $07
    nop                                           ; $4E49: $00
    nop                                           ; $4E4A: $00
    nop                                           ; $4E4B: $00
    nop                                           ; $4E4C: $00
    nop                                           ; $4E4D: $00
    nop                                           ; $4E4E: $00
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
    rst RST_38                                    ; $4E60: $FF
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
    rst RST_38                                    ; $4E80: $FF
    nop                                           ; $4E81: $00
    nop                                           ; $4E82: $00
    nop                                           ; $4E83: $00
    nop                                           ; $4E84: $00
    nop                                           ; $4E85: $00
    nop                                           ; $4E86: $00
    nop                                           ; $4E87: $00
    nop                                           ; $4E88: $00
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
    ldh a, [rP1]                                  ; $4EBA: $F0 $00
    ldh a, [$FFE0]                                ; $4EBC: $F0 $E0
    ldh [rP1], a                                  ; $4EBE: $E0 $00
    inc bc                                        ; $4EC0: $03
    inc bc                                        ; $4EC1: $03
    rlca                                          ; $4EC2: $07
    rlca                                          ; $4EC3: $07
    ld b, $06                                     ; $4EC4: $06 $06
    inc b                                         ; $4EC6: $04
    inc b                                         ; $4EC7: $04
    inc b                                         ; $4EC8: $04
    inc b                                         ; $4EC9: $04
    inc h                                         ; $4ECA: $24
    inc h                                         ; $4ECB: $24
    ld b, b                                       ; $4ECC: $40
    ld b, b                                       ; $4ECD: $40
    ret                                           ; $4ECE: $C9


    ret                                           ; $4ECF: $C9


    db $EB                                        ; $4ED0: $EB
    db $EB                                        ; $4ED1: $EB
    ld [hl], l                                    ; $4ED2: $75
    ld a, a                                       ; $4ED3: $7F
    ld [hl+], a                                   ; $4ED4: $22
    ld a, $1C                                     ; $4ED5: $3E $1C
    inc e                                         ; $4ED7: $1C
    nop                                           ; $4ED8: $00
    nop                                           ; $4ED9: $00
    nop                                           ; $4EDA: $00
    nop                                           ; $4EDB: $00
    nop                                           ; $4EDC: $00
    nop                                           ; $4EDD: $00
    nop                                           ; $4EDE: $00
    nop                                           ; $4EDF: $00
    inc bc                                        ; $4EE0: $03
    inc bc                                        ; $4EE1: $03
    ld [bc], a                                    ; $4EE2: $02
    inc bc                                        ; $4EE3: $03
    rlca                                          ; $4EE4: $07
    rlca                                          ; $4EE5: $07
    rlca                                          ; $4EE6: $07
    rlca                                          ; $4EE7: $07
    rlca                                          ; $4EE8: $07
    rlca                                          ; $4EE9: $07
    call Call_000_2ECF                            ; $4EEA: $CD $CF $2E
    rst RST_28                                    ; $4EED: $EF
    sbc a                                         ; $4EEE: $9F
    rst RST_38                                    ; $4EEF: $FF
    ld e, a                                       ; $4EF0: $5F
    ld a, a                                       ; $4EF1: $7F
    ld c, [hl]                                    ; $4EF2: $4E
    ld a, a                                       ; $4EF3: $7F
    ld l, $3B                                     ; $4EF4: $2E $3B
    cpl                                           ; $4EF6: $2F
    add hl, sp                                    ; $4EF7: $39
    ld a, l                                       ; $4EF8: $7D
    dec sp                                        ; $4EF9: $3B
    db $FD                                        ; $4EFA: $FD
    dec sp                                        ; $4EFB: $3B
    ld a, l                                       ; $4EFC: $7D
    dec hl                                        ; $4EFD: $2B
    ccf                                           ; $4EFE: $3F
    ld hl, $0107                                  ; $4EFF: $21 $07 $01
    ld bc, $2601                                  ; $4F02: $01 $01 $26
    daa                                           ; $4F05: $27
    add hl, de                                    ; $4F06: $19
    rra                                           ; $4F07: $1F
    rlca                                          ; $4F08: $07
    rlca                                          ; $4F09: $07
    nop                                           ; $4F0A: $00
    nop                                           ; $4F0B: $00
    inc bc                                        ; $4F0C: $03
    inc bc                                        ; $4F0D: $03
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
    xor $EE                                       ; $4F20: $EE $EE
    add hl, de                                    ; $4F22: $19
    rst RST_38                                    ; $4F23: $FF
    call nz, $E2FF                                ; $4F24: $C4 $FF $E2
    rst RST_38                                    ; $4F27: $FF
    ldh a, [rIE]                                  ; $4F28: $F0 $FF
    ret z                                         ; $4F2A: $C8

    rst RST_08                                    ; $4F2B: $CF
    add h                                         ; $4F2C: $84
    add a                                         ; $4F2D: $87
    add [hl]                                      ; $4F2E: $86
    add a                                         ; $4F2F: $87
    ld b, d                                       ; $4F30: $42
    jp $E32F                                      ; $4F31: $C3 $2F $E3


    or c                                          ; $4F34: $B1
    rst RST_28                                    ; $4F35: $EF
    sub c                                         ; $4F36: $91
    rst RST_38                                    ; $4F37: $FF
    ld d, c                                       ; $4F38: $51
    rst RST_38                                    ; $4F39: $FF
    ld c, b                                       ; $4F3A: $48
    rst RST_38                                    ; $4F3B: $FF
    ld c, c                                       ; $4F3C: $49
    rst RST_38                                    ; $4F3D: $FF
    ld c, c                                       ; $4F3E: $49
    rst RST_38                                    ; $4F3F: $FF
    ld c, e                                       ; $4F40: $4B
    rst RST_38                                    ; $4F41: $FF
    ld c, a                                       ; $4F42: $4F
    rst RST_38                                    ; $4F43: $FF
    ld c, a                                       ; $4F44: $4F
    rst RST_38                                    ; $4F45: $FF
    sbc a                                         ; $4F46: $9F
    di                                            ; $4F47: $F3

jr_017_4F48:
    sbc e                                         ; $4F48: $9B
    db $F4                                        ; $4F49: $F4
    dec sp                                        ; $4F4A: $3B
    db $E4                                        ; $4F4B: $E4
    db $EB                                        ; $4F4C: $EB
    push de                                       ; $4F4D: $D5
    ccf                                           ; $4F4E: $3F
    ld bc, $001F                                  ; $4F4F: $01 $1F $00
    rra                                           ; $4F52: $1F
    nop                                           ; $4F53: $00
    ld [$0F07], sp                                ; $4F54: $08 $07 $0F
    nop                                           ; $4F57: $00
    rlca                                          ; $4F58: $07
    nop                                           ; $4F59: $00
    nop                                           ; $4F5A: $00
    nop                                           ; $4F5B: $00
    nop                                           ; $4F5C: $00
    nop                                           ; $4F5D: $00
    nop                                           ; $4F5E: $00
    nop                                           ; $4F5F: $00
    nop                                           ; $4F60: $00
    nop                                           ; $4F61: $00
    add b                                         ; $4F62: $80
    add b                                         ; $4F63: $80
    ld b, b                                       ; $4F64: $40
    ret nz                                        ; $4F65: $C0

    jr nz, jr_017_4F48                            ; $4F66: $20 $E0

    db $10                                        ; $4F68: $10
    ldh a, [rNR10]                                ; $4F69: $F0 $10
    ldh a, [$FF08]                                ; $4F6B: $F0 $08
    ld hl, sp+$4B                                 ; $4F6D: $F8 $4B
    ld hl, sp+$67                                 ; $4F6F: $F8 $67
    cp $27                                        ; $4F71: $FE $27
    db $FD                                        ; $4F73: $FD
    dec [hl]                                      ; $4F74: $35
    cp $B4                                        ; $4F75: $FE $B4
    rst RST_38                                    ; $4F77: $FF
    xor h                                         ; $4F78: $AC
    rst RST_38                                    ; $4F79: $FF
    xor h                                         ; $4F7A: $AC
    rst RST_38                                    ; $4F7B: $FF
    rst RST_20                                    ; $4F7C: $E7
    rst RST_38                                    ; $4F7D: $FF
    rst RST_20                                    ; $4F7E: $E7
    rst RST_18                                    ; $4F7F: $DF
    ld [hl], a                                    ; $4F80: $77
    rst RST_18                                    ; $4F81: $DF
    rst RST_38                                    ; $4F82: $FF
    rst RST_38                                    ; $4F83: $FF
    rst RST_38                                    ; $4F84: $FF
    ret nz                                        ; $4F85: $C0

    sbc a                                         ; $4F86: $9F
    ld [$00FF], sp                                ; $4F87: $08 $FF $00
    cp $FD                                        ; $4F8A: $FE $FD
    db $FD                                        ; $4F8C: $FD
    ld a, [$FDFE]                                 ; $4F8D: $FA $FE $FD
    rst RST_38                                    ; $4F90: $FF
    nop                                           ; $4F91: $00
    rst RST_38                                    ; $4F92: $FF
    nop                                           ; $4F93: $00
    rst RST_38                                    ; $4F94: $FF
    nop                                           ; $4F95: $00
    rst RST_38                                    ; $4F96: $FF
    nop                                           ; $4F97: $00
    rst RST_38                                    ; $4F98: $FF
    nop                                           ; $4F99: $00
    nop                                           ; $4F9A: $00
    nop                                           ; $4F9B: $00
    nop                                           ; $4F9C: $00
    nop                                           ; $4F9D: $00
    nop                                           ; $4F9E: $00
    nop                                           ; $4F9F: $00
    nop                                           ; $4FA0: $00
    nop                                           ; $4FA1: $00
    ld c, $00                                     ; $4FA2: $0E $00
    rrca                                          ; $4FA4: $0F
    ld b, $11                                     ; $4FA5: $06 $11
    rrca                                          ; $4FA7: $0F
    db $10                                        ; $4FA8: $10
    rrca                                          ; $4FA9: $0F
    jr nz, jr_017_4FCB                            ; $4FAA: $20 $1F

    cpl                                           ; $4FAC: $2F
    db $10                                        ; $4FAD: $10
    rst RST_38                                    ; $4FAE: $FF
    dec bc                                        ; $4FAF: $0B
    rst RST_18                                    ; $4FB0: $DF
    db $EB                                        ; $4FB1: $EB
    cp a                                          ; $4FB2: $BF
    ret nz                                        ; $4FB3: $C0

    rst RST_38                                    ; $4FB4: $FF
    ld a, [de]                                    ; $4FB5: $1A
    rst RST_38                                    ; $4FB6: $FF
    db $10                                        ; $4FB7: $10
    ld a, h                                       ; $4FB8: $7C
    add a                                         ; $4FB9: $87
    ld a, b                                       ; $4FBA: $78
    adc a                                         ; $4FBB: $8F
    ld a, b                                       ; $4FBC: $78
    adc a                                         ; $4FBD: $8F
    ld a, b                                       ; $4FBE: $78
    adc a                                         ; $4FBF: $8F
    ld a, b                                       ; $4FC0: $78
    adc a                                         ; $4FC1: $8F
    db $FC                                        ; $4FC2: $FC
    rla                                           ; $4FC3: $17
    rst RST_38                                    ; $4FC4: $FF
    nop                                           ; $4FC5: $00
    rst RST_38                                    ; $4FC6: $FF
    ret c                                         ; $4FC7: $D8

    rst RST_38                                    ; $4FC8: $FF
    nop                                           ; $4FC9: $00
    rst RST_18                                    ; $4FCA: $DF

jr_017_4FCB:
    dec hl                                        ; $4FCB: $2B
    ld c, a                                       ; $4FCC: $4F
    or a                                          ; $4FCD: $B7
    rst RST_18                                    ; $4FCE: $DF
    daa                                           ; $4FCF: $27
    rst RST_38                                    ; $4FD0: $FF
    rlca                                          ; $4FD1: $07
    rst RST_38                                    ; $4FD2: $FF
    nop                                           ; $4FD3: $00
    db $FD                                        ; $4FD4: $FD
    ld [bc], a                                    ; $4FD5: $02
    dec b                                         ; $4FD6: $05
    ld a, [$01FE]                                 ; $4FD7: $FA $FE $01
    rst RST_38                                    ; $4FDA: $FF
    nop                                           ; $4FDB: $00
    nop                                           ; $4FDC: $00
    nop                                           ; $4FDD: $00
    nop                                           ; $4FDE: $00
    nop                                           ; $4FDF: $00
    inc bc                                        ; $4FE0: $03
    nop                                           ; $4FE1: $00
    inc bc                                        ; $4FE2: $03
    ld bc, $0304                                  ; $4FE3: $01 $04 $03
    add h                                         ; $4FE6: $84
    inc bc                                        ; $4FE7: $03
    ret z                                         ; $4FE8: $C8

    add a                                         ; $4FE9: $87
    ret z                                         ; $4FEA: $C8

    add a                                         ; $4FEB: $87
    ret nc                                        ; $4FEC: $D0

    rrca                                          ; $4FED: $0F
    ldh a, [$FFCF]                                ; $4FEE: $F0 $CF
    ldh [$FFDF], a                                ; $4FF0: $E0 $DF
    ldh [$FF1F], a                                ; $4FF2: $E0 $1F
    pop bc                                        ; $4FF4: $C1
    ccf                                           ; $4FF5: $3F
    jp Jump_017_663E                              ; $4FF6: $C3 $3E $66


    sbc h                                         ; $4FF9: $9C
    ld l, $D8                                     ; $4FFA: $2E $D8
    dec sp                                        ; $4FFC: $3B
    call nc, $CD32                                ; $4FFD: $D4 $32 $CD
    ld a, [bc]                                    ; $5000: $0A
    push af                                       ; $5001: $F5
    ld e, $E1                                     ; $5002: $1E $E1
    and $19                                       ; $5004: $E6 $19
    and a                                         ; $5006: $A7
    ld e, b                                       ; $5007: $58

jr_017_5008:
    rst RST_38                                    ; $5008: $FF
    add hl, bc                                    ; $5009: $09

jr_017_500A:
    rst RST_30                                    ; $500A: $F7
    jp hl                                         ; $500B: $E9


jr_017_500C:
    rst RST_38                                    ; $500C: $FF
    pop hl                                        ; $500D: $E1

jr_017_500E:
    rst RST_38                                    ; $500E: $FF
    rst RST_38                                    ; $500F: $FF

jr_017_5010:
    rst RST_38                                    ; $5010: $FF
    cp $FF                                        ; $5011: $FE $FF
    nop                                           ; $5013: $00
    xor l                                         ; $5014: $AD
    ld d, d                                       ; $5015: $52
    ld c, d                                       ; $5016: $4A
    or l                                          ; $5017: $B5
    ld [hl], e                                    ; $5018: $73
    adc h                                         ; $5019: $8C
    rst RST_38                                    ; $501A: $FF
    nop                                           ; $501B: $00
    nop                                           ; $501C: $00
    nop                                           ; $501D: $00
    nop                                           ; $501E: $00
    nop                                           ; $501F: $00
    add b                                         ; $5020: $80
    nop                                           ; $5021: $00
    ret nz                                        ; $5022: $C0

    add b                                         ; $5023: $80
    ld h, b                                       ; $5024: $60
    ret nz                                        ; $5025: $C0

    jr nc, jr_017_5008                            ; $5026: $30 $E0

    jr nc, jr_017_500A                            ; $5028: $30 $E0

    jr nc, jr_017_500C                            ; $502A: $30 $E0

    jr nc, jr_017_500E                            ; $502C: $30 $E0

    jr nc, jr_017_5010                            ; $502E: $30 $E0

    ld h, b                                       ; $5030: $60

jr_017_5031:
    ret nz                                        ; $5031: $C0

    ret nz                                        ; $5032: $C0

    add b                                         ; $5033: $80
    add b                                         ; $5034: $80
    nop                                           ; $5035: $00
    nop                                           ; $5036: $00
    nop                                           ; $5037: $00
    nop                                           ; $5038: $00
    nop                                           ; $5039: $00
    nop                                           ; $503A: $00
    nop                                           ; $503B: $00
    add b                                         ; $503C: $80
    nop                                           ; $503D: $00
    ld [hl], b                                    ; $503E: $70
    add b                                         ; $503F: $80
    ld c, a                                       ; $5040: $4F
    or b                                          ; $5041: $B0
    ld c, d                                       ; $5042: $4A
    or l                                          ; $5043: $B5
    ld c, e                                       ; $5044: $4B
    or h                                          ; $5045: $B4
    swap l                                        ; $5046: $CB $35
    ei                                            ; $5048: $FB
    add h                                         ; $5049: $84
    jp z, $CCB4                                   ; $504A: $CA $B4 $CC

    or b                                          ; $504D: $B0
    ret nc                                        ; $504E: $D0

    jr nz, jr_017_5031                            ; $504F: $20 $E0

    nop                                           ; $5051: $00
    ld b, b                                       ; $5052: $40
    add b                                         ; $5053: $80
    ret nz                                        ; $5054: $C0

    nop                                           ; $5055: $00
    ret nz                                        ; $5056: $C0

    nop                                           ; $5057: $00
    add b                                         ; $5058: $80
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
    nop                                           ; $5064: $00
    nop                                           ; $5065: $00
    nop                                           ; $5066: $00
    nop                                           ; $5067: $00
    nop                                           ; $5068: $00
    nop                                           ; $5069: $00
    nop                                           ; $506A: $00
    nop                                           ; $506B: $00
    nop                                           ; $506C: $00
    nop                                           ; $506D: $00
    nop                                           ; $506E: $00
    nop                                           ; $506F: $00
    nop                                           ; $5070: $00
    nop                                           ; $5071: $00
    nop                                           ; $5072: $00
    nop                                           ; $5073: $00
    nop                                           ; $5074: $00
    nop                                           ; $5075: $00
    nop                                           ; $5076: $00
    nop                                           ; $5077: $00
    ldh a, [rP1]                                  ; $5078: $F0 $00
    ldh a, [$FF60]                                ; $507A: $F0 $60
    ldh [$FF80], a                                ; $507C: $E0 $80
    add b                                         ; $507E: $80
    nop                                           ; $507F: $00
    nop                                           ; $5080: $00
    nop                                           ; $5081: $00
    jr jr_017_509C                                ; $5082: $18 $18

    inc h                                         ; $5084: $24
    inc a                                         ; $5085: $3C
    ld [hl], h                                    ; $5086: $74
    ld a, h                                       ; $5087: $7C
    ld c, h                                       ; $5088: $4C
    ld c, h                                       ; $5089: $4C
    ld b, h                                       ; $508A: $44
    ld b, h                                       ; $508B: $44
    nop                                           ; $508C: $00
    nop                                           ; $508D: $00
    nop                                           ; $508E: $00
    nop                                           ; $508F: $00
    ld [bc], a                                    ; $5090: $02
    ld [bc], a                                    ; $5091: $02
    ld [bc], a                                    ; $5092: $02
    ld [bc], a                                    ; $5093: $02
    inc bc                                        ; $5094: $03
    inc bc                                        ; $5095: $03
    ld bc, $0001                                  ; $5096: $01 $01 $00
    nop                                           ; $5099: $00
    nop                                           ; $509A: $00
    nop                                           ; $509B: $00

jr_017_509C:
    nop                                           ; $509C: $00
    nop                                           ; $509D: $00
    nop                                           ; $509E: $00
    nop                                           ; $509F: $00
    ld bc, $0301                                  ; $50A0: $01 $01 $03
    inc bc                                        ; $50A3: $03

jr_017_50A4:
    inc b                                         ; $50A4: $04
    inc b                                         ; $50A5: $04
    inc b                                         ; $50A6: $04
    inc b                                         ; $50A7: $04
    nop                                           ; $50A8: $00
    nop                                           ; $50A9: $00
    nop                                           ; $50AA: $00
    nop                                           ; $50AB: $00
    jr nz, jr_017_50CE                            ; $50AC: $20 $20

    jr z, jr_017_50D8                             ; $50AE: $28 $28

    jr c, jr_017_50EA                             ; $50B0: $38 $38

    jr c, jr_017_50EC                             ; $50B2: $38 $38

    ld l, $38                                     ; $50B4: $2E $38
    dec hl                                        ; $50B6: $2B
    inc a                                         ; $50B7: $3C
    ld c, a                                       ; $50B8: $4F
    ld a, b                                       ; $50B9: $78
    rst RST_18                                    ; $50BA: $DF
    ld [hl], c                                    ; $50BB: $71
    sbc a                                         ; $50BC: $9F
    pop af                                        ; $50BD: $F1
    ld a, $E3                                     ; $50BE: $3E $E3
    ret nz                                        ; $50C0: $C0

    ret nz                                        ; $50C1: $C0

    jr nz, jr_017_50A4                            ; $50C2: $20 $E0

    sub b                                         ; $50C4: $90
    ldh a, [$FF50]                                ; $50C5: $F0 $50
    ld [hl], b                                    ; $50C7: $70
    ld c, b                                       ; $50C8: $48
    ld a, b                                       ; $50C9: $78
    ld c, b                                       ; $50CA: $48
    ld a, b                                       ; $50CB: $78
    ld c, b                                       ; $50CC: $48
    ld a, b                                       ; $50CD: $78

jr_017_50CE:
    ld c, e                                       ; $50CE: $4B
    ld a, b                                       ; $50CF: $78
    ld c, a                                       ; $50D0: $4F
    ld a, e                                       ; $50D1: $7B
    ld c, a                                       ; $50D2: $4F
    ld a, a                                       ; $50D3: $7F
    sbc $7F                                       ; $50D4: $DE $7F
    sub [hl]                                      ; $50D6: $96
    rst RST_38                                    ; $50D7: $FF

jr_017_50D8:
    or d                                          ; $50D8: $B2
    rst RST_28                                    ; $50D9: $EF
    ld [hl-], a                                   ; $50DA: $32
    rst RST_28                                    ; $50DB: $EF
    ld d, b                                       ; $50DC: $50
    rst RST_28                                    ; $50DD: $EF
    and b                                         ; $50DE: $A0
    rst RST_18                                    ; $50DF: $DF
    pop hl                                        ; $50E0: $E1
    ccf                                           ; $50E1: $3F
    dec sp                                        ; $50E2: $3B
    rrca                                          ; $50E3: $0F
    ld e, a                                       ; $50E4: $5F
    inc hl                                        ; $50E5: $23
    ld a, d                                       ; $50E6: $7A
    rlca                                          ; $50E7: $07
    ld e, h                                       ; $50E8: $5C
    cpl                                           ; $50E9: $2F

jr_017_50EA:
    ccf                                           ; $50EA: $3F
    ccf                                           ; $50EB: $3F

jr_017_50EC:
    rra                                           ; $50EC: $1F
    nop                                           ; $50ED: $00
    inc de                                        ; $50EE: $13
    inc c                                         ; $50EF: $0C
    rrca                                          ; $50F0: $0F
    nop                                           ; $50F1: $00
    add hl, bc                                    ; $50F2: $09
    ld b, $07                                     ; $50F3: $06 $07
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
    ld [bc], a                                    ; $5100: $02
    ld [bc], a                                    ; $5101: $02
    inc bc                                        ; $5102: $03
    ld [bc], a                                    ; $5103: $02
    rlca                                          ; $5104: $07
    ld [bc], a                                    ; $5105: $02
    add a                                         ; $5106: $87
    rlca                                          ; $5107: $07
    rst RST_38                                    ; $5108: $FF
    add [hl]                                      ; $5109: $86
    ei                                            ; $510A: $FB
    cp a                                          ; $510B: $BF
    dec hl                                        ; $510C: $2B
    rst RST_18                                    ; $510D: $DF
    ld [hl-], a                                   ; $510E: $32
    rst RST_18                                    ; $510F: $DF
    inc [hl]                                      ; $5110: $34
    rst RST_18                                    ; $5111: $DF
    inc h                                         ; $5112: $24
    rst RST_38                                    ; $5113: $FF
    jr z, @+$01                                   ; $5114: $28 $FF

    ld c, c                                       ; $5116: $49
    rst RST_38                                    ; $5117: $FF
    sbc a                                         ; $5118: $9F
    ldh a, [$FF1F]                                ; $5119: $F0 $1F
    ldh a, [$FF3D]                                ; $511B: $F0 $3D
    ld a, [$F8FF]                                 ; $511D: $FA $FF $F8
    ld c, $00                                     ; $5120: $0E $00
    rrca                                          ; $5122: $0F
    ld b, $11                                     ; $5123: $06 $11
    rrca                                          ; $5125: $0F
    db $10                                        ; $5126: $10
    rrca                                          ; $5127: $0F
    jr nz, jr_017_5149                            ; $5128: $20 $1F

    cpl                                           ; $512A: $2F
    db $10                                        ; $512B: $10
    rst RST_38                                    ; $512C: $FF
    dec bc                                        ; $512D: $0B
    rst RST_18                                    ; $512E: $DF
    db $EB                                        ; $512F: $EB
    cp a                                          ; $5130: $BF
    ret nz                                        ; $5131: $C0

    rst RST_38                                    ; $5132: $FF
    ld a, [de]                                    ; $5133: $1A
    rst RST_38                                    ; $5134: $FF
    db $10                                        ; $5135: $10
    db $FC                                        ; $5136: $FC
    add a                                         ; $5137: $87
    ld hl, sp-$71                                 ; $5138: $F8 $8F
    ld a, b                                       ; $513A: $78
    adc a                                         ; $513B: $8F
    ld a, b                                       ; $513C: $78
    adc a                                         ; $513D: $8F
    ld a, b                                       ; $513E: $78
    adc a                                         ; $513F: $8F
    inc bc                                        ; $5140: $03
    nop                                           ; $5141: $00
    inc bc                                        ; $5142: $03
    ld bc, $0304                                  ; $5143: $01 $04 $03
    add h                                         ; $5146: $84
    inc bc                                        ; $5147: $03

jr_017_5148:
    ret z                                         ; $5148: $C8

jr_017_5149:
    add a                                         ; $5149: $87

jr_017_514A:
    ret z                                         ; $514A: $C8

    add a                                         ; $514B: $87

jr_017_514C:
    ret nc                                        ; $514C: $D0

    rrca                                          ; $514D: $0F

jr_017_514E:
    ldh a, [$FFCF]                                ; $514E: $F0 $CF

jr_017_5150:
    ldh [$FFDF], a                                ; $5150: $E0 $DF
    ldh [$FF1F], a                                ; $5152: $E0 $1F
    pop bc                                        ; $5154: $C1
    cp a                                          ; $5155: $BF
    jp Jump_017_663E                              ; $5156: $C3 $3E $66


    sbc h                                         ; $5159: $9C
    ld l, $D8                                     ; $515A: $2E $D8
    dec sp                                        ; $515C: $3B
    call nc, $CD32                                ; $515D: $D4 $32 $CD
    add b                                         ; $5160: $80
    nop                                           ; $5161: $00
    ret nz                                        ; $5162: $C0

    add b                                         ; $5163: $80
    ld h, b                                       ; $5164: $60
    ret nz                                        ; $5165: $C0

    jr nc, jr_017_5148                            ; $5166: $30 $E0

    jr nc, jr_017_514A                            ; $5168: $30 $E0

    jr nc, jr_017_514C                            ; $516A: $30 $E0

    jr nc, jr_017_514E                            ; $516C: $30 $E0

    jr nc, jr_017_5150                            ; $516E: $30 $E0

    ld h, b                                       ; $5170: $60
    ret nz                                        ; $5171: $C0

    ret nz                                        ; $5172: $C0

    add b                                         ; $5173: $80
    add b                                         ; $5174: $80
    nop                                           ; $5175: $00
    nop                                           ; $5176: $00
    nop                                           ; $5177: $00
    nop                                           ; $5178: $00
    nop                                           ; $5179: $00
    nop                                           ; $517A: $00
    nop                                           ; $517B: $00
    add b                                         ; $517C: $80
    nop                                           ; $517D: $00
    ld [hl], b                                    ; $517E: $70
    add b                                         ; $517F: $80
    db $FD                                        ; $5180: $FD
    ld a, [$00FF]                                 ; $5181: $FA $FF $00
    rst RST_38                                    ; $5184: $FF
    nop                                           ; $5185: $00
    rst RST_38                                    ; $5186: $FF
    nop                                           ; $5187: $00
    rst RST_38                                    ; $5188: $FF
    nop                                           ; $5189: $00
    rst RST_38                                    ; $518A: $FF
    nop                                           ; $518B: $00
    nop                                           ; $518C: $00
    nop                                           ; $518D: $00
    nop                                           ; $518E: $00
    nop                                           ; $518F: $00
    nop                                           ; $5190: $00
    nop                                           ; $5191: $00
    nop                                           ; $5192: $00
    nop                                           ; $5193: $00
    nop                                           ; $5194: $00
    nop                                           ; $5195: $00
    nop                                           ; $5196: $00
    nop                                           ; $5197: $00
    nop                                           ; $5198: $00
    nop                                           ; $5199: $00
    nop                                           ; $519A: $00
    nop                                           ; $519B: $00
    nop                                           ; $519C: $00
    nop                                           ; $519D: $00
    nop                                           ; $519E: $00
    nop                                           ; $519F: $00
    db $FC                                        ; $51A0: $FC
    rla                                           ; $51A1: $17
    rst RST_38                                    ; $51A2: $FF
    nop                                           ; $51A3: $00
    rst RST_38                                    ; $51A4: $FF
    nop                                           ; $51A5: $00
    ld e, a                                       ; $51A6: $5F
    xor e                                         ; $51A7: $AB
    rst RST_08                                    ; $51A8: $CF
    scf                                           ; $51A9: $37
    ld e, a                                       ; $51AA: $5F
    and a                                         ; $51AB: $A7
    rst RST_38                                    ; $51AC: $FF
    rlca                                          ; $51AD: $07
    rst RST_38                                    ; $51AE: $FF
    nop                                           ; $51AF: $00
    dec c                                         ; $51B0: $0D
    ldh a, [c]                                    ; $51B1: $F2
    db $FC                                        ; $51B2: $FC
    inc bc                                        ; $51B3: $03
    add a                                         ; $51B4: $87
    ld a, b                                       ; $51B5: $78
    rst RST_38                                    ; $51B6: $FF
    nop                                           ; $51B7: $00
    nop                                           ; $51B8: $00
    nop                                           ; $51B9: $00
    nop                                           ; $51BA: $00
    nop                                           ; $51BB: $00
    nop                                           ; $51BC: $00
    nop                                           ; $51BD: $00
    nop                                           ; $51BE: $00
    nop                                           ; $51BF: $00
    ld a, [bc]                                    ; $51C0: $0A
    push af                                       ; $51C1: $F5
    ld e, $E1                                     ; $51C2: $1E $E1
    rst RST_20                                    ; $51C4: $E7
    jr @+$01                                      ; $51C5: $18 $FF

    add hl, bc                                    ; $51C7: $09
    rst RST_30                                    ; $51C8: $F7
    jp hl                                         ; $51C9: $E9


    rst RST_38                                    ; $51CA: $FF
    pop hl                                        ; $51CB: $E1
    rst RST_38                                    ; $51CC: $FF
    rst RST_38                                    ; $51CD: $FF
    rst RST_38                                    ; $51CE: $FF

jr_017_51CF:
    cp $FF                                        ; $51CF: $FE $FF
    nop                                           ; $51D1: $00
    ld d, l                                       ; $51D2: $55
    xor d                                         ; $51D3: $AA
    call z, $3333                                 ; $51D4: $CC $33 $33
    call z, Call_000_00FF                         ; $51D7: $CC $FF $00
    nop                                           ; $51DA: $00
    nop                                           ; $51DB: $00
    nop                                           ; $51DC: $00
    nop                                           ; $51DD: $00
    nop                                           ; $51DE: $00
    nop                                           ; $51DF: $00
    ld c, a                                       ; $51E0: $4F
    or b                                          ; $51E1: $B0
    ld c, d                                       ; $51E2: $4A
    or l                                          ; $51E3: $B5
    swap h                                        ; $51E4: $CB $34
    ei                                            ; $51E6: $FB
    add l                                         ; $51E7: $85
    res 6, h                                      ; $51E8: $CB $B4
    jp z, $DCB4                                   ; $51EA: $CA $B4 $DC

    jr nz, jr_017_51CF                            ; $51ED: $20 $E0

    nop                                           ; $51EF: $00
    ld b, b                                       ; $51F0: $40
    add b                                         ; $51F1: $80
    ret nz                                        ; $51F2: $C0

    nop                                           ; $51F3: $00
    ret nz                                        ; $51F4: $C0

    nop                                           ; $51F5: $00
    add b                                         ; $51F6: $80
    nop                                           ; $51F7: $00
    nop                                           ; $51F8: $00
    nop                                           ; $51F9: $00
    nop                                           ; $51FA: $00
    nop                                           ; $51FB: $00
    nop                                           ; $51FC: $00
    nop                                           ; $51FD: $00
    nop                                           ; $51FE: $00
    nop                                           ; $51FF: $00
    nop                                           ; $5200: $00
    nop                                           ; $5201: $00
    nop                                           ; $5202: $00
    nop                                           ; $5203: $00
    nop                                           ; $5204: $00
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
    ldh a, [rP1]                                  ; $5218: $F0 $00
    ldh a, [$FF60]                                ; $521A: $F0 $60
    ldh [$FF80], a                                ; $521C: $E0 $80
    add b                                         ; $521E: $80
    nop                                           ; $521F: $00
    push bc                                       ; $5220: $C5
    rst RST_00                                    ; $5221: $C7
    ld b, $06                                     ; $5222: $06 $06
    nop                                           ; $5224: $00
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

jr_017_523D:
    nop                                           ; $523D: $00
    nop                                           ; $523E: $00
    nop                                           ; $523F: $00
    rrca                                          ; $5240: $0F
    nop                                           ; $5241: $00
    inc bc                                        ; $5242: $03
    nop                                           ; $5243: $00
    ld bc, $3F00                                  ; $5244: $01 $00 $3F
    nop                                           ; $5247: $00
    rrca                                          ; $5248: $0F
    nop                                           ; $5249: $00
    ccf                                           ; $524A: $3F
    nop                                           ; $524B: $00
    rst RST_38                                    ; $524C: $FF
    nop                                           ; $524D: $00
    rrca                                          ; $524E: $0F
    nop                                           ; $524F: $00
    rlca                                          ; $5250: $07
    nop                                           ; $5251: $00
    rrca                                          ; $5252: $0F
    nop                                           ; $5253: $00
    nop                                           ; $5254: $00
    nop                                           ; $5255: $00
    rlca                                          ; $5256: $07
    nop                                           ; $5257: $00
    ld a, [$7F05]                                 ; $5258: $FA $05 $7F
    nop                                           ; $525B: $00
    ld a, [de]                                    ; $525C: $1A
    dec b                                         ; $525D: $05
    rrca                                          ; $525E: $0F
    nop                                           ; $525F: $00
    ld bc, $0100                                  ; $5260: $01 $00 $01
    nop                                           ; $5263: $00
    rst RST_38                                    ; $5264: $FF
    nop                                           ; $5265: $00
    pop bc                                        ; $5266: $C1
    ld a, $00                                     ; $5267: $3E $00
    rst RST_38                                    ; $5269: $FF
    ret nz                                        ; $526A: $C0

    ccf                                           ; $526B: $3F
    ld h, b                                       ; $526C: $60
    sbc a                                         ; $526D: $9F
    or c                                          ; $526E: $B1
    ld c, a                                       ; $526F: $4F
    or c                                          ; $5270: $B1
    ld c, a                                       ; $5271: $4F
    jp hl                                         ; $5272: $E9


    rra                                           ; $5273: $1F
    srl a                                         ; $5274: $CB $3F
    sbc e                                         ; $5276: $9B
    ld a, a                                       ; $5277: $7F
    rst RST_38                                    ; $5278: $FF
    ld a, $FF                                     ; $5279: $3E $FF
    nop                                           ; $527B: $00
    cp a                                          ; $527C: $BF
    ld b, b                                       ; $527D: $40
    sbc a                                         ; $527E: $9F
    ld l, a                                       ; $527F: $6F
    ccf                                           ; $5280: $3F
    nop                                           ; $5281: $00
    ld a, [hl]                                    ; $5282: $7E
    jr nc, jr_017_523D                            ; $5283: $30 $B8

    ld b, b                                       ; $5285: $40
    sbc h                                         ; $5286: $9C
    ld h, b                                       ; $5287: $60
    rst RST_38                                    ; $5288: $FF
    nop                                           ; $5289: $00
    rst RST_38                                    ; $528A: $FF
    add $EF                                       ; $528B: $C6 $EF
    or [hl]                                       ; $528D: $B6
    rst RST_38                                    ; $528E: $FF
    nop                                           ; $528F: $00
    sbc a                                         ; $5290: $9F
    ld h, l                                       ; $5291: $65
    adc a                                         ; $5292: $8F
    ld [hl], b                                    ; $5293: $70
    adc a                                         ; $5294: $8F
    ld [hl], d                                    ; $5295: $72
    sbc a                                         ; $5296: $9F
    ld [hl], d                                    ; $5297: $72
    sbc a                                         ; $5298: $9F
    ld [hl], d                                    ; $5299: $72
    sbc a                                         ; $529A: $9F
    ld [hl], d                                    ; $529B: $72
    cp a                                          ; $529C: $BF
    ld [hl], d                                    ; $529D: $72
    rst RST_38                                    ; $529E: $FF
    and $C1                                       ; $529F: $E6 $C1
    nop                                           ; $52A1: $00
    ld bc, $0200                                  ; $52A2: $01 $00 $02
    ld bc, $0102                                  ; $52A5: $01 $02 $01
    db $F4                                        ; $52A8: $F4
    inc bc                                        ; $52A9: $03
    db $E4                                        ; $52AA: $E4
    add e                                         ; $52AB: $83
    ld hl, sp-$19                                 ; $52AC: $F8 $E7
    ld hl, sp+$37                                 ; $52AE: $F8 $37
    db $FC                                        ; $52B0: $FC
    inc bc                                        ; $52B1: $03
    ldh a, [c]                                    ; $52B2: $F2
    dec l                                         ; $52B3: $2D
    db $E3                                        ; $52B4: $E3
    ld e, l                                       ; $52B5: $5D
    db $E3                                        ; $52B6: $E3
    ld e, l                                       ; $52B7: $5D
    db $E3                                        ; $52B8: $E3
    ld e, h                                       ; $52B9: $5C
    db $E3                                        ; $52BA: $E3
    ld e, h                                       ; $52BB: $5C
    pop hl                                        ; $52BC: $E1
    ld e, [hl]                                    ; $52BD: $5E
    rst RST_38                                    ; $52BE: $FF
    and b                                         ; $52BF: $A0
    rst RST_38                                    ; $52C0: $FF
    nop                                           ; $52C1: $00
    ld hl, sp-$20                                 ; $52C2: $F8 $E0
    ld h, b                                       ; $52C4: $60
    add b                                         ; $52C5: $80
    ld a, [hl]                                    ; $52C6: $7E
    ldh [$FF38], a                                ; $52C7: $E0 $38
    ldh [rSVBK], a                                ; $52C9: $E0 $70
    ret nz                                        ; $52CB: $C0

    ld h, b                                       ; $52CC: $60
    ret nz                                        ; $52CD: $C0

    ld h, b                                       ; $52CE: $60
    ret nz                                        ; $52CF: $C0

    cp $80                                        ; $52D0: $FE $80
    ld a, b                                       ; $52D2: $78
    ldh [$FFF0], a                                ; $52D3: $E0 $F0
    nop                                           ; $52D5: $00
    add b                                         ; $52D6: $80
    nop                                           ; $52D7: $00
    ldh [rP1], a                                  ; $52D8: $E0 $00
    ld e, h                                       ; $52DA: $5C
    and b                                         ; $52DB: $A0
    ld d, a                                       ; $52DC: $57
    xor b                                         ; $52DD: $A8
    xor e                                         ; $52DE: $AB
    ld d, h                                       ; $52DF: $54
    rst RST_38                                    ; $52E0: $FF
    nop                                           ; $52E1: $00
    rst RST_38                                    ; $52E2: $FF
    nop                                           ; $52E3: $00
    ld [$FED5], a                                 ; $52E4: $EA $D5 $FE
    pop bc                                        ; $52E7: $C1
    ld [$FFD5], a                                 ; $52E8: $EA $D5 $FF
    nop                                           ; $52EB: $00
    rst RST_38                                    ; $52EC: $FF
    nop                                           ; $52ED: $00
    ldh [$FF1F], a                                ; $52EE: $E0 $1F
    rst RST_38                                    ; $52F0: $FF
    nop                                           ; $52F1: $00

jr_017_52F2:
    ret nc                                        ; $52F2: $D0

    rrca                                          ; $52F3: $0F
    rra                                           ; $52F4: $1F
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
    di                                            ; $5300: $F3
    inc c                                         ; $5301: $0C
    rst RST_38                                    ; $5302: $FF
    inc b                                         ; $5303: $04
    ei                                            ; $5304: $FB
    inc [hl]                                      ; $5305: $34
    ld a, a                                       ; $5306: $7F
    or b                                          ; $5307: $B0
    rst RST_38                                    ; $5308: $FF
    ld a, a                                       ; $5309: $7F
    rst RST_38                                    ; $530A: $FF
    ld a, a                                       ; $530B: $7F
    rst RST_38                                    ; $530C: $FF
    nop                                           ; $530D: $00
    sub [hl]                                      ; $530E: $96
    ld l, c                                       ; $530F: $69
    cp d                                          ; $5310: $BA
    ld b, l                                       ; $5311: $45
    push hl                                       ; $5312: $E5
    ld a, [de]                                    ; $5313: $1A
    rst RST_38                                    ; $5314: $FF
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
    xor e                                         ; $5320: $AB
    ld d, l                                       ; $5321: $55
    db $EB                                        ; $5322: $EB
    sub h                                         ; $5323: $94
    ld [$FF95], a                                 ; $5324: $EA $95 $FF
    add b                                         ; $5327: $80
    ret nz                                        ; $5328: $C0

    add b                                         ; $5329: $80
    db $FC                                        ; $532A: $FC
    nop                                           ; $532B: $00
    ldh a, [rP1]                                  ; $532C: $F0 $00
    ret nz                                        ; $532E: $C0

    nop                                           ; $532F: $00
    jr nc, jr_017_52F2                            ; $5330: $30 $C0

    ldh [rP1], a                                  ; $5332: $E0 $00
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
    cp a                                          ; $5340: $BF
    ld e, a                                       ; $5341: $5F
    rst RST_38                                    ; $5342: $FF
    rra                                           ; $5343: $1F
    rst RST_38                                    ; $5344: $FF
    nop                                           ; $5345: $00
    ccf                                           ; $5346: $3F
    ret nz                                        ; $5347: $C0

    rst RST_38                                    ; $5348: $FF
    nop                                           ; $5349: $00
    rra                                           ; $534A: $1F
    ldh [rIE], a                                  ; $534B: $E0 $FF
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

jr_017_535E:
    nop                                           ; $535E: $00
    nop                                           ; $535F: $00
    ccf                                           ; $5360: $3F
    nop                                           ; $5361: $00
    inc b                                         ; $5362: $04
    inc bc                                        ; $5363: $03
    inc bc                                        ; $5364: $03
    nop                                           ; $5365: $00
    ld [bc], a                                    ; $5366: $02
    ld bc, $0001                                  ; $5367: $01 $01 $00
    nop                                           ; $536A: $00
    nop                                           ; $536B: $00
    nop                                           ; $536C: $00
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
    nop                                           ; $5380: $00
    nop                                           ; $5381: $00
    nop                                           ; $5382: $00
    nop                                           ; $5383: $00
    nop                                           ; $5384: $00
    nop                                           ; $5385: $00
    nop                                           ; $5386: $00
    nop                                           ; $5387: $00
    nop                                           ; $5388: $00
    nop                                           ; $5389: $00
    nop                                           ; $538A: $00
    nop                                           ; $538B: $00
    nop                                           ; $538C: $00
    nop                                           ; $538D: $00
    nop                                           ; $538E: $00
    nop                                           ; $538F: $00
    nop                                           ; $5390: $00
    nop                                           ; $5391: $00
    nop                                           ; $5392: $00
    nop                                           ; $5393: $00
    add b                                         ; $5394: $80
    nop                                           ; $5395: $00
    rst RST_38                                    ; $5396: $FF
    nop                                           ; $5397: $00
    cp $F8                                        ; $5398: $FE $F8
    db $FC                                        ; $539A: $FC
    nop                                           ; $539B: $00
    jr nz, jr_017_535E                            ; $539C: $20 $C0

    ld hl, sp+$00                                 ; $539E: $F8 $00
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
    nop                                           ; $53AE: $00
    nop                                           ; $53AF: $00
    nop                                           ; $53B0: $00
    nop                                           ; $53B1: $00
    jr nc, jr_017_53B4                            ; $53B2: $30 $00

jr_017_53B4:
    inc a                                         ; $53B4: $3C
    db $10                                        ; $53B5: $10
    inc sp                                        ; $53B6: $33
    inc e                                         ; $53B7: $1C
    jr nc, jr_017_53D9                            ; $53B8: $30 $1F

    jr nc, jr_017_53DB                            ; $53BA: $30 $1F

    jr nc, jr_017_53DD                            ; $53BC: $30 $1F

    jr nc, jr_017_53DF                            ; $53BE: $30 $1F

    nop                                           ; $53C0: $00
    nop                                           ; $53C1: $00
    nop                                           ; $53C2: $00
    nop                                           ; $53C3: $00
    nop                                           ; $53C4: $00
    nop                                           ; $53C5: $00
    nop                                           ; $53C6: $00
    nop                                           ; $53C7: $00
    nop                                           ; $53C8: $00
    nop                                           ; $53C9: $00
    nop                                           ; $53CA: $00
    nop                                           ; $53CB: $00
    nop                                           ; $53CC: $00
    nop                                           ; $53CD: $00
    nop                                           ; $53CE: $00
    nop                                           ; $53CF: $00
    nop                                           ; $53D0: $00
    nop                                           ; $53D1: $00
    inc bc                                        ; $53D2: $03
    nop                                           ; $53D3: $00
    rlca                                          ; $53D4: $07
    inc bc                                        ; $53D5: $03
    rlca                                          ; $53D6: $07
    inc bc                                        ; $53D7: $03
    rst RST_00                                    ; $53D8: $C7

jr_017_53D9:
    nop                                           ; $53D9: $00
    ccf                                           ; $53DA: $3F

jr_017_53DB:
    rst RST_00                                    ; $53DB: $C7
    rrca                                          ; $53DC: $0F

jr_017_53DD:
    ldh a, [rSC]                                  ; $53DD: $F0 $02

jr_017_53DF:
    db $FD                                        ; $53DF: $FD
    ldh a, [rP1]                                  ; $53E0: $F0 $00
    rst RST_38                                    ; $53E2: $FF
    ret nc                                        ; $53E3: $D0

    ei                                            ; $53E4: $FB
    rst RST_10                                    ; $53E5: $D7
    db $FD                                        ; $53E6: $FD
    inc bc                                        ; $53E7: $03
    rst RST_38                                    ; $53E8: $FF
    ld e, b                                       ; $53E9: $58
    rst RST_38                                    ; $53EA: $FF
    ld [$E13F], sp                                ; $53EB: $08 $3F $E1
    rra                                           ; $53EE: $1F
    pop af                                        ; $53EF: $F1
    ld e, $F1                                     ; $53F0: $1E $F1
    ld e, $F1                                     ; $53F2: $1E $F1
    ld e, $F1                                     ; $53F4: $1E $F1
    ccf                                           ; $53F6: $3F
    add sp, -$01                                  ; $53F7: $E8 $FF
    nop                                           ; $53F9: $00
    rst RST_38                                    ; $53FA: $FF
    nop                                           ; $53FB: $00
    ld a, [$F3D5]                                 ; $53FC: $FA $D5 $F3
    db $EC                                        ; $53FF: $EC
    ret nz                                        ; $5400: $C0

    nop                                           ; $5401: $00
    ldh [rLCDC], a                                ; $5402: $E0 $40
    pop hl                                        ; $5404: $E1
    add b                                         ; $5405: $80
    rst RST_38                                    ; $5406: $FF
    ld bc, $FDFF                                  ; $5407: $01 $FF $FD
    or h                                          ; $540A: $B4
    ei                                            ; $540B: $FB
    inc h                                         ; $540C: $24
    ei                                            ; $540D: $FB
    inc b                                         ; $540E: $04
    ei                                            ; $540F: $FB
    inc b                                         ; $5410: $04
    ei                                            ; $5411: $FB
    inc b                                         ; $5412: $04
    ei                                            ; $5413: $FB
    add [hl]                                      ; $5414: $86
    db $FD                                        ; $5415: $FD
    cp $01                                        ; $5416: $FE $01
    rst RST_38                                    ; $5418: $FF
    nop                                           ; $5419: $00
    cp a                                          ; $541A: $BF
    ld e, a                                       ; $541B: $5F
    rst RST_38                                    ; $541C: $FF
    rra                                           ; $541D: $1F
    cp a                                          ; $541E: $BF
    ld e, a                                       ; $541F: $5F
    ret nz                                        ; $5420: $C0

    nop                                           ; $5421: $00
    ldh a, [$FFC0]                                ; $5422: $F0 $C0
    db $FC                                        ; $5424: $FC
    ldh a, [$FF7F]                                ; $5425: $F0 $7F
    db $FC                                        ; $5427: $FC
    ld h, a                                       ; $5428: $67
    ld a, [$F44B]                                 ; $5429: $FA $4B $F4
    ld c, e                                       ; $542C: $4B
    db $F4                                        ; $542D: $F4
    dec bc                                        ; $542E: $0B
    db $F4                                        ; $542F: $F4
    dec b                                         ; $5430: $05
    ld a, [$FC87]                                 ; $5431: $FA $87 $FC
    call c, $FAF0                                 ; $5434: $DC $F0 $FA
    call nz, Call_000_20DE                        ; $5437: $C4 $DE $20
    ld [$FC14], a                                 ; $543A: $EA $14 $FC
    add b                                         ; $543D: $80
    ld hl, sp+$00                                 ; $543E: $F8 $00
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
    ld h, b                                       ; $5452: $60
    nop                                           ; $5453: $00
    ret c                                         ; $5454: $D8

jr_017_5455:
    jr nz, jr_017_5455                            ; $5455: $20 $FE

    nop                                           ; $5457: $00
    rst RST_38                                    ; $5458: $FF
    nop                                           ; $5459: $00
    cp $00                                        ; $545A: $FE $00
    ld hl, sp+$00                                 ; $545C: $F8 $00
    ld h, b                                       ; $545E: $60
    nop                                           ; $545F: $00
    ld a, [$FFE5]                                 ; $5460: $FA $E5 $FF
    ldh [rIE], a                                  ; $5463: $E0 $FF
    nop                                           ; $5465: $00
    or b                                          ; $5466: $B0
    ld c, a                                       ; $5467: $4F
    ccf                                           ; $5468: $3F
    ret nz                                        ; $5469: $C0

    pop hl                                        ; $546A: $E1
    ld e, $FF                                     ; $546B: $1E $FF
    nop                                           ; $546D: $00
    nop                                           ; $546E: $00
    nop                                           ; $546F: $00
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
    rst RST_38                                    ; $5480: $FF
    nop                                           ; $5481: $00
    rst RST_38                                    ; $5482: $FF
    nop                                           ; $5483: $00
    rst RST_38                                    ; $5484: $FF
    nop                                           ; $5485: $00
    rst RST_38                                    ; $5486: $FF
    nop                                           ; $5487: $00
    rst RST_38                                    ; $5488: $FF
    nop                                           ; $5489: $00
    nop                                           ; $548A: $00
    nop                                           ; $548B: $00
    nop                                           ; $548C: $00
    nop                                           ; $548D: $00
    nop                                           ; $548E: $00
    nop                                           ; $548F: $00
    nop                                           ; $5490: $00
    nop                                           ; $5491: $00
    nop                                           ; $5492: $00

jr_017_5493:
    nop                                           ; $5493: $00
    nop                                           ; $5494: $00
    nop                                           ; $5495: $00
    nop                                           ; $5496: $00
    nop                                           ; $5497: $00
    nop                                           ; $5498: $00
    nop                                           ; $5499: $00
    nop                                           ; $549A: $00
    nop                                           ; $549B: $00
    nop                                           ; $549C: $00
    nop                                           ; $549D: $00
    nop                                           ; $549E: $00
    nop                                           ; $549F: $00
    ret z                                         ; $54A0: $C8

    jr nc, jr_017_5493                            ; $54A1: $30 $F0

    nop                                           ; $54A3: $00
    sub b                                         ; $54A4: $90
    ld h, b                                       ; $54A5: $60
    ldh [rP1], a                                  ; $54A6: $E0 $00
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
    nop                                           ; $54B2: $00
    nop                                           ; $54B3: $00
    nop                                           ; $54B4: $00
    nop                                           ; $54B5: $00
    nop                                           ; $54B6: $00
    nop                                           ; $54B7: $00
    nop                                           ; $54B8: $00
    nop                                           ; $54B9: $00
    nop                                           ; $54BA: $00
    nop                                           ; $54BB: $00
    nop                                           ; $54BC: $00
    nop                                           ; $54BD: $00
    nop                                           ; $54BE: $00
    nop                                           ; $54BF: $00
    nop                                           ; $54C0: $00
    nop                                           ; $54C1: $00
    nop                                           ; $54C2: $00
    nop                                           ; $54C3: $00
    ld bc, $0700                                  ; $54C4: $01 $00 $07
    ld bc, $071F                                  ; $54C7: $01 $1F $07
    ld l, $1F                                     ; $54CA: $2E $1F
    ld c, h                                       ; $54CC: $4C
    ccf                                           ; $54CD: $3F
    adc b                                         ; $54CE: $88
    ld a, a                                       ; $54CF: $7F
    add h                                         ; $54D0: $84
    ld a, a                                       ; $54D1: $7F
    add b                                         ; $54D2: $80
    ld a, a                                       ; $54D3: $7F
    add b                                         ; $54D4: $80
    ld a, a                                       ; $54D5: $7F
    ld b, b                                       ; $54D6: $40
    ccf                                           ; $54D7: $3F
    jr nc, jr_017_54E9                            ; $54D8: $30 $0F

    rrca                                          ; $54DA: $0F
    nop                                           ; $54DB: $00
    nop                                           ; $54DC: $00
    nop                                           ; $54DD: $00
    nop                                           ; $54DE: $00
    nop                                           ; $54DF: $00
    nop                                           ; $54E0: $00
    nop                                           ; $54E1: $00
    ccf                                           ; $54E2: $3F
    nop                                           ; $54E3: $00
    rst RST_38                                    ; $54E4: $FF
    ccf                                           ; $54E5: $3F
    rst RST_38                                    ; $54E6: $FF
    rst RST_38                                    ; $54E7: $FF
    rst RST_38                                    ; $54E8: $FF

jr_017_54E9:
    rst RST_38                                    ; $54E9: $FF
    rst RST_38                                    ; $54EA: $FF
    rst RST_38                                    ; $54EB: $FF
    cp $FF                                        ; $54EC: $FE $FF
    db $FC                                        ; $54EE: $FC
    rst RST_38                                    ; $54EF: $FF
    ld a, h                                       ; $54F0: $7C

jr_017_54F1:
    rst RST_38                                    ; $54F1: $FF
    ccf                                           ; $54F2: $3F
    rst RST_38                                    ; $54F3: $FF
    rrca                                          ; $54F4: $0F
    rst RST_38                                    ; $54F5: $FF
    nop                                           ; $54F6: $00
    rst RST_38                                    ; $54F7: $FF
    nop                                           ; $54F8: $00
    rst RST_38                                    ; $54F9: $FF
    rst RST_38                                    ; $54FA: $FF
    nop                                           ; $54FB: $00
    nop                                           ; $54FC: $00
    nop                                           ; $54FD: $00
    nop                                           ; $54FE: $00
    nop                                           ; $54FF: $00
    jr jr_017_5511                                ; $5500: $18 $0F

    rst RST_38                                    ; $5502: $FF
    rlca                                          ; $5503: $07
    rst RST_38                                    ; $5504: $FF
    ld hl, sp-$01                                 ; $5505: $F8 $FF
    rst RST_38                                    ; $5507: $FF
    rst RST_38                                    ; $5508: $FF
    rst RST_38                                    ; $5509: $FF
    sbc b                                         ; $550A: $98
    rst RST_38                                    ; $550B: $FF
    daa                                           ; $550C: $27
    ld hl, sp+$1F                                 ; $550D: $F8 $1F
    pop hl                                        ; $550F: $E1
    daa                                           ; $5510: $27

jr_017_5511:
    reti                                          ; $5511: $D9


    scf                                           ; $5512: $37
    ret z                                         ; $5513: $C8

    rst RST_08                                    ; $5514: $CF
    ldh a, [rP1]                                  ; $5515: $F0 $00
    rst RST_38                                    ; $5517: $FF
    nop                                           ; $5518: $00
    rst RST_38                                    ; $5519: $FF
    rst RST_38                                    ; $551A: $FF
    nop                                           ; $551B: $00
    ld bc, $0000                                  ; $551C: $01 $00 $00
    nop                                           ; $551F: $00
    inc b                                         ; $5520: $04
    ei                                            ; $5521: $FB
    db $FC                                        ; $5522: $FC
    ei                                            ; $5523: $FB
    db $FC                                        ; $5524: $FC
    inc bc                                        ; $5525: $03
    ldh a, [$FFEF]                                ; $5526: $F0 $EF
    jr c, jr_017_54F1                             ; $5528: $38 $C7

    rst RST_20                                    ; $552A: $E7
    jr @+$01                                      ; $552B: $18 $FF

    sub b                                         ; $552D: $90
    rst RST_28                                    ; $552E: $EF
    sub a                                         ; $552F: $97
    rst RST_38                                    ; $5530: $FF
    add a                                         ; $5531: $87
    rst RST_38                                    ; $5532: $FF
    rst RST_38                                    ; $5533: $FF
    rst RST_38                                    ; $5534: $FF
    ccf                                           ; $5535: $3F
    ccf                                           ; $5536: $3F
    ret nz                                        ; $5537: $C0

    nop                                           ; $5538: $00
    rst RST_38                                    ; $5539: $FF
    rst RST_38                                    ; $553A: $FF
    nop                                           ; $553B: $00
    call z, $FF33                                 ; $553C: $CC $33 $FF
    nop                                           ; $553F: $00
    nop                                           ; $5540: $00
    nop                                           ; $5541: $00
    nop                                           ; $5542: $00
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
    rlca                                          ; $555A: $07
    nop                                           ; $555B: $00
    rlca                                          ; $555C: $07
    inc bc                                        ; $555D: $03
    inc bc                                        ; $555E: $03
    nop                                           ; $555F: $00
    rra                                           ; $5560: $1F
    nop                                           ; $5561: $00
    ldh [$FF1F], a                                ; $5562: $E0 $1F
    rst RST_38                                    ; $5564: $FF
    ret nz                                        ; $5565: $C0

    rst RST_38                                    ; $5566: $FF
    rra                                           ; $5567: $1F
    ccf                                           ; $5568: $3F
    nop                                           ; $5569: $00
    jr jr_017_5573                                ; $556A: $18 $07

    ld b, $01                                     ; $556C: $06 $01
    ld bc, $0000                                  ; $556E: $01 $00 $00
    nop                                           ; $5571: $00
    nop                                           ; $5572: $00

jr_017_5573:
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
    jr jr_017_5591                                ; $5580: $18 $0F

    rrca                                          ; $5582: $0F
    rlca                                          ; $5583: $07
    rst RST_38                                    ; $5584: $FF
    nop                                           ; $5585: $00
    sub l                                         ; $5586: $95
    ld l, d                                       ; $5587: $6A
    ld c, d                                       ; $5588: $4A
    or l                                          ; $5589: $B5
    jp z, $A735                                   ; $558A: $CA $35 $A7

    ld e, b                                       ; $558D: $58
    daa                                           ; $558E: $27
    reti                                          ; $558F: $D9


    daa                                           ; $5590: $27

jr_017_5591:
    reti                                          ; $5591: $D9


    rst RST_20                                    ; $5592: $E7
    jr jr_017_55D4                                ; $5593: $18 $3F

    nop                                           ; $5595: $00
    ld [bc], a                                    ; $5596: $02
    ld bc, $0003                                  ; $5597: $01 $03 $00
    inc bc                                        ; $559A: $03
    nop                                           ; $559B: $00
    ld bc, $0000                                  ; $559C: $01 $00 $00
    nop                                           ; $559F: $00
    inc b                                         ; $55A0: $04
    ei                                            ; $55A1: $FB
    db $FC                                        ; $55A2: $FC
    ei                                            ; $55A3: $FB
    db $FC                                        ; $55A4: $FC
    inc bc                                        ; $55A5: $03
    ld d, b                                       ; $55A6: $50
    xor a                                         ; $55A7: $AF
    cp b                                          ; $55A8: $B8
    ld b, a                                       ; $55A9: $47
    rst RST_20                                    ; $55AA: $E7
    jr @+$01                                      ; $55AB: $18 $FF

    sub b                                         ; $55AD: $90
    rst RST_28                                    ; $55AE: $EF
    sub a                                         ; $55AF: $97
    rst RST_38                                    ; $55B0: $FF
    add a                                         ; $55B1: $87
    rst RST_38                                    ; $55B2: $FF
    rst RST_38                                    ; $55B3: $FF
    rst RST_38                                    ; $55B4: $FF
    ld a, a                                       ; $55B5: $7F
    rst RST_38                                    ; $55B6: $FF
    nop                                           ; $55B7: $00
    xor d                                         ; $55B8: $AA
    ld d, l                                       ; $55B9: $55
    inc sp                                        ; $55BA: $33
    call z, Call_000_33CC                         ; $55BB: $CC $CC $33
    rst RST_38                                    ; $55BE: $FF
    nop                                           ; $55BF: $00
    inc bc                                        ; $55C0: $03
    nop                                           ; $55C1: $00
    inc c                                         ; $55C2: $0C
    inc bc                                        ; $55C3: $03
    db $10                                        ; $55C4: $10
    rrca                                          ; $55C5: $0F
    inc a                                         ; $55C6: $3C
    inc bc                                        ; $55C7: $03
    halt                                          ; $55C8: $76
    add hl, bc                                    ; $55C9: $09
    ei                                            ; $55CA: $FB
    inc b                                         ; $55CB: $04
    ei                                            ; $55CC: $FB
    inc b                                         ; $55CD: $04
    cp $01                                        ; $55CE: $FE $01
    ld a, h                                       ; $55D0: $7C
    inc bc                                        ; $55D1: $03
    add hl, sp                                    ; $55D2: $39
    rlca                                          ; $55D3: $07

jr_017_55D4:
    rrca                                          ; $55D4: $0F
    inc bc                                        ; $55D5: $03
    ld a, a                                       ; $55D6: $7F
    nop                                           ; $55D7: $00
    xor e                                         ; $55D8: $AB
    ld d, h                                       ; $55D9: $54
    ld sp, hl                                     ; $55DA: $F9
    ld b, $AB                                     ; $55DB: $06 $AB
    ld d, l                                       ; $55DD: $55
    ld a, a                                       ; $55DE: $7F
    ld bc, $000E                                  ; $55DF: $01 $0E $00
    ld c, $04                                     ; $55E2: $0E $04
    ld a, [bc]                                    ; $55E4: $0A
    inc b                                         ; $55E5: $04
    ld [de], a                                    ; $55E6: $12
    inc c                                         ; $55E7: $0C
    rra                                           ; $55E8: $1F
    nop                                           ; $55E9: $00
    rst RST_38                                    ; $55EA: $FF
    inc c                                         ; $55EB: $0C
    ld e, $EB                                     ; $55EC: $1E $EB
    rrca                                          ; $55EE: $0F
    ldh a, [$FF09]                                ; $55EF: $F0 $09
    or $08                                        ; $55F1: $F6 $08
    rst RST_30                                    ; $55F3: $F7
    jr @-$07                                      ; $55F4: $18 $F7

    add hl, de                                    ; $55F6: $19
    rst RST_30                                    ; $55F7: $F7
    sbc c                                         ; $55F8: $99
    rst RST_30                                    ; $55F9: $F7
    cp c                                          ; $55FA: $B9
    rst RST_30                                    ; $55FB: $F7
    cp e                                          ; $55FC: $BB
    rst RST_30                                    ; $55FD: $F7
    rst RST_38                                    ; $55FE: $FF
    xor $F8                                       ; $55FF: $EE $F8
    nop                                           ; $5601: $00
    cp $68                                        ; $5602: $FE $68
    rst RST_38                                    ; $5604: $FF
    ld l, [hl]                                    ; $5605: $6E

jr_017_5606:
    rst RST_38                                    ; $5606: $FF
    inc bc                                        ; $5607: $03

jr_017_5608:
    rst RST_38                                    ; $5608: $FF
    ld d, b                                       ; $5609: $50
    rst RST_38                                    ; $560A: $FF
    ld [bc], a                                    ; $560B: $02
    cp $25                                        ; $560C: $FE $25
    cp $25                                        ; $560E: $FE $25
    cp $25                                        ; $5610: $FE $25
    cp $25                                        ; $5612: $FE $25
    cp $25                                        ; $5614: $FE $25
    rst RST_38                                    ; $5616: $FF
    ld l, d                                       ; $5617: $6A
    rst RST_38                                    ; $5618: $FF
    nop                                           ; $5619: $00
    rst RST_38                                    ; $561A: $FF
    nop                                           ; $561B: $00
    xor a                                         ; $561C: $AF
    ld d, e                                       ; $561D: $53
    rst RST_20                                    ; $561E: $E7
    dec de                                        ; $561F: $1B
    jr jr_017_5622                                ; $5620: $18 $00

jr_017_5622:
    inc e                                         ; $5622: $1C
    ld [$182C], sp                                ; $5623: $08 $2C $18
    ld h, $1C                                     ; $5626: $26 $1C
    ld b, [hl]                                    ; $5628: $46
    inc a                                         ; $5629: $3C
    ld b, [hl]                                    ; $562A: $46
    inc a                                         ; $562B: $3C
    add [hl]                                      ; $562C: $86
    ld a, h                                       ; $562D: $7C
    add [hl]                                      ; $562E: $86
    ld a, h                                       ; $562F: $7C
    call z, $2C38                                 ; $5630: $CC $38 $2C
    ret c                                         ; $5633: $D8

    jr c, jr_017_5606                             ; $5634: $38 $D0

    jr c, jr_017_5608                             ; $5636: $38 $D0

    ld a, $C0                                     ; $5638: $3E $C0
    dec [hl]                                      ; $563A: $35
    jp z, $EA15                                   ; $563B: $CA $15 $EA

    ld a, [$7F05]                                 ; $563E: $FA $05 $7F
    nop                                           ; $5641: $00
    ld b, e                                       ; $5642: $43
    inc a                                         ; $5643: $3C
    ccf                                           ; $5644: $3F
    nop                                           ; $5645: $00
    ld hl, $1F1E                                  ; $5646: $21 $1E $1F
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
    nop                                           ; $5658: $00
    nop                                           ; $5659: $00
    nop                                           ; $565A: $00
    nop                                           ; $565B: $00
    nop                                           ; $565C: $00
    nop                                           ; $565D: $00
    nop                                           ; $565E: $00
    nop                                           ; $565F: $00
    rst RST_38                                    ; $5660: $FF
    nop                                           ; $5661: $00
    rst RST_38                                    ; $5662: $FF
    nop                                           ; $5663: $00
    cp $FD                                        ; $5664: $FE $FD
    rst RST_38                                    ; $5666: $FF
    db $FC                                        ; $5667: $FC
    cp $FD                                        ; $5668: $FE $FD
    rst RST_38                                    ; $566A: $FF
    nop                                           ; $566B: $00
    rst RST_38                                    ; $566C: $FF
    nop                                           ; $566D: $00
    cp $01                                        ; $566E: $FE $01
    rst RST_38                                    ; $5670: $FF
    nop                                           ; $5671: $00
    db $FD                                        ; $5672: $FD
    nop                                           ; $5673: $00
    ld bc, $0000                                  ; $5674: $01 $00 $00
    nop                                           ; $5677: $00
    nop                                           ; $5678: $00
    nop                                           ; $5679: $00
    nop                                           ; $567A: $00
    nop                                           ; $567B: $00
    nop                                           ; $567C: $00
    nop                                           ; $567D: $00
    nop                                           ; $567E: $00
    nop                                           ; $567F: $00
    xor a                                         ; $5680: $AF
    ld d, a                                       ; $5681: $57
    rst RST_38                                    ; $5682: $FF
    rlca                                          ; $5683: $07
    rst RST_38                                    ; $5684: $FF
    nop                                           ; $5685: $00
    add hl, bc                                    ; $5686: $09
    or $FB                                        ; $5687: $F6 $FB
    inc b                                         ; $5689: $04
    ld c, $F1                                     ; $568A: $0E $F1
    rst RST_38                                    ; $568C: $FF
    nop                                           ; $568D: $00
    nop                                           ; $568E: $00
    nop                                           ; $568F: $00
    nop                                           ; $5690: $00
    nop                                           ; $5691: $00
    nop                                           ; $5692: $00
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
    ld a, [hl-]                                   ; $56A0: $3A
    push bc                                       ; $56A1: $C5
    cp $49                                        ; $56A2: $FE $49
    cp [hl]                                       ; $56A4: $BE
    ld c, c                                       ; $56A5: $49
    rst RST_38                                    ; $56A6: $FF
    ld [$F8FC], sp                                ; $56A7: $08 $FC $F8
    db $FC                                        ; $56AA: $FC
    ldh a, [$FFFC]                                ; $56AB: $F0 $FC
    nop                                           ; $56AD: $00
    ld l, b                                       ; $56AE: $68
    sub b                                         ; $56AF: $90
    xor b                                         ; $56B0: $A8
    ld d, b                                       ; $56B1: $50
    ld e, b                                       ; $56B2: $58
    and b                                         ; $56B3: $A0
    ldh a, [rP1]                                  ; $56B4: $F0 $00
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
    nop                                           ; $56C0: $00
    nop                                           ; $56C1: $00
    nop                                           ; $56C2: $00
    nop                                           ; $56C3: $00
    nop                                           ; $56C4: $00
    nop                                           ; $56C5: $00
    nop                                           ; $56C6: $00
    nop                                           ; $56C7: $00
    nop                                           ; $56C8: $00
    nop                                           ; $56C9: $00
    nop                                           ; $56CA: $00
    nop                                           ; $56CB: $00
    nop                                           ; $56CC: $00
    nop                                           ; $56CD: $00
    nop                                           ; $56CE: $00
    nop                                           ; $56CF: $00
    nop                                           ; $56D0: $00
    nop                                           ; $56D1: $00
    ret nz                                        ; $56D2: $C0

    nop                                           ; $56D3: $00
    ld a, b                                       ; $56D4: $78
    add b                                         ; $56D5: $80
    cp a                                          ; $56D6: $BF
    ld b, b                                       ; $56D7: $40
    cp a                                          ; $56D8: $BF
    ld e, a                                       ; $56D9: $5F
    cp a                                          ; $56DA: $BF
    ld b, b                                       ; $56DB: $40
    and d                                         ; $56DC: $A2
    ld e, h                                       ; $56DD: $5C
    db $FC                                        ; $56DE: $FC
    nop                                           ; $56DF: $00
    add b                                         ; $56E0: $80
    nop                                           ; $56E1: $00
    ret nz                                        ; $56E2: $C0

    add b                                         ; $56E3: $80
    ret nz                                        ; $56E4: $C0

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
    nop                                           ; $5700: $00
    nop                                           ; $5701: $00
    nop                                           ; $5702: $00
    nop                                           ; $5703: $00
    nop                                           ; $5704: $00
    nop                                           ; $5705: $00
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
    ld bc, $0600                                  ; $5712: $01 $00 $06
    ld bc, $001F                                  ; $5715: $01 $1F $00
    ccf                                           ; $5718: $3F
    nop                                           ; $5719: $00
    rra                                           ; $571A: $1F
    nop                                           ; $571B: $00
    rlca                                          ; $571C: $07
    nop                                           ; $571D: $00
    ld bc, $0000                                  ; $571E: $01 $00 $00
    nop                                           ; $5721: $00
    inc bc                                        ; $5722: $03
    nop                                           ; $5723: $00
    rrca                                          ; $5724: $0F
    inc bc                                        ; $5725: $03
    cp a                                          ; $5726: $BF
    rrca                                          ; $5727: $0F
    ld sp, hl                                     ; $5728: $F9
    rla                                           ; $5729: $17
    db $F4                                        ; $572A: $F4
    dec bc                                        ; $572B: $0B
    db $F4                                        ; $572C: $F4
    dec bc                                        ; $572D: $0B
    db $F4                                        ; $572E: $F4
    dec bc                                        ; $572F: $0B
    add sp, $17                                   ; $5730: $E8 $17
    cp b                                          ; $5732: $B8
    rrca                                          ; $5733: $0F
    ld c, $03                                     ; $5734: $0E $03
    rla                                           ; $5736: $17
    ld [$011E], sp                                ; $5737: $08 $1E $01
    dec d                                         ; $573A: $15
    ld a, [bc]                                    ; $573B: $0A
    rrca                                          ; $573C: $0F
    nop                                           ; $573D: $00
    rlca                                          ; $573E: $07
    nop                                           ; $573F: $00
    nop                                           ; $5740: $00
    nop                                           ; $5741: $00
    pop bc                                        ; $5742: $C1
    nop                                           ; $5743: $00
    pop hl                                        ; $5744: $E1
    ret nz                                        ; $5745: $C0

    rst RST_38                                    ; $5746: $FF
    ldh [$FFBF], a                                ; $5747: $E0 $BF
    rst RST_28                                    ; $5749: $EF
    adc e                                         ; $574A: $8B
    rst RST_30                                    ; $574B: $F7
    adc c                                         ; $574C: $89
    rst RST_30                                    ; $574D: $F7
    adc b                                         ; $574E: $88
    rst RST_30                                    ; $574F: $F7
    ld [$08F7], sp                                ; $5750: $08 $F7 $08
    rst RST_30                                    ; $5753: $F7
    ld e, b                                       ; $5754: $58
    rst RST_28                                    ; $5755: $EF
    rst RST_18                                    ; $5756: $DF
    ldh [rIE], a                                  ; $5757: $E0 $FF
    ret nz                                        ; $5759: $C0

    rst RST_38                                    ; $575A: $FF
    ld a, $FF                                     ; $575B: $3E $FF
    ld a, $FF                                     ; $575D: $3E $FF
    ld a, [hl]                                    ; $575F: $7E
    ld bc, $0100                                  ; $5760: $01 $00 $01
    nop                                           ; $5763: $00
    inc bc                                        ; $5764: $03
    nop                                           ; $5765: $00
    inc bc                                        ; $5766: $03
    nop                                           ; $5767: $00
    rlca                                          ; $5768: $07
    ld [bc], a                                    ; $5769: $02
    rlca                                          ; $576A: $07
    ld [bc], a                                    ; $576B: $02
    ld h, a                                       ; $576C: $67
    nop                                           ; $576D: $00
    rst RST_38                                    ; $576E: $FF
    ld [bc], a                                    ; $576F: $02
    rst RST_30                                    ; $5770: $F7
    cp d                                          ; $5771: $BA
    rst RST_28                                    ; $5772: $EF
    ld [hl], b                                    ; $5773: $70
    rst RST_38                                    ; $5774: $FF
    ld b, $FF                                     ; $5775: $06 $FF
    call nz, $E17F                                ; $5777: $C4 $7F $E1
    ld a, $E3                                     ; $577A: $3E $E3
    ld e, $E3                                     ; $577C: $1E $E3
    ld e, $E3                                     ; $577E: $1E $E3
    inc bc                                        ; $5780: $03
    ld bc, $0103                                  ; $5781: $01 $03 $01
    inc bc                                        ; $5784: $03
    ld bc, $0103                                  ; $5785: $01 $03 $01
    inc bc                                        ; $5788: $03
    ld bc, $00F1                                  ; $5789: $01 $F1 $00
    ld sp, hl                                     ; $578C: $F9
    ldh a, [$FFFB]                                ; $578D: $F0 $FB
    pop af                                        ; $578F: $F1
    ei                                            ; $5790: $FB
    ld bc, $BBFE                                  ; $5791: $01 $FE $BB
    db $FC                                        ; $5794: $FC
    rlca                                          ; $5795: $07
    jr @-$0F                                      ; $5796: $18 $EF

    jr nc, @-$1F                                  ; $5798: $30 $DF

    ld l, b                                       ; $579A: $68
    cp a                                          ; $579B: $BF
    ldh a, [$FF7F]                                ; $579C: $F0 $7F
    ldh a, [$FFDF]                                ; $579E: $F0 $DF
    adc a                                         ; $57A0: $8F
    inc b                                         ; $57A1: $04
    adc a                                         ; $57A2: $8F
    ld [bc], a                                    ; $57A3: $02
    adc a                                         ; $57A4: $8F
    ld [bc], a                                    ; $57A5: $02
    ld a, a                                       ; $57A6: $7F
    add d                                         ; $57A7: $82
    rst RST_28                                    ; $57A8: $EF
    ld d, [hl]                                    ; $57A9: $56
    rst RST_28                                    ; $57AA: $EF
    ld d, [hl]                                    ; $57AB: $56
    ei                                            ; $57AC: $FB
    adc $7B                                       ; $57AD: $CE $7B
    adc $73                                       ; $57AF: $CE $73
    sbc [hl]                                      ; $57B1: $9E
    ld h, e                                       ; $57B2: $63
    cp $43                                        ; $57B3: $FE $43
    cp $03                                        ; $57B5: $FE $03
    cp $06                                        ; $57B7: $FE $06
    db $FC                                        ; $57B9: $FC
    ld b, $FC                                     ; $57BA: $06 $FC
    ld b, $FC                                     ; $57BC: $06 $FC
    inc c                                         ; $57BE: $0C
    ld hl, sp+$0C                                 ; $57BF: $F8 $0C
    inc bc                                        ; $57C1: $03
    rra                                           ; $57C2: $1F
    nop                                           ; $57C3: $00
    ld [bc], a                                    ; $57C4: $02
    ld bc, $0003                                  ; $57C5: $01 $03 $00
    rrca                                          ; $57C8: $0F
    inc bc                                        ; $57C9: $03
    ccf                                           ; $57CA: $3F
    rrca                                          ; $57CB: $0F
    ld a, a                                       ; $57CC: $7F
    nop                                           ; $57CD: $00
    nop                                           ; $57CE: $00
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
    rst RST_38                                    ; $57E0: $FF
    nop                                           ; $57E1: $00
    rst RST_38                                    ; $57E2: $FF
    nop                                           ; $57E3: $00
    rst RST_38                                    ; $57E4: $FF
    nop                                           ; $57E5: $00
    ld a, a                                       ; $57E6: $7F
    add b                                         ; $57E7: $80
    rst RST_38                                    ; $57E8: $FF
    nop                                           ; $57E9: $00
    ei                                            ; $57EA: $FB
    ldh [$FFE0], a                                ; $57EB: $E0 $E0
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
    rra                                           ; $5800: $1F
    ldh [c], a                                    ; $5801: $E2
    ld a, a                                       ; $5802: $7F
    push bc                                       ; $5803: $C5
    rst RST_38                                    ; $5804: $FF
    nop                                           ; $5805: $00
    rst RST_38                                    ; $5806: $FF
    ld bc, $AA57                                  ; $5807: $01 $57 $AA
    di                                            ; $580A: $F3
    dec c                                         ; $580B: $0D
    ld e, a                                       ; $580C: $5F
    and e                                         ; $580D: $A3
    rst RST_38                                    ; $580E: $FF
    nop                                           ; $580F: $00
    rst RST_38                                    ; $5810: $FF
    nop                                           ; $5811: $00
    jp $FF3C                                      ; $5812: $C3 $3C $FF


    inc bc                                        ; $5815: $03
    rst RST_38                                    ; $5816: $FF
    rrca                                          ; $5817: $0F
    rst RST_38                                    ; $5818: $FF
    nop                                           ; $5819: $00
    rst RST_38                                    ; $581A: $FF
    nop                                           ; $581B: $00
    ld a, [hl]                                    ; $581C: $7E
    nop                                           ; $581D: $00
    inc a                                         ; $581E: $3C
    nop                                           ; $581F: $00
    ldh [$FF3F], a                                ; $5820: $E0 $3F
    ret nz                                        ; $5822: $C0

    ld a, a                                       ; $5823: $7F
    add h                                         ; $5824: $84
    rst RST_38                                    ; $5825: $FF
    sbc b                                         ; $5826: $98
    rst RST_38                                    ; $5827: $FF
    ld a, b                                       ; $5828: $78
    rst RST_28                                    ; $5829: $EF
    ldh a, [$FF9F]                                ; $582A: $F0 $9F
    pop hl                                        ; $582C: $E1
    ccf                                           ; $582D: $3F
    rst RST_00                                    ; $582E: $C7
    ld a, [hl]                                    ; $582F: $7E
    sbc a                                         ; $5830: $9F
    ld hl, sp-$05                                 ; $5831: $F8 $FB
    db $E4                                        ; $5833: $E4
    db $FD                                        ; $5834: $FD
    ld [bc], a                                    ; $5835: $02
    di                                            ; $5836: $F3
    inc c                                         ; $5837: $0C
    db $FC                                        ; $5838: $FC
    inc bc                                        ; $5839: $03
    ld a, $01                                     ; $583A: $3E $01
    rra                                           ; $583C: $1F
    nop                                           ; $583D: $00
    rrca                                          ; $583E: $0F
    nop                                           ; $583F: $00
    inc c                                         ; $5840: $0C
    ld hl, sp+$18                                 ; $5841: $F8 $18
    ldh a, [rNR23]                                ; $5843: $F0 $18
    ldh a, [$FF30]                                ; $5845: $F0 $30
    ldh [$FF60], a                                ; $5847: $E0 $60
    ret nz                                        ; $5849: $C0

    ldh [$FF80], a                                ; $584A: $E0 $80
    ldh a, [$FF60]                                ; $584C: $F0 $60
    ld hl, sp-$20                                 ; $584E: $F8 $E0
    db $F4                                        ; $5850: $F4
    add sp, -$0E                                  ; $5851: $E8 $F2
    inc l                                         ; $5853: $2C
    ldh a, [c]                                    ; $5854: $F2
    inc c                                         ; $5855: $0C
    ld a, h                                       ; $5856: $7C
    add b                                         ; $5857: $80
    ldh [rP1], a                                  ; $5858: $E0 $00
    and b                                         ; $585A: $A0
    ld b, b                                       ; $585B: $40
    ld b, b                                       ; $585C: $40
    add b                                         ; $585D: $80
    add b                                         ; $585E: $80
    nop                                           ; $585F: $00
    nop                                           ; $5860: $00
    nop                                           ; $5861: $00
    nop                                           ; $5862: $00
    nop                                           ; $5863: $00
    nop                                           ; $5864: $00
    nop                                           ; $5865: $00
    nop                                           ; $5866: $00
    nop                                           ; $5867: $00
    nop                                           ; $5868: $00
    nop                                           ; $5869: $00
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
    inc bc                                        ; $587E: $03
    nop                                           ; $587F: $00
    nop                                           ; $5880: $00
    nop                                           ; $5881: $00
    nop                                           ; $5882: $00
    nop                                           ; $5883: $00
    nop                                           ; $5884: $00
    nop                                           ; $5885: $00
    nop                                           ; $5886: $00
    nop                                           ; $5887: $00
    nop                                           ; $5888: $00
    nop                                           ; $5889: $00
    nop                                           ; $588A: $00
    nop                                           ; $588B: $00
    nop                                           ; $588C: $00
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
    ld bc, $0D00                                  ; $589A: $01 $00 $0D
    nop                                           ; $589D: $00
    rrca                                          ; $589E: $0F
    inc b                                         ; $589F: $04
    ld bc, $0300                                  ; $58A0: $01 $00 $03
    nop                                           ; $58A3: $00
    ld bc, $0000                                  ; $58A4: $01 $00 $00
    nop                                           ; $58A7: $00
    nop                                           ; $58A8: $00
    nop                                           ; $58A9: $00
    ret nz                                        ; $58AA: $C0

    nop                                           ; $58AB: $00
    or b                                          ; $58AC: $B0
    ld b, b                                       ; $58AD: $40
    ld c, h                                       ; $58AE: $4C
    jr nc, jr_017_58DC                            ; $58AF: $30 $2B

    inc d                                         ; $58B1: $14
    inc d                                         ; $58B2: $14
    dec bc                                        ; $58B3: $0B
    ld c, $01                                     ; $58B4: $0E $01
    inc bc                                        ; $58B6: $03
    nop                                           ; $58B7: $00
    nop                                           ; $58B8: $00
    nop                                           ; $58B9: $00
    nop                                           ; $58BA: $00
    nop                                           ; $58BB: $00
    nop                                           ; $58BC: $00
    nop                                           ; $58BD: $00
    nop                                           ; $58BE: $00
    nop                                           ; $58BF: $00
    dec de                                        ; $58C0: $1B
    nop                                           ; $58C1: $00
    ld a, a                                       ; $58C2: $7F
    ld bc, $00FF                                  ; $58C3: $01 $FF $00
    rst RST_38                                    ; $58C6: $FF
    nop                                           ; $58C7: $00
    rst RST_38                                    ; $58C8: $FF
    nop                                           ; $58C9: $00
    ld l, [hl]                                    ; $58CA: $6E
    ld de, $001B                                  ; $58CB: $11 $1B $00
    nop                                           ; $58CE: $00
    nop                                           ; $58CF: $00
    ld bc, $0100                                  ; $58D0: $01 $00 $01
    nop                                           ; $58D3: $00
    rra                                           ; $58D4: $1F
    nop                                           ; $58D5: $00
    rst RST_38                                    ; $58D6: $FF
    nop                                           ; $58D7: $00
    nop                                           ; $58D8: $00
    rst RST_38                                    ; $58D9: $FF
    nop                                           ; $58DA: $00
    rst RST_38                                    ; $58DB: $FF

jr_017_58DC:
    rst RST_00                                    ; $58DC: $C7
    ccf                                           ; $58DD: $3F
    ld sp, $0C0F                                  ; $58DE: $31 $0F $0C
    nop                                           ; $58E1: $00
    ld a, $0C                                     ; $58E2: $3E $0C
    rst RST_38                                    ; $58E4: $FF
    ld a, $FB                                     ; $58E5: $3E $FB
    cp $98                                        ; $58E7: $FE $98
    ld a, a                                       ; $58E9: $7F
    ld c, b                                       ; $58EA: $48
    cp a                                          ; $58EB: $BF
    ld c, b                                       ; $58EC: $48
    cp a                                          ; $58ED: $BF
    ld b, b                                       ; $58EE: $40
    cp a                                          ; $58EF: $BF
    add b                                         ; $58F0: $80
    ld a, a                                       ; $58F1: $7F
    add l                                         ; $58F2: $85
    cp $ED                                        ; $58F3: $FE $ED
    ld a, $7F                                     ; $58F5: $3E $7F
    adc h                                         ; $58F7: $8C
    rst RST_28                                    ; $58F8: $EF
    ld de, $877F                                  ; $58F9: $11 $7F $87
    rst RST_18                                    ; $58FC: $DF
    ccf                                           ; $58FD: $3F
    ld bc, $0FFF                                  ; $58FE: $01 $FF $0F
    nop                                           ; $5901: $00
    rra                                           ; $5902: $1F
    dec bc                                        ; $5903: $0B
    ld e, $07                                     ; $5904: $1E $07
    rra                                           ; $5906: $1F
    rrca                                          ; $5907: $0F
    rst RST_38                                    ; $5908: $FF
    nop                                           ; $5909: $00
    rst RST_38                                    ; $590A: $FF
    db $FC                                        ; $590B: $FC
    or a                                          ; $590C: $B7
    ld a, [hl]                                    ; $590D: $7E
    sub e                                         ; $590E: $93
    ld a, [hl]                                    ; $590F: $7E
    add c                                         ; $5910: $81
    ld a, [hl]                                    ; $5911: $7E
    add c                                         ; $5912: $81
    ld a, [hl]                                    ; $5913: $7E
    add c                                         ; $5914: $81
    ld a, [hl]                                    ; $5915: $7E
    add [hl]                                      ; $5916: $86
    ld sp, hl                                     ; $5917: $F9
    ld sp, hl                                     ; $5918: $F9
    ld b, $E7                                     ; $5919: $06 $E7
    ld e, c                                       ; $591B: $59
    rst RST_18                                    ; $591C: $DF
    and [hl]                                      ; $591D: $A6
    rst RST_38                                    ; $591E: $FF
    inc e                                         ; $591F: $1C
    ccf                                           ; $5920: $3F
    nop                                           ; $5921: $00
    rst RST_38                                    ; $5922: $FF
    cpl                                           ; $5923: $2F
    ld a, a                                       ; $5924: $7F
    xor a                                         ; $5925: $AF
    rst RST_38                                    ; $5926: $FF
    nop                                           ; $5927: $00
    rst RST_38                                    ; $5928: $FF
    ld l, e                                       ; $5929: $6B
    rst RST_38                                    ; $592A: $FF
    ld l, e                                       ; $592B: $6B
    rst RST_38                                    ; $592C: $FF
    nop                                           ; $592D: $00
    rst RST_38                                    ; $592E: $FF
    db $10                                        ; $592F: $10
    pop af                                        ; $5930: $F1
    cpl                                           ; $5931: $2F
    ldh [$FF1F], a                                ; $5932: $E0 $1F
    ldh [$FF1F], a                                ; $5934: $E0 $1F
    ldh [$FF1F], a                                ; $5936: $E0 $1F
    add b                                         ; $5938: $80
    ld a, a                                       ; $5939: $7F
    pop bc                                        ; $593A: $C1
    ccf                                           ; $593B: $3F
    rst RST_38                                    ; $593C: $FF
    nop                                           ; $593D: $00
    ld a, a                                       ; $593E: $7F
    and l                                         ; $593F: $A5
    add b                                         ; $5940: $80
    nop                                           ; $5941: $00
    add b                                         ; $5942: $80
    nop                                           ; $5943: $00
    add b                                         ; $5944: $80
    nop                                           ; $5945: $00
    ret nz                                        ; $5946: $C0

    add b                                         ; $5947: $80
    ret nz                                        ; $5948: $C0

    add b                                         ; $5949: $80
    ret nz                                        ; $594A: $C0

    nop                                           ; $594B: $00
    ldh a, [rP1]                                  ; $594C: $F0 $00
    sub b                                         ; $594E: $90
    ld h, b                                       ; $594F: $60
    call c, $D3A0                                 ; $5950: $DC $A0 $D3
    xor h                                         ; $5953: $AC
    ldh a, [c]                                    ; $5954: $F2
    adc l                                         ; $5955: $8D
    jp nc, $9CAD                                  ; $5956: $D2 $AD $9C

    ld h, e                                       ; $5959: $63
    rst RST_38                                    ; $595A: $FF
    inc h                                         ; $595B: $24
    rst RST_18                                    ; $595C: $DF
    and [hl]                                      ; $595D: $A6
    rst RST_38                                    ; $595E: $FF
    add [hl]                                      ; $595F: $86
    ret nz                                        ; $5960: $C0

    nop                                           ; $5961: $00
    and b                                         ; $5962: $A0
    ld b, b                                       ; $5963: $40
    or b                                          ; $5964: $B0
    ld b, b                                       ; $5965: $40
    add sp, $10                                   ; $5966: $E8 $10
    inc h                                         ; $5968: $24
    ret c                                         ; $5969: $D8

    inc a                                         ; $596A: $3C
    ret nz                                        ; $596B: $C0

    ld [hl], e                                    ; $596C: $73
    sbc h                                         ; $596D: $9C
    cp a                                          ; $596E: $BF
    ld c, a                                       ; $596F: $4F
    ld a, a                                       ; $5970: $7F
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
    rlca                                          ; $5980: $07
    rst RST_38                                    ; $5981: $FF
    rst RST_38                                    ; $5982: $FF
    rst RST_38                                    ; $5983: $FF
    rst RST_38                                    ; $5984: $FF
    rst RST_38                                    ; $5985: $FF
    nop                                           ; $5986: $00
    rst RST_38                                    ; $5987: $FF
    rst RST_38                                    ; $5988: $FF
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
    rst RST_38                                    ; $59A0: $FF
    ld hl, sp-$01                                 ; $59A1: $F8 $FF
    rst RST_38                                    ; $59A3: $FF
    rst RST_38                                    ; $59A4: $FF
    rst RST_38                                    ; $59A5: $FF
    rst RST_38                                    ; $59A6: $FF
    rst RST_38                                    ; $59A7: $FF
    rst RST_38                                    ; $59A8: $FF
    db $FC                                        ; $59A9: $FC
    ld e, $E1                                     ; $59AA: $1E $E1
    db $E3                                        ; $59AC: $E3
    nop                                           ; $59AD: $00
    nop                                           ; $59AE: $00
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
    ld a, a                                       ; $59C0: $7F
    sbc e                                         ; $59C1: $9B
    rst RST_38                                    ; $59C2: $FF
    ld [hl], a                                    ; $59C3: $77
    rst RST_38                                    ; $59C4: $FF
    rst RST_28                                    ; $59C5: $EF
    rst RST_38                                    ; $59C6: $FF
    ret nz                                        ; $59C7: $C0

    push af                                       ; $59C8: $F5
    ld a, [bc]                                    ; $59C9: $0A
    di                                            ; $59CA: $F3
    inc c                                         ; $59CB: $0C
    inc e                                         ; $59CC: $1C
    db $E3                                        ; $59CD: $E3
    rst RST_38                                    ; $59CE: $FF
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
    rst RST_38                                    ; $59E0: $FF
    db $FC                                        ; $59E1: $FC
    rst RST_38                                    ; $59E2: $FF
    ld hl, sp-$03                                 ; $59E3: $F8 $FD
    ld [bc], a                                    ; $59E5: $02
    ld d, a                                       ; $59E6: $57
    xor b                                         ; $59E7: $A8
    inc sp                                        ; $59E8: $33
    call z, Call_000_30CE                         ; $59E9: $CC $CE $30
    db $FC                                        ; $59EC: $FC
    nop                                           ; $59ED: $00
    nop                                           ; $59EE: $00
    nop                                           ; $59EF: $00
    nop                                           ; $59F0: $00
    nop                                           ; $59F1: $00
    nop                                           ; $59F2: $00
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
    inc c                                         ; $5A00: $0C
    inc bc                                        ; $5A01: $03
    inc bc                                        ; $5A02: $03
    nop                                           ; $5A03: $00
    nop                                           ; $5A04: $00
    nop                                           ; $5A05: $00
    nop                                           ; $5A06: $00
    nop                                           ; $5A07: $00
    nop                                           ; $5A08: $00
    nop                                           ; $5A09: $00
    nop                                           ; $5A0A: $00
    nop                                           ; $5A0B: $00
    nop                                           ; $5A0C: $00
    nop                                           ; $5A0D: $00
    nop                                           ; $5A0E: $00
    nop                                           ; $5A0F: $00
    nop                                           ; $5A10: $00
    nop                                           ; $5A11: $00
    nop                                           ; $5A12: $00
    nop                                           ; $5A13: $00
    nop                                           ; $5A14: $00
    nop                                           ; $5A15: $00
    nop                                           ; $5A16: $00
    nop                                           ; $5A17: $00
    nop                                           ; $5A18: $00
    nop                                           ; $5A19: $00
    nop                                           ; $5A1A: $00
    nop                                           ; $5A1B: $00
    nop                                           ; $5A1C: $00
    nop                                           ; $5A1D: $00
    nop                                           ; $5A1E: $00
    nop                                           ; $5A1F: $00
    add b                                         ; $5A20: $80
    nop                                           ; $5A21: $00
    add b                                         ; $5A22: $80
    nop                                           ; $5A23: $00
    nop                                           ; $5A24: $00
    nop                                           ; $5A25: $00
    nop                                           ; $5A26: $00
    nop                                           ; $5A27: $00
    nop                                           ; $5A28: $00
    nop                                           ; $5A29: $00
    nop                                           ; $5A2A: $00
    nop                                           ; $5A2B: $00
    nop                                           ; $5A2C: $00
    nop                                           ; $5A2D: $00
    nop                                           ; $5A2E: $00
    nop                                           ; $5A2F: $00
    nop                                           ; $5A30: $00
    nop                                           ; $5A31: $00
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
    ld [hl], b                                    ; $5A40: $70
    nop                                           ; $5A41: $00
    cp a                                          ; $5A42: $BF
    ld [hl], e                                    ; $5A43: $73
    ld [hl], b                                    ; $5A44: $70
    nop                                           ; $5A45: $00
    nop                                           ; $5A46: $00
    nop                                           ; $5A47: $00
    nop                                           ; $5A48: $00
    nop                                           ; $5A49: $00
    nop                                           ; $5A4A: $00
    nop                                           ; $5A4B: $00
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
    db $FD                                        ; $5A60: $FD
    ld [bc], a                                    ; $5A61: $02
    ld a, l                                       ; $5A62: $7D
    ld [bc], a                                    ; $5A63: $02
    ld e, a                                       ; $5A64: $5F
    ld b, b                                       ; $5A65: $40
    ld [hl], $30                                  ; $5A66: $36 $30
    cpl                                           ; $5A68: $2F
    ccf                                           ; $5A69: $3F
    ld [de], a                                    ; $5A6A: $12
    rra                                           ; $5A6B: $1F
    ldh a, [$FF8F]                                ; $5A6C: $F0 $8F
    cp h                                          ; $5A6E: $BC
    ld [hl], e                                    ; $5A6F: $73
    cp $81                                        ; $5A70: $FE $81
    rla                                           ; $5A72: $17
    ld c, $0F                                     ; $5A73: $0E $0F
    ld bc, $0606                                  ; $5A75: $01 $06 $06
    ld [$0008], sp                                ; $5A78: $08 $08 $00
    nop                                           ; $5A7B: $00
    nop                                           ; $5A7C: $00
    nop                                           ; $5A7D: $00
    nop                                           ; $5A7E: $00
    nop                                           ; $5A7F: $00
    reti                                          ; $5A80: $D9


    cpl                                           ; $5A81: $2F
    reti                                          ; $5A82: $D9


    cpl                                           ; $5A83: $2F
    cp e                                          ; $5A84: $BB
    ld e, a                                       ; $5A85: $5F
    rst RST_38                                    ; $5A86: $FF
    ccf                                           ; $5A87: $3F
    ld a, a                                       ; $5A88: $7F
    ld c, a                                       ; $5A89: $4F
    rst RST_38                                    ; $5A8A: $FF
    jp $847B                                      ; $5A8B: $C3 $7B $84


    ld e, a                                       ; $5A8E: $5F
    cp e                                          ; $5A8F: $BB
    ld a, a                                       ; $5A90: $7F
    add c                                         ; $5A91: $81
    rst RST_30                                    ; $5A92: $F7
    ld c, [hl]                                    ; $5A93: $4E
    sbc a                                         ; $5A94: $9F
    add b                                         ; $5A95: $80
    rra                                           ; $5A96: $1F
    nop                                           ; $5A97: $00
    add hl, bc                                    ; $5A98: $09
    ld b, $0F                                     ; $5A99: $06 $0F
    nop                                           ; $5A9B: $00
    rlca                                          ; $5A9C: $07
    nop                                           ; $5A9D: $00
    nop                                           ; $5A9E: $00
    nop                                           ; $5A9F: $00
    ld h, e                                       ; $5AA0: $63
    rst RST_18                                    ; $5AA1: $DF
    ld h, e                                       ; $5AA2: $63
    rst RST_18                                    ; $5AA3: $DF
    ld [hl], a                                    ; $5AA4: $77
    rst RST_18                                    ; $5AA5: $DF
    rst RST_38                                    ; $5AA6: $FF
    cp a                                          ; $5AA7: $BF
    rst RST_28                                    ; $5AA8: $EF
    cp a                                          ; $5AA9: $BF
    sub d                                         ; $5AAA: $92
    rra                                           ; $5AAB: $1F
    ldh a, [rIE]                                  ; $5AAC: $F0 $FF
    nop                                           ; $5AAE: $00
    rst RST_38                                    ; $5AAF: $FF
    ldh [rIE], a                                  ; $5AB0: $E0 $FF
    ld hl, sp+$7F                                 ; $5AB2: $F8 $7F
    db $FD                                        ; $5AB4: $FD
    rlca                                          ; $5AB5: $07
    rst RST_38                                    ; $5AB6: $FF
    ld b, $FF                                     ; $5AB7: $06 $FF
    ld [$00FF], sp                                ; $5AB9: $08 $FF $00
    rst RST_38                                    ; $5ABC: $FF
    nop                                           ; $5ABD: $00
    nop                                           ; $5ABE: $00
    nop                                           ; $5ABF: $00
    ld a, b                                       ; $5AC0: $78
    adc a                                         ; $5AC1: $8F
    ld a, b                                       ; $5AC2: $78
    adc a                                         ; $5AC3: $8F
    ld a, b                                       ; $5AC4: $78
    adc a                                         ; $5AC5: $8F
    db $FC                                        ; $5AC6: $FC
    rla                                           ; $5AC7: $17
    rst RST_38                                    ; $5AC8: $FF
    ld b, b                                       ; $5AC9: $40
    rst RST_38                                    ; $5ACA: $FF
    ret c                                         ; $5ACB: $D8

    ld a, a                                       ; $5ACC: $7F
    ret nz                                        ; $5ACD: $C0

    ccf                                           ; $5ACE: $3F
    db $EB                                        ; $5ACF: $EB
    rrca                                          ; $5AD0: $0F
    rst RST_30                                    ; $5AD1: $F7
    ld a, a                                       ; $5AD2: $7F
    rst RST_20                                    ; $5AD3: $E7
    rst RST_38                                    ; $5AD4: $FF
    add a                                         ; $5AD5: $87
    rst RST_38                                    ; $5AD6: $FF
    nop                                           ; $5AD7: $00
    db $FD                                        ; $5AD8: $FD
    ld [bc], a                                    ; $5AD9: $02
    dec b                                         ; $5ADA: $05
    ld a, [$01FE]                                 ; $5ADB: $FA $FE $01
    rst RST_38                                    ; $5ADE: $FF
    nop                                           ; $5ADF: $00
    pop hl                                        ; $5AE0: $E1
    ld h, b                                       ; $5AE1: $60
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
    ld a, a                                       ; $5B00: $7F
    nop                                           ; $5B01: $00
    rst RST_38                                    ; $5B02: $FF
    nop                                           ; $5B03: $00
    ld a, a                                       ; $5B04: $7F
    nop                                           ; $5B05: $00
    rra                                           ; $5B06: $1F
    nop                                           ; $5B07: $00
    ld b, $00                                     ; $5B08: $06 $00
    nop                                           ; $5B0A: $00
    nop                                           ; $5B0B: $00
    ret nz                                        ; $5B0C: $C0

    nop                                           ; $5B0D: $00
    ld [hl], c                                    ; $5B0E: $71
    ret nz                                        ; $5B0F: $C0

    adc $06                                       ; $5B10: $CE $06
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
    jp nc, $D22F                                  ; $5B20: $D2 $2F $D2

jr_017_5B23:
    cpl                                           ; $5B23: $2F
    ret nc                                        ; $5B24: $D0

jr_017_5B25:
    cpl                                           ; $5B25: $2F
    and b                                         ; $5B26: $A0

jr_017_5B27:
    ld e, a                                       ; $5B27: $5F
    pop hl                                        ; $5B28: $E1
    ccf                                           ; $5B29: $3F
    dec sp                                        ; $5B2A: $3B
    rrca                                          ; $5B2B: $0F
    ld e, a                                       ; $5B2C: $5F
    inc hl                                        ; $5B2D: $23
    ld a, a                                       ; $5B2E: $7F
    nop                                           ; $5B2F: $00
    ld d, a                                       ; $5B30: $57
    inc l                                         ; $5B31: $2C
    ccf                                           ; $5B32: $3F
    ld bc, $001F                                  ; $5B33: $01 $1F $00
    inc de                                        ; $5B36: $13
    inc c                                         ; $5B37: $0C
    rrca                                          ; $5B38: $0F
    nop                                           ; $5B39: $00
    add hl, bc                                    ; $5B3A: $09
    ld b, $07                                     ; $5B3B: $06 $07
    nop                                           ; $5B3D: $00
    nop                                           ; $5B3E: $00
    nop                                           ; $5B3F: $00
    inc h                                         ; $5B40: $24
    rst RST_18                                    ; $5B41: $DF
    jr nz, jr_017_5B23                            ; $5B42: $20 $DF

    jr nz, jr_017_5B25                            ; $5B44: $20 $DF

    jr nz, jr_017_5B27                            ; $5B46: $20 $DF

    ld h, c                                       ; $5B48: $61
    cp a                                          ; $5B49: $BF
    ld a, a                                       ; $5B4A: $7F
    add b                                         ; $5B4B: $80
    rst RST_38                                    ; $5B4C: $FF
    nop                                           ; $5B4D: $00
    db $FD                                        ; $5B4E: $FD
    ld a, [$E8FF]                                 ; $5B4F: $FA $FF $E8
    db $FD                                        ; $5B52: $FD
    ld a, [$00FF]                                 ; $5B53: $FA $FF $00
    rst RST_38                                    ; $5B56: $FF
    nop                                           ; $5B57: $00
    rst RST_38                                    ; $5B58: $FF
    nop                                           ; $5B59: $00
    rst RST_38                                    ; $5B5A: $FF
    nop                                           ; $5B5B: $00
    rst RST_38                                    ; $5B5C: $FF
    nop                                           ; $5B5D: $00
    nop                                           ; $5B5E: $00
    nop                                           ; $5B5F: $00
    ld hl, sp-$71                                 ; $5B60: $F8 $8F
    ld a, b                                       ; $5B62: $78
    adc a                                         ; $5B63: $8F
    ld a, b                                       ; $5B64: $78
    adc a                                         ; $5B65: $8F
    ld a, b                                       ; $5B66: $78
    adc a                                         ; $5B67: $8F
    db $FC                                        ; $5B68: $FC
    rla                                           ; $5B69: $17
    rst RST_38                                    ; $5B6A: $FF
    nop                                           ; $5B6B: $00
    rst RST_38                                    ; $5B6C: $FF
    nop                                           ; $5B6D: $00
    ld e, a                                       ; $5B6E: $5F
    xor e                                         ; $5B6F: $AB
    rst RST_08                                    ; $5B70: $CF
    scf                                           ; $5B71: $37
    ld e, a                                       ; $5B72: $5F
    and a                                         ; $5B73: $A7
    rst RST_38                                    ; $5B74: $FF
    rlca                                          ; $5B75: $07
    rst RST_38                                    ; $5B76: $FF
    nop                                           ; $5B77: $00
    dec c                                         ; $5B78: $0D
    ldh a, [c]                                    ; $5B79: $F2
    db $FC                                        ; $5B7A: $FC
    inc bc                                        ; $5B7B: $03
    add a                                         ; $5B7C: $87
    ld a, b                                       ; $5B7D: $78
    rst RST_38                                    ; $5B7E: $FF
    nop                                           ; $5B7F: $00
    inc bc                                        ; $5B80: $03
    nop                                           ; $5B81: $00
    rrca                                          ; $5B82: $0F
    inc bc                                        ; $5B83: $03
    rra                                           ; $5B84: $1F
    rrca                                          ; $5B85: $0F
    ccf                                           ; $5B86: $3F
    rra                                           ; $5B87: $1F
    ld a, a                                       ; $5B88: $7F
    ccf                                           ; $5B89: $3F
    ld a, a                                       ; $5B8A: $7F
    ccf                                           ; $5B8B: $3F
    rst RST_38                                    ; $5B8C: $FF
    ld a, a                                       ; $5B8D: $7F
    rst RST_38                                    ; $5B8E: $FF
    ld a, a                                       ; $5B8F: $7F
    rst RST_38                                    ; $5B90: $FF
    ld a, a                                       ; $5B91: $7F
    rst RST_38                                    ; $5B92: $FF
    ld a, a                                       ; $5B93: $7F
    ld a, a                                       ; $5B94: $7F
    ccf                                           ; $5B95: $3F
    ccf                                           ; $5B96: $3F
    nop                                           ; $5B97: $00
    nop                                           ; $5B98: $00
    nop                                           ; $5B99: $00
    nop                                           ; $5B9A: $00
    nop                                           ; $5B9B: $00
    nop                                           ; $5B9C: $00
    nop                                           ; $5B9D: $00
    nop                                           ; $5B9E: $00
    nop                                           ; $5B9F: $00
    rlca                                          ; $5BA0: $07
    nop                                           ; $5BA1: $00
    jr c, jr_017_5BAB                             ; $5BA2: $38 $07

    db $E3                                        ; $5BA4: $E3
    ccf                                           ; $5BA5: $3F
    rst RST_08                                    ; $5BA6: $CF
    rst RST_38                                    ; $5BA7: $FF
    cp a                                          ; $5BA8: $BF
    rst RST_38                                    ; $5BA9: $FF
    ld a, a                                       ; $5BAA: $7F

jr_017_5BAB:
    rst RST_38                                    ; $5BAB: $FF
    rst RST_38                                    ; $5BAC: $FF
    rst RST_38                                    ; $5BAD: $FF
    cp $FF                                        ; $5BAE: $FE $FF
    cp $FF                                        ; $5BB0: $FE $FF
    rst RST_38                                    ; $5BB2: $FF
    rst RST_38                                    ; $5BB3: $FF
    rst RST_38                                    ; $5BB4: $FF
    rst RST_38                                    ; $5BB5: $FF
    rst RST_38                                    ; $5BB6: $FF
    rst RST_38                                    ; $5BB7: $FF
    rst RST_38                                    ; $5BB8: $FF
    rst RST_38                                    ; $5BB9: $FF
    rst RST_38                                    ; $5BBA: $FF
    ldh [$FFE0], a                                ; $5BBB: $E0 $E0
    nop                                           ; $5BBD: $00
    nop                                           ; $5BBE: $00
    nop                                           ; $5BBF: $00
    inc bc                                        ; $5BC0: $03
    nop                                           ; $5BC1: $00
    ld a, h                                       ; $5BC2: $7C
    inc bc                                        ; $5BC3: $03
    add b                                         ; $5BC4: $80
    ld a, a                                       ; $5BC5: $7F
    ldh [rIE], a                                  ; $5BC6: $E0 $FF
    push bc                                       ; $5BC8: $C5
    rst RST_38                                    ; $5BC9: $FF
    adc e                                         ; $5BCA: $8B
    rst RST_38                                    ; $5BCB: $FF
    sbc a                                         ; $5BCC: $9F
    rst RST_38                                    ; $5BCD: $FF
    ccf                                           ; $5BCE: $3F
    rst RST_38                                    ; $5BCF: $FF
    ld a, a                                       ; $5BD0: $7F
    rst RST_38                                    ; $5BD1: $FF
    rst RST_38                                    ; $5BD2: $FF
    rst RST_38                                    ; $5BD3: $FF
    rst RST_38                                    ; $5BD4: $FF
    rst RST_38                                    ; $5BD5: $FF
    rst RST_38                                    ; $5BD6: $FF
    cp $FF                                        ; $5BD7: $FE $FF
    ld hl, sp-$01                                 ; $5BD9: $F8 $FF
    ldh [$FFFE], a                                ; $5BDB: $E0 $FE
    ld bc, $0001                                  ; $5BDD: $01 $01 $00
    inc bc                                        ; $5BE0: $03
    nop                                           ; $5BE1: $00
    rlca                                          ; $5BE2: $07
    ld [bc], a                                    ; $5BE3: $02
    rra                                           ; $5BE4: $1F
    ld bc, $19E7                                  ; $5BE5: $01 $E7 $19
    rra                                           ; $5BE8: $1F
    db $E4                                        ; $5BE9: $E4
    dec l                                         ; $5BEA: $2D
    or $B6                                        ; $5BEB: $F6 $B6
    ei                                            ; $5BED: $FB
    halt                                          ; $5BEE: $76
    ei                                            ; $5BEF: $FB
    halt                                          ; $5BF0: $76
    ei                                            ; $5BF1: $FB
    or [hl]                                       ; $5BF2: $B6
    db $DB                                        ; $5BF3: $DB
    or [hl]                                       ; $5BF4: $B6
    db $DB                                        ; $5BF5: $DB
    or a                                          ; $5BF6: $B7
    ret c                                         ; $5BF7: $D8

    cp a                                          ; $5BF8: $BF
    jp nz, $90FF                                  ; $5BF9: $C2 $FF $90

    rst RST_38                                    ; $5BFC: $FF
    nop                                           ; $5BFD: $00
    rst RST_38                                    ; $5BFE: $FF
    nop                                           ; $5BFF: $00
    rrca                                          ; $5C00: $0F
    nop                                           ; $5C01: $00
    rrca                                          ; $5C02: $0F
    ld b, $11                                     ; $5C03: $06 $11
    rrca                                          ; $5C05: $0F
    db $10                                        ; $5C06: $10
    rrca                                          ; $5C07: $0F
    jr nz, jr_017_5C29                            ; $5C08: $20 $1F

    jr nz, jr_017_5C2B                            ; $5C0A: $20 $1F

    ld b, b                                       ; $5C0C: $40
    ccf                                           ; $5C0D: $3F
    ld e, a                                       ; $5C0E: $5F
    jr nz, @+$01                                  ; $5C0F: $20 $FF

    rra                                           ; $5C11: $1F
    rst RST_38                                    ; $5C12: $FF
    nop                                           ; $5C13: $00
    rst RST_18                                    ; $5C14: $DF
    db $EB                                        ; $5C15: $EB
    cp a                                          ; $5C16: $BF
    jp c, $80FF                                   ; $5C17: $DA $FF $80

    rst RST_38                                    ; $5C1A: $FF
    rra                                           ; $5C1B: $1F
    ldh [$FF9F], a                                ; $5C1C: $E0 $9F
    ldh [$FF5F], a                                ; $5C1E: $E0 $5F
    inc bc                                        ; $5C20: $03
    nop                                           ; $5C21: $00
    inc bc                                        ; $5C22: $03
    ld bc, $01FB                                  ; $5C23: $01 $FB $01
    pop hl                                        ; $5C26: $E1
    nop                                           ; $5C27: $00
    add c                                         ; $5C28: $81

jr_017_5C29:
    nop                                           ; $5C29: $00
    pop bc                                        ; $5C2A: $C1

jr_017_5C2B:
    add b                                         ; $5C2B: $80
    ld a, [$E281]                                 ; $5C2C: $FA $81 $E2
    add c                                         ; $5C2F: $81
    call nz, $FC83                                ; $5C30: $C4 $83 $FC
    inc bc                                        ; $5C33: $03
    ld hl, sp+$17                                 ; $5C34: $F8 $17
    ld hl, sp-$09                                 ; $5C36: $F8 $F7
    ldh a, [$FF8F]                                ; $5C38: $F0 $8F
    ldh a, [rIF]                                  ; $5C3A: $F0 $0F
    ld sp, hl                                     ; $5C3C: $F9
    rlca                                          ; $5C3D: $07
    rst RST_28                                    ; $5C3E: $EF
    cp d                                          ; $5C3F: $BA
    rra                                           ; $5C40: $1F
    nop                                           ; $5C41: $00
    cp $08                                        ; $5C42: $FE $08
    sbc h                                         ; $5C44: $9C
    ld [$0CF6], sp                                ; $5C45: $08 $F6 $0C
    or $EC                                        ; $5C48: $F6 $EC
    ld e, $F4                                     ; $5C4A: $1E $F4
    inc c                                         ; $5C4C: $0C
    ld hl, sp+$0C                                 ; $5C4D: $F8 $0C
    ld hl, sp+$0F                                 ; $5C4F: $F8 $0F
    ld hl, sp+$0F                                 ; $5C51: $F8 $0F
    ld hl, sp+$1C                                 ; $5C53: $F8 $1C
    ldh a, [rNR32]                                ; $5C55: $F0 $1C
    ldh a, [$FF36]                                ; $5C57: $F0 $36
    add sp, $68                                   ; $5C59: $E8 $68
    ret nc                                        ; $5C5B: $D0

    rst RST_08                                    ; $5C5C: $CF
    or b                                          ; $5C5D: $B0
    sub b                                         ; $5C5E: $90
    ld l, a                                       ; $5C5F: $6F
    rst RST_38                                    ; $5C60: $FF
    nop                                           ; $5C61: $00
    ld a, a                                       ; $5C62: $7F
    add b                                         ; $5C63: $80
    ld hl, sp+$00                                 ; $5C64: $F8 $00
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
    nop                                           ; $5C7A: $00
    nop                                           ; $5C7B: $00
    nop                                           ; $5C7C: $00
    nop                                           ; $5C7D: $00
    nop                                           ; $5C7E: $00
    nop                                           ; $5C7F: $00
    ldh [$FF5F], a                                ; $5C80: $E0 $5F
    ldh [$FF5F], a                                ; $5C82: $E0 $5F
    rst RST_38                                    ; $5C84: $FF
    ld e, a                                       ; $5C85: $5F
    rst RST_38                                    ; $5C86: $FF
    ld b, b                                       ; $5C87: $40
    rst RST_20                                    ; $5C88: $E7
    ld a, [de]                                    ; $5C89: $1A
    ld d, e                                       ; $5C8A: $53
    xor l                                         ; $5C8B: $AD
    rst RST_30                                    ; $5C8C: $F7
    add hl, bc                                    ; $5C8D: $09
    ld e, a                                       ; $5C8E: $5F
    and c                                         ; $5C8F: $A1
    rst RST_38                                    ; $5C90: $FF
    nop                                           ; $5C91: $00
    jp Jump_017_7F3C                              ; $5C92: $C3 $3C $7F


    nop                                           ; $5C95: $00
    ld hl, $1F1E                                  ; $5C96: $21 $1E $1F
    nop                                           ; $5C99: $00
    nop                                           ; $5C9A: $00
    nop                                           ; $5C9B: $00
    nop                                           ; $5C9C: $00
    nop                                           ; $5C9D: $00
    nop                                           ; $5C9E: $00
    nop                                           ; $5C9F: $00
    or $D9                                        ; $5CA0: $F6 $D9
    rst RST_30                                    ; $5CA2: $F7
    ret c                                         ; $5CA3: $D8

    or $D9                                        ; $5CA4: $F6 $D9
    rst RST_30                                    ; $5CA6: $F7
    reti                                          ; $5CA7: $D9


    xor $B9                                       ; $5CA8: $EE $B9
    ei                                            ; $5CAA: $FB
    inc b                                         ; $5CAB: $04
    rst RST_38                                    ; $5CAC: $FF
    ei                                            ; $5CAD: $FB
    rst RST_38                                    ; $5CAE: $FF
    rst RST_38                                    ; $5CAF: $FF
    rst RST_38                                    ; $5CB0: $FF
    ld hl, sp-$07                                 ; $5CB1: $F8 $F9
    add $CB                                       ; $5CB3: $C6 $CB
    inc [hl]                                      ; $5CB5: $34
    ld c, [hl]                                    ; $5CB6: $4E
    or c                                          ; $5CB7: $B1
    ld [hl], e                                    ; $5CB8: $73
    adc h                                         ; $5CB9: $8C
    sbc h                                         ; $5CBA: $9C
    ld h, b                                       ; $5CBB: $60
    ldh [rP1], a                                  ; $5CBC: $E0 $00
    nop                                           ; $5CBE: $00
    nop                                           ; $5CBF: $00
    sub b                                         ; $5CC0: $90
    ld l, a                                       ; $5CC1: $6F
    and c                                         ; $5CC2: $A1
    ld e, [hl]                                    ; $5CC3: $5E
    xor $10                                       ; $5CC4: $EE $10
    ldh a, [rP1]                                  ; $5CC6: $F0 $00
    rst RST_38                                    ; $5CC8: $FF
    ld [hl], b                                    ; $5CC9: $70
    rst RST_38                                    ; $5CCA: $FF
    ld a, b                                       ; $5CCB: $78
    cp $E0                                        ; $5CCC: $FE $E0
    db $EC                                        ; $5CCE: $EC
    ret nc                                        ; $5CCF: $D0

    ret c                                         ; $5CD0: $D8

    jr nz, jr_017_5D32                            ; $5CD1: $20 $5F

    and b                                         ; $5CD3: $A0
    ld l, h                                       ; $5CD4: $6C
    sub b                                         ; $5CD5: $90
    ret c                                         ; $5CD6: $D8

    jr nz, jr_017_5D39                            ; $5CD7: $20 $60

    add b                                         ; $5CD9: $80
    ld hl, sp+$00                                 ; $5CDA: $F8 $00
    nop                                           ; $5CDC: $00
    nop                                           ; $5CDD: $00
    nop                                           ; $5CDE: $00
    nop                                           ; $5CDF: $00
    ldh [rP1], a                                  ; $5CE0: $E0 $00
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
    rst RST_38                                    ; $5CEC: $FF
    nop                                           ; $5CED: $00
    ld b, $F8                                     ; $5CEE: $06 $F8
    jr c, @-$3E                                   ; $5CF0: $38 $C0

    ret nz                                        ; $5CF2: $C0

    nop                                           ; $5CF3: $00
    nop                                           ; $5CF4: $00
    nop                                           ; $5CF5: $00
    nop                                           ; $5CF6: $00
    nop                                           ; $5CF7: $00
    ldh a, [rP1]                                  ; $5CF8: $F0 $00
    add b                                         ; $5CFA: $80
    nop                                           ; $5CFB: $00
    nop                                           ; $5CFC: $00
    nop                                           ; $5CFD: $00
    nop                                           ; $5CFE: $00
    nop                                           ; $5CFF: $00
    rlca                                          ; $5D00: $07
    nop                                           ; $5D01: $00
    ld a, a                                       ; $5D02: $7F
    nop                                           ; $5D03: $00
    rst RST_38                                    ; $5D04: $FF
    ld a, [hl]                                    ; $5D05: $7E
    rst RST_38                                    ; $5D06: $FF
    nop                                           ; $5D07: $00
    ld de, $0F0E                                  ; $5D08: $11 $0E $0F
    nop                                           ; $5D0B: $00
    nop                                           ; $5D0C: $00
    nop                                           ; $5D0D: $00
    nop                                           ; $5D0E: $00
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
    ld d, a                                       ; $5D20: $57
    xor b                                         ; $5D21: $A8
    ld e, a                                       ; $5D22: $5F
    and h                                         ; $5D23: $A4
    ld e, a                                       ; $5D24: $5F
    and h                                         ; $5D25: $A4
    rst RST_38                                    ; $5D26: $FF
    inc b                                         ; $5D27: $04
    rrca                                          ; $5D28: $0F
    rlca                                          ; $5D29: $07
    rrca                                          ; $5D2A: $0F
    inc bc                                        ; $5D2B: $03
    rrca                                          ; $5D2C: $0F
    nop                                           ; $5D2D: $00
    dec b                                         ; $5D2E: $05
    ld [bc], a                                    ; $5D2F: $02
    dec b                                         ; $5D30: $05
    ld [bc], a                                    ; $5D31: $02

jr_017_5D32:
    ld b, $01                                     ; $5D32: $06 $01
    inc bc                                        ; $5D34: $03
    nop                                           ; $5D35: $00
    nop                                           ; $5D36: $00
    nop                                           ; $5D37: $00
    nop                                           ; $5D38: $00

jr_017_5D39:
    nop                                           ; $5D39: $00
    nop                                           ; $5D3A: $00
    nop                                           ; $5D3B: $00
    nop                                           ; $5D3C: $00
    nop                                           ; $5D3D: $00
    nop                                           ; $5D3E: $00
    nop                                           ; $5D3F: $00
    ld b, $00                                     ; $5D40: $06 $00
    ld c, $04                                     ; $5D42: $0E $04
    dec c                                         ; $5D44: $0D
    ld b, $19                                     ; $5D45: $06 $19
    ld c, $18                                     ; $5D47: $0E $18
    rrca                                          ; $5D49: $0F
    jr jr_017_5D5B                                ; $5D4A: $18 $0F

    jr jr_017_5D5D                                ; $5D4C: $18 $0F

    jr jr_017_5D5F                                ; $5D4E: $18 $0F

    dec c                                         ; $5D50: $0D
    ld b, $0D                                     ; $5D51: $06 $0D
    ld b, $07                                     ; $5D53: $06 $07
    ld [bc], a                                    ; $5D55: $02
    rlca                                          ; $5D56: $07
    ld [bc], a                                    ; $5D57: $02
    rra                                           ; $5D58: $1F
    nop                                           ; $5D59: $00
    db $EB                                        ; $5D5A: $EB

jr_017_5D5B:
    inc d                                         ; $5D5B: $14
    xor d                                         ; $5D5C: $AA

jr_017_5D5D:
    ld d, l                                       ; $5D5D: $55
    ld d, a                                       ; $5D5E: $57

jr_017_5D5F:
    xor b                                         ; $5D5F: $A8
    nop                                           ; $5D60: $00
    nop                                           ; $5D61: $00
    nop                                           ; $5D62: $00
    nop                                           ; $5D63: $00
    nop                                           ; $5D64: $00
    nop                                           ; $5D65: $00
    nop                                           ; $5D66: $00
    nop                                           ; $5D67: $00
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
    add a                                         ; $5D72: $87
    nop                                           ; $5D73: $00
    sbc a                                         ; $5D74: $9F
    dec b                                         ; $5D75: $05
    ld a, a                                       ; $5D76: $7F
    sbc l                                         ; $5D77: $9D
    rst RST_38                                    ; $5D78: $FF
    nop                                           ; $5D79: $00
    rst RST_38                                    ; $5D7A: $FF
    rst RST_28                                    ; $5D7B: $EF
    ld hl, sp-$11                                 ; $5D7C: $F8 $EF
    sbc b                                         ; $5D7E: $98
    rst RST_28                                    ; $5D7F: $EF
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
    inc e                                         ; $5D8A: $1C
    nop                                           ; $5D8B: $00
    inc e                                         ; $5D8C: $1C
    ld [$0814], sp                                ; $5D8D: $08 $14 $08
    ld [de], a                                    ; $5D90: $12
    inc c                                         ; $5D91: $0C
    cp $00                                        ; $5D92: $FE $00
    rst RST_38                                    ; $5D94: $FF
    adc h                                         ; $5D95: $8C
    rst RST_18                                    ; $5D96: $DF
    or h                                          ; $5D97: $B4
    rst RST_38                                    ; $5D98: $FF
    ld bc, $F9FF                                  ; $5D99: $01 $FF $F9
    rlca                                          ; $5D9C: $07
    ld sp, hl                                     ; $5D9D: $F9
    rlca                                          ; $5D9E: $07
    ld sp, hl                                     ; $5D9F: $F9
    nop                                           ; $5DA0: $00
    nop                                           ; $5DA1: $00
    nop                                           ; $5DA2: $00
    nop                                           ; $5DA3: $00
    nop                                           ; $5DA4: $00
    nop                                           ; $5DA5: $00
    nop                                           ; $5DA6: $00
    nop                                           ; $5DA7: $00
    nop                                           ; $5DA8: $00
    nop                                           ; $5DA9: $00
    nop                                           ; $5DAA: $00
    nop                                           ; $5DAB: $00
    nop                                           ; $5DAC: $00
    nop                                           ; $5DAD: $00
    nop                                           ; $5DAE: $00
    nop                                           ; $5DAF: $00
    nop                                           ; $5DB0: $00
    nop                                           ; $5DB1: $00
    nop                                           ; $5DB2: $00
    nop                                           ; $5DB3: $00
    ldh a, [rP1]                                  ; $5DB4: $F0 $00
    db $FC                                        ; $5DB6: $FC
    ldh a, [rIE]                                  ; $5DB7: $F0 $FF
    adc h                                         ; $5DB9: $8C
    sbc a                                         ; $5DBA: $9F
    ld [hl], b                                    ; $5DBB: $70
    or e                                          ; $5DBC: $B3
    ld l, [hl]                                    ; $5DBD: $6E
    or [hl]                                       ; $5DBE: $B6
    ld l, l                                       ; $5DBF: $6D
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
    nop                                           ; $5DD0: $00
    nop                                           ; $5DD1: $00
    nop                                           ; $5DD2: $00
    nop                                           ; $5DD3: $00
    nop                                           ; $5DD4: $00
    nop                                           ; $5DD5: $00
    nop                                           ; $5DD6: $00
    nop                                           ; $5DD7: $00
    cp $00                                        ; $5DD8: $FE $00
    rst RST_38                                    ; $5DDA: $FF
    ld a, [$1BEF]                                 ; $5DDB: $FA $EF $1B
    ld a, l                                       ; $5DDE: $7D
    jp $EF98                                      ; $5DDF: $C3 $98 $EF


    sbc b                                         ; $5DE2: $98
    rst RST_28                                    ; $5DE3: $EF
    sbc b                                         ; $5DE4: $98
    rst RST_28                                    ; $5DE5: $EF
    rst RST_38                                    ; $5DE6: $FF
    ld l, a                                       ; $5DE7: $6F
    rst RST_38                                    ; $5DE8: $FF
    nop                                           ; $5DE9: $00
    ccf                                           ; $5DEA: $3F
    ret nz                                        ; $5DEB: $C0

    rst RST_38                                    ; $5DEC: $FF
    add b                                         ; $5DED: $80
    ld a, l                                       ; $5DEE: $7D
    or d                                          ; $5DEF: $B2
    ld sp, hl                                     ; $5DF0: $F9
    ld [hl], $FF                                  ; $5DF1: $36 $FF
    ld hl, sp-$04                                 ; $5DF3: $F8 $FC
    ei                                            ; $5DF5: $FB
    rst RST_38                                    ; $5DF6: $FF
    nop                                           ; $5DF7: $00
    xor a                                         ; $5DF8: $AF
    ld d, b                                       ; $5DF9: $50
    ld [hl], b                                    ; $5DFA: $70
    adc a                                         ; $5DFB: $8F
    ret nz                                        ; $5DFC: $C0

    ccf                                           ; $5DFD: $3F
    rst RST_38                                    ; $5DFE: $FF
    nop                                           ; $5DFF: $00
    rlca                                          ; $5E00: $07
    ld sp, hl                                     ; $5E01: $F9
    rlca                                          ; $5E02: $07
    ld sp, hl                                     ; $5E03: $F9
    rlca                                          ; $5E04: $07
    ld sp, hl                                     ; $5E05: $F9
    rst RST_38                                    ; $5E06: $FF
    ld sp, hl                                     ; $5E07: $F9
    rst RST_38                                    ; $5E08: $FF
    inc b                                         ; $5E09: $04
    rst RST_38                                    ; $5E0A: $FF
    nop                                           ; $5E0B: $00
    rst RST_38                                    ; $5E0C: $FF
    nop                                           ; $5E0D: $00
    ld e, [hl]                                    ; $5E0E: $5E
    and c                                         ; $5E0F: $A1
    ldh a, [rIF]                                  ; $5E10: $F0 $0F
    add b                                         ; $5E12: $80
    ld a, a                                       ; $5E13: $7F
    nop                                           ; $5E14: $00
    rst RST_38                                    ; $5E15: $FF
    ldh a, [rIF]                                  ; $5E16: $F0 $0F
    nop                                           ; $5E18: $00
    rst RST_38                                    ; $5E19: $FF
    nop                                           ; $5E1A: $00
    rst RST_38                                    ; $5E1B: $FF
    nop                                           ; $5E1C: $00
    rst RST_38                                    ; $5E1D: $FF
    rst RST_38                                    ; $5E1E: $FF
    nop                                           ; $5E1F: $00
    or [hl]                                       ; $5E20: $B6
    ld l, l                                       ; $5E21: $6D
    or [hl]                                       ; $5E22: $B6
    ld l, l                                       ; $5E23: $6D
    or [hl]                                       ; $5E24: $B6
    ld l, l                                       ; $5E25: $6D
    or [hl]                                       ; $5E26: $B6
    ld l, l                                       ; $5E27: $6D
    rst RST_38                                    ; $5E28: $FF
    add b                                         ; $5E29: $80
    ld sp, hl                                     ; $5E2A: $F9
    rlca                                          ; $5E2B: $07
    rst RST_00                                    ; $5E2C: $C7
    ccf                                           ; $5E2D: $3F
    nop                                           ; $5E2E: $00
    rst RST_38                                    ; $5E2F: $FF
    nop                                           ; $5E30: $00
    rst RST_38                                    ; $5E31: $FF
    nop                                           ; $5E32: $00
    rst RST_38                                    ; $5E33: $FF
    inc bc                                        ; $5E34: $03
    rst RST_38                                    ; $5E35: $FF
    rrca                                          ; $5E36: $0F
    rst RST_38                                    ; $5E37: $FF
    nop                                           ; $5E38: $00
    rst RST_38                                    ; $5E39: $FF
    nop                                           ; $5E3A: $00
    rst RST_38                                    ; $5E3B: $FF
    ld e, $E1                                     ; $5E3C: $1E $E1
    ldh [rP1], a                                  ; $5E3E: $E0 $00
    rst RST_08                                    ; $5E40: $CF
    cp b                                          ; $5E41: $B8
    rst RST_18                                    ; $5E42: $DF
    xor a                                         ; $5E43: $AF
    rst RST_38                                    ; $5E44: $FF
    sbc a                                         ; $5E45: $9F
    rst RST_38                                    ; $5E46: $FF
    ccf                                           ; $5E47: $3F
    db $FD                                        ; $5E48: $FD
    rst RST_38                                    ; $5E49: $FF
    di                                            ; $5E4A: $F3
    rst RST_38                                    ; $5E4B: $FF
    add a                                         ; $5E4C: $87
    rst RST_38                                    ; $5E4D: $FF
    rrca                                          ; $5E4E: $0F
    rst RST_38                                    ; $5E4F: $FF
    ccf                                           ; $5E50: $3F
    rst RST_38                                    ; $5E51: $FF
    rst RST_38                                    ; $5E52: $FF
    rst RST_38                                    ; $5E53: $FF
    cp $FF                                        ; $5E54: $FE $FF
    pop af                                        ; $5E56: $F1
    rst RST_38                                    ; $5E57: $FF
    ld bc, $3EFE                                  ; $5E58: $01 $FE $3E
    ret nz                                        ; $5E5B: $C0

    ret nz                                        ; $5E5C: $C0

    nop                                           ; $5E5D: $00
    nop                                           ; $5E5E: $00
    nop                                           ; $5E5F: $00
    add b                                         ; $5E60: $80
    nop                                           ; $5E61: $00
    add b                                         ; $5E62: $80
    nop                                           ; $5E63: $00
    rst RST_38                                    ; $5E64: $FF
    nop                                           ; $5E65: $00
    rst RST_38                                    ; $5E66: $FF
    rst RST_38                                    ; $5E67: $FF
    rst RST_38                                    ; $5E68: $FF
    rst RST_38                                    ; $5E69: $FF
    rst RST_38                                    ; $5E6A: $FF
    rst RST_38                                    ; $5E6B: $FF
    rst RST_38                                    ; $5E6C: $FF
    rst RST_38                                    ; $5E6D: $FF
    rst RST_38                                    ; $5E6E: $FF
    rst RST_38                                    ; $5E6F: $FF
    rst RST_38                                    ; $5E70: $FF
    rst RST_38                                    ; $5E71: $FF
    rst RST_38                                    ; $5E72: $FF
    rst RST_38                                    ; $5E73: $FF
    rst RST_38                                    ; $5E74: $FF
    rst RST_38                                    ; $5E75: $FF
    cp a                                          ; $5E76: $BF
    rst RST_38                                    ; $5E77: $FF
    ld a, a                                       ; $5E78: $7F
    db $FC                                        ; $5E79: $FC
    db $FC                                        ; $5E7A: $FC
    ldh [$FFE0], a                                ; $5E7B: $E0 $E0
    nop                                           ; $5E7D: $00
    nop                                           ; $5E7E: $00
    nop                                           ; $5E7F: $00
    ldh a, [rP1]                                  ; $5E80: $F0 $00
    cp $F0                                        ; $5E82: $FE $F0
    rst RST_38                                    ; $5E84: $FF
    cp $FF                                        ; $5E85: $FE $FF
    cp $FE                                        ; $5E87: $FE $FE
    db $FC                                        ; $5E89: $FC
    db $FC                                        ; $5E8A: $FC
    ld hl, sp-$08                                 ; $5E8B: $F8 $F8
    ldh a, [$FFF0]                                ; $5E8D: $F0 $F0
    ldh [$FFE0], a                                ; $5E8F: $E0 $E0
    ret nz                                        ; $5E91: $C0

    ret nz                                        ; $5E92: $C0

    nop                                           ; $5E93: $00
    nop                                           ; $5E94: $00
    nop                                           ; $5E95: $00
    nop                                           ; $5E96: $00
    nop                                           ; $5E97: $00
    nop                                           ; $5E98: $00
    nop                                           ; $5E99: $00
    nop                                           ; $5E9A: $00
    nop                                           ; $5E9B: $00
    nop                                           ; $5E9C: $00
    nop                                           ; $5E9D: $00
    nop                                           ; $5E9E: $00
    nop                                           ; $5E9F: $00
    sbc b                                         ; $5EA0: $98
    rst RST_28                                    ; $5EA1: $EF
    sbc b                                         ; $5EA2: $98
    rst RST_28                                    ; $5EA3: $EF
    sbc b                                         ; $5EA4: $98
    rst RST_28                                    ; $5EA5: $EF
    rst RST_38                                    ; $5EA6: $FF
    ld l, a                                       ; $5EA7: $6F
    rst RST_38                                    ; $5EA8: $FF
    nop                                           ; $5EA9: $00
    ccf                                           ; $5EAA: $3F
    ret nz                                        ; $5EAB: $C0

    rst RST_38                                    ; $5EAC: $FF
    add b                                         ; $5EAD: $80
    ld a, l                                       ; $5EAE: $7D
    or d                                          ; $5EAF: $B2
    ld sp, hl                                     ; $5EB0: $F9
    ld [hl], $FD                                  ; $5EB1: $36 $FD
    ld a, [$F8FF]                                 ; $5EB3: $FA $FF $F8
    rst RST_38                                    ; $5EB6: $FF
    nop                                           ; $5EB7: $00
    and h                                         ; $5EB8: $A4
    ld e, e                                       ; $5EB9: $5B
    ld [hl], a                                    ; $5EBA: $77
    adc b                                         ; $5EBB: $88
    sbc h                                         ; $5EBC: $9C
    ld h, e                                       ; $5EBD: $63
    rst RST_38                                    ; $5EBE: $FF
    nop                                           ; $5EBF: $00
    rlca                                          ; $5EC0: $07
    ld sp, hl                                     ; $5EC1: $F9
    rlca                                          ; $5EC2: $07
    ld sp, hl                                     ; $5EC3: $F9
    rlca                                          ; $5EC4: $07
    ld sp, hl                                     ; $5EC5: $F9
    rst RST_38                                    ; $5EC6: $FF
    ld sp, hl                                     ; $5EC7: $F9
    rst RST_38                                    ; $5EC8: $FF
    inc b                                         ; $5EC9: $04
    rst RST_38                                    ; $5ECA: $FF
    nop                                           ; $5ECB: $00
    rst RST_38                                    ; $5ECC: $FF
    nop                                           ; $5ECD: $00
    ld e, a                                       ; $5ECE: $5F
    xor a                                         ; $5ECF: $AF
    rst RST_38                                    ; $5ED0: $FF
    rrca                                          ; $5ED1: $0F
    ld e, a                                       ; $5ED2: $5F
    xor a                                         ; $5ED3: $AF
    rst RST_38                                    ; $5ED4: $FF
    nop                                           ; $5ED5: $00
    rst RST_38                                    ; $5ED6: $FF
    nop                                           ; $5ED7: $00
    rra                                           ; $5ED8: $1F
    ldh [rIE], a                                  ; $5ED9: $E0 $FF
    nop                                           ; $5EDB: $00
    cpl                                           ; $5EDC: $2F
    ret nz                                        ; $5EDD: $C0

    ldh [rP1], a                                  ; $5EDE: $E0 $00
    or [hl]                                       ; $5EE0: $B6
    ld l, l                                       ; $5EE1: $6D
    or [hl]                                       ; $5EE2: $B6
    ld l, l                                       ; $5EE3: $6D
    or [hl]                                       ; $5EE4: $B6
    ld l, l                                       ; $5EE5: $6D
    or [hl]                                       ; $5EE6: $B6
    ld l, l                                       ; $5EE7: $6D
    cp $85                                        ; $5EE8: $FE $85
    cp $01                                        ; $5EEA: $FE $01
    push af                                       ; $5EEC: $F5
    ld a, [bc]                                    ; $5EED: $0A
    rst RST_20                                    ; $5EEE: $E7
    ret c                                         ; $5EEF: $D8

    push af                                       ; $5EF0: $F5
    ld [$E0FF], a                                 ; $5EF1: $EA $FF $E0
    rst RST_38                                    ; $5EF4: $FF
    nop                                           ; $5EF5: $00
    ldh a, [rIF]                                  ; $5EF6: $F0 $0F
    rst RST_38                                    ; $5EF8: $FF
    nop                                           ; $5EF9: $00
    pop hl                                        ; $5EFA: $E1
    ld e, $FE                                     ; $5EFB: $1E $FE
    nop                                           ; $5EFD: $00
    nop                                           ; $5EFE: $00
    nop                                           ; $5EFF: $00
    call $DFBB                                    ; $5F00: $CD $BB $DF
    cp h                                          ; $5F03: $BC
    rst RST_18                                    ; $5F04: $DF
    or c                                          ; $5F05: $B1
    rst RST_18                                    ; $5F06: $DF
    or a                                          ; $5F07: $B7
    rst RST_18                                    ; $5F08: $DF
    cp e                                          ; $5F09: $BB
    rst RST_18                                    ; $5F0A: $DF
    cp h                                          ; $5F0B: $BC
    cp $01                                        ; $5F0C: $FE $01
    jp $4101                                      ; $5F0E: $C3 $01 $41


    add b                                         ; $5F11: $80
    add b                                         ; $5F12: $80
    nop                                           ; $5F13: $00
    add b                                         ; $5F14: $80
    nop                                           ; $5F15: $00
    add b                                         ; $5F16: $80
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
    add b                                         ; $5F22: $80
    nop                                           ; $5F23: $00
    ldh [rP1], a                                  ; $5F24: $E0 $00
    rst RST_38                                    ; $5F26: $FF
    ldh [rIE], a                                  ; $5F27: $E0 $FF
    ret nz                                        ; $5F29: $C0

    rst RST_08                                    ; $5F2A: $CF
    or b                                          ; $5F2B: $B0
    rst RST_38                                    ; $5F2C: $FF
    call nz, Call_017_7FFF                        ; $5F2D: $C4 $FF $7F
    ld a, a                                       ; $5F30: $7F
    add e                                         ; $5F31: $83
    ld a, a                                       ; $5F32: $7F
    cp h                                          ; $5F33: $BC
    rst RST_38                                    ; $5F34: $FF
    ld b, $07                                     ; $5F35: $06 $07
    nop                                           ; $5F37: $00
    nop                                           ; $5F38: $00
    nop                                           ; $5F39: $00
    nop                                           ; $5F3A: $00
    nop                                           ; $5F3B: $00
    nop                                           ; $5F3C: $00
    nop                                           ; $5F3D: $00
    nop                                           ; $5F3E: $00
    nop                                           ; $5F3F: $00
    ld a, b                                       ; $5F40: $78
    nop                                           ; $5F41: $00
    cp $00                                        ; $5F42: $FE $00
    rst RST_38                                    ; $5F44: $FF
    nop                                           ; $5F45: $00
    cp $00                                        ; $5F46: $FE $00
    jr c, jr_017_5F4A                             ; $5F48: $38 $00

jr_017_5F4A:
    ret nz                                        ; $5F4A: $C0

    nop                                           ; $5F4B: $00
    ret nz                                        ; $5F4C: $C0

    add b                                         ; $5F4D: $80
    add b                                         ; $5F4E: $80
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
    nop                                           ; $5F5C: $00
    nop                                           ; $5F5D: $00
    nop                                           ; $5F5E: $00
    nop                                           ; $5F5F: $00
    nop                                           ; $5F60: $00

jr_017_5F61:
    nop                                           ; $5F61: $00
    nop                                           ; $5F62: $00
    nop                                           ; $5F63: $00
    nop                                           ; $5F64: $00
    nop                                           ; $5F65: $00
    nop                                           ; $5F66: $00
    nop                                           ; $5F67: $00
    nop                                           ; $5F68: $00
    nop                                           ; $5F69: $00
    jr nc, jr_017_5F6C                            ; $5F6A: $30 $00

jr_017_5F6C:
    jr c, jr_017_5F7E                             ; $5F6C: $38 $10

    inc a                                         ; $5F6E: $3C
    jr @+$40                                      ; $5F6F: $18 $3E

    inc e                                         ; $5F71: $1C
    rra                                           ; $5F72: $1F
    ld c, $1F                                     ; $5F73: $0E $1F
    rrca                                          ; $5F75: $0F
    rra                                           ; $5F76: $1F
    rrca                                          ; $5F77: $0F
    rra                                           ; $5F78: $1F
    rrca                                          ; $5F79: $0F
    rrca                                          ; $5F7A: $0F
    rlca                                          ; $5F7B: $07
    rrca                                          ; $5F7C: $0F
    rlca                                          ; $5F7D: $07

jr_017_5F7E:
    rrca                                          ; $5F7E: $0F
    rlca                                          ; $5F7F: $07
    nop                                           ; $5F80: $00
    nop                                           ; $5F81: $00
    nop                                           ; $5F82: $00
    nop                                           ; $5F83: $00
    ld h, b                                       ; $5F84: $60
    nop                                           ; $5F85: $00
    ld [hl], b                                    ; $5F86: $70
    jr nz, jr_017_6001                            ; $5F87: $20 $78

    jr nc, @+$7E                                  ; $5F89: $30 $7C

    jr c, jr_017_600B                             ; $5F8B: $38 $7E

    inc a                                         ; $5F8D: $3C
    ccf                                           ; $5F8E: $3F
    ld e, $3F                                     ; $5F8F: $1E $3F
    rra                                           ; $5F91: $1F
    ccf                                           ; $5F92: $3F
    rra                                           ; $5F93: $1F
    cp a                                          ; $5F94: $BF
    rra                                           ; $5F95: $1F
    rst RST_18                                    ; $5F96: $DF
    adc a                                         ; $5F97: $8F
    rst RST_38                                    ; $5F98: $FF
    rst RST_08                                    ; $5F99: $CF
    rst RST_38                                    ; $5F9A: $FF
    rst RST_28                                    ; $5F9B: $EF
    rst RST_38                                    ; $5F9C: $FF
    rst RST_30                                    ; $5F9D: $F7
    rst RST_38                                    ; $5F9E: $FF
    rst RST_30                                    ; $5F9F: $F7
    rlca                                          ; $5FA0: $07
    inc bc                                        ; $5FA1: $03
    rlca                                          ; $5FA2: $07
    inc bc                                        ; $5FA3: $03
    rlca                                          ; $5FA4: $07
    inc bc                                        ; $5FA5: $03
    inc bc                                        ; $5FA6: $03
    ld bc, $0103                                  ; $5FA7: $01 $03 $01
    inc bc                                        ; $5FAA: $03
    ld bc, $0001                                  ; $5FAB: $01 $01 $00
    ld bc, $0100                                  ; $5FAE: $01 $00 $01
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
    db $FD                                        ; $5FC0: $FD
    rst RST_30                                    ; $5FC1: $F7
    cp $FB                                        ; $5FC2: $FE $FB
    cp $FB                                        ; $5FC4: $FE $FB
    cp $FB                                        ; $5FC6: $FE $FB
    rst RST_18                                    ; $5FC8: $DF
    db $FD                                        ; $5FC9: $FD
    ld b, a                                       ; $5FCA: $47
    db $FD                                        ; $5FCB: $FD
    add e                                         ; $5FCC: $83
    db $FD                                        ; $5FCD: $FD
    add c                                         ; $5FCE: $81
    cp $81                                        ; $5FCF: $FE $81
    cp $C0                                        ; $5FD1: $FE $C0
    ld a, a                                       ; $5FD3: $7F
    ret nz                                        ; $5FD4: $C0

    ld a, a                                       ; $5FD5: $7F
    ret nz                                        ; $5FD6: $C0

    ld a, a                                       ; $5FD7: $7F

jr_017_5FD8:
    ld h, b                                       ; $5FD8: $60
    ccf                                           ; $5FD9: $3F

jr_017_5FDA:
    ld h, b                                       ; $5FDA: $60
    ccf                                           ; $5FDB: $3F
    ld a, $19                                     ; $5FDC: $3E $19
    ccf                                           ; $5FDE: $3F
    jr jr_017_5F61                                ; $5FDF: $18 $80

    nop                                           ; $5FE1: $00
    ret nz                                        ; $5FE2: $C0

    add b                                         ; $5FE3: $80
    ldh [$FFC0], a                                ; $5FE4: $E0 $C0
    ldh a, [$FFE0]                                ; $5FE6: $F0 $E0

jr_017_5FE8:
    ld hl, sp-$10                                 ; $5FE8: $F8 $F0
    db $EC                                        ; $5FEA: $EC
    ld hl, sp-$0A                                 ; $5FEB: $F8 $F6
    db $FC                                        ; $5FED: $FC
    di                                            ; $5FEE: $F3
    cp $B9                                        ; $5FEF: $FE $B9
    rst RST_38                                    ; $5FF1: $FF
    adc b                                         ; $5FF2: $88
    rst RST_38                                    ; $5FF3: $FF
    inc b                                         ; $5FF4: $04
    rst RST_38                                    ; $5FF5: $FF
    ld [bc], a                                    ; $5FF6: $02
    rst RST_38                                    ; $5FF7: $FF
    nop                                           ; $5FF8: $00
    rst RST_38                                    ; $5FF9: $FF

jr_017_5FFA:
    nop                                           ; $5FFA: $00
    rst RST_38                                    ; $5FFB: $FF
    nop                                           ; $5FFC: $00
    rst RST_38                                    ; $5FFD: $FF
    add b                                         ; $5FFE: $80
    rst RST_38                                    ; $5FFF: $FF
    add b                                         ; $6000: $80

jr_017_6001:
    nop                                           ; $6001: $00
    ret nz                                        ; $6002: $C0

    add b                                         ; $6003: $80
    ld h, b                                       ; $6004: $60
    ret nz                                        ; $6005: $C0

    jr nc, jr_017_5FE8                            ; $6006: $30 $E0

    jr jr_017_5FFA                                ; $6008: $18 $F0

    inc c                                         ; $600A: $0C

jr_017_600B:
    ld hl, sp+$06                                 ; $600B: $F8 $06
    db $FC                                        ; $600D: $FC
    db $E3                                        ; $600E: $E3
    ld e, $9D                                     ; $600F: $1E $9D
    inc bc                                        ; $6011: $03
    ld b, e                                       ; $6012: $43
    add b                                         ; $6013: $80
    ld b, b                                       ; $6014: $40
    add b                                         ; $6015: $80
    jr nz, jr_017_5FD8                            ; $6016: $20 $C0

    jr nz, jr_017_5FDA                            ; $6018: $20 $C0

    sub b                                         ; $601A: $90
    ld h, b                                       ; $601B: $60
    ret c                                         ; $601C: $D8

    jr nz, jr_017_600B                            ; $601D: $20 $EC

    ld d, b                                       ; $601F: $50
    add b                                         ; $6020: $80
    nop                                           ; $6021: $00
    ret nz                                        ; $6022: $C0

    add b                                         ; $6023: $80
    ldh [rP1], a                                  ; $6024: $E0 $00
    jr nc, jr_017_6028                            ; $6026: $30 $00

jr_017_6028:
    nop                                           ; $6028: $00
    nop                                           ; $6029: $00
    nop                                           ; $602A: $00
    nop                                           ; $602B: $00
    nop                                           ; $602C: $00
    nop                                           ; $602D: $00
    nop                                           ; $602E: $00
    nop                                           ; $602F: $00
    ret nz                                        ; $6030: $C0

    nop                                           ; $6031: $00
    ldh [$FFC0], a                                ; $6032: $E0 $C0
    ldh [$FFC0], a                                ; $6034: $E0 $C0
    ldh [rP1], a                                  ; $6036: $E0 $00
    ldh a, [$FF80]                                ; $6038: $F0 $80
    or b                                          ; $603A: $B0
    ld b, b                                       ; $603B: $40
    sub b                                         ; $603C: $90
    ld h, b                                       ; $603D: $60
    inc e                                         ; $603E: $1C
    ldh [$FF80], a                                ; $603F: $E0 $80
    rst RST_38                                    ; $6041: $FF
    ret c                                         ; $6042: $D8

    ld h, a                                       ; $6043: $67
    call c, Call_017_7E63                         ; $6044: $DC $63 $7E
    xor l                                         ; $6047: $AD
    ld a, a                                       ; $6048: $7F
    xor [hl]                                      ; $6049: $AE
    ccf                                           ; $604A: $3F
    ret nz                                        ; $604B: $C0

    ld de, $10E0                                  ; $604C: $11 $E0 $10
    ldh [$FF88], a                                ; $604F: $E0 $88
    ld [hl], b                                    ; $6051: $70

jr_017_6052:
    swap b                                        ; $6052: $CB $30
    rst RST_20                                    ; $6054: $E7
    ld e, d                                       ; $6055: $5A
    ld [hl], a                                    ; $6056: $77
    add hl, hl                                    ; $6057: $29
    rst RST_28                                    ; $6058: $EF
    inc sp                                        ; $6059: $33
    rst RST_38                                    ; $605A: $FF
    add b                                         ; $605B: $80
    rst RST_38                                    ; $605C: $FF
    cp a                                          ; $605D: $BF
    dec l                                         ; $605E: $2D
    rst RST_18                                    ; $605F: $DF
    ld a, a                                       ; $6060: $7F
    jr nz, jr_017_6052                            ; $6061: $20 $EF

    inc sp                                        ; $6063: $33
    rst RST_30                                    ; $6064: $F7
    db $DB                                        ; $6065: $DB
    or a                                          ; $6066: $B7
    ret c                                         ; $6067: $D8

    ei                                            ; $6068: $FB
    call z, Call_000_0CFB                         ; $6069: $CC $FB $0C
    rst RST_38                                    ; $606C: $FF
    inc b                                         ; $606D: $04
    db $FC                                        ; $606E: $FC
    add e                                         ; $606F: $83
    ld hl, sp-$79                                 ; $6070: $F8 $87
    ld a, b                                       ; $6072: $78
    add a                                         ; $6073: $87
    ld a, b                                       ; $6074: $78
    add a                                         ; $6075: $87
    ld a, h                                       ; $6076: $7C
    add a                                         ; $6077: $87
    rst RST_38                                    ; $6078: $FF
    inc de                                        ; $6079: $13
    rst RST_38                                    ; $607A: $FF
    nop                                           ; $607B: $00
    rst RST_38                                    ; $607C: $FF
    nop                                           ; $607D: $00
    ld e, a                                       ; $607E: $5F
    xor e                                         ; $607F: $AB
    ld [de], a                                    ; $6080: $12
    db $EC                                        ; $6081: $EC
    inc de                                        ; $6082: $13
    db $EC                                        ; $6083: $EC
    ld [de], a                                    ; $6084: $12
    db $ED                                        ; $6085: $ED
    ld a, [hl-]                                   ; $6086: $3A
    push hl                                       ; $6087: $E5
    cp $C1                                        ; $6088: $FE $C1
    rst RST_20                                    ; $608A: $E7
    jr @+$01                                      ; $608B: $18 $FF

    add hl, bc                                    ; $608D: $09
    rst RST_30                                    ; $608E: $F7
    jp hl                                         ; $608F: $E9


    rst RST_38                                    ; $6090: $FF
    pop hl                                        ; $6091: $E1
    rst RST_38                                    ; $6092: $FF
    rst RST_38                                    ; $6093: $FF
    rst RST_38                                    ; $6094: $FF
    cp $FF                                        ; $6095: $FE $FF
    nop                                           ; $6097: $00
    ld d, l                                       ; $6098: $55
    xor d                                         ; $6099: $AA
    call z, $3333                                 ; $609A: $CC $33 $33
    call z, Call_000_00FF                         ; $609D: $CC $FF $00
    dec e                                         ; $60A0: $1D
    ld [$081D], sp                                ; $60A1: $08 $1D $08
    inc c                                         ; $60A4: $0C

jr_017_60A5:
    nop                                           ; $60A5: $00
    rrca                                          ; $60A6: $0F

jr_017_60A7:
    nop                                           ; $60A7: $00
    rrca                                          ; $60A8: $0F
    inc bc                                        ; $60A9: $03
    ccf                                           ; $60AA: $3F
    rrca                                          ; $60AB: $0F
    cp $3F                                        ; $60AC: $FE $3F
    and $5F                                       ; $60AE: $E6 $5F
    jp nc, $D22F                                  ; $60B0: $D2 $2F $D2

    cpl                                           ; $60B3: $2F
    ret nc                                        ; $60B4: $D0

    cpl                                           ; $60B5: $2F
    and b                                         ; $60B6: $A0
    ld e, a                                       ; $60B7: $5F
    pop hl                                        ; $60B8: $E1
    ccf                                           ; $60B9: $3F
    dec sp                                        ; $60BA: $3B
    rrca                                          ; $60BB: $0F
    ld e, a                                       ; $60BC: $5F
    inc hl                                        ; $60BD: $23
    ld a, e                                       ; $60BE: $7B
    inc b                                         ; $60BF: $04
    inc h                                         ; $60C0: $24
    rst RST_18                                    ; $60C1: $DF
    jr nz, @-$1F                                  ; $60C2: $20 $DF

    jr nz, jr_017_60A5                            ; $60C4: $20 $DF

    jr nz, jr_017_60A7                            ; $60C6: $20 $DF

    ld h, c                                       ; $60C8: $61
    cp a                                          ; $60C9: $BF
    ld a, a                                       ; $60CA: $7F
    add b                                         ; $60CB: $80
    rst RST_38                                    ; $60CC: $FF
    nop                                           ; $60CD: $00
    db $FD                                        ; $60CE: $FD
    ld a, [$F8FF]                                 ; $60CF: $FA $FF $F8
    db $FD                                        ; $60D2: $FD
    ld a, [$00FF]                                 ; $60D3: $FA $FF $00
    rst RST_38                                    ; $60D6: $FF
    nop                                           ; $60D7: $00
    rst RST_38                                    ; $60D8: $FF
    nop                                           ; $60D9: $00
    rst RST_38                                    ; $60DA: $FF
    nop                                           ; $60DB: $00
    rst RST_38                                    ; $60DC: $FF
    nop                                           ; $60DD: $00
    nop                                           ; $60DE: $00
    nop                                           ; $60DF: $00
    nop                                           ; $60E0: $00
    nop                                           ; $60E1: $00
    nop                                           ; $60E2: $00
    nop                                           ; $60E3: $00
    nop                                           ; $60E4: $00
    nop                                           ; $60E5: $00
    nop                                           ; $60E6: $00
    nop                                           ; $60E7: $00
    nop                                           ; $60E8: $00
    nop                                           ; $60E9: $00
    nop                                           ; $60EA: $00
    nop                                           ; $60EB: $00
    ld b, $00                                     ; $60EC: $06 $00
    rra                                           ; $60EE: $1F
    nop                                           ; $60EF: $00
    ld a, a                                       ; $60F0: $7F
    nop                                           ; $60F1: $00
    rst RST_38                                    ; $60F2: $FF
    nop                                           ; $60F3: $00
    ld a, a                                       ; $60F4: $7F
    nop                                           ; $60F5: $00
    dec de                                        ; $60F6: $1B
    inc b                                         ; $60F7: $04
    ld b, $00                                     ; $60F8: $06 $00
    nop                                           ; $60FA: $00
    nop                                           ; $60FB: $00
    nop                                           ; $60FC: $00
    nop                                           ; $60FD: $00
    nop                                           ; $60FE: $00
    nop                                           ; $60FF: $00
    nop                                           ; $6100: $00
    nop                                           ; $6101: $00
    add b                                         ; $6102: $80
    nop                                           ; $6103: $00
    ld b, b                                       ; $6104: $40
    add b                                         ; $6105: $80
    ld h, b                                       ; $6106: $60
    add b                                         ; $6107: $80
    ld d, b                                       ; $6108: $50
    and b                                         ; $6109: $A0
    sbc b                                         ; $610A: $98
    ld h, b                                       ; $610B: $60
    db $F4                                        ; $610C: $F4
    ld [$98E4], sp                                ; $610D: $08 $E4 $98
    db $FC                                        ; $6110: $FC
    add b                                         ; $6111: $80
    jp nc, $DE2C                                  ; $6112: $D2 $2C $DE

    jr nz, jr_017_6176                            ; $6115: $20 $5F

    and [hl]                                      ; $6117: $A6
    jp hl                                         ; $6118: $E9


    ld d, $FF                                     ; $6119: $16 $FF
    nop                                           ; $611B: $00
    add b                                         ; $611C: $80
    nop                                           ; $611D: $00
    nop                                           ; $611E: $00
    nop                                           ; $611F: $00
    ld d, a                                       ; $6120: $57
    jr z, jr_017_6162                             ; $6121: $28 $3F

    ld bc, $001F                                  ; $6123: $01 $1F $00
    inc de                                        ; $6126: $13
    inc c                                         ; $6127: $0C
    rrca                                          ; $6128: $0F
    nop                                           ; $6129: $00
    add hl, bc                                    ; $612A: $09
    ld b, $07                                     ; $612B: $06 $07
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
    rst RST_08                                    ; $6140: $CF
    scf                                           ; $6141: $37
    ld e, a                                       ; $6142: $5F
    and a                                         ; $6143: $A7
    rst RST_38                                    ; $6144: $FF
    rlca                                          ; $6145: $07
    rst RST_38                                    ; $6146: $FF
    nop                                           ; $6147: $00
    dec c                                         ; $6148: $0D
    ldh a, [c]                                    ; $6149: $F2
    db $FC                                        ; $614A: $FC
    inc bc                                        ; $614B: $03
    add a                                         ; $614C: $87
    ld a, b                                       ; $614D: $78
    rst RST_38                                    ; $614E: $FF

jr_017_614F:
    nop                                           ; $614F: $00
    nop                                           ; $6150: $00
    nop                                           ; $6151: $00
    nop                                           ; $6152: $00
    nop                                           ; $6153: $00
    nop                                           ; $6154: $00

jr_017_6155:
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
    dec de                                        ; $6160: $1B
    nop                                           ; $6161: $00

jr_017_6162:
    ei                                            ; $6162: $FB
    ld bc, $23F4                                  ; $6163: $01 $F4 $23
    db $F4                                        ; $6166: $F4
    ld h, e                                       ; $6167: $63
    ld hl, sp-$59                                 ; $6168: $F8 $A7
    ld hl, sp-$49                                 ; $616A: $F8 $B7
    ldh a, [$FF2F]                                ; $616C: $F0 $2F
    ldh a, [$FFCF]                                ; $616E: $F0 $CF
    ldh [$FFDF], a                                ; $6170: $E0 $DF
    ldh [$FF1F], a                                ; $6172: $E0 $1F
    pop bc                                        ; $6174: $C1
    ccf                                           ; $6175: $3F

jr_017_6176:
    jp Jump_017_663E                              ; $6176: $C3 $3E $66


    sbc l                                         ; $6179: $9D
    inc l                                         ; $617A: $2C
    db $DB                                        ; $617B: $DB
    jr c, jr_017_6155                             ; $617C: $38 $D7

    jr nc, jr_017_614F                            ; $617E: $30 $CF

    inc c                                         ; $6180: $0C
    rst RST_30                                    ; $6181: $F7
    rra                                           ; $6182: $1F
    db $E3                                        ; $6183: $E3
    rst RST_20                                    ; $6184: $E7
    add hl, de                                    ; $6185: $19
    and a                                         ; $6186: $A7
    ld e, b                                       ; $6187: $58
    rst RST_38                                    ; $6188: $FF
    add hl, bc                                    ; $6189: $09
    rst RST_30                                    ; $618A: $F7
    jp hl                                         ; $618B: $E9


    rst RST_38                                    ; $618C: $FF
    pop hl                                        ; $618D: $E1
    rst RST_38                                    ; $618E: $FF
    rst RST_38                                    ; $618F: $FF
    rst RST_38                                    ; $6190: $FF
    cp $FF                                        ; $6191: $FE $FF
    nop                                           ; $6193: $00
    xor l                                         ; $6194: $AD
    ld d, d                                       ; $6195: $52
    ld c, d                                       ; $6196: $4A
    or l                                          ; $6197: $B5
    ld [hl], e                                    ; $6198: $73
    adc h                                         ; $6199: $8C
    rst RST_38                                    ; $619A: $FF
    nop                                           ; $619B: $00
    nop                                           ; $619C: $00
    nop                                           ; $619D: $00
    nop                                           ; $619E: $00
    nop                                           ; $619F: $00
    ld b, $00                                     ; $61A0: $06 $00
    ld c, $04                                     ; $61A2: $0E $04
    cp h                                          ; $61A4: $BC
    ld [$B0F8], sp                                ; $61A5: $08 $F8 $B0
    ld a, b                                       ; $61A8: $78
    ret nc                                        ; $61A9: $D0

    ccf                                           ; $61AA: $3F
    ldh [$FF3F], a                                ; $61AB: $E0 $3F
    ldh [c], a                                    ; $61AD: $E2
    ccf                                           ; $61AE: $3F
    db $EC                                        ; $61AF: $EC
    ccf                                           ; $61B0: $3F
    db $EB                                        ; $61B1: $EB
    ccf                                           ; $61B2: $3F
    rst RST_28                                    ; $61B3: $EF
    ld l, a                                       ; $61B4: $6F
    call c, $80FC                                 ; $61B5: $DC $FC $80
    rst RST_38                                    ; $61B8: $FF
    db $10                                        ; $61B9: $10
    rrca                                          ; $61BA: $0F
    rst RST_38                                    ; $61BB: $FF
    inc bc                                        ; $61BC: $03
    rst RST_38                                    ; $61BD: $FF
    rrca                                          ; $61BE: $0F
    rst RST_38                                    ; $61BF: $FF
    ccf                                           ; $61C0: $3F
    ld hl, sp+$0F                                 ; $61C1: $F8 $0F
    rst RST_38                                    ; $61C3: $FF
    ld a, a                                       ; $61C4: $7F
    rst RST_38                                    ; $61C5: $FF
    ccf                                           ; $61C6: $3F
    ldh [$FFDB], a                                ; $61C7: $E0 $DB
    db $F4                                        ; $61C9: $F4
    rst RST_38                                    ; $61CA: $FF
    add hl, sp                                    ; $61CB: $39
    rst RST_38                                    ; $61CC: $FF
    inc c                                         ; $61CD: $0C
    rst RST_08                                    ; $61CE: $CF
    or [hl]                                       ; $61CF: $B6
    rst RST_08                                    ; $61D0: $CF

jr_017_61D1:
    or e                                          ; $61D1: $B3
    db $D3                                        ; $61D2: $D3
    jr nz, jr_017_61D1                            ; $61D3: $20 $FC

    nop                                           ; $61D5: $00
    ld [hl], b                                    ; $61D6: $70
    add b                                         ; $61D7: $80
    ret nz                                        ; $61D8: $C0

    nop                                           ; $61D9: $00
    ret nz                                        ; $61DA: $C0

    nop                                           ; $61DB: $00
    add b                                         ; $61DC: $80

jr_017_61DD:
    nop                                           ; $61DD: $00
    nop                                           ; $61DE: $00
    nop                                           ; $61DF: $00
    inc a                                         ; $61E0: $3C
    nop                                           ; $61E1: $00
    ld a, h                                       ; $61E2: $7C
    jr c, jr_017_61DD                             ; $61E3: $38 $F8

    ld [hl], b                                    ; $61E5: $70
    ldh a, [$FF80]                                ; $61E6: $F0 $80
    add b                                         ; $61E8: $80
    nop                                           ; $61E9: $00
    nop                                           ; $61EA: $00
    nop                                           ; $61EB: $00
    nop                                           ; $61EC: $00
    nop                                           ; $61ED: $00
    rst RST_38                                    ; $61EE: $FF
    nop                                           ; $61EF: $00
    rst RST_38                                    ; $61F0: $FF
    cp $FE                                        ; $61F1: $FE $FE
    ld hl, sp-$08                                 ; $61F3: $F8 $F8
    add b                                         ; $61F5: $80
    add b                                         ; $61F6: $80
    nop                                           ; $61F7: $00
    ldh a, [rP1]                                  ; $61F8: $F0 $00
    ld hl, sp-$10                                 ; $61FA: $F8 $F0
    cp $00                                        ; $61FC: $FE $00
    ld hl, sp+$60                                 ; $61FE: $F8 $60
    ldh [$FF80], a                                ; $6200: $E0 $80
    add b                                         ; $6202: $80
    nop                                           ; $6203: $00
    nop                                           ; $6204: $00
    nop                                           ; $6205: $00
    add b                                         ; $6206: $80
    nop                                           ; $6207: $00
    ret nz                                        ; $6208: $C0

    add b                                         ; $6209: $80
    ret nz                                        ; $620A: $C0

    nop                                           ; $620B: $00
    nop                                           ; $620C: $00
    nop                                           ; $620D: $00
    nop                                           ; $620E: $00
    nop                                           ; $620F: $00
    nop                                           ; $6210: $00
    nop                                           ; $6211: $00
    nop                                           ; $6212: $00
    nop                                           ; $6213: $00
    nop                                           ; $6214: $00
    nop                                           ; $6215: $00
    nop                                           ; $6216: $00
    nop                                           ; $6217: $00
    nop                                           ; $6218: $00
    nop                                           ; $6219: $00
    nop                                           ; $621A: $00
    nop                                           ; $621B: $00
    nop                                           ; $621C: $00
    nop                                           ; $621D: $00
    nop                                           ; $621E: $00
    nop                                           ; $621F: $00
    nop                                           ; $6220: $00
    nop                                           ; $6221: $00
    nop                                           ; $6222: $00
    nop                                           ; $6223: $00
    nop                                           ; $6224: $00
    nop                                           ; $6225: $00
    nop                                           ; $6226: $00
    nop                                           ; $6227: $00
    nop                                           ; $6228: $00
    nop                                           ; $6229: $00
    nop                                           ; $622A: $00
    nop                                           ; $622B: $00
    nop                                           ; $622C: $00
    nop                                           ; $622D: $00
    nop                                           ; $622E: $00
    nop                                           ; $622F: $00
    nop                                           ; $6230: $00
    nop                                           ; $6231: $00
    ld b, $00                                     ; $6232: $06 $00
    rra                                           ; $6234: $1F
    nop                                           ; $6235: $00
    ld a, l                                       ; $6236: $7D
    ld [bc], a                                    ; $6237: $02
    db $FD                                        ; $6238: $FD
    ld [bc], a                                    ; $6239: $02
    ld a, l                                       ; $623A: $7D
    ld [bc], a                                    ; $623B: $02
    rra                                           ; $623C: $1F
    nop                                           ; $623D: $00
    ld b, $00                                     ; $623E: $06 $00
    inc bc                                        ; $6240: $03
    nop                                           ; $6241: $00
    inc c                                         ; $6242: $0C
    inc bc                                        ; $6243: $03
    jr nc, jr_017_6255                            ; $6244: $30 $0F

    ret nz                                        ; $6246: $C0

    ccf                                           ; $6247: $3F
    and b                                         ; $6248: $A0
    ld e, a                                       ; $6249: $5F
    ret nc                                        ; $624A: $D0

    cpl                                           ; $624B: $2F
    reti                                          ; $624C: $D9


    cpl                                           ; $624D: $2F
    reti                                          ; $624E: $D9


    cpl                                           ; $624F: $2F
    cp e                                          ; $6250: $BB
    ld e, a                                       ; $6251: $5F
    rst RST_38                                    ; $6252: $FF
    ccf                                           ; $6253: $3F
    ccf                                           ; $6254: $3F

jr_017_6255:
    rrca                                          ; $6255: $0F
    ccf                                           ; $6256: $3F
    inc bc                                        ; $6257: $03
    ld l, e                                       ; $6258: $6B
    inc d                                         ; $6259: $14
    ld e, e                                       ; $625A: $5B
    inc h                                         ; $625B: $24
    ld l, e                                       ; $625C: $6B
    dec d                                         ; $625D: $15
    ccf                                           ; $625E: $3F
    ld bc, $0003                                  ; $625F: $01 $03 $00
    rst RST_30                                    ; $6262: $F7
    ld [bc], a                                    ; $6263: $02
    rst RST_00                                    ; $6264: $C7
    ld bc, $807F                                  ; $6265: $01 $7F $80
    ld b, b                                       ; $6268: $40
    cp a                                          ; $6269: $BF
    inc h                                         ; $626A: $24
    rst RST_18                                    ; $626B: $DF
    ld [hl+], a                                   ; $626C: $22
    rst RST_18                                    ; $626D: $DF
    ld h, e                                       ; $626E: $63
    rst RST_18                                    ; $626F: $DF
    ld h, e                                       ; $6270: $63
    rst RST_18                                    ; $6271: $DF
    ld [hl], a                                    ; $6272: $77
    rst RST_18                                    ; $6273: $DF
    rst RST_38                                    ; $6274: $FF
    cp a                                          ; $6275: $BF
    rst RST_38                                    ; $6276: $FF
    add b                                         ; $6277: $80
    sbc a                                         ; $6278: $9F
    ld [$00FF], sp                                ; $6279: $08 $FF $00
    cp $FD                                        ; $627C: $FE $FD
    db $FD                                        ; $627E: $FD
    ld a, [$000F]                                 ; $627F: $FA $0F $00
    rrca                                          ; $6282: $0F
    ld b, $11                                     ; $6283: $06 $11
    rrca                                          ; $6285: $0F
    db $10                                        ; $6286: $10
    rrca                                          ; $6287: $0F
    jr nz, jr_017_62A9                            ; $6288: $20 $1F

    cpl                                           ; $628A: $2F
    db $10                                        ; $628B: $10
    rst RST_38                                    ; $628C: $FF
    dec bc                                        ; $628D: $0B
    rst RST_18                                    ; $628E: $DF
    db $EB                                        ; $628F: $EB
    cp a                                          ; $6290: $BF
    ret nz                                        ; $6291: $C0

    rst RST_38                                    ; $6292: $FF
    ld a, [de]                                    ; $6293: $1A
    rst RST_38                                    ; $6294: $FF
    db $10                                        ; $6295: $10
    ld a, h                                       ; $6296: $7C
    add a                                         ; $6297: $87
    ld a, b                                       ; $6298: $78
    adc a                                         ; $6299: $8F
    ld a, b                                       ; $629A: $78
    adc a                                         ; $629B: $8F
    ld a, b                                       ; $629C: $78
    adc a                                         ; $629D: $8F
    ld a, b                                       ; $629E: $78
    adc a                                         ; $629F: $8F
    db $FC                                        ; $62A0: $FC
    rla                                           ; $62A1: $17
    rst RST_38                                    ; $62A2: $FF
    nop                                           ; $62A3: $00
    rst RST_38                                    ; $62A4: $FF
    ret c                                         ; $62A5: $D8

    rst RST_38                                    ; $62A6: $FF
    nop                                           ; $62A7: $00
    rst RST_18                                    ; $62A8: $DF

jr_017_62A9:
    dec hl                                        ; $62A9: $2B
    ld c, a                                       ; $62AA: $4F
    or a                                          ; $62AB: $B7
    rst RST_18                                    ; $62AC: $DF
    daa                                           ; $62AD: $27
    rst RST_38                                    ; $62AE: $FF
    rlca                                          ; $62AF: $07
    rst RST_38                                    ; $62B0: $FF
    nop                                           ; $62B1: $00
    dec b                                         ; $62B2: $05
    ld a, [$02FD]                                 ; $62B3: $FA $FD $02
    add d                                         ; $62B6: $82
    ld a, l                                       ; $62B7: $7D
    rst RST_38                                    ; $62B8: $FF
    nop                                           ; $62B9: $00
    nop                                           ; $62BA: $00
    nop                                           ; $62BB: $00
    nop                                           ; $62BC: $00
    nop                                           ; $62BD: $00
    nop                                           ; $62BE: $00
    nop                                           ; $62BF: $00
    cp $FD                                        ; $62C0: $FE $FD
    rst RST_38                                    ; $62C2: $FF
    nop                                           ; $62C3: $00
    rst RST_38                                    ; $62C4: $FF
    nop                                           ; $62C5: $00
    rst RST_38                                    ; $62C6: $FF
    nop                                           ; $62C7: $00
    rst RST_38                                    ; $62C8: $FF
    nop                                           ; $62C9: $00
    rst RST_38                                    ; $62CA: $FF
    nop                                           ; $62CB: $00
    nop                                           ; $62CC: $00
    nop                                           ; $62CD: $00
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
    rra                                           ; $62E0: $1F
    nop                                           ; $62E1: $00
    ld de, $0F0E                                  ; $62E2: $11 $0E $0F
    nop                                           ; $62E5: $00
    ld [$0707], sp                                ; $62E6: $08 $07 $07
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
    inc bc                                        ; $6300: $03
    nop                                           ; $6301: $00
    di                                            ; $6302: $F3
    ld bc, $03C4                                  ; $6303: $01 $C4 $03
    add h                                         ; $6306: $84
    inc bc                                        ; $6307: $03
    ret z                                         ; $6308: $C8

    add a                                         ; $6309: $87
    ret z                                         ; $630A: $C8

    add a                                         ; $630B: $87
    ret nc                                        ; $630C: $D0

    rrca                                          ; $630D: $0F
    ldh a, [$FFCF]                                ; $630E: $F0 $CF
    ldh [$FFDF], a                                ; $6310: $E0 $DF
    ldh [$FF1F], a                                ; $6312: $E0 $1F
    pop bc                                        ; $6314: $C1
    ccf                                           ; $6315: $3F
    jp Jump_017_663E                              ; $6316: $C3 $3E $66


    sbc h                                         ; $6319: $9C
    ld l, $D8                                     ; $631A: $2E $D8
    dec sp                                        ; $631C: $3B
    call nc, $CD32                                ; $631D: $D4 $32 $CD
    ld a, [bc]                                    ; $6320: $0A
    push af                                       ; $6321: $F5
    ld e, $E1                                     ; $6322: $1E $E1
    and $19                                       ; $6324: $E6 $19
    and a                                         ; $6326: $A7
    ld e, b                                       ; $6327: $58
    rst RST_38                                    ; $6328: $FF
    add hl, bc                                    ; $6329: $09
    rst RST_30                                    ; $632A: $F7
    jp hl                                         ; $632B: $E9


    rst RST_38                                    ; $632C: $FF
    pop hl                                        ; $632D: $E1
    rst RST_38                                    ; $632E: $FF
    rst RST_38                                    ; $632F: $FF
    rst RST_38                                    ; $6330: $FF
    cp $FF                                        ; $6331: $FE $FF
    nop                                           ; $6333: $00
    xor l                                         ; $6334: $AD
    ld d, d                                       ; $6335: $52
    ld c, d                                       ; $6336: $4A
    or l                                          ; $6337: $B5
    ld [hl], e                                    ; $6338: $73
    adc h                                         ; $6339: $8C
    rst RST_38                                    ; $633A: $FF
    nop                                           ; $633B: $00
    nop                                           ; $633C: $00
    nop                                           ; $633D: $00
    nop                                           ; $633E: $00
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
    add b                                         ; $634A: $80
    nop                                           ; $634B: $00
    ret nz                                        ; $634C: $C0

    add b                                         ; $634D: $80
    ld h, b                                       ; $634E: $60
    ret nz                                        ; $634F: $C0

    ccf                                           ; $6350: $3F
    ldh [$FF3C], a                                ; $6351: $E0 $3C
    ldh [$FF30], a                                ; $6353: $E0 $30
    ldh [$FF30], a                                ; $6355: $E0 $30
    ldh [$FF30], a                                ; $6357: $E0 $30
    ldh [$FF60], a                                ; $6359: $E0 $60
    ret nz                                        ; $635B: $C0

    ld hl, sp-$80                                 ; $635C: $F8 $80
    ldh [rP1], a                                  ; $635E: $E0 $00
    cp $00                                        ; $6360: $FE $00
    ld [hl], b                                    ; $6362: $70
    add b                                         ; $6363: $80
    ld c, a                                       ; $6364: $4F
    or b                                          ; $6365: $B0
    ld c, d                                       ; $6366: $4A
    or l                                          ; $6367: $B5
    ld c, e                                       ; $6368: $4B
    or h                                          ; $6369: $B4
    swap l                                        ; $636A: $CB $35
    ei                                            ; $636C: $FB
    inc b                                         ; $636D: $04
    jp z, $CCB4                                   ; $636E: $CA $B4 $CC

jr_017_6371:
    or b                                          ; $6371: $B0
    ret nc                                        ; $6372: $D0

    jr nz, jr_017_6371                            ; $6373: $20 $FC

    nop                                           ; $6375: $00
    ld [hl], b                                    ; $6376: $70
    add b                                         ; $6377: $80
    ret nz                                        ; $6378: $C0

    nop                                           ; $6379: $00
    ret nz                                        ; $637A: $C0

    nop                                           ; $637B: $00
    add b                                         ; $637C: $80
    nop                                           ; $637D: $00
    nop                                           ; $637E: $00
    nop                                           ; $637F: $00
    cp $00                                        ; $6380: $FE $00
    ld hl, sp+$60                                 ; $6382: $F8 $60
    ldh [$FF80], a                                ; $6384: $E0 $80
    add b                                         ; $6386: $80
    nop                                           ; $6387: $00
    nop                                           ; $6388: $00

jr_017_6389:
    nop                                           ; $6389: $00
    nop                                           ; $638A: $00
    nop                                           ; $638B: $00
    nop                                           ; $638C: $00
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
    nop                                           ; $63A0: $00
    nop                                           ; $63A1: $00
    rra                                           ; $63A2: $1F
    nop                                           ; $63A3: $00
    rlca                                          ; $63A4: $07
    nop                                           ; $63A5: $00
    ld bc, $0100                                  ; $63A6: $01 $00 $01
    nop                                           ; $63A9: $00
    ld bc, $0000                                  ; $63AA: $01 $00 $00
    nop                                           ; $63AD: $00
    inc bc                                        ; $63AE: $03
    nop                                           ; $63AF: $00
    nop                                           ; $63B0: $00
    nop                                           ; $63B1: $00
    ld b, $00                                     ; $63B2: $06 $00
    dec de                                        ; $63B4: $1B
    inc b                                         ; $63B5: $04
    ld a, a                                       ; $63B6: $7F
    nop                                           ; $63B7: $00
    rst RST_38                                    ; $63B8: $FF
    nop                                           ; $63B9: $00
    ld a, a                                       ; $63BA: $7F
    nop                                           ; $63BB: $00
    rra                                           ; $63BC: $1F
    nop                                           ; $63BD: $00
    ld a, [hl]                                    ; $63BE: $7E
    nop                                           ; $63BF: $00
    jr c, jr_017_63C2                             ; $63C0: $38 $00

jr_017_63C2:
    ld a, b                                       ; $63C2: $78
    jr nc, jr_017_6389                            ; $63C3: $30 $C4

    ld a, b                                       ; $63C5: $78
    add h                                         ; $63C6: $84
    ld hl, sp-$7E                                 ; $63C7: $F8 $82
    db $FC                                        ; $63C9: $FC
    add e                                         ; $63CA: $83
    db $FC                                        ; $63CB: $FC
    add c                                         ; $63CC: $81
    cp $81                                        ; $63CD: $FE $81
    cp $C3                                        ; $63CF: $FE $C3
    ld a, h                                       ; $63D1: $7C
    rst RST_28                                    ; $63D2: $EF
    inc sp                                        ; $63D3: $33
    rst RST_38                                    ; $63D4: $FF
    rrca                                          ; $63D5: $0F
    cp $3F                                        ; $63D6: $FE $3F
    and $5F                                       ; $63D8: $E6 $5F
    jp nc, $D22F                                  ; $63DA: $D2 $2F $D2

jr_017_63DD:
    cpl                                           ; $63DD: $2F
    ret nc                                        ; $63DE: $D0

jr_017_63DF:
    cpl                                           ; $63DF: $2F
    rst RST_38                                    ; $63E0: $FF
    nop                                           ; $63E1: $00
    ccf                                           ; $63E2: $3F
    ld b, $18                                     ; $63E3: $06 $18
    rrca                                          ; $63E5: $0F
    jr nc, jr_017_6407                            ; $63E6: $30 $1F

    jr nc, jr_017_6409                            ; $63E8: $30 $1F

    ldh a, [$FF1F]                                ; $63EA: $F0 $1F
    ld [hl], b                                    ; $63EC: $70
    rra                                           ; $63ED: $1F
    jr nc, jr_017_640F                            ; $63EE: $30 $1F

    ld hl, sp+$0F                                 ; $63F0: $F8 $0F
    db $FC                                        ; $63F2: $FC
    rlca                                          ; $63F3: $07
    cp $83                                        ; $63F4: $FE $83
    rst RST_38                                    ; $63F6: $FF
    cp l                                          ; $63F7: $BD
    dec l                                         ; $63F8: $2D
    sbc $24                                       ; $63F9: $DE $24
    rst RST_18                                    ; $63FB: $DF
    jr nz, jr_017_63DD                            ; $63FC: $20 $DF

    jr nz, jr_017_63DF                            ; $63FE: $20 $DF

    nop                                           ; $6400: $00
    nop                                           ; $6401: $00
    nop                                           ; $6402: $00
    nop                                           ; $6403: $00
    add b                                         ; $6404: $80
    nop                                           ; $6405: $00
    add b                                         ; $6406: $80

jr_017_6407:
    nop                                           ; $6407: $00
    ld b, b                                       ; $6408: $40

jr_017_6409:
    add b                                         ; $6409: $80
    ld b, b                                       ; $640A: $40
    add b                                         ; $640B: $80
    cpl                                           ; $640C: $2F
    ret nz                                        ; $640D: $C0

    ccf                                           ; $640E: $3F

jr_017_640F:
    rr a                                          ; $640F: $CB $1F
    db $EB                                        ; $6411: $EB
    rra                                           ; $6412: $1F
    ldh [rIF], a                                  ; $6413: $E0 $0F
    rst RST_30                                    ; $6415: $F7
    rrca                                          ; $6416: $0F
    ldh a, [$FF98]                                ; $6417: $F0 $98
    rst RST_20                                    ; $6419: $E7
    ret nc                                        ; $641A: $D0

    ld l, a                                       ; $641B: $6F
    ld [hl], b                                    ; $641C: $70
    xor a                                         ; $641D: $AF
    ld [hl], b                                    ; $641E: $70
    adc a                                         ; $641F: $8F
    nop                                           ; $6420: $00
    nop                                           ; $6421: $00
    nop                                           ; $6422: $00
    nop                                           ; $6423: $00
    nop                                           ; $6424: $00
    nop                                           ; $6425: $00
    nop                                           ; $6426: $00
    nop                                           ; $6427: $00
    nop                                           ; $6428: $00
    nop                                           ; $6429: $00
    ld bc, $DF00                                  ; $642A: $01 $00 $DF
    nop                                           ; $642D: $00
    rst RST_20                                    ; $642E: $E7
    pop bc                                        ; $642F: $C1
    db $E3                                        ; $6430: $E3
    pop bc                                        ; $6431: $C1
    db $E3                                        ; $6432: $E3
    nop                                           ; $6433: $00
    db $FC                                        ; $6434: $FC
    db $E3                                        ; $6435: $E3
    ldh a, [c]                                    ; $6436: $F2
    dec c                                         ; $6437: $0D
    jp hl                                         ; $6438: $E9


    sub [hl]                                      ; $6439: $96
    ld l, c                                       ; $643A: $69
    sub $69                                       ; $643B: $D6 $69
    sub $69                                       ; $643D: $D6 $69
    sub $00                                       ; $643F: $D6 $00
    nop                                           ; $6441: $00
    nop                                           ; $6442: $00
    nop                                           ; $6443: $00
    nop                                           ; $6444: $00
    nop                                           ; $6445: $00
    nop                                           ; $6446: $00
    nop                                           ; $6447: $00
    nop                                           ; $6448: $00
    nop                                           ; $6449: $00
    rst RST_38                                    ; $644A: $FF
    nop                                           ; $644B: $00
    rst RST_08                                    ; $644C: $CF
    add d                                         ; $644D: $82
    ld b, a                                       ; $644E: $47
    add d                                         ; $644F: $82
    db $EB                                        ; $6450: $EB
    ld b, $5B                                     ; $6451: $06 $5B
    and [hl]                                      ; $6453: $A6
    or e                                          ; $6454: $B3
    ld c, [hl]                                    ; $6455: $4E
    ld h, [hl]                                    ; $6456: $66
    sbc h                                         ; $6457: $9C
    ld e, h                                       ; $6458: $5C
    and b                                         ; $6459: $A0
    ld d, b                                       ; $645A: $50
    and b                                         ; $645B: $A0
    ld h, b                                       ; $645C: $60
    add b                                         ; $645D: $80
    ld h, b                                       ; $645E: $60
    add b                                         ; $645F: $80
    add sp, $17                                   ; $6460: $E8 $17
    cp b                                          ; $6462: $B8
    rrca                                          ; $6463: $0F
    ld c, $03                                     ; $6464: $0E $03
    scf                                           ; $6466: $37
    ld [$011E], sp                                ; $6467: $08 $1E $01
    dec d                                         ; $646A: $15
    ld a, [bc]                                    ; $646B: $0A
    rrca                                          ; $646C: $0F
    nop                                           ; $646D: $00
    rst RST_38                                    ; $646E: $FF
    nop                                           ; $646F: $00
    inc e                                         ; $6470: $1C
    inc bc                                        ; $6471: $03
    inc bc                                        ; $6472: $03
    nop                                           ; $6473: $00
    ld [bc], a                                    ; $6474: $02
    ld bc, $0001                                  ; $6475: $01 $01 $00
    nop                                           ; $6478: $00
    nop                                           ; $6479: $00
    nop                                           ; $647A: $00
    nop                                           ; $647B: $00
    nop                                           ; $647C: $00
    nop                                           ; $647D: $00
    nop                                           ; $647E: $00
    nop                                           ; $647F: $00
    ld [$58F7], sp                                ; $6480: $08 $F7 $58
    rst RST_28                                    ; $6483: $EF
    rst RST_18                                    ; $6484: $DF
    ldh [rIE], a                                  ; $6485: $E0 $FF
    ret nz                                        ; $6487: $C0

    rst RST_38                                    ; $6488: $FF
    ld a, $FF                                     ; $6489: $3E $FF
    ld a, $FF                                     ; $648B: $3E $FF
    ld a, [hl]                                    ; $648D: $7E
    rst RST_38                                    ; $648E: $FF
    nop                                           ; $648F: $00
    rst RST_38                                    ; $6490: $FF
    nop                                           ; $6491: $00
    rst RST_38                                    ; $6492: $FF
    nop                                           ; $6493: $00
    ld a, a                                       ; $6494: $7F
    add b                                         ; $6495: $80
    rst RST_38                                    ; $6496: $FF
    nop                                           ; $6497: $00
    nop                                           ; $6498: $00
    nop                                           ; $6499: $00
    nop                                           ; $649A: $00
    nop                                           ; $649B: $00
    nop                                           ; $649C: $00
    nop                                           ; $649D: $00
    nop                                           ; $649E: $00
    nop                                           ; $649F: $00
    db $10                                        ; $64A0: $10
    rst RST_28                                    ; $64A1: $EF
    ld a, b                                       ; $64A2: $78
    rst RST_00                                    ; $64A3: $C7
    rst RST_38                                    ; $64A4: $FF
    nop                                           ; $64A5: $00
    rst RST_38                                    ; $64A6: $FF
    nop                                           ; $64A7: $00
    ld d, a                                       ; $64A8: $57
    xor d                                         ; $64A9: $AA
    di                                            ; $64AA: $F3
    dec c                                         ; $64AB: $0D
    ld d, a                                       ; $64AC: $57
    xor c                                         ; $64AD: $A9
    rst RST_38                                    ; $64AE: $FF
    ld bc, $00FF                                  ; $64AF: $01 $FF $00
    jp $FF3C                                      ; $64B2: $C3 $3C $FF


    nop                                           ; $64B5: $00

jr_017_64B6:
    pop hl                                        ; $64B6: $E1
    ld e, $3F                                     ; $64B7: $1E $3F
    nop                                           ; $64B9: $00
    nop                                           ; $64BA: $00
    nop                                           ; $64BB: $00
    nop                                           ; $64BC: $00
    nop                                           ; $64BD: $00
    nop                                           ; $64BE: $00
    nop                                           ; $64BF: $00
    ld a, [de]                                    ; $64C0: $1A
    push af                                       ; $64C1: $F5
    scf                                           ; $64C2: $37
    add sp, -$07                                  ; $64C3: $E8 $F9
    ld b, $FF                                     ; $64C5: $06 $FF
    ld [bc], a                                    ; $64C7: $02
    db $FD                                        ; $64C8: $FD
    ld a, [$F8FF]                                 ; $64C9: $FA $FF $F8
    rst RST_38                                    ; $64CC: $FF
    rst RST_38                                    ; $64CD: $FF
    rst RST_38                                    ; $64CE: $FF
    rst RST_38                                    ; $64CF: $FF
    rst RST_38                                    ; $64D0: $FF
    nop                                           ; $64D1: $00
    ld d, l                                       ; $64D2: $55
    xor d                                         ; $64D3: $AA
    inc sp                                        ; $64D4: $33
    call z, Call_000_33CC                         ; $64D5: $CC $CC $33
    rst RST_38                                    ; $64D8: $FF
    nop                                           ; $64D9: $00
    nop                                           ; $64DA: $00
    nop                                           ; $64DB: $00
    nop                                           ; $64DC: $00
    nop                                           ; $64DD: $00
    nop                                           ; $64DE: $00
    nop                                           ; $64DF: $00
    ld d, b                                       ; $64E0: $50
    and b                                         ; $64E1: $A0
    ld h, b                                       ; $64E2: $60
    add b                                         ; $64E3: $80
    ret nz                                        ; $64E4: $C0

    nop                                           ; $64E5: $00
    cp $40                                        ; $64E6: $FE $40
    ldh a, [$FF6C]                                ; $64E8: $F0 $6C
    ldh a, [c]                                    ; $64EA: $F2
    ld l, h                                       ; $64EB: $6C
    db $F4                                        ; $64EC: $F4
    ret z                                         ; $64ED: $C8

    ld hl, sp-$80                                 ; $64EE: $F8 $80
    ret nc                                        ; $64F0: $D0

    jr nz, jr_017_6563                            ; $64F1: $20 $70

    add b                                         ; $64F3: $80
    jr nc, jr_017_64B6                            ; $64F4: $30 $C0

    ldh [rP1], a                                  ; $64F6: $E0 $00
    ret nz                                        ; $64F8: $C0

    nop                                           ; $64F9: $00
    nop                                           ; $64FA: $00
    nop                                           ; $64FB: $00
    nop                                           ; $64FC: $00
    nop                                           ; $64FD: $00
    nop                                           ; $64FE: $00
    nop                                           ; $64FF: $00
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
    nop                                           ; $650A: $00
    nop                                           ; $650B: $00
    nop                                           ; $650C: $00
    nop                                           ; $650D: $00
    nop                                           ; $650E: $00
    nop                                           ; $650F: $00
    nop                                           ; $6510: $00
    nop                                           ; $6511: $00
    ld b, $00                                     ; $6512: $06 $00
    rra                                           ; $6514: $1F
    ld b, $79                                     ; $6515: $06 $79
    rra                                           ; $6517: $1F
    ldh [$FF7F], a                                ; $6518: $E0 $7F
    ld a, c                                       ; $651A: $79
    rra                                           ; $651B: $1F
    rra                                           ; $651C: $1F
    ld b, $06                                     ; $651D: $06 $06
    nop                                           ; $651F: $00
    inc bc                                        ; $6520: $03
    nop                                           ; $6521: $00
    rrca                                          ; $6522: $0F
    inc bc                                        ; $6523: $03
    inc a                                         ; $6524: $3C
    rrca                                          ; $6525: $0F
    ldh a, [$FF3F]                                ; $6526: $F0 $3F
    ret nz                                        ; $6528: $C0

    rst RST_38                                    ; $6529: $FF
    nop                                           ; $652A: $00
    rst RST_38                                    ; $652B: $FF
    nop                                           ; $652C: $00
    rst RST_38                                    ; $652D: $FF
    nop                                           ; $652E: $00
    rst RST_38                                    ; $652F: $FF
    ret nz                                        ; $6530: $C0

    rst RST_38                                    ; $6531: $FF
    ldh [$FF3F], a                                ; $6532: $E0 $3F
    jr nc, jr_017_6555                            ; $6534: $30 $1F

    ld h, b                                       ; $6536: $60
    ccf                                           ; $6537: $3F
    ld h, b                                       ; $6538: $60
    ccf                                           ; $6539: $3F
    ld h, b                                       ; $653A: $60
    ccf                                           ; $653B: $3F
    jr nc, jr_017_655D                            ; $653C: $30 $1F

    jr jr_017_654F                                ; $653E: $18 $0F

    inc bc                                        ; $6540: $03
    nop                                           ; $6541: $00
    rlca                                          ; $6542: $07
    inc bc                                        ; $6543: $03
    ld b, $03                                     ; $6544: $06 $03
    add [hl]                                      ; $6546: $86
    inc bc                                        ; $6547: $03
    cp $83                                        ; $6548: $FE $83
    ld a, h                                       ; $654A: $7C
    rst RST_38                                    ; $654B: $FF
    nop                                           ; $654C: $00
    rst RST_38                                    ; $654D: $FF
    nop                                           ; $654E: $00

jr_017_654F:
    rst RST_38                                    ; $654F: $FF
    nop                                           ; $6550: $00
    rst RST_38                                    ; $6551: $FF
    nop                                           ; $6552: $00
    rst RST_38                                    ; $6553: $FF
    nop                                           ; $6554: $00

jr_017_6555:
    rst RST_38                                    ; $6555: $FF
    nop                                           ; $6556: $00
    rst RST_38                                    ; $6557: $FF
    nop                                           ; $6558: $00
    rst RST_38                                    ; $6559: $FF
    nop                                           ; $655A: $00
    rst RST_38                                    ; $655B: $FF
    nop                                           ; $655C: $00

jr_017_655D:
    rst RST_38                                    ; $655D: $FF
    nop                                           ; $655E: $00
    rst RST_38                                    ; $655F: $FF
    ld c, $00                                     ; $6560: $0E $00
    rrca                                          ; $6562: $0F

jr_017_6563:
    ld b, $19                                     ; $6563: $06 $19
    rrca                                          ; $6565: $0F
    jr jr_017_6577                                ; $6566: $18 $0F

    jr nc, @+$21                                  ; $6568: $30 $1F

    ldh a, [$FF1F]                                ; $656A: $F0 $1F
    ldh [rIE], a                                  ; $656C: $E0 $FF
    nop                                           ; $656E: $00
    rst RST_38                                    ; $656F: $FF
    nop                                           ; $6570: $00
    rst RST_38                                    ; $6571: $FF
    nop                                           ; $6572: $00
    rst RST_38                                    ; $6573: $FF
    nop                                           ; $6574: $00
    rst RST_38                                    ; $6575: $FF
    nop                                           ; $6576: $00

jr_017_6577:
    rst RST_38                                    ; $6577: $FF
    nop                                           ; $6578: $00
    rst RST_38                                    ; $6579: $FF
    nop                                           ; $657A: $00
    rst RST_38                                    ; $657B: $FF
    nop                                           ; $657C: $00
    rst RST_38                                    ; $657D: $FF
    nop                                           ; $657E: $00
    rst RST_38                                    ; $657F: $FF
    inc bc                                        ; $6580: $03
    nop                                           ; $6581: $00
    inc bc                                        ; $6582: $03
    ld bc, $0306                                  ; $6583: $01 $06 $03
    add [hl]                                      ; $6586: $86
    inc bc                                        ; $6587: $03
    call z, $CC87                                 ; $6588: $CC $87 $CC
    add a                                         ; $658B: $87
    ld a, b                                       ; $658C: $78
    rst RST_08                                    ; $658D: $CF
    ld a, b                                       ; $658E: $78
    rst RST_08                                    ; $658F: $CF
    jr nc, @+$01                                  ; $6590: $30 $FF

jr_017_6592:
    nop                                           ; $6592: $00
    rst RST_38                                    ; $6593: $FF

jr_017_6594:
    ld bc, $03FF                                  ; $6594: $01 $FF $03
    cp $06                                        ; $6597: $FE $06
    db $FC                                        ; $6599: $FC

jr_017_659A:
    inc c                                         ; $659A: $0C
    ld hl, sp+$1E                                 ; $659B: $F8 $1E
    ldh a, [rIF]                                  ; $659D: $F0 $0F
    cp $00                                        ; $659F: $FE $00
    nop                                           ; $65A1: $00
    nop                                           ; $65A2: $00
    nop                                           ; $65A3: $00
    nop                                           ; $65A4: $00
    nop                                           ; $65A5: $00
    nop                                           ; $65A6: $00
    nop                                           ; $65A7: $00
    nop                                           ; $65A8: $00
    nop                                           ; $65A9: $00
    add b                                         ; $65AA: $80
    nop                                           ; $65AB: $00
    ret nz                                        ; $65AC: $C0

    add b                                         ; $65AD: $80
    ld h, b                                       ; $65AE: $60
    ret nz                                        ; $65AF: $C0

    jr nc, jr_017_6592                            ; $65B0: $30 $E0

    jr nc, jr_017_6594                            ; $65B2: $30 $E0

    jr nc, @-$1E                                  ; $65B4: $30 $E0

    jr nc, @-$1E                                  ; $65B6: $30 $E0

    jr nc, jr_017_659A                            ; $65B8: $30 $E0

    ld h, b                                       ; $65BA: $60
    ret nz                                        ; $65BB: $C0

    ret nz                                        ; $65BC: $C0

    add b                                         ; $65BD: $80
    add b                                         ; $65BE: $80
    nop                                           ; $65BF: $00
    jr jr_017_65D1                                ; $65C0: $18 $0F

    inc c                                         ; $65C2: $0C
    rlca                                          ; $65C3: $07
    rrca                                          ; $65C4: $0F
    rlca                                          ; $65C5: $07
    rlca                                          ; $65C6: $07
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

jr_017_65D1:
    nop                                           ; $65D1: $00
    nop                                           ; $65D2: $00
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
    rst RST_38                                    ; $65E1: $FF
    nop                                           ; $65E2: $00
    rst RST_38                                    ; $65E3: $FF
    nop                                           ; $65E4: $00
    rst RST_38                                    ; $65E5: $FF
    nop                                           ; $65E6: $00
    rst RST_38                                    ; $65E7: $FF
    rst RST_38                                    ; $65E8: $FF
    rst RST_38                                    ; $65E9: $FF
    rst RST_38                                    ; $65EA: $FF
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
    nop                                           ; $65FC: $00
    nop                                           ; $65FD: $00
    nop                                           ; $65FE: $00
    nop                                           ; $65FF: $00
    nop                                           ; $6600: $00
    rst RST_38                                    ; $6601: $FF
    nop                                           ; $6602: $00
    rst RST_38                                    ; $6603: $FF
    nop                                           ; $6604: $00
    rst RST_38                                    ; $6605: $FF
    nop                                           ; $6606: $00
    rst RST_38                                    ; $6607: $FF
    nop                                           ; $6608: $00
    rst RST_38                                    ; $6609: $FF
    nop                                           ; $660A: $00
    rst RST_38                                    ; $660B: $FF
    nop                                           ; $660C: $00
    rst RST_38                                    ; $660D: $FF
    nop                                           ; $660E: $00
    rst RST_38                                    ; $660F: $FF
    nop                                           ; $6610: $00
    rst RST_38                                    ; $6611: $FF
    nop                                           ; $6612: $00
    rst RST_38                                    ; $6613: $FF
    rst RST_38                                    ; $6614: $FF
    rst RST_38                                    ; $6615: $FF
    rst RST_38                                    ; $6616: $FF
    nop                                           ; $6617: $00
    nop                                           ; $6618: $00
    nop                                           ; $6619: $00
    nop                                           ; $661A: $00
    nop                                           ; $661B: $00
    nop                                           ; $661C: $00
    nop                                           ; $661D: $00
    nop                                           ; $661E: $00
    nop                                           ; $661F: $00
    ld bc, $00FF                                  ; $6620: $01 $FF $00
    rst RST_38                                    ; $6623: $FF
    nop                                           ; $6624: $00
    rst RST_38                                    ; $6625: $FF
    nop                                           ; $6626: $00
    rst RST_38                                    ; $6627: $FF

jr_017_6628:
    nop                                           ; $6628: $00
    rst RST_38                                    ; $6629: $FF
    nop                                           ; $662A: $00
    rst RST_38                                    ; $662B: $FF
    nop                                           ; $662C: $00
    rst RST_38                                    ; $662D: $FF
    nop                                           ; $662E: $00
    rst RST_38                                    ; $662F: $FF
    nop                                           ; $6630: $00
    rst RST_38                                    ; $6631: $FF
    nop                                           ; $6632: $00
    rst RST_38                                    ; $6633: $FF
    nop                                           ; $6634: $00
    rst RST_38                                    ; $6635: $FF
    rst RST_38                                    ; $6636: $FF
    rst RST_38                                    ; $6637: $FF
    rst RST_38                                    ; $6638: $FF
    nop                                           ; $6639: $00
    nop                                           ; $663A: $00
    nop                                           ; $663B: $00
    nop                                           ; $663C: $00
    nop                                           ; $663D: $00

Jump_017_663E:
    nop                                           ; $663E: $00
    nop                                           ; $663F: $00
    add b                                         ; $6640: $80
    nop                                           ; $6641: $00
    ret nz                                        ; $6642: $C0

    add b                                         ; $6643: $80
    ld h, b                                       ; $6644: $60
    ret nz                                        ; $6645: $C0

    jr nc, jr_017_6628                            ; $6646: $30 $E0

    inc e                                         ; $6648: $1C
    ldh a, [$FF0E]                                ; $6649: $F0 $0E
    db $FC                                        ; $664B: $FC
    inc bc                                        ; $664C: $03
    cp $03                                        ; $664D: $FE $03
    cp $71                                        ; $664F: $FE $71
    rst RST_38                                    ; $6651: $FF
    rst RST_38                                    ; $6652: $FF
    adc a                                         ; $6653: $8F
    rst RST_08                                    ; $6654: $CF
    add b                                         ; $6655: $80
    add b                                         ; $6656: $80
    nop                                           ; $6657: $00
    nop                                           ; $6658: $00
    nop                                           ; $6659: $00
    nop                                           ; $665A: $00
    nop                                           ; $665B: $00
    nop                                           ; $665C: $00
    nop                                           ; $665D: $00
    nop                                           ; $665E: $00
    nop                                           ; $665F: $00
    ret nz                                        ; $6660: $C0

    nop                                           ; $6661: $00
    ldh [$FFC0], a                                ; $6662: $E0 $C0
    ldh [rP1], a                                  ; $6664: $E0 $00
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
    ld b, $00                                     ; $6680: $06 $00
    rra                                           ; $6682: $1F
    nop                                           ; $6683: $00
    ld a, l                                       ; $6684: $7D
    ld [bc], a                                    ; $6685: $02
    db $FD                                        ; $6686: $FD
    ld [bc], a                                    ; $6687: $02
    ld a, l                                       ; $6688: $7D
    ld [bc], a                                    ; $6689: $02
    ccf                                           ; $668A: $3F
    nop                                           ; $668B: $00
    ld a, $10                                     ; $668C: $3E $10
    rra                                           ; $668E: $1F
    inc c                                         ; $668F: $0C
    dec de                                        ; $6690: $1B
    rrca                                          ; $6691: $0F
    inc c                                         ; $6692: $0C
    rlca                                          ; $6693: $07
    inc c                                         ; $6694: $0C
    rlca                                          ; $6695: $07
    ld b, $03                                     ; $6696: $06 $03
    ld b, $03                                     ; $6698: $06 $03
    inc bc                                        ; $669A: $03
    ld bc, $0103                                  ; $669B: $01 $03 $01
    ld bc, $0300                                  ; $669E: $01 $00 $03
    nop                                           ; $66A1: $00
    inc c                                         ; $66A2: $0C
    inc bc                                        ; $66A3: $03
    ld sp, $C10E                                  ; $66A4: $31 $0E $C1
    ld a, $A1                                     ; $66A7: $3E $A1
    ld e, [hl]                                    ; $66A9: $5E
    pop de                                        ; $66AA: $D1
    ld l, $D9                                     ; $66AB: $2E $D9
    ld l, $D9                                     ; $66AD: $2E $D9
    ld l, $BB                                     ; $66AF: $2E $BB
    ld e, [hl]                                    ; $66B1: $5E
    rst RST_38                                    ; $66B2: $FF
    ld a, $3F                                     ; $66B3: $3E $3F
    ld c, $BF                                     ; $66B5: $0E $BF
    ld [bc], a                                    ; $66B7: $02
    db $EB                                        ; $66B8: $EB
    sub h                                         ; $66B9: $94
    ld a, e                                       ; $66BA: $7B
    db $E4                                        ; $66BB: $E4
    ld a, a                                       ; $66BC: $7F
    sbc b                                         ; $66BD: $98
    ccf                                           ; $66BE: $3F
    add $03                                       ; $66BF: $C6 $03
    nop                                           ; $66C1: $00
    rlca                                          ; $66C2: $07
    ld [bc], a                                    ; $66C3: $02
    add a                                         ; $66C4: $87
    ld bc, $807F                                  ; $66C5: $01 $7F $80
    ret nz                                        ; $66C8: $C0

    ccf                                           ; $66C9: $3F
    db $E4                                        ; $66CA: $E4
    sbc a                                         ; $66CB: $9F
    ldh [c], a                                    ; $66CC: $E2
    rst RST_18                                    ; $66CD: $DF
    di                                            ; $66CE: $F3
    rst RST_28                                    ; $66CF: $EF
    ei                                            ; $66D0: $FB
    rst RST_10                                    ; $66D1: $D7
    rst RST_38                                    ; $66D2: $FF
    db $DB                                        ; $66D3: $DB
    rst RST_38                                    ; $66D4: $FF
    cp l                                          ; $66D5: $BD
    rst RST_38                                    ; $66D6: $FF
    add d                                         ; $66D7: $82
    sub a                                         ; $66D8: $97
    jp hl                                         ; $66D9: $E9


    rst RST_38                                    ; $66DA: $FF
    add b                                         ; $66DB: $80
    add d                                         ; $66DC: $82
    db $FD                                        ; $66DD: $FD
    add l                                         ; $66DE: $85
    ld a, [$000E]                                 ; $66DF: $FA $0E $00
    rrca                                          ; $66E2: $0F
    ld b, $11                                     ; $66E3: $06 $11
    rrca                                          ; $66E5: $0F
    db $10                                        ; $66E6: $10
    rrca                                          ; $66E7: $0F
    jr nz, jr_017_6709                            ; $66E8: $20 $1F

    cpl                                           ; $66EA: $2F
    db $10                                        ; $66EB: $10
    rst RST_38                                    ; $66EC: $FF
    dec bc                                        ; $66ED: $0B
    rst RST_18                                    ; $66EE: $DF
    db $EB                                        ; $66EF: $EB
    cp a                                          ; $66F0: $BF
    ret nz                                        ; $66F1: $C0

    rst RST_38                                    ; $66F2: $FF
    ld a, [de]                                    ; $66F3: $1A
    rst RST_38                                    ; $66F4: $FF
    db $10                                        ; $66F5: $10
    ld a, l                                       ; $66F6: $7D
    add [hl]                                      ; $66F7: $86
    ld a, e                                       ; $66F8: $7B
    adc l                                         ; $66F9: $8D
    ld a, e                                       ; $66FA: $7B
    adc l                                         ; $66FB: $8D
    ld a, [hl]                                    ; $66FC: $7E
    adc e                                         ; $66FD: $8B
    ld a, [hl]                                    ; $66FE: $7E
    adc e                                         ; $66FF: $8B
    inc bc                                        ; $6700: $03
    nop                                           ; $6701: $00
    inc bc                                        ; $6702: $03
    ld bc, $0304                                  ; $6703: $01 $04 $03
    sub h                                         ; $6706: $94
    inc bc                                        ; $6707: $03

jr_017_6708:
    ret c                                         ; $6708: $D8

jr_017_6709:
    add a                                         ; $6709: $87

jr_017_670A:
    ld hl, sp-$79                                 ; $670A: $F8 $87

jr_017_670C:
    ldh a, [rIF]                                  ; $670C: $F0 $0F

jr_017_670E:
    ldh a, [$FFAF]                                ; $670E: $F0 $AF

jr_017_6710:
    ldh a, [$FFAF]                                ; $6710: $F0 $AF
    ldh a, [$FF6F]                                ; $6712: $F0 $6F
    pop af                                        ; $6714: $F1
    ld l, a                                       ; $6715: $6F
    di                                            ; $6716: $F3
    xor [hl]                                      ; $6717: $AE
    rst RST_30                                    ; $6718: $F7
    xor h                                         ; $6719: $AC
    ccf                                           ; $671A: $3F
    add sp, $3B                                   ; $671B: $E8 $3B
    push hl                                       ; $671D: $E5
    inc sp                                        ; $671E: $33
    db $ED                                        ; $671F: $ED
    add b                                         ; $6720: $80
    nop                                           ; $6721: $00
    ret nz                                        ; $6722: $C0

    add b                                         ; $6723: $80
    ld h, b                                       ; $6724: $60
    ret nz                                        ; $6725: $C0

    jr nc, jr_017_6708                            ; $6726: $30 $E0

    jr nc, jr_017_670A                            ; $6728: $30 $E0

    jr nc, jr_017_670C                            ; $672A: $30 $E0

    jr nc, jr_017_670E                            ; $672C: $30 $E0

    jr nc, jr_017_6710                            ; $672E: $30 $E0

    ld h, b                                       ; $6730: $60
    ret nz                                        ; $6731: $C0

    ret nz                                        ; $6732: $C0

    add b                                         ; $6733: $80
    add b                                         ; $6734: $80
    nop                                           ; $6735: $00
    add b                                         ; $6736: $80
    nop                                           ; $6737: $00
    add b                                         ; $6738: $80
    nop                                           ; $6739: $00
    add b                                         ; $673A: $80
    nop                                           ; $673B: $00
    add b                                         ; $673C: $80
    nop                                           ; $673D: $00

Jump_017_673E:
    pop af                                        ; $673E: $F1

jr_017_673F:
    nop                                           ; $673F: $00
    ld bc, $0200                                  ; $6740: $01 $00 $02
    nop                                           ; $6743: $00
    ld b, $00                                     ; $6744: $06 $00
    inc c                                         ; $6746: $0C
    nop                                           ; $6747: $00
    inc e                                         ; $6748: $1C
    ld [$1038], sp                                ; $6749: $08 $38 $10
    ld a, b                                       ; $674C: $78
    jr nc, jr_017_673F                            ; $674D: $30 $F0

    ld h, b                                       ; $674F: $60
    or b                                          ; $6750: $B0

jr_017_6751:
    ldh [$FF60], a                                ; $6751: $E0 $60
    ret nz                                        ; $6753: $C0

    ldh a, [rLCDC]                                ; $6754: $F0 $40
    ldh a, [$FFA0]                                ; $6756: $F0 $A0
    ldh [$FF80], a                                ; $6758: $E0 $80
    add b                                         ; $675A: $80
    nop                                           ; $675B: $00
    add b                                         ; $675C: $80
    nop                                           ; $675D: $00
    nop                                           ; $675E: $00
    nop                                           ; $675F: $00
    db $FC                                        ; $6760: $FC
    rla                                           ; $6761: $17
    rst RST_38                                    ; $6762: $FF
    inc b                                         ; $6763: $04
    cp a                                          ; $6764: $BF
    ld c, b                                       ; $6765: $48
    rst RST_38                                    ; $6766: $FF
    adc b                                         ; $6767: $88
    db $F4                                        ; $6768: $F4
    ld e, e                                       ; $6769: $5B
    ld l, b                                       ; $676A: $68
    or a                                          ; $676B: $B7
    ret c                                         ; $676C: $D8

    daa                                           ; $676D: $27
    ld hl, sp+$07                                 ; $676E: $F8 $07
    rst RST_38                                    ; $6770: $FF
    nop                                           ; $6771: $00
    db $FD                                        ; $6772: $FD
    ld [bc], a                                    ; $6773: $02
    dec b                                         ; $6774: $05
    ld a, [$01FE]                                 ; $6775: $FA $FE $01
    rst RST_38                                    ; $6778: $FF
    nop                                           ; $6779: $00
    nop                                           ; $677A: $00
    nop                                           ; $677B: $00
    nop                                           ; $677C: $00
    nop                                           ; $677D: $00
    nop                                           ; $677E: $00
    nop                                           ; $677F: $00
    ccf                                           ; $6780: $3F
    db $E3                                        ; $6781: $E3
    ccf                                           ; $6782: $3F
    db $E3                                        ; $6783: $E3
    rst RST_38                                    ; $6784: $FF
    dec h                                         ; $6785: $25
    cp a                                          ; $6786: $BF
    ld h, l                                       ; $6787: $65
    rst RST_38                                    ; $6788: $FF
    add hl, hl                                    ; $6789: $29
    ccf                                           ; $678A: $3F
    jp hl                                         ; $678B: $E9


    ccf                                           ; $678C: $3F
    pop af                                        ; $678D: $F1
    ld hl, $01FF                                  ; $678E: $21 $FF $01
    rst RST_38                                    ; $6791: $FF
    rst RST_38                                    ; $6792: $FF
    nop                                           ; $6793: $00
    xor l                                         ; $6794: $AD
    ld d, d                                       ; $6795: $52
    ld c, d                                       ; $6796: $4A
    or l                                          ; $6797: $B5
    ld [hl], e                                    ; $6798: $73
    adc h                                         ; $6799: $8C
    rst RST_38                                    ; $679A: $FF
    nop                                           ; $679B: $00
    nop                                           ; $679C: $00
    nop                                           ; $679D: $00
    nop                                           ; $679E: $00
    nop                                           ; $679F: $00
    rst RST_08                                    ; $67A0: $CF
    ld sp, $33CE                                  ; $67A1: $31 $CE $33
    rst RST_08                                    ; $67A4: $CF
    inc [hl]                                      ; $67A5: $34
    db $DB                                        ; $67A6: $DB
    dec l                                         ; $67A7: $2D
    ei                                            ; $67A8: $FB
    dec d                                         ; $67A9: $15
    db $EB                                        ; $67AA: $EB
    dec [hl]                                      ; $67AB: $35

jr_017_67AC:
    rst RST_08                                    ; $67AC: $CF
    ld [hl], d                                    ; $67AD: $72
    db $D3                                        ; $67AE: $D3
    xor [hl]                                      ; $67AF: $AE
    and $1C                                       ; $67B0: $E6 $1C
    ld b, [hl]                                    ; $67B2: $46
    cp h                                          ; $67B3: $BC
    call z, $CC38                                 ; $67B4: $CC $38 $CC
    jr c, jr_017_6751                             ; $67B7: $38 $98

    ld [hl], b                                    ; $67B9: $70
    jr jr_017_67AC                                ; $67BA: $18 $F0

    nop                                           ; $67BC: $00
    nop                                           ; $67BD: $00
    nop                                           ; $67BE: $00
    nop                                           ; $67BF: $00
    add d                                         ; $67C0: $82
    db $FD                                        ; $67C1: $FD
    rst RST_38                                    ; $67C2: $FF
    add b                                         ; $67C3: $80
    rst RST_38                                    ; $67C4: $FF
    nop                                           ; $67C5: $00
    rst RST_38                                    ; $67C6: $FF
    nop                                           ; $67C7: $00
    rst RST_38                                    ; $67C8: $FF
    nop                                           ; $67C9: $00
    rst RST_38                                    ; $67CA: $FF
    nop                                           ; $67CB: $00
    nop                                           ; $67CC: $00
    rst RST_38                                    ; $67CD: $FF
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
    nop                                           ; $67DA: $00
    nop                                           ; $67DB: $00
    nop                                           ; $67DC: $00
    nop                                           ; $67DD: $00
    nop                                           ; $67DE: $00
    nop                                           ; $67DF: $00
    rra                                           ; $67E0: $1F
    pop hl                                        ; $67E1: $E1
    rra                                           ; $67E2: $1F
    ldh [$FF89], a                                ; $67E3: $E0 $89
    or $8F                                        ; $67E5: $F6 $8F
    ldh a, [$FFC7]                                ; $67E7: $F0 $C7
    ld a, b                                       ; $67E9: $78
    ret nz                                        ; $67EA: $C0

    ld a, a                                       ; $67EB: $7F
    nop                                           ; $67EC: $00
    nop                                           ; $67ED: $00
    nop                                           ; $67EE: $00
    nop                                           ; $67EF: $00
    nop                                           ; $67F0: $00
    nop                                           ; $67F1: $00
    nop                                           ; $67F2: $00
    nop                                           ; $67F3: $00
    nop                                           ; $67F4: $00
    nop                                           ; $67F5: $00
    nop                                           ; $67F6: $00
    nop                                           ; $67F7: $00
    nop                                           ; $67F8: $00
    nop                                           ; $67F9: $00
    nop                                           ; $67FA: $00
    nop                                           ; $67FB: $00
    nop                                           ; $67FC: $00
    nop                                           ; $67FD: $00
    nop                                           ; $67FE: $00
    nop                                           ; $67FF: $00
    ld bc, $0000                                  ; $6800: $01 $00 $00
    nop                                           ; $6803: $00
    nop                                           ; $6804: $00
    nop                                           ; $6805: $00
    nop                                           ; $6806: $00
    nop                                           ; $6807: $00
    nop                                           ; $6808: $00
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
    nop                                           ; $681C: $00
    nop                                           ; $681D: $00
    nop                                           ; $681E: $00
    nop                                           ; $681F: $00
    nop                                           ; $6820: $00
    nop                                           ; $6821: $00
    nop                                           ; $6822: $00
    nop                                           ; $6823: $00
    inc bc                                        ; $6824: $03
    nop                                           ; $6825: $00
    inc e                                         ; $6826: $1C
    inc bc                                        ; $6827: $03
    ld h, b                                       ; $6828: $60
    rra                                           ; $6829: $1F
    ldh a, [rIF]                                  ; $682A: $F0 $0F
    ldh a, [rIF]                                  ; $682C: $F0 $0F
    ld hl, sp+$07                                 ; $682E: $F8 $07
    ld sp, hl                                     ; $6830: $F9
    rlca                                          ; $6831: $07
    ld sp, hl                                     ; $6832: $F9
    rlca                                          ; $6833: $07
    ei                                            ; $6834: $FB
    rrca                                          ; $6835: $0F
    rst RST_38                                    ; $6836: $FF
    rrca                                          ; $6837: $0F
    ld a, a                                       ; $6838: $7F
    rra                                           ; $6839: $1F
    ccf                                           ; $683A: $3F
    rlca                                          ; $683B: $07
    ld l, a                                       ; $683C: $6F
    db $10                                        ; $683D: $10
    ld e, e                                       ; $683E: $5B
    inc h                                         ; $683F: $24
    nop                                           ; $6840: $00
    nop                                           ; $6841: $00
    inc bc                                        ; $6842: $03
    nop                                           ; $6843: $00
    rlca                                          ; $6844: $07
    ld [bc], a                                    ; $6845: $02
    add a                                         ; $6846: $87
    ld bc, $807F                                  ; $6847: $01 $7F $80
    ld b, b                                       ; $684A: $40
    cp a                                          ; $684B: $BF
    inc h                                         ; $684C: $24
    rst RST_18                                    ; $684D: $DF
    ld [hl+], a                                   ; $684E: $22
    rst RST_18                                    ; $684F: $DF
    ld h, e                                       ; $6850: $63
    rst RST_18                                    ; $6851: $DF
    ld h, e                                       ; $6852: $63
    rst RST_18                                    ; $6853: $DF
    ld [hl], a                                    ; $6854: $77
    rst RST_18                                    ; $6855: $DF
    rst RST_38                                    ; $6856: $FF
    cp a                                          ; $6857: $BF
    rst RST_38                                    ; $6858: $FF
    add b                                         ; $6859: $80
    sbc a                                         ; $685A: $9F
    ld [$00FF], sp                                ; $685B: $08 $FF $00
    cp $FD                                        ; $685E: $FE $FD
    ld l, e                                       ; $6860: $6B
    dec d                                         ; $6861: $15
    ccf                                           ; $6862: $3F
    ld bc, $001F                                  ; $6863: $01 $1F $00
    rra                                           ; $6866: $1F
    nop                                           ; $6867: $00
    add hl, bc                                    ; $6868: $09
    ld b, $0F                                     ; $6869: $06 $0F
    nop                                           ; $686B: $00
    rlca                                          ; $686C: $07
    nop                                           ; $686D: $00
    nop                                           ; $686E: $00
    nop                                           ; $686F: $00
    nop                                           ; $6870: $00
    nop                                           ; $6871: $00
    nop                                           ; $6872: $00
    nop                                           ; $6873: $00
    nop                                           ; $6874: $00
    nop                                           ; $6875: $00
    nop                                           ; $6876: $00
    nop                                           ; $6877: $00
    nop                                           ; $6878: $00
    nop                                           ; $6879: $00
    nop                                           ; $687A: $00
    nop                                           ; $687B: $00
    nop                                           ; $687C: $00
    nop                                           ; $687D: $00
    nop                                           ; $687E: $00
    nop                                           ; $687F: $00
    db $FD                                        ; $6880: $FD
    ld a, [$FDFE]                                 ; $6881: $FA $FE $FD
    rst RST_38                                    ; $6884: $FF
    nop                                           ; $6885: $00
    rst RST_38                                    ; $6886: $FF
    nop                                           ; $6887: $00
    rst RST_38                                    ; $6888: $FF
    nop                                           ; $6889: $00
    rst RST_38                                    ; $688A: $FF
    nop                                           ; $688B: $00
    rst RST_38                                    ; $688C: $FF
    nop                                           ; $688D: $00
    nop                                           ; $688E: $00
    nop                                           ; $688F: $00
    nop                                           ; $6890: $00
    nop                                           ; $6891: $00
    nop                                           ; $6892: $00
    nop                                           ; $6893: $00
    nop                                           ; $6894: $00
    nop                                           ; $6895: $00
    nop                                           ; $6896: $00
    nop                                           ; $6897: $00
    nop                                           ; $6898: $00
    nop                                           ; $6899: $00
    nop                                           ; $689A: $00
    nop                                           ; $689B: $00
    nop                                           ; $689C: $00
    nop                                           ; $689D: $00
    nop                                           ; $689E: $00
    nop                                           ; $689F: $00
    nop                                           ; $68A0: $00
    nop                                           ; $68A1: $00
    nop                                           ; $68A2: $00
    nop                                           ; $68A3: $00
    nop                                           ; $68A4: $00
    nop                                           ; $68A5: $00
    ld c, $00                                     ; $68A6: $0E $00
    rrca                                          ; $68A8: $0F
    ld b, $11                                     ; $68A9: $06 $11
    rrca                                          ; $68AB: $0F
    db $10                                        ; $68AC: $10
    rrca                                          ; $68AD: $0F
    jr nz, jr_017_68CF                            ; $68AE: $20 $1F

    cpl                                           ; $68B0: $2F
    db $10                                        ; $68B1: $10
    rst RST_38                                    ; $68B2: $FF
    dec bc                                        ; $68B3: $0B
    rst RST_18                                    ; $68B4: $DF
    db $EB                                        ; $68B5: $EB
    cp a                                          ; $68B6: $BF
    ret nz                                        ; $68B7: $C0

    rst RST_38                                    ; $68B8: $FF
    ld a, [de]                                    ; $68B9: $1A
    rst RST_38                                    ; $68BA: $FF
    db $10                                        ; $68BB: $10
    ld a, h                                       ; $68BC: $7C
    add a                                         ; $68BD: $87
    ld a, b                                       ; $68BE: $78
    adc a                                         ; $68BF: $8F
    nop                                           ; $68C0: $00
    nop                                           ; $68C1: $00
    nop                                           ; $68C2: $00
    nop                                           ; $68C3: $00
    inc bc                                        ; $68C4: $03
    nop                                           ; $68C5: $00
    inc bc                                        ; $68C6: $03
    ld bc, $0304                                  ; $68C7: $01 $04 $03
    add h                                         ; $68CA: $84
    inc bc                                        ; $68CB: $03

jr_017_68CC:
    ret z                                         ; $68CC: $C8

    add a                                         ; $68CD: $87

jr_017_68CE:
    ret z                                         ; $68CE: $C8

jr_017_68CF:
    add a                                         ; $68CF: $87

jr_017_68D0:
    ret nc                                        ; $68D0: $D0

    rrca                                          ; $68D1: $0F

jr_017_68D2:
    ldh a, [$FFCF]                                ; $68D2: $F0 $CF

jr_017_68D4:
    ldh [$FFDF], a                                ; $68D4: $E0 $DF
    ldh [$FF1F], a                                ; $68D6: $E0 $1F
    pop bc                                        ; $68D8: $C1
    ccf                                           ; $68D9: $3F
    jp Jump_017_663E                              ; $68DA: $C3 $3E $66


    sbc h                                         ; $68DD: $9C
    ld l, $D8                                     ; $68DE: $2E $D8
    nop                                           ; $68E0: $00
    nop                                           ; $68E1: $00
    nop                                           ; $68E2: $00
    nop                                           ; $68E3: $00
    add b                                         ; $68E4: $80
    nop                                           ; $68E5: $00
    ret nz                                        ; $68E6: $C0

    add b                                         ; $68E7: $80
    ld h, b                                       ; $68E8: $60
    ret nz                                        ; $68E9: $C0

    jr nc, jr_017_68CC                            ; $68EA: $30 $E0

    jr nc, jr_017_68CE                            ; $68EC: $30 $E0

    jr nc, jr_017_68D0                            ; $68EE: $30 $E0

    jr nc, jr_017_68D2                            ; $68F0: $30 $E0

    jr nc, jr_017_68D4                            ; $68F2: $30 $E0

    ld h, b                                       ; $68F4: $60
    ret nz                                        ; $68F5: $C0

    ret nz                                        ; $68F6: $C0

    add b                                         ; $68F7: $80
    add b                                         ; $68F8: $80
    nop                                           ; $68F9: $00
    nop                                           ; $68FA: $00
    nop                                           ; $68FB: $00
    nop                                           ; $68FC: $00
    nop                                           ; $68FD: $00
    nop                                           ; $68FE: $00
    nop                                           ; $68FF: $00
    ld a, b                                       ; $6900: $78
    adc a                                         ; $6901: $8F
    ld a, b                                       ; $6902: $78
    adc a                                         ; $6903: $8F
    ld a, b                                       ; $6904: $78
    adc a                                         ; $6905: $8F
    db $FC                                        ; $6906: $FC
    rla                                           ; $6907: $17
    rst RST_38                                    ; $6908: $FF
    nop                                           ; $6909: $00
    rst RST_38                                    ; $690A: $FF
    ret c                                         ; $690B: $D8

    rst RST_38                                    ; $690C: $FF
    nop                                           ; $690D: $00
    rst RST_18                                    ; $690E: $DF
    dec hl                                        ; $690F: $2B
    ld c, a                                       ; $6910: $4F
    or a                                          ; $6911: $B7
    rst RST_18                                    ; $6912: $DF
    daa                                           ; $6913: $27
    rst RST_38                                    ; $6914: $FF
    rlca                                          ; $6915: $07
    rst RST_38                                    ; $6916: $FF
    nop                                           ; $6917: $00
    db $FD                                        ; $6918: $FD
    ld [bc], a                                    ; $6919: $02
    dec b                                         ; $691A: $05
    ld a, [$01FE]                                 ; $691B: $FA $FE $01
    rst RST_38                                    ; $691E: $FF
    nop                                           ; $691F: $00
    dec sp                                        ; $6920: $3B
    call nc, $CD32                                ; $6921: $D4 $32 $CD
    ld a, [bc]                                    ; $6924: $0A
    push af                                       ; $6925: $F5
    ld e, $E1                                     ; $6926: $1E $E1
    and $19                                       ; $6928: $E6 $19
    and a                                         ; $692A: $A7
    ld e, b                                       ; $692B: $58
    rst RST_38                                    ; $692C: $FF
    add hl, bc                                    ; $692D: $09
    rst RST_30                                    ; $692E: $F7
    jp hl                                         ; $692F: $E9


    rst RST_38                                    ; $6930: $FF
    pop hl                                        ; $6931: $E1
    rst RST_38                                    ; $6932: $FF
    rst RST_38                                    ; $6933: $FF
    rst RST_38                                    ; $6934: $FF

jr_017_6935:
    cp $FF                                        ; $6935: $FE $FF
    nop                                           ; $6937: $00
    xor l                                         ; $6938: $AD
    ld d, d                                       ; $6939: $52
    ld c, d                                       ; $693A: $4A
    or l                                          ; $693B: $B5
    ld [hl], e                                    ; $693C: $73
    adc h                                         ; $693D: $8C
    rst RST_38                                    ; $693E: $FF
    nop                                           ; $693F: $00
    add b                                         ; $6940: $80
    nop                                           ; $6941: $00
    ld [hl], b                                    ; $6942: $70
    add b                                         ; $6943: $80
    ld c, a                                       ; $6944: $4F
    or b                                          ; $6945: $B0
    ld c, d                                       ; $6946: $4A
    or l                                          ; $6947: $B5
    ld c, e                                       ; $6948: $4B
    or h                                          ; $6949: $B4
    swap l                                        ; $694A: $CB $35
    ei                                            ; $694C: $FB
    inc b                                         ; $694D: $04
    jp z, $CCB4                                   ; $694E: $CA $B4 $CC

    or b                                          ; $6951: $B0
    ret nc                                        ; $6952: $D0

    jr nz, jr_017_6935                            ; $6953: $20 $E0

    nop                                           ; $6955: $00
    ld b, b                                       ; $6956: $40
    add b                                         ; $6957: $80
    ret nz                                        ; $6958: $C0

    nop                                           ; $6959: $00
    ret nz                                        ; $695A: $C0

    nop                                           ; $695B: $00
    add b                                         ; $695C: $80
    nop                                           ; $695D: $00
    nop                                           ; $695E: $00
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
    ldh a, [rP1]                                  ; $6976: $F0 $00
    ldh a, [$FF60]                                ; $6978: $F0 $60
    ldh [$FF80], a                                ; $697A: $E0 $80
    add b                                         ; $697C: $80
    nop                                           ; $697D: $00
    nop                                           ; $697E: $00
    nop                                           ; $697F: $00
    nop                                           ; $6980: $00
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
    nop                                           ; $6990: $00
    nop                                           ; $6991: $00
    ld b, $00                                     ; $6992: $06 $00
    dec de                                        ; $6994: $1B
    inc b                                         ; $6995: $04
    ld a, a                                       ; $6996: $7F
    nop                                           ; $6997: $00
    rst RST_38                                    ; $6998: $FF
    nop                                           ; $6999: $00
    ld a, a                                       ; $699A: $7F
    nop                                           ; $699B: $00
    rra                                           ; $699C: $1F
    nop                                           ; $699D: $00
    ld b, $00                                     ; $699E: $06 $00
    inc bc                                        ; $69A0: $03
    nop                                           ; $69A1: $00
    rrca                                          ; $69A2: $0F
    inc bc                                        ; $69A3: $03
    ccf                                           ; $69A4: $3F
    rrca                                          ; $69A5: $0F
    cp $3F                                        ; $69A6: $FE $3F
    and $5F                                       ; $69A8: $E6 $5F
    jp nc, $D22F                                  ; $69AA: $D2 $2F $D2

    cpl                                           ; $69AD: $2F
    ret nc                                        ; $69AE: $D0

jr_017_69AF:
    cpl                                           ; $69AF: $2F
    and b                                         ; $69B0: $A0

jr_017_69B1:
    ld e, a                                       ; $69B1: $5F
    pop hl                                        ; $69B2: $E1

jr_017_69B3:
    ccf                                           ; $69B3: $3F
    dec sp                                        ; $69B4: $3B
    rrca                                          ; $69B5: $0F
    ld e, a                                       ; $69B6: $5F
    inc hl                                        ; $69B7: $23
    ld a, e                                       ; $69B8: $7B
    inc b                                         ; $69B9: $04
    ld d, a                                       ; $69BA: $57
    jr z, jr_017_69FC                             ; $69BB: $28 $3F

    ld bc, $001F                                  ; $69BD: $01 $1F $00
    inc bc                                        ; $69C0: $03
    nop                                           ; $69C1: $00
    rlca                                          ; $69C2: $07
    ld [bc], a                                    ; $69C3: $02
    add a                                         ; $69C4: $87
    ld bc, $80FF                                  ; $69C5: $01 $FF $80
    rst RST_38                                    ; $69C8: $FF
    cp a                                          ; $69C9: $BF
    dec l                                         ; $69CA: $2D
    rst RST_18                                    ; $69CB: $DF
    inc h                                         ; $69CC: $24
    rst RST_18                                    ; $69CD: $DF
    jr nz, jr_017_69AF                            ; $69CE: $20 $DF

    jr nz, jr_017_69B1                            ; $69D0: $20 $DF

    jr nz, jr_017_69B3                            ; $69D2: $20 $DF

    ld h, c                                       ; $69D4: $61
    cp a                                          ; $69D5: $BF
    ld a, a                                       ; $69D6: $7F
    add b                                         ; $69D7: $80
    rst RST_38                                    ; $69D8: $FF
    nop                                           ; $69D9: $00
    db $FD                                        ; $69DA: $FD
    ld a, [$F8FF]                                 ; $69DB: $FA $FF $F8
    db $FD                                        ; $69DE: $FD
    ld a, [$000F]                                 ; $69DF: $FA $0F $00
    rst RST_38                                    ; $69E2: $FF
    dec bc                                        ; $69E3: $0B
    rst RST_18                                    ; $69E4: $DF

jr_017_69E5:
    db $EB                                        ; $69E5: $EB
    cp a                                          ; $69E6: $BF
    ret nz                                        ; $69E7: $C0

    rst RST_38                                    ; $69E8: $FF
    ld a, [de]                                    ; $69E9: $1A
    rst RST_38                                    ; $69EA: $FF
    db $10                                        ; $69EB: $10
    db $FC                                        ; $69EC: $FC
    add a                                         ; $69ED: $87
    ld hl, sp-$71                                 ; $69EE: $F8 $8F
    ld a, b                                       ; $69F0: $78

jr_017_69F1:
    adc a                                         ; $69F1: $8F
    ld a, b                                       ; $69F2: $78

jr_017_69F3:
    adc a                                         ; $69F3: $8F
    ld a, b                                       ; $69F4: $78
    adc a                                         ; $69F5: $8F
    db $FC                                        ; $69F6: $FC
    rla                                           ; $69F7: $17
    rst RST_38                                    ; $69F8: $FF
    nop                                           ; $69F9: $00
    rst RST_38                                    ; $69FA: $FF
    nop                                           ; $69FB: $00

jr_017_69FC:
    ld e, a                                       ; $69FC: $5F
    xor e                                         ; $69FD: $AB
    rst RST_08                                    ; $69FE: $CF
    scf                                           ; $69FF: $37
    nop                                           ; $6A00: $00
    nop                                           ; $6A01: $00
    pop bc                                        ; $6A02: $C1
    nop                                           ; $6A03: $00
    db $E3                                        ; $6A04: $E3
    pop bc                                        ; $6A05: $C1
    db $E3                                        ; $6A06: $E3
    pop bc                                        ; $6A07: $C1
    db $E3                                        ; $6A08: $E3
    nop                                           ; $6A09: $00
    db $FC                                        ; $6A0A: $FC
    db $E3                                        ; $6A0B: $E3
    ldh a, [c]                                    ; $6A0C: $F2
    dec c                                         ; $6A0D: $0D
    ld a, a                                       ; $6A0E: $7F
    add b                                         ; $6A0F: $80
    jr nz, jr_017_69F1                            ; $6A10: $20 $DF

    jr nz, jr_017_69F3                            ; $6A12: $20 $DF

    jr nc, jr_017_69E5                            ; $6A14: $30 $CF

    inc c                                         ; $6A16: $0C
    rst RST_30                                    ; $6A17: $F7
    rra                                           ; $6A18: $1F
    db $E3                                        ; $6A19: $E3
    rst RST_20                                    ; $6A1A: $E7

jr_017_6A1B:
    jr jr_017_6A1B                                ; $6A1B: $18 $FE

    jr @-$08                                      ; $6A1D: $18 $F6

    add sp, -$3D                                  ; $6A1F: $E8 $C3
    nop                                           ; $6A21: $00
    rst RST_00                                    ; $6A22: $C7
    add d                                         ; $6A23: $82
    ld b, a                                       ; $6A24: $47
    add d                                         ; $6A25: $82
    db $EB                                        ; $6A26: $EB
    ld b, $5B                                     ; $6A27: $06 $5B
    and [hl]                                      ; $6A29: $A6
    or e                                          ; $6A2A: $B3
    ld c, [hl]                                    ; $6A2B: $4E
    and [hl]                                      ; $6A2C: $A6
    ld e, h                                       ; $6A2D: $5C
    db $FC                                        ; $6A2E: $FC
    nop                                           ; $6A2F: $00
    inc c                                         ; $6A30: $0C
    ld hl, sp+$0C                                 ; $6A31: $F8 $0C
    ld hl, sp+$18                                 ; $6A33: $F8 $18
    ldh a, [rNR23]                                ; $6A35: $F0 $18
    ldh a, [$FF30]                                ; $6A37: $F0 $30
    ldh [$FFE0], a                                ; $6A39: $E0 $E0
    ret nz                                        ; $6A3B: $C0

    ret nz                                        ; $6A3C: $C0

    nop                                           ; $6A3D: $00
    nop                                           ; $6A3E: $00
    nop                                           ; $6A3F: $00
    inc de                                        ; $6A40: $13
    inc c                                         ; $6A41: $0C
    rrca                                          ; $6A42: $0F
    nop                                           ; $6A43: $00
    add hl, bc                                    ; $6A44: $09
    ld b, $07                                     ; $6A45: $06 $07
    nop                                           ; $6A47: $00
    nop                                           ; $6A48: $00
    nop                                           ; $6A49: $00
    nop                                           ; $6A4A: $00
    nop                                           ; $6A4B: $00
    nop                                           ; $6A4C: $00
    nop                                           ; $6A4D: $00
    nop                                           ; $6A4E: $00
    nop                                           ; $6A4F: $00
    nop                                           ; $6A50: $00
    nop                                           ; $6A51: $00
    nop                                           ; $6A52: $00
    nop                                           ; $6A53: $00
    nop                                           ; $6A54: $00
    nop                                           ; $6A55: $00
    nop                                           ; $6A56: $00
    nop                                           ; $6A57: $00
    nop                                           ; $6A58: $00
    nop                                           ; $6A59: $00
    nop                                           ; $6A5A: $00
    nop                                           ; $6A5B: $00
    nop                                           ; $6A5C: $00
    nop                                           ; $6A5D: $00
    nop                                           ; $6A5E: $00
    nop                                           ; $6A5F: $00
    rst RST_38                                    ; $6A60: $FF
    nop                                           ; $6A61: $00
    rst RST_38                                    ; $6A62: $FF
    nop                                           ; $6A63: $00
    rst RST_38                                    ; $6A64: $FF
    nop                                           ; $6A65: $00
    rst RST_38                                    ; $6A66: $FF
    nop                                           ; $6A67: $00
    rst RST_38                                    ; $6A68: $FF
    nop                                           ; $6A69: $00
    rrca                                          ; $6A6A: $0F
    nop                                           ; $6A6B: $00
    inc bc                                        ; $6A6C: $03
    nop                                           ; $6A6D: $00
    ld bc, $0000                                  ; $6A6E: $01 $00 $00
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
    ld e, a                                       ; $6A80: $5F
    and a                                         ; $6A81: $A7
    rst RST_38                                    ; $6A82: $FF
    rlca                                          ; $6A83: $07
    rst RST_38                                    ; $6A84: $FF
    nop                                           ; $6A85: $00
    dec c                                         ; $6A86: $0D
    ldh a, [c]                                    ; $6A87: $F2
    db $FC                                        ; $6A88: $FC
    inc bc                                        ; $6A89: $03
    add a                                         ; $6A8A: $87
    ld a, b                                       ; $6A8B: $78
    rst RST_38                                    ; $6A8C: $FF
    nop                                           ; $6A8D: $00
    rst RST_38                                    ; $6A8E: $FF
    nop                                           ; $6A8F: $00
    ld hl, sp+$00                                 ; $6A90: $F8 $00
    ldh a, [rP1]                                  ; $6A92: $F0 $00
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
    rst RST_38                                    ; $6AA0: $FF
    ldh [rIE], a                                  ; $6AA1: $E0 $FF
    di                                            ; $6AA3: $F3
    rst RST_38                                    ; $6AA4: $FF
    rst RST_38                                    ; $6AA5: $FF
    rst RST_38                                    ; $6AA6: $FF
    rra                                           ; $6AA7: $1F
    ld a, a                                       ; $6AA8: $7F
    add e                                         ; $6AA9: $83
    rst RST_28                                    ; $6AAA: $EF
    db $10                                        ; $6AAB: $10
    ld [hl], a                                    ; $6AAC: $77
    adc b                                         ; $6AAD: $88
    call $F332                                    ; $6AAE: $CD $32 $F3
    inc c                                         ; $6AB1: $0C
    ld a, [$7D05]                                 ; $6AB2: $FA $05 $7D
    ld [bc], a                                    ; $6AB5: $02
    ld a, $00                                     ; $6AB6: $3E $00
    nop                                           ; $6AB8: $00
    nop                                           ; $6AB9: $00
    nop                                           ; $6ABA: $00
    nop                                           ; $6ABB: $00
    nop                                           ; $6ABC: $00

jr_017_6ABD:
    nop                                           ; $6ABD: $00
    nop                                           ; $6ABE: $00
    nop                                           ; $6ABF: $00
    add b                                         ; $6AC0: $80
    nop                                           ; $6AC1: $00
    ret nz                                        ; $6AC2: $C0

    add b                                         ; $6AC3: $80
    ldh [$FF80], a                                ; $6AC4: $E0 $80
    ret nc                                        ; $6AC6: $D0

    and b                                         ; $6AC7: $A0
    ret z                                         ; $6AC8: $C8

    or b                                          ; $6AC9: $B0
    ret z                                         ; $6ACA: $C8

    jr nc, jr_017_6ABD                            ; $6ACB: $30 $F0

    nop                                           ; $6ACD: $00
    add b                                         ; $6ACE: $80
    nop                                           ; $6ACF: $00
    add b                                         ; $6AD0: $80
    nop                                           ; $6AD1: $00
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
    nop                                           ; $6AE0: $00
    nop                                           ; $6AE1: $00
    nop                                           ; $6AE2: $00
    nop                                           ; $6AE3: $00
    nop                                           ; $6AE4: $00
    nop                                           ; $6AE5: $00
    nop                                           ; $6AE6: $00
    nop                                           ; $6AE7: $00
    nop                                           ; $6AE8: $00
    nop                                           ; $6AE9: $00
    nop                                           ; $6AEA: $00
    nop                                           ; $6AEB: $00
    nop                                           ; $6AEC: $00
    nop                                           ; $6AED: $00
    nop                                           ; $6AEE: $00
    nop                                           ; $6AEF: $00
    nop                                           ; $6AF0: $00
    nop                                           ; $6AF1: $00
    nop                                           ; $6AF2: $00
    nop                                           ; $6AF3: $00
    nop                                           ; $6AF4: $00
    nop                                           ; $6AF5: $00
    nop                                           ; $6AF6: $00
    nop                                           ; $6AF7: $00
    nop                                           ; $6AF8: $00
    nop                                           ; $6AF9: $00
    ld b, $00                                     ; $6AFA: $06 $00
    rra                                           ; $6AFC: $1F
    nop                                           ; $6AFD: $00
    ld a, l                                       ; $6AFE: $7D
    ld [bc], a                                    ; $6AFF: $02
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
    inc bc                                        ; $6B14: $03
    nop                                           ; $6B15: $00
    inc c                                         ; $6B16: $0C
    inc bc                                        ; $6B17: $03
    jr nc, jr_017_6B29                            ; $6B18: $30 $0F

    ret nz                                        ; $6B1A: $C0

    ccf                                           ; $6B1B: $3F
    and b                                         ; $6B1C: $A0
    ld e, a                                       ; $6B1D: $5F
    ret nc                                        ; $6B1E: $D0

    cpl                                           ; $6B1F: $2F
    nop                                           ; $6B20: $00
    nop                                           ; $6B21: $00
    nop                                           ; $6B22: $00
    nop                                           ; $6B23: $00
    nop                                           ; $6B24: $00
    nop                                           ; $6B25: $00
    nop                                           ; $6B26: $00
    nop                                           ; $6B27: $00
    nop                                           ; $6B28: $00

jr_017_6B29:
    nop                                           ; $6B29: $00
    nop                                           ; $6B2A: $00
    nop                                           ; $6B2B: $00
    nop                                           ; $6B2C: $00
    nop                                           ; $6B2D: $00
    nop                                           ; $6B2E: $00
    nop                                           ; $6B2F: $00
    nop                                           ; $6B30: $00
    nop                                           ; $6B31: $00
    inc bc                                        ; $6B32: $03
    nop                                           ; $6B33: $00
    rlca                                          ; $6B34: $07
    ld [bc], a                                    ; $6B35: $02
    add a                                         ; $6B36: $87
    ld bc, $807F                                  ; $6B37: $01 $7F $80
    ld b, b                                       ; $6B3A: $40
    cp a                                          ; $6B3B: $BF
    inc h                                         ; $6B3C: $24
    rst RST_18                                    ; $6B3D: $DF
    ld [hl+], a                                   ; $6B3E: $22
    rst RST_18                                    ; $6B3F: $DF
    nop                                           ; $6B40: $00
    nop                                           ; $6B41: $00
    nop                                           ; $6B42: $00
    nop                                           ; $6B43: $00
    nop                                           ; $6B44: $00
    nop                                           ; $6B45: $00
    ld c, $00                                     ; $6B46: $0E $00
    rrca                                          ; $6B48: $0F
    ld b, $11                                     ; $6B49: $06 $11
    rrca                                          ; $6B4B: $0F
    db $10                                        ; $6B4C: $10
    rrca                                          ; $6B4D: $0F
    jr nz, jr_017_6B6F                            ; $6B4E: $20 $1F

    cpl                                           ; $6B50: $2F
    db $10                                        ; $6B51: $10
    rst RST_38                                    ; $6B52: $FF
    dec bc                                        ; $6B53: $0B
    rst RST_18                                    ; $6B54: $DF
    db $EB                                        ; $6B55: $EB
    cp a                                          ; $6B56: $BF
    ret nz                                        ; $6B57: $C0

    rst RST_38                                    ; $6B58: $FF
    ld a, [de]                                    ; $6B59: $1A
    rst RST_38                                    ; $6B5A: $FF
    db $10                                        ; $6B5B: $10
    ld a, h                                       ; $6B5C: $7C
    add a                                         ; $6B5D: $87
    ld a, b                                       ; $6B5E: $78
    adc a                                         ; $6B5F: $8F
    nop                                           ; $6B60: $00
    nop                                           ; $6B61: $00
    nop                                           ; $6B62: $00
    nop                                           ; $6B63: $00
    inc bc                                        ; $6B64: $03
    nop                                           ; $6B65: $00
    inc bc                                        ; $6B66: $03
    ld bc, $0304                                  ; $6B67: $01 $04 $03
    add h                                         ; $6B6A: $84
    inc bc                                        ; $6B6B: $03
    ret z                                         ; $6B6C: $C8

    add a                                         ; $6B6D: $87
    ret z                                         ; $6B6E: $C8

jr_017_6B6F:
    add a                                         ; $6B6F: $87

jr_017_6B70:
    ret nc                                        ; $6B70: $D0

    rrca                                          ; $6B71: $0F

jr_017_6B72:
    ldh a, [$FFCF]                                ; $6B72: $F0 $CF

jr_017_6B74:
    ldh [$FFDF], a                                ; $6B74: $E0 $DF

jr_017_6B76:
    ldh [$FF1F], a                                ; $6B76: $E0 $1F

jr_017_6B78:
    pop bc                                        ; $6B78: $C1
    ccf                                           ; $6B79: $3F
    jp Jump_017_663E                              ; $6B7A: $C3 $3E $66


    sbc h                                         ; $6B7D: $9C
    ld l, $D8                                     ; $6B7E: $2E $D8
    nop                                           ; $6B80: $00
    nop                                           ; $6B81: $00
    nop                                           ; $6B82: $00
    nop                                           ; $6B83: $00
    nop                                           ; $6B84: $00
    nop                                           ; $6B85: $00
    nop                                           ; $6B86: $00
    nop                                           ; $6B87: $00
    add b                                         ; $6B88: $80
    nop                                           ; $6B89: $00
    ret nz                                        ; $6B8A: $C0

    add b                                         ; $6B8B: $80
    ld h, b                                       ; $6B8C: $60
    ret nz                                        ; $6B8D: $C0

    jr nc, jr_017_6B70                            ; $6B8E: $30 $E0

    jr nc, jr_017_6B72                            ; $6B90: $30 $E0

    jr nc, jr_017_6B74                            ; $6B92: $30 $E0

    jr nc, jr_017_6B76                            ; $6B94: $30 $E0

    jr nc, jr_017_6B78                            ; $6B96: $30 $E0

    ld h, b                                       ; $6B98: $60
    ret nz                                        ; $6B99: $C0

    ret nz                                        ; $6B9A: $C0

    add b                                         ; $6B9B: $80
    add b                                         ; $6B9C: $80
    nop                                           ; $6B9D: $00
    nop                                           ; $6B9E: $00
    nop                                           ; $6B9F: $00
    dec sp                                        ; $6BA0: $3B
    call nc, $CD32                                ; $6BA1: $D4 $32 $CD
    ld a, [bc]                                    ; $6BA4: $0A
    push af                                       ; $6BA5: $F5
    ld e, $E1                                     ; $6BA6: $1E $E1
    and $19                                       ; $6BA8: $E6 $19
    and a                                         ; $6BAA: $A7
    ld e, b                                       ; $6BAB: $58
    rst RST_38                                    ; $6BAC: $FF
    add hl, bc                                    ; $6BAD: $09
    rst RST_30                                    ; $6BAE: $F7
    jp hl                                         ; $6BAF: $E9


    rst RST_38                                    ; $6BB0: $FF
    pop hl                                        ; $6BB1: $E1
    rst RST_38                                    ; $6BB2: $FF
    rst RST_38                                    ; $6BB3: $FF
    rst RST_38                                    ; $6BB4: $FF

jr_017_6BB5:
    cp $FF                                        ; $6BB5: $FE $FF
    nop                                           ; $6BB7: $00
    xor l                                         ; $6BB8: $AD
    ld d, d                                       ; $6BB9: $52
    ld c, d                                       ; $6BBA: $4A
    or l                                          ; $6BBB: $B5
    ld [hl], e                                    ; $6BBC: $73
    adc h                                         ; $6BBD: $8C
    rst RST_38                                    ; $6BBE: $FF
    nop                                           ; $6BBF: $00
    add b                                         ; $6BC0: $80
    nop                                           ; $6BC1: $00
    ld [hl], b                                    ; $6BC2: $70
    add b                                         ; $6BC3: $80
    ld c, a                                       ; $6BC4: $4F
    or b                                          ; $6BC5: $B0
    ld c, d                                       ; $6BC6: $4A
    or l                                          ; $6BC7: $B5
    ld c, e                                       ; $6BC8: $4B
    or h                                          ; $6BC9: $B4
    swap l                                        ; $6BCA: $CB $35
    ei                                            ; $6BCC: $FB
    inc b                                         ; $6BCD: $04
    jp z, $CCB4                                   ; $6BCE: $CA $B4 $CC

    or b                                          ; $6BD1: $B0
    ret nc                                        ; $6BD2: $D0

    jr nz, jr_017_6BB5                            ; $6BD3: $20 $E0

    nop                                           ; $6BD5: $00
    ld b, b                                       ; $6BD6: $40
    add b                                         ; $6BD7: $80
    ret nz                                        ; $6BD8: $C0

    nop                                           ; $6BD9: $00
    ret nz                                        ; $6BDA: $C0

    nop                                           ; $6BDB: $00
    add b                                         ; $6BDC: $80
    nop                                           ; $6BDD: $00
    nop                                           ; $6BDE: $00
    nop                                           ; $6BDF: $00
    ldh a, [rP1]                                  ; $6BE0: $F0 $00
    ldh a, [$FF60]                                ; $6BE2: $F0 $60
    ldh [$FF80], a                                ; $6BE4: $E0 $80
    add b                                         ; $6BE6: $80
    nop                                           ; $6BE7: $00
    nop                                           ; $6BE8: $00
    nop                                           ; $6BE9: $00
    nop                                           ; $6BEA: $00
    nop                                           ; $6BEB: $00
    nop                                           ; $6BEC: $00
    nop                                           ; $6BED: $00
    nop                                           ; $6BEE: $00
    nop                                           ; $6BEF: $00
    nop                                           ; $6BF0: $00
    nop                                           ; $6BF1: $00
    nop                                           ; $6BF2: $00
    nop                                           ; $6BF3: $00
    nop                                           ; $6BF4: $00
    nop                                           ; $6BF5: $00
    nop                                           ; $6BF6: $00
    nop                                           ; $6BF7: $00
    nop                                           ; $6BF8: $00
    nop                                           ; $6BF9: $00
    nop                                           ; $6BFA: $00
    nop                                           ; $6BFB: $00
    nop                                           ; $6BFC: $00
    nop                                           ; $6BFD: $00
    nop                                           ; $6BFE: $00
    nop                                           ; $6BFF: $00
    rlca                                          ; $6C00: $07
    nop                                           ; $6C01: $00
    rrca                                          ; $6C02: $0F
    rlca                                          ; $6C03: $07
    rrca                                          ; $6C04: $0F
    ld bc, $0001                                  ; $6C05: $01 $01 $00
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
    db $FD                                        ; $6C20: $FD
    ld [bc], a                                    ; $6C21: $02
    ld a, l                                       ; $6C22: $7D
    ld [bc], a                                    ; $6C23: $02
    rra                                           ; $6C24: $1F
    nop                                           ; $6C25: $00
    rra                                           ; $6C26: $1F
    add hl, bc                                    ; $6C27: $09
    jr jr_017_6C39                                ; $6C28: $18 $0F

    ld a, h                                       ; $6C2A: $7C
    rlca                                          ; $6C2B: $07
    db $FC                                        ; $6C2C: $FC
    ld a, a                                       ; $6C2D: $7F
    add b                                         ; $6C2E: $80
    rst RST_38                                    ; $6C2F: $FF
    ldh [rIE], a                                  ; $6C30: $E0 $FF
    db $FC                                        ; $6C32: $FC
    rra                                           ; $6C33: $1F
    rra                                           ; $6C34: $1F
    inc bc                                        ; $6C35: $03
    ld b, $03                                     ; $6C36: $06 $03
    rrca                                          ; $6C38: $0F

jr_017_6C39:
    rlca                                          ; $6C39: $07
    rra                                           ; $6C3A: $1F
    inc c                                         ; $6C3B: $0C
    inc e                                         ; $6C3C: $1C
    nop                                           ; $6C3D: $00
    nop                                           ; $6C3E: $00
    nop                                           ; $6C3F: $00
    reti                                          ; $6C40: $D9


    cpl                                           ; $6C41: $2F
    reti                                          ; $6C42: $D9


    cpl                                           ; $6C43: $2F
    cp e                                          ; $6C44: $BB
    ld e, a                                       ; $6C45: $5F
    rst RST_38                                    ; $6C46: $FF
    ccf                                           ; $6C47: $3F
    ld a, a                                       ; $6C48: $7F
    rst RST_08                                    ; $6C49: $CF
    ccf                                           ; $6C4A: $3F
    jp nz, $817F                                  ; $6C4B: $C2 $7F $81

    ld a, [hl]                                    ; $6C4E: $7E
    sbc a                                         ; $6C4F: $9F
    ld a, a                                       ; $6C50: $7F
    add c                                         ; $6C51: $81
    ccf                                           ; $6C52: $3F
    ret nz                                        ; $6C53: $C0

    rra                                           ; $6C54: $1F
    ldh [rIE], a                                  ; $6C55: $E0 $FF
    ldh [$FFF9], a                                ; $6C57: $E0 $F9
    ld [hl], $3F                                  ; $6C59: $36 $3F
    nop                                           ; $6C5B: $00
    rlca                                          ; $6C5C: $07
    nop                                           ; $6C5D: $00
    nop                                           ; $6C5E: $00
    nop                                           ; $6C5F: $00
    db $E3                                        ; $6C60: $E3
    inc e                                         ; $6C61: $1C
    ei                                            ; $6C62: $FB
    ld h, l                                       ; $6C63: $65
    rst RST_18                                    ; $6C64: $DF
    ld a, c                                       ; $6C65: $79
    rst RST_20                                    ; $6C66: $E7
    cp a                                          ; $6C67: $BF
    pop hl                                        ; $6C68: $E1
    cp a                                          ; $6C69: $BF
    ldh a, [$FF1F]                                ; $6C6A: $F0 $1F
    ldh a, [rIE]                                  ; $6C6C: $F0 $FF
    nop                                           ; $6C6E: $00
    rst RST_38                                    ; $6C6F: $FF
    add b                                         ; $6C70: $80
    rst RST_38                                    ; $6C71: $FF
    ldh a, [$FF7F]                                ; $6C72: $F0 $7F
    ld hl, sp+$0F                                 ; $6C74: $F8 $0F
    di                                            ; $6C76: $F3
    rra                                           ; $6C77: $1F
    rst RST_28                                    ; $6C78: $EF
    inc a                                         ; $6C79: $3C
    rst RST_38                                    ; $6C7A: $FF
    jr nc, @+$01                                  ; $6C7B: $30 $FF

    nop                                           ; $6C7D: $00
    nop                                           ; $6C7E: $00
    nop                                           ; $6C7F: $00
    ld hl, sp+$0F                                 ; $6C80: $F8 $0F
    ld hl, sp+$0F                                 ; $6C82: $F8 $0F
    ld hl, sp-$71                                 ; $6C84: $F8 $8F
    db $FC                                        ; $6C86: $FC
    rst RST_10                                    ; $6C87: $D7
    ld a, a                                       ; $6C88: $7F
    ret nz                                        ; $6C89: $C0

    ccf                                           ; $6C8A: $3F
    add sp, $1F                                   ; $6C8B: $E8 $1F
    ldh a, [$FF1F]                                ; $6C8D: $F0 $1F
    db $EB                                        ; $6C8F: $EB
    rrca                                          ; $6C90: $0F
    rst RST_30                                    ; $6C91: $F7
    rra                                           ; $6C92: $1F
    rst RST_20                                    ; $6C93: $E7
    ld e, a                                       ; $6C94: $5F
    rst RST_20                                    ; $6C95: $E7
    cp a                                          ; $6C96: $BF
    ldh [$FFFD], a                                ; $6C97: $E0 $FD
    jp nz, $3AC5                                  ; $6C99: $C2 $C5 $3A

    cp $01                                        ; $6C9C: $FE $01
    rst RST_38                                    ; $6C9E: $FF
    nop                                           ; $6C9F: $00
    db $FD                                        ; $6CA0: $FD
    ld [bc], a                                    ; $6CA1: $02
    ld a, l                                       ; $6CA2: $7D
    ld [bc], a                                    ; $6CA3: $02
    rra                                           ; $6CA4: $1F
    nop                                           ; $6CA5: $00
    ld b, $00                                     ; $6CA6: $06 $00
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
    nop                                           ; $6CBC: $00
    nop                                           ; $6CBD: $00
    nop                                           ; $6CBE: $00
    nop                                           ; $6CBF: $00
    reti                                          ; $6CC0: $D9


    cpl                                           ; $6CC1: $2F
    reti                                          ; $6CC2: $D9


    cpl                                           ; $6CC3: $2F
    cp e                                          ; $6CC4: $BB
    ld e, a                                       ; $6CC5: $5F
    rst RST_38                                    ; $6CC6: $FF
    ccf                                           ; $6CC7: $3F
    ccf                                           ; $6CC8: $3F
    rrca                                          ; $6CC9: $0F
    ccf                                           ; $6CCA: $3F
    inc bc                                        ; $6CCB: $03
    ld l, e                                       ; $6CCC: $6B
    inc d                                         ; $6CCD: $14
    ld e, e                                       ; $6CCE: $5B
    inc h                                         ; $6CCF: $24
    ld l, e                                       ; $6CD0: $6B
    dec d                                         ; $6CD1: $15
    ccf                                           ; $6CD2: $3F
    ld bc, $001F                                  ; $6CD3: $01 $1F $00
    rra                                           ; $6CD6: $1F
    nop                                           ; $6CD7: $00
    add hl, bc                                    ; $6CD8: $09
    ld b, $0F                                     ; $6CD9: $06 $0F
    nop                                           ; $6CDB: $00
    rlca                                          ; $6CDC: $07
    nop                                           ; $6CDD: $00
    nop                                           ; $6CDE: $00
    nop                                           ; $6CDF: $00
    ld h, e                                       ; $6CE0: $63
    rst RST_18                                    ; $6CE1: $DF
    ld h, e                                       ; $6CE2: $63
    rst RST_18                                    ; $6CE3: $DF
    ld [hl], a                                    ; $6CE4: $77
    rst RST_18                                    ; $6CE5: $DF
    rst RST_38                                    ; $6CE6: $FF
    cp a                                          ; $6CE7: $BF
    rst RST_38                                    ; $6CE8: $FF
    add b                                         ; $6CE9: $80
    sbc a                                         ; $6CEA: $9F
    ld [$00FF], sp                                ; $6CEB: $08 $FF $00
    cp $FD                                        ; $6CEE: $FE $FD
    db $FD                                        ; $6CF0: $FD
    ld a, [$FDFE]                                 ; $6CF1: $FA $FE $FD
    rst RST_38                                    ; $6CF4: $FF
    nop                                           ; $6CF5: $00
    rst RST_38                                    ; $6CF6: $FF
    nop                                           ; $6CF7: $00
    rst RST_38                                    ; $6CF8: $FF
    nop                                           ; $6CF9: $00
    rst RST_38                                    ; $6CFA: $FF
    nop                                           ; $6CFB: $00
    rst RST_38                                    ; $6CFC: $FF
    nop                                           ; $6CFD: $00
    nop                                           ; $6CFE: $00
    nop                                           ; $6CFF: $00
    ld a, b                                       ; $6D00: $78
    adc a                                         ; $6D01: $8F
    ld a, b                                       ; $6D02: $78
    adc a                                         ; $6D03: $8F
    ld a, b                                       ; $6D04: $78
    adc a                                         ; $6D05: $8F
    db $FC                                        ; $6D06: $FC
    rla                                           ; $6D07: $17
    rst RST_38                                    ; $6D08: $FF
    nop                                           ; $6D09: $00
    rst RST_38                                    ; $6D0A: $FF
    ret c                                         ; $6D0B: $D8

    rst RST_38                                    ; $6D0C: $FF
    nop                                           ; $6D0D: $00
    rst RST_18                                    ; $6D0E: $DF
    dec hl                                        ; $6D0F: $2B
    ld c, a                                       ; $6D10: $4F
    or a                                          ; $6D11: $B7
    rst RST_18                                    ; $6D12: $DF
    daa                                           ; $6D13: $27
    rst RST_38                                    ; $6D14: $FF
    rlca                                          ; $6D15: $07
    rst RST_38                                    ; $6D16: $FF
    nop                                           ; $6D17: $00
    db $FD                                        ; $6D18: $FD
    ld [bc], a                                    ; $6D19: $02
    dec b                                         ; $6D1A: $05
    ld a, [$01FE]                                 ; $6D1B: $FA $FE $01
    rst RST_38                                    ; $6D1E: $FF
    nop                                           ; $6D1F: $00
    ld b, $00                                     ; $6D20: $06 $00
    rlca                                          ; $6D22: $07
    ld [bc], a                                    ; $6D23: $02
    inc bc                                        ; $6D24: $03
    ld bc, $0103                                  ; $6D25: $01 $03 $01
    ld bc, $0100                                  ; $6D28: $01 $00 $01
    nop                                           ; $6D2B: $00
    nop                                           ; $6D2C: $00
    nop                                           ; $6D2D: $00
    ld b, $00                                     ; $6D2E: $06 $00
    rlca                                          ; $6D30: $07
    ld [bc], a                                    ; $6D31: $02
    inc bc                                        ; $6D32: $03
    ld bc, $0001                                  ; $6D33: $01 $01 $00
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
    ld b, $00                                     ; $6D40: $06 $00
    rlca                                          ; $6D42: $07
    ld [bc], a                                    ; $6D43: $02
    rlca                                          ; $6D44: $07
    ld [bc], a                                    ; $6D45: $02
    inc bc                                        ; $6D46: $03
    ld bc, $0103                                  ; $6D47: $01 $03 $01
    ld h, e                                       ; $6D4A: $63
    ld bc, $2173                                  ; $6D4B: $01 $73 $21
    ld [hl], e                                    ; $6D4E: $73
    ld hl, $113B                                  ; $6D4F: $21 $3B $11
    dec sp                                        ; $6D52: $3B
    ld de, $183D                                  ; $6D53: $11 $3D $18
    dec a                                         ; $6D56: $3D
    jr jr_017_6D90                                ; $6D57: $18 $37

    inc e                                         ; $6D59: $1C
    or a                                          ; $6D5A: $B7
    inc e                                         ; $6D5B: $1C
    di                                            ; $6D5C: $F3
    sbc [hl]                                      ; $6D5D: $9E
    di                                            ; $6D5E: $F3
    sbc $80                                       ; $6D5F: $DE $80
    nop                                           ; $6D61: $00
    add b                                         ; $6D62: $80
    nop                                           ; $6D63: $00
    pop bc                                        ; $6D64: $C1
    add b                                         ; $6D65: $80
    pop bc                                        ; $6D66: $C1
    add b                                         ; $6D67: $80
    pop hl                                        ; $6D68: $E1
    ret nz                                        ; $6D69: $C0

jr_017_6D6A:
    db $E3                                        ; $6D6A: $E3
    ret nz                                        ; $6D6B: $C0

    db $FC                                        ; $6D6C: $FC
    db $E3                                        ; $6D6D: $E3
    cp b                                          ; $6D6E: $B8
    rst RST_20                                    ; $6D6F: $E7
    cp h                                          ; $6D70: $BC
    di                                            ; $6D71: $F3
    sbc h                                         ; $6D72: $9C
    di                                            ; $6D73: $F3
    sbc [hl]                                      ; $6D74: $9E
    ld sp, hl                                     ; $6D75: $F9
    adc [hl]                                      ; $6D76: $8E
    ld sp, hl                                     ; $6D77: $F9
    adc a                                         ; $6D78: $8F
    db $FC                                        ; $6D79: $FC
    rlca                                          ; $6D7A: $07
    db $FC                                        ; $6D7B: $FC
    inc bc                                        ; $6D7C: $03
    cp $03                                        ; $6D7D: $FE $03

jr_017_6D7F:
    cp $03                                        ; $6D7F: $FE $03
    nop                                           ; $6D81: $00
    rrca                                          ; $6D82: $0F
    inc bc                                        ; $6D83: $03
    ccf                                           ; $6D84: $3F
    rrca                                          ; $6D85: $0F
    ld a, a                                       ; $6D86: $7F
    ld [hl], $7F                                  ; $6D87: $36 $7F
    jr jr_017_6D6A                                ; $6D89: $18 $DF

    ld h, [hl]                                    ; $6D8B: $66
    rst RST_18                                    ; $6D8C: $DF
    ld h, l                                       ; $6D8D: $65
    rst RST_38                                    ; $6D8E: $FF
    ld e, c                                       ; $6D8F: $59

jr_017_6D90:
    rst RST_38                                    ; $6D90: $FF
    dec bc                                        ; $6D91: $0B
    ccf                                           ; $6D92: $3F
    jp $E71F                                      ; $6D93: $C3 $1F $E7


    dec a                                         ; $6D96: $3D
    rst RST_20                                    ; $6D97: $E7
    sbc l                                         ; $6D98: $9D
    rst RST_28                                    ; $6D99: $EF
    ld e, c                                       ; $6D9A: $59
    rst RST_28                                    ; $6D9B: $EF
    ld sp, hl                                     ; $6D9C: $F9

jr_017_6D9D:
    rst RST_18                                    ; $6D9D: $DF
    pop af                                        ; $6D9E: $F1
    rst RST_18                                    ; $6D9F: $DF
    ld b, $00                                     ; $6DA0: $06 $00
    dec b                                         ; $6DA2: $05
    ld [bc], a                                    ; $6DA3: $02
    ld [bc], a                                    ; $6DA4: $02
    ld bc, $0001                                  ; $6DA5: $01 $01 $00
    nop                                           ; $6DA8: $00
    nop                                           ; $6DA9: $00
    ld bc, $0100                                  ; $6DAA: $01 $00 $01
    nop                                           ; $6DAD: $00
    jp $E200                                      ; $6DAE: $C3 $00 $E2


    pop bc                                        ; $6DB1: $C1
    db $FC                                        ; $6DB2: $FC
    add e                                         ; $6DB3: $83
    ei                                            ; $6DB4: $FB
    ld d, h                                       ; $6DB5: $54
    db $FC                                        ; $6DB6: $FC
    ld b, e                                       ; $6DB7: $43
    ldh a, [$FF8F]                                ; $6DB8: $F0 $8F
    ret z                                         ; $6DBA: $C8

    or a                                          ; $6DBB: $B7
    rst RST_08                                    ; $6DBC: $CF
    or c                                          ; $6DBD: $B1
    rst RST_08                                    ; $6DBE: $CF
    or h                                          ; $6DBF: $B4
    ld h, b                                       ; $6DC0: $60
    nop                                           ; $6DC1: $00
    ld [hl], b                                    ; $6DC2: $70
    jr nz, jr_017_6D9D                            ; $6DC3: $20 $D8

    jr nc, jr_017_6D7F                            ; $6DC5: $30 $B8

    ld d, b                                       ; $6DC7: $50
    ld hl, sp+$10                                 ; $6DC8: $F8 $10
    sbc b                                         ; $6DCA: $98
    ld h, b                                       ; $6DCB: $60
    add sp, $10                                   ; $6DCC: $E8 $10
    jr @-$1E                                      ; $6DCE: $18 $E0

    adc h                                         ; $6DD0: $8C
    ld [hl], b                                    ; $6DD1: $70
    ld a, h                                       ; $6DD2: $7C
    adc b                                         ; $6DD3: $88
    call z, Call_000_0C38                         ; $6DD4: $CC $38 $0C
    ld hl, sp+$0C                                 ; $6DD7: $F8 $0C
    ld hl, sp+$0C                                 ; $6DD9: $F8 $0C
    ld hl, sp+$0C                                 ; $6DDB: $F8 $0C
    ld hl, sp-$74                                 ; $6DDD: $F8 $8C
    ld hl, sp-$32                                 ; $6DDF: $F8 $CE
    or l                                          ; $6DE1: $B5
    db $DD                                        ; $6DE2: $DD
    xor e                                         ; $6DE3: $AB
    sbc $AB                                       ; $6DE4: $DE $AB
    cp a                                          ; $6DE6: $BF
    ld e, b                                       ; $6DE7: $58
    rst RST_38                                    ; $6DE8: $FF
    ld a, [de]                                    ; $6DE9: $1A
    rst RST_28                                    ; $6DEA: $EF
    dec sp                                        ; $6DEB: $3B
    rst RST_28                                    ; $6DEC: $EF
    ld a, [hl-]                                   ; $6DED: $3A
    rst RST_08                                    ; $6DEE: $CF
    ld a, c                                       ; $6DEF: $79
    rst RST_08                                    ; $6DF0: $CF
    ld a, e                                       ; $6DF1: $7B
    adc l                                         ; $6DF2: $8D
    rst RST_38                                    ; $6DF3: $FF
    adc e                                         ; $6DF4: $8B
    cp $03                                        ; $6DF5: $FE $03
    cp $07                                        ; $6DF7: $FE $07
    db $FC                                        ; $6DF9: $FC
    rlca                                          ; $6DFA: $07
    db $FD                                        ; $6DFB: $FD
    add hl, bc                                    ; $6DFC: $09
    rst RST_38                                    ; $6DFD: $FF
    inc bc                                        ; $6DFE: $03
    cp $FF                                        ; $6DFF: $FE $FF
    ld a, b                                       ; $6E01: $78
    ld sp, hl                                     ; $6E02: $F9
    ld b, $F9                                     ; $6E03: $06 $F9
    sub [hl]                                      ; $6E05: $96
    ld a, [hl]                                    ; $6E06: $7E
    sbc b                                         ; $6E07: $98
    cp $30                                        ; $6E08: $FE $30
    db $FC                                        ; $6E0A: $FC
    db $10                                        ; $6E0B: $10
    db $FC                                        ; $6E0C: $FC
    ld b, b                                       ; $6E0D: $40
    db $F4                                        ; $6E0E: $F4
    adc b                                         ; $6E0F: $88
    db $E4                                        ; $6E10: $E4
    sbc b                                         ; $6E11: $98
    xor h                                         ; $6E12: $AC
    ld d, b                                       ; $6E13: $50
    ret z                                         ; $6E14: $C8

    jr nc, jr_017_6E4F                            ; $6E15: $30 $38

    ret nz                                        ; $6E17: $C0

    ld h, b                                       ; $6E18: $60
    add b                                         ; $6E19: $80
    ldh [rLCDC], a                                ; $6E1A: $E0 $40
    ret nz                                        ; $6E1C: $C0

    add b                                         ; $6E1D: $80
    add b                                         ; $6E1E: $80
    nop                                           ; $6E1F: $00
    pop af                                        ; $6E20: $F1
    cp a                                          ; $6E21: $BF
    ldh [$FF3F], a                                ; $6E22: $E0 $3F
    ret nz                                        ; $6E24: $C0

    ld a, a                                       ; $6E25: $7F
    ret nz                                        ; $6E26: $C0

    ld a, a                                       ; $6E27: $7F
    add b                                         ; $6E28: $80
    rst RST_38                                    ; $6E29: $FF
    add b                                         ; $6E2A: $80
    rst RST_38                                    ; $6E2B: $FF
    nop                                           ; $6E2C: $00
    rst RST_38                                    ; $6E2D: $FF
    nop                                           ; $6E2E: $00
    rst RST_38                                    ; $6E2F: $FF
    nop                                           ; $6E30: $00
    rst RST_38                                    ; $6E31: $FF
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
    or c                                          ; $6E40: $B1
    rst RST_38                                    ; $6E41: $FF
    pop de                                        ; $6E42: $D1
    ld a, a                                       ; $6E43: $7F
    ret nz                                        ; $6E44: $C0

    ld a, a                                       ; $6E45: $7F
    ldh [$FF3F], a                                ; $6E46: $E0 $3F
    ldh [$FFBF], a                                ; $6E48: $E0 $BF
    sub b                                         ; $6E4A: $90
    rst RST_38                                    ; $6E4B: $FF
    ret nz                                        ; $6E4C: $C0

    ld a, a                                       ; $6E4D: $7F
    ld h, b                                       ; $6E4E: $60

jr_017_6E4F:
    ccf                                           ; $6E4F: $3F
    nop                                           ; $6E50: $00
    nop                                           ; $6E51: $00
    nop                                           ; $6E52: $00
    nop                                           ; $6E53: $00
    nop                                           ; $6E54: $00
    nop                                           ; $6E55: $00
    nop                                           ; $6E56: $00
    nop                                           ; $6E57: $00
    nop                                           ; $6E58: $00
    nop                                           ; $6E59: $00
    nop                                           ; $6E5A: $00
    nop                                           ; $6E5B: $00
    nop                                           ; $6E5C: $00
    nop                                           ; $6E5D: $00
    nop                                           ; $6E5E: $00
    nop                                           ; $6E5F: $00
    ld bc, $01FF                                  ; $6E60: $01 $FF $01
    rst RST_38                                    ; $6E63: $FF
    nop                                           ; $6E64: $00
    rst RST_38                                    ; $6E65: $FF
    nop                                           ; $6E66: $00
    rst RST_38                                    ; $6E67: $FF
    nop                                           ; $6E68: $00
    rst RST_38                                    ; $6E69: $FF
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
    nop                                           ; $6E78: $00
    nop                                           ; $6E79: $00
    nop                                           ; $6E7A: $00
    nop                                           ; $6E7B: $00
    nop                                           ; $6E7C: $00
    nop                                           ; $6E7D: $00
    nop                                           ; $6E7E: $00
    nop                                           ; $6E7F: $00
    ld b, $FC                                     ; $6E80: $06 $FC
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
    nop                                           ; $6E8E: $00
    nop                                           ; $6E8F: $00
    nop                                           ; $6E90: $00
    nop                                           ; $6E91: $00
    nop                                           ; $6E92: $00
    nop                                           ; $6E93: $00
    nop                                           ; $6E94: $00
    nop                                           ; $6E95: $00
    nop                                           ; $6E96: $00
    nop                                           ; $6E97: $00
    nop                                           ; $6E98: $00
    nop                                           ; $6E99: $00
    nop                                           ; $6E9A: $00
    nop                                           ; $6E9B: $00
    nop                                           ; $6E9C: $00
    nop                                           ; $6E9D: $00
    nop                                           ; $6E9E: $00
    nop                                           ; $6E9F: $00
    inc c                                         ; $6EA0: $0C
    nop                                           ; $6EA1: $00
    ld e, $04                                     ; $6EA2: $1E $04
    rra                                           ; $6EA4: $1F
    inc b                                         ; $6EA5: $04
    rrca                                          ; $6EA6: $0F
    ld [bc], a                                    ; $6EA7: $02
    rrca                                          ; $6EA8: $0F
    ld [bc], a                                    ; $6EA9: $02
    rlca                                          ; $6EAA: $07
    inc bc                                        ; $6EAB: $03
    rst RST_00                                    ; $6EAC: $C7
    inc bc                                        ; $6EAD: $03
    and $43                                       ; $6EAE: $E6 $43
    halt                                          ; $6EB0: $76
    inc hl                                        ; $6EB1: $23
    ld a, [hl]                                    ; $6EB2: $7E
    inc sp                                        ; $6EB3: $33
    ld a, $1B                                     ; $6EB4: $3E $1B
    ld [hl], $1F                                  ; $6EB6: $36 $1F
    ld a, [de]                                    ; $6EB8: $1A
    rrca                                          ; $6EB9: $0F
    ret c                                         ; $6EBA: $D8

    rrca                                          ; $6EBB: $0F
    db $FC                                        ; $6EBC: $FC
    ld b, a                                       ; $6EBD: $47
    ld a, h                                       ; $6EBE: $7C
    scf                                           ; $6EBF: $37
    ret nz                                        ; $6EC0: $C0

    nop                                           ; $6EC1: $00
    ldh [rLCDC], a                                ; $6EC2: $E0 $40
    ldh [rLCDC], a                                ; $6EC4: $E0 $40
    ld [hl], b                                    ; $6EC6: $70
    jr nz, jr_017_6F39                            ; $6EC7: $20 $70

    jr nz, @+$7A                                  ; $6EC9: $20 $78

jr_017_6ECB:
    jr nc, jr_017_6F45                            ; $6ECB: $30 $78

jr_017_6ECD:
    jr nc, jr_017_6ECB                            ; $6ECD: $30 $FC

    jr c, jr_017_6ECD                             ; $6ECF: $38 $FC

    jr c, jr_017_6F52                             ; $6ED1: $38 $7F

    cp h                                          ; $6ED3: $BC
    or $1D                                        ; $6ED4: $F6 $1D
    or a                                          ; $6ED6: $B7
    ld e, [hl]                                    ; $6ED7: $5E
    di                                            ; $6ED8: $F3
    sbc [hl]                                      ; $6ED9: $9E
    di                                            ; $6EDA: $F3
    sbc a                                         ; $6EDB: $9F
    ld [hl], c                                    ; $6EDC: $71
    rst RST_18                                    ; $6EDD: $DF
    ld [hl], c                                    ; $6EDE: $71
    rst RST_18                                    ; $6EDF: $DF
    nop                                           ; $6EE0: $00
    nop                                           ; $6EE1: $00
    add c                                         ; $6EE2: $81
    nop                                           ; $6EE3: $00
    ld b, c                                       ; $6EE4: $41
    add b                                         ; $6EE5: $80
    ld b, e                                       ; $6EE6: $43
    add c                                         ; $6EE7: $81
    ld h, e                                       ; $6EE8: $63
    add c                                         ; $6EE9: $81
    rst RST_18                                    ; $6EEA: $DF
    inc hl                                        ; $6EEB: $23
    add [hl]                                      ; $6EEC: $86
    ld a, e                                       ; $6EED: $7B
    adc $B7                                       ; $6EEE: $CE $B7
    call z, Call_017_78B7                         ; $6EF0: $CC $B7 $78
    rst RST_08                                    ; $6EF3: $CF
    ld a, b                                       ; $6EF4: $78
    rst RST_08                                    ; $6EF5: $CF
    jr nc, @+$01                                  ; $6EF6: $30 $FF

    jr nc, @+$01                                  ; $6EF8: $30 $FF

    nop                                           ; $6EFA: $00
    rst RST_38                                    ; $6EFB: $FF
    nop                                           ; $6EFC: $00
    rst RST_38                                    ; $6EFD: $FF
    nop                                           ; $6EFE: $00
    rst RST_38                                    ; $6EFF: $FF
    inc c                                         ; $6F00: $0C
    nop                                           ; $6F01: $00
    inc e                                         ; $6F02: $1C
    ld [$081C], sp                                ; $6F03: $08 $1C $08
    jr c, jr_017_6F18                             ; $6F06: $38 $10

jr_017_6F08:
    jr c, jr_017_6F1A                             ; $6F08: $38 $10

    ld a, b                                       ; $6F0A: $78
    jr nc, jr_017_6F86                            ; $6F0B: $30 $79

    jr nc, jr_017_6F08                            ; $6F0D: $30 $F9

    ld [hl], b                                    ; $6F0F: $70
    ei                                            ; $6F10: $FB
    ld [hl], c                                    ; $6F11: $71
    ei                                            ; $6F12: $FB
    pop af                                        ; $6F13: $F1
    or a                                          ; $6F14: $B7
    db $E3                                        ; $6F15: $E3
    or a                                          ; $6F16: $B7
    db $E3                                        ; $6F17: $E3

jr_017_6F18:
    dec a                                         ; $6F18: $3D
    rst RST_20                                    ; $6F19: $E7

jr_017_6F1A:
    dec a                                         ; $6F1A: $3D
    rst RST_20                                    ; $6F1B: $E7
    add hl, sp                                    ; $6F1C: $39
    rst RST_28                                    ; $6F1D: $EF
    add hl, sp                                    ; $6F1E: $39
    rst RST_28                                    ; $6F1F: $EF
    ret nz                                        ; $6F20: $C0

    nop                                           ; $6F21: $00
    ret nz                                        ; $6F22: $C0

    add b                                         ; $6F23: $80
    ret nz                                        ; $6F24: $C0

    add b                                         ; $6F25: $80
    add b                                         ; $6F26: $80
    nop                                           ; $6F27: $00
    add b                                         ; $6F28: $80
    nop                                           ; $6F29: $00
    add b                                         ; $6F2A: $80
    nop                                           ; $6F2B: $00
    adc h                                         ; $6F2C: $8C
    nop                                           ; $6F2D: $00
    sbc h                                         ; $6F2E: $9C
    ld [$10B8], sp                                ; $6F2F: $08 $B8 $10
    ld hl, sp+$30                                 ; $6F32: $F8 $30
    ldh a, [$FF60]                                ; $6F34: $F0 $60
    or b                                          ; $6F36: $B0
    ldh [$FF60], a                                ; $6F37: $E0 $60

jr_017_6F39:
    ret nz                                        ; $6F39: $C0

    ld l, h                                       ; $6F3A: $6C
    ret nz                                        ; $6F3B: $C0

    db $FC                                        ; $6F3C: $FC
    adc b                                         ; $6F3D: $88
    ld hl, sp-$50                                 ; $6F3E: $F8 $B0
    jr nz, @+$01                                  ; $6F40: $20 $FF

    jr nz, @+$01                                  ; $6F42: $20 $FF

    nop                                           ; $6F44: $00

jr_017_6F45:
    rst RST_38                                    ; $6F45: $FF
    nop                                           ; $6F46: $00
    rst RST_38                                    ; $6F47: $FF
    nop                                           ; $6F48: $00
    rst RST_38                                    ; $6F49: $FF
    nop                                           ; $6F4A: $00
    rst RST_38                                    ; $6F4B: $FF
    nop                                           ; $6F4C: $00
    rst RST_38                                    ; $6F4D: $FF
    nop                                           ; $6F4E: $00
    rst RST_38                                    ; $6F4F: $FF
    nop                                           ; $6F50: $00
    nop                                           ; $6F51: $00

jr_017_6F52:
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
    nop                                           ; $6F5E: $00
    nop                                           ; $6F5F: $00
    ld de, $11FF                                  ; $6F60: $11 $FF $11
    rst RST_38                                    ; $6F63: $FF
    nop                                           ; $6F64: $00
    rst RST_38                                    ; $6F65: $FF
    nop                                           ; $6F66: $00
    rst RST_38                                    ; $6F67: $FF
    nop                                           ; $6F68: $00
    rst RST_38                                    ; $6F69: $FF
    ld bc, $00FF                                  ; $6F6A: $01 $FF $00
    rst RST_38                                    ; $6F6D: $FF
    nop                                           ; $6F6E: $00
    rst RST_38                                    ; $6F6F: $FF
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
    nop                                           ; $6F7A: $00
    nop                                           ; $6F7B: $00
    nop                                           ; $6F7C: $00
    nop                                           ; $6F7D: $00
    nop                                           ; $6F7E: $00
    nop                                           ; $6F7F: $00
    ld [hl-], a                                   ; $6F80: $32
    rra                                           ; $6F81: $1F

jr_017_6F82:
    jr jr_017_6F93                                ; $6F82: $18 $0F

    inc c                                         ; $6F84: $0C
    rlca                                          ; $6F85: $07

jr_017_6F86:
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

jr_017_6F93:
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
    jr nc, jr_017_6F82                            ; $6FA0: $30 $E0

    ld [hl], b                                    ; $6FA2: $70
    ret nz                                        ; $6FA3: $C0

    ldh a, [$FF80]                                ; $6FA4: $F0 $80
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
    nop                                           ; $6FB8: $00
    nop                                           ; $6FB9: $00
    nop                                           ; $6FBA: $00
    nop                                           ; $6FBB: $00
    nop                                           ; $6FBC: $00
    nop                                           ; $6FBD: $00
    nop                                           ; $6FBE: $00
    nop                                           ; $6FBF: $00
    ldh [rP1], a                                  ; $6FC0: $E0 $00
    db $FC                                        ; $6FC2: $FC
    nop                                           ; $6FC3: $00
    ld a, [hl]                                    ; $6FC4: $7E
    nop                                           ; $6FC5: $00
    ld a, e                                       ; $6FC6: $7B
    inc b                                         ; $6FC7: $04
    ld [hl], $09                                  ; $6FC8: $36 $09
    inc a                                         ; $6FCA: $3C
    inc bc                                        ; $6FCB: $03
    inc c                                         ; $6FCC: $0C
    inc bc                                        ; $6FCD: $03
    ld b, $03                                     ; $6FCE: $06 $03
    rlca                                          ; $6FD0: $07
    inc bc                                        ; $6FD1: $03
    inc bc                                        ; $6FD2: $03
    ld bc, $0103                                  ; $6FD3: $01 $03 $01
    ld bc, $0300                                  ; $6FD6: $01 $00 $03
    nop                                           ; $6FD9: $00
    ld [bc], a                                    ; $6FDA: $02
    ld bc, $0106                                  ; $6FDB: $01 $06 $01
    rlca                                          ; $6FDE: $07
    nop                                           ; $6FDF: $00
    db $FC                                        ; $6FE0: $FC
    nop                                           ; $6FE1: $00
    ld [bc], a                                    ; $6FE2: $02
    db $FC                                        ; $6FE3: $FC
    ld [bc], a                                    ; $6FE4: $02
    db $FC                                        ; $6FE5: $FC
    inc bc                                        ; $6FE6: $03
    db $FC                                        ; $6FE7: $FC
    add d                                         ; $6FE8: $82
    db $FD                                        ; $6FE9: $FD
    inc d                                         ; $6FEA: $14
    ei                                            ; $6FEB: $FB
    db $F4                                        ; $6FEC: $F4
    ei                                            ; $6FED: $FB
    add sp, -$09                                  ; $6FEE: $E8 $F7
    db $FC                                        ; $6FF0: $FC
    rst RST_30                                    ; $6FF1: $F7
    rst RST_38                                    ; $6FF2: $FF
    rst RST_28                                    ; $6FF3: $EF
    rst RST_38                                    ; $6FF4: $FF
    ld b, a                                       ; $6FF5: $47
    rst RST_38                                    ; $6FF6: $FF
    add hl, sp                                    ; $6FF7: $39
    rst RST_38                                    ; $6FF8: $FF
    ld a, [hl]                                    ; $6FF9: $7E
    rst RST_38                                    ; $6FFA: $FF

jr_017_6FFB:
    inc a                                         ; $6FFB: $3C
    cp $09                                        ; $6FFC: $FE $09
    db $FD                                        ; $6FFE: $FD
    ld [bc], a                                    ; $6FFF: $02
    rst RST_00                                    ; $7000: $C7
    nop                                           ; $7001: $00
    ccf                                           ; $7002: $3F
    rst RST_00                                    ; $7003: $C7
    inc e                                         ; $7004: $1C
    db $E3                                        ; $7005: $E3
    rra                                           ; $7006: $1F
    db $E4                                        ; $7007: $E4
    sbc a                                         ; $7008: $9F
    push hl                                       ; $7009: $E5
    cp a                                          ; $700A: $BF
    call nz, $CBFF                                ; $700B: $C4 $FF $CB
    cp $8B                                        ; $700E: $FE $8B
    db $FC                                        ; $7010: $FC
    rla                                           ; $7011: $17
    db $FC                                        ; $7012: $FC
    scf                                           ; $7013: $37
    db $FC                                        ; $7014: $FC
    rlca                                          ; $7015: $07
    ld a, h                                       ; $7016: $7C

jr_017_7017:
    add a                                         ; $7017: $87
    cp h                                          ; $7018: $BC
    ld d, e                                       ; $7019: $53
    ccf                                           ; $701A: $3F
    call c, Call_000_3FFF                         ; $701B: $DC $FF $3F
    rst RST_38                                    ; $701E: $FF
    ld a, a                                       ; $701F: $7F
    ret nz                                        ; $7020: $C0

    nop                                           ; $7021: $00
    ldh a, [rLCDC]                                ; $7022: $F0 $40
    db $FC                                        ; $7024: $FC
    ldh a, [$FFFE]                                ; $7025: $F0 $FE
    inc a                                         ; $7027: $3C

jr_017_7028:
    cp $CC                                        ; $7028: $FE $CC
    db $FC                                        ; $702A: $FC
    jr nc, jr_017_706B                            ; $702B: $30 $3E

    call z, $E01F                                 ; $702D: $CC $1F $E0
    ld d, $E9                                     ; $7030: $16 $E9
    ld de, $30EE                                  ; $7032: $11 $EE $30
    rst RST_18                                    ; $7035: $DF
    jr nc, jr_017_7017                            ; $7036: $30 $DF

    jr @-$0F                                      ; $7038: $18 $EF

    ld hl, sp+$0F                                 ; $703A: $F8 $0F
    db $EC                                        ; $703C: $EC
    scf                                           ; $703D: $37
    sbc a                                         ; $703E: $9F
    ld [hl], e                                    ; $703F: $73
    add b                                         ; $7040: $80
    nop                                           ; $7041: $00
    add b                                         ; $7042: $80
    nop                                           ; $7043: $00
    ld h, b                                       ; $7044: $60
    add b                                         ; $7045: $80
    jr jr_017_7028                                ; $7046: $18 $E0

    ld b, $F8                                     ; $7048: $06 $F8
    ld c, $FC                                     ; $704A: $0E $FC
    inc a                                         ; $704C: $3C
    ldh a, [$FFF0]                                ; $704D: $F0 $F0
    ret nz                                        ; $704F: $C0

    ret nc                                        ; $7050: $D0

    jr nz, jr_017_6FFB                            ; $7051: $20 $A8

    ld d, b                                       ; $7053: $50
    xor h                                         ; $7054: $AC
    ld d, b                                       ; $7055: $50
    ld d, h                                       ; $7056: $54
    xor b                                         ; $7057: $A8
    ld e, h                                       ; $7058: $5C
    and b                                         ; $7059: $A0
    cp d                                          ; $705A: $BA
    ld c, h                                       ; $705B: $4C
    ld a, d                                       ; $705C: $7A
    inc c                                         ; $705D: $0C
    dec c                                         ; $705E: $0D
    ld b, $05                                     ; $705F: $06 $05
    ld [bc], a                                    ; $7061: $02
    ld b, $01                                     ; $7062: $06 $01
    dec b                                         ; $7064: $05
    ld [bc], a                                    ; $7065: $02
    ld b, $01                                     ; $7066: $06 $01
    inc bc                                        ; $7068: $03
    nop                                           ; $7069: $00
    nop                                           ; $706A: $00

jr_017_706B:
    nop                                           ; $706B: $00
    nop                                           ; $706C: $00
    nop                                           ; $706D: $00
    nop                                           ; $706E: $00
    nop                                           ; $706F: $00
    nop                                           ; $7070: $00
    nop                                           ; $7071: $00
    nop                                           ; $7072: $00
    nop                                           ; $7073: $00
    nop                                           ; $7074: $00
    nop                                           ; $7075: $00
    nop                                           ; $7076: $00
    nop                                           ; $7077: $00
    nop                                           ; $7078: $00
    nop                                           ; $7079: $00
    nop                                           ; $707A: $00
    nop                                           ; $707B: $00
    nop                                           ; $707C: $00
    nop                                           ; $707D: $00
    nop                                           ; $707E: $00
    nop                                           ; $707F: $00
    cp $01                                        ; $7080: $FE $01
    rst RST_30                                    ; $7082: $F7
    ld [$06F9], sp                                ; $7083: $08 $F9 $06
    ccf                                           ; $7086: $3F
    nop                                           ; $7087: $00
    rla                                           ; $7088: $17
    ld [$0619], sp                                ; $7089: $08 $19 $06
    rrca                                          ; $708C: $0F
    nop                                           ; $708D: $00
    inc bc                                        ; $708E: $03
    nop                                           ; $708F: $00
    nop                                           ; $7090: $00
    nop                                           ; $7091: $00
    nop                                           ; $7092: $00
    nop                                           ; $7093: $00
    nop                                           ; $7094: $00
    nop                                           ; $7095: $00
    nop                                           ; $7096: $00
    nop                                           ; $7097: $00
    nop                                           ; $7098: $00
    nop                                           ; $7099: $00
    nop                                           ; $709A: $00
    nop                                           ; $709B: $00
    nop                                           ; $709C: $00
    nop                                           ; $709D: $00
    nop                                           ; $709E: $00
    nop                                           ; $709F: $00
    rst RST_38                                    ; $70A0: $FF
    ld a, $7F                                     ; $70A1: $3E $7F
    adc a                                         ; $70A3: $8F
    ld e, a                                       ; $70A4: $5F
    and e                                         ; $70A5: $A3
    or a                                          ; $70A6: $B7
    ld c, b                                       ; $70A7: $48
    call Call_017_7332                            ; $70A8: $CD $32 $73
    inc c                                         ; $70AB: $0C
    inc e                                         ; $70AC: $1C
    inc bc                                        ; $70AD: $03
    rlca                                          ; $70AE: $07
    nop                                           ; $70AF: $00
    nop                                           ; $70B0: $00
    nop                                           ; $70B1: $00
    nop                                           ; $70B2: $00
    nop                                           ; $70B3: $00
    nop                                           ; $70B4: $00
    nop                                           ; $70B5: $00
    nop                                           ; $70B6: $00
    nop                                           ; $70B7: $00
    nop                                           ; $70B8: $00
    nop                                           ; $70B9: $00
    nop                                           ; $70BA: $00
    nop                                           ; $70BB: $00
    nop                                           ; $70BC: $00
    nop                                           ; $70BD: $00
    nop                                           ; $70BE: $00
    nop                                           ; $70BF: $00
    rst RST_38                                    ; $70C0: $FF
    ld [$99FE], sp                                ; $70C1: $08 $FE $99
    ld sp, hl                                     ; $70C4: $F9
    or $F9                                        ; $70C5: $F6 $F9
    ld [hl], $7F                                  ; $70C7: $36 $7F
    add b                                         ; $70C9: $80
    ldh [rP1], a                                  ; $70CA: $E0 $00
    ret nz                                        ; $70CC: $C0

    nop                                           ; $70CD: $00
    nop                                           ; $70CE: $00
    nop                                           ; $70CF: $00
    nop                                           ; $70D0: $00
    nop                                           ; $70D1: $00
    nop                                           ; $70D2: $00
    nop                                           ; $70D3: $00
    nop                                           ; $70D4: $00
    nop                                           ; $70D5: $00
    nop                                           ; $70D6: $00
    nop                                           ; $70D7: $00
    nop                                           ; $70D8: $00
    nop                                           ; $70D9: $00
    nop                                           ; $70DA: $00
    nop                                           ; $70DB: $00
    nop                                           ; $70DC: $00
    nop                                           ; $70DD: $00
    nop                                           ; $70DE: $00
    nop                                           ; $70DF: $00
    rlca                                          ; $70E0: $07
    ld [bc], a                                    ; $70E1: $02
    inc bc                                        ; $70E2: $03
    nop                                           ; $70E3: $00
    nop                                           ; $70E4: $00
    nop                                           ; $70E5: $00
    nop                                           ; $70E6: $00
    nop                                           ; $70E7: $00
    nop                                           ; $70E8: $00
    nop                                           ; $70E9: $00
    nop                                           ; $70EA: $00
    nop                                           ; $70EB: $00
    nop                                           ; $70EC: $00
    nop                                           ; $70ED: $00
    nop                                           ; $70EE: $00
    nop                                           ; $70EF: $00
    nop                                           ; $70F0: $00
    nop                                           ; $70F1: $00
    nop                                           ; $70F2: $00
    nop                                           ; $70F3: $00
    nop                                           ; $70F4: $00
    nop                                           ; $70F5: $00
    nop                                           ; $70F6: $00
    nop                                           ; $70F7: $00
    nop                                           ; $70F8: $00
    nop                                           ; $70F9: $00
    nop                                           ; $70FA: $00
    nop                                           ; $70FB: $00
    nop                                           ; $70FC: $00
    nop                                           ; $70FD: $00
    nop                                           ; $70FE: $00
    nop                                           ; $70FF: $00
    ld bc, $0100                                  ; $7100: $01 $00 $01
    nop                                           ; $7103: $00
    ld [bc], a                                    ; $7104: $02
    ld bc, $0102                                  ; $7105: $01 $02 $01
    inc b                                         ; $7108: $04
    inc bc                                        ; $7109: $03
    ld b, $01                                     ; $710A: $06 $01
    dec de                                        ; $710C: $1B
    inc b                                         ; $710D: $04
    dec a                                         ; $710E: $3D
    ld [bc], a                                    ; $710F: $02
    ld a, $00                                     ; $7110: $3E $00
    ld a, [hl]                                    ; $7112: $7E
    nop                                           ; $7113: $00
    ld a, b                                       ; $7114: $78
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
    ld bc, $0100                                  ; $7120: $01 $00 $01
    nop                                           ; $7123: $00
    ld bc, $6300                                  ; $7124: $01 $00 $63
    nop                                           ; $7127: $00
    ld e, h                                       ; $7128: $5C
    inc hl                                        ; $7129: $23
    adc b                                         ; $712A: $88
    ld [hl], a                                    ; $712B: $77
    add h                                         ; $712C: $84
    ld a, e                                       ; $712D: $7B
    inc b                                         ; $712E: $04
    ei                                            ; $712F: $FB
    ld [bc], a                                    ; $7130: $02
    db $FD                                        ; $7131: $FD
    ld [de], a                                    ; $7132: $12
    db $FD                                        ; $7133: $FD
    dec c                                         ; $7134: $0D
    cp $2F                                        ; $7135: $FE $2F
    cp $9F                                        ; $7137: $FE $9F
    cp $FF                                        ; $7139: $FE $FF
    cp $FF                                        ; $713B: $FE $FF
    ld bc, $142B                                  ; $713D: $01 $2B $14
    inc bc                                        ; $7140: $03
    nop                                           ; $7141: $00
    rrca                                          ; $7142: $0F
    inc bc                                        ; $7143: $03
    ccf                                           ; $7144: $3F
    rrca                                          ; $7145: $0F
    ld a, a                                       ; $7146: $7F
    ld [hl], $7F                                  ; $7147: $36 $7F
    add hl, de                                    ; $7149: $19
    rst RST_18                                    ; $714A: $DF
    ld h, [hl]                                    ; $714B: $66
    rst RST_18                                    ; $714C: $DF
    ld h, l                                       ; $714D: $65
    cp $5B                                        ; $714E: $FE $5B
    cp $0B                                        ; $7150: $FE $0B
    ccf                                           ; $7152: $3F
    push bc                                       ; $7153: $C5
    rra                                           ; $7154: $1F
    push hl                                       ; $7155: $E5
    ccf                                           ; $7156: $3F
    ldh [c], a                                    ; $7157: $E2
    sbc a                                         ; $7158: $9F
    ldh a, [c]                                    ; $7159: $F2
    ld e, a                                       ; $715A: $5F
    ldh a, [c]                                    ; $715B: $F2
    cp $F1                                        ; $715C: $FE $F1
    rst RST_38                                    ; $715E: $FF
    ldh [rTMA], a                                 ; $715F: $E0 $06
    nop                                           ; $7161: $00
    dec b                                         ; $7162: $05
    ld [bc], a                                    ; $7163: $02
    ld [bc], a                                    ; $7164: $02
    ld bc, $0001                                  ; $7165: $01 $01 $00
    nop                                           ; $7168: $00
    nop                                           ; $7169: $00
    ld bc, $0100                                  ; $716A: $01 $00 $01
    nop                                           ; $716D: $00
    jp $E200                                      ; $716E: $C3 $00 $E2


    pop bc                                        ; $7171: $C1
    db $FC                                        ; $7172: $FC
    jp $94FB                                      ; $7173: $C3 $FB $94


    db $FC                                        ; $7176: $FC
    ld h, e                                       ; $7177: $63
    ldh a, [$FF8F]                                ; $7178: $F0 $8F
    adc b                                         ; $717A: $88
    ld [hl], a                                    ; $717B: $77
    rrca                                          ; $717C: $0F
    rst RST_30                                    ; $717D: $F7
    rlca                                          ; $717E: $07
    ld hl, sp+$60                                 ; $717F: $F8 $60
    nop                                           ; $7181: $00
    ld [hl], b                                    ; $7182: $70
    jr nz, @-$26                                  ; $7183: $20 $D8

    jr nc, @-$46                                  ; $7185: $30 $B8

    ld d, b                                       ; $7187: $50
    ld hl, sp+$10                                 ; $7188: $F8 $10
    sbc b                                         ; $718A: $98
    ld h, b                                       ; $718B: $60
    add sp, $10                                   ; $718C: $E8 $10
    jr @-$1E                                      ; $718E: $18 $E0

    adc h                                         ; $7190: $8C
    ld [hl], b                                    ; $7191: $70
    ld a, h                                       ; $7192: $7C
    adc b                                         ; $7193: $88
    call z, Call_000_0C38                         ; $7194: $CC $38 $0C
    ld hl, sp+$0C                                 ; $7197: $F8 $0C
    ld hl, sp+$0C                                 ; $7199: $F8 $0C
    ld hl, sp+$0C                                 ; $719B: $F8 $0C
    ld hl, sp-$74                                 ; $719D: $F8 $8C
    ld hl, sp+$1F                                 ; $719F: $F8 $1F
    nop                                           ; $71A1: $00
    add hl, bc                                    ; $71A2: $09
    ld b, $07                                     ; $71A3: $06 $07
    nop                                           ; $71A5: $00
    nop                                           ; $71A6: $00
    nop                                           ; $71A7: $00
    nop                                           ; $71A8: $00
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
    nop                                           ; $71B9: $00
    nop                                           ; $71BA: $00
    nop                                           ; $71BB: $00
    nop                                           ; $71BC: $00
    nop                                           ; $71BD: $00
    nop                                           ; $71BE: $00

jr_017_71BF:
    nop                                           ; $71BF: $00
    db $FD                                        ; $71C0: $FD
    sub d                                         ; $71C1: $92
    ld a, [$FD75]                                 ; $71C2: $FA $75 $FD
    ld a, [$E0FF]                                 ; $71C5: $FA $FF $E0
    db $FC                                        ; $71C8: $FC
    inc bc                                        ; $71C9: $03
    rst RST_38                                    ; $71CA: $FF
    nop                                           ; $71CB: $00
    rst RST_38                                    ; $71CC: $FF
    nop                                           ; $71CD: $00
    rst RST_38                                    ; $71CE: $FF
    nop                                           ; $71CF: $00
    ldh [rP1], a                                  ; $71D0: $E0 $00
    nop                                           ; $71D2: $00
    nop                                           ; $71D3: $00
    nop                                           ; $71D4: $00
    nop                                           ; $71D5: $00
    nop                                           ; $71D6: $00
    nop                                           ; $71D7: $00

jr_017_71D8:
    nop                                           ; $71D8: $00
    nop                                           ; $71D9: $00
    nop                                           ; $71DA: $00
    nop                                           ; $71DB: $00
    nop                                           ; $71DC: $00
    nop                                           ; $71DD: $00
    nop                                           ; $71DE: $00
    nop                                           ; $71DF: $00
    ld [bc], a                                    ; $71E0: $02
    db $FD                                        ; $71E1: $FD
    dec b                                         ; $71E2: $05
    ei                                            ; $71E3: $FB
    ld b, $FB                                     ; $71E4: $06 $FB
    sbc a                                         ; $71E6: $9F
    db $E4                                        ; $71E7: $E4
    rst RST_38                                    ; $71E8: $FF
    ld e, $FF                                     ; $71E9: $1E $FF
    ld e, a                                       ; $71EB: $5F
    ld a, a                                       ; $71EC: $7F
    cp a                                          ; $71ED: $BF
    ld a, a                                       ; $71EE: $7F
    cp [hl]                                       ; $71EF: $BE
    rst RST_38                                    ; $71F0: $FF
    jr c, @+$01                                   ; $71F1: $38 $FF

    nop                                           ; $71F3: $00
    db $ED                                        ; $71F4: $ED
    ld [de], a                                    ; $71F5: $12
    ld [$3315], a                                 ; $71F6: $EA $15 $33
    call z, Call_000_00FF                         ; $71F9: $CC $FF $00
    inc e                                         ; $71FC: $1C
    ldh [$FFE0], a                                ; $71FD: $E0 $E0
    nop                                           ; $71FF: $00
    rst RST_38                                    ; $7200: $FF
    ld a, b                                       ; $7201: $78
    ld sp, hl                                     ; $7202: $F9
    ld b, $F9                                     ; $7203: $06 $F9
    sub [hl]                                      ; $7205: $96
    ld a, [hl]                                    ; $7206: $7E
    sbc b                                         ; $7207: $98
    cp $30                                        ; $7208: $FE $30
    db $FC                                        ; $720A: $FC
    ld [hl], b                                    ; $720B: $70
    db $FC                                        ; $720C: $FC
    ldh [$FFF4], a                                ; $720D: $E0 $F4
    adc b                                         ; $720F: $88
    db $E4                                        ; $7210: $E4
    jr jr_017_71BF                                ; $7211: $18 $AC

    ld d, b                                       ; $7213: $50
    ld c, b                                       ; $7214: $48
    or b                                          ; $7215: $B0
    jr c, jr_017_71D8                             ; $7216: $38 $C0

    ld h, b                                       ; $7218: $60
    add b                                         ; $7219: $80
    ret nz                                        ; $721A: $C0

    nop                                           ; $721B: $00
    nop                                           ; $721C: $00
    nop                                           ; $721D: $00
    nop                                           ; $721E: $00
    nop                                           ; $721F: $00
    inc bc                                        ; $7220: $03
    nop                                           ; $7221: $00
    rrca                                          ; $7222: $0F
    inc bc                                        ; $7223: $03
    ccf                                           ; $7224: $3F
    rrca                                          ; $7225: $0F
    ld a, b                                       ; $7226: $78
    ccf                                           ; $7227: $3F
    rst RST_00                                    ; $7228: $C7
    ld a, b                                       ; $7229: $78
    ld hl, sp+$00                                 ; $722A: $F8 $00
    inc bc                                        ; $722C: $03
    nop                                           ; $722D: $00
    rlca                                          ; $722E: $07
    inc bc                                        ; $722F: $03
    dec c                                         ; $7230: $0D
    ld b, $0E                                     ; $7231: $06 $0E
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
    inc bc                                        ; $7240: $03
    nop                                           ; $7241: $00
    rrca                                          ; $7242: $0F
    inc bc                                        ; $7243: $03
    ccf                                           ; $7244: $3F
    rrca                                          ; $7245: $0F
    rst RST_38                                    ; $7246: $FF
    ccf                                           ; $7247: $3F
    db $FC                                        ; $7248: $FC
    rst RST_38                                    ; $7249: $FF
    ldh [rIE], a                                  ; $724A: $E0 $FF
    rlca                                          ; $724C: $07
    ld hl, sp+$7F                                 ; $724D: $F8 $7F
    add e                                         ; $724F: $83
    cp a                                          ; $7250: $BF
    rrca                                          ; $7251: $0F
    db $FC                                        ; $7252: $FC
    ccf                                           ; $7253: $3F
    pop hl                                        ; $7254: $E1
    cp $1E                                        ; $7255: $FE $1E
    ldh [$FFE0], a                                ; $7257: $E0 $E0
    nop                                           ; $7259: $00
    nop                                           ; $725A: $00
    nop                                           ; $725B: $00
    nop                                           ; $725C: $00
    nop                                           ; $725D: $00
    nop                                           ; $725E: $00
    nop                                           ; $725F: $00
    inc bc                                        ; $7260: $03
    nop                                           ; $7261: $00
    rrca                                          ; $7262: $0F
    inc bc                                        ; $7263: $03
    ccf                                           ; $7264: $3F
    rrca                                          ; $7265: $0F
    rst RST_38                                    ; $7266: $FF
    ccf                                           ; $7267: $3F
    rst RST_38                                    ; $7268: $FF
    rst RST_38                                    ; $7269: $FF
    rst RST_38                                    ; $726A: $FF
    rst RST_38                                    ; $726B: $FF
    ldh a, [rIE]                                  ; $726C: $F0 $FF
    add b                                         ; $726E: $80
    rst RST_38                                    ; $726F: $FF
    rlca                                          ; $7270: $07
    ld hl, sp+$7F                                 ; $7271: $F8 $7F
    add a                                         ; $7273: $87
    cp $7F                                        ; $7274: $FE $7F
    ldh a, [rIE]                                  ; $7276: $F0 $FF
    add c                                         ; $7278: $81
    cp $1E                                        ; $7279: $FE $1E
    ldh [$FFE0], a                                ; $727B: $E0 $E0
    nop                                           ; $727D: $00
    nop                                           ; $727E: $00
    nop                                           ; $727F: $00
    inc bc                                        ; $7280: $03
    nop                                           ; $7281: $00
    rrca                                          ; $7282: $0F
    ld [bc], a                                    ; $7283: $02
    ld a, $0C                                     ; $7284: $3E $0C
    db $FD                                        ; $7286: $FD
    jr c, @+$01                                   ; $7287: $38 $FF

    pop af                                        ; $7289: $F1
    rst RST_38                                    ; $728A: $FF
    rst RST_28                                    ; $728B: $EF
    rst RST_38                                    ; $728C: $FF
    cp $FE                                        ; $728D: $FE $FE
    ld sp, hl                                     ; $728F: $F9
    ldh [rIE], a                                  ; $7290: $E0 $FF
    nop                                           ; $7292: $00
    rst RST_38                                    ; $7293: $FF
    rlca                                          ; $7294: $07
    ld hl, sp+$7C                                 ; $7295: $F8 $7C
    add e                                         ; $7297: $83
    ldh a, [$FF6F]                                ; $7298: $F0 $6F
    cp l                                          ; $729A: $BD
    ld b, a                                       ; $729B: $47
    rst RST_28                                    ; $729C: $EF
    ld de, $C23D                                  ; $729D: $11 $3D $C2
    add hl, sp                                    ; $72A0: $39
    nop                                           ; $72A1: $00
    rst RST_38                                    ; $72A2: $FF
    ld sp, $E8FF                                  ; $72A3: $31 $FF $E8
    rst RST_38                                    ; $72A6: $FF
    add b                                         ; $72A7: $80
    ret nz                                        ; $72A8: $C0

    ccf                                           ; $72A9: $3F
    nop                                           ; $72AA: $00
    rst RST_38                                    ; $72AB: $FF
    rlca                                          ; $72AC: $07
    ld hl, sp+$7C                                 ; $72AD: $F8 $7C
    add e                                         ; $72AF: $83
    ret nc                                        ; $72B0: $D0

    cpl                                           ; $72B1: $2F
    db $10                                        ; $72B2: $10
    rst RST_28                                    ; $72B3: $EF
    or b                                          ; $72B4: $B0
    rst RST_18                                    ; $72B5: $DF
    cp a                                          ; $72B6: $BF
    ret nz                                        ; $72B7: $C0

    rst RST_38                                    ; $72B8: $FF
    add b                                         ; $72B9: $80
    cp $7D                                        ; $72BA: $FE $7D
    rst RST_38                                    ; $72BC: $FF
    ld a, h                                       ; $72BD: $7C
    cp $FD                                        ; $72BE: $FE $FD
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
    rlca                                          ; $72D2: $07
    nop                                           ; $72D3: $00
    rst RST_38                                    ; $72D4: $FF
    dec b                                         ; $72D5: $05
    rst RST_38                                    ; $72D6: $FF
    ld h, b                                       ; $72D7: $60
    ldh [$FFDF], a                                ; $72D8: $E0 $DF
    cp $01                                        ; $72DA: $FE $01
    inc e                                         ; $72DC: $1C
    db $E3                                        ; $72DD: $E3
    ldh a, [rIF]                                  ; $72DE: $F0 $0F
    db $EB                                        ; $72E0: $EB
    inc d                                         ; $72E1: $14
    rra                                           ; $72E2: $1F
    nop                                           ; $72E3: $00
    rrca                                          ; $72E4: $0F
    nop                                           ; $72E5: $00
    add hl, bc                                    ; $72E6: $09
    ld b, $07                                     ; $72E7: $06 $07
    nop                                           ; $72E9: $00
    inc b                                         ; $72EA: $04

jr_017_72EB:
    inc bc                                        ; $72EB: $03
    inc bc                                        ; $72EC: $03
    nop                                           ; $72ED: $00
    nop                                           ; $72EE: $00
    nop                                           ; $72EF: $00
    nop                                           ; $72F0: $00
    nop                                           ; $72F1: $00
    nop                                           ; $72F2: $00
    nop                                           ; $72F3: $00
    nop                                           ; $72F4: $00
    nop                                           ; $72F5: $00
    nop                                           ; $72F6: $00
    nop                                           ; $72F7: $00
    nop                                           ; $72F8: $00
    nop                                           ; $72F9: $00
    nop                                           ; $72FA: $00
    nop                                           ; $72FB: $00
    nop                                           ; $72FC: $00
    nop                                           ; $72FD: $00
    nop                                           ; $72FE: $00
    nop                                           ; $72FF: $00
    rst RST_38                                    ; $7300: $FF
    nop                                           ; $7301: $00
    rst RST_38                                    ; $7302: $FF
    nop                                           ; $7303: $00
    rst RST_38                                    ; $7304: $FF
    nop                                           ; $7305: $00
    rst RST_38                                    ; $7306: $FF
    nop                                           ; $7307: $00
    rst RST_38                                    ; $7308: $FF
    nop                                           ; $7309: $00
    nop                                           ; $730A: $00
    nop                                           ; $730B: $00
    nop                                           ; $730C: $00
    nop                                           ; $730D: $00
    nop                                           ; $730E: $00
    nop                                           ; $730F: $00
    nop                                           ; $7310: $00
    nop                                           ; $7311: $00
    nop                                           ; $7312: $00
    nop                                           ; $7313: $00
    nop                                           ; $7314: $00
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
    ldh a, [rIF]                                  ; $7320: $F0 $0F
    jr c, jr_017_72EB                             ; $7322: $38 $C7

    ccf                                           ; $7324: $3F
    ret nz                                        ; $7325: $C0

    ccf                                           ; $7326: $3F
    rst RST_00                                    ; $7327: $C7
    rst RST_38                                    ; $7328: $FF
    adc e                                         ; $7329: $8B
    rst RST_38                                    ; $732A: $FF
    nop                                           ; $732B: $00
    rst RST_38                                    ; $732C: $FF
    nop                                           ; $732D: $00
    xor a                                         ; $732E: $AF
    ld d, l                                       ; $732F: $55
    rst RST_20                                    ; $7330: $E7
    dec de                                        ; $7331: $1B

Call_017_7332:
    xor a                                         ; $7332: $AF
    ld d, e                                       ; $7333: $53
    rst RST_38                                    ; $7334: $FF
    inc bc                                        ; $7335: $03
    rst RST_38                                    ; $7336: $FF
    nop                                           ; $7337: $00
    add [hl]                                      ; $7338: $86
    ld a, c                                       ; $7339: $79
    cp $01                                        ; $733A: $FE $01
    jp Jump_017_7F3C                              ; $733C: $C3 $3C $7F


    nop                                           ; $733F: $00
    ld bc, $0100                                  ; $7340: $01 $00 $01
    nop                                           ; $7343: $00
    ld bc, $0100                                  ; $7344: $01 $00 $01
    nop                                           ; $7347: $00
    ld bc, $E300                                  ; $7348: $01 $00 $E3
    nop                                           ; $734B: $00
    db $FD                                        ; $734C: $FD
    ldh [c], a                                    ; $734D: $E2
    or $69                                        ; $734E: $F6 $69
    rst RST_38                                    ; $7350: $FF
    add b                                         ; $7351: $80
    ld a, b                                       ; $7352: $78
    rst RST_10                                    ; $7353: $D7
    ld a, b                                       ; $7354: $78
    rst RST_00                                    ; $7355: $C7
    ld a, b                                       ; $7356: $78
    rst RST_10                                    ; $7357: $D7
    ld a, b                                       ; $7358: $78
    rst RST_10                                    ; $7359: $D7
    ld hl, sp-$49                                 ; $735A: $F8 $B7
    db $FD                                        ; $735C: $FD
    ld [bc], a                                    ; $735D: $02
    db $D3                                        ; $735E: $D3
    xor h                                         ; $735F: $AC
    inc c                                         ; $7360: $0C
    nop                                           ; $7361: $00
    adc $04                                       ; $7362: $CE $04
    adc $84                                       ; $7364: $CE $84
    adc $84                                       ; $7366: $CE $84
    ei                                            ; $7368: $FB
    add [hl]                                      ; $7369: $86
    db $EB                                        ; $736A: $EB
    sub [hl]                                      ; $736B: $96
    xor e                                         ; $736C: $AB
    ld d, [hl]                                    ; $736D: $56
    ld a, d                                       ; $736E: $7A
    add h                                         ; $736F: $84
    sbc [hl]                                      ; $7370: $9E
    ld l, h                                       ; $7371: $6C
    ld c, h                                       ; $7372: $4C
    or b                                          ; $7373: $B0
    xor h                                         ; $7374: $AC
    ld d, b                                       ; $7375: $50
    xor h                                         ; $7376: $AC
    ld d, b                                       ; $7377: $50
    xor b                                         ; $7378: $A8
    ld d, b                                       ; $7379: $50
    xor b                                         ; $737A: $A8
    ld d, b                                       ; $737B: $50
    or b                                          ; $737C: $B0
    ld b, b                                       ; $737D: $40
    and b                                         ; $737E: $A0
    ld b, b                                       ; $737F: $40
    jp nc, $F3AC                                  ; $7380: $D2 $AC $F3

    inc c                                         ; $7383: $0C
    rst RST_38                                    ; $7384: $FF
    inc b                                         ; $7385: $04
    ei                                            ; $7386: $FB
    db $F4                                        ; $7387: $F4
    rst RST_38                                    ; $7388: $FF
    ldh a, [rIE]                                  ; $7389: $F0 $FF
    rst RST_38                                    ; $738B: $FF
    rst RST_38                                    ; $738C: $FF
    rst RST_38                                    ; $738D: $FF
    rst RST_38                                    ; $738E: $FF
    nop                                           ; $738F: $00
    xor d                                         ; $7390: $AA
    ld d, l                                       ; $7391: $55
    ld h, [hl]                                    ; $7392: $66
    sbc c                                         ; $7393: $99
    sbc c                                         ; $7394: $99
    ld h, [hl]                                    ; $7395: $66
    rst RST_38                                    ; $7396: $FF
    nop                                           ; $7397: $00
    nop                                           ; $7398: $00
    nop                                           ; $7399: $00
    nop                                           ; $739A: $00
    nop                                           ; $739B: $00
    nop                                           ; $739C: $00
    nop                                           ; $739D: $00
    nop                                           ; $739E: $00
    nop                                           ; $739F: $00
    ret nz                                        ; $73A0: $C0

    nop                                           ; $73A1: $00
    add b                                         ; $73A2: $80
    nop                                           ; $73A3: $00
    nop                                           ; $73A4: $00
    nop                                           ; $73A5: $00
    add b                                         ; $73A6: $80
    nop                                           ; $73A7: $00
    db $FC                                        ; $73A8: $FC
    add b                                         ; $73A9: $80
    db $E4                                        ; $73AA: $E4
    ret c                                         ; $73AB: $D8

    db $E4                                        ; $73AC: $E4
    ret c                                         ; $73AD: $D8

    add sp, -$70                                  ; $73AE: $E8 $90
    ldh a, [rP1]                                  ; $73B0: $F0 $00
    and b                                         ; $73B2: $A0
    ld b, b                                       ; $73B3: $40
    ldh [rP1], a                                  ; $73B4: $E0 $00
    ld h, b                                       ; $73B6: $60
    add b                                         ; $73B7: $80
    ret nz                                        ; $73B8: $C0

    nop                                           ; $73B9: $00
    add b                                         ; $73BA: $80
    nop                                           ; $73BB: $00
    nop                                           ; $73BC: $00
    nop                                           ; $73BD: $00
    nop                                           ; $73BE: $00
    nop                                           ; $73BF: $00
    ld bc, $0300                                  ; $73C0: $01 $00 $03
    ld bc, $0207                                  ; $73C3: $01 $07 $02
    ld b, $01                                     ; $73C6: $06 $01
    inc c                                         ; $73C8: $0C
    rlca                                          ; $73C9: $07
    dec de                                        ; $73CA: $1B
    inc c                                         ; $73CB: $0C
    inc a                                         ; $73CC: $3C
    db $10                                        ; $73CD: $10
    jr nc, jr_017_73D0                            ; $73CE: $30 $00

jr_017_73D0:
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
    nop                                           ; $73DA: $00
    nop                                           ; $73DB: $00
    nop                                           ; $73DC: $00
    nop                                           ; $73DD: $00
    nop                                           ; $73DE: $00
    nop                                           ; $73DF: $00
    nop                                           ; $73E0: $00
    nop                                           ; $73E1: $00
    nop                                           ; $73E2: $00
    nop                                           ; $73E3: $00
    nop                                           ; $73E4: $00
    nop                                           ; $73E5: $00
    nop                                           ; $73E6: $00
    nop                                           ; $73E7: $00
    nop                                           ; $73E8: $00
    nop                                           ; $73E9: $00
    ld b, $00                                     ; $73EA: $06 $00
    rrca                                          ; $73EC: $0F
    ld b, $1F                                     ; $73ED: $06 $1F
    add hl, bc                                    ; $73EF: $09
    jr c, jr_017_7409                             ; $73F0: $38 $17

    ld [hl], b                                    ; $73F2: $70
    rrca                                          ; $73F3: $0F
    rst RST_00                                    ; $73F4: $C7
    ld a, b                                       ; $73F5: $78
    sbc a                                         ; $73F6: $9F
    db $E4                                        ; $73F7: $E4
    ld h, e                                       ; $73F8: $63
    sbc a                                         ; $73F9: $9F
    add b                                         ; $73FA: $80
    ld a, a                                       ; $73FB: $7F
    jr c, @-$37                                   ; $73FC: $38 $C7

    rst RST_00                                    ; $73FE: $C7
    nop                                           ; $73FF: $00
    ld bc, $0700                                  ; $7400: $01 $00 $07
    ld bc, $071F                                  ; $7403: $01 $1F $07
    rst RST_38                                    ; $7406: $FF
    rra                                           ; $7407: $1F
    di                                            ; $7408: $F3

jr_017_7409:
    adc h                                         ; $7409: $8C
    ld a, a                                       ; $740A: $7F
    db $E3                                        ; $740B: $E3
    inc e                                         ; $740C: $1C
    rst RST_28                                    ; $740D: $EF
    inc de                                        ; $740E: $13
    db $EC                                        ; $740F: $EC
    db $FC                                        ; $7410: $FC
    inc bc                                        ; $7411: $03
    ldh a, [$FF6F]                                ; $7412: $F0 $6F
    cp l                                          ; $7414: $BD
    ld b, a                                       ; $7415: $47
    rst RST_28                                    ; $7416: $EF
    ld de, $023D                                  ; $7417: $11 $3D $02
    dec hl                                        ; $741A: $2B
    inc d                                         ; $741B: $14
    rra                                           ; $741C: $1F
    nop                                           ; $741D: $00
    rrca                                          ; $741E: $0F
    nop                                           ; $741F: $00
    ld bc, $8300                                  ; $7420: $01 $00 $83
    ld bc, $80C3                                  ; $7423: $01 $C3 $80
    rst RST_38                                    ; $7426: $FF
    ret nz                                        ; $7427: $C0

    ld a, a                                       ; $7428: $7F
    jp Jump_000_3FFC                              ; $7429: $C3 $FC $3F


    jp Jump_000_3CFC                              ; $742C: $C3 $FC $3C


    jp Jump_000_2FD0                              ; $742F: $C3 $D0 $2F


    db $10                                        ; $7432: $10
    rst RST_28                                    ; $7433: $EF
    or b                                          ; $7434: $B0
    rst RST_18                                    ; $7435: $DF
    cp a                                          ; $7436: $BF
    ret nz                                        ; $7437: $C0

    rst RST_38                                    ; $7438: $FF
    add b                                         ; $7439: $80
    cp $7D                                        ; $743A: $FE $7D
    rst RST_38                                    ; $743C: $FF
    ld a, h                                       ; $743D: $7C
    cp $FD                                        ; $743E: $FE $FD
    nop                                           ; $7440: $00
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
    rlca                                          ; $7452: $07
    nop                                           ; $7453: $00
    rst RST_38                                    ; $7454: $FF
    dec b                                         ; $7455: $05
    rst RST_38                                    ; $7456: $FF
    ld h, b                                       ; $7457: $60
    ldh [$FFDF], a                                ; $7458: $E0 $DF
    ret nz                                        ; $745A: $C0

    ccf                                           ; $745B: $3F
    ldh a, [$FFCF]                                ; $745C: $F0 $CF
    db $10                                        ; $745E: $10
    rst RST_28                                    ; $745F: $EF
    add hl, bc                                    ; $7460: $09
    ld b, $07                                     ; $7461: $06 $07
    nop                                           ; $7463: $00
    inc b                                         ; $7464: $04
    inc bc                                        ; $7465: $03
    inc bc                                        ; $7466: $03
    nop                                           ; $7467: $00
    nop                                           ; $7468: $00
    nop                                           ; $7469: $00
    nop                                           ; $746A: $00
    nop                                           ; $746B: $00
    nop                                           ; $746C: $00
    nop                                           ; $746D: $00
    nop                                           ; $746E: $00
    nop                                           ; $746F: $00
    nop                                           ; $7470: $00
    nop                                           ; $7471: $00
    nop                                           ; $7472: $00
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
    rst RST_38                                    ; $7480: $FF
    nop                                           ; $7481: $00
    rst RST_38                                    ; $7482: $FF
    nop                                           ; $7483: $00
    rst RST_38                                    ; $7484: $FF
    nop                                           ; $7485: $00
    rst RST_38                                    ; $7486: $FF
    nop                                           ; $7487: $00
    rst RST_38                                    ; $7488: $FF
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
    nop                                           ; $7496: $00
    nop                                           ; $7497: $00
    nop                                           ; $7498: $00
    nop                                           ; $7499: $00
    nop                                           ; $749A: $00
    nop                                           ; $749B: $00
    nop                                           ; $749C: $00
    nop                                           ; $749D: $00
    nop                                           ; $749E: $00
    nop                                           ; $749F: $00
    ld bc, $0300                                  ; $74A0: $01 $00 $03
    ld bc, $0307                                  ; $74A3: $01 $07 $03
    rrca                                          ; $74A6: $0F
    rlca                                          ; $74A7: $07
    rrca                                          ; $74A8: $0F
    rlca                                          ; $74A9: $07
    rra                                           ; $74AA: $1F
    rrca                                          ; $74AB: $0F
    dec e                                         ; $74AC: $1D
    rrca                                          ; $74AD: $0F
    inc sp                                        ; $74AE: $33
    rra                                           ; $74AF: $1F
    ld [hl+], a                                   ; $74B0: $22
    rra                                           ; $74B1: $1F
    ld h, b                                       ; $74B2: $60
    ccf                                           ; $74B3: $3F
    ld b, b                                       ; $74B4: $40
    ccf                                           ; $74B5: $3F
    ld b, b                                       ; $74B6: $40
    ccf                                           ; $74B7: $3F
    ret nz                                        ; $74B8: $C0

    ld a, a                                       ; $74B9: $7F
    add b                                         ; $74BA: $80
    ld a, a                                       ; $74BB: $7F
    add b                                         ; $74BC: $80
    ld a, a                                       ; $74BD: $7F
    add b                                         ; $74BE: $80
    ld a, a                                       ; $74BF: $7F
    add b                                         ; $74C0: $80
    ld a, a                                       ; $74C1: $7F
    ret nz                                        ; $74C2: $C0

    ld a, a                                       ; $74C3: $7F
    ld b, b                                       ; $74C4: $40
    ccf                                           ; $74C5: $3F
    ld b, b                                       ; $74C6: $40
    ccf                                           ; $74C7: $3F
    ld h, b                                       ; $74C8: $60
    ccf                                           ; $74C9: $3F
    jr nz, jr_017_74EB                            ; $74CA: $20 $1F

    jr nc, jr_017_74ED                            ; $74CC: $30 $1F

    ld a, [de]                                    ; $74CE: $1A
    rrca                                          ; $74CF: $0F
    dec e                                         ; $74D0: $1D
    rrca                                          ; $74D1: $0F
    rrca                                          ; $74D2: $0F
    rlca                                          ; $74D3: $07
    rrca                                          ; $74D4: $0F
    rlca                                          ; $74D5: $07
    rlca                                          ; $74D6: $07
    inc bc                                        ; $74D7: $03
    inc bc                                        ; $74D8: $03
    ld bc, $0001                                  ; $74D9: $01 $01 $00
    nop                                           ; $74DC: $00
    nop                                           ; $74DD: $00
    nop                                           ; $74DE: $00
    nop                                           ; $74DF: $00
    sbc e                                         ; $74E0: $9B
    nop                                           ; $74E1: $00
    cp a                                          ; $74E2: $BF
    inc de                                        ; $74E3: $13
    rst RST_38                                    ; $74E4: $FF
    cpl                                           ; $74E5: $2F
    rst RST_38                                    ; $74E6: $FF
    ld e, a                                       ; $74E7: $5F
    rst RST_38                                    ; $74E8: $FF
    cp $FF                                        ; $74E9: $FE $FF

jr_017_74EB:
    db $FC                                        ; $74EB: $FC
    cp a                                          ; $74EC: $BF

jr_017_74ED:
    rst RST_38                                    ; $74ED: $FF
    ccf                                           ; $74EE: $3F
    rst RST_38                                    ; $74EF: $FF
    ld a, h                                       ; $74F0: $7C
    rst RST_38                                    ; $74F1: $FF
    jr nc, @+$01                                  ; $74F2: $30 $FF

    ld b, c                                       ; $74F4: $41
    rst RST_38                                    ; $74F5: $FF
    inc bc                                        ; $74F6: $03
    rst RST_38                                    ; $74F7: $FF
    rlca                                          ; $74F8: $07
    rst RST_38                                    ; $74F9: $FF
    ld bc, $00FF                                  ; $74FA: $01 $FF $00
    rst RST_38                                    ; $74FD: $FF
    ld bc, $0FFF                                  ; $74FE: $01 $FF $0F
    rst RST_38                                    ; $7501: $FF
    rlca                                          ; $7502: $07
    rst RST_38                                    ; $7503: $FF
    ccf                                           ; $7504: $3F
    rst RST_38                                    ; $7505: $FF
    rra                                           ; $7506: $1F
    cp $9F                                        ; $7507: $FE $9F
    rst RST_38                                    ; $7509: $FF
    rst RST_28                                    ; $750A: $EF
    rst RST_38                                    ; $750B: $FF
    ccf                                           ; $750C: $3F
    rst RST_38                                    ; $750D: $FF
    ld a, a                                       ; $750E: $7F
    rst RST_38                                    ; $750F: $FF
    ccf                                           ; $7510: $3F
    rst RST_30                                    ; $7511: $F7
    rst RST_18                                    ; $7512: $DF
    ldh a, [$FFFC]                                ; $7513: $F0 $FC
    ld hl, sp-$04                                 ; $7515: $F8 $FC
    ld a, b                                       ; $7517: $78
    cp $9C                                        ; $7518: $FE $9C
    sbc $84                                       ; $751A: $DE $84
    rst RST_00                                    ; $751C: $C7
    ld [bc], a                                    ; $751D: $02
    inc bc                                        ; $751E: $03
    nop                                           ; $751F: $00
    ldh [$FFC0], a                                ; $7520: $E0 $C0
    jp $EF80                                      ; $7522: $C3 $80 $EF


    ld h, e                                       ; $7525: $63
    cp a                                          ; $7526: $BF
    ld c, [hl]                                    ; $7527: $4E
    rst RST_38                                    ; $7528: $FF
    inc a                                         ; $7529: $3C
    rst RST_38                                    ; $752A: $FF
    rst RST_38                                    ; $752B: $FF
    rst RST_38                                    ; $752C: $FF
    rst RST_38                                    ; $752D: $FF
    rst RST_38                                    ; $752E: $FF
    rst RST_38                                    ; $752F: $FF
    ld a, a                                       ; $7530: $7F
    rst RST_38                                    ; $7531: $FF
    rst RST_38                                    ; $7532: $FF
    db $FC                                        ; $7533: $FC
    cp $F3                                        ; $7534: $FE $F3
    rst RST_38                                    ; $7536: $FF
    ldh [rIE], a                                  ; $7537: $E0 $FF
    rst RST_38                                    ; $7539: $FF
    rst RST_38                                    ; $753A: $FF
    rst RST_38                                    ; $753B: $FF
    ccf                                           ; $753C: $3F
    rst RST_38                                    ; $753D: $FF
    rst RST_38                                    ; $753E: $FF
    rst RST_38                                    ; $753F: $FF
    rst RST_38                                    ; $7540: $FF
    ldh a, [rIE]                                  ; $7541: $F0 $FF
    rst RST_38                                    ; $7543: $FF
    rst RST_38                                    ; $7544: $FF
    rst RST_38                                    ; $7545: $FF
    rst RST_38                                    ; $7546: $FF
    rrca                                          ; $7547: $0F
    rst RST_08                                    ; $7548: $CF
    ld [hl], b                                    ; $7549: $70
    rst RST_18                                    ; $754A: $DF
    or e                                          ; $754B: $B3
    ei                                            ; $754C: $FB
    call nc, $E4FB                                ; $754D: $D4 $FB $E4
    rst RST_38                                    ; $7550: $FF
    ld sp, hl                                     ; $7551: $F9
    rst RST_38                                    ; $7552: $FF
    cp $FF                                        ; $7553: $FE $FF
    rra                                           ; $7555: $1F
    rra                                           ; $7556: $1F
    inc bc                                        ; $7557: $03
    dec bc                                        ; $7558: $0B
    inc b                                         ; $7559: $04
    rrca                                          ; $755A: $0F
    nop                                           ; $755B: $00
    rlca                                          ; $755C: $07
    nop                                           ; $755D: $00
    nop                                           ; $755E: $00
    nop                                           ; $755F: $00
    ldh [rP1], a                                  ; $7560: $E0 $00
    pop hl                                        ; $7562: $E1
    ret nz                                        ; $7563: $C0

    rst RST_08                                    ; $7564: $CF
    add c                                         ; $7565: $81
    rst RST_38                                    ; $7566: $FF
    rrca                                          ; $7567: $0F
    rst RST_38                                    ; $7568: $FF
    ld a, a                                       ; $7569: $7F
    rst RST_38                                    ; $756A: $FF
    db $FC                                        ; $756B: $FC
    db $FC                                        ; $756C: $FC
    ldh a, [$FFF0]                                ; $756D: $F0 $F0
    ret nz                                        ; $756F: $C0

    ret z                                         ; $7570: $C8

    jr c, jr_017_75BE                             ; $7571: $38 $4B

    ld hl, sp+$67                                 ; $7573: $F8 $67
    cp $FF                                        ; $7575: $FE $FF
    nop                                           ; $7577: $00
    rst RST_38                                    ; $7578: $FF
    rst RST_38                                    ; $7579: $FF
    rst RST_38                                    ; $757A: $FF
    rst RST_38                                    ; $757B: $FF
    rst RST_38                                    ; $757C: $FF
    ld hl, sp-$04                                 ; $757D: $F8 $FC
    rlca                                          ; $757F: $07
    rst RST_20                                    ; $7580: $E7
    rst RST_38                                    ; $7581: $FF
    rst RST_30                                    ; $7582: $F7
    rrca                                          ; $7583: $0F
    rst RST_38                                    ; $7584: $FF
    pop af                                        ; $7585: $F1
    rst RST_38                                    ; $7586: $FF
    cp $FF                                        ; $7587: $FE $FF
    ld a, a                                       ; $7589: $7F
    rst RST_38                                    ; $758A: $FF
    nop                                           ; $758B: $00
    rst RST_38                                    ; $758C: $FF
    nop                                           ; $758D: $00
    cp $FD                                        ; $758E: $FE $FD
    db $FD                                        ; $7590: $FD
    ld a, [$FDFE]                                 ; $7591: $FA $FE $FD
    rst RST_38                                    ; $7594: $FF
    nop                                           ; $7595: $00
    rst RST_38                                    ; $7596: $FF
    ret nz                                        ; $7597: $C0

    rst RST_38                                    ; $7598: $FF
    ld [hl], b                                    ; $7599: $70
    rst RST_38                                    ; $759A: $FF
    nop                                           ; $759B: $00
    rst RST_38                                    ; $759C: $FF
    nop                                           ; $759D: $00
    nop                                           ; $759E: $00
    nop                                           ; $759F: $00
    ld a, $00                                     ; $75A0: $3E $00
    cp $3C                                        ; $75A2: $FE $3C
    db $FC                                        ; $75A4: $FC
    ldh a, [$FFF7]                                ; $75A5: $F0 $F7
    ret nz                                        ; $75A7: $C0

    rst RST_08                                    ; $75A8: $CF
    rlca                                          ; $75A9: $07
    ld de, $100F                                  ; $75AA: $11 $0F $10
    rrca                                          ; $75AD: $0F
    jr nz, jr_017_75CF                            ; $75AE: $20 $1F

    cpl                                           ; $75B0: $2F
    db $10                                        ; $75B1: $10
    rst RST_38                                    ; $75B2: $FF
    dec bc                                        ; $75B3: $0B
    rst RST_18                                    ; $75B4: $DF
    db $EB                                        ; $75B5: $EB
    rst RST_38                                    ; $75B6: $FF
    nop                                           ; $75B7: $00
    rst RST_38                                    ; $75B8: $FF
    rst RST_38                                    ; $75B9: $FF
    rst RST_38                                    ; $75BA: $FF
    ldh [$FFFC], a                                ; $75BB: $E0 $FC
    rlca                                          ; $75BD: $07

jr_017_75BE:
    ld a, b                                       ; $75BE: $78
    adc a                                         ; $75BF: $8F
    ld a, b                                       ; $75C0: $78
    adc a                                         ; $75C1: $8F
    ld a, b                                       ; $75C2: $78
    adc a                                         ; $75C3: $8F
    ld a, b                                       ; $75C4: $78
    adc a                                         ; $75C5: $8F
    db $FC                                        ; $75C6: $FC
    rla                                           ; $75C7: $17
    rst RST_38                                    ; $75C8: $FF
    ldh [rIE], a                                  ; $75C9: $E0 $FF
    ld [$00FF], sp                                ; $75CB: $08 $FF $00
    rst RST_18                                    ; $75CE: $DF

jr_017_75CF:
    dec hl                                        ; $75CF: $2B
    ld c, a                                       ; $75D0: $4F
    or a                                          ; $75D1: $B7
    rst RST_18                                    ; $75D2: $DF
    daa                                           ; $75D3: $27
    rst RST_38                                    ; $75D4: $FF
    rlca                                          ; $75D5: $07
    rst RST_38                                    ; $75D6: $FF
    nop                                           ; $75D7: $00
    db $FD                                        ; $75D8: $FD
    ld [bc], a                                    ; $75D9: $02
    dec b                                         ; $75DA: $05
    ld a, [$01FE]                                 ; $75DB: $FA $FE $01
    rst RST_38                                    ; $75DE: $FF
    nop                                           ; $75DF: $00
    nop                                           ; $75E0: $00
    nop                                           ; $75E1: $00
    nop                                           ; $75E2: $00
    nop                                           ; $75E3: $00
    inc bc                                        ; $75E4: $03
    nop                                           ; $75E5: $00
    di                                            ; $75E6: $F3
    ld bc, $83E4                                  ; $75E7: $01 $E4 $83
    add h                                         ; $75EA: $84
    inc bc                                        ; $75EB: $03
    ret z                                         ; $75EC: $C8

    add a                                         ; $75ED: $87
    ret z                                         ; $75EE: $C8

    add a                                         ; $75EF: $87
    ret nc                                        ; $75F0: $D0

    rrca                                          ; $75F1: $0F
    ldh a, [$FFCF]                                ; $75F2: $F0 $CF
    ldh [$FFDF], a                                ; $75F4: $E0 $DF
    ldh [$FF1F], a                                ; $75F6: $E0 $1F
    pop hl                                        ; $75F8: $E1
    rst RST_18                                    ; $75F9: $DF
    jp Jump_017_673E                              ; $75FA: $C3 $3E $67


    sbc h                                         ; $75FD: $9C
    cpl                                           ; $75FE: $2F
    rst RST_18                                    ; $75FF: $DF
    ccf                                           ; $7600: $3F
    ret nc                                        ; $7601: $D0

    ld [hl-], a                                   ; $7602: $32
    call $F50A                                    ; $7603: $CD $0A $F5
    ld e, $E1                                     ; $7606: $1E $E1
    and $19                                       ; $7608: $E6 $19
    and a                                         ; $760A: $A7
    ld e, b                                       ; $760B: $58

jr_017_760C:
    rst RST_38                                    ; $760C: $FF
    add hl, bc                                    ; $760D: $09

jr_017_760E:
    rst RST_30                                    ; $760E: $F7
    jp hl                                         ; $760F: $E9


jr_017_7610:
    rst RST_38                                    ; $7610: $FF
    pop hl                                        ; $7611: $E1
    rst RST_38                                    ; $7612: $FF
    rst RST_38                                    ; $7613: $FF

jr_017_7614:
    rst RST_38                                    ; $7614: $FF
    cp $FF                                        ; $7615: $FE $FF
    nop                                           ; $7617: $00

jr_017_7618:
    xor l                                         ; $7618: $AD
    ld d, d                                       ; $7619: $52
    ld c, d                                       ; $761A: $4A
    or l                                          ; $761B: $B5
    ld [hl], e                                    ; $761C: $73
    adc h                                         ; $761D: $8C
    rst RST_38                                    ; $761E: $FF
    nop                                           ; $761F: $00
    nop                                           ; $7620: $00
    nop                                           ; $7621: $00
    nop                                           ; $7622: $00
    nop                                           ; $7623: $00
    rst RST_38                                    ; $7624: $FF
    nop                                           ; $7625: $00
    db $FC                                        ; $7626: $FC
    ld hl, sp+$38                                 ; $7627: $F8 $38
    ret nz                                        ; $7629: $C0

    jr nc, jr_017_760C                            ; $762A: $30 $E0

    jr nc, jr_017_760E                            ; $762C: $30 $E0

    jr nc, jr_017_7610                            ; $762E: $30 $E0

    ld e, $F0                                     ; $7630: $1E $F0
    jr c, jr_017_7614                             ; $7632: $38 $E0

    ld h, b                                       ; $7634: $60
    ret nz                                        ; $7635: $C0

    ret nz                                        ; $7636: $C0

    add b                                         ; $7637: $80
    add b                                         ; $7638: $80
    nop                                           ; $7639: $00
    nop                                           ; $763A: $00
    nop                                           ; $763B: $00
    ld hl, sp+$00                                 ; $763C: $F8 $00
    ret nz                                        ; $763E: $C0

    add b                                         ; $763F: $80
    add b                                         ; $7640: $80
    nop                                           ; $7641: $00
    ld [hl], b                                    ; $7642: $70
    add b                                         ; $7643: $80
    ld c, a                                       ; $7644: $4F
    or b                                          ; $7645: $B0
    ld c, d                                       ; $7646: $4A
    or l                                          ; $7647: $B5
    ld c, e                                       ; $7648: $4B
    or h                                          ; $7649: $B4
    swap l                                        ; $764A: $CB $35
    ei                                            ; $764C: $FB
    add h                                         ; $764D: $84
    jp z, $CCB4                                   ; $764E: $CA $B4 $CC

    or b                                          ; $7651: $B0
    ret nc                                        ; $7652: $D0

jr_017_7653:
    jr nz, jr_017_7653                            ; $7653: $20 $FE

    nop                                           ; $7655: $00
    jr c, jr_017_7618                             ; $7656: $38 $C0

    ret nz                                        ; $7658: $C0

    nop                                           ; $7659: $00
    ldh a, [rP1]                                  ; $765A: $F0 $00
    ret nz                                        ; $765C: $C0

    nop                                           ; $765D: $00
    nop                                           ; $765E: $00
    nop                                           ; $765F: $00
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
    ld b, $00                                     ; $7676: $06 $00
    ld c, $04                                     ; $7678: $0E $04
    inc a                                         ; $767A: $3C
    ld [$3078], sp                                ; $767B: $08 $78 $30
    ldh a, [$FF60]                                ; $767E: $F0 $60
    nop                                           ; $7680: $00
    nop                                           ; $7681: $00
    nop                                           ; $7682: $00
    nop                                           ; $7683: $00
    nop                                           ; $7684: $00
    nop                                           ; $7685: $00
    nop                                           ; $7686: $00
    nop                                           ; $7687: $00
    nop                                           ; $7688: $00
    nop                                           ; $7689: $00
    nop                                           ; $768A: $00
    nop                                           ; $768B: $00
    nop                                           ; $768C: $00
    nop                                           ; $768D: $00
    nop                                           ; $768E: $00
    nop                                           ; $768F: $00
    nop                                           ; $7690: $00
    nop                                           ; $7691: $00
    nop                                           ; $7692: $00
    nop                                           ; $7693: $00
    nop                                           ; $7694: $00
    nop                                           ; $7695: $00
    nop                                           ; $7696: $00
    nop                                           ; $7697: $00
    ldh a, [rP1]                                  ; $7698: $F0 $00
    ldh a, [$FF60]                                ; $769A: $F0 $60
    ldh [$FF80], a                                ; $769C: $E0 $80
    add b                                         ; $769E: $80
    nop                                           ; $769F: $00
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

Call_017_78B7:
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

Call_017_7E63:
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

Jump_017_7F3C:
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

Call_017_7FFF:
    rst RST_38                                    ; $7FFF: $FF
