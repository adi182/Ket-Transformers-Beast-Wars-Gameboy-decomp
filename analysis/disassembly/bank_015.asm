; Disassembly of "original.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $015", ROMX[$4000], BANK[$15]

    rst RST_30                                    ; $4000: $F7
    ld c, $DF                                     ; $4001: $0E $DF
    jr nc, @+$73                                  ; $4003: $30 $71

    ld l, $FF                                     ; $4005: $2E $FF
    rrca                                          ; $4007: $0F
    rst RST_18                                    ; $4008: $DF
    inc l                                         ; $4009: $2C
    ld a, a                                       ; $400A: $7F
    dec l                                         ; $400B: $2D
    ccf                                           ; $400C: $3F
    ld c, $0E                                     ; $400D: $0E $0E
    nop                                           ; $400F: $00
    nop                                           ; $4010: $00
    nop                                           ; $4011: $00
    nop                                           ; $4012: $00
    nop                                           ; $4013: $00
    nop                                           ; $4014: $00
    nop                                           ; $4015: $00
    nop                                           ; $4016: $00
    nop                                           ; $4017: $00
    ld bc, $0200                                  ; $4018: $01 $00 $02
    ld bc, $0003                                  ; $401B: $01 $03 $00
    nop                                           ; $401E: $00
    nop                                           ; $401F: $00
    rst RST_20                                    ; $4020: $E7
    ld a, [de]                                    ; $4021: $1A
    rst RST_38                                    ; $4022: $FF
    ld [bc], a                                    ; $4023: $02
    add a                                         ; $4024: $87
    ld a, d                                       ; $4025: $7A
    rst RST_38                                    ; $4026: $FF
    ld a, d                                       ; $4027: $7A
    rst RST_38                                    ; $4028: $FF
    ld [hl], c                                    ; $4029: $71
    pop af                                        ; $402A: $F1
    xor $FF                                       ; $402B: $EE $FF
    ld [hl], c                                    ; $402D: $71
    pop af                                        ; $402E: $F1
    ld c, $FF                                     ; $402F: $0E $FF
    ld [hl], c                                    ; $4031: $71
    rst RST_38                                    ; $4032: $FF
    ld a, l                                       ; $4033: $7D
    ld a, a                                       ; $4034: $7F
    ld a, $3F                                     ; $4035: $3E $3F
    rrca                                          ; $4037: $0F
    rst RST_38                                    ; $4038: $FF
    inc bc                                        ; $4039: $03
    rst RST_38                                    ; $403A: $FF
    ld bc, $5FBF                                  ; $403B: $01 $BF $5F
    rst RST_38                                    ; $403E: $FF
    nop                                           ; $403F: $00
    ld hl, sp-$10                                 ; $4040: $F8 $F0
    ld hl, sp-$10                                 ; $4042: $F8 $F0
    db $FC                                        ; $4044: $FC
    ld hl, sp-$04                                 ; $4045: $F8 $FC
    ld hl, sp-$02                                 ; $4047: $F8 $FE
    call c, $ECFE                                 ; $4049: $DC $FE $EC
    cp $EC                                        ; $404C: $FE $EC
    rst RST_38                                    ; $404E: $FF
    or $FF                                        ; $404F: $F6 $FF
    rst RST_30                                    ; $4051: $F7
    rst RST_38                                    ; $4052: $FF
    rst RST_30                                    ; $4053: $F7
    rst RST_38                                    ; $4054: $FF
    rst RST_28                                    ; $4055: $EF
    rst RST_38                                    ; $4056: $FF
    rra                                           ; $4057: $1F
    rst RST_18                                    ; $4058: $DF
    add a                                         ; $4059: $87
    rst RST_28                                    ; $405A: $EF
    ret nz                                        ; $405B: $C0

    ldh [$FFC0], a                                ; $405C: $E0 $C0
    ret nz                                        ; $405E: $C0

    nop                                           ; $405F: $00
    jr c, @+$12                                   ; $4060: $38 $10

    jr c, jr_015_4074                             ; $4062: $38 $10

    inc a                                         ; $4064: $3C
    jr jr_015_40A3                                ; $4065: $18 $3C

    jr jr_015_40A5                                ; $4067: $18 $3C

    jr jr_015_40A7                                ; $4069: $18 $3C

    jr @+$3E                                      ; $406B: $18 $3C

    jr jr_015_40EB                                ; $406D: $18 $7C

jr_015_406F:
    jr c, jr_015_40ED                             ; $406F: $38 $7C

    jr c, jr_015_406F                             ; $4071: $38 $FC

    ld a, b                                       ; $4073: $78

jr_015_4074:
    db $FC                                        ; $4074: $FC
    ld hl, sp-$08                                 ; $4075: $F8 $F8
    ldh a, [$FFF8]                                ; $4077: $F0 $F8
    ldh a, [$FFF0]                                ; $4079: $F0 $F0
    ldh [$FFE0], a                                ; $407B: $E0 $E0
    add b                                         ; $407D: $80
    add b                                         ; $407E: $80
    nop                                           ; $407F: $00
    nop                                           ; $4080: $00
    nop                                           ; $4081: $00
    nop                                           ; $4082: $00
    nop                                           ; $4083: $00
    nop                                           ; $4084: $00
    nop                                           ; $4085: $00
    nop                                           ; $4086: $00
    nop                                           ; $4087: $00
    inc bc                                        ; $4088: $03
    nop                                           ; $4089: $00
    rlca                                          ; $408A: $07
    inc bc                                        ; $408B: $03
    rlca                                          ; $408C: $07
    ld [bc], a                                    ; $408D: $02
    ccf                                           ; $408E: $3F
    ld b, $5F                                     ; $408F: $06 $5F
    cpl                                           ; $4091: $2F
    ld a, a                                       ; $4092: $7F
    rrca                                          ; $4093: $0F
    ccf                                           ; $4094: $3F
    jr @+$21                                      ; $4095: $18 $1F

    inc bc                                        ; $4097: $03
    inc bc                                        ; $4098: $03
    nop                                           ; $4099: $00
    nop                                           ; $409A: $00
    nop                                           ; $409B: $00
    inc c                                         ; $409C: $0C
    nop                                           ; $409D: $00
    ld a, [hl]                                    ; $409E: $7E
    nop                                           ; $409F: $00
    ld h, b                                       ; $40A0: $60
    nop                                           ; $40A1: $00
    db $FC                                        ; $40A2: $FC

jr_015_40A3:
    ld h, b                                       ; $40A3: $60
    db $FC                                        ; $40A4: $FC

jr_015_40A5:
    ld e, b                                       ; $40A5: $58
    db $FC                                        ; $40A6: $FC

jr_015_40A7:
    ld e, b                                       ; $40A7: $58
    ld hl, sp+$30                                 ; $40A8: $F8 $30
    ld hl, sp-$20                                 ; $40AA: $F8 $E0
    ld a, b                                       ; $40AC: $78

jr_015_40AD:
    or b                                          ; $40AD: $B0
    db $FC                                        ; $40AE: $FC
    jr c, jr_015_40AD                             ; $40AF: $38 $FC

    ld hl, sp-$02                                 ; $40B1: $F8 $FE
    ld a, h                                       ; $40B3: $7C
    rst RST_38                                    ; $40B4: $FF
    sbc $DF                                       ; $40B5: $DE $DF
    ccf                                           ; $40B7: $3F
    cpl                                           ; $40B8: $2F
    rra                                           ; $40B9: $1F
    cpl                                           ; $40BA: $2F
    rra                                           ; $40BB: $1F
    daa                                           ; $40BC: $27
    rra                                           ; $40BD: $1F
    daa                                           ; $40BE: $27
    ld e, $00                                     ; $40BF: $1E $00
    nop                                           ; $40C1: $00
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
    add b                                         ; $40D6: $80
    nop                                           ; $40D7: $00
    ret nz                                        ; $40D8: $C0

    add b                                         ; $40D9: $80
    ldh [$FFC0], a                                ; $40DA: $E0 $C0
    ldh a, [$FFE0]                                ; $40DC: $F0 $E0
    ldh a, [$FFE0]                                ; $40DE: $F0 $E0
    nop                                           ; $40E0: $00
    nop                                           ; $40E1: $00
    nop                                           ; $40E2: $00
    nop                                           ; $40E3: $00
    nop                                           ; $40E4: $00
    nop                                           ; $40E5: $00
    nop                                           ; $40E6: $00
    nop                                           ; $40E7: $00
    nop                                           ; $40E8: $00
    nop                                           ; $40E9: $00
    nop                                           ; $40EA: $00

jr_015_40EB:
    nop                                           ; $40EB: $00
    nop                                           ; $40EC: $00

jr_015_40ED:
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
    stop                                          ; $40FC: $10 $00
    jr c, jr_015_4110                             ; $40FE: $38 $10

    ld [hl], c                                    ; $4100: $71
    ld l, $FF                                     ; $4101: $2E $FF
    rrca                                          ; $4103: $0F
    rst RST_18                                    ; $4104: $DF
    inc l                                         ; $4105: $2C
    ld a, a                                       ; $4106: $7F
    dec l                                         ; $4107: $2D
    ccf                                           ; $4108: $3F
    ld c, $0E                                     ; $4109: $0E $0E
    nop                                           ; $410B: $00
    nop                                           ; $410C: $00
    nop                                           ; $410D: $00
    nop                                           ; $410E: $00
    nop                                           ; $410F: $00

jr_015_4110:
    nop                                           ; $4110: $00
    nop                                           ; $4111: $00
    nop                                           ; $4112: $00
    nop                                           ; $4113: $00
    nop                                           ; $4114: $00
    nop                                           ; $4115: $00
    nop                                           ; $4116: $00
    nop                                           ; $4117: $00
    ld bc, $0200                                  ; $4118: $01 $00 $02
    ld bc, $0003                                  ; $411B: $01 $03 $00
    nop                                           ; $411E: $00
    nop                                           ; $411F: $00
    add a                                         ; $4120: $87
    ld a, d                                       ; $4121: $7A
    rst RST_38                                    ; $4122: $FF
    ld a, d                                       ; $4123: $7A
    rst RST_38                                    ; $4124: $FF
    ld [hl], c                                    ; $4125: $71
    pop af                                        ; $4126: $F1
    xor $FF                                       ; $4127: $EE $FF
    ld [hl], c                                    ; $4129: $71
    pop af                                        ; $412A: $F1
    ld c, $FF                                     ; $412B: $0E $FF
    ld sp, $3FFF                                  ; $412D: $31 $FF $3F
    ld a, a                                       ; $4130: $7F
    inc a                                         ; $4131: $3C
    ld a, a                                       ; $4132: $7F
    ld e, $3F                                     ; $4133: $1E $3F
    rlca                                          ; $4135: $07
    rra                                           ; $4136: $1F
    inc bc                                        ; $4137: $03
    rst RST_38                                    ; $4138: $FF
    ld bc, $01FF                                  ; $4139: $01 $FF $01
    cp a                                          ; $413C: $BF
    ld e, a                                       ; $413D: $5F
    rst RST_38                                    ; $413E: $FF
    nop                                           ; $413F: $00
    ld hl, sp-$10                                 ; $4140: $F8 $F0
    db $FC                                        ; $4142: $FC
    ld hl, sp-$04                                 ; $4143: $F8 $FC
    ld hl, sp-$02                                 ; $4145: $F8 $FE
    call c, $ECFE                                 ; $4147: $DC $FE $EC
    cp $EC                                        ; $414A: $FE $EC
    rst RST_38                                    ; $414C: $FF
    or $FF                                        ; $414D: $F6 $FF
    rst RST_30                                    ; $414F: $F7
    rst RST_38                                    ; $4150: $FF
    rst RST_30                                    ; $4151: $F7
    rst RST_38                                    ; $4152: $FF
    rst RST_28                                    ; $4153: $EF
    rst RST_38                                    ; $4154: $FF
    rra                                           ; $4155: $1F
    sbc a                                         ; $4156: $9F
    rlca                                          ; $4157: $07
    rst RST_00                                    ; $4158: $C7
    add b                                         ; $4159: $80
    ldh [$FFC0], a                                ; $415A: $E0 $C0
    ldh [$FFC0], a                                ; $415C: $E0 $C0
    ret nz                                        ; $415E: $C0

    nop                                           ; $415F: $00
    inc a                                         ; $4160: $3C
    jr jr_015_419F                                ; $4161: $18 $3C

    jr jr_015_41A1                                ; $4163: $18 $3C

    jr jr_015_41A3                                ; $4165: $18 $3C

    jr jr_015_41E5                                ; $4167: $18 $7C

jr_015_4169:
    jr c, jr_015_41E7                             ; $4169: $38 $7C

    jr c, jr_015_4169                             ; $416B: $38 $FC

    ld a, b                                       ; $416D: $78
    db $FC                                        ; $416E: $FC
    ld hl, sp-$08                                 ; $416F: $F8 $F8
    ldh a, [$FFF8]                                ; $4171: $F0 $F8
    ldh a, [$FFF0]                                ; $4173: $F0 $F0
    ldh [$FFE0], a                                ; $4175: $E0 $E0
    add b                                         ; $4177: $80
    add b                                         ; $4178: $80
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
    inc bc                                        ; $4186: $03
    nop                                           ; $4187: $00
    rlca                                          ; $4188: $07
    inc bc                                        ; $4189: $03
    rlca                                          ; $418A: $07
    ld [bc], a                                    ; $418B: $02
    ccf                                           ; $418C: $3F
    ld b, $5F                                     ; $418D: $06 $5F
    cpl                                           ; $418F: $2F
    ld a, a                                       ; $4190: $7F
    rrca                                          ; $4191: $0F
    ccf                                           ; $4192: $3F
    jr @+$21                                      ; $4193: $18 $1F

    inc bc                                        ; $4195: $03
    inc bc                                        ; $4196: $03
    nop                                           ; $4197: $00
    inc c                                         ; $4198: $0C
    nop                                           ; $4199: $00
    ld a, [hl]                                    ; $419A: $7E
    nop                                           ; $419B: $00
    rst RST_30                                    ; $419C: $F7

jr_015_419D:
    ld c, $DF                                     ; $419D: $0E $DF

jr_015_419F:
    jr nc, jr_015_419D                            ; $419F: $30 $FC

jr_015_41A1:
    ld h, b                                       ; $41A1: $60
    db $FC                                        ; $41A2: $FC

jr_015_41A3:
    ld e, b                                       ; $41A3: $58
    db $FC                                        ; $41A4: $FC
    ld e, b                                       ; $41A5: $58
    ld hl, sp+$30                                 ; $41A6: $F8 $30
    ld hl, sp-$20                                 ; $41A8: $F8 $E0
    ld a, b                                       ; $41AA: $78

jr_015_41AB:
    or b                                          ; $41AB: $B0
    db $FC                                        ; $41AC: $FC
    jr c, jr_015_41AB                             ; $41AD: $38 $FC

    ld hl, sp-$02                                 ; $41AF: $F8 $FE
    ld a, h                                       ; $41B1: $7C
    rst RST_38                                    ; $41B2: $FF
    sbc $DF                                       ; $41B3: $DE $DF
    ccf                                           ; $41B5: $3F
    cpl                                           ; $41B6: $2F
    rra                                           ; $41B7: $1F
    cpl                                           ; $41B8: $2F
    rra                                           ; $41B9: $1F
    daa                                           ; $41BA: $27
    ld e, $E7                                     ; $41BB: $1E $E7
    ld a, [de]                                    ; $41BD: $1A
    rst RST_38                                    ; $41BE: $FF
    ld [bc], a                                    ; $41BF: $02
    nop                                           ; $41C0: $00
    nop                                           ; $41C1: $00
    nop                                           ; $41C2: $00
    nop                                           ; $41C3: $00
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
    nop                                           ; $41D2: $00
    nop                                           ; $41D3: $00
    add b                                         ; $41D4: $80
    nop                                           ; $41D5: $00
    ret nz                                        ; $41D6: $C0

    add b                                         ; $41D7: $80
    ldh [$FFC0], a                                ; $41D8: $E0 $C0
    ldh a, [$FFE0]                                ; $41DA: $F0 $E0
    ldh a, [$FFE0]                                ; $41DC: $F0 $E0
    ld hl, sp-$10                                 ; $41DE: $F8 $F0
    nop                                           ; $41E0: $00
    nop                                           ; $41E1: $00
    nop                                           ; $41E2: $00
    nop                                           ; $41E3: $00
    nop                                           ; $41E4: $00

jr_015_41E5:
    nop                                           ; $41E5: $00
    nop                                           ; $41E6: $00

jr_015_41E7:
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
    stop                                          ; $41F6: $10 $00
    jr c, jr_015_420A                             ; $41F8: $38 $10

    jr c, jr_015_420C                             ; $41FA: $38 $10

    jr c, jr_015_420E                             ; $41FC: $38 $10

    inc a                                         ; $41FE: $3C
    jr jr_015_4201                                ; $41FF: $18 $00

jr_015_4201:
    nop                                           ; $4201: $00
    nop                                           ; $4202: $00
    nop                                           ; $4203: $00
    nop                                           ; $4204: $00
    nop                                           ; $4205: $00
    nop                                           ; $4206: $00
    nop                                           ; $4207: $00
    nop                                           ; $4208: $00
    nop                                           ; $4209: $00

jr_015_420A:
    nop                                           ; $420A: $00
    nop                                           ; $420B: $00

jr_015_420C:
    nop                                           ; $420C: $00
    nop                                           ; $420D: $00

jr_015_420E:
    nop                                           ; $420E: $00
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
    ld h, b                                       ; $421E: $60
    nop                                           ; $421F: $00
    ccf                                           ; $4220: $3F
    ld b, $5F                                     ; $4221: $06 $5F
    cpl                                           ; $4223: $2F
    ld a, a                                       ; $4224: $7F
    rrca                                          ; $4225: $0F
    ccf                                           ; $4226: $3F
    jr @+$21                                      ; $4227: $18 $1F

    inc bc                                        ; $4229: $03
    inc bc                                        ; $422A: $03
    nop                                           ; $422B: $00
    inc c                                         ; $422C: $0C
    nop                                           ; $422D: $00
    ld a, [hl]                                    ; $422E: $7E
    nop                                           ; $422F: $00
    rst RST_30                                    ; $4230: $F7
    ld c, $DF                                     ; $4231: $0E $DF
    jr nc, jr_015_42A6                            ; $4233: $30 $71

    ld l, $FF                                     ; $4235: $2E $FF
    rrca                                          ; $4237: $0F
    rst RST_18                                    ; $4238: $DF
    inc l                                         ; $4239: $2C
    ld a, a                                       ; $423A: $7F
    dec l                                         ; $423B: $2D
    ccf                                           ; $423C: $3F
    ld c, $0E                                     ; $423D: $0E $0E
    nop                                           ; $423F: $00
    rst RST_38                                    ; $4240: $FF
    ld sp, $3FFF                                  ; $4241: $31 $FF $3F
    ld a, a                                       ; $4244: $7F
    inc a                                         ; $4245: $3C
    ld a, a                                       ; $4246: $7F
    ld e, $3F                                     ; $4247: $1E $3F
    rlca                                          ; $4249: $07
    rra                                           ; $424A: $1F
    inc bc                                        ; $424B: $03
    rlca                                          ; $424C: $07
    ld bc, $010F                                  ; $424D: $01 $0F $01
    rra                                           ; $4250: $1F
    ld bc, $033F                                  ; $4251: $01 $3F $03
    ld a, a                                       ; $4254: $7F
    inc bc                                        ; $4255: $03
    ld l, a                                       ; $4256: $6F
    ld b, $0E                                     ; $4257: $06 $0E
    inc b                                         ; $4259: $04
    inc d                                         ; $425A: $14
    ld [$0018], sp                                ; $425B: $08 $18 $00
    nop                                           ; $425E: $00
    nop                                           ; $425F: $00
    db $FC                                        ; $4260: $FC
    ld hl, sp-$04                                 ; $4261: $F8 $FC
    ld hl, sp-$02                                 ; $4263: $F8 $FE
    call c, $ECFE                                 ; $4265: $DC $FE $EC
    rst RST_38                                    ; $4268: $FF
    xor $FF                                       ; $4269: $EE $FF
    rst RST_30                                    ; $426B: $F7
    rst RST_38                                    ; $426C: $FF
    rst RST_30                                    ; $426D: $F7
    rst RST_38                                    ; $426E: $FF
    rst RST_30                                    ; $426F: $F7
    rst RST_38                                    ; $4270: $FF
    rst RST_28                                    ; $4271: $EF
    rst RST_38                                    ; $4272: $FF
    rra                                           ; $4273: $1F
    sbc a                                         ; $4274: $9F
    nop                                           ; $4275: $00
    ret nz                                        ; $4276: $C0

    add b                                         ; $4277: $80
    ldh [$FFC0], a                                ; $4278: $E0 $C0
    ldh [$FFC0], a                                ; $427A: $E0 $C0
    ret nz                                        ; $427C: $C0

    add b                                         ; $427D: $80
    add b                                         ; $427E: $80
    nop                                           ; $427F: $00
    db $FC                                        ; $4280: $FC

jr_015_4281:
    jr c, jr_015_4281                             ; $4281: $38 $FE

    db $FC                                        ; $4283: $FC
    rst RST_38                                    ; $4284: $FF
    ld a, [hl]                                    ; $4285: $7E
    rst RST_38                                    ; $4286: $FF
    rst RST_18                                    ; $4287: $DF
    rst RST_18                                    ; $4288: $DF
    ccf                                           ; $4289: $3F
    cpl                                           ; $428A: $2F
    rra                                           ; $428B: $1F
    cpl                                           ; $428C: $2F
    rra                                           ; $428D: $1F
    ld b, a                                       ; $428E: $47
    ld a, $C7                                     ; $428F: $3E $C7
    ld a, [hl-]                                   ; $4291: $3A
    rst RST_38                                    ; $4292: $FF
    ld [bc], a                                    ; $4293: $02
    add a                                         ; $4294: $87
    ld a, d                                       ; $4295: $7A
    rst RST_38                                    ; $4296: $FF
    ld a, d                                       ; $4297: $7A
    rst RST_38                                    ; $4298: $FF
    ld [hl], c                                    ; $4299: $71
    pop af                                        ; $429A: $F1
    xor $FF                                       ; $429B: $EE $FF
    ld [hl], c                                    ; $429D: $71
    pop af                                        ; $429E: $F1
    ld c, $80                                     ; $429F: $0E $80
    nop                                           ; $42A1: $00
    add b                                         ; $42A2: $80
    nop                                           ; $42A3: $00
    nop                                           ; $42A4: $00
    nop                                           ; $42A5: $00

jr_015_42A6:
    nop                                           ; $42A6: $00
    nop                                           ; $42A7: $00
    nop                                           ; $42A8: $00
    nop                                           ; $42A9: $00
    add b                                         ; $42AA: $80
    nop                                           ; $42AB: $00
    ret nz                                        ; $42AC: $C0

    add b                                         ; $42AD: $80
    ldh [$FFC0], a                                ; $42AE: $E0 $C0
    ldh a, [$FFE0]                                ; $42B0: $F0 $E0
    ld hl, sp-$10                                 ; $42B2: $F8 $F0
    ld hl, sp-$10                                 ; $42B4: $F8 $F0
    db $FC                                        ; $42B6: $FC
    ld hl, sp-$02                                 ; $42B7: $F8 $FE
    call c, Call_015_5CFE                         ; $42B9: $DC $FE $5C
    rst RST_38                                    ; $42BC: $FF
    ld e, [hl]                                    ; $42BD: $5E
    rst RST_38                                    ; $42BE: $FF
    ld e, [hl]                                    ; $42BF: $5E
    jr c, @+$12                                   ; $42C0: $38 $10

    jr c, jr_015_42D4                             ; $42C2: $38 $10

    inc a                                         ; $42C4: $3C
    jr jr_015_4303                                ; $42C5: $18 $3C

    jr jr_015_4305                                ; $42C7: $18 $3C

    jr jr_015_4307                                ; $42C9: $18 $3C

    jr jr_015_4309                                ; $42CB: $18 $3C

    jr jr_015_434B                                ; $42CD: $18 $7C

jr_015_42CF:
    jr c, jr_015_434D                             ; $42CF: $38 $7C

    jr c, jr_015_42CF                             ; $42D1: $38 $FC

    ld a, b                                       ; $42D3: $78

jr_015_42D4:
    db $FC                                        ; $42D4: $FC
    ld hl, sp-$08                                 ; $42D5: $F8 $F8
    ldh a, [$FFF8]                                ; $42D7: $F0 $F8
    ldh a, [$FFF0]                                ; $42D9: $F0 $F0
    ldh [$FFE0], a                                ; $42DB: $E0 $E0
    add b                                         ; $42DD: $80
    add b                                         ; $42DE: $80
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
    stop                                          ; $42FC: $10 $00
    jr c, jr_015_4310                             ; $42FE: $38 $10

    nop                                           ; $4300: $00
    nop                                           ; $4301: $00
    nop                                           ; $4302: $00

jr_015_4303:
    nop                                           ; $4303: $00
    nop                                           ; $4304: $00

jr_015_4305:
    nop                                           ; $4305: $00
    nop                                           ; $4306: $00

jr_015_4307:
    nop                                           ; $4307: $00
    nop                                           ; $4308: $00

jr_015_4309:
    nop                                           ; $4309: $00
    nop                                           ; $430A: $00
    nop                                           ; $430B: $00
    nop                                           ; $430C: $00
    nop                                           ; $430D: $00
    nop                                           ; $430E: $00
    nop                                           ; $430F: $00

jr_015_4310:
    nop                                           ; $4310: $00
    nop                                           ; $4311: $00
    inc c                                         ; $4312: $0C
    nop                                           ; $4313: $00
    rra                                           ; $4314: $1F
    inc c                                         ; $4315: $0C
    rra                                           ; $4316: $1F
    dec bc                                        ; $4317: $0B
    rra                                           ; $4318: $1F
    dec bc                                        ; $4319: $0B
    ld a, a                                       ; $431A: $7F
    ld b, $FF                                     ; $431B: $06 $FF
    ld a, h                                       ; $431D: $7C
    rst RST_28                                    ; $431E: $EF
    ld d, [hl]                                    ; $431F: $56
    ccf                                           ; $4320: $3F
    inc c                                         ; $4321: $0C
    ccf                                           ; $4322: $3F
    rrca                                          ; $4323: $0F
    rra                                           ; $4324: $1F
    rrca                                          ; $4325: $0F
    rra                                           ; $4326: $1F
    rlca                                          ; $4327: $07
    rrca                                          ; $4328: $0F
    ld bc, $0007                                  ; $4329: $01 $07 $00
    ld bc, $0300                                  ; $432C: $01 $00 $03
    nop                                           ; $432F: $00
    rlca                                          ; $4330: $07
    nop                                           ; $4331: $00
    rrca                                          ; $4332: $0F
    nop                                           ; $4333: $00
    rra                                           ; $4334: $1F
    nop                                           ; $4335: $00
    dec de                                        ; $4336: $1B
    ld bc, $0103                                  ; $4337: $01 $03 $01
    dec b                                         ; $433A: $05
    ld [bc], a                                    ; $433B: $02
    ld b, $00                                     ; $433C: $06 $00
    nop                                           ; $433E: $00
    nop                                           ; $433F: $00
    rst RST_38                                    ; $4340: $FF
    ld a, l                                       ; $4341: $7D
    rst RST_38                                    ; $4342: $FF
    db $FD                                        ; $4343: $FD
    rst RST_38                                    ; $4344: $FF
    dec a                                         ; $4345: $3D
    rst RST_38                                    ; $4346: $FF
    cp e                                          ; $4347: $BB
    rst RST_38                                    ; $4348: $FF
    rst RST_00                                    ; $4349: $C7
    rst RST_20                                    ; $434A: $E7

jr_015_434B:
    pop bc                                        ; $434B: $C1
    pop af                                        ; $434C: $F1

jr_015_434D:
    ld h, b                                       ; $434D: $60
    ld hl, sp+$70                                 ; $434E: $F8 $70
    ld hl, sp+$70                                 ; $4350: $F8 $70
    ldh a, [$FFE0]                                ; $4352: $F0 $E0
    ldh [$FFC0], a                                ; $4354: $E0 $C0
    ret nz                                        ; $4356: $C0

    add b                                         ; $4357: $80
    add b                                         ; $4358: $80
    nop                                           ; $4359: $00
    nop                                           ; $435A: $00
    nop                                           ; $435B: $00
    nop                                           ; $435C: $00
    nop                                           ; $435D: $00
    nop                                           ; $435E: $00
    nop                                           ; $435F: $00
    ld c, $04                                     ; $4360: $0E $04
    ld c, $04                                     ; $4362: $0E $04
    rrca                                          ; $4364: $0F
    ld b, $0F                                     ; $4365: $06 $0F
    ld b, $0F                                     ; $4367: $06 $0F
    ld b, $0F                                     ; $4369: $06 $0F
    ld b, $8F                                     ; $436B: $06 $8F
    ld b, $9F                                     ; $436D: $06 $9F
    ld c, $9F                                     ; $436F: $0E $9F
    ld c, $FF                                     ; $4371: $0E $FF
    sbc [hl]                                      ; $4373: $9E
    rst RST_38                                    ; $4374: $FF
    cp $FE                                        ; $4375: $FE $FE
    db $FC                                        ; $4377: $FC
    cp $FC                                        ; $4378: $FE $FC
    db $FC                                        ; $437A: $FC
    ld hl, sp-$08                                 ; $437B: $F8 $F8
    ldh [$FFE0], a                                ; $437D: $E0 $E0
    nop                                           ; $437F: $00
    nop                                           ; $4380: $00
    nop                                           ; $4381: $00
    add b                                         ; $4382: $80
    nop                                           ; $4383: $00
    ret nz                                        ; $4384: $C0

    add b                                         ; $4385: $80
    ldh [$FFC0], a                                ; $4386: $E0 $C0
    ldh a, [$FFE0]                                ; $4388: $F0 $E0
    ldh a, [$FFE0]                                ; $438A: $F0 $E0
    ld hl, sp-$10                                 ; $438C: $F8 $F0
    db $FC                                        ; $438E: $FC
    cp b                                          ; $438F: $B8
    db $FC                                        ; $4390: $FC
    cp b                                          ; $4391: $B8
    cp $BC                                        ; $4392: $FE $BC
    cp $BC                                        ; $4394: $FE $BC
    rst RST_38                                    ; $4396: $FF
    cp [hl]                                       ; $4397: $BE
    rst RST_38                                    ; $4398: $FF
    ld a, [hl]                                    ; $4399: $7E
    ld a, a                                       ; $439A: $7F
    or a                                          ; $439B: $B7
    rst RST_38                                    ; $439C: $FF
    ld a, e                                       ; $439D: $7B
    ld a, a                                       ; $439E: $7F
    cp e                                          ; $439F: $BB
    cp [hl]                                       ; $43A0: $BE
    ld e, b                                       ; $43A1: $58
    rst RST_38                                    ; $43A2: $FF
    ld e, $FF                                     ; $43A3: $1E $FF
    rst RST_38                                    ; $43A5: $FF
    rst RST_38                                    ; $43A6: $FF
    cp a                                          ; $43A7: $BF
    rst RST_30                                    ; $43A8: $F7
    ld l, a                                       ; $43A9: $6F
    ei                                            ; $43AA: $FB
    add a                                         ; $43AB: $87
    adc c                                         ; $43AC: $89
    rlca                                          ; $43AD: $07
    adc c                                         ; $43AE: $89
    rlca                                          ; $43AF: $07
    pop af                                        ; $43B0: $F1
    adc [hl]                                      ; $43B1: $8E
    rst RST_38                                    ; $43B2: $FF
    nop                                           ; $43B3: $00
    ld h, c                                       ; $43B4: $61
    sbc [hl]                                      ; $43B5: $9E
    rst RST_38                                    ; $43B6: $FF
    sbc $FF                                       ; $43B7: $DE $FF
    inc e                                         ; $43B9: $1C
    db $FC                                        ; $43BA: $FC
    ld a, e                                       ; $43BB: $7B
    rst RST_38                                    ; $43BC: $FF
    sbc h                                         ; $43BD: $9C
    cp h                                          ; $43BE: $BC
    inc bc                                        ; $43BF: $03
    inc bc                                        ; $43C0: $03
    ld bc, $031F                                  ; $43C1: $01 $1F $03
    cpl                                           ; $43C4: $2F
    rla                                           ; $43C5: $17
    ccf                                           ; $43C6: $3F
    rlca                                          ; $43C7: $07
    rra                                           ; $43C8: $1F
    inc c                                         ; $43C9: $0C
    rrca                                          ; $43CA: $0F
    ld bc, $0003                                  ; $43CB: $01 $03 $00
    rra                                           ; $43CE: $1F
    nop                                           ; $43CF: $00
    dec a                                         ; $43D0: $3D
    inc bc                                        ; $43D1: $03
    scf                                           ; $43D2: $37
    inc c                                         ; $43D3: $0C
    inc e                                         ; $43D4: $1C
    dec bc                                        ; $43D5: $0B
    ccf                                           ; $43D6: $3F
    inc bc                                        ; $43D7: $03
    scf                                           ; $43D8: $37
    dec bc                                        ; $43D9: $0B
    rra                                           ; $43DA: $1F
    dec bc                                        ; $43DB: $0B
    rrca                                          ; $43DC: $0F
    inc bc                                        ; $43DD: $03
    inc bc                                        ; $43DE: $03
    nop                                           ; $43DF: $00
    nop                                           ; $43E0: $00
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
    inc c                                         ; $43F4: $0C
    nop                                           ; $43F5: $00
    rra                                           ; $43F6: $1F
    inc c                                         ; $43F7: $0C
    rra                                           ; $43F8: $1F
    dec bc                                        ; $43F9: $0B
    rra                                           ; $43FA: $1F
    dec bc                                        ; $43FB: $0B
    ld a, a                                       ; $43FC: $7F
    ld b, $FF                                     ; $43FD: $06 $FF
    ld a, h                                       ; $43FF: $7C
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
    nop                                           ; $4414: $00
    nop                                           ; $4415: $00
    nop                                           ; $4416: $00
    nop                                           ; $4417: $00
    nop                                           ; $4418: $00
    nop                                           ; $4419: $00
    nop                                           ; $441A: $00
    nop                                           ; $441B: $00
    inc b                                         ; $441C: $04
    nop                                           ; $441D: $00
    ld c, $04                                     ; $441E: $0E $04
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
    nop                                           ; $442A: $00
    nop                                           ; $442B: $00
    nop                                           ; $442C: $00
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
    add b                                         ; $443A: $80
    nop                                           ; $443B: $00
    add b                                         ; $443C: $80
    nop                                           ; $443D: $00
    add b                                         ; $443E: $80
    nop                                           ; $443F: $00
    ccf                                           ; $4440: $3F
    ld b, $5F                                     ; $4441: $06 $5F
    cpl                                           ; $4443: $2F
    ld a, a                                       ; $4444: $7F
    rrca                                          ; $4445: $0F
    ccf                                           ; $4446: $3F
    jr jr_015_4468                                ; $4447: $18 $1F

    inc bc                                        ; $4449: $03
    inc bc                                        ; $444A: $03
    nop                                           ; $444B: $00
    inc c                                         ; $444C: $0C
    nop                                           ; $444D: $00
    ld a, [hl]                                    ; $444E: $7E
    nop                                           ; $444F: $00
    rst RST_30                                    ; $4450: $F7
    ld c, $DF                                     ; $4451: $0E $DF
    jr nc, jr_015_44C6                            ; $4453: $30 $71

    ld l, $FF                                     ; $4455: $2E $FF
    rrca                                          ; $4457: $0F
    rst RST_18                                    ; $4458: $DF
    inc l                                         ; $4459: $2C
    ld a, a                                       ; $445A: $7F
    dec l                                         ; $445B: $2D
    ccf                                           ; $445C: $3F
    ld c, $0E                                     ; $445D: $0E $0E
    nop                                           ; $445F: $00
    rst RST_20                                    ; $4460: $E7
    ld a, [de]                                    ; $4461: $1A
    rst RST_38                                    ; $4462: $FF
    ld [bc], a                                    ; $4463: $02
    add a                                         ; $4464: $87
    ld a, d                                       ; $4465: $7A
    rst RST_38                                    ; $4466: $FF
    ld a, d                                       ; $4467: $7A

jr_015_4468:
    rst RST_38                                    ; $4468: $FF
    ld [hl], c                                    ; $4469: $71
    pop af                                        ; $446A: $F1
    xor $FF                                       ; $446B: $EE $FF
    ld [hl], c                                    ; $446D: $71
    ld [hl], c                                    ; $446E: $71
    ld c, $0F                                     ; $446F: $0E $0F
    nop                                           ; $4471: $00
    add hl, bc                                    ; $4472: $09
    ld b, $05                                     ; $4473: $06 $05
    ld [bc], a                                    ; $4475: $02
    inc bc                                        ; $4476: $03
    ld bc, $0103                                  ; $4477: $01 $03 $01
    inc bc                                        ; $447A: $03
    ld bc, $0001                                  ; $447B: $01 $01 $00
    ld bc, $F800                                  ; $447E: $01 $00 $F8
    ldh a, [$FFFC]                                ; $4481: $F0 $FC
    ld hl, sp-$04                                 ; $4483: $F8 $FC
    ld hl, sp-$02                                 ; $4485: $F8 $FE
    db $FC                                        ; $4487: $FC
    cp $BC                                        ; $4488: $FE $BC
    rst RST_38                                    ; $448A: $FF
    ld a, [hl]                                    ; $448B: $7E
    rst RST_38                                    ; $448C: $FF
    ld a, a                                       ; $448D: $7F
    rst RST_38                                    ; $448E: $FF
    ei                                            ; $448F: $FB
    rst RST_38                                    ; $4490: $FF
    ei                                            ; $4491: $FB
    rst RST_38                                    ; $4492: $FF
    ld a, [$F9FF]                                 ; $4493: $FA $FF $F9
    rst RST_38                                    ; $4496: $FF
    rst RST_30                                    ; $4497: $F7
    rst RST_38                                    ; $4498: $FF
    rst RST_38                                    ; $4499: $FF
    rst RST_38                                    ; $449A: $FF
    db $FC                                        ; $449B: $FC
    db $FC                                        ; $449C: $FC
    jr c, jr_015_44D7                             ; $449D: $38 $38

    nop                                           ; $449F: $00
    inc a                                         ; $44A0: $3C
    jr jr_015_44DF                                ; $44A1: $18 $3C

    jr jr_015_4521                                ; $44A3: $18 $7C

jr_015_44A5:
    jr c, jr_015_4523                             ; $44A5: $38 $7C

    jr c, jr_015_44A5                             ; $44A7: $38 $FC

    ld a, b                                       ; $44A9: $78
    db $FC                                        ; $44AA: $FC
    ld hl, sp-$08                                 ; $44AB: $F8 $F8
    ldh a, [$FFF8]                                ; $44AD: $F0 $F8
    ldh a, [$FFFC]                                ; $44AF: $F0 $FC
    jr nz, @+$01                                  ; $44B1: $20 $FF

    ret nz                                        ; $44B3: $C0

    rst RST_38                                    ; $44B4: $FF
    ldh [$FFFB], a                                ; $44B5: $E0 $FB
    jr nc, jr_015_44F5                            ; $44B7: $30 $3C

    jr jr_015_44D9                                ; $44B9: $18 $1E

    ld [$020D], sp                                ; $44BB: $08 $0D $02
    inc bc                                        ; $44BE: $03
    nop                                           ; $44BF: $00
    nop                                           ; $44C0: $00
    nop                                           ; $44C1: $00
    ld h, b                                       ; $44C2: $60
    nop                                           ; $44C3: $00
    ld hl, sp+$60                                 ; $44C4: $F8 $60

jr_015_44C6:
    db $FC                                        ; $44C6: $FC
    ld e, b                                       ; $44C7: $58
    db $FC                                        ; $44C8: $FC
    ld e, b                                       ; $44C9: $58
    ld hl, sp+$30                                 ; $44CA: $F8 $30
    ld hl, sp-$20                                 ; $44CC: $F8 $E0
    ld a, b                                       ; $44CE: $78
    or b                                          ; $44CF: $B0
    db $FC                                        ; $44D0: $FC

jr_015_44D1:
    jr c, jr_015_44D1                             ; $44D1: $38 $FE

    db $FC                                        ; $44D3: $FC
    rst RST_38                                    ; $44D4: $FF
    ld a, [hl]                                    ; $44D5: $7E
    rst RST_38                                    ; $44D6: $FF

jr_015_44D7:
    rst RST_18                                    ; $44D7: $DF
    rst RST_18                                    ; $44D8: $DF

jr_015_44D9:
    ccf                                           ; $44D9: $3F
    cpl                                           ; $44DA: $2F
    rra                                           ; $44DB: $1F
    cpl                                           ; $44DC: $2F
    rra                                           ; $44DD: $1F
    daa                                           ; $44DE: $27

jr_015_44DF:
    ld e, $00                                     ; $44DF: $1E $00
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
    add b                                         ; $44F2: $80
    nop                                           ; $44F3: $00
    ret nz                                        ; $44F4: $C0

jr_015_44F5:
    add b                                         ; $44F5: $80
    ret nz                                        ; $44F6: $C0

    add b                                         ; $44F7: $80
    ldh [$FFC0], a                                ; $44F8: $E0 $C0
    ldh a, [$FFE0]                                ; $44FA: $F0 $E0
    ldh a, [$FFE0]                                ; $44FC: $F0 $E0
    ld hl, sp-$10                                 ; $44FE: $F8 $F0
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
    stop                                          ; $4512: $10 $00
    jr c, jr_015_4526                             ; $4514: $38 $10

    jr c, jr_015_4528                             ; $4516: $38 $10

    jr c, jr_015_452A                             ; $4518: $38 $10

    inc a                                         ; $451A: $3C
    jr jr_015_4559                                ; $451B: $18 $3C

    jr jr_015_455B                                ; $451D: $18 $3C

    jr jr_015_4521                                ; $451F: $18 $00

jr_015_4521:
    nop                                           ; $4521: $00
    nop                                           ; $4522: $00

jr_015_4523:
    nop                                           ; $4523: $00
    nop                                           ; $4524: $00
    nop                                           ; $4525: $00

jr_015_4526:
    nop                                           ; $4526: $00
    nop                                           ; $4527: $00

jr_015_4528:
    nop                                           ; $4528: $00
    nop                                           ; $4529: $00

jr_015_452A:
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
    inc bc                                        ; $453A: $03
    nop                                           ; $453B: $00
    rlca                                          ; $453C: $07
    inc bc                                        ; $453D: $03
    rlca                                          ; $453E: $07
    ld [bc], a                                    ; $453F: $02
    ret nz                                        ; $4540: $C0

    nop                                           ; $4541: $00
    ret nz                                        ; $4542: $C0

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
    nop                                           ; $4550: $00
    nop                                           ; $4551: $00
    nop                                           ; $4552: $00
    nop                                           ; $4553: $00
    nop                                           ; $4554: $00
    nop                                           ; $4555: $00
    nop                                           ; $4556: $00
    nop                                           ; $4557: $00
    nop                                           ; $4558: $00

jr_015_4559:
    nop                                           ; $4559: $00
    nop                                           ; $455A: $00

jr_015_455B:
    nop                                           ; $455B: $00
    nop                                           ; $455C: $00
    nop                                           ; $455D: $00
    nop                                           ; $455E: $00
    nop                                           ; $455F: $00
    ld bc, $0F00                                  ; $4560: $01 $00 $0F
    nop                                           ; $4563: $00
    ld e, $01                                     ; $4564: $1E $01
    dec de                                        ; $4566: $1B
    ld b, $CE                                     ; $4567: $06 $CE
    dec b                                         ; $4569: $05
    rst RST_38                                    ; $456A: $FF
    ld bc, $057B                                  ; $456B: $01 $7B $05
    ccf                                           ; $456E: $3F
    dec b                                         ; $456F: $05
    rra                                           ; $4570: $1F
    ld bc, $0817                                  ; $4571: $01 $17 $08
    rrca                                          ; $4574: $0F
    ld b, $07                                     ; $4575: $06 $07
    inc bc                                        ; $4577: $03
    inc bc                                        ; $4578: $03
    ld bc, $0001                                  ; $4579: $01 $01 $00
    nop                                           ; $457C: $00
    nop                                           ; $457D: $00
    nop                                           ; $457E: $00
    nop                                           ; $457F: $00
    call nz, $C403                                ; $4580: $C4 $03 $C4
    inc bc                                        ; $4583: $03
    ld hl, sp-$39                                 ; $4584: $F8 $C7
    rst RST_38                                    ; $4586: $FF
    nop                                           ; $4587: $00
    jr nc, jr_015_4559                            ; $4588: $30 $CF

    rst RST_38                                    ; $458A: $FF
    rst RST_28                                    ; $458B: $EF
    rst RST_38                                    ; $458C: $FF
    adc [hl]                                      ; $458D: $8E
    rst RST_38                                    ; $458E: $FF
    cp l                                          ; $458F: $BD
    rst RST_38                                    ; $4590: $FF
    set 3, a                                      ; $4591: $CB $DF
    inc bc                                        ; $4593: $03
    sbc a                                         ; $4594: $9F
    rlca                                          ; $4595: $07
    rst RST_38                                    ; $4596: $FF
    adc [hl]                                      ; $4597: $8E
    rst RST_38                                    ; $4598: $FF
    db $FC                                        ; $4599: $FC
    db $FC                                        ; $459A: $FC
    ldh a, [$FFF0]                                ; $459B: $F0 $F0
    ld h, b                                       ; $459D: $60
    ld h, b                                       ; $459E: $60
    nop                                           ; $459F: $00
    db $FC                                        ; $45A0: $FC
    ld hl, sp-$02                                 ; $45A1: $F8 $FE
    call c, Call_015_5CFE                         ; $45A3: $DC $FE $5C
    rst RST_38                                    ; $45A6: $FF
    ld e, [hl]                                    ; $45A7: $5E
    rst RST_38                                    ; $45A8: $FF
    ld e, [hl]                                    ; $45A9: $5E
    rst RST_38                                    ; $45AA: $FF
    ld e, a                                       ; $45AB: $5F
    rst RST_38                                    ; $45AC: $FF
    rra                                           ; $45AD: $1F
    rst RST_38                                    ; $45AE: $FF
    rst RST_28                                    ; $45AF: $EF
    rst RST_38                                    ; $45B0: $FF
    di                                            ; $45B1: $F3
    rst RST_38                                    ; $45B2: $FF
    rst RST_38                                    ; $45B3: $FF
    rst RST_38                                    ; $45B4: $FF
    rst RST_38                                    ; $45B5: $FF
    rst RST_38                                    ; $45B6: $FF
    rst RST_38                                    ; $45B7: $FF
    rst RST_38                                    ; $45B8: $FF
    ld a, a                                       ; $45B9: $7F
    ld a, a                                       ; $45BA: $7F
    dec a                                         ; $45BB: $3D
    ccf                                           ; $45BC: $3F
    inc bc                                        ; $45BD: $03
    inc bc                                        ; $45BE: $03
    nop                                           ; $45BF: $00
    rlca                                          ; $45C0: $07
    ld [bc], a                                    ; $45C1: $02
    rlca                                          ; $45C2: $07
    ld [bc], a                                    ; $45C3: $02
    rlca                                          ; $45C4: $07
    inc bc                                        ; $45C5: $03
    rlca                                          ; $45C6: $07
    inc bc                                        ; $45C7: $03
    add a                                         ; $45C8: $87
    inc bc                                        ; $45C9: $03
    add a                                         ; $45CA: $87
    inc bc                                        ; $45CB: $03
    rst RST_00                                    ; $45CC: $C7
    add e                                         ; $45CD: $83
    rst RST_08                                    ; $45CE: $CF
    add a                                         ; $45CF: $87
    rst RST_08                                    ; $45D0: $CF
    add a                                         ; $45D1: $87
    rst RST_38                                    ; $45D2: $FF
    rst RST_08                                    ; $45D3: $CF
    rst RST_38                                    ; $45D4: $FF
    rst RST_38                                    ; $45D5: $FF
    rst RST_38                                    ; $45D6: $FF
    cp $FF                                        ; $45D7: $FE $FF
    cp $FE                                        ; $45D9: $FE $FE
    db $FC                                        ; $45DB: $FC
    db $FC                                        ; $45DC: $FC
    ldh a, [$FFF0]                                ; $45DD: $F0 $F0
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
    ld bc, $0100                                  ; $45EA: $01 $00 $01
    nop                                           ; $45ED: $00
    ld bc, $0700                                  ; $45EE: $01 $00 $07
    nop                                           ; $45F1: $00
    rrca                                          ; $45F2: $0F
    rlca                                          ; $45F3: $07
    ld c, $05                                     ; $45F4: $0E $05
    ld a, a                                       ; $45F6: $7F
    inc c                                         ; $45F7: $0C
    cp a                                          ; $45F8: $BF
    ld e, a                                       ; $45F9: $5F
    rst RST_38                                    ; $45FA: $FF
    ld e, $7F                                     ; $45FB: $1E $7F
    ld sp, $063F                                  ; $45FD: $31 $3F $06
    nop                                           ; $4600: $00
    nop                                           ; $4601: $00
    nop                                           ; $4602: $00
    nop                                           ; $4603: $00
    nop                                           ; $4604: $00
    nop                                           ; $4605: $00
    nop                                           ; $4606: $00
    nop                                           ; $4607: $00
    ret nz                                        ; $4608: $C0

    nop                                           ; $4609: $00
    ld hl, sp-$40                                 ; $460A: $F8 $C0
    ld hl, sp-$50                                 ; $460C: $F8 $B0
    ld hl, sp-$50                                 ; $460E: $F8 $B0
    ldh a, [$FF60]                                ; $4610: $F0 $60
    ldh a, [$FFC0]                                ; $4612: $F0 $C0
    ld hl, sp+$60                                 ; $4614: $F8 $60
    cp $78                                        ; $4616: $FE $78
    rst RST_38                                    ; $4618: $FF
    cp $FF                                        ; $4619: $FE $FF
    rst RST_38                                    ; $461B: $FF
    rst RST_18                                    ; $461C: $DF
    cp a                                          ; $461D: $BF
    rst RST_28                                    ; $461E: $EF
    rra                                           ; $461F: $1F
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
    nop                                           ; $4636: $00
    nop                                           ; $4637: $00
    nop                                           ; $4638: $00
    nop                                           ; $4639: $00
    add b                                         ; $463A: $80
    nop                                           ; $463B: $00
    ret nz                                        ; $463C: $C0

    add b                                         ; $463D: $80
    ret nz                                        ; $463E: $C0

    add b                                         ; $463F: $80
    nop                                           ; $4640: $00
    nop                                           ; $4641: $00
    nop                                           ; $4642: $00
    nop                                           ; $4643: $00
    nop                                           ; $4644: $00
    nop                                           ; $4645: $00
    ld b, b                                       ; $4646: $40
    nop                                           ; $4647: $00
    ldh [rLCDC], a                                ; $4648: $E0 $40
    ldh [rLCDC], a                                ; $464A: $E0 $40
    ldh [rLCDC], a                                ; $464C: $E0 $40
    ldh a, [$FF60]                                ; $464E: $F0 $60
    ldh a, [$FF60]                                ; $4650: $F0 $60
    ldh a, [$FF60]                                ; $4652: $F0 $60
    ldh a, [$FF60]                                ; $4654: $F0 $60
    ldh a, [$FF60]                                ; $4656: $F0 $60
    ldh a, [$FFE0]                                ; $4658: $F0 $E0
    ldh a, [$FFE0]                                ; $465A: $F0 $E0
    ldh a, [$FFE0]                                ; $465C: $F0 $E0
    ldh a, [$FFE0]                                ; $465E: $F0 $E0
    rlca                                          ; $4660: $07
    ld [bc], a                                    ; $4661: $02
    add a                                         ; $4662: $87
    ld [bc], a                                    ; $4663: $02
    add a                                         ; $4664: $87
    inc bc                                        ; $4665: $03
    rst RST_00                                    ; $4666: $C7
    add e                                         ; $4667: $83
    rst RST_00                                    ; $4668: $C7
    add e                                         ; $4669: $83
    rst RST_20                                    ; $466A: $E7
    jp $C3E7                                      ; $466B: $C3 $E7 $C3


    rst RST_28                                    ; $466E: $EF
    ld b, a                                       ; $466F: $47
    rst RST_38                                    ; $4670: $FF
    ld h, a                                       ; $4671: $67
    rst RST_38                                    ; $4672: $FF
    ld a, a                                       ; $4673: $7F
    rst RST_38                                    ; $4674: $FF
    ld a, [hl]                                    ; $4675: $7E
    rst RST_38                                    ; $4676: $FF
    cp $FE                                        ; $4677: $FE $FE
    db $FC                                        ; $4679: $FC
    db $FC                                        ; $467A: $FC
    ldh a, [$FFF0]                                ; $467B: $F0 $F0
    nop                                           ; $467D: $00
    nop                                           ; $467E: $00
    nop                                           ; $467F: $00
    rst RST_38                                    ; $4680: $FF
    cp $FF                                        ; $4681: $FE $FF
    ld e, a                                       ; $4683: $5F
    rst RST_38                                    ; $4684: $FF
    ld e, a                                       ; $4685: $5F
    rst RST_38                                    ; $4686: $FF
    cp a                                          ; $4687: $BF
    rst RST_38                                    ; $4688: $FF
    cp a                                          ; $4689: $BF
    rst RST_38                                    ; $468A: $FF
    ld a, a                                       ; $468B: $7F
    ld a, a                                       ; $468C: $7F
    cp [hl]                                       ; $468D: $BE
    rst RST_38                                    ; $468E: $FF
    ld a, a                                       ; $468F: $7F
    ld a, a                                       ; $4690: $7F
    cp a                                          ; $4691: $BF
    rst RST_38                                    ; $4692: $FF
    ld a, a                                       ; $4693: $7F
    rst RST_38                                    ; $4694: $FF
    cp a                                          ; $4695: $BF
    rst RST_38                                    ; $4696: $FF
    adc $FF                                       ; $4697: $CE $FF
    ld [hl], c                                    ; $4699: $71
    rst RST_38                                    ; $469A: $FF
    inc e                                         ; $469B: $1C
    cp $FC                                        ; $469C: $FE $FC
    db $FC                                        ; $469E: $FC
    nop                                           ; $469F: $00
    adc c                                         ; $46A0: $89
    rlca                                          ; $46A1: $07
    call nz, $FE83                                ; $46A2: $C4 $83 $FE
    ld bc, $9E61                                  ; $46A5: $01 $61 $9E
    rst RST_38                                    ; $46A8: $FF
    sbc $FF                                       ; $46A9: $DE $FF
    inc e                                         ; $46AB: $1C
    db $FC                                        ; $46AC: $FC
    ld a, e                                       ; $46AD: $7B
    rst RST_38                                    ; $46AE: $FF
    sbc h                                         ; $46AF: $9C
    sbc h                                         ; $46B0: $9C
    inc bc                                        ; $46B1: $03
    rrca                                          ; $46B2: $0F
    inc b                                         ; $46B3: $04
    rrca                                          ; $46B4: $0F
    rlca                                          ; $46B5: $07
    rlca                                          ; $46B6: $07
    inc bc                                        ; $46B7: $03
    rra                                           ; $46B8: $1F
    nop                                           ; $46B9: $00
    cpl                                           ; $46BA: $2F
    db $10                                        ; $46BB: $10
    dec sp                                        ; $46BC: $3B
    dec b                                         ; $46BD: $05
    rrca                                          ; $46BE: $0F
    nop                                           ; $46BF: $00
    rlca                                          ; $46C0: $07
    nop                                           ; $46C1: $00
    rrca                                          ; $46C2: $0F
    rlca                                          ; $46C3: $07
    ld c, $05                                     ; $46C4: $0E $05
    ld a, a                                       ; $46C6: $7F
    inc c                                         ; $46C7: $0C
    cp a                                          ; $46C8: $BF
    ld e, a                                       ; $46C9: $5F
    rst RST_38                                    ; $46CA: $FF
    ld e, $7F                                     ; $46CB: $1E $7F
    ld sp, $063F                                  ; $46CD: $31 $3F $06
    ld e, $01                                     ; $46D0: $1E $01
    scf                                           ; $46D2: $37
    inc c                                         ; $46D3: $0C
    inc a                                         ; $46D4: $3C
    dec bc                                        ; $46D5: $0B
    rra                                           ; $46D6: $1F
    inc bc                                        ; $46D7: $03
    scf                                           ; $46D8: $37
    dec bc                                        ; $46D9: $0B
    ccf                                           ; $46DA: $3F
    dec bc                                        ; $46DB: $0B
    rra                                           ; $46DC: $1F
    inc bc                                        ; $46DD: $03
    rrca                                          ; $46DE: $0F
    nop                                           ; $46DF: $00
    nop                                           ; $46E0: $00
    nop                                           ; $46E1: $00
    nop                                           ; $46E2: $00
    nop                                           ; $46E3: $00
    nop                                           ; $46E4: $00
    nop                                           ; $46E5: $00
    nop                                           ; $46E6: $00
    nop                                           ; $46E7: $00
    nop                                           ; $46E8: $00
    nop                                           ; $46E9: $00
    ld h, b                                       ; $46EA: $60
    nop                                           ; $46EB: $00
    ld hl, sp+$60                                 ; $46EC: $F8 $60
    db $FC                                        ; $46EE: $FC
    ld e, b                                       ; $46EF: $58
    db $FC                                        ; $46F0: $FC
    ld e, b                                       ; $46F1: $58
    ld hl, sp+$30                                 ; $46F2: $F8 $30
    ld hl, sp-$20                                 ; $46F4: $F8 $E0
    ld a, a                                       ; $46F6: $7F
    cp b                                          ; $46F7: $B8
    rst RST_38                                    ; $46F8: $FF
    ccf                                           ; $46F9: $3F
    rst RST_38                                    ; $46FA: $FF
    rst RST_38                                    ; $46FB: $FF
    rst RST_38                                    ; $46FC: $FF
    ld a, a                                       ; $46FD: $7F
    ei                                            ; $46FE: $FB
    rst RST_00                                    ; $46FF: $C7
    nop                                           ; $4700: $00
    nop                                           ; $4701: $00
    nop                                           ; $4702: $00
    nop                                           ; $4703: $00
    nop                                           ; $4704: $00
    nop                                           ; $4705: $00
    nop                                           ; $4706: $00
    nop                                           ; $4707: $00
    nop                                           ; $4708: $00
    nop                                           ; $4709: $00
    nop                                           ; $470A: $00
    nop                                           ; $470B: $00
    nop                                           ; $470C: $00
    nop                                           ; $470D: $00
    nop                                           ; $470E: $00
    nop                                           ; $470F: $00
    nop                                           ; $4710: $00
    nop                                           ; $4711: $00
    nop                                           ; $4712: $00
    nop                                           ; $4713: $00
    nop                                           ; $4714: $00
    nop                                           ; $4715: $00
    add b                                         ; $4716: $80
    nop                                           ; $4717: $00
    ldh a, [$FF80]                                ; $4718: $F0 $80
    db $FC                                        ; $471A: $FC
    ldh a, [$FFFE]                                ; $471B: $F0 $FE
    db $FC                                        ; $471D: $FC
    rst RST_38                                    ; $471E: $FF
    cp $00                                        ; $471F: $FE $00
    nop                                           ; $4721: $00
    nop                                           ; $4722: $00
    nop                                           ; $4723: $00
    nop                                           ; $4724: $00
    nop                                           ; $4725: $00
    nop                                           ; $4726: $00
    nop                                           ; $4727: $00
    ld b, b                                       ; $4728: $40
    nop                                           ; $4729: $00
    ldh [rLCDC], a                                ; $472A: $E0 $40
    ldh [rLCDC], a                                ; $472C: $E0 $40
    ldh [rLCDC], a                                ; $472E: $E0 $40
    ldh a, [$FF60]                                ; $4730: $F0 $60
    ldh a, [$FF60]                                ; $4732: $F0 $60
    ldh a, [$FF60]                                ; $4734: $F0 $60
    ldh a, [$FF60]                                ; $4736: $F0 $60
    ldh a, [$FF60]                                ; $4738: $F0 $60
    ldh a, [$FFE0]                                ; $473A: $F0 $E0
    ldh a, [$FFE0]                                ; $473C: $F0 $E0
    ldh a, [$FFE0]                                ; $473E: $F0 $E0
    inc bc                                        ; $4740: $03
    ld bc, $0103                                  ; $4741: $01 $03 $01
    inc bc                                        ; $4744: $03
    ld bc, $0133                                  ; $4745: $01 $33 $01
    ld a, a                                       ; $4748: $7F
    inc sp                                        ; $4749: $33
    ld a, a                                       ; $474A: $7F
    dec sp                                        ; $474B: $3B
    rst RST_38                                    ; $474C: $FF
    ld c, a                                       ; $474D: $4F
    rst RST_38                                    ; $474E: $FF
    ld [hl], h                                    ; $474F: $74
    ld a, l                                       ; $4750: $7D
    ld b, $0F                                     ; $4751: $06 $0F
    inc b                                         ; $4753: $04
    rrca                                          ; $4754: $0F
    rlca                                          ; $4755: $07
    rlca                                          ; $4756: $07
    ld bc, $0001                                  ; $4757: $01 $01 $00
    ld bc, $0100                                  ; $475A: $01 $00 $01
    nop                                           ; $475D: $00
    nop                                           ; $475E: $00
    nop                                           ; $475F: $00
    di                                            ; $4760: $F3
    db $FC                                        ; $4761: $FC
    push hl                                       ; $4762: $E5
    ei                                            ; $4763: $FB
    db $ED                                        ; $4764: $ED
    di                                            ; $4765: $F3
    push de                                       ; $4766: $D5
    db $E3                                        ; $4767: $E3
    push hl                                       ; $4768: $E5
    jp $C0E7                                      ; $4769: $C3 $E7 $C0


    rst RST_28                                    ; $476C: $EF
    pop bc                                        ; $476D: $C1
    db $FD                                        ; $476E: $FD
    db $EB                                        ; $476F: $EB
    push af                                       ; $4770: $F5
    xor e                                         ; $4771: $AB
    db $FD                                        ; $4772: $FD
    db $D3                                        ; $4773: $D3
    rst RST_38                                    ; $4774: $FF
    call nc, $C6FB                                ; $4775: $D4 $FB $C6
    rst RST_38                                    ; $4778: $FF
    ldh [$FFF6], a                                ; $4779: $E0 $F6
    jr nz, jr_015_47DD                            ; $477B: $20 $60

    add b                                         ; $477D: $80
    ret nz                                        ; $477E: $C0

    nop                                           ; $477F: $00
    xor a                                         ; $4780: $AF
    ld d, [hl]                                    ; $4781: $56
    xor a                                         ; $4782: $AF
    ld d, [hl]                                    ; $4783: $56
    rst RST_38                                    ; $4784: $FF
    xor h                                         ; $4785: $AC
    rst RST_38                                    ; $4786: $FF
    ldh [$FFF1], a                                ; $4787: $E0 $F1
    ldh [$FFE0], a                                ; $4789: $E0 $E0
    ld b, b                                       ; $478B: $40
    ldh [rLCDC], a                                ; $478C: $E0 $40
    ldh a, [rNR41]                                ; $478E: $F0 $20
    ldh a, [$FFE0]                                ; $4790: $F0 $E0
    ldh a, [$FFE0]                                ; $4792: $F0 $E0
    ldh a, [rP1]                                  ; $4794: $F0 $00
    ld [hl], b                                    ; $4796: $70
    ret nz                                        ; $4797: $C0

    ldh [rP1], a                                  ; $4798: $E0 $00
    ret nz                                        ; $479A: $C0

    nop                                           ; $479B: $00
    nop                                           ; $479C: $00
    nop                                           ; $479D: $00
    nop                                           ; $479E: $00
    nop                                           ; $479F: $00
    nop                                           ; $47A0: $00
    nop                                           ; $47A1: $00
    nop                                           ; $47A2: $00
    nop                                           ; $47A3: $00
    nop                                           ; $47A4: $00
    nop                                           ; $47A5: $00
    nop                                           ; $47A6: $00
    nop                                           ; $47A7: $00
    nop                                           ; $47A8: $00
    nop                                           ; $47A9: $00
    nop                                           ; $47AA: $00
    nop                                           ; $47AB: $00
    ld bc, $0700                                  ; $47AC: $01 $00 $07
    ld bc, $070F                                  ; $47AF: $01 $0F $07
    rra                                           ; $47B2: $1F
    rrca                                          ; $47B3: $0F
    ccf                                           ; $47B4: $3F
    rra                                           ; $47B5: $1F
    ld a, a                                       ; $47B6: $7F
    ccf                                           ; $47B7: $3F
    ld a, a                                       ; $47B8: $7F
    ccf                                           ; $47B9: $3F
    rst RST_38                                    ; $47BA: $FF
    ld a, c                                       ; $47BB: $79
    rst RST_38                                    ; $47BC: $FF
    ld a, [hl]                                    ; $47BD: $7E
    rst RST_38                                    ; $47BE: $FF
    ld a, c                                       ; $47BF: $79
    nop                                           ; $47C0: $00
    nop                                           ; $47C1: $00
    nop                                           ; $47C2: $00
    nop                                           ; $47C3: $00
    nop                                           ; $47C4: $00
    nop                                           ; $47C5: $00
    nop                                           ; $47C6: $00
    nop                                           ; $47C7: $00
    rrca                                          ; $47C8: $0F
    nop                                           ; $47C9: $00
    ld a, a                                       ; $47CA: $7F
    rrca                                          ; $47CB: $0F
    rst RST_38                                    ; $47CC: $FF
    ld a, a                                       ; $47CD: $7F
    rst RST_38                                    ; $47CE: $FF
    jp $BDFF                                      ; $47CF: $C3 $FF $BD


    rst RST_38                                    ; $47D2: $FF
    cp $FF                                        ; $47D3: $FE $FF
    cp $FF                                        ; $47D5: $FE $FF
    cp $FF                                        ; $47D7: $FE $FF
    db $FC                                        ; $47D9: $FC
    rst RST_38                                    ; $47DA: $FF
    db $FD                                        ; $47DB: $FD
    rst RST_38                                    ; $47DC: $FF

jr_015_47DD:
    ld d, e                                       ; $47DD: $53
    rst RST_10                                    ; $47DE: $D7
    xor e                                         ; $47DF: $AB
    nop                                           ; $47E0: $00
    nop                                           ; $47E1: $00
    nop                                           ; $47E2: $00
    nop                                           ; $47E3: $00
    nop                                           ; $47E4: $00
    nop                                           ; $47E5: $00
    nop                                           ; $47E6: $00
    nop                                           ; $47E7: $00
    ret nz                                        ; $47E8: $C0

    nop                                           ; $47E9: $00
    ldh a, [$FFC0]                                ; $47EA: $F0 $C0
    db $FC                                        ; $47EC: $FC
    ldh a, [$FFFE]                                ; $47ED: $F0 $FE
    db $FC                                        ; $47EF: $FC
    rst RST_38                                    ; $47F0: $FF
    cp $FF                                        ; $47F1: $FE $FF
    ld e, $FF                                     ; $47F3: $1E $FF
    ld l, a                                       ; $47F5: $6F
    rst RST_38                                    ; $47F6: $FF
    rst RST_20                                    ; $47F7: $E7
    rst RST_38                                    ; $47F8: $FF
    rst RST_20                                    ; $47F9: $E7
    rst RST_30                                    ; $47FA: $F7
    and e                                         ; $47FB: $A3
    rst RST_30                                    ; $47FC: $F7
    and e                                         ; $47FD: $A3
    rst RST_30                                    ; $47FE: $F7
    inc hl                                        ; $47FF: $23
    rst RST_38                                    ; $4800: $FF
    sbc $FF                                       ; $4801: $DE $FF
    adc $FF                                       ; $4803: $CE $FF
    adc $EF                                       ; $4805: $CE $EF
    ld b, [hl]                                    ; $4807: $46
    rst RST_28                                    ; $4808: $EF
    ld b, [hl]                                    ; $4809: $46
    rst RST_28                                    ; $480A: $EF
    ld b, [hl]                                    ; $480B: $46
    rst RST_28                                    ; $480C: $EF
    ld b, [hl]                                    ; $480D: $46
    rst RST_28                                    ; $480E: $EF
    ld b, $AE                                     ; $480F: $06 $AE
    ld b, h                                       ; $4811: $44
    xor $04                                       ; $4812: $EE $04
    ld c, [hl]                                    ; $4814: $4E
    add h                                         ; $4815: $84
    call nz, RST_00                               ; $4816: $C4 $00 $00
    nop                                           ; $4819: $00
    nop                                           ; $481A: $00
    nop                                           ; $481B: $00
    nop                                           ; $481C: $00
    nop                                           ; $481D: $00
    nop                                           ; $481E: $00
    nop                                           ; $481F: $00
    inc bc                                        ; $4820: $03
    nop                                           ; $4821: $00
    rrca                                          ; $4822: $0F
    inc bc                                        ; $4823: $03
    rra                                           ; $4824: $1F
    rrca                                          ; $4825: $0F
    ccf                                           ; $4826: $3F
    rra                                           ; $4827: $1F
    ccf                                           ; $4828: $3F
    ld e, $7F                                     ; $4829: $1E $7F
    inc a                                         ; $482B: $3C
    ld a, a                                       ; $482C: $7F
    dec sp                                        ; $482D: $3B
    rst RST_38                                    ; $482E: $FF
    ld a, e                                       ; $482F: $7B
    rst RST_38                                    ; $4830: $FF
    ld a, c                                       ; $4831: $79
    rst RST_38                                    ; $4832: $FF
    ld a, b                                       ; $4833: $78
    rst RST_38                                    ; $4834: $FF
    ld [hl], a                                    ; $4835: $77
    rst RST_38                                    ; $4836: $FF
    ld l, a                                       ; $4837: $6F
    rst RST_38                                    ; $4838: $FF
    ld l, a                                       ; $4839: $6F
    ld a, a                                       ; $483A: $7F
    cpl                                           ; $483B: $2F
    ld a, a                                       ; $483C: $7F
    cpl                                           ; $483D: $2F
    ld a, a                                       ; $483E: $7F
    scf                                           ; $483F: $37
    db $FC                                        ; $4840: $FC
    nop                                           ; $4841: $00
    rst RST_38                                    ; $4842: $FF
    db $FC                                        ; $4843: $FC
    rst RST_38                                    ; $4844: $FF
    rst RST_38                                    ; $4845: $FF
    rst RST_38                                    ; $4846: $FF
    add b                                         ; $4847: $80
    add b                                         ; $4848: $80
    nop                                           ; $4849: $00
    rst RST_38                                    ; $484A: $FF
    nop                                           ; $484B: $00
    db $FD                                        ; $484C: $FD
    ld a, [$80FF]                                 ; $484D: $FA $FF $80
    rst RST_38                                    ; $4850: $FF
    ldh [rIE], a                                  ; $4851: $E0 $FF
    ld a, h                                       ; $4853: $7C
    rst RST_38                                    ; $4854: $FF
    ld a, $FF                                     ; $4855: $3E $FF
    jp nz, $DCE3                                  ; $4857: $C2 $E3 $DC

    rst RST_38                                    ; $485A: $FF
    db $E3                                        ; $485B: $E3
    db $E3                                        ; $485C: $E3
    db $DD                                        ; $485D: $DD
    rst RST_38                                    ; $485E: $FF
    db $E3                                        ; $485F: $E3
    nop                                           ; $4860: $00
    nop                                           ; $4861: $00
    add b                                         ; $4862: $80
    nop                                           ; $4863: $00
    ret nz                                        ; $4864: $C0

    add b                                         ; $4865: $80
    add b                                         ; $4866: $80
    nop                                           ; $4867: $00
    nop                                           ; $4868: $00
    nop                                           ; $4869: $00
    nop                                           ; $486A: $00
    nop                                           ; $486B: $00
    ret nz                                        ; $486C: $C0

    nop                                           ; $486D: $00
    ld b, b                                       ; $486E: $40
    add b                                         ; $486F: $80
    add b                                         ; $4870: $80
    nop                                           ; $4871: $00
    nop                                           ; $4872: $00
    nop                                           ; $4873: $00
    nop                                           ; $4874: $00
    nop                                           ; $4875: $00
    nop                                           ; $4876: $00
    nop                                           ; $4877: $00
    sbc a                                         ; $4878: $9F
    nop                                           ; $4879: $00
    rst RST_38                                    ; $487A: $FF
    sbc h                                         ; $487B: $9C
    rst RST_38                                    ; $487C: $FF
    db $ED                                        ; $487D: $ED
    cp $8D                                        ; $487E: $FE $8D
    ccf                                           ; $4880: $3F
    rra                                           ; $4881: $1F
    ccf                                           ; $4882: $3F
    rra                                           ; $4883: $1F
    rra                                           ; $4884: $1F
    rrca                                          ; $4885: $0F
    rra                                           ; $4886: $1F
    rrca                                          ; $4887: $0F
    rrca                                          ; $4888: $0F
    rlca                                          ; $4889: $07
    rlca                                          ; $488A: $07
    inc bc                                        ; $488B: $03
    inc bc                                        ; $488C: $03
    ld bc, $0001                                  ; $488D: $01 $01 $00
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
    rst RST_38                                    ; $48A0: $FF
    rst RST_10                                    ; $48A1: $D7
    ld hl, sp-$29                                 ; $48A2: $F8 $D7
    rst RST_30                                    ; $48A4: $F7
    xor b                                         ; $48A5: $A8
    ldh a, [c]                                    ; $48A6: $F2
    xor h                                         ; $48A7: $AC
    ld sp, hl                                     ; $48A8: $F9
    cp $FE                                        ; $48A9: $FE $FE
    rst RST_38                                    ; $48AB: $FF
    rst RST_38                                    ; $48AC: $FF
    rst RST_38                                    ; $48AD: $FF
    rst RST_38                                    ; $48AE: $FF
    ld a, a                                       ; $48AF: $7F
    ld a, a                                       ; $48B0: $7F
    rrca                                          ; $48B1: $0F
    rrca                                          ; $48B2: $0F
    nop                                           ; $48B3: $00
    nop                                           ; $48B4: $00
    nop                                           ; $48B5: $00
    nop                                           ; $48B6: $00
    nop                                           ; $48B7: $00
    ld bc, $0100                                  ; $48B8: $01 $00 $01
    nop                                           ; $48BB: $00
    nop                                           ; $48BC: $00
    nop                                           ; $48BD: $00
    nop                                           ; $48BE: $00
    nop                                           ; $48BF: $00
    rst RST_38                                    ; $48C0: $FF
    cp h                                          ; $48C1: $BC
    ld h, e                                       ; $48C2: $63
    sbc l                                         ; $48C3: $9D
    cp $03                                        ; $48C4: $FE $03
    scf                                           ; $48C6: $37
    jr jr_015_48E8                                ; $48C7: $18 $1F

    ld b, $FF                                     ; $48C9: $06 $FF
    jr @+$01                                      ; $48CB: $18 $FF

    rst RST_30                                    ; $48CD: $F7
    rst RST_38                                    ; $48CE: $FF
    rst RST_38                                    ; $48CF: $FF
    rst RST_38                                    ; $48D0: $FF
    db $E3                                        ; $48D1: $E3
    rst RST_30                                    ; $48D2: $F7
    ld [$3EFF], a                                 ; $48D3: $EA $FF $3E
    cp $60                                        ; $48D6: $FE $60
    ld hl, sp-$30                                 ; $48D8: $F8 $D0
    ld hl, sp-$30                                 ; $48DA: $F8 $D0
    ld hl, sp+$30                                 ; $48DC: $F8 $30
    jr nc, jr_015_48E0                            ; $48DE: $30 $00

jr_015_48E0:
    nop                                           ; $48E0: $00
    nop                                           ; $48E1: $00
    nop                                           ; $48E2: $00
    nop                                           ; $48E3: $00
    nop                                           ; $48E4: $00
    nop                                           ; $48E5: $00
    nop                                           ; $48E6: $00
    nop                                           ; $48E7: $00

jr_015_48E8:
    add b                                         ; $48E8: $80
    nop                                           ; $48E9: $00
    ret nz                                        ; $48EA: $C0

    nop                                           ; $48EB: $00
    ret nz                                        ; $48EC: $C0

    nop                                           ; $48ED: $00
    add b                                         ; $48EE: $80
    nop                                           ; $48EF: $00
    ret nz                                        ; $48F0: $C0

    nop                                           ; $48F1: $00
    ret nz                                        ; $48F2: $C0

    nop                                           ; $48F3: $00
    add b                                         ; $48F4: $80
    nop                                           ; $48F5: $00
    ret nz                                        ; $48F6: $C0

    nop                                           ; $48F7: $00
    ldh [$FFC0], a                                ; $48F8: $E0 $C0
    ldh a, [$FF80]                                ; $48FA: $F0 $80
    ret nc                                        ; $48FC: $D0

    and b                                         ; $48FD: $A0
    ldh [rP1], a                                  ; $48FE: $E0 $00
    rrca                                          ; $4900: $0F
    ld b, $0F                                     ; $4901: $06 $0F
    ld b, $0F                                     ; $4903: $06 $0F
    ld b, $0F                                     ; $4905: $06 $0F
    ld b, $8F                                     ; $4907: $06 $8F
    ld b, $9F                                     ; $4909: $06 $9F
    ld c, $9F                                     ; $490B: $0E $9F
    ld c, $FF                                     ; $490D: $0E $FF
    sbc [hl]                                      ; $490F: $9E
    rst RST_38                                    ; $4910: $FF
    cp $FE                                        ; $4911: $FE $FE
    db $FC                                        ; $4913: $FC
    cp $FC                                        ; $4914: $FE $FC
    db $FC                                        ; $4916: $FC
    ld hl, sp-$08                                 ; $4917: $F8 $F8
    ldh [$FFE0], a                                ; $4919: $E0 $E0
    nop                                           ; $491B: $00
    nop                                           ; $491C: $00
    nop                                           ; $491D: $00
    nop                                           ; $491E: $00
    nop                                           ; $491F: $00
    cp $FC                                        ; $4920: $FE $FC
    cp $FC                                        ; $4922: $FE $FC
    rst RST_38                                    ; $4924: $FF
    cp $FF                                        ; $4925: $FE $FF
    ld a, $FF                                     ; $4927: $3E $FF
    rst RST_38                                    ; $4929: $FF
    rst RST_38                                    ; $492A: $FF
    rst RST_38                                    ; $492B: $FF
    rst RST_38                                    ; $492C: $FF
    ei                                            ; $492D: $FB
    rst RST_38                                    ; $492E: $FF
    db $FD                                        ; $492F: $FD
    rst RST_38                                    ; $4930: $FF
    db $FD                                        ; $4931: $FD
    rst RST_38                                    ; $4932: $FF
    ld a, l                                       ; $4933: $7D
    rst RST_38                                    ; $4934: $FF
    cp e                                          ; $4935: $BB
    rst RST_38                                    ; $4936: $FF
    rst RST_00                                    ; $4937: $C7
    rst RST_30                                    ; $4938: $F7
    pop hl                                        ; $4939: $E1
    ei                                            ; $493A: $FB
    ld [hl], b                                    ; $493B: $70
    ld hl, sp-$10                                 ; $493C: $F8 $F0
    ldh a, [rP1]                                  ; $493E: $F0 $00
    rst RST_38                                    ; $4940: $FF
    inc e                                         ; $4941: $1C
    db $FC                                        ; $4942: $FC
    ld [hl], e                                    ; $4943: $73
    ld [hl], h                                    ; $4944: $74
    inc bc                                        ; $4945: $03
    rlca                                          ; $4946: $07
    nop                                           ; $4947: $00
    rrca                                          ; $4948: $0F
    inc bc                                        ; $4949: $03
    rra                                           ; $494A: $1F
    rrca                                          ; $494B: $0F
    ccf                                           ; $494C: $3F
    rra                                           ; $494D: $1F
    ccf                                           ; $494E: $3F
    rra                                           ; $494F: $1F
    ccf                                           ; $4950: $3F
    ld e, $1F                                     ; $4951: $1E $1F
    ld c, $1F                                     ; $4953: $0E $1F
    rrca                                          ; $4955: $0F
    rrca                                          ; $4956: $0F
    inc bc                                        ; $4957: $03
    ld a, a                                       ; $4958: $7F
    nop                                           ; $4959: $00
    cp a                                          ; $495A: $BF
    ld b, b                                       ; $495B: $40
    rst RST_28                                    ; $495C: $EF
    rla                                           ; $495D: $17
    ccf                                           ; $495E: $3F
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
    add b                                         ; $4972: $80
    nop                                           ; $4973: $00
    ret nz                                        ; $4974: $C0

    add b                                         ; $4975: $80
    ldh [$FFC0], a                                ; $4976: $E0 $C0
    ldh a, [$FFE0]                                ; $4978: $F0 $E0
    ld hl, sp-$10                                 ; $497A: $F8 $F0
    db $FC                                        ; $497C: $FC
    ld a, b                                       ; $497D: $78
    db $FC                                        ; $497E: $FC
    ld a, b                                       ; $497F: $78
    nop                                           ; $4980: $00
    nop                                           ; $4981: $00
    ld h, b                                       ; $4982: $60
    nop                                           ; $4983: $00
    ld hl, sp+$60                                 ; $4984: $F8 $60
    db $FC                                        ; $4986: $FC
    ld e, b                                       ; $4987: $58
    db $FC                                        ; $4988: $FC
    ld e, b                                       ; $4989: $58
    db $FC                                        ; $498A: $FC
    nop                                           ; $498B: $00
    ld l, b                                       ; $498C: $68
    or b                                          ; $498D: $B0
    db $FC                                        ; $498E: $FC
    db $10                                        ; $498F: $10
    sbc $E4                                       ; $4990: $DE $E4
    rst RST_18                                    ; $4992: $DF
    ld [$6BDF], a                                 ; $4993: $EA $DF $6B
    rst RST_38                                    ; $4996: $FF
    ld b, a                                       ; $4997: $47
    rst RST_30                                    ; $4998: $F7
    rrca                                          ; $4999: $0F
    db $D3                                        ; $499A: $D3
    rst RST_28                                    ; $499B: $EF
    rst RST_10                                    ; $499C: $D7
    db $EB                                        ; $499D: $EB
    rst RST_18                                    ; $499E: $DF
    ld h, a                                       ; $499F: $67
    inc bc                                        ; $49A0: $03
    nop                                           ; $49A1: $00
    rlca                                          ; $49A2: $07
    ld bc, $000F                                  ; $49A3: $01 $0F $00
    ccf                                           ; $49A6: $3F
    inc bc                                        ; $49A7: $03
    ld e, a                                       ; $49A8: $5F
    dec hl                                        ; $49A9: $2B
    ld a, a                                       ; $49AA: $7F
    ld a, [bc]                                    ; $49AB: $0A
    ccf                                           ; $49AC: $3F
    add hl, de                                    ; $49AD: $19
    rra                                           ; $49AE: $1F
    ld bc, $0307                                  ; $49AF: $01 $07 $03
    rlca                                          ; $49B2: $07
    nop                                           ; $49B3: $00
    ld a, [bc]                                    ; $49B4: $0A
    dec b                                         ; $49B5: $05
    dec d                                         ; $49B6: $15
    ld a, [bc]                                    ; $49B7: $0A
    dec d                                         ; $49B8: $15
    ld a, [bc]                                    ; $49B9: $0A
    ld a, [bc]                                    ; $49BA: $0A
    nop                                           ; $49BB: $00
    nop                                           ; $49BC: $00
    nop                                           ; $49BD: $00
    nop                                           ; $49BE: $00
    nop                                           ; $49BF: $00
    nop                                           ; $49C0: $00
    nop                                           ; $49C1: $00
    nop                                           ; $49C2: $00
    nop                                           ; $49C3: $00
    nop                                           ; $49C4: $00
    nop                                           ; $49C5: $00
    nop                                           ; $49C6: $00
    nop                                           ; $49C7: $00
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
    ld b, b                                       ; $49D8: $40
    nop                                           ; $49D9: $00
    ldh [rLCDC], a                                ; $49DA: $E0 $40
    ldh [rLCDC], a                                ; $49DC: $E0 $40
    ldh [rLCDC], a                                ; $49DE: $E0 $40
    nop                                           ; $49E0: $00
    nop                                           ; $49E1: $00
    ld [bc], a                                    ; $49E2: $02
    nop                                           ; $49E3: $00
    add a                                         ; $49E4: $87
    ld [bc], a                                    ; $49E5: $02
    add a                                         ; $49E6: $87
    ld [bc], a                                    ; $49E7: $02
    rst RST_00                                    ; $49E8: $C7
    add d                                         ; $49E9: $82
    rst RST_00                                    ; $49EA: $C7
    add d                                         ; $49EB: $82
    rst RST_08                                    ; $49EC: $CF
    add [hl]                                      ; $49ED: $86
    rst RST_08                                    ; $49EE: $CF
    add [hl]                                      ; $49EF: $86
    rst RST_18                                    ; $49F0: $DF
    adc [hl]                                      ; $49F1: $8E
    rst RST_38                                    ; $49F2: $FF
    adc $FE                                       ; $49F3: $CE $FE
    db $FC                                        ; $49F5: $FC
    cp $FC                                        ; $49F6: $FE $FC
    db $FC                                        ; $49F8: $FC
    ld hl, sp-$04                                 ; $49F9: $F8 $FC
    ld hl, sp-$08                                 ; $49FB: $F8 $F8
    ldh [$FFE0], a                                ; $49FD: $E0 $E0
    nop                                           ; $49FF: $00
    rst RST_38                                    ; $4A00: $FF
    cp $FF                                        ; $4A01: $FE $FF
    cp $FF                                        ; $4A03: $FE $FF
    rst RST_38                                    ; $4A05: $FF
    rst RST_38                                    ; $4A06: $FF
    rst RST_38                                    ; $4A07: $FF
    rst RST_38                                    ; $4A08: $FF
    rst RST_38                                    ; $4A09: $FF
    rst RST_38                                    ; $4A0A: $FF
    db $FD                                        ; $4A0B: $FD
    rst RST_38                                    ; $4A0C: $FF
    cp $FF                                        ; $4A0D: $FE $FF
    cp $FF                                        ; $4A0F: $FE $FF
    cp $FF                                        ; $4A11: $FE $FF
    cp $FF                                        ; $4A13: $FE $FF
    sbc l                                         ; $4A15: $9D
    rst RST_38                                    ; $4A16: $FF
    db $E3                                        ; $4A17: $E3
    rst RST_38                                    ; $4A18: $FF
    ld a, e                                       ; $4A19: $7B
    rst RST_38                                    ; $4A1A: $FF
    dec e                                         ; $4A1B: $1D
    rst RST_38                                    ; $4A1C: $FF
    db $FD                                        ; $4A1D: $FD
    rst RST_38                                    ; $4A1E: $FF
    nop                                           ; $4A1F: $00
    rst RST_38                                    ; $4A20: $FF
    ccf                                           ; $4A21: $3F
    cp a                                          ; $4A22: $BF
    ld e, e                                       ; $4A23: $5B
    db $FD                                        ; $4A24: $FD
    dec sp                                        ; $4A25: $3B
    db $FC                                        ; $4A26: $FC
    ld [hl], e                                    ; $4A27: $73
    di                                            ; $4A28: $F3
    ldh [$FFE3], a                                ; $4A29: $E0 $E3
    add c                                         ; $4A2B: $81
    add a                                         ; $4A2C: $87
    inc bc                                        ; $4A2D: $03
    rlca                                          ; $4A2E: $07
    inc bc                                        ; $4A2F: $03
    rrca                                          ; $4A30: $0F
    rlca                                          ; $4A31: $07
    rrca                                          ; $4A32: $0F
    rlca                                          ; $4A33: $07
    rrca                                          ; $4A34: $0F
    rlca                                          ; $4A35: $07
    rlca                                          ; $4A36: $07
    inc bc                                        ; $4A37: $03
    rra                                           ; $4A38: $1F
    nop                                           ; $4A39: $00
    cpl                                           ; $4A3A: $2F
    db $10                                        ; $4A3B: $10
    dec sp                                        ; $4A3C: $3B
    dec b                                         ; $4A3D: $05
    rrca                                          ; $4A3E: $0F
    nop                                           ; $4A3F: $00
    rra                                           ; $4A40: $1F
    nop                                           ; $4A41: $00
    dec sp                                        ; $4A42: $3B
    dec c                                         ; $4A43: $0D
    ccf                                           ; $4A44: $3F
    nop                                           ; $4A45: $00
    cp $1F                                        ; $4A46: $FE $1F
    cp $5F                                        ; $4A48: $FE $5F
    cp $53                                        ; $4A4A: $FE $53
    rst RST_38                                    ; $4A4C: $FF
    jp z, Jump_000_08FF                           ; $4A4D: $CA $FF $08

    ld a, $1F                                     ; $4A50: $3E $1F
    ld a, $07                                     ; $4A52: $3E $07
    ld d, a                                       ; $4A54: $57
    ld a, [hl+]                                   ; $4A55: $2A
    xor a                                         ; $4A56: $AF
    ld d, c                                       ; $4A57: $51
    xor a                                         ; $4A58: $AF
    ld d, e                                       ; $4A59: $53
    ld e, e                                       ; $4A5A: $5B
    nop                                           ; $4A5B: $00
    nop                                           ; $4A5C: $00
    nop                                           ; $4A5D: $00
    nop                                           ; $4A5E: $00
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
    ld bc, $0200                                  ; $4A78: $01 $00 $02
    ld bc, $0003                                  ; $4A7B: $01 $03 $00
    ld bc, $0000                                  ; $4A7E: $01 $00 $00
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
    ld h, b                                       ; $4A8C: $60
    nop                                           ; $4A8D: $00
    ld hl, sp+$60                                 ; $4A8E: $F8 $60
    db $FC                                        ; $4A90: $FC
    ld e, b                                       ; $4A91: $58
    db $FC                                        ; $4A92: $FC
    ld e, b                                       ; $4A93: $58
    rst RST_38                                    ; $4A94: $FF
    nop                                           ; $4A95: $00
    ld l, a                                       ; $4A96: $6F
    or a                                          ; $4A97: $B7
    rst RST_38                                    ; $4A98: $FF
    rla                                           ; $4A99: $17
    rst RST_18                                    ; $4A9A: $DF
    rst RST_20                                    ; $4A9B: $E7
    rst RST_18                                    ; $4A9C: $DF
    db $EB                                        ; $4A9D: $EB
    rst RST_18                                    ; $4A9E: $DF
    ld l, e                                       ; $4A9F: $6B
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
    nop                                           ; $4AAE: $00
    nop                                           ; $4AAF: $00
    nop                                           ; $4AB0: $00
    nop                                           ; $4AB1: $00
    nop                                           ; $4AB2: $00
    nop                                           ; $4AB3: $00
    add b                                         ; $4AB4: $80
    nop                                           ; $4AB5: $00
    ldh a, [$FF80]                                ; $4AB6: $F0 $80
    db $FC                                        ; $4AB8: $FC
    ldh a, [rIE]                                  ; $4AB9: $F0 $FF
    db $FC                                        ; $4ABB: $FC
    rst RST_38                                    ; $4ABC: $FF
    rst RST_38                                    ; $4ABD: $FF
    rst RST_38                                    ; $4ABE: $FF
    rst RST_38                                    ; $4ABF: $FF
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
    nop                                           ; $4AD6: $00
    nop                                           ; $4AD7: $00
    nop                                           ; $4AD8: $00
    nop                                           ; $4AD9: $00
    nop                                           ; $4ADA: $00
    nop                                           ; $4ADB: $00
    add b                                         ; $4ADC: $80
    nop                                           ; $4ADD: $00
    ret nz                                        ; $4ADE: $C0

    add b                                         ; $4ADF: $80
    cp $FC                                        ; $4AE0: $FE $FC
    cp $FC                                        ; $4AE2: $FE $FC
    rst RST_38                                    ; $4AE4: $FF
    ld a, [hl]                                    ; $4AE5: $7E
    rst RST_38                                    ; $4AE6: $FF
    sbc [hl]                                      ; $4AE7: $9E
    rst RST_38                                    ; $4AE8: $FF
    cp $FF                                        ; $4AE9: $FE $FF
    cp $FF                                        ; $4AEB: $FE $FF
    cp $FF                                        ; $4AED: $FE $FF
    cp $FF                                        ; $4AEF: $FE $FF
    xor $FE                                       ; $4AF1: $EE $FE
    inc e                                         ; $4AF3: $1C
    cp $7C                                        ; $4AF4: $FE $7C
    db $FC                                        ; $4AF6: $FC
    ld hl, sp-$04                                 ; $4AF7: $F8 $FC
    ld hl, sp-$08                                 ; $4AF9: $F8 $F8
    ldh a, [$FFF0]                                ; $4AFB: $F0 $F0
    ret nz                                        ; $4AFD: $C0

    ret nz                                        ; $4AFE: $C0

    nop                                           ; $4AFF: $00
    ld sp, hl                                     ; $4B00: $F9
    rst RST_20                                    ; $4B01: $E7
    ldh [$FF1F], a                                ; $4B02: $E0 $1F
    cpl                                           ; $4B04: $2F
    db $10                                        ; $4B05: $10
    ccf                                           ; $4B06: $3F
    rrca                                          ; $4B07: $0F
    rst RST_38                                    ; $4B08: $FF
    rra                                           ; $4B09: $1F
    rst RST_38                                    ; $4B0A: $FF
    rra                                           ; $4B0B: $1F
    rst RST_38                                    ; $4B0C: $FF
    ccf                                           ; $4B0D: $3F
    rst RST_38                                    ; $4B0E: $FF
    ld [hl], a                                    ; $4B0F: $77
    rst RST_38                                    ; $4B10: $FF
    db $E3                                        ; $4B11: $E3
    db $E3                                        ; $4B12: $E3
    add b                                         ; $4B13: $80
    add b                                         ; $4B14: $80
    nop                                           ; $4B15: $00
    nop                                           ; $4B16: $00
    nop                                           ; $4B17: $00
    inc bc                                        ; $4B18: $03
    nop                                           ; $4B19: $00
    rst RST_38                                    ; $4B1A: $FF
    inc bc                                        ; $4B1B: $03
    rst RST_38                                    ; $4B1C: $FF
    rst RST_38                                    ; $4B1D: $FF
    rst RST_38                                    ; $4B1E: $FF
    ccf                                           ; $4B1F: $3F
    dec hl                                        ; $4B20: $2B
    inc d                                         ; $4B21: $14
    ld d, $00                                     ; $4B22: $16 $00
    ret nz                                        ; $4B24: $C0

    nop                                           ; $4B25: $00
    ldh a, [rP1]                                  ; $4B26: $F0 $00
    db $FC                                        ; $4B28: $FC
    nop                                           ; $4B29: $00
    cp a                                          ; $4B2A: $BF
    ld b, b                                       ; $4B2B: $40
    ld a, a                                       ; $4B2C: $7F
    jr nc, jr_015_4B6E                            ; $4B2D: $30 $3F

    inc e                                         ; $4B2F: $1C
    rra                                           ; $4B30: $1F
    rrca                                          ; $4B31: $0F
    rrca                                          ; $4B32: $0F
    rlca                                          ; $4B33: $07
    rlca                                          ; $4B34: $07
    inc bc                                        ; $4B35: $03
    inc bc                                        ; $4B36: $03
    nop                                           ; $4B37: $00
    nop                                           ; $4B38: $00
    nop                                           ; $4B39: $00
    ld bc, $0300                                  ; $4B3A: $01 $00 $03
    ld bc, $0001                                  ; $4B3D: $01 $01 $00
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
    nop                                           ; $4B4A: $00
    nop                                           ; $4B4B: $00
    nop                                           ; $4B4C: $00
    nop                                           ; $4B4D: $00
    ret nz                                        ; $4B4E: $C0

    nop                                           ; $4B4F: $00
    ldh [$FFC0], a                                ; $4B50: $E0 $C0
    ldh a, [$FFE0]                                ; $4B52: $F0 $E0
    ld hl, sp-$10                                 ; $4B54: $F8 $F0
    db $FC                                        ; $4B56: $FC
    ld hl, sp-$02                                 ; $4B57: $F8 $FE
    cp h                                          ; $4B59: $BC
    cp $BC                                        ; $4B5A: $FE $BC
    rst RST_38                                    ; $4B5C: $FF
    ld a, [hl]                                    ; $4B5D: $7E
    ld a, a                                       ; $4B5E: $7F
    cp $30                                        ; $4B5F: $FE $30
    nop                                           ; $4B61: $00
    ld a, [hl]                                    ; $4B62: $7E
    jr nc, @+$80                                  ; $4B63: $30 $7E

    inc l                                         ; $4B65: $2C
    ld a, [hl]                                    ; $4B66: $7E
    inc l                                         ; $4B67: $2C
    db $FC                                        ; $4B68: $FC
    nop                                           ; $4B69: $00
    or h                                          ; $4B6A: $B4
    ret c                                         ; $4B6B: $D8

    cp $08                                        ; $4B6C: $FE $08

jr_015_4B6E:
    rst RST_28                                    ; $4B6E: $EF
    ldh a, [c]                                    ; $4B6F: $F2
    rst RST_28                                    ; $4B70: $EF
    push af                                       ; $4B71: $F5
    rst RST_28                                    ; $4B72: $EF
    dec [hl]                                      ; $4B73: $35
    rst RST_38                                    ; $4B74: $FF
    and e                                         ; $4B75: $A3
    ei                                            ; $4B76: $FB
    add a                                         ; $4B77: $87
    jp hl                                         ; $4B78: $E9


    rst RST_30                                    ; $4B79: $F7
    db $EB                                        ; $4B7A: $EB
    ld [hl], l                                    ; $4B7B: $75
    ld l, a                                       ; $4B7C: $6F
    or e                                          ; $4B7D: $B3
    rst RST_38                                    ; $4B7E: $FF
    ld c, $01                                     ; $4B7F: $0E $01
    nop                                           ; $4B81: $00
    inc bc                                        ; $4B82: $03
    nop                                           ; $4B83: $00
    inc bc                                        ; $4B84: $03
    nop                                           ; $4B85: $00
    rra                                           ; $4B86: $1F
    ld bc, $152F                                  ; $4B87: $01 $2F $15
    ccf                                           ; $4B8A: $3F
    dec b                                         ; $4B8B: $05
    rra                                           ; $4B8C: $1F
    inc c                                         ; $4B8D: $0C
    rrca                                          ; $4B8E: $0F
    nop                                           ; $4B8F: $00
    inc bc                                        ; $4B90: $03
    ld bc, $0003                                  ; $4B91: $01 $03 $00
    dec b                                         ; $4B94: $05
    ld [bc], a                                    ; $4B95: $02
    ld a, [bc]                                    ; $4B96: $0A
    dec b                                         ; $4B97: $05
    ld a, [bc]                                    ; $4B98: $0A
    dec b                                         ; $4B99: $05
    dec b                                         ; $4B9A: $05
    nop                                           ; $4B9B: $00
    ld [hl], b                                    ; $4B9C: $70
    nop                                           ; $4B9D: $00
    ld a, h                                       ; $4B9E: $7C
    nop                                           ; $4B9F: $00
    ccf                                           ; $4BA0: $3F
    nop                                           ; $4BA1: $00
    nop                                           ; $4BA2: $00
    nop                                           ; $4BA3: $00
    nop                                           ; $4BA4: $00
    nop                                           ; $4BA5: $00
    nop                                           ; $4BA6: $00
    nop                                           ; $4BA7: $00
    nop                                           ; $4BA8: $00
    nop                                           ; $4BA9: $00
    nop                                           ; $4BAA: $00
    nop                                           ; $4BAB: $00
    nop                                           ; $4BAC: $00
    nop                                           ; $4BAD: $00
    nop                                           ; $4BAE: $00
    nop                                           ; $4BAF: $00
    nop                                           ; $4BB0: $00
    nop                                           ; $4BB1: $00
    nop                                           ; $4BB2: $00
    nop                                           ; $4BB3: $00
    nop                                           ; $4BB4: $00
    nop                                           ; $4BB5: $00
    nop                                           ; $4BB6: $00
    nop                                           ; $4BB7: $00
    nop                                           ; $4BB8: $00
    nop                                           ; $4BB9: $00
    nop                                           ; $4BBA: $00
    nop                                           ; $4BBB: $00
    nop                                           ; $4BBC: $00
    nop                                           ; $4BBD: $00
    nop                                           ; $4BBE: $00
    nop                                           ; $4BBF: $00
    rst RST_38                                    ; $4BC0: $FF
    rst RST_00                                    ; $4BC1: $C7
    rst RST_00                                    ; $4BC2: $C7
    cp c                                          ; $4BC3: $B9
    rst RST_38                                    ; $4BC4: $FF
    rlca                                          ; $4BC5: $07
    ld a, a                                       ; $4BC6: $7F
    rra                                           ; $4BC7: $1F
    ld a, a                                       ; $4BC8: $7F
    rra                                           ; $4BC9: $1F
    ld a, a                                       ; $4BCA: $7F
    rrca                                          ; $4BCB: $0F
    ccf                                           ; $4BCC: $3F
    rrca                                          ; $4BCD: $0F
    ccf                                           ; $4BCE: $3F
    rlca                                          ; $4BCF: $07
    rra                                           ; $4BD0: $1F
    ld bc, $0007                                  ; $4BD1: $01 $07 $00
    ld a, a                                       ; $4BD4: $7F
    nop                                           ; $4BD5: $00
    cp a                                          ; $4BD6: $BF
    ld b, b                                       ; $4BD7: $40
    db $E3                                        ; $4BD8: $E3
    nop                                           ; $4BD9: $00
    rra                                           ; $4BDA: $1F
    inc bc                                        ; $4BDB: $03
    cpl                                           ; $4BDC: $2F
    ld d, $3E                                     ; $4BDD: $16 $3E
    nop                                           ; $4BDF: $00
    cp $FC                                        ; $4BE0: $FE $FC
    cp $EC                                        ; $4BE2: $FE $EC
    rst RST_38                                    ; $4BE4: $FF
    or $FF                                        ; $4BE5: $F6 $FF
    rst RST_30                                    ; $4BE7: $F7
    rst RST_38                                    ; $4BE8: $FF
    ei                                            ; $4BE9: $FB
    rst RST_38                                    ; $4BEA: $FF
    ei                                            ; $4BEB: $FB
    rst RST_38                                    ; $4BEC: $FF
    ld a, e                                       ; $4BED: $7B
    rst RST_38                                    ; $4BEE: $FF
    or a                                          ; $4BEF: $B7
    rst RST_38                                    ; $4BF0: $FF
    jp $C0E3                                      ; $4BF1: $C3 $E3 $C0


    ldh a, [$FF60]                                ; $4BF4: $F0 $60
    ldh a, [$FF60]                                ; $4BF6: $F0 $60
    ldh a, [$FFE0]                                ; $4BF8: $F0 $E0
    ldh [$FF80], a                                ; $4BFA: $E0 $80
    add b                                         ; $4BFC: $80
    nop                                           ; $4BFD: $00
    nop                                           ; $4BFE: $00
    nop                                           ; $4BFF: $00
    or b                                          ; $4C00: $B0
    ld h, b                                       ; $4C01: $60
    di                                            ; $4C02: $F3
    ld h, b                                       ; $4C03: $60
    ld a, h                                       ; $4C04: $7C
    inc sp                                        ; $4C05: $33
    rst RST_38                                    ; $4C06: $FF
    inc sp                                        ; $4C07: $33
    rst RST_38                                    ; $4C08: $FF
    dec bc                                        ; $4C09: $0B
    sbc a                                         ; $4C0A: $9F
    ld l, e                                       ; $4C0B: $6B
    rst RST_38                                    ; $4C0C: $FF
    ld [hl-], a                                   ; $4C0D: $32
    cp $81                                        ; $4C0E: $FE $81
    jp $FF3D                                      ; $4C10: $C3 $3D $FF


    cp c                                          ; $4C13: $B9
    rst RST_38                                    ; $4C14: $FF
    or a                                          ; $4C15: $B7
    rst RST_38                                    ; $4C16: $FF
    add hl, sp                                    ; $4C17: $39
    rst RST_38                                    ; $4C18: $FF
    ld e, l                                       ; $4C19: $5D
    db $FD                                        ; $4C1A: $FD
    ldh [$FF60], a                                ; $4C1B: $E0 $60
    ret nz                                        ; $4C1D: $C0

    ret nz                                        ; $4C1E: $C0

    nop                                           ; $4C1F: $00
    rlca                                          ; $4C20: $07
    nop                                           ; $4C21: $00
    dec b                                         ; $4C22: $05
    inc bc                                        ; $4C23: $03
    rlca                                          ; $4C24: $07
    inc bc                                        ; $4C25: $03
    inc bc                                        ; $4C26: $03
    ld bc, HeaderManufacturerCode                 ; $4C27: $01 $3F $01
    ld e, a                                       ; $4C2A: $5F
    jr c, jr_015_4C89                             ; $4C2B: $38 $5C

    dec sp                                        ; $4C2D: $3B
    ccf                                           ; $4C2E: $3F
    ld bc, $040F                                  ; $4C2F: $01 $0F $04
    ld e, $01                                     ; $4C32: $1E $01
    cpl                                           ; $4C34: $2F
    dec e                                         ; $4C35: $1D
    cpl                                           ; $4C36: $2F
    dec e                                         ; $4C37: $1D
    rra                                           ; $4C38: $1F
    ld bc, $0207                                  ; $4C39: $01 $07 $02
    rrca                                          ; $4C3C: $0F
    rlca                                          ; $4C3D: $07
    dec bc                                        ; $4C3E: $0B
    ld b, $00                                     ; $4C3F: $06 $00
    nop                                           ; $4C41: $00
    ld bc, $0300                                  ; $4C42: $01 $00 $03
    ld bc, $0001                                  ; $4C45: $01 $01 $00
    nop                                           ; $4C48: $00
    nop                                           ; $4C49: $00
    nop                                           ; $4C4A: $00
    nop                                           ; $4C4B: $00
    pop hl                                        ; $4C4C: $E1
    nop                                           ; $4C4D: $00
    ld a, $C1                                     ; $4C4E: $3E $C1
    db $FC                                        ; $4C50: $FC
    db $DB                                        ; $4C51: $DB
    ld sp, hl                                     ; $4C52: $F9
    rst RST_10                                    ; $4C53: $D7
    ld sp, hl                                     ; $4C54: $F9
    rst RST_00                                    ; $4C55: $C7
    di                                            ; $4C56: $F3
    rrca                                          ; $4C57: $0F
    inc de                                        ; $4C58: $13
    db $ED                                        ; $4C59: $ED
    rst RST_38                                    ; $4C5A: $FF
    db $E3                                        ; $4C5B: $E3
    rst RST_38                                    ; $4C5C: $FF
    add $C7                                       ; $4C5D: $C6 $C7
    cp c                                          ; $4C5F: $B9
    ld a, a                                       ; $4C60: $7F
    ld [hl-], a                                   ; $4C61: $32
    rst RST_38                                    ; $4C62: $FF
    ld [hl], $FF                                  ; $4C63: $36 $FF
    cp $FF                                        ; $4C65: $FE $FF
    ld a, a                                       ; $4C67: $7F
    rst RST_38                                    ; $4C68: $FF
    ld a, e                                       ; $4C69: $7B
    rst RST_38                                    ; $4C6A: $FF
    ld a, e                                       ; $4C6B: $7B
    ld a, e                                       ; $4C6C: $7B
    ldh a, [$FFF8]                                ; $4C6D: $F0 $F8
    ldh a, [$FFF8]                                ; $4C6F: $F0 $F8
    ldh a, [$FFF8]                                ; $4C71: $F0 $F8
    ldh a, [$FFF8]                                ; $4C73: $F0 $F8
    ldh a, [$FFF8]                                ; $4C75: $F0 $F8
    ldh a, [$FFF8]                                ; $4C77: $F0 $F8
    or b                                          ; $4C79: $B0
    db $FC                                        ; $4C7A: $FC
    ld a, b                                       ; $4C7B: $78
    db $FC                                        ; $4C7C: $FC
    ld hl, sp-$04                                 ; $4C7D: $F8 $FC
    ld hl, sp+$03                                 ; $4C7F: $F8 $03
    nop                                           ; $4C81: $00
    rlca                                          ; $4C82: $07
    inc bc                                        ; $4C83: $03
    rrca                                          ; $4C84: $0F
    rlca                                          ; $4C85: $07
    rra                                           ; $4C86: $1F
    ld c, $3E                                     ; $4C87: $0E $3E

jr_015_4C89:
    inc e                                         ; $4C89: $1C
    cp $3C                                        ; $4C8A: $FE $3C
    db $FC                                        ; $4C8C: $FC
    ld hl, sp-$04                                 ; $4C8D: $F8 $FC
    ld hl, sp-$08                                 ; $4C8F: $F8 $F8
    ldh a, [$FFF8]                                ; $4C91: $F0 $F8
    ldh a, [$FFF0]                                ; $4C93: $F0 $F0
    ret nz                                        ; $4C95: $C0

    ret nz                                        ; $4C96: $C0

    nop                                           ; $4C97: $00
    nop                                           ; $4C98: $00
    nop                                           ; $4C99: $00
    nop                                           ; $4C9A: $00
    nop                                           ; $4C9B: $00
    nop                                           ; $4C9C: $00
    nop                                           ; $4C9D: $00
    nop                                           ; $4C9E: $00
    nop                                           ; $4C9F: $00
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
    nop                                           ; $4CAA: $00
    nop                                           ; $4CAB: $00
    nop                                           ; $4CAC: $00
    nop                                           ; $4CAD: $00
    nop                                           ; $4CAE: $00
    nop                                           ; $4CAF: $00
    nop                                           ; $4CB0: $00
    nop                                           ; $4CB1: $00
    nop                                           ; $4CB2: $00
    nop                                           ; $4CB3: $00
    nop                                           ; $4CB4: $00
    nop                                           ; $4CB5: $00
    nop                                           ; $4CB6: $00
    nop                                           ; $4CB7: $00
    ldh [rP1], a                                  ; $4CB8: $E0 $00
    ldh [$FFC0], a                                ; $4CBA: $E0 $C0
    ret nz                                        ; $4CBC: $C0

    add b                                         ; $4CBD: $80
    add b                                         ; $4CBE: $80
    nop                                           ; $4CBF: $00
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
    jr nc, jr_015_4CD6                            ; $4CD4: $30 $00

jr_015_4CD6:
    ld l, b                                       ; $4CD6: $68
    db $10                                        ; $4CD7: $10
    ld hl, sp+$40                                 ; $4CD8: $F8 $40
    ld hl, sp+$70                                 ; $4CDA: $F8 $70
    ld a, [hl]                                    ; $4CDC: $7E
    jr c, jr_015_4D1E                             ; $4CDD: $38 $3F

    ld e, $00                                     ; $4CDF: $1E $00
    nop                                           ; $4CE1: $00
    nop                                           ; $4CE2: $00
    nop                                           ; $4CE3: $00
    nop                                           ; $4CE4: $00
    nop                                           ; $4CE5: $00
    nop                                           ; $4CE6: $00
    nop                                           ; $4CE7: $00
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
    ret nz                                        ; $4CF4: $C0

    nop                                           ; $4CF5: $00
    ldh [$FFC0], a                                ; $4CF6: $E0 $C0
    ldh [rLCDC], a                                ; $4CF8: $E0 $40
    ret nz                                        ; $4CFA: $C0

    add b                                         ; $4CFB: $80
    ret nz                                        ; $4CFC: $C0

    add b                                         ; $4CFD: $80
    add b                                         ; $4CFE: $80
    nop                                           ; $4CFF: $00
    cp $FC                                        ; $4D00: $FE $FC
    cp $FC                                        ; $4D02: $FE $FC
    cp $FC                                        ; $4D04: $FE $FC
    rst RST_38                                    ; $4D06: $FF
    ld a, [hl]                                    ; $4D07: $7E
    rst RST_38                                    ; $4D08: $FF
    cp $FF                                        ; $4D09: $FE $FF
    xor $FF                                       ; $4D0B: $EE $FF
    xor $FF                                       ; $4D0D: $EE $FF
    sbc $FF                                       ; $4D0F: $DE $FF
    sbc [hl]                                      ; $4D11: $9E
    cp $3C                                        ; $4D12: $FE $3C
    ld a, [hl]                                    ; $4D14: $7E
    inc a                                         ; $4D15: $3C
    db $FC                                        ; $4D16: $FC
    ld a, b                                       ; $4D17: $78
    db $FC                                        ; $4D18: $FC
    ld hl, sp-$08                                 ; $4D19: $F8 $F8
    ldh a, [$FFF0]                                ; $4D1B: $F0 $F0
    ret nz                                        ; $4D1D: $C0

jr_015_4D1E:
    ret nz                                        ; $4D1E: $C0

    nop                                           ; $4D1F: $00
    rst RST_38                                    ; $4D20: $FF
    rst RST_00                                    ; $4D21: $C7
    rst RST_38                                    ; $4D22: $FF
    add e                                         ; $4D23: $83
    rst RST_38                                    ; $4D24: $FF
    cp l                                          ; $4D25: $BD
    rst RST_38                                    ; $4D26: $FF
    ld a, [hl]                                    ; $4D27: $7E
    rst RST_38                                    ; $4D28: $FF
    ld a, a                                       ; $4D29: $7F
    rst RST_38                                    ; $4D2A: $FF
    rst RST_38                                    ; $4D2B: $FF
    rst RST_38                                    ; $4D2C: $FF
    rst RST_18                                    ; $4D2D: $DF
    rst RST_38                                    ; $4D2E: $FF
    adc a                                         ; $4D2F: $8F
    adc a                                         ; $4D30: $8F
    inc bc                                        ; $4D31: $03
    inc bc                                        ; $4D32: $03
    nop                                           ; $4D33: $00
    nop                                           ; $4D34: $00
    nop                                           ; $4D35: $00
    ld bc, $FF00                                  ; $4D36: $01 $00 $FF
    ld bc, $FFFF                                  ; $4D39: $01 $FF $FF
    rst RST_38                                    ; $4D3C: $FF
    ccf                                           ; $4D3D: $3F
    ccf                                           ; $4D3E: $3F
    nop                                           ; $4D3F: $00
    ld a, a                                       ; $4D40: $7F
    or c                                          ; $4D41: $B1
    rst RST_38                                    ; $4D42: $FF
    or a                                          ; $4D43: $B7
    rst RST_38                                    ; $4D44: $FF
    add hl, sp                                    ; $4D45: $39
    ld sp, hl                                     ; $4D46: $F9
    nop                                           ; $4D47: $00
    rst RST_00                                    ; $4D48: $C7
    nop                                           ; $4D49: $00
    rst RST_38                                    ; $4D4A: $FF
    ret nz                                        ; $4D4B: $C0

    rst RST_38                                    ; $4D4C: $FF
    ld [hl], c                                    ; $4D4D: $71
    rst RST_38                                    ; $4D4E: $FF
    ccf                                           ; $4D4F: $3F
    rst RST_38                                    ; $4D50: $FF
    ld e, $FE                                     ; $4D51: $1E $FE
    inc c                                         ; $4D53: $0C
    inc c                                         ; $4D54: $0C
    nop                                           ; $4D55: $00
    nop                                           ; $4D56: $00
    nop                                           ; $4D57: $00
    ld bc, $0300                                  ; $4D58: $01 $00 $03
    ld bc, $0001                                  ; $4D5B: $01 $01 $00
    nop                                           ; $4D5E: $00
    nop                                           ; $4D5F: $00
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
    nop                                           ; $4D6A: $00
    nop                                           ; $4D6B: $00
    nop                                           ; $4D6C: $00
    nop                                           ; $4D6D: $00
    add b                                         ; $4D6E: $80
    nop                                           ; $4D6F: $00
    ldh [$FF80], a                                ; $4D70: $E0 $80
    ldh a, [$FFE0]                                ; $4D72: $F0 $E0
    ld hl, sp-$10                                 ; $4D74: $F8 $F0
    db $FC                                        ; $4D76: $FC
    ld hl, sp-$02                                 ; $4D77: $F8 $FE
    ld a, h                                       ; $4D79: $7C
    cp $7C                                        ; $4D7A: $FE $7C
    rst RST_38                                    ; $4D7C: $FF
    cp $FF                                        ; $4D7D: $FE $FF
    cp $60                                        ; $4D7F: $FE $60
    nop                                           ; $4D81: $00
    ldh a, [$FF60]                                ; $4D82: $F0 $60
    ldh a, [$FF60]                                ; $4D84: $F0 $60
    ldh a, [$FF60]                                ; $4D86: $F0 $60
    ldh [$FF80], a                                ; $4D88: $E0 $80
    ldh [$FFC0], a                                ; $4D8A: $E0 $C0
    db $FC                                        ; $4D8C: $FC
    ldh [rIE], a                                  ; $4D8D: $E0 $FF
    db $FC                                        ; $4D8F: $FC
    rst RST_38                                    ; $4D90: $FF
    rst RST_38                                    ; $4D91: $FF
    rst RST_38                                    ; $4D92: $FF
    rst RST_38                                    ; $4D93: $FF
    rst RST_18                                    ; $4D94: $DF
    ccf                                           ; $4D95: $3F
    daa                                           ; $4D96: $27
    rra                                           ; $4D97: $1F
    inc de                                        ; $4D98: $13
    dec c                                         ; $4D99: $0D
    ei                                            ; $4D9A: $FB
    dec b                                         ; $4D9B: $05
    add a                                         ; $4D9C: $87
    ld a, d                                       ; $4D9D: $7A
    rst RST_38                                    ; $4D9E: $FF
    ld a, d                                       ; $4D9F: $7A
    inc bc                                        ; $4DA0: $03
    nop                                           ; $4DA1: $00
    rlca                                          ; $4DA2: $07
    inc bc                                        ; $4DA3: $03
    rlca                                          ; $4DA4: $07
    inc bc                                        ; $4DA5: $03
    add a                                         ; $4DA6: $87
    nop                                           ; $4DA7: $00
    rst RST_38                                    ; $4DA8: $FF
    rlca                                          ; $4DA9: $07
    rst RST_38                                    ; $4DAA: $FF
    ld [hl], c                                    ; $4DAB: $71
    rst RST_38                                    ; $4DAC: $FF
    rst RST_38                                    ; $4DAD: $FF

jr_015_4DAE:
    rst RST_38                                    ; $4DAE: $FF
    ld h, a                                       ; $4DAF: $67
    ld h, a                                       ; $4DB0: $67
    inc bc                                        ; $4DB1: $03
    rlca                                          ; $4DB2: $07
    inc bc                                        ; $4DB3: $03
    ccf                                           ; $4DB4: $3F
    ld b, $7E                                     ; $4DB5: $06 $7E
    jr c, jr_015_4E34                             ; $4DB7: $38 $7B

    ld b, $DF                                     ; $4DB9: $06 $DF
    jr nc, jr_015_4DAE                            ; $4DBB: $30 $F1

    ld l, $7F                                     ; $4DBD: $2E $7F
    rrca                                          ; $4DBF: $0F
    inc bc                                        ; $4DC0: $03
    nop                                           ; $4DC1: $00
    inc bc                                        ; $4DC2: $03
    nop                                           ; $4DC3: $00
    ld bc, $0300                                  ; $4DC4: $01 $00 $03
    nop                                           ; $4DC7: $00
    ld [bc], a                                    ; $4DC8: $02
    ld bc, $0001                                  ; $4DC9: $01 $01 $00
    nop                                           ; $4DCC: $00
    nop                                           ; $4DCD: $00
    rlca                                          ; $4DCE: $07
    nop                                           ; $4DCF: $00
    rlca                                          ; $4DD0: $07
    nop                                           ; $4DD1: $00
    ld bc, $0000                                  ; $4DD2: $01 $00 $00
    nop                                           ; $4DD5: $00
    nop                                           ; $4DD6: $00
    nop                                           ; $4DD7: $00
    nop                                           ; $4DD8: $00
    nop                                           ; $4DD9: $00
    nop                                           ; $4DDA: $00
    nop                                           ; $4DDB: $00
    nop                                           ; $4DDC: $00
    nop                                           ; $4DDD: $00
    nop                                           ; $4DDE: $00
    nop                                           ; $4DDF: $00
    nop                                           ; $4DE0: $00
    nop                                           ; $4DE1: $00
    nop                                           ; $4DE2: $00
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
    ld bc, $0200                                  ; $4DF6: $01 $00 $02
    ld bc, $0003                                  ; $4DF9: $01 $03 $00
    inc bc                                        ; $4DFC: $03
    nop                                           ; $4DFD: $00
    ld bc, $0F00                                  ; $4DFE: $01 $00 $0F
    ld b, $0F                                     ; $4E01: $06 $0F
    ld b, $0F                                     ; $4E03: $06 $0F
    ld b, $0F                                     ; $4E05: $06 $0F
    ld b, $0F                                     ; $4E07: $06 $0F
    ld b, $9F                                     ; $4E09: $06 $9F
    ld c, $9F                                     ; $4E0B: $0E $9F
    ld c, $FF                                     ; $4E0D: $0E $FF
    sbc [hl]                                      ; $4E0F: $9E
    rst RST_38                                    ; $4E10: $FF
    cp $FE                                        ; $4E11: $FE $FE
    db $FC                                        ; $4E13: $FC
    cp $FC                                        ; $4E14: $FE $FC
    db $FC                                        ; $4E16: $FC
    ld hl, sp-$08                                 ; $4E17: $F8 $F8
    ldh [$FFE0], a                                ; $4E19: $E0 $E0
    nop                                           ; $4E1B: $00
    nop                                           ; $4E1C: $00
    nop                                           ; $4E1D: $00
    nop                                           ; $4E1E: $00
    nop                                           ; $4E1F: $00
    cp $BC                                        ; $4E20: $FE $BC
    cp $7C                                        ; $4E22: $FE $7C
    cp $FC                                        ; $4E24: $FE $FC
    rst RST_38                                    ; $4E26: $FF
    cp $FF                                        ; $4E27: $FE $FF
    cp $FF                                        ; $4E29: $FE $FF
    ei                                            ; $4E2B: $FB
    rst RST_38                                    ; $4E2C: $FF
    db $FD                                        ; $4E2D: $FD
    rst RST_38                                    ; $4E2E: $FF
    db $FD                                        ; $4E2F: $FD
    rst RST_38                                    ; $4E30: $FF
    db $FD                                        ; $4E31: $FD
    rst RST_38                                    ; $4E32: $FF
    db $FD                                        ; $4E33: $FD

jr_015_4E34:
    rst RST_38                                    ; $4E34: $FF
    dec sp                                        ; $4E35: $3B
    rst RST_38                                    ; $4E36: $FF
    add a                                         ; $4E37: $87
    rst RST_20                                    ; $4E38: $E7
    pop bc                                        ; $4E39: $C1
    pop af                                        ; $4E3A: $F1
    ldh [$FFF0], a                                ; $4E3B: $E0 $F0
    ldh [$FFE0], a                                ; $4E3D: $E0 $E0
    nop                                           ; $4E3F: $00
    rst RST_38                                    ; $4E40: $FF
    pop af                                        ; $4E41: $F1
    rst RST_38                                    ; $4E42: $FF
    db $E3                                        ; $4E43: $E3
    db $E3                                        ; $4E44: $E3
    call c, $E3FF                                 ; $4E45: $DC $FF $E3
    db $E3                                        ; $4E48: $E3
    call c, Call_000_03FF                         ; $4E49: $DC $FF $03
    ccf                                           ; $4E4C: $3F
    rra                                           ; $4E4D: $1F
    ccf                                           ; $4E4E: $3F
    rra                                           ; $4E4F: $1F
    ccf                                           ; $4E50: $3F
    rra                                           ; $4E51: $1F
    rra                                           ; $4E52: $1F
    ld c, $1F                                     ; $4E53: $0E $1F
    rrca                                          ; $4E55: $0F
    rrca                                          ; $4E56: $0F
    rlca                                          ; $4E57: $07
    ld a, a                                       ; $4E58: $7F
    ld bc, $40BF                                  ; $4E59: $01 $BF $40
    rst RST_18                                    ; $4E5C: $DF
    cpl                                           ; $4E5D: $2F
    ld a, a                                       ; $4E5E: $7F
    nop                                           ; $4E5F: $00
    ld e, b                                       ; $4E60: $58
    jr nc, jr_015_4EDC                            ; $4E61: $30 $79

    jr nc, jr_015_4EA3                            ; $4E63: $30 $3E

    add hl, de                                    ; $4E65: $19
    rst RST_38                                    ; $4E66: $FF
    add hl, de                                    ; $4E67: $19
    rst RST_38                                    ; $4E68: $FF
    add l                                         ; $4E69: $85
    rst RST_08                                    ; $4E6A: $CF
    or l                                          ; $4E6B: $B5
    rst RST_38                                    ; $4E6C: $FF
    add hl, de                                    ; $4E6D: $19
    rst RST_38                                    ; $4E6E: $FF
    ld b, b                                       ; $4E6F: $40
    pop hl                                        ; $4E70: $E1
    ld e, $FF                                     ; $4E71: $1E $FF
    call c, $DBFF                                 ; $4E73: $DC $FF $DB
    rst RST_38                                    ; $4E76: $FF
    inc e                                         ; $4E77: $1C
    ld a, a                                       ; $4E78: $7F
    ld l, $FE                                     ; $4E79: $2E $FE
    ld [hl], b                                    ; $4E7B: $70
    or b                                          ; $4E7C: $B0
    ld h, b                                       ; $4E7D: $60
    ld h, b                                       ; $4E7E: $60
    nop                                           ; $4E7F: $00
    nop                                           ; $4E80: $00
    nop                                           ; $4E81: $00
    nop                                           ; $4E82: $00
    nop                                           ; $4E83: $00
    nop                                           ; $4E84: $00
    nop                                           ; $4E85: $00
    nop                                           ; $4E86: $00
    nop                                           ; $4E87: $00
    nop                                           ; $4E88: $00
    nop                                           ; $4E89: $00
    ld bc, $0000                                  ; $4E8A: $01 $00 $00
    nop                                           ; $4E8D: $00
    nop                                           ; $4E8E: $00
    nop                                           ; $4E8F: $00
    nop                                           ; $4E90: $00
    nop                                           ; $4E91: $00
    ldh a, [rP1]                                  ; $4E92: $F0 $00
    rra                                           ; $4E94: $1F
    ldh [$FFFE], a                                ; $4E95: $E0 $FE
    db $ED                                        ; $4E97: $ED
    db $FC                                        ; $4E98: $FC
    db $EB                                        ; $4E99: $EB
    db $FC                                        ; $4E9A: $FC
    db $E3                                        ; $4E9B: $E3
    ld sp, hl                                     ; $4E9C: $F9
    rlca                                          ; $4E9D: $07
    add hl, bc                                    ; $4E9E: $09
    or $F8                                        ; $4E9F: $F6 $F8
    ld [hl], b                                    ; $4EA1: $70
    ld a, [hl]                                    ; $4EA2: $7E

jr_015_4EA3:
    jr c, jr_015_4EE4                             ; $4EA3: $38 $3F

    ld e, $3F                                     ; $4EA5: $1E $3F
    add hl, de                                    ; $4EA7: $19
    rst RST_38                                    ; $4EA8: $FF
    dec de                                        ; $4EA9: $1B
    rst RST_38                                    ; $4EAA: $FF
    rst RST_38                                    ; $4EAB: $FF
    rst RST_38                                    ; $4EAC: $FF
    ccf                                           ; $4EAD: $3F
    ld a, a                                       ; $4EAE: $7F
    dec a                                         ; $4EAF: $3D
    ld a, a                                       ; $4EB0: $7F
    dec a                                         ; $4EB1: $3D
    cp l                                          ; $4EB2: $BD
    ld a, b                                       ; $4EB3: $78
    ld a, h                                       ; $4EB4: $7C
    ld hl, sp+$7C                                 ; $4EB5: $F8 $7C
    ld hl, sp-$04                                 ; $4EB7: $F8 $FC
    ld hl, sp-$04                                 ; $4EB9: $F8 $FC
    ld hl, sp-$04                                 ; $4EBB: $F8 $FC
    ld hl, sp-$04                                 ; $4EBD: $F8 $FC
    ret c                                         ; $4EBF: $D8

    nop                                           ; $4EC0: $00
    nop                                           ; $4EC1: $00
    nop                                           ; $4EC2: $00
    nop                                           ; $4EC3: $00
    nop                                           ; $4EC4: $00
    nop                                           ; $4EC5: $00
    add b                                         ; $4EC6: $80
    nop                                           ; $4EC7: $00
    ldh [rP1], a                                  ; $4EC8: $E0 $00
    ldh a, [$FF60]                                ; $4ECA: $F0 $60
    ldh a, [$FFA0]                                ; $4ECC: $F0 $A0
    ldh [$FFC0], a                                ; $4ECE: $E0 $C0
    ldh [$FFC0], a                                ; $4ED0: $E0 $C0
    ret nz                                        ; $4ED2: $C0

    nop                                           ; $4ED3: $00
    nop                                           ; $4ED4: $00
    nop                                           ; $4ED5: $00
    nop                                           ; $4ED6: $00
    nop                                           ; $4ED7: $00
    inc b                                         ; $4ED8: $04
    nop                                           ; $4ED9: $00
    ld c, $04                                     ; $4EDA: $0E $04

jr_015_4EDC:
    ld c, $04                                     ; $4EDC: $0E $04
    ld c, $04                                     ; $4EDE: $0E $04
    nop                                           ; $4EE0: $00
    nop                                           ; $4EE1: $00
    nop                                           ; $4EE2: $00
    nop                                           ; $4EE3: $00

jr_015_4EE4:
    nop                                           ; $4EE4: $00
    nop                                           ; $4EE5: $00
    rlca                                          ; $4EE6: $07
    nop                                           ; $4EE7: $00
    dec b                                         ; $4EE8: $05
    inc bc                                        ; $4EE9: $03
    rlca                                          ; $4EEA: $07
    inc bc                                        ; $4EEB: $03
    inc bc                                        ; $4EEC: $03
    ld bc, HeaderManufacturerCode                 ; $4EED: $01 $3F $01
    ld e, a                                       ; $4EF0: $5F
    jr c, jr_015_4F4F                             ; $4EF1: $38 $5C

    dec sp                                        ; $4EF3: $3B
    ccf                                           ; $4EF4: $3F
    ld bc, $041F                                  ; $4EF5: $01 $1F $04
    ld e, $01                                     ; $4EF8: $1E $01
    cpl                                           ; $4EFA: $2F
    dec e                                         ; $4EFB: $1D
    cpl                                           ; $4EFC: $2F
    dec e                                         ; $4EFD: $1D
    rra                                           ; $4EFE: $1F
    ld bc, $0000                                  ; $4EFF: $01 $00 $00
    nop                                           ; $4F02: $00
    nop                                           ; $4F03: $00
    nop                                           ; $4F04: $00
    nop                                           ; $4F05: $00
    nop                                           ; $4F06: $00
    nop                                           ; $4F07: $00
    nop                                           ; $4F08: $00
    nop                                           ; $4F09: $00
    nop                                           ; $4F0A: $00
    nop                                           ; $4F0B: $00
    nop                                           ; $4F0C: $00
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
    jr nc, jr_015_4F1C                            ; $4F1A: $30 $00

jr_015_4F1C:
    ld l, b                                       ; $4F1C: $68
    db $10                                        ; $4F1D: $10
    ld hl, sp+$40                                 ; $4F1E: $F8 $40
    ld c, $04                                     ; $4F20: $0E $04
    rrca                                          ; $4F22: $0F
    ld b, $07                                     ; $4F23: $06 $07
    ld [bc], a                                    ; $4F25: $02
    rlca                                          ; $4F26: $07
    inc bc                                        ; $4F27: $03
    inc bc                                        ; $4F28: $03
    ld bc, $0103                                  ; $4F29: $01 $03 $01
    ld bc, $0000                                  ; $4F2C: $01 $00 $00
    nop                                           ; $4F2F: $00
    nop                                           ; $4F30: $00
    nop                                           ; $4F31: $00
    ld bc, $0300                                  ; $4F32: $01 $00 $03
    ld bc, $0307                                  ; $4F35: $01 $07 $03
    rra                                           ; $4F38: $1F
    rlca                                          ; $4F39: $07
    ld a, a                                       ; $4F3A: $7F
    ld e, $FE                                     ; $4F3B: $1E $FE
    ld [hl], b                                    ; $4F3D: $70
    ld [hl], b                                    ; $4F3E: $70
    nop                                           ; $4F3F: $00
    rst RST_18                                    ; $4F40: $DF
    ld bc, $07DF                                  ; $4F41: $01 $DF $07
    rst RST_38                                    ; $4F44: $FF
    rrca                                          ; $4F45: $0F
    rst RST_38                                    ; $4F46: $FF
    rrca                                          ; $4F47: $0F
    rst RST_38                                    ; $4F48: $FF
    rra                                           ; $4F49: $1F
    rst RST_38                                    ; $4F4A: $FF
    dec sp                                        ; $4F4B: $3B
    rst RST_38                                    ; $4F4C: $FF
    rst RST_30                                    ; $4F4D: $F7
    rst RST_38                                    ; $4F4E: $FF

jr_015_4F4F:
    rst RST_08                                    ; $4F4F: $CF
    rst RST_38                                    ; $4F50: $FF
    cpl                                           ; $4F51: $2F
    rst RST_38                                    ; $4F52: $FF
    ld [hl], a                                    ; $4F53: $77
    rst RST_38                                    ; $4F54: $FF
    ld a, b                                       ; $4F55: $78
    rst RST_38                                    ; $4F56: $FF
    rst RST_38                                    ; $4F57: $FF
    rst RST_38                                    ; $4F58: $FF
    ld hl, sp-$08                                 ; $4F59: $F8 $F8
    ldh [$FFE0], a                                ; $4F5B: $E0 $E0
    add b                                         ; $4F5D: $80
    add b                                         ; $4F5E: $80
    nop                                           ; $4F5F: $00
    rst RST_10                                    ; $4F60: $D7
    xor b                                         ; $4F61: $A8
    sub $A9                                       ; $4F62: $D6 $A9
    cp $D5                                        ; $4F64: $FE $D5

jr_015_4F66:
    rst RST_38                                    ; $4F66: $FF
    sub $FF                                       ; $4F67: $D6 $FF
    ei                                            ; $4F69: $FB
    rst RST_38                                    ; $4F6A: $FF
    db $FD                                        ; $4F6B: $FD
    rst RST_38                                    ; $4F6C: $FF
    cp $FF                                        ; $4F6D: $FE $FF
    rst RST_38                                    ; $4F6F: $FF
    rst RST_38                                    ; $4F70: $FF
    rst RST_18                                    ; $4F71: $DF
    rst RST_38                                    ; $4F72: $FF
    ld a, $FE                                     ; $4F73: $3E $FE
    ldh a, [$FFF0]                                ; $4F75: $F0 $F0
    ret nz                                        ; $4F77: $C0

    ret nz                                        ; $4F78: $C0

    nop                                           ; $4F79: $00
    nop                                           ; $4F7A: $00
    nop                                           ; $4F7B: $00
    nop                                           ; $4F7C: $00
    nop                                           ; $4F7D: $00
    nop                                           ; $4F7E: $00
    nop                                           ; $4F7F: $00
    ld hl, sp+$30                                 ; $4F80: $F8 $30
    ld a, b                                       ; $4F82: $78
    sub b                                         ; $4F83: $90
    jr jr_015_4F66                                ; $4F84: $18 $E0

    adc b                                         ; $4F86: $88
    ldh a, [$FFE4]                                ; $4F87: $F0 $E4
    ld hl, sp-$05                                 ; $4F89: $F8 $FB
    db $FC                                        ; $4F8B: $FC
    rst RST_38                                    ; $4F8C: $FF
    rst RST_38                                    ; $4F8D: $FF
    rst RST_38                                    ; $4F8E: $FF
    rst RST_38                                    ; $4F8F: $FF
    rst RST_38                                    ; $4F90: $FF
    rst RST_38                                    ; $4F91: $FF
    rst RST_38                                    ; $4F92: $FF
    inc bc                                        ; $4F93: $03
    inc bc                                        ; $4F94: $03
    nop                                           ; $4F95: $00
    rlca                                          ; $4F96: $07
    inc bc                                        ; $4F97: $03
    rlca                                          ; $4F98: $07
    inc bc                                        ; $4F99: $03
    rlca                                          ; $4F9A: $07
    inc bc                                        ; $4F9B: $03
    inc bc                                        ; $4F9C: $03
    nop                                           ; $4F9D: $00
    nop                                           ; $4F9E: $00
    nop                                           ; $4F9F: $00
    nop                                           ; $4FA0: $00
    nop                                           ; $4FA1: $00
    nop                                           ; $4FA2: $00
    nop                                           ; $4FA3: $00
    nop                                           ; $4FA4: $00
    nop                                           ; $4FA5: $00
    ld b, b                                       ; $4FA6: $40
    nop                                           ; $4FA7: $00
    db $E3                                        ; $4FA8: $E3
    ld b, b                                       ; $4FA9: $40
    rst RST_20                                    ; $4FAA: $E7
    ld b, e                                       ; $4FAB: $43
    rst RST_38                                    ; $4FAC: $FF
    add $FF                                       ; $4FAD: $C6 $FF
    cp $FF                                        ; $4FAF: $FE $FF
    db $FC                                        ; $4FB1: $FC
    db $FC                                        ; $4FB2: $FC
    ret z                                         ; $4FB3: $C8

    db $FC                                        ; $4FB4: $FC
    add sp, -$08                                  ; $4FB5: $E8 $F8
    ldh a, [$FFF0]                                ; $4FB7: $F0 $F0
    add b                                         ; $4FB9: $80
    ldh [rLCDC], a                                ; $4FBA: $E0 $40
    ldh [$FFC0], a                                ; $4FBC: $E0 $C0
    ret nz                                        ; $4FBE: $C0

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
    nop                                           ; $4FCC: $00
    nop                                           ; $4FCD: $00
    nop                                           ; $4FCE: $00
    nop                                           ; $4FCF: $00
    nop                                           ; $4FD0: $00
    nop                                           ; $4FD1: $00
    nop                                           ; $4FD2: $00
    nop                                           ; $4FD3: $00
    nop                                           ; $4FD4: $00
    nop                                           ; $4FD5: $00
    jr jr_015_4FD8                                ; $4FD6: $18 $00

jr_015_4FD8:
    inc d                                         ; $4FD8: $14
    ld [$00DC], sp                                ; $4FD9: $08 $DC $00
    xor l                                         ; $4FDC: $AD
    ld b, b                                       ; $4FDD: $40
    db $ED                                        ; $4FDE: $ED
    nop                                           ; $4FDF: $00
    nop                                           ; $4FE0: $00
    nop                                           ; $4FE1: $00
    nop                                           ; $4FE2: $00
    nop                                           ; $4FE3: $00
    nop                                           ; $4FE4: $00
    nop                                           ; $4FE5: $00
    ld bc, $0D00                                  ; $4FE6: $01 $00 $0D
    nop                                           ; $4FE9: $00
    rla                                           ; $4FEA: $17
    inc c                                         ; $4FEB: $0C
    rra                                           ; $4FEC: $1F
    ld c, $0F                                     ; $4FED: $0E $0F
    dec b                                         ; $4FEF: $05
    rlca                                          ; $4FF0: $07
    inc bc                                        ; $4FF1: $03
    rlca                                          ; $4FF2: $07
    inc bc                                        ; $4FF3: $03
    rlca                                          ; $4FF4: $07
    ld [bc], a                                    ; $4FF5: $02
    inc bc                                        ; $4FF6: $03
    nop                                           ; $4FF7: $00
    rlca                                          ; $4FF8: $07
    inc bc                                        ; $4FF9: $03
    rlca                                          ; $4FFA: $07
    inc bc                                        ; $4FFB: $03
    ccf                                           ; $4FFC: $3F
    ld bc, $02FD                                  ; $4FFD: $01 $FD $02
    nop                                           ; $5000: $00
    nop                                           ; $5001: $00
    ld b, $00                                     ; $5002: $06 $00
    ret                                           ; $5004: $C9


    ld b, $2F                                     ; $5005: $06 $2F
    add $FF                                       ; $5007: $C6 $FF
    add $FF                                       ; $5009: $C6 $FF
    ret nc                                        ; $500B: $D0

    ei                                            ; $500C: $FB
    inc b                                         ; $500D: $04
    db $DB                                        ; $500E: $DB
    db $ED                                        ; $500F: $ED
    rst RST_18                                    ; $5010: $DF
    jp hl                                         ; $5011: $E9


    rst RST_18                                    ; $5012: $DF
    ld h, [hl]                                    ; $5013: $66
    rst RST_18                                    ; $5014: $DF
    and b                                         ; $5015: $A0
    rst RST_38                                    ; $5016: $FF
    adc a                                         ; $5017: $8F
    rst RST_28                                    ; $5018: $EF
    rst RST_30                                    ; $5019: $F7
    rst RST_28                                    ; $501A: $EF
    rst RST_30                                    ; $501B: $F7
    rst RST_28                                    ; $501C: $EF
    ld [hl], a                                    ; $501D: $77
    ld l, a                                       ; $501E: $6F
    or b                                          ; $501F: $B0
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
    ld [hl], b                                    ; $502A: $70
    nop                                           ; $502B: $00
    ret nc                                        ; $502C: $D0

    ld h, b                                       ; $502D: $60
    ldh a, [$FFE0]                                ; $502E: $F0 $E0
    ldh [$FF80], a                                ; $5030: $E0 $80
    add b                                         ; $5032: $80
    nop                                           ; $5033: $00
    add b                                         ; $5034: $80
    nop                                           ; $5035: $00
    ld b, b                                       ; $5036: $40
    add b                                         ; $5037: $80
    ld b, b                                       ; $5038: $40
    add b                                         ; $5039: $80
    ld b, b                                       ; $503A: $40
    add b                                         ; $503B: $80
    ld b, b                                       ; $503C: $40
    add b                                         ; $503D: $80
    ret nz                                        ; $503E: $C0

    nop                                           ; $503F: $00
    nop                                           ; $5040: $00
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
    nop                                           ; $5054: $00
    nop                                           ; $5055: $00
    nop                                           ; $5056: $00
    nop                                           ; $5057: $00
    add b                                         ; $5058: $80
    nop                                           ; $5059: $00
    ret nz                                        ; $505A: $C0

    nop                                           ; $505B: $00
    ld b, b                                       ; $505C: $40
    add b                                         ; $505D: $80
    add b                                         ; $505E: $80
    nop                                           ; $505F: $00
    inc bc                                        ; $5060: $03
    nop                                           ; $5061: $00
    ld bc, $1C00                                  ; $5062: $01 $00 $1C
    nop                                           ; $5065: $00
    cpl                                           ; $5066: $2F
    inc d                                         ; $5067: $14
    ccf                                           ; $5068: $3F
    rrca                                          ; $5069: $0F
    rrca                                          ; $506A: $0F
    inc bc                                        ; $506B: $03
    inc bc                                        ; $506C: $03
    nop                                           ; $506D: $00
    ld bc, $0F00                                  ; $506E: $01 $00 $0F
    ld bc, $0E7F                                  ; $5071: $01 $7F $0E
    cp $7D                                        ; $5074: $FE $7D
    cp $01                                        ; $5076: $FE $01
    ld bc, $0100                                  ; $5078: $01 $00 $01
    nop                                           ; $507B: $00
    ld bc, $0000                                  ; $507C: $01 $00 $00
    nop                                           ; $507F: $00
    rst RST_00                                    ; $5080: $C7
    inc bc                                        ; $5081: $03
    rst RST_28                                    ; $5082: $EF
    rlca                                          ; $5083: $07
    rst RST_38                                    ; $5084: $FF
    rlca                                          ; $5085: $07
    ld a, a                                       ; $5086: $7F
    rrca                                          ; $5087: $0F
    rst RST_38                                    ; $5088: $FF
    dec e                                         ; $5089: $1D
    rst RST_38                                    ; $508A: $FF
    set 1, a                                      ; $508B: $CB $CF
    or a                                          ; $508D: $B7
    rst RST_38                                    ; $508E: $FF
    dec de                                        ; $508F: $1B
    rst RST_38                                    ; $5090: $FF
    ret nz                                        ; $5091: $C0

    pop hl                                        ; $5092: $E1
    ld e, $FF                                     ; $5093: $1E $FF
    call c, $DBFF                                 ; $5095: $DC $FF $DB
    rst RST_38                                    ; $5098: $FF
    inc e                                         ; $5099: $1C
    ld a, a                                       ; $509A: $7F
    xor $7E                                       ; $509B: $EE $7E
    ldh a, [$FFF0]                                ; $509D: $F0 $F0
    nop                                           ; $509F: $00
    cp $F0                                        ; $50A0: $FE $F0
    ld sp, hl                                     ; $50A2: $F9
    or $FC                                        ; $50A3: $F6 $FC
    ei                                            ; $50A5: $FB
    db $FC                                        ; $50A6: $FC
    ei                                            ; $50A7: $FB

jr_015_50A8:
    rst RST_38                                    ; $50A8: $FF
    ei                                            ; $50A9: $FB
    rst RST_38                                    ; $50AA: $FF
    rst RST_38                                    ; $50AB: $FF
    rst RST_38                                    ; $50AC: $FF
    rst RST_38                                    ; $50AD: $FF
    rst RST_38                                    ; $50AE: $FF
    rlca                                          ; $50AF: $07
    rrca                                          ; $50B0: $0F
    ldh a, [rIE]                                  ; $50B1: $F0 $FF
    rst RST_30                                    ; $50B3: $F7
    rst RST_38                                    ; $50B4: $FF
    db $E3                                        ; $50B5: $E3
    db $E3                                        ; $50B6: $E3
    call c, $E0FC                                 ; $50B7: $DC $FC $E0
    ldh [c], a                                    ; $50BA: $E2
    call c, Call_000_00FC                         ; $50BB: $DC $FC $00
    nop                                           ; $50BE: $00
    nop                                           ; $50BF: $00
    nop                                           ; $50C0: $00
    nop                                           ; $50C1: $00
    add b                                         ; $50C2: $80
    nop                                           ; $50C3: $00
    ld h, b                                       ; $50C4: $60
    add b                                         ; $50C5: $80
    jr jr_015_50A8                                ; $50C6: $18 $E0

    rlca                                          ; $50C8: $07
    ld hl, sp-$10                                 ; $50C9: $F8 $F0
    rst RST_38                                    ; $50CB: $FF
    rst RST_38                                    ; $50CC: $FF
    rst RST_38                                    ; $50CD: $FF
    rst RST_38                                    ; $50CE: $FF
    ld l, a                                       ; $50CF: $6F
    rst RST_38                                    ; $50D0: $FF
    pop hl                                        ; $50D1: $E1
    pop hl                                        ; $50D2: $E1
    ret nz                                        ; $50D3: $C0

    jp Jump_000_0301                              ; $50D4: $C3 $01 $03


    ld bc, $0103                                  ; $50D7: $01 $03 $01
    ld bc, $0000                                  ; $50DA: $01 $00 $00
    nop                                           ; $50DD: $00
    nop                                           ; $50DE: $00
    nop                                           ; $50DF: $00
    nop                                           ; $50E0: $00
    nop                                           ; $50E1: $00
    nop                                           ; $50E2: $00
    nop                                           ; $50E3: $00
    jr nz, jr_015_50E6                            ; $50E4: $20 $00

jr_015_50E6:
    ld [hl], c                                    ; $50E6: $71
    jr nz, @-$0B                                  ; $50E7: $20 $F3

    ld hl, $E3FF                                  ; $50E9: $21 $FF $E3
    rst RST_38                                    ; $50EC: $FF
    rst RST_38                                    ; $50ED: $FF
    rst RST_38                                    ; $50EE: $FF
    cp $FE                                        ; $50EF: $FE $FE
    db $E4                                        ; $50F1: $E4
    cp $74                                        ; $50F2: $FE $74
    db $FC                                        ; $50F4: $FC
    ld hl, sp-$08                                 ; $50F5: $F8 $F8
    ret nz                                        ; $50F7: $C0

    ldh a, [$FFA0]                                ; $50F8: $F0 $A0
    ldh a, [$FF60]                                ; $50FA: $F0 $60
    ld h, b                                       ; $50FC: $60
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
    add b                                         ; $5116: $80
    nop                                           ; $5117: $00
    ret nz                                        ; $5118: $C0

    add b                                         ; $5119: $80
    ldh [rP1], a                                  ; $511A: $E0 $00
    and b                                         ; $511C: $A0
    ld b, b                                       ; $511D: $40
    ret nz                                        ; $511E: $C0

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
    inc e                                         ; $513C: $1C
    nop                                           ; $513D: $00
    ld e, $00                                     ; $513E: $1E $00
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
    nop                                           ; $514E: $00
    nop                                           ; $514F: $00
    nop                                           ; $5150: $00
    nop                                           ; $5151: $00
    nop                                           ; $5152: $00
    nop                                           ; $5153: $00
    nop                                           ; $5154: $00
    nop                                           ; $5155: $00
    nop                                           ; $5156: $00
    nop                                           ; $5157: $00
    nop                                           ; $5158: $00
    nop                                           ; $5159: $00
    nop                                           ; $515A: $00
    nop                                           ; $515B: $00
    inc e                                         ; $515C: $1C
    nop                                           ; $515D: $00
    ld a, [hl]                                    ; $515E: $7E
    inc e                                         ; $515F: $1C
    rrca                                          ; $5160: $0F
    push af                                       ; $5161: $F5
    rst RST_38                                    ; $5162: $FF
    push af                                       ; $5163: $F5
    rst RST_38                                    ; $5164: $FF
    db $E3                                        ; $5165: $E3
    db $E3                                        ; $5166: $E3
    db $DD                                        ; $5167: $DD
    rst RST_38                                    ; $5168: $FF
    db $E3                                        ; $5169: $E3
    db $E3                                        ; $516A: $E3
    dec e                                         ; $516B: $1D
    ccf                                           ; $516C: $3F
    inc bc                                        ; $516D: $03
    ccf                                           ; $516E: $3F
    ld e, $3F                                     ; $516F: $1E $3F
    ld e, $3F                                     ; $5171: $1E $3F
    rra                                           ; $5173: $1F
    rra                                           ; $5174: $1F
    rrca                                          ; $5175: $0F
    rrca                                          ; $5176: $0F
    inc bc                                        ; $5177: $03
    ld a, a                                       ; $5178: $7F
    nop                                           ; $5179: $00
    cp a                                          ; $517A: $BF
    ld b, b                                       ; $517B: $40
    rst RST_28                                    ; $517C: $EF
    rla                                           ; $517D: $17
    ccf                                           ; $517E: $3F
    nop                                           ; $517F: $00
    cp $FC                                        ; $5180: $FE $FC
    cp $FC                                        ; $5182: $FE $FC
    rst RST_38                                    ; $5184: $FF
    cp $FF                                        ; $5185: $FE $FF
    cp $FF                                        ; $5187: $FE $FF
    or $FF                                        ; $5189: $F6 $FF
    ei                                            ; $518B: $FB
    rst RST_38                                    ; $518C: $FF
    ei                                            ; $518D: $FB
    rst RST_38                                    ; $518E: $FF
    db $FD                                        ; $518F: $FD
    rst RST_38                                    ; $5190: $FF
    db $FD                                        ; $5191: $FD
    rst RST_38                                    ; $5192: $FF
    ld a, l                                       ; $5193: $7D
    rst RST_38                                    ; $5194: $FF
    cp e                                          ; $5195: $BB
    rst RST_38                                    ; $5196: $FF
    rst RST_00                                    ; $5197: $C7
    rst RST_30                                    ; $5198: $F7
    pop hl                                        ; $5199: $E1
    ei                                            ; $519A: $FB
    ld [hl], b                                    ; $519B: $70
    ld hl, sp-$10                                 ; $519C: $F8 $F0
    ldh a, [rP1]                                  ; $519E: $F0 $00
    rrca                                          ; $51A0: $0F
    ld b, $0F                                     ; $51A1: $06 $0F
    ld b, $0F                                     ; $51A3: $06 $0F
    ld b, $0F                                     ; $51A5: $06 $0F
    ld b, $8F                                     ; $51A7: $06 $8F
    ld b, $9F                                     ; $51A9: $06 $9F
    ld c, $9F                                     ; $51AB: $0E $9F
    ld c, $FF                                     ; $51AD: $0E $FF
    sbc [hl]                                      ; $51AF: $9E
    rst RST_38                                    ; $51B0: $FF
    cp $FE                                        ; $51B1: $FE $FE
    db $FC                                        ; $51B3: $FC
    cp $FC                                        ; $51B4: $FE $FC
    db $FC                                        ; $51B6: $FC
    ld hl, sp-$08                                 ; $51B7: $F8 $F8
    ldh [$FFE0], a                                ; $51B9: $E0 $E0
    nop                                           ; $51BB: $00
    nop                                           ; $51BC: $00
    nop                                           ; $51BD: $00
    nop                                           ; $51BE: $00
    nop                                           ; $51BF: $00
    nop                                           ; $51C0: $00
    nop                                           ; $51C1: $00
    nop                                           ; $51C2: $00
    nop                                           ; $51C3: $00
    ldh [rP1], a                                  ; $51C4: $E0 $00
    ldh [$FFC0], a                                ; $51C6: $E0 $C0
    ldh [$FFC0], a                                ; $51C8: $E0 $C0
    ret nz                                        ; $51CA: $C0

    add b                                         ; $51CB: $80
    ret nz                                        ; $51CC: $C0

    nop                                           ; $51CD: $00
    ret nz                                        ; $51CE: $C0

    add b                                         ; $51CF: $80
    ld hl, sp-$40                                 ; $51D0: $F8 $C0
    rst RST_38                                    ; $51D2: $FF
    ld hl, sp-$01                                 ; $51D3: $F8 $FF
    rst RST_38                                    ; $51D5: $FF
    rst RST_38                                    ; $51D6: $FF
    rst RST_38                                    ; $51D7: $FF
    cp a                                          ; $51D8: $BF
    ld a, a                                       ; $51D9: $7F
    ld c, a                                       ; $51DA: $4F
    ccf                                           ; $51DB: $3F
    daa                                           ; $51DC: $27
    ld a, [de]                                    ; $51DD: $1A
    rst RST_30                                    ; $51DE: $F7
    ld a, [bc]                                    ; $51DF: $0A
    rst RST_30                                    ; $51E0: $F7
    dec bc                                        ; $51E1: $0B
    rst RST_38                                    ; $51E2: $FF
    db $E3                                        ; $51E3: $E3
    rst RST_38                                    ; $51E4: $FF
    rst RST_38                                    ; $51E5: $FF
    rst RST_38                                    ; $51E6: $FF
    rst RST_08                                    ; $51E7: $CF
    rst RST_08                                    ; $51E8: $CF
    rlca                                          ; $51E9: $07
    rrca                                          ; $51EA: $0F
    rlca                                          ; $51EB: $07
    ld a, a                                       ; $51EC: $7F
    inc c                                         ; $51ED: $0C
    db $FC                                        ; $51EE: $FC
    ld [hl], b                                    ; $51EF: $70
    rst RST_30                                    ; $51F0: $F7
    inc c                                         ; $51F1: $0C
    cp a                                          ; $51F2: $BF
    ld h, b                                       ; $51F3: $60
    db $E3                                        ; $51F4: $E3
    ld e, h                                       ; $51F5: $5C
    rst RST_38                                    ; $51F6: $FF
    ld e, $BF                                     ; $51F7: $1E $BF
    ld e, b                                       ; $51F9: $58
    rst RST_38                                    ; $51FA: $FF
    ld e, e                                       ; $51FB: $5B
    rst RST_38                                    ; $51FC: $FF
    inc e                                         ; $51FD: $1C
    inc a                                         ; $51FE: $3C
    nop                                           ; $51FF: $00
    nop                                           ; $5200: $00
    nop                                           ; $5201: $00
    inc bc                                        ; $5202: $03
    nop                                           ; $5203: $00
    dec b                                         ; $5204: $05
    ld [bc], a                                    ; $5205: $02
    rlca                                          ; $5206: $07
    nop                                           ; $5207: $00
    rlca                                          ; $5208: $07
    ld bc, $0003                                  ; $5209: $01 $03 $00
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
    ld bc, $0100                                  ; $5216: $01 $00 $01
    nop                                           ; $5219: $00
    nop                                           ; $521A: $00
    nop                                           ; $521B: $00
    ld bc, $0100                                  ; $521C: $01 $00 $01
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
    ld b, $00                                     ; $5238: $06 $00
    rrca                                          ; $523A: $0F
    ld b, $0F                                     ; $523B: $06 $0F
    ld b, $0F                                     ; $523D: $06 $0F
    ld bc, $0000                                  ; $523F: $01 $00 $00
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
    ret nz                                        ; $5254: $C0

    nop                                           ; $5255: $00
    ldh [$FFC0], a                                ; $5256: $E0 $C0
    ldh a, [$FFE0]                                ; $5258: $F0 $E0
    ld hl, sp-$10                                 ; $525A: $F8 $F0
    db $FC                                        ; $525C: $FC
    ld hl, sp-$04                                 ; $525D: $F8 $FC
    ld hl, sp+$00                                 ; $525F: $F8 $00
    nop                                           ; $5261: $00
    nop                                           ; $5262: $00
    nop                                           ; $5263: $00
    nop                                           ; $5264: $00
    nop                                           ; $5265: $00
    nop                                           ; $5266: $00
    nop                                           ; $5267: $00
    nop                                           ; $5268: $00
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
    inc b                                         ; $5278: $04
    nop                                           ; $5279: $00
    ld c, $04                                     ; $527A: $0E $04
    ld c, $04                                     ; $527C: $0E $04
    ld c, $04                                     ; $527E: $0E $04
    inc c                                         ; $5280: $0C
    rlca                                          ; $5281: $07
    inc b                                         ; $5282: $04
    inc bc                                        ; $5283: $03
    inc c                                         ; $5284: $0C
    inc bc                                        ; $5285: $03
    inc e                                         ; $5286: $1C
    dec bc                                        ; $5287: $0B
    inc a                                         ; $5288: $3C
    dec de                                        ; $5289: $1B
    inc a                                         ; $528A: $3C
    dec de                                        ; $528B: $1B
    ld a, a                                       ; $528C: $7F
    inc a                                         ; $528D: $3C
    ld a, a                                       ; $528E: $7F
    inc a                                         ; $528F: $3C
    ld a, a                                       ; $5290: $7F
    inc a                                         ; $5291: $3C
    ccf                                           ; $5292: $3F
    inc e                                         ; $5293: $1C
    rra                                           ; $5294: $1F
    ld b, $07                                     ; $5295: $06 $07
    ld bc, $003F                                  ; $5297: $01 $3F $00
    ld e, a                                       ; $529A: $5F
    cpl                                           ; $529B: $2F
    ld a, a                                       ; $529C: $7F
    nop                                           ; $529D: $00
    nop                                           ; $529E: $00
    nop                                           ; $529F: $00
    ld e, a                                       ; $52A0: $5F
    or [hl]                                       ; $52A1: $B6
    ld e, a                                       ; $52A2: $5F
    or [hl]                                       ; $52A3: $B6
    ccf                                           ; $52A4: $3F
    call $E01F                                    ; $52A5: $CD $1F $E0
    ld a, a                                       ; $52A8: $7F
    sbc a                                         ; $52A9: $9F
    rst RST_38                                    ; $52AA: $FF
    ld a, a                                       ; $52AB: $7F
    rst RST_38                                    ; $52AC: $FF
    rst RST_38                                    ; $52AD: $FF
    rst RST_38                                    ; $52AE: $FF
    rst RST_38                                    ; $52AF: $FF
    rst RST_38                                    ; $52B0: $FF
    ei                                            ; $52B1: $FB
    rst RST_38                                    ; $52B2: $FF
    ei                                            ; $52B3: $FB
    rst RST_38                                    ; $52B4: $FF
    ld a, l                                       ; $52B5: $7D
    rst RST_38                                    ; $52B6: $FF
    ld e, $FF                                     ; $52B7: $1E $FF
    rst RST_00                                    ; $52B9: $C7
    rst RST_38                                    ; $52BA: $FF
    add e                                         ; $52BB: $83
    xor a                                         ; $52BC: $AF
    ld d, a                                       ; $52BD: $57
    rst RST_38                                    ; $52BE: $FF
    nop                                           ; $52BF: $00
    pop af                                        ; $52C0: $F1
    ret nz                                        ; $52C1: $C0

    ret                                           ; $52C2: $C9


    or b                                          ; $52C3: $B0
    pop af                                        ; $52C4: $F1
    add b                                         ; $52C5: $80
    db $E3                                        ; $52C6: $E3
    ld b, c                                       ; $52C7: $41
    di                                            ; $52C8: $F3
    ld h, c                                       ; $52C9: $61
    rst RST_38                                    ; $52CA: $FF
    or e                                          ; $52CB: $B3
    rst RST_38                                    ; $52CC: $FF
    cp a                                          ; $52CD: $BF
    rst RST_38                                    ; $52CE: $FF
    rst RST_18                                    ; $52CF: $DF
    rst RST_38                                    ; $52D0: $FF
    rst RST_18                                    ; $52D1: $DF
    rst RST_38                                    ; $52D2: $FF
    rst RST_18                                    ; $52D3: $DF
    rst RST_38                                    ; $52D4: $FF
    cp a                                          ; $52D5: $BF
    rst RST_38                                    ; $52D6: $FF
    inc e                                         ; $52D7: $1C
    sbc h                                         ; $52D8: $9C
    nop                                           ; $52D9: $00
    ret nz                                        ; $52DA: $C0

    add b                                         ; $52DB: $80
    ret nz                                        ; $52DC: $C0

    add b                                         ; $52DD: $80
    add b                                         ; $52DE: $80
    nop                                           ; $52DF: $00
    nop                                           ; $52E0: $00
    nop                                           ; $52E1: $00
    nop                                           ; $52E2: $00
    nop                                           ; $52E3: $00
    ld sp, $5E00                                  ; $52E4: $31 $00 $5E
    ld hl, $0E7F                                  ; $52E7: $21 $7F $0E
    ccf                                           ; $52EA: $3F
    rra                                           ; $52EB: $1F
    rra                                           ; $52EC: $1F
    inc c                                         ; $52ED: $0C
    rrca                                          ; $52EE: $0F
    nop                                           ; $52EF: $00
    rlca                                          ; $52F0: $07
    inc bc                                        ; $52F1: $03
    di                                            ; $52F2: $F3
    nop                                           ; $52F3: $00
    rra                                           ; $52F4: $1F
    ldh [rIE], a                                  ; $52F5: $E0 $FF
    rst RST_28                                    ; $52F7: $EF
    rst RST_38                                    ; $52F8: $FF
    ldh [$FFF0], a                                ; $52F9: $E0 $F0
    ldh [$FFF0], a                                ; $52FB: $E0 $F0
    ldh [$FFF0], a                                ; $52FD: $E0 $F0
    nop                                           ; $52FF: $00
    nop                                           ; $5300: $00
    nop                                           ; $5301: $00
    nop                                           ; $5302: $00
    nop                                           ; $5303: $00
    nop                                           ; $5304: $00
    nop                                           ; $5305: $00
    nop                                           ; $5306: $00
    nop                                           ; $5307: $00
    nop                                           ; $5308: $00
    nop                                           ; $5309: $00
    nop                                           ; $530A: $00
    nop                                           ; $530B: $00
    nop                                           ; $530C: $00
    nop                                           ; $530D: $00
    rlca                                          ; $530E: $07
    nop                                           ; $530F: $00
    jr jr_015_5319                                ; $5310: $18 $07

    daa                                           ; $5312: $27
    jr jr_015_5394                                ; $5313: $18 $7F

    ld e, $BF                                     ; $5315: $1E $BF
    ld l, [hl]                                    ; $5317: $6E
    rst RST_38                                    ; $5318: $FF

jr_015_5319:
    ld b, d                                       ; $5319: $42
    ldh [c], a                                    ; $531A: $E2
    ld e, h                                       ; $531B: $5C
    ld a, [hl]                                    ; $531C: $7E
    inc e                                         ; $531D: $1C
    inc e                                         ; $531E: $1C
    nop                                           ; $531F: $00
    nop                                           ; $5320: $00
    nop                                           ; $5321: $00
    ld l, [hl]                                    ; $5322: $6E
    nop                                           ; $5323: $00
    cp $6C                                        ; $5324: $FE $6C
    cp $2C                                        ; $5326: $FE $2C
    ld a, h                                       ; $5328: $7C
    sbc b                                         ; $5329: $98
    ld a, h                                       ; $532A: $7C
    or b                                          ; $532B: $B0
    cp $38                                        ; $532C: $FE $38
    rst RST_38                                    ; $532E: $FF
    ld e, $3F                                     ; $532F: $1E $3F
    rst RST_18                                    ; $5331: $DF
    rst RST_38                                    ; $5332: $FF
    ccf                                           ; $5333: $3F
    rst RST_38                                    ; $5334: $FF
    rst RST_00                                    ; $5335: $C7
    pop af                                        ; $5336: $F1
    rrca                                          ; $5337: $0F
    ld hl, sp-$09                                 ; $5338: $F8 $F7
    db $FC                                        ; $533A: $FC
    ei                                            ; $533B: $FB
    db $FC                                        ; $533C: $FC
    rrca                                          ; $533D: $0F
    ld c, $07                                     ; $533E: $0E $07
    nop                                           ; $5340: $00
    nop                                           ; $5341: $00
    nop                                           ; $5342: $00
    nop                                           ; $5343: $00
    nop                                           ; $5344: $00
    nop                                           ; $5345: $00
    nop                                           ; $5346: $00
    nop                                           ; $5347: $00
    nop                                           ; $5348: $00
    nop                                           ; $5349: $00
    nop                                           ; $534A: $00
    nop                                           ; $534B: $00
    nop                                           ; $534C: $00
    nop                                           ; $534D: $00
    ldh a, [rP1]                                  ; $534E: $F0 $00
    db $FC                                        ; $5350: $FC
    ld [hl], b                                    ; $5351: $70
    cp $FC                                        ; $5352: $FE $FC
    rst RST_38                                    ; $5354: $FF
    add $DF                                       ; $5355: $C6 $DF
    cp b                                          ; $5357: $B8
    cp a                                          ; $5358: $BF
    ld h, e                                       ; $5359: $63
    xor a                                         ; $535A: $AF
    ld e, e                                       ; $535B: $5B
    ld l, a                                       ; $535C: $6F
    sbc e                                         ; $535D: $9B
    ccf                                           ; $535E: $3F
    jp RST_00                                     ; $535F: $C3 $00 $00


    nop                                           ; $5362: $00
    nop                                           ; $5363: $00
    nop                                           ; $5364: $00
    nop                                           ; $5365: $00
    nop                                           ; $5366: $00
    nop                                           ; $5367: $00
    nop                                           ; $5368: $00
    nop                                           ; $5369: $00
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
    add b                                         ; $5376: $80
    nop                                           ; $5377: $00
    ld hl, sp+$00                                 ; $5378: $F8 $00
    db $E4                                        ; $537A: $E4
    ld e, b                                       ; $537B: $58
    ld hl, sp+$60                                 ; $537C: $F8 $60
    ldh a, [$FF60]                                ; $537E: $F0 $60
    ld b, b                                       ; $5380: $40
    nop                                           ; $5381: $00
    ldh [rLCDC], a                                ; $5382: $E0 $40
    ldh [rLCDC], a                                ; $5384: $E0 $40
    ldh [rLCDC], a                                ; $5386: $E0 $40
    ldh a, [$FF60]                                ; $5388: $F0 $60
    ldh a, [$FF60]                                ; $538A: $F0 $60
    ldh a, [$FF60]                                ; $538C: $F0 $60
    ldh a, [$FF60]                                ; $538E: $F0 $60
    ldh a, [$FFE0]                                ; $5390: $F0 $E0
    ldh a, [$FFE0]                                ; $5392: $F0 $E0

jr_015_5394:
    ldh a, [$FFE0]                                ; $5394: $F0 $E0
    ldh a, [$FFE0]                                ; $5396: $F0 $E0
    ldh a, [$FFE0]                                ; $5398: $F0 $E0
    ldh [$FFC0], a                                ; $539A: $E0 $C0
    ldh [$FFC0], a                                ; $539C: $E0 $C0
    ret nz                                        ; $539E: $C0

    add b                                         ; $539F: $80
    ccf                                           ; $53A0: $3F
    rra                                           ; $53A1: $1F
    ccf                                           ; $53A2: $3F
    rra                                           ; $53A3: $1F
    rra                                           ; $53A4: $1F
    rrca                                          ; $53A5: $0F
    rra                                           ; $53A6: $1F
    rlca                                          ; $53A7: $07
    rra                                           ; $53A8: $1F
    rrca                                          ; $53A9: $0F

jr_015_53AA:
    ccf                                           ; $53AA: $3F
    inc e                                         ; $53AB: $1C
    ccf                                           ; $53AC: $3F
    jr jr_015_542B                                ; $53AD: $18 $7C

    jr nc, jr_015_53AA                            ; $53AF: $30 $F9

    ld [hl], b                                    ; $53B1: $70
    ld sp, hl                                     ; $53B2: $F9
    ld [hl], b                                    ; $53B3: $70

jr_015_53B4:
    db $FD                                        ; $53B4: $FD
    jr c, jr_015_53B4                             ; $53B5: $38 $FD

    jr jr_015_5437                                ; $53B7: $18 $7E

    inc c                                         ; $53B9: $0C
    ld a, [hl]                                    ; $53BA: $7E
    inc b                                         ; $53BB: $04
    dec [hl]                                      ; $53BC: $35
    ld [bc], a                                    ; $53BD: $02
    inc sp                                        ; $53BE: $33
    nop                                           ; $53BF: $00
    ld hl, sp-$69                                 ; $53C0: $F8 $97
    reti                                          ; $53C2: $D9


    and [hl]                                      ; $53C3: $A6
    rst RST_18                                    ; $53C4: $DF
    and b                                         ; $53C5: $A0
    db $DB                                        ; $53C6: $DB
    xor h                                         ; $53C7: $AC
    ei                                            ; $53C8: $FB
    ld e, l                                       ; $53C9: $5D
    ei                                            ; $53CA: $FB
    db $FD                                        ; $53CB: $FD
    ei                                            ; $53CC: $FB
    db $FD                                        ; $53CD: $FD
    rst RST_38                                    ; $53CE: $FF
    inc hl                                        ; $53CF: $23
    rst RST_30                                    ; $53D0: $F7
    xor b                                         ; $53D1: $A8
    rst RST_30                                    ; $53D2: $F7
    reti                                          ; $53D3: $D9


    rst RST_30                                    ; $53D4: $F7
    ld a, [$FAF7]                                 ; $53D5: $FA $F7 $FA
    cp $03                                        ; $53D8: $FE $03
    cp $6D                                        ; $53DA: $FE $6D
    sub e                                         ; $53DC: $93
    ld l, h                                       ; $53DD: $6C
    ld l, [hl]                                    ; $53DE: $6E
    nop                                           ; $53DF: $00
    ld h, b                                       ; $53E0: $60
    add b                                         ; $53E1: $80
    ldh [rLCDC], a                                ; $53E2: $E0 $40
    ldh [$FFC0], a                                ; $53E4: $E0 $C0
    ldh a, [rP1]                                  ; $53E6: $F0 $00
    ret nc                                        ; $53E8: $D0

    ldh [$FFD0], a                                ; $53E9: $E0 $D0
    ldh [$FFD0], a                                ; $53EB: $E0 $D0
    ldh [$FFD0], a                                ; $53ED: $E0 $D0
    ldh [$FFE0], a                                ; $53EF: $E0 $E0
    nop                                           ; $53F1: $00
    ldh a, [$FFE0]                                ; $53F2: $F0 $E0
    ldh a, [$FFE0]                                ; $53F4: $F0 $E0
    ldh a, [$FFE0]                                ; $53F6: $F0 $E0
    ldh a, [rLCDC]                                ; $53F8: $F0 $40
    ld hl, sp+$30                                 ; $53FA: $F8 $30
    inc h                                         ; $53FC: $24
    jr jr_015_541B                                ; $53FD: $18 $1C

    nop                                           ; $53FF: $00
    nop                                           ; $5400: $00
    nop                                           ; $5401: $00
    nop                                           ; $5402: $00
    nop                                           ; $5403: $00
    nop                                           ; $5404: $00

jr_015_5405:
    nop                                           ; $5405: $00
    nop                                           ; $5406: $00
    nop                                           ; $5407: $00
    ld bc, $0700                                  ; $5408: $01 $00 $07
    ld bc, $071F                                  ; $540B: $01 $1F $07
    ccf                                           ; $540E: $3F
    rra                                           ; $540F: $1F
    ld a, a                                       ; $5410: $7F
    inc a                                         ; $5411: $3C
    ld a, h                                       ; $5412: $7C
    jr nc, jr_015_5405                            ; $5413: $30 $F0

    ld h, b                                       ; $5415: $60
    ldh [rLCDC], a                                ; $5416: $E0 $40
    ret nz                                        ; $5418: $C0

    nop                                           ; $5419: $00
    nop                                           ; $541A: $00

jr_015_541B:
    nop                                           ; $541B: $00
    nop                                           ; $541C: $00
    nop                                           ; $541D: $00
    nop                                           ; $541E: $00
    nop                                           ; $541F: $00
    nop                                           ; $5420: $00
    nop                                           ; $5421: $00
    nop                                           ; $5422: $00
    nop                                           ; $5423: $00
    nop                                           ; $5424: $00
    nop                                           ; $5425: $00
    nop                                           ; $5426: $00
    nop                                           ; $5427: $00
    ld hl, sp+$00                                 ; $5428: $F8 $00
    rst RST_38                                    ; $542A: $FF

jr_015_542B:
    ld hl, sp-$01                                 ; $542B: $F8 $FF
    rst RST_38                                    ; $542D: $FF
    rst RST_38                                    ; $542E: $FF
    rst RST_38                                    ; $542F: $FF
    rst RST_38                                    ; $5430: $FF
    ld a, a                                       ; $5431: $7F
    ld a, a                                       ; $5432: $7F
    ccf                                           ; $5433: $3F
    ccf                                           ; $5434: $3F
    dec de                                        ; $5435: $1B
    rra                                           ; $5436: $1F

jr_015_5437:
    rlca                                          ; $5437: $07
    rra                                           ; $5438: $1F
    rrca                                          ; $5439: $0F
    ccf                                           ; $543A: $3F
    rra                                           ; $543B: $1F
    ccf                                           ; $543C: $3F
    rra                                           ; $543D: $1F
    ccf                                           ; $543E: $3F
    rra                                           ; $543F: $1F
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
    ret nz                                        ; $544C: $C0

    nop                                           ; $544D: $00
    ldh a, [$FFC0]                                ; $544E: $F0 $C0
    cp $F0                                        ; $5450: $FE $F0
    rst RST_38                                    ; $5452: $FF
    cp $FF                                        ; $5453: $FE $FF
    rst RST_38                                    ; $5455: $FF
    rst RST_38                                    ; $5456: $FF
    rst RST_38                                    ; $5457: $FF
    rst RST_38                                    ; $5458: $FF
    db $FD                                        ; $5459: $FD
    rst RST_38                                    ; $545A: $FF
    ld a, e                                       ; $545B: $7B
    rst RST_38                                    ; $545C: $FF
    ld [hl], a                                    ; $545D: $77
    rst RST_38                                    ; $545E: $FF
    xor l                                         ; $545F: $AD
    nop                                           ; $5460: $00
    nop                                           ; $5461: $00
    nop                                           ; $5462: $00
    nop                                           ; $5463: $00
    nop                                           ; $5464: $00
    nop                                           ; $5465: $00
    ld bc, $0700                                  ; $5466: $01 $00 $07
    ld bc, $060F                                  ; $5469: $01 $0F $06
    rrca                                          ; $546C: $0F
    rlca                                          ; $546D: $07
    rrca                                          ; $546E: $0F
    rlca                                          ; $546F: $07
    rlca                                          ; $5470: $07
    ld bc, $07FF                                  ; $5471: $01 $FF $07
    rst RST_38                                    ; $5474: $FF
    rst RST_38                                    ; $5475: $FF
    rst RST_38                                    ; $5476: $FF
    rst RST_38                                    ; $5477: $FF
    rst RST_38                                    ; $5478: $FF
    rst RST_38                                    ; $5479: $FF
    rst RST_30                                    ; $547A: $F7
    ld hl, sp-$38                                 ; $547B: $F8 $C8
    ldh a, [rNR10]                                ; $547D: $F0 $10
    ldh [rP1], a                                  ; $547F: $E0 $00
    nop                                           ; $5481: $00
    nop                                           ; $5482: $00
    nop                                           ; $5483: $00
    nop                                           ; $5484: $00
    nop                                           ; $5485: $00
    add b                                         ; $5486: $80
    nop                                           ; $5487: $00
    ret nz                                        ; $5488: $C0

    add b                                         ; $5489: $80
    ret nz                                        ; $548A: $C0

    add b                                         ; $548B: $80
    ldh [rP1], a                                  ; $548C: $E0 $00
    ldh a, [$FFE0]                                ; $548E: $F0 $E0
    ldh a, [rNR41]                                ; $5490: $F0 $20
    cp b                                          ; $5492: $B8
    ld d, b                                       ; $5493: $50
    ld hl, sp-$70                                 ; $5494: $F8 $90
    db $FC                                        ; $5496: $FC
    ld a, b                                       ; $5497: $78
    ld a, [$FE74]                                 ; $5498: $FA $74 $FE
    or b                                          ; $549B: $B0
    cp $1C                                        ; $549C: $FE $1C
    inc e                                         ; $549E: $1C
    nop                                           ; $549F: $00
    ld [$6BD5], a                                 ; $54A0: $EA $D5 $6B
    sub h                                         ; $54A3: $94
    ld [$7E15], a                                 ; $54A4: $EA $15 $7E
    dec hl                                        ; $54A7: $2B
    ld a, [hl]                                    ; $54A8: $7E
    ccf                                           ; $54A9: $3F
    ld a, [hl]                                    ; $54AA: $7E
    ccf                                           ; $54AB: $3F
    ccf                                           ; $54AC: $3F
    ld [$2A7D], sp                                ; $54AD: $08 $7D $2A
    ld a, l                                       ; $54B0: $7D
    ld [hl], $7D                                  ; $54B1: $36 $7D
    ld a, $7D                                     ; $54B3: $3E $7D
    ld a, $3F                                     ; $54B5: $3E $3F
    nop                                           ; $54B7: $00
    ccf                                           ; $54B8: $3F
    dec de                                        ; $54B9: $1B
    ccf                                           ; $54BA: $3F
    dec de                                        ; $54BB: $1B
    inc h                                         ; $54BC: $24
    dec de                                        ; $54BD: $1B
    dec de                                        ; $54BE: $1B
    nop                                           ; $54BF: $00
    ldh [rLCDC], a                                ; $54C0: $E0 $40
    ldh a, [rP1]                                  ; $54C2: $F0 $00
    ret nc                                        ; $54C4: $D0

    ld h, b                                       ; $54C5: $60
    ret nc                                        ; $54C6: $D0

    ld h, b                                       ; $54C7: $60
    ret nc                                        ; $54C8: $D0

    ld h, b                                       ; $54C9: $60
    ret nc                                        ; $54CA: $D0

    ld h, b                                       ; $54CB: $60
    ldh a, [rP1]                                  ; $54CC: $F0 $00
    ldh [rLCDC], a                                ; $54CE: $E0 $40
    ldh a, [$FF60]                                ; $54D0: $F0 $60
    ldh a, [$FFA0]                                ; $54D2: $F0 $A0
    ldh a, [$FF80]                                ; $54D4: $F0 $80
    cp b                                          ; $54D6: $B8
    ret nc                                        ; $54D7: $D0

    cp h                                          ; $54D8: $BC
    ld e, b                                       ; $54D9: $58
    jp nc, $8E0C                                  ; $54DA: $D2 $0C $8E

    nop                                           ; $54DD: $00
    nop                                           ; $54DE: $00
    nop                                           ; $54DF: $00
    cp $7C                                        ; $54E0: $FE $7C
    cp $7C                                        ; $54E2: $FE $7C
    rst RST_38                                    ; $54E4: $FF
    ld c, $FF                                     ; $54E5: $0E $FF
    ld [hl], a                                    ; $54E7: $77
    rst RST_38                                    ; $54E8: $FF
    ei                                            ; $54E9: $FB
    rst RST_38                                    ; $54EA: $FF
    db $FD                                        ; $54EB: $FD
    rst RST_38                                    ; $54EC: $FF
    rst RST_38                                    ; $54ED: $FF

jr_015_54EE:
    rst RST_38                                    ; $54EE: $FF
    rst RST_38                                    ; $54EF: $FF
    rst RST_38                                    ; $54F0: $FF
    rst RST_08                                    ; $54F1: $CF
    rst RST_38                                    ; $54F2: $FF
    cp a                                          ; $54F3: $BF
    rst RST_38                                    ; $54F4: $FF
    ccf                                           ; $54F5: $3F
    rst RST_38                                    ; $54F6: $FF
    rra                                           ; $54F7: $1F
    rst RST_28                                    ; $54F8: $EF
    rra                                           ; $54F9: $1F
    inc de                                        ; $54FA: $13
    rrca                                          ; $54FB: $0F
    inc c                                         ; $54FC: $0C
    inc bc                                        ; $54FD: $03
    inc bc                                        ; $54FE: $03
    nop                                           ; $54FF: $00
    nop                                           ; $5500: $00
    nop                                           ; $5501: $00
    add b                                         ; $5502: $80
    nop                                           ; $5503: $00
    ret nz                                        ; $5504: $C0

    add b                                         ; $5505: $80
    pop af                                        ; $5506: $F1
    ret nz                                        ; $5507: $C0

    rst RST_38                                    ; $5508: $FF
    pop af                                        ; $5509: $F1
    rst RST_38                                    ; $550A: $FF
    dec sp                                        ; $550B: $3B
    rst RST_38                                    ; $550C: $FF
    rra                                           ; $550D: $1F
    rst RST_38                                    ; $550E: $FF
    rrca                                          ; $550F: $0F
    rst RST_38                                    ; $5510: $FF
    rrca                                          ; $5511: $0F
    ld a, a                                       ; $5512: $7F
    rlca                                          ; $5513: $07
    ccf                                           ; $5514: $3F
    nop                                           ; $5515: $00
    rrca                                          ; $5516: $0F
    nop                                           ; $5517: $00
    inc bc                                        ; $5518: $03
    nop                                           ; $5519: $00
    nop                                           ; $551A: $00
    nop                                           ; $551B: $00
    nop                                           ; $551C: $00
    nop                                           ; $551D: $00
    nop                                           ; $551E: $00
    nop                                           ; $551F: $00
    nop                                           ; $5520: $00
    nop                                           ; $5521: $00
    ld bc, $0300                                  ; $5522: $01 $00 $03
    ld bc, $0307                                  ; $5525: $01 $07 $03
    rrca                                          ; $5528: $0F
    rlca                                          ; $5529: $07
    ccf                                           ; $552A: $3F
    ld c, $FF                                     ; $552B: $0E $FF
    jr c, jr_015_54EE                             ; $552D: $38 $BF

    ld b, b                                       ; $552F: $40
    rst RST_08                                    ; $5530: $CF
    nop                                           ; $5531: $00
    inc e                                         ; $5532: $1C
    nop                                           ; $5533: $00
    jr c, jr_015_5536                             ; $5534: $38 $00

jr_015_5536:
    jr nc, jr_015_5538                            ; $5536: $30 $00

jr_015_5538:
    nop                                           ; $5538: $00
    nop                                           ; $5539: $00
    nop                                           ; $553A: $00
    nop                                           ; $553B: $00
    nop                                           ; $553C: $00
    nop                                           ; $553D: $00
    nop                                           ; $553E: $00
    nop                                           ; $553F: $00
    ret nz                                        ; $5540: $C0

    add b                                         ; $5541: $80
    add b                                         ; $5542: $80
    nop                                           ; $5543: $00
    nop                                           ; $5544: $00
    nop                                           ; $5545: $00
    nop                                           ; $5546: $00
    nop                                           ; $5547: $00
    nop                                           ; $5548: $00
    nop                                           ; $5549: $00
    nop                                           ; $554A: $00
    nop                                           ; $554B: $00
    ret nz                                        ; $554C: $C0

    nop                                           ; $554D: $00
    ld hl, sp-$40                                 ; $554E: $F8 $C0
    rst RST_38                                    ; $5550: $FF
    ld hl, sp-$01                                 ; $5551: $F8 $FF
    rst RST_38                                    ; $5553: $FF
    rst RST_38                                    ; $5554: $FF
    db $FD                                        ; $5555: $FD
    rst RST_38                                    ; $5556: $FF
    ei                                            ; $5557: $FB
    rst RST_38                                    ; $5558: $FF
    ld a, [$F5FF]                                 ; $5559: $FA $FF $F5
    cp $F5                                        ; $555C: $FE $F5
    cp $E1                                        ; $555E: $FE $E1
    nop                                           ; $5560: $00
    nop                                           ; $5561: $00
    nop                                           ; $5562: $00
    nop                                           ; $5563: $00
    inc bc                                        ; $5564: $03
    nop                                           ; $5565: $00
    rrca                                          ; $5566: $0F
    inc bc                                        ; $5567: $03
    rra                                           ; $5568: $1F
    dec c                                         ; $5569: $0D
    rra                                           ; $556A: $1F
    ld c, $1F                                     ; $556B: $0E $1F
    rrca                                          ; $556D: $0F
    rrca                                          ; $556E: $0F
    ld [bc], a                                    ; $556F: $02
    rst RST_38                                    ; $5570: $FF
    ld c, $FF                                     ; $5571: $0E $FF
    rst RST_38                                    ; $5573: $FF
    rst RST_38                                    ; $5574: $FF
    cp $FE                                        ; $5575: $FE $FE
    db $FD                                        ; $5577: $FD
    xor $F5                                       ; $5578: $EE $F5
    sub a                                         ; $557A: $97
    ldh [c], a                                    ; $557B: $E2
    inc hl                                        ; $557C: $23
    pop bc                                        ; $557D: $C1
    ld h, c                                       ; $557E: $61
    add b                                         ; $557F: $80
    nop                                           ; $5580: $00
    nop                                           ; $5581: $00
    nop                                           ; $5582: $00
    nop                                           ; $5583: $00
    nop                                           ; $5584: $00
    nop                                           ; $5585: $00
    add b                                         ; $5586: $80
    nop                                           ; $5587: $00
    add b                                         ; $5588: $80
    nop                                           ; $5589: $00
    ret nz                                        ; $558A: $C0

    nop                                           ; $558B: $00
    ldh [rLCDC], a                                ; $558C: $E0 $40
    ld h, b                                       ; $558E: $60
    add b                                         ; $558F: $80
    jr nc, @-$3E                                  ; $5590: $30 $C0

    ldh a, [rNR41]                                ; $5592: $F0 $20
    ld hl, sp+$70                                 ; $5594: $F8 $70
    ld [hl], h                                    ; $5596: $74
    xor b                                         ; $5597: $A8
    ld a, h                                       ; $5598: $7C
    and b                                         ; $5599: $A0
    ld a, h                                       ; $559A: $7C
    cp b                                          ; $559B: $B8
    cp b                                          ; $559C: $B8
    nop                                           ; $559D: $00
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
    inc bc                                        ; $55B6: $03
    nop                                           ; $55B7: $00
    rrca                                          ; $55B8: $0F
    inc bc                                        ; $55B9: $03
    ccf                                           ; $55BA: $3F
    rrca                                          ; $55BB: $0F
    ld a, a                                       ; $55BC: $7F
    ccf                                           ; $55BD: $3F
    ld a, a                                       ; $55BE: $7F
    ld a, $00                                     ; $55BF: $3E $00
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

jr_015_55CB:
    nop                                           ; $55CB: $00
    nop                                           ; $55CC: $00
    nop                                           ; $55CD: $00
    nop                                           ; $55CE: $00
    nop                                           ; $55CF: $00
    nop                                           ; $55D0: $00
    nop                                           ; $55D1: $00
    nop                                           ; $55D2: $00
    nop                                           ; $55D3: $00
    jr jr_015_55D6                                ; $55D4: $18 $00

jr_015_55D6:
    jr c, jr_015_55E8                             ; $55D6: $38 $10

    ld a, b                                       ; $55D8: $78
    jr nc, jr_015_55CB                            ; $55D9: $30 $F0

    ld h, b                                       ; $55DB: $60
    ldh a, [$FFE0]                                ; $55DC: $F0 $E0
    ldh [$FFC0], a                                ; $55DE: $E0 $C0
    ccf                                           ; $55E0: $3F
    rrca                                          ; $55E1: $0F
    ld a, a                                       ; $55E2: $7F
    ccf                                           ; $55E3: $3F
    ld a, h                                       ; $55E4: $7C
    ccf                                           ; $55E5: $3F
    ld hl, sp+$7F                                 ; $55E6: $F8 $7F

jr_015_55E8:
    db $FC                                        ; $55E8: $FC
    ld a, a                                       ; $55E9: $7F
    ld hl, sp+$7F                                 ; $55EA: $F8 $7F
    ld a, [hl]                                    ; $55EC: $7E
    ccf                                           ; $55ED: $3F
    ld a, b                                       ; $55EE: $78
    ccf                                           ; $55EF: $3F
    inc a                                         ; $55F0: $3C
    rra                                           ; $55F1: $1F
    rra                                           ; $55F2: $1F
    rrca                                          ; $55F3: $0F
    rrca                                          ; $55F4: $0F
    rlca                                          ; $55F5: $07
    rlca                                          ; $55F6: $07
    ld bc, $0001                                  ; $55F7: $01 $01 $00
    nop                                           ; $55FA: $00
    nop                                           ; $55FB: $00
    nop                                           ; $55FC: $00
    nop                                           ; $55FD: $00
    nop                                           ; $55FE: $00
    nop                                           ; $55FF: $00
    ret nz                                        ; $5600: $C0

    rst RST_38                                    ; $5601: $FF
    ldh [rIE], a                                  ; $5602: $E0 $FF
    nop                                           ; $5604: $00
    rst RST_38                                    ; $5605: $FF
    ld bc, $03FE                                  ; $5606: $01 $FE $03
    db $FD                                        ; $5609: $FD
    inc bc                                        ; $560A: $03
    db $FD                                        ; $560B: $FD
    add a                                         ; $560C: $87
    ei                                            ; $560D: $FB
    rlca                                          ; $560E: $07
    ei                                            ; $560F: $FB
    rlca                                          ; $5610: $07
    ei                                            ; $5611: $FB
    add e                                         ; $5612: $83
    db $FD                                        ; $5613: $FD
    ld bc, $C0FE                                  ; $5614: $01 $FE $C0
    rst RST_38                                    ; $5617: $FF
    rst RST_38                                    ; $5618: $FF
    inc a                                         ; $5619: $3C
    dec a                                         ; $561A: $3D
    ld [bc], a                                    ; $561B: $02
    rlca                                          ; $561C: $07
    nop                                           ; $561D: $00
    nop                                           ; $561E: $00
    nop                                           ; $561F: $00
    push bc                                       ; $5620: $C5
    ld a, e                                       ; $5621: $7B
    ld b, l                                       ; $5622: $45
    cp e                                          ; $5623: $BB
    jp $C13C                                      ; $5624: $C3 $3C $C1


    cp [hl]                                       ; $5627: $BE
    rst RST_00                                    ; $5628: $C7
    cp c                                          ; $5629: $B9
    rst RST_08                                    ; $562A: $CF
    or a                                          ; $562B: $B7
    rst RST_38                                    ; $562C: $FF
    rst RST_08                                    ; $562D: $CF
    rst RST_38                                    ; $562E: $FF
    rst RST_08                                    ; $562F: $CF
    rst RST_38                                    ; $5630: $FF
    rst RST_08                                    ; $5631: $CF
    rst RST_38                                    ; $5632: $FF
    rst RST_08                                    ; $5633: $CF
    rst RST_38                                    ; $5634: $FF
    ld h, a                                       ; $5635: $67
    ld a, a                                       ; $5636: $7F
    sub c                                         ; $5637: $91
    rst RST_38                                    ; $5638: $FF
    inc c                                         ; $5639: $0C
    rst RST_38                                    ; $563A: $FF
    ld hl, sp-$06                                 ; $563B: $F8 $FA
    dec b                                         ; $563D: $05
    rrca                                          ; $563E: $0F
    nop                                           ; $563F: $00
    rst RST_38                                    ; $5640: $FF
    ld l, h                                       ; $5641: $6C
    db $FC                                        ; $5642: $FC
    ld l, e                                       ; $5643: $6B
    rst RST_38                                    ; $5644: $FF
    ret c                                         ; $5645: $D8

    cp $04                                        ; $5646: $FE $04
    rst RST_38                                    ; $5648: $FF
    or $FF                                        ; $5649: $F6 $FF
    ei                                            ; $564B: $FB
    rst RST_38                                    ; $564C: $FF
    ei                                            ; $564D: $FB
    rst RST_38                                    ; $564E: $FF
    db $FD                                        ; $564F: $FD
    rst RST_38                                    ; $5650: $FF
    cp l                                          ; $5651: $BD
    rst RST_38                                    ; $5652: $FF
    cp l                                          ; $5653: $BD
    rst RST_38                                    ; $5654: $FF
    db $DB                                        ; $5655: $DB
    rst RST_38                                    ; $5656: $FF
    pop hl                                        ; $5657: $E1
    ld sp, hl                                     ; $5658: $F9

jr_015_5659:
    ld [hl], b                                    ; $5659: $70
    db $FC                                        ; $565A: $FC
    jr c, jr_015_5659                             ; $565B: $38 $FC

    ld a, b                                       ; $565D: $78
    ld hl, sp+$00                                 ; $565E: $F8 $00
    ld e, $0C                                     ; $5660: $1E $0C
    sbc [hl]                                      ; $5662: $9E
    inc c                                         ; $5663: $0C
    ld e, $0C                                     ; $5664: $1E $0C
    ld a, $1C                                     ; $5666: $3E $1C
    ld a, $1C                                     ; $5668: $3E $1C
    cp $3C                                        ; $566A: $FE $3C
    cp $FC                                        ; $566C: $FE $FC
    cp $FC                                        ; $566E: $FE $FC
    db $FC                                        ; $5670: $FC
    ld hl, sp-$04                                 ; $5671: $F8 $FC
    ld hl, sp-$08                                 ; $5673: $F8 $F8
    ldh a, [$FFF0]                                ; $5675: $F0 $F0
    ret nz                                        ; $5677: $C0

    ret nz                                        ; $5678: $C0

    nop                                           ; $5679: $00
    nop                                           ; $567A: $00
    nop                                           ; $567B: $00
    nop                                           ; $567C: $00
    nop                                           ; $567D: $00
    nop                                           ; $567E: $00
    nop                                           ; $567F: $00
    nop                                           ; $5680: $00
    nop                                           ; $5681: $00
    nop                                           ; $5682: $00
    nop                                           ; $5683: $00
    ld bc, $0100                                  ; $5684: $01 $00 $01
    nop                                           ; $5687: $00
    ld h, d                                       ; $5688: $62
    ld bc, $43BC                                  ; $5689: $01 $BC $43
    rst RST_38                                    ; $568C: $FF
    inc e                                         ; $568D: $1C
    ld a, a                                       ; $568E: $7F
    ld a, $3E                                     ; $568F: $3E $3E
    add hl, de                                    ; $5691: $19
    rra                                           ; $5692: $1F
    nop                                           ; $5693: $00
    rrca                                          ; $5694: $0F
    rlca                                          ; $5695: $07
    rlca                                          ; $5696: $07
    nop                                           ; $5697: $00
    ld bc, $0300                                  ; $5698: $01 $00 $03
    ld bc, $001F                                  ; $569B: $01 $1F $00
    rst RST_38                                    ; $569E: $FF
    rra                                           ; $569F: $1F
    nop                                           ; $56A0: $00
    nop                                           ; $56A1: $00
    call c, $FC00                                 ; $56A2: $DC $00 $FC
    ret c                                         ; $56A5: $D8

    db $FC                                        ; $56A6: $FC
    ld e, b                                       ; $56A7: $58
    ld hl, sp+$30                                 ; $56A8: $F8 $30
    ld hl, sp+$60                                 ; $56AA: $F8 $60
    db $FC                                        ; $56AC: $FC
    ld [hl], b                                    ; $56AD: $70
    rst RST_38                                    ; $56AE: $FF
    inc a                                         ; $56AF: $3C
    ld a, a                                       ; $56B0: $7F
    cp [hl]                                       ; $56B1: $BE
    rst RST_38                                    ; $56B2: $FF
    ld a, a                                       ; $56B3: $7F
    rst RST_38                                    ; $56B4: $FF
    adc a                                         ; $56B5: $8F
    db $E3                                        ; $56B6: $E3
    rra                                           ; $56B7: $1F
    pop af                                        ; $56B8: $F1
    xor $F9                                       ; $56B9: $EE $F9
    or $F8                                        ; $56BB: $F6 $F8
    rra                                           ; $56BD: $1F
    db $FC                                        ; $56BE: $FC
    rst RST_28                                    ; $56BF: $EF
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
    ldh [rP1], a                                  ; $56CE: $E0 $00
    ld hl, sp-$20                                 ; $56D0: $F8 $E0
    db $FC                                        ; $56D2: $FC
    ld hl, sp-$02                                 ; $56D3: $F8 $FE
    adc h                                         ; $56D5: $8C
    cp a                                          ; $56D6: $BF
    ld [hl], b                                    ; $56D7: $70
    ld a, a                                       ; $56D8: $7F
    add $5F                                       ; $56D9: $C6 $5F
    or [hl]                                       ; $56DB: $B6
    rst RST_18                                    ; $56DC: $DF
    ld [hl], $7F                                  ; $56DD: $36 $7F
    add [hl]                                      ; $56DF: $86
    nop                                           ; $56E0: $00
    nop                                           ; $56E1: $00
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
    pop af                                        ; $56F8: $F1
    nop                                           ; $56F9: $00
    ret                                           ; $56FA: $C9


    or b                                          ; $56FB: $B0
    pop af                                        ; $56FC: $F1
    ret nz                                        ; $56FD: $C0

    pop hl                                        ; $56FE: $E1
    ret nz                                        ; $56FF: $C0

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
    nop                                           ; $5712: $00
    nop                                           ; $5713: $00
    nop                                           ; $5714: $00
    nop                                           ; $5715: $00
    add b                                         ; $5716: $80
    nop                                           ; $5717: $00
    ret nz                                        ; $5718: $C0

    add b                                         ; $5719: $80
    ret nz                                        ; $571A: $C0

    add b                                         ; $571B: $80
    ret nz                                        ; $571C: $C0

    add b                                         ; $571D: $80
    ldh [$FFC0], a                                ; $571E: $E0 $C0
    rst RST_20                                    ; $5720: $E7
    ld a, [hl]                                    ; $5721: $7E
    rst RST_20                                    ; $5722: $E7
    ld a, $67                                     ; $5723: $3E $67
    ld a, $77                                     ; $5725: $3E $77
    ld a, $77                                     ; $5727: $3E $77
    ld e, $77                                     ; $5729: $1E $77
    ld e, $3F                                     ; $572B: $1E $3F
    ld c, $3B                                     ; $572D: $0E $3B
    ld c, $1F                                     ; $572F: $0E $1F
    ld b, $1F                                     ; $5731: $06 $1F
    ld b, $0F                                     ; $5733: $06 $0F
    ld [bc], a                                    ; $5735: $02
    rrca                                          ; $5736: $0F
    ld [bc], a                                    ; $5737: $02
    rlca                                          ; $5738: $07
    nop                                           ; $5739: $00
    inc bc                                        ; $573A: $03
    nop                                           ; $573B: $00
    ld bc, $0000                                  ; $573C: $01 $00 $00
    nop                                           ; $573F: $00
    jr nc, jr_015_5761                            ; $5740: $30 $1F

    jr nc, jr_015_5763                            ; $5742: $30 $1F

    ld h, b                                       ; $5744: $60
    ccf                                           ; $5745: $3F
    ld h, b                                       ; $5746: $60
    ccf                                           ; $5747: $3F
    ld h, b                                       ; $5748: $60
    ccf                                           ; $5749: $3F
    ldh [$FF7F], a                                ; $574A: $E0 $7F
    ret nz                                        ; $574C: $C0

    ld a, a                                       ; $574D: $7F
    ret nz                                        ; $574E: $C0

    ld a, a                                       ; $574F: $7F
    ret nz                                        ; $5750: $C0

    ld a, a                                       ; $5751: $7F
    ret nz                                        ; $5752: $C0

    ld a, a                                       ; $5753: $7F
    ret nz                                        ; $5754: $C0

    ld a, a                                       ; $5755: $7F
    call nz, $C67F                                ; $5756: $C4 $7F $C6

jr_015_5759:
    ld a, a                                       ; $5759: $7F
    rst RST_00                                    ; $575A: $C7

jr_015_575B:
    ld a, a                                       ; $575B: $7F
    rst RST_00                                    ; $575C: $C7
    ld a, a                                       ; $575D: $7F
    rst RST_20                                    ; $575E: $E7
    ld a, a                                       ; $575F: $7F
    rst RST_38                                    ; $5760: $FF

jr_015_5761:
    ldh [rIE], a                                  ; $5761: $E0 $FF

jr_015_5763:
    ld h, b                                       ; $5763: $60
    or $60                                        ; $5764: $F6 $60
    ldh a, [c]                                    ; $5766: $F2
    jr nz, jr_015_5759                            ; $5767: $20 $F0

    jr nz, jr_015_575B                            ; $5769: $20 $F0

    nop                                           ; $576B: $00
    ldh a, [rP1]                                  ; $576C: $F0 $00
    or b                                          ; $576E: $B0
    nop                                           ; $576F: $00
    sub b                                         ; $5770: $90
    nop                                           ; $5771: $00
    add b                                         ; $5772: $80
    nop                                           ; $5773: $00
    add b                                         ; $5774: $80
    nop                                           ; $5775: $00
    add b                                         ; $5776: $80
    nop                                           ; $5777: $00
    add b                                         ; $5778: $80
    nop                                           ; $5779: $00
    add b                                         ; $577A: $80
    nop                                           ; $577B: $00
    add b                                         ; $577C: $80
    nop                                           ; $577D: $00
    add b                                         ; $577E: $80
    nop                                           ; $577F: $00
    nop                                           ; $5780: $00
    rst RST_38                                    ; $5781: $FF
    nop                                           ; $5782: $00
    rst RST_38                                    ; $5783: $FF
    nop                                           ; $5784: $00
    rst RST_38                                    ; $5785: $FF
    nop                                           ; $5786: $00
    rst RST_38                                    ; $5787: $FF
    nop                                           ; $5788: $00
    rst RST_38                                    ; $5789: $FF
    nop                                           ; $578A: $00
    rst RST_38                                    ; $578B: $FF
    nop                                           ; $578C: $00
    rst RST_38                                    ; $578D: $FF
    nop                                           ; $578E: $00
    rst RST_38                                    ; $578F: $FF
    jr nz, @+$01                                  ; $5790: $20 $FF

    ld sp, $31FF                                  ; $5792: $31 $FF $31
    rst RST_38                                    ; $5795: $FF
    dec sp                                        ; $5796: $3B
    rst RST_38                                    ; $5797: $FF
    dec sp                                        ; $5798: $3B
    cp $3F                                        ; $5799: $FE $3F
    cp $BF                                        ; $579B: $FE $BF
    db $EC                                        ; $579D: $EC

jr_015_579E:
    rst RST_38                                    ; $579E: $FF
    db $E4                                        ; $579F: $E4
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
    ld bc, $0300                                  ; $57B2: $01 $00 $03
    ld bc, $0306                                  ; $57B5: $01 $06 $03
    ld c, $07                                     ; $57B8: $0E $07
    inc c                                         ; $57BA: $0C
    rlca                                          ; $57BB: $07
    jr @+$11                                      ; $57BC: $18 $0F

    jr c, jr_015_57DF                             ; $57BE: $38 $1F

    nop                                           ; $57C0: $00
    nop                                           ; $57C1: $00
    nop                                           ; $57C2: $00
    nop                                           ; $57C3: $00
    nop                                           ; $57C4: $00
    nop                                           ; $57C5: $00
    nop                                           ; $57C6: $00
    nop                                           ; $57C7: $00
    inc c                                         ; $57C8: $0C
    nop                                           ; $57C9: $00
    inc e                                         ; $57CA: $1C
    ld [$183C], sp                                ; $57CB: $08 $3C $18
    ld l, h                                       ; $57CE: $6C
    jr c, jr_015_579E                             ; $57CF: $38 $CD

    ld a, b                                       ; $57D1: $78
    adc a                                         ; $57D2: $8F
    ld hl, sp+$0F                                 ; $57D3: $F8 $0F
    ld sp, hl                                     ; $57D5: $F9
    ld c, $FB                                     ; $57D6: $0E $FB
    inc c                                         ; $57D8: $0C
    rst RST_38                                    ; $57D9: $FF
    ld [$00FF], sp                                ; $57DA: $08 $FF $00
    rst RST_38                                    ; $57DD: $FF
    nop                                           ; $57DE: $00

jr_015_57DF:
    rst RST_38                                    ; $57DF: $FF
    ld b, $FC                                     ; $57E0: $06 $FC
    ld b, [hl]                                    ; $57E2: $46
    db $FC                                        ; $57E3: $FC
    ld b, [hl]                                    ; $57E4: $46
    db $FC                                        ; $57E5: $FC
    ldh [c], a                                    ; $57E6: $E2
    db $FC                                        ; $57E7: $FC
    db $E3                                        ; $57E8: $E3
    cp $F1                                        ; $57E9: $FE $F1
    rst RST_38                                    ; $57EB: $FF
    pop af                                        ; $57EC: $F1
    ld a, a                                       ; $57ED: $7F
    ld sp, hl                                     ; $57EE: $F9
    ld a, [hl]                                    ; $57EF: $7E
    rst RST_38                                    ; $57F0: $FF
    inc a                                         ; $57F1: $3C
    cp $39                                        ; $57F2: $FE $39
    ei                                            ; $57F4: $FB
    ld d, $BE                                     ; $57F5: $16 $BE
    dec b                                         ; $57F7: $05
    rra                                           ; $57F8: $1F
    ld bc, $050B                                  ; $57F9: $01 $0B $05
    rra                                           ; $57FC: $1F
    dec b                                         ; $57FD: $05
    scf                                           ; $57FE: $37
    add hl, bc                                    ; $57FF: $09
    ld [hl], a                                    ; $5800: $77
    ld a, [hl+]                                   ; $5801: $2A
    ld a, a                                       ; $5802: $7F
    daa                                           ; $5803: $27
    ld a, a                                       ; $5804: $7F
    scf                                           ; $5805: $37
    ld a, a                                       ; $5806: $7F
    scf                                           ; $5807: $37
    ccf                                           ; $5808: $3F
    dec de                                        ; $5809: $1B
    ccf                                           ; $580A: $3F
    dec de                                        ; $580B: $1B
    rra                                           ; $580C: $1F
    dec c                                         ; $580D: $0D
    rrca                                          ; $580E: $0F
    ld b, $07                                     ; $580F: $06 $07
    inc bc                                        ; $5811: $03

jr_015_5812:
    rrca                                          ; $5812: $0F
    ld b, $1E                                     ; $5813: $06 $1E
    inc c                                         ; $5815: $0C
    inc a                                         ; $5816: $3C
    jr jr_015_5812                                ; $5817: $18 $F9

    jr nc, @+$79                                  ; $5819: $30 $77

    and c                                         ; $581B: $A1
    db $EB                                        ; $581C: $EB
    dec b                                         ; $581D: $05
    rrca                                          ; $581E: $0F
    nop                                           ; $581F: $00
    cp $31                                        ; $5820: $FE $31
    rst RST_38                                    ; $5822: $FF
    db $FC                                        ; $5823: $FC
    rst RST_38                                    ; $5824: $FF
    db $FD                                        ; $5825: $FD
    rst RST_38                                    ; $5826: $FF

jr_015_5827:
    cp $FF                                        ; $5827: $FE $FF
    cp $FF                                        ; $5829: $FE $FF
    sbc $FF                                       ; $582B: $DE $FF
    db $ED                                        ; $582D: $ED
    rst RST_38                                    ; $582E: $FF
    ld [hl], b                                    ; $582F: $70
    ld hl, sp+$30                                 ; $5830: $F8 $30
    inc a                                         ; $5832: $3C
    jr jr_015_5871                                ; $5833: $18 $3C

    jr @+$7E                                      ; $5835: $18 $7C

    jr c, @-$06                                   ; $5837: $38 $F8

    ld h, b                                       ; $5839: $60
    ldh [$FFC0], a                                ; $583A: $E0 $C0
    ret nz                                        ; $583C: $C0

    nop                                           ; $583D: $00
    nop                                           ; $583E: $00
    nop                                           ; $583F: $00
    ld a, a                                       ; $5840: $7F
    ld c, $FF                                     ; $5841: $0E $FF
    ld a, a                                       ; $5843: $7F
    ld a, a                                       ; $5844: $7F
    rrca                                          ; $5845: $0F
    rra                                           ; $5846: $1F
    ld [bc], a                                    ; $5847: $02
    cpl                                           ; $5848: $2F
    ld e, $DE                                     ; $5849: $1E $DE
    inc a                                         ; $584B: $3C
    cp [hl]                                       ; $584C: $BE
    ld a, h                                       ; $584D: $7C
    ccf                                           ; $584E: $3F
    cp $FF                                        ; $584F: $FE $FF
    ccf                                           ; $5851: $3F
    rst RST_38                                    ; $5852: $FF
    db $DD                                        ; $5853: $DD
    rst RST_38                                    ; $5854: $FF
    nop                                           ; $5855: $00
    jr nc, jr_015_5827                            ; $5856: $30 $CF

    rst RST_38                                    ; $5858: $FF
    rst RST_28                                    ; $5859: $EF
    rst RST_38                                    ; $585A: $FF
    adc [hl]                                      ; $585B: $8E
    cp $BD                                        ; $585C: $FE $BD
    rst RST_38                                    ; $585E: $FF
    adc $C0                                       ; $585F: $CE $C0
    add b                                         ; $5861: $80
    ret nz                                        ; $5862: $C0

    add b                                         ; $5863: $80
    ldh [rLCDC], a                                ; $5864: $E0 $40
    ldh [rLCDC], a                                ; $5866: $E0 $40
    ret nz                                        ; $5868: $C0

    nop                                           ; $5869: $00
    ld hl, $C3C0                                  ; $586A: $21 $C0 $C3
    ld bc, $C327                                  ; $586D: $01 $27 $C3
    rst RST_08                                    ; $5870: $CF

jr_015_5871:
    rlca                                          ; $5871: $07
    rst RST_38                                    ; $5872: $FF
    rst RST_08                                    ; $5873: $CF
    rst RST_38                                    ; $5874: $FF
    cp $FF                                        ; $5875: $FE $FF
    cp $FE                                        ; $5877: $FE $FE
    db $FC                                        ; $5879: $FC
    cp $FC                                        ; $587A: $FE $FC
    db $FC                                        ; $587C: $FC
    ldh a, [$FFF0]                                ; $587D: $F0 $F0
    nop                                           ; $587F: $00
    nop                                           ; $5880: $00
    nop                                           ; $5881: $00
    jr nz, jr_015_5884                            ; $5882: $20 $00

jr_015_5884:
    ld h, b                                       ; $5884: $60
    nop                                           ; $5885: $00
    ldh [rP1], a                                  ; $5886: $E0 $00
    db $E4                                        ; $5888: $E4
    ld b, b                                       ; $5889: $40
    db $EC                                        ; $588A: $EC
    ret nz                                        ; $588B: $C0

    ld a, h                                       ; $588C: $7C
    ret z                                         ; $588D: $C8

    ld a, h                                       ; $588E: $7C
    ret c                                         ; $588F: $D8

    inc l                                         ; $5890: $2C
    ld hl, sp+$0C                                 ; $5891: $F8 $0C
    ld hl, sp+$0C                                 ; $5893: $F8 $0C
    ld hl, sp+$0C                                 ; $5895: $F8 $0C
    ld hl, sp+$0C                                 ; $5897: $F8 $0C
    ld hl, sp+$0C                                 ; $5899: $F8 $0C
    ld hl, sp+$0C                                 ; $589B: $F8 $0C
    ld hl, sp+$0E                                 ; $589D: $F8 $0E
    db $FC                                        ; $589F: $FC
    nop                                           ; $58A0: $00
    nop                                           ; $58A1: $00
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
    jr jr_015_58B4                                ; $58B2: $18 $00

jr_015_58B4:
    inc [hl]                                      ; $58B4: $34
    ld [$207C], sp                                ; $58B5: $08 $7C $20
    ld a, h                                       ; $58B8: $7C
    jr c, jr_015_58F9                             ; $58B9: $38 $3E

    inc e                                         ; $58BB: $1C
    rra                                           ; $58BC: $1F
    ld c, $1E                                     ; $58BD: $0E $1E
    dec c                                         ; $58BF: $0D
    nop                                           ; $58C0: $00
    nop                                           ; $58C1: $00
    nop                                           ; $58C2: $00
    nop                                           ; $58C3: $00
    nop                                           ; $58C4: $00
    nop                                           ; $58C5: $00
    nop                                           ; $58C6: $00
    nop                                           ; $58C7: $00
    add b                                         ; $58C8: $80
    nop                                           ; $58C9: $00
    ld b, b                                       ; $58CA: $40
    add b                                         ; $58CB: $80
    ld b, b                                       ; $58CC: $40
    add b                                         ; $58CD: $80
    ldh a, [rP1]                                  ; $58CE: $F0 $00
    ld hl, sp-$50                                 ; $58D0: $F8 $B0
    ld hl, sp-$30                                 ; $58D2: $F8 $D0
    ldh a, [$FFE0]                                ; $58D4: $F0 $E0
    ldh a, [$FFE0]                                ; $58D6: $F0 $E0
    ldh [rP1], a                                  ; $58D8: $E0 $00
    nop                                           ; $58DA: $00
    nop                                           ; $58DB: $00
    nop                                           ; $58DC: $00
    nop                                           ; $58DD: $00
    add b                                         ; $58DE: $80
    nop                                           ; $58DF: $00
    nop                                           ; $58E0: $00
    nop                                           ; $58E1: $00
    nop                                           ; $58E2: $00
    nop                                           ; $58E3: $00
    nop                                           ; $58E4: $00
    nop                                           ; $58E5: $00
    jr c, jr_015_58E8                             ; $58E6: $38 $00

jr_015_58E8:
    ld hl, sp+$30                                 ; $58E8: $F8 $30
    ldh a, [$FFE0]                                ; $58EA: $F0 $E0
    ldh [$FFC0], a                                ; $58EC: $E0 $C0
    ret nz                                        ; $58EE: $C0

    add b                                         ; $58EF: $80
    add b                                         ; $58F0: $80
    nop                                           ; $58F1: $00
    add b                                         ; $58F2: $80
    nop                                           ; $58F3: $00
    nop                                           ; $58F4: $00
    nop                                           ; $58F5: $00
    nop                                           ; $58F6: $00
    nop                                           ; $58F7: $00
    nop                                           ; $58F8: $00

jr_015_58F9:
    nop                                           ; $58F9: $00
    nop                                           ; $58FA: $00
    nop                                           ; $58FB: $00
    nop                                           ; $58FC: $00
    nop                                           ; $58FD: $00
    nop                                           ; $58FE: $00
    nop                                           ; $58FF: $00
    dec de                                        ; $5900: $1B
    inc b                                         ; $5901: $04
    dec sp                                        ; $5902: $3B
    dec d                                         ; $5903: $15
    ccf                                           ; $5904: $3F
    inc de                                        ; $5905: $13
    ccf                                           ; $5906: $3F
    dec de                                        ; $5907: $1B
    ccf                                           ; $5908: $3F
    dec de                                        ; $5909: $1B
    rra                                           ; $590A: $1F
    dec c                                         ; $590B: $0D
    rra                                           ; $590C: $1F
    dec c                                         ; $590D: $0D
    rrca                                          ; $590E: $0F
    ld b, $07                                     ; $590F: $06 $07
    inc bc                                        ; $5911: $03
    inc bc                                        ; $5912: $03
    ld bc, $0307                                  ; $5913: $01 $07 $03
    rra                                           ; $5916: $1F
    ld b, $7E                                     ; $5917: $06 $7E
    inc e                                         ; $5919: $1C
    cp a                                          ; $591A: $BF
    ld d, b                                       ; $591B: $50
    push af                                       ; $591C: $F5
    ld [bc], a                                    ; $591D: $02
    rlca                                          ; $591E: $07
    nop                                           ; $591F: $00
    rst RST_38                                    ; $5920: $FF
    rst RST_20                                    ; $5921: $E7
    rst RST_38                                    ; $5922: $FF
    jr @+$01                                      ; $5923: $18 $FF

    cp $FF                                        ; $5925: $FE $FF
    cp $FF                                        ; $5927: $FE $FF
    rst RST_38                                    ; $5929: $FF
    rst RST_38                                    ; $592A: $FF
    rst RST_38                                    ; $592B: $FF
    rst RST_38                                    ; $592C: $FF
    rst RST_28                                    ; $592D: $EF
    rst RST_38                                    ; $592E: $FF

jr_015_592F:
    or $FF                                        ; $592F: $F6 $FF
    jr c, jr_015_592F                             ; $5931: $38 $FC

    sbc b                                         ; $5933: $98
    sbc [hl]                                      ; $5934: $9E
    inc c                                         ; $5935: $0C
    ld e, $0C                                     ; $5936: $1E $0C
    ld a, [hl]                                    ; $5938: $7E
    inc e                                         ; $5939: $1C
    db $FC                                        ; $593A: $FC
    ld [hl], b                                    ; $593B: $70
    ldh a, [$FFC0]                                ; $593C: $F0 $C0
    ret nz                                        ; $593E: $C0

    nop                                           ; $593F: $00
    rst RST_38                                    ; $5940: $FF
    ld a, [hl]                                    ; $5941: $7E
    rst RST_38                                    ; $5942: $FF
    ld a, [hl]                                    ; $5943: $7E
    rst RST_38                                    ; $5944: $FF
    ld a, $BE                                     ; $5945: $3E $BE
    ld b, b                                       ; $5947: $40
    xor a                                         ; $5948: $AF
    ld d, [hl]                                    ; $5949: $56
    ld d, a                                       ; $594A: $57
    inc bc                                        ; $594B: $03
    inc bc                                        ; $594C: $03
    ld bc, $0001                                  ; $594D: $01 $01 $00
    nop                                           ; $5950: $00
    nop                                           ; $5951: $00
    ld bc, $0300                                  ; $5952: $01 $00 $03
    nop                                           ; $5955: $00
    dec b                                         ; $5956: $05
    inc bc                                        ; $5957: $03
    rlca                                          ; $5958: $07
    ld [bc], a                                    ; $5959: $02
    rlca                                          ; $595A: $07
    nop                                           ; $595B: $00
    dec b                                         ; $595C: $05
    ld [bc], a                                    ; $595D: $02
    rrca                                          ; $595E: $0F
    ld [bc], a                                    ; $595F: $02
    rrca                                          ; $5960: $0F

jr_015_5961:
    ld b, $3F                                     ; $5961: $06 $3F
    rlca                                          ; $5963: $07
    ld a, a                                       ; $5964: $7F
    ccf                                           ; $5965: $3F
    ccf                                           ; $5966: $3F
    rlca                                          ; $5967: $07
    rrca                                          ; $5968: $0F
    ld bc, $0F97                                  ; $5969: $01 $97 $0F
    rst RST_28                                    ; $596C: $EF
    sbc [hl]                                      ; $596D: $9E
    rst RST_18                                    ; $596E: $DF
    cp [hl]                                       ; $596F: $BE
    sbc a                                         ; $5970: $9F
    ld a, a                                       ; $5971: $7F
    rst RST_38                                    ; $5972: $FF
    rra                                           ; $5973: $1F
    ld a, a                                       ; $5974: $7F
    xor $FF                                       ; $5975: $EE $FF
    nop                                           ; $5977: $00
    jr jr_015_5961                                ; $5978: $18 $E7

    rst RST_38                                    ; $597A: $FF
    rst RST_30                                    ; $597B: $F7
    rst RST_38                                    ; $597C: $FF
    rst RST_00                                    ; $597D: $C7
    rst RST_38                                    ; $597E: $FF
    sbc $00                                       ; $597F: $DE $00
    nop                                           ; $5981: $00
    nop                                           ; $5982: $00
    nop                                           ; $5983: $00
    nop                                           ; $5984: $00
    nop                                           ; $5985: $00
    nop                                           ; $5986: $00
    nop                                           ; $5987: $00
    nop                                           ; $5988: $00
    nop                                           ; $5989: $00
    nop                                           ; $598A: $00
    nop                                           ; $598B: $00
    nop                                           ; $598C: $00
    nop                                           ; $598D: $00
    nop                                           ; $598E: $00
    nop                                           ; $598F: $00
    ld [hl], $00                                  ; $5990: $36 $00
    ld c, c                                       ; $5992: $49
    ld [hl], $FF                                  ; $5993: $36 $FF
    ld [hl], $FF                                  ; $5995: $36 $FF
    jr nc, @-$01                                  ; $5997: $30 $FD

    ld b, a                                       ; $5999: $47
    db $FD                                        ; $599A: $FD
    scf                                           ; $599B: $37
    rst RST_38                                    ; $599C: $FF
    ld b, b                                       ; $599D: $40
    rst RST_38                                    ; $599E: $FF
    ld a, [hl]                                    ; $599F: $7E
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

jr_015_59AE:
    nop                                           ; $59AE: $00
    nop                                           ; $59AF: $00
    nop                                           ; $59B0: $00
    nop                                           ; $59B1: $00
    nop                                           ; $59B2: $00
    nop                                           ; $59B3: $00
    inc c                                         ; $59B4: $0C
    nop                                           ; $59B5: $00
    ld a, [de]                                    ; $59B6: $1A
    inc b                                         ; $59B7: $04
    cp [hl]                                       ; $59B8: $BE
    db $10                                        ; $59B9: $10
    cp [hl]                                       ; $59BA: $BE
    inc e                                         ; $59BB: $1C
    rra                                           ; $59BC: $1F
    ld c, $0F                                     ; $59BD: $0E $0F
    rlca                                          ; $59BF: $07
    ldh [$FFC0], a                                ; $59C0: $E0 $C0
    ldh [rLCDC], a                                ; $59C2: $E0 $40
    ld [hl], b                                    ; $59C4: $70
    and b                                         ; $59C5: $A0
    ldh a, [$FFA0]                                ; $59C6: $F0 $A0
    ldh [rP1], a                                  ; $59C8: $E0 $00
    db $10                                        ; $59CA: $10
    ldh [$FFE1], a                                ; $59CB: $E0 $E1
    nop                                           ; $59CD: $00
    inc de                                        ; $59CE: $13
    pop hl                                        ; $59CF: $E1
    rst RST_20                                    ; $59D0: $E7
    inc bc                                        ; $59D1: $03
    rst RST_38                                    ; $59D2: $FF
    rst RST_20                                    ; $59D3: $E7
    rst RST_38                                    ; $59D4: $FF
    ld a, a                                       ; $59D5: $7F
    rst RST_38                                    ; $59D6: $FF
    ld a, a                                       ; $59D7: $7F
    rst RST_38                                    ; $59D8: $FF
    ld a, [hl]                                    ; $59D9: $7E
    rst RST_38                                    ; $59DA: $FF
    cp $FE                                        ; $59DB: $FE $FE
    ld a, b                                       ; $59DD: $78
    ld a, b                                       ; $59DE: $78
    nop                                           ; $59DF: $00
    nop                                           ; $59E0: $00
    nop                                           ; $59E1: $00
    nop                                           ; $59E2: $00
    nop                                           ; $59E3: $00
    nop                                           ; $59E4: $00
    nop                                           ; $59E5: $00
    nop                                           ; $59E6: $00
    nop                                           ; $59E7: $00
    ld b, b                                       ; $59E8: $40
    nop                                           ; $59E9: $00
    and b                                         ; $59EA: $A0
    ld b, b                                       ; $59EB: $40
    jr nz, jr_015_59AE                            ; $59EC: $20 $C0

    ld hl, sp+$00                                 ; $59EE: $F8 $00
    db $FC                                        ; $59F0: $FC
    ret c                                         ; $59F1: $D8

    db $FC                                        ; $59F2: $FC
    add sp, -$08                                  ; $59F3: $E8 $F8
    ld [hl], b                                    ; $59F5: $70
    ld hl, sp+$70                                 ; $59F6: $F8 $70
    ld [hl], b                                    ; $59F8: $70
    nop                                           ; $59F9: $00
    nop                                           ; $59FA: $00
    nop                                           ; $59FB: $00
    add b                                         ; $59FC: $80

jr_015_59FD:
    nop                                           ; $59FD: $00
    ret nz                                        ; $59FE: $C0

    add b                                         ; $59FF: $80
    inc e                                         ; $5A00: $1C
    nop                                           ; $5A01: $00
    ld a, h                                       ; $5A02: $7C
    jr jr_015_59FD                                ; $5A03: $18 $F8

    ld [hl], b                                    ; $5A05: $70
    ldh a, [$FFE0]                                ; $5A06: $F0 $E0
    ldh [$FFC0], a                                ; $5A08: $E0 $C0
    ret nz                                        ; $5A0A: $C0

    add b                                         ; $5A0B: $80
    ret nz                                        ; $5A0C: $C0

    add b                                         ; $5A0D: $80
    add b                                         ; $5A0E: $80
    nop                                           ; $5A0F: $00
    add b                                         ; $5A10: $80
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
    ld c, $04                                     ; $5A20: $0E $04
    rrca                                          ; $5A22: $0F
    ld b, $0F                                     ; $5A23: $06 $0F
    ld b, $8F                                     ; $5A25: $06 $8F
    ld b, $8F                                     ; $5A27: $06 $8F
    ld b, $CF                                     ; $5A29: $06 $CF
    add [hl]                                      ; $5A2B: $86
    rst RST_18                                    ; $5A2C: $DF
    adc [hl]                                      ; $5A2D: $8E
    rst RST_38                                    ; $5A2E: $FF
    adc $FF                                       ; $5A2F: $CE $FF
    cp $FE                                        ; $5A31: $FE $FE
    db $FC                                        ; $5A33: $FC
    cp $FC                                        ; $5A34: $FE $FC
    db $FC                                        ; $5A36: $FC
    ld hl, sp-$08                                 ; $5A37: $F8 $F8
    ldh [$FFE0], a                                ; $5A39: $E0 $E0
    nop                                           ; $5A3B: $00
    nop                                           ; $5A3C: $00
    nop                                           ; $5A3D: $00
    nop                                           ; $5A3E: $00
    nop                                           ; $5A3F: $00
    cp $FC                                        ; $5A40: $FE $FC
    rst RST_38                                    ; $5A42: $FF
    cp $FF                                        ; $5A43: $FE $FF
    cp $7F                                        ; $5A45: $FE $7F
    rst RST_38                                    ; $5A47: $FF
    ld a, a                                       ; $5A48: $7F
    di                                            ; $5A49: $F3
    rst RST_38                                    ; $5A4A: $FF
    db $FD                                        ; $5A4B: $FD
    rst RST_38                                    ; $5A4C: $FF
    cp $FF                                        ; $5A4D: $FE $FF
    cp $FF                                        ; $5A4F: $FE $FF
    cp $FF                                        ; $5A51: $FE $FF
    cp $FF                                        ; $5A53: $FE $FF
    sbc l                                         ; $5A55: $9D
    rst RST_38                                    ; $5A56: $FF
    pop hl                                        ; $5A57: $E1
    rst RST_38                                    ; $5A58: $FF
    ld a, h                                       ; $5A59: $7C
    cp $1C                                        ; $5A5A: $FE $1C
    db $FC                                        ; $5A5C: $FC
    ldh a, [$FFF0]                                ; $5A5D: $F0 $F0
    nop                                           ; $5A5F: $00
    rst RST_30                                    ; $5A60: $F7
    ld a, [bc]                                    ; $5A61: $0A
    rrca                                          ; $5A62: $0F
    ldh a, [c]                                    ; $5A63: $F2
    rst RST_38                                    ; $5A64: $FF
    push af                                       ; $5A65: $F5
    cp $E1                                        ; $5A66: $FE $E1
    ldh [c], a                                    ; $5A68: $E2
    db $DD                                        ; $5A69: $DD
    rst RST_38                                    ; $5A6A: $FF
    ldh [$FFE3], a                                ; $5A6B: $E0 $E3
    dec e                                         ; $5A6D: $1D
    rra                                           ; $5A6E: $1F
    inc bc                                        ; $5A6F: $03
    rrca                                          ; $5A70: $0F
    rlca                                          ; $5A71: $07
    rrca                                          ; $5A72: $0F
    rlca                                          ; $5A73: $07
    rrca                                          ; $5A74: $0F
    rlca                                          ; $5A75: $07
    rlca                                          ; $5A76: $07
    inc bc                                        ; $5A77: $03
    rrca                                          ; $5A78: $0F
    nop                                           ; $5A79: $00
    rra                                           ; $5A7A: $1F
    nop                                           ; $5A7B: $00
    dec de                                        ; $5A7C: $1B
    dec b                                         ; $5A7D: $05
    rrca                                          ; $5A7E: $0F
    nop                                           ; $5A7F: $00
    inc bc                                        ; $5A80: $03
    ld bc, $0103                                  ; $5A81: $01 $03 $01
    rrca                                          ; $5A84: $0F
    nop                                           ; $5A85: $00
    rra                                           ; $5A86: $1F
    rrca                                          ; $5A87: $0F
    dec e                                         ; $5A88: $1D
    ld a, [bc]                                    ; $5A89: $0A
    rst RST_38                                    ; $5A8A: $FF
    jr jr_015_5B0C                                ; $5A8B: $18 $7F

    cp a                                          ; $5A8D: $BF
    rst RST_38                                    ; $5A8E: $FF
    ld sp, $0DF7                                  ; $5A8F: $31 $F7 $0D
    cp a                                          ; $5A92: $BF
    ld h, b                                       ; $5A93: $60
    db $E3                                        ; $5A94: $E3
    ld e, h                                       ; $5A95: $5C
    ld a, a                                       ; $5A96: $7F
    ld e, $BF                                     ; $5A97: $1E $BF
    ld e, b                                       ; $5A99: $58
    rst RST_38                                    ; $5A9A: $FF
    ld e, e                                       ; $5A9B: $5B
    ld a, a                                       ; $5A9C: $7F
    inc e                                         ; $5A9D: $1C
    dec a                                         ; $5A9E: $3D
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
    ld h, b                                       ; $5AAA: $60
    nop                                           ; $5AAB: $00
    ld hl, sp+$60                                 ; $5AAC: $F8 $60
    db $FC                                        ; $5AAE: $FC
    ld e, b                                       ; $5AAF: $58
    db $FC                                        ; $5AB0: $FC
    ld e, b                                       ; $5AB1: $58
    ld hl, sp+$30                                 ; $5AB2: $F8 $30
    ld hl, sp-$20                                 ; $5AB4: $F8 $E0
    ld a, a                                       ; $5AB6: $7F
    cp b                                          ; $5AB7: $B8
    rst RST_38                                    ; $5AB8: $FF
    ccf                                           ; $5AB9: $3F
    rst RST_38                                    ; $5ABA: $FF
    rst RST_38                                    ; $5ABB: $FF
    rst RST_38                                    ; $5ABC: $FF
    ld a, a                                       ; $5ABD: $7F
    ei                                            ; $5ABE: $FB
    ld b, [hl]                                    ; $5ABF: $46
    nop                                           ; $5AC0: $00
    nop                                           ; $5AC1: $00
    nop                                           ; $5AC2: $00
    nop                                           ; $5AC3: $00
    nop                                           ; $5AC4: $00
    nop                                           ; $5AC5: $00
    nop                                           ; $5AC6: $00
    nop                                           ; $5AC7: $00
    nop                                           ; $5AC8: $00
    nop                                           ; $5AC9: $00
    nop                                           ; $5ACA: $00
    nop                                           ; $5ACB: $00
    nop                                           ; $5ACC: $00
    nop                                           ; $5ACD: $00
    nop                                           ; $5ACE: $00
    nop                                           ; $5ACF: $00
    nop                                           ; $5AD0: $00
    nop                                           ; $5AD1: $00
    nop                                           ; $5AD2: $00
    nop                                           ; $5AD3: $00
    nop                                           ; $5AD4: $00
    nop                                           ; $5AD5: $00
    ret nz                                        ; $5AD6: $C0

    nop                                           ; $5AD7: $00
    ldh a, [$FFC0]                                ; $5AD8: $F0 $C0
    db $FC                                        ; $5ADA: $FC
    ldh a, [$FFFE]                                ; $5ADB: $F0 $FE
    cp h                                          ; $5ADD: $BC
    rst RST_38                                    ; $5ADE: $FF
    cp [hl]                                       ; $5ADF: $BE
    nop                                           ; $5AE0: $00
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

Jump_015_5AF7:
    nop                                           ; $5AF7: $00
    nop                                           ; $5AF8: $00
    nop                                           ; $5AF9: $00
    ret nz                                        ; $5AFA: $C0

    nop                                           ; $5AFB: $00
    ldh [rLCDC], a                                ; $5AFC: $E0 $40
    ldh [rLCDC], a                                ; $5AFE: $E0 $40
    nop                                           ; $5B00: $00
    nop                                           ; $5B01: $00
    nop                                           ; $5B02: $00
    nop                                           ; $5B03: $00
    nop                                           ; $5B04: $00
    nop                                           ; $5B05: $00
    nop                                           ; $5B06: $00
    nop                                           ; $5B07: $00
    nop                                           ; $5B08: $00
    nop                                           ; $5B09: $00
    nop                                           ; $5B0A: $00
    nop                                           ; $5B0B: $00

jr_015_5B0C:
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
    ld bc, $0100                                  ; $5B1C: $01 $00 $01
    nop                                           ; $5B1F: $00
    adc a                                         ; $5B20: $8F
    ld b, $0F                                     ; $5B21: $06 $0F
    ld b, $0F                                     ; $5B23: $06 $0F
    ld b, $0F                                     ; $5B25: $06 $0F
    ld b, $8F                                     ; $5B27: $06 $8F
    ld b, $DF                                     ; $5B29: $06 $DF
    adc [hl]                                      ; $5B2B: $8E
    rst RST_38                                    ; $5B2C: $FF
    adc $FF                                       ; $5B2D: $CE $FF
    cp $FE                                        ; $5B2F: $FE $FE
    db $FC                                        ; $5B31: $FC
    cp $FC                                        ; $5B32: $FE $FC
    db $FC                                        ; $5B34: $FC
    ld hl, sp-$08                                 ; $5B35: $F8 $F8
    ldh [$FFE0], a                                ; $5B37: $E0 $E0
    nop                                           ; $5B39: $00
    nop                                           ; $5B3A: $00
    nop                                           ; $5B3B: $00
    nop                                           ; $5B3C: $00
    nop                                           ; $5B3D: $00
    nop                                           ; $5B3E: $00
    nop                                           ; $5B3F: $00
    db $FC                                        ; $5B40: $FC
    ld l, e                                       ; $5B41: $6B
    rst RST_38                                    ; $5B42: $FF
    ld l, h                                       ; $5B43: $6C
    cp $6C                                        ; $5B44: $FE $6C
    rst RST_38                                    ; $5B46: $FF
    ld l, h                                       ; $5B47: $6C
    db $FC                                        ; $5B48: $FC
    ld l, e                                       ; $5B49: $6B
    rst RST_38                                    ; $5B4A: $FF
    ret c                                         ; $5B4B: $D8

    rst RST_38                                    ; $5B4C: $FF
    ld b, $FF                                     ; $5B4D: $06 $FF
    cp $FF                                        ; $5B4F: $FE $FF
    cp $FF                                        ; $5B51: $FE $FF
    pop af                                        ; $5B53: $F1
    rst RST_38                                    ; $5B54: $FF
    call $FCFF                                    ; $5B55: $CD $FF $FC
    db $FC                                        ; $5B58: $FC
    sbc b                                         ; $5B59: $98
    ld hl, sp+$70                                 ; $5B5A: $F8 $70
    ldh a, [$FFC0]                                ; $5B5C: $F0 $C0
    ret nz                                        ; $5B5E: $C0

    nop                                           ; $5B5F: $00
    dec d                                         ; $5B60: $15
    db $EB                                        ; $5B61: $EB
    adc l                                         ; $5B62: $8D
    di                                            ; $5B63: $F3
    add a                                         ; $5B64: $87
    ld hl, sp-$3B                                 ; $5B65: $F8 $C5
    ld a, e                                       ; $5B67: $7B
    ld h, l                                       ; $5B68: $65
    dec sp                                        ; $5B69: $3B
    ccf                                           ; $5B6A: $3F
    inc c                                         ; $5B6B: $0C
    rrca                                          ; $5B6C: $0F
    ld bc, $0307                                  ; $5B6D: $01 $07 $03
    rlca                                          ; $5B70: $07
    inc bc                                        ; $5B71: $03
    rrca                                          ; $5B72: $0F
    rlca                                          ; $5B73: $07
    rrca                                          ; $5B74: $0F
    rlca                                          ; $5B75: $07
    rrca                                          ; $5B76: $0F
    rlca                                          ; $5B77: $07
    rrca                                          ; $5B78: $0F
    inc bc                                        ; $5B79: $03
    rra                                           ; $5B7A: $1F
    nop                                           ; $5B7B: $00
    dec de                                        ; $5B7C: $1B
    dec b                                         ; $5B7D: $05
    rrca                                          ; $5B7E: $0F
    nop                                           ; $5B7F: $00
    dec c                                         ; $5B80: $0D
    nop                                           ; $5B81: $00
    rra                                           ; $5B82: $1F
    dec c                                         ; $5B83: $0D
    rra                                           ; $5B84: $1F
    dec b                                         ; $5B85: $05
    cpl                                           ; $5B86: $2F
    inc de                                        ; $5B87: $13
    rst RST_08                                    ; $5B88: $CF
    ld [hl], $FF                                  ; $5B89: $36 $FF
    rst RST_00                                    ; $5B8B: $C7
    rst RST_38                                    ; $5B8C: $FF
    db $E3                                        ; $5B8D: $E3
    rst RST_20                                    ; $5B8E: $E7
    sbc e                                         ; $5B8F: $9B
    rst RST_38                                    ; $5B90: $FF
    rlca                                          ; $5B91: $07
    rst RST_38                                    ; $5B92: $FF
    ld a, b                                       ; $5B93: $78
    ld a, a                                       ; $5B94: $7F
    ld bc, $1EFF                                  ; $5B95: $01 $FF $1E
    rst RST_38                                    ; $5B98: $FF
    rst RST_38                                    ; $5B99: $FF
    rst RST_38                                    ; $5B9A: $FF
    ld bc, $0001                                  ; $5B9B: $01 $01 $00
    nop                                           ; $5B9E: $00
    nop                                           ; $5B9F: $00
    ld b, $00                                     ; $5BA0: $06 $00
    dec bc                                        ; $5BA2: $0B
    inc b                                         ; $5BA3: $04
    rrca                                          ; $5BA4: $0F
    ld bc, $0307                                  ; $5BA5: $01 $07 $03
    inc bc                                        ; $5BA8: $03
    ld bc, $0001                                  ; $5BA9: $01 $01 $00
    nop                                           ; $5BAC: $00
    nop                                           ; $5BAD: $00
    cp $00                                        ; $5BAE: $FE $00
    inc bc                                        ; $5BB0: $03
    db $FC                                        ; $5BB1: $FC
    rst RST_38                                    ; $5BB2: $FF
    dec e                                         ; $5BB3: $1D
    rst RST_38                                    ; $5BB4: $FF
    call c, $DCFE                                 ; $5BB5: $DC $FE $DC
    cp $5C                                        ; $5BB8: $FE $5C
    ld e, [hl]                                    ; $5BBA: $5E
    add b                                         ; $5BBB: $80
    ret nz                                        ; $5BBC: $C0

    add b                                         ; $5BBD: $80
    add b                                         ; $5BBE: $80
    nop                                           ; $5BBF: $00
    inc bc                                        ; $5BC0: $03
    nop                                           ; $5BC1: $00
    inc b                                         ; $5BC2: $04
    inc bc                                        ; $5BC3: $03
    rrca                                          ; $5BC4: $0F
    inc bc                                        ; $5BC5: $03
    rla                                           ; $5BC6: $17
    dec c                                         ; $5BC7: $0D
    rra                                           ; $5BC8: $1F
    ld [$0B1C], sp                                ; $5BC9: $08 $1C $0B
    rrca                                          ; $5BCC: $0F
    inc bc                                        ; $5BCD: $03
    inc bc                                        ; $5BCE: $03
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
    nop                                           ; $5BE0: $00
    nop                                           ; $5BE1: $00
    nop                                           ; $5BE2: $00
    nop                                           ; $5BE3: $00
    nop                                           ; $5BE4: $00
    nop                                           ; $5BE5: $00
    nop                                           ; $5BE6: $00
    nop                                           ; $5BE7: $00
    ret nz                                        ; $5BE8: $C0

    nop                                           ; $5BE9: $00
    ret nz                                        ; $5BEA: $C0

    add b                                         ; $5BEB: $80
    ret nz                                        ; $5BEC: $C0

    add b                                         ; $5BED: $80
    add b                                         ; $5BEE: $80
    nop                                           ; $5BEF: $00
    nop                                           ; $5BF0: $00
    nop                                           ; $5BF1: $00
    ret nz                                        ; $5BF2: $C0

    nop                                           ; $5BF3: $00
    cp $C0                                        ; $5BF4: $FE $C0
    rst RST_38                                    ; $5BF6: $FF
    xor $FF                                       ; $5BF7: $EE $FF
    rst RST_38                                    ; $5BF9: $FF
    ccf                                           ; $5BFA: $3F
    ld hl, sp+$1B                                 ; $5BFB: $F8 $1B
    rst RST_30                                    ; $5BFD: $F7
    rla                                           ; $5BFE: $17
    db $EC                                        ; $5BFF: $EC
    nop                                           ; $5C00: $00
    nop                                           ; $5C01: $00
    nop                                           ; $5C02: $00
    nop                                           ; $5C03: $00
    nop                                           ; $5C04: $00
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
    add b                                         ; $5C16: $80
    nop                                           ; $5C17: $00
    ret nz                                        ; $5C18: $C0

    add b                                         ; $5C19: $80
    ldh [$FFC0], a                                ; $5C1A: $E0 $C0
    ldh a, [rP1]                                  ; $5C1C: $F0 $00
    rst RST_38                                    ; $5C1E: $FF
    ld h, b                                       ; $5C1F: $60
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
    nop                                           ; $5C30: $00
    nop                                           ; $5C31: $00
    nop                                           ; $5C32: $00
    nop                                           ; $5C33: $00
    nop                                           ; $5C34: $00
    nop                                           ; $5C35: $00
    nop                                           ; $5C36: $00
    nop                                           ; $5C37: $00
    ret nz                                        ; $5C38: $C0

    nop                                           ; $5C39: $00
    ldh [rLCDC], a                                ; $5C3A: $E0 $40
    ldh [rLCDC], a                                ; $5C3C: $E0 $40
    ldh [rLCDC], a                                ; $5C3E: $E0 $40
    ret c                                         ; $5C40: $D8

    and b                                         ; $5C41: $A0
    call z, $FCB0                                 ; $5C42: $CC $B0 $FC
    ret z                                         ; $5C45: $C8

    cp $9C                                        ; $5C46: $FE $9C
    sbc l                                         ; $5C48: $9D
    ld l, d                                       ; $5C49: $6A
    sbc a                                         ; $5C4A: $9F
    ld l, b                                       ; $5C4B: $68
    rst RST_18                                    ; $5C4C: $DF
    xor [hl]                                      ; $5C4D: $AE
    xor $40                                       ; $5C4E: $EE $40
    ld h, b                                       ; $5C50: $60
    nop                                           ; $5C51: $00
    nop                                           ; $5C52: $00
    nop                                           ; $5C53: $00
    nop                                           ; $5C54: $00
    nop                                           ; $5C55: $00
    nop                                           ; $5C56: $00
    nop                                           ; $5C57: $00
    nop                                           ; $5C58: $00
    nop                                           ; $5C59: $00
    add b                                         ; $5C5A: $80
    nop                                           ; $5C5B: $00
    ld b, b                                       ; $5C5C: $40
    add b                                         ; $5C5D: $80
    ret nz                                        ; $5C5E: $C0

    nop                                           ; $5C5F: $00
    db $E3                                        ; $5C60: $E3
    ret nz                                        ; $5C61: $C0

    rst RST_38                                    ; $5C62: $FF
    db $E3                                        ; $5C63: $E3
    rst RST_38                                    ; $5C64: $FF
    ld l, a                                       ; $5C65: $6F
    rst RST_38                                    ; $5C66: $FF
    ccf                                           ; $5C67: $3F
    cp a                                          ; $5C68: $BF
    ld e, a                                       ; $5C69: $5F
    cp e                                          ; $5C6A: $BB
    db $DD                                        ; $5C6B: $DD
    and a                                         ; $5C6C: $A7
    ret c                                         ; $5C6D: $D8

    xor d                                         ; $5C6E: $AA
    call nc, $2CDA                                ; $5C6F: $D4 $DA $2C
    ld a, [hl]                                    ; $5C72: $7E
    add b                                         ; $5C73: $80
    ld a, a                                       ; $5C74: $7F
    sbc [hl]                                      ; $5C75: $9E
    ld a, a                                       ; $5C76: $7F
    xor [hl]                                      ; $5C77: $AE
    rst RST_38                                    ; $5C78: $FF
    ld l, $EF                                     ; $5C79: $2E $EF
    call nc, $D32E                                ; $5C7B: $D4 $2E $D3
    db $D3                                        ; $5C7E: $D3
    nop                                           ; $5C7F: $00
    rst RST_38                                    ; $5C80: $FF
    ldh a, [c]                                    ; $5C81: $F2
    rst RST_38                                    ; $5C82: $FF
    ld a, d                                       ; $5C83: $7A
    ld a, [$FAF5]                                 ; $5C84: $FA $F5 $FA
    push af                                       ; $5C87: $F5
    ld a, [$FFE5]                                 ; $5C88: $FA $E5 $FF
    ld [$EFFF], a                                 ; $5C8B: $EA $FF $EF
    rst RST_38                                    ; $5C8E: $FF
    rst RST_28                                    ; $5C8F: $EF
    rst RST_38                                    ; $5C90: $FF
    ldh a, [c]                                    ; $5C91: $F2
    rst RST_38                                    ; $5C92: $FF
    ld [$ED1F], a                                 ; $5C93: $EA $1F $ED
    rst RST_38                                    ; $5C96: $FF
    rrca                                          ; $5C97: $0F
    rra                                           ; $5C98: $1F
    add hl, bc                                    ; $5C99: $09
    rrca                                          ; $5C9A: $0F
    ld b, $09                                     ; $5C9B: $06 $09
    ld b, $06                                     ; $5C9D: $06 $06
    nop                                           ; $5C9F: $00
    rra                                           ; $5CA0: $1F
    rrca                                          ; $5CA1: $0F
    ccf                                           ; $5CA2: $3F
    rra                                           ; $5CA3: $1F
    ccf                                           ; $5CA4: $3F
    rra                                           ; $5CA5: $1F
    ccf                                           ; $5CA6: $3F
    inc bc                                        ; $5CA7: $03
    ld a, a                                       ; $5CA8: $7F
    dec e                                         ; $5CA9: $1D
    rst RST_38                                    ; $5CAA: $FF
    ld a, [hl]                                    ; $5CAB: $7E
    rst RST_38                                    ; $5CAC: $FF
    rst RST_38                                    ; $5CAD: $FF
    rst RST_38                                    ; $5CAE: $FF
    rst RST_38                                    ; $5CAF: $FF
    rst RST_38                                    ; $5CB0: $FF
    rst RST_38                                    ; $5CB1: $FF
    rst RST_38                                    ; $5CB2: $FF
    di                                            ; $5CB3: $F3
    rst RST_38                                    ; $5CB4: $FF
    rst RST_28                                    ; $5CB5: $EF
    rst RST_38                                    ; $5CB6: $FF
    rrca                                          ; $5CB7: $0F
    rst RST_38                                    ; $5CB8: $FF
    rlca                                          ; $5CB9: $07
    ei                                            ; $5CBA: $FB
    rlca                                          ; $5CBB: $07
    inc b                                         ; $5CBC: $04
    inc bc                                        ; $5CBD: $03
    inc bc                                        ; $5CBE: $03
    nop                                           ; $5CBF: $00
    ld h, b                                       ; $5CC0: $60
    nop                                           ; $5CC1: $00
    ldh a, [$FF60]                                ; $5CC2: $F0 $60
    db $FC                                        ; $5CC4: $FC
    ldh a, [rIE]                                  ; $5CC5: $F0 $FF
    db $FC                                        ; $5CC7: $FC
    rst RST_38                                    ; $5CC8: $FF
    adc [hl]                                      ; $5CC9: $8E
    rst RST_38                                    ; $5CCA: $FF
    rlca                                          ; $5CCB: $07
    rst RST_38                                    ; $5CCC: $FF
    inc bc                                        ; $5CCD: $03
    rst RST_38                                    ; $5CCE: $FF
    inc bc                                        ; $5CCF: $03
    rra                                           ; $5CD0: $1F
    ld bc, $000F                                  ; $5CD1: $01 $0F $00
    inc bc                                        ; $5CD4: $03
    nop                                           ; $5CD5: $00
    nop                                           ; $5CD6: $00
    nop                                           ; $5CD7: $00
    nop                                           ; $5CD8: $00
    nop                                           ; $5CD9: $00
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
    ld bc, $0300                                  ; $5CEE: $01 $00 $03
    ld bc, $030F                                  ; $5CF1: $01 $0F $03
    ccf                                           ; $5CF4: $3F
    ld c, $2F                                     ; $5CF5: $0E $2F
    db $10                                        ; $5CF7: $10
    inc sp                                        ; $5CF8: $33
    nop                                           ; $5CF9: $00
    rlca                                          ; $5CFA: $07
    nop                                           ; $5CFB: $00
    ld c, $00                                     ; $5CFC: $0E $00

Call_015_5CFE:
    inc c                                         ; $5CFE: $0C
    nop                                           ; $5CFF: $00
    nop                                           ; $5D00: $00
    nop                                           ; $5D01: $00
    nop                                           ; $5D02: $00
    nop                                           ; $5D03: $00
    nop                                           ; $5D04: $00
    nop                                           ; $5D05: $00
    nop                                           ; $5D06: $00
    nop                                           ; $5D07: $00
    nop                                           ; $5D08: $00
    nop                                           ; $5D09: $00
    nop                                           ; $5D0A: $00
    nop                                           ; $5D0B: $00
    ld bc, $0700                                  ; $5D0C: $01 $00 $07
    ld bc, $071F                                  ; $5D0F: $01 $1F $07
    ld a, a                                       ; $5D12: $7F
    rra                                           ; $5D13: $1F
    rst RST_38                                    ; $5D14: $FF
    ld a, [hl]                                    ; $5D15: $7E
    cp $7C                                        ; $5D16: $FE $7C
    db $FC                                        ; $5D18: $FC
    ld hl, sp-$04                                 ; $5D19: $F8 $FC

jr_015_5D1B:
    ld hl, sp-$02                                 ; $5D1B: $F8 $FE
    inc e                                         ; $5D1D: $1C
    rst RST_38                                    ; $5D1E: $FF
    xor $00                                       ; $5D1F: $EE $00
    nop                                           ; $5D21: $00
    nop                                           ; $5D22: $00
    nop                                           ; $5D23: $00
    nop                                           ; $5D24: $00
    nop                                           ; $5D25: $00
    jr nc, jr_015_5D28                            ; $5D26: $30 $00

jr_015_5D28:
    ld [hl], b                                    ; $5D28: $70
    jr nz, jr_015_5D1B                            ; $5D29: $20 $F0

    ld h, b                                       ; $5D2B: $60
    ldh [$FFC0], a                                ; $5D2C: $E0 $C0
    ldh [$FFC0], a                                ; $5D2E: $E0 $C0
    ret nz                                        ; $5D30: $C0

    add b                                         ; $5D31: $80
    add b                                         ; $5D32: $80
    nop                                           ; $5D33: $00
    nop                                           ; $5D34: $00
    nop                                           ; $5D35: $00
    nop                                           ; $5D36: $00
    nop                                           ; $5D37: $00
    nop                                           ; $5D38: $00
    nop                                           ; $5D39: $00
    nop                                           ; $5D3A: $00
    nop                                           ; $5D3B: $00
    inc e                                         ; $5D3C: $1C
    nop                                           ; $5D3D: $00
    cp [hl]                                       ; $5D3E: $BE
    inc e                                         ; $5D3F: $1C
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
    jr jr_015_5D58                                ; $5D56: $18 $00

jr_015_5D58:
    ld a, h                                       ; $5D58: $7C
    jr @-$02                                      ; $5D59: $18 $FC

    ld l, b                                       ; $5D5B: $68
    cp $70                                        ; $5D5C: $FE $70
    rst RST_38                                    ; $5D5E: $FF
    ld a, d                                       ; $5D5F: $7A
    ld [bc], a                                    ; $5D60: $02
    nop                                           ; $5D61: $00
    rlca                                          ; $5D62: $07
    ld [bc], a                                    ; $5D63: $02
    rlca                                          ; $5D64: $07
    ld [bc], a                                    ; $5D65: $02
    rlca                                          ; $5D66: $07
    ld [bc], a                                    ; $5D67: $02
    rrca                                          ; $5D68: $0F
    ld b, $0F                                     ; $5D69: $06 $0F
    ld b, $1F                                     ; $5D6B: $06 $1F
    ld c, $3E                                     ; $5D6D: $0E $3E
    inc e                                         ; $5D6F: $1C
    cp $3C                                        ; $5D70: $FE $3C
    cp $FC                                        ; $5D72: $FE $FC
    db $FC                                        ; $5D74: $FC
    ld hl, sp-$04                                 ; $5D75: $F8 $FC
    ld hl, sp-$08                                 ; $5D77: $F8 $F8
    ldh a, [$FFF0]                                ; $5D79: $F0 $F0
    ret nz                                        ; $5D7B: $C0

    ret nz                                        ; $5D7C: $C0

    nop                                           ; $5D7D: $00
    nop                                           ; $5D7E: $00
    nop                                           ; $5D7F: $00
    ld sp, hl                                     ; $5D80: $F9
    sub $FE                                       ; $5D81: $D6 $FE
    ret c                                         ; $5D83: $D8

    db $FC                                        ; $5D84: $FC
    ret c                                         ; $5D85: $D8

    cp $D8                                        ; $5D86: $FE $D8
    ld sp, hl                                     ; $5D88: $F9
    sub $FF                                       ; $5D89: $D6 $FF
    or b                                          ; $5D8B: $B0
    rst RST_38                                    ; $5D8C: $FF
    add hl, bc                                    ; $5D8D: $09
    rst RST_38                                    ; $5D8E: $FF
    db $FD                                        ; $5D8F: $FD
    rst RST_38                                    ; $5D90: $FF
    db $FD                                        ; $5D91: $FD
    rst RST_38                                    ; $5D92: $FF
    db $FD                                        ; $5D93: $FD
    rst RST_38                                    ; $5D94: $FF
    dec sp                                        ; $5D95: $3B
    rst RST_38                                    ; $5D96: $FF
    rst RST_00                                    ; $5D97: $C7
    rst RST_38                                    ; $5D98: $FF
    ld hl, sp-$02                                 ; $5D99: $F8 $FE
    inc e                                         ; $5D9B: $1C
    cp $FC                                        ; $5D9C: $FE $FC
    cp $00                                        ; $5D9E: $FE $00
    dec hl                                        ; $5DA0: $2B
    sub $1B                                       ; $5DA1: $D6 $1B
    and $0F                                       ; $5DA3: $E6 $0F
    ldh a, [$FF0B]                                ; $5DA5: $F0 $0B
    or $8B                                        ; $5DA7: $F6 $8B
    halt                                          ; $5DA9: $76
    add a                                         ; $5DAA: $87
    ld a, c                                       ; $5DAB: $79
    add a                                         ; $5DAC: $87
    ld a, d                                       ; $5DAD: $7A
    ld c, a                                       ; $5DAE: $4F
    scf                                           ; $5DAF: $37
    ld e, a                                       ; $5DB0: $5F
    cpl                                           ; $5DB1: $2F
    ccf                                           ; $5DB2: $3F
    rrca                                          ; $5DB3: $0F
    rra                                           ; $5DB4: $1F
    rrca                                          ; $5DB5: $0F
    rrca                                          ; $5DB6: $0F
    rlca                                          ; $5DB7: $07
    rra                                           ; $5DB8: $1F
    nop                                           ; $5DB9: $00
    cpl                                           ; $5DBA: $2F
    db $10                                        ; $5DBB: $10
    dec sp                                        ; $5DBC: $3B
    dec b                                         ; $5DBD: $05
    rrca                                          ; $5DBE: $0F
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
    add b                                         ; $5DD8: $80
    nop                                           ; $5DD9: $00
    ldh [$FF80], a                                ; $5DDA: $E0 $80
    ldh a, [rNR41]                                ; $5DDC: $F0 $20
    cp $C0                                        ; $5DDE: $FE $C0
    nop                                           ; $5DE0: $00
    nop                                           ; $5DE1: $00
    nop                                           ; $5DE2: $00
    nop                                           ; $5DE3: $00
    nop                                           ; $5DE4: $00
    nop                                           ; $5DE5: $00
    nop                                           ; $5DE6: $00
    nop                                           ; $5DE7: $00
    add b                                         ; $5DE8: $80
    nop                                           ; $5DE9: $00
    add b                                         ; $5DEA: $80
    nop                                           ; $5DEB: $00
    add b                                         ; $5DEC: $80
    nop                                           ; $5DED: $00
    nop                                           ; $5DEE: $00
    nop                                           ; $5DEF: $00
    nop                                           ; $5DF0: $00
    nop                                           ; $5DF1: $00
    ret nz                                        ; $5DF2: $C0

    nop                                           ; $5DF3: $00
    db $FC                                        ; $5DF4: $FC
    ret nz                                        ; $5DF5: $C0

    rst RST_38                                    ; $5DF6: $FF
    db $FC                                        ; $5DF7: $FC
    rst RST_38                                    ; $5DF8: $FF
    rst RST_38                                    ; $5DF9: $FF
    ld a, a                                       ; $5DFA: $7F
    pop af                                        ; $5DFB: $F1
    scf                                           ; $5DFC: $37
    xor $2F                                       ; $5DFD: $EE $2F
    ret c                                         ; $5DFF: $D8

    rst RST_38                                    ; $5E00: $FF
    adc [hl]                                      ; $5E01: $8E
    rst RST_38                                    ; $5E02: $FF
    rst RST_00                                    ; $5E03: $C7
    rst RST_08                                    ; $5E04: $CF
    scf                                           ; $5E05: $37
    rst RST_38                                    ; $5E06: $FF
    rrca                                          ; $5E07: $0F
    cp $F1                                        ; $5E08: $FE $F1
    cp $03                                        ; $5E0A: $FE $03
    ld a, $1D                                     ; $5E0C: $3E $1D
    ld a, a                                       ; $5E0E: $7F
    rra                                           ; $5E0F: $1F
    rst RST_38                                    ; $5E10: $FF
    ld h, l                                       ; $5E11: $65
    sbc a                                         ; $5E12: $9F
    ld l, b                                       ; $5E13: $68
    rst RST_38                                    ; $5E14: $FF
    ld l, h                                       ; $5E15: $6C
    cp $0C                                        ; $5E16: $FE $0C
    cp $AC                                        ; $5E18: $FE $AC
    cp $AC                                        ; $5E1A: $FE $AC
    db $FC                                        ; $5E1C: $FC
    ld e, b                                       ; $5E1D: $58
    ld hl, sp+$00                                 ; $5E1E: $F8 $00
    rra                                           ; $5E20: $1F
    inc bc                                        ; $5E21: $03
    rrca                                          ; $5E22: $0F
    rlca                                          ; $5E23: $07
    rlca                                          ; $5E24: $07
    inc bc                                        ; $5E25: $03
    inc bc                                        ; $5E26: $03
    nop                                           ; $5E27: $00
    ld bc, $0000                                  ; $5E28: $01 $00 $00
    nop                                           ; $5E2B: $00
    nop                                           ; $5E2C: $00
    nop                                           ; $5E2D: $00
    nop                                           ; $5E2E: $00
    nop                                           ; $5E2F: $00
    inc bc                                        ; $5E30: $03
    nop                                           ; $5E31: $00
    dec b                                         ; $5E32: $05
    inc bc                                        ; $5E33: $03
    dec b                                         ; $5E34: $05
    inc bc                                        ; $5E35: $03
    rlca                                          ; $5E36: $07
    nop                                           ; $5E37: $00
    dec b                                         ; $5E38: $05
    inc bc                                        ; $5E39: $03
    dec b                                         ; $5E3A: $05
    inc bc                                        ; $5E3B: $03
    inc bc                                        ; $5E3C: $03
    nop                                           ; $5E3D: $00
    ld bc, $0000                                  ; $5E3E: $01 $00 $00
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
    nop                                           ; $5E50: $00
    nop                                           ; $5E51: $00
    nop                                           ; $5E52: $00
    nop                                           ; $5E53: $00
    nop                                           ; $5E54: $00
    nop                                           ; $5E55: $00
    dec de                                        ; $5E56: $1B
    nop                                           ; $5E57: $00
    ccf                                           ; $5E58: $3F
    dec de                                        ; $5E59: $1B
    ccf                                           ; $5E5A: $3F
    dec bc                                        ; $5E5B: $0B
    ld e, a                                       ; $5E5C: $5F
    ld h, $9E                                     ; $5E5D: $26 $9E
    ld l, h                                       ; $5E5F: $6C
    nop                                           ; $5E60: $00
    nop                                           ; $5E61: $00
    nop                                           ; $5E62: $00
    nop                                           ; $5E63: $00
    nop                                           ; $5E64: $00
    nop                                           ; $5E65: $00
    nop                                           ; $5E66: $00
    nop                                           ; $5E67: $00
    nop                                           ; $5E68: $00
    nop                                           ; $5E69: $00
    nop                                           ; $5E6A: $00
    nop                                           ; $5E6B: $00
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
    nop                                           ; $5E78: $00
    nop                                           ; $5E79: $00
    nop                                           ; $5E7A: $00
    nop                                           ; $5E7B: $00
    inc c                                         ; $5E7C: $0C
    nop                                           ; $5E7D: $00
    rla                                           ; $5E7E: $17
    ld [$0000], sp                                ; $5E7F: $08 $00 $00
    nop                                           ; $5E82: $00
    nop                                           ; $5E83: $00
    rlca                                          ; $5E84: $07
    nop                                           ; $5E85: $00
    rra                                           ; $5E86: $1F
    rlca                                          ; $5E87: $07
    ccf                                           ; $5E88: $3F
    rra                                           ; $5E89: $1F
    ld a, a                                       ; $5E8A: $7F
    ccf                                           ; $5E8B: $3F
    ld a, a                                       ; $5E8C: $7F
    ccf                                           ; $5E8D: $3F
    rst RST_38                                    ; $5E8E: $FF
    ld a, a                                       ; $5E8F: $7F
    rst RST_38                                    ; $5E90: $FF
    ld a, h                                       ; $5E91: $7C
    db $FC                                        ; $5E92: $FC
    ld a, b                                       ; $5E93: $78
    ld a, h                                       ; $5E94: $7C
    jr c, jr_015_5F15                             ; $5E95: $38 $7E

    inc a                                         ; $5E97: $3C
    ccf                                           ; $5E98: $3F
    ld e, $1F                                     ; $5E99: $1E $1F
    rlca                                          ; $5E9B: $07
    rlca                                          ; $5E9C: $07
    nop                                           ; $5E9D: $00
    nop                                           ; $5E9E: $00
    nop                                           ; $5E9F: $00
    ld a, a                                       ; $5EA0: $7F
    ld [hl], $FF                                  ; $5EA1: $36 $FF
    ld [hl], $3F                                  ; $5EA3: $36 $3F
    sub $FF                                       ; $5EA5: $D6 $FF
    dec de                                        ; $5EA7: $1B
    rst RST_38                                    ; $5EA8: $FF
    ldh [rIE], a                                  ; $5EA9: $E0 $FF
    rst RST_30                                    ; $5EAB: $F7
    rst RST_38                                    ; $5EAC: $FF
    rst RST_28                                    ; $5EAD: $EF
    rst RST_38                                    ; $5EAE: $FF
    rst RST_18                                    ; $5EAF: $DF
    rst RST_38                                    ; $5EB0: $FF
    rst RST_18                                    ; $5EB1: $DF
    rst RST_38                                    ; $5EB2: $FF
    ld e, c                                       ; $5EB3: $59
    ld a, a                                       ; $5EB4: $7F
    dec de                                        ; $5EB5: $1B
    ccf                                           ; $5EB6: $3F
    ld d, $9F                                     ; $5EB7: $16 $9F
    rlca                                          ; $5EB9: $07
    rst RST_28                                    ; $5EBA: $EF
    add h                                         ; $5EBB: $84
    push af                                       ; $5EBC: $F5
    ld [bc], a                                    ; $5EBD: $02
    rlca                                          ; $5EBE: $07
    nop                                           ; $5EBF: $00
    pop hl                                        ; $5EC0: $E1
    ld e, $A1                                     ; $5EC1: $1E $A1
    sbc $A1                                       ; $5EC3: $DE $A1
    sbc $C3                                       ; $5EC5: $DE $C3
    inc a                                         ; $5EC7: $3C
    db $E3                                        ; $5EC8: $E3
    call c, $EDF3                                 ; $5EC9: $DC $F3 $ED
    di                                            ; $5ECC: $F3
    db $ED                                        ; $5ECD: $ED
    rst RST_30                                    ; $5ECE: $F7
    db $EB                                        ; $5ECF: $EB
    rst RST_30                                    ; $5ED0: $F7
    db $EB                                        ; $5ED1: $EB
    rst RST_28                                    ; $5ED2: $EF
    rst RST_10                                    ; $5ED3: $D7
    rst RST_18                                    ; $5ED4: $DF
    xor h                                         ; $5ED5: $AC
    cp h                                          ; $5ED6: $BC
    ld d, b                                       ; $5ED7: $50
    rst RST_38                                    ; $5ED8: $FF
    jr nz, @+$01                                  ; $5ED9: $20 $FF

    ld a, $3F                                     ; $5EDB: $3E $3F
    ret nz                                        ; $5EDD: $C0

    ldh [rP1], a                                  ; $5EDE: $E0 $00
    jr jr_015_5EE2                                ; $5EE0: $18 $00

jr_015_5EE2:
    rst RST_38                                    ; $5EE2: $FF
    jr @-$18                                      ; $5EE3: $18 $E6

    db $DB                                        ; $5EE5: $DB
    cp $DB                                        ; $5EE6: $FE $DB
    rst RST_38                                    ; $5EE8: $FF
    ret nz                                        ; $5EE9: $C0

    cp $57                                        ; $5EEA: $FE $57
    cp $97                                        ; $5EEC: $FE $97
    rst RST_38                                    ; $5EEE: $FF
    xor b                                         ; $5EEF: $A8
    cp $80                                        ; $5EF0: $FE $80
    add b                                         ; $5EF2: $80
    nop                                           ; $5EF3: $00
    nop                                           ; $5EF4: $00
    nop                                           ; $5EF5: $00
    nop                                           ; $5EF6: $00
    nop                                           ; $5EF7: $00
    add b                                         ; $5EF8: $80
    nop                                           ; $5EF9: $00
    ld b, b                                       ; $5EFA: $40
    add b                                         ; $5EFB: $80
    ret nz                                        ; $5EFC: $C0

    nop                                           ; $5EFD: $00
    nop                                           ; $5EFE: $00
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
    nop                                           ; $5F09: $00
    nop                                           ; $5F0A: $00
    nop                                           ; $5F0B: $00
    nop                                           ; $5F0C: $00
    nop                                           ; $5F0D: $00
    nop                                           ; $5F0E: $00
    nop                                           ; $5F0F: $00
    nop                                           ; $5F10: $00
    nop                                           ; $5F11: $00
    nop                                           ; $5F12: $00
    nop                                           ; $5F13: $00
    nop                                           ; $5F14: $00

jr_015_5F15:
    nop                                           ; $5F15: $00
    nop                                           ; $5F16: $00
    nop                                           ; $5F17: $00
    rlca                                          ; $5F18: $07
    nop                                           ; $5F19: $00
    ld a, a                                       ; $5F1A: $7F
    inc bc                                        ; $5F1B: $03
    sbc a                                         ; $5F1C: $9F
    ld l, e                                       ; $5F1D: $6B
    ld a, a                                       ; $5F1E: $7F
    dec de                                        ; $5F1F: $1B
    nop                                           ; $5F20: $00
    nop                                           ; $5F21: $00
    nop                                           ; $5F22: $00
    nop                                           ; $5F23: $00
    nop                                           ; $5F24: $00
    nop                                           ; $5F25: $00
    nop                                           ; $5F26: $00
    nop                                           ; $5F27: $00
    ld c, $00                                     ; $5F28: $0E $00
    rrca                                          ; $5F2A: $0F
    ld b, $0F                                     ; $5F2B: $06 $0F
    ld b, $07                                     ; $5F2D: $06 $07
    inc bc                                        ; $5F2F: $03
    rlca                                          ; $5F30: $07
    ld [bc], a                                    ; $5F31: $02
    rrca                                          ; $5F32: $0F
    ld [bc], a                                    ; $5F33: $02
    rra                                           ; $5F34: $1F
    dec bc                                        ; $5F35: $0B
    ld a, a                                       ; $5F36: $7F
    rrca                                          ; $5F37: $0F
    rst RST_28                                    ; $5F38: $EF
    ld [hl], a                                    ; $5F39: $77
    push af                                       ; $5F3A: $F5
    ld a, [de]                                    ; $5F3B: $1A
    call nc, $D86B                                ; $5F3C: $D4 $6B $D8
    ld h, a                                       ; $5F3F: $67
    nop                                           ; $5F40: $00
    nop                                           ; $5F41: $00
    nop                                           ; $5F42: $00
    nop                                           ; $5F43: $00
    nop                                           ; $5F44: $00
    nop                                           ; $5F45: $00
    nop                                           ; $5F46: $00
    nop                                           ; $5F47: $00
    ret nz                                        ; $5F48: $C0

    nop                                           ; $5F49: $00
    ldh [$FFC0], a                                ; $5F4A: $E0 $C0
    ldh [$FFC0], a                                ; $5F4C: $E0 $C0
    ldh [rP1], a                                  ; $5F4E: $E0 $00
    ld [hl], b                                    ; $5F50: $70
    and b                                         ; $5F51: $A0
    inc a                                         ; $5F52: $3C
    ret nc                                        ; $5F53: $D0

    rst RST_38                                    ; $5F54: $FF
    inc e                                         ; $5F55: $1C
    db $FD                                        ; $5F56: $FD
    ld a, [$F8FF]                                 ; $5F57: $FA $FF $F8
    cp $4C                                        ; $5F5A: $FE $4C
    ld a, h                                       ; $5F5C: $7C
    or b                                          ; $5F5D: $B0
    or b                                          ; $5F5E: $B0
    nop                                           ; $5F5F: $00
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
    add b                                         ; $5F76: $80
    nop                                           ; $5F77: $00
    add b                                         ; $5F78: $80
    nop                                           ; $5F79: $00
    nop                                           ; $5F7A: $00
    nop                                           ; $5F7B: $00
    add b                                         ; $5F7C: $80
    nop                                           ; $5F7D: $00
    add b                                         ; $5F7E: $80
    nop                                           ; $5F7F: $00
    ld [hl], b                                    ; $5F80: $70
    add b                                         ; $5F81: $80
    ld a, [hl]                                    ; $5F82: $7E
    or b                                          ; $5F83: $B0
    ld c, l                                       ; $5F84: $4D
    or [hl]                                       ; $5F85: $B6
    ld a, l                                       ; $5F86: $7D
    or [hl]                                       ; $5F87: $B6
    ld a, [hl]                                    ; $5F88: $7E
    add b                                         ; $5F89: $80
    ld a, l                                       ; $5F8A: $7D
    xor [hl]                                      ; $5F8B: $AE
    ld a, l                                       ; $5F8C: $7D
    xor [hl]                                      ; $5F8D: $AE
    cp $50                                        ; $5F8E: $FE $50
    ld hl, sp+$00                                 ; $5F90: $F8 $00
    nop                                           ; $5F92: $00
    nop                                           ; $5F93: $00
    nop                                           ; $5F94: $00
    nop                                           ; $5F95: $00
    nop                                           ; $5F96: $00
    nop                                           ; $5F97: $00
    add b                                         ; $5F98: $80
    nop                                           ; $5F99: $00
    ld b, b                                       ; $5F9A: $40
    add b                                         ; $5F9B: $80
    ret nz                                        ; $5F9C: $C0

    nop                                           ; $5F9D: $00
    nop                                           ; $5F9E: $00
    nop                                           ; $5F9F: $00
    push af                                       ; $5FA0: $F5
    jp c, $D9F6                                   ; $5FA1: $DA $F6 $D9

    db $FC                                        ; $5FA4: $FC
    jp $DBF4                                      ; $5FA5: $C3 $F4 $DB


    db $F4                                        ; $5FA8: $F4
    db $DB                                        ; $5FA9: $DB
    ld hl, sp+$67                                 ; $5FAA: $F8 $67
    ld hl, sp+$17                                 ; $5FAC: $F8 $17
    db $FC                                        ; $5FAE: $FC
    ei                                            ; $5FAF: $FB
    cp $FD                                        ; $5FB0: $FE $FD
    rst RST_38                                    ; $5FB2: $FF
    db $FC                                        ; $5FB3: $FC
    cp $3C                                        ; $5FB4: $FE $3C
    db $FC                                        ; $5FB6: $FC
    ld hl, sp-$01                                 ; $5FB7: $F8 $FF
    ret nz                                        ; $5FB9: $C0

    rst RST_38                                    ; $5FBA: $FF
    nop                                           ; $5FBB: $00
    rst RST_30                                    ; $5FBC: $F7
    add sp, -$04                                  ; $5FBD: $E8 $FC
    nop                                           ; $5FBF: $00
    daa                                           ; $5FC0: $27
    ld a, [de]                                    ; $5FC1: $1A
    rra                                           ; $5FC2: $1F
    ld b, $EF                                     ; $5FC3: $06 $EF
    ld b, $FF                                     ; $5FC5: $06 $FF
    and $E7                                       ; $5FC7: $E6 $E7
    jp c, $E3FF                                   ; $5FC9: $DA $FF $E3

    rst RST_38                                    ; $5FCC: $FF
    db $F4                                        ; $5FCD: $F4
    rst RST_38                                    ; $5FCE: $FF
    rst RST_28                                    ; $5FCF: $EF
    rst RST_38                                    ; $5FD0: $FF
    rst RST_28                                    ; $5FD1: $EF
    rst RST_38                                    ; $5FD2: $FF
    rst RST_28                                    ; $5FD3: $EF
    rst RST_38                                    ; $5FD4: $FF
    scf                                           ; $5FD5: $37
    ccf                                           ; $5FD6: $3F
    nop                                           ; $5FD7: $00
    rrca                                          ; $5FD8: $0F
    rlca                                          ; $5FD9: $07
    rra                                           ; $5FDA: $1F
    ld c, $1F                                     ; $5FDB: $0E $1F
    rrca                                          ; $5FDD: $0F
    rra                                           ; $5FDE: $1F
    nop                                           ; $5FDF: $00

jr_015_5FE0:
    nop                                           ; $5FE0: $00
    nop                                           ; $5FE1: $00
    nop                                           ; $5FE2: $00
    nop                                           ; $5FE3: $00
    nop                                           ; $5FE4: $00
    nop                                           ; $5FE5: $00
    nop                                           ; $5FE6: $00
    nop                                           ; $5FE7: $00
    nop                                           ; $5FE8: $00
    nop                                           ; $5FE9: $00
    nop                                           ; $5FEA: $00
    nop                                           ; $5FEB: $00
    nop                                           ; $5FEC: $00
    nop                                           ; $5FED: $00
    jr nc, jr_015_5FF0                            ; $5FEE: $30 $00

jr_015_5FF0:
    add sp, $10                                   ; $5FF0: $E8 $10
    ld hl, sp-$40                                 ; $5FF2: $F8 $C0
    ldh a, [$FFE0]                                ; $5FF4: $F0 $E0
    ldh [$FFC0], a                                ; $5FF6: $E0 $C0
    ret nz                                        ; $5FF8: $C0

    nop                                           ; $5FF9: $00
    add b                                         ; $5FFA: $80
    nop                                           ; $5FFB: $00
    nop                                           ; $5FFC: $00
    nop                                           ; $5FFD: $00
    nop                                           ; $5FFE: $00
    nop                                           ; $5FFF: $00
    nop                                           ; $6000: $00
    nop                                           ; $6001: $00
    nop                                           ; $6002: $00
    nop                                           ; $6003: $00
    nop                                           ; $6004: $00
    nop                                           ; $6005: $00
    nop                                           ; $6006: $00
    nop                                           ; $6007: $00
    ret nz                                        ; $6008: $C0

    nop                                           ; $6009: $00
    ldh [$FFC0], a                                ; $600A: $E0 $C0
    db $EC                                        ; $600C: $EC
    ret nz                                        ; $600D: $C0

    ld a, [$F964]                                 ; $600E: $FA $64 $F9
    or [hl]                                       ; $6011: $B6
    rst RST_38                                    ; $6012: $FF
    ld [hl], c                                    ; $6013: $71
    rst RST_38                                    ; $6014: $FF
    db $E3                                        ; $6015: $E3
    di                                            ; $6016: $F3
    db $EC                                        ; $6017: $EC
    rst RST_38                                    ; $6018: $FF
    ldh a, [$FF8F]                                ; $6019: $F0 $8F
    rst RST_38                                    ; $601B: $FF
    ccf                                           ; $601C: $3F
    ret nz                                        ; $601D: $C0

    jr nz, jr_015_5FE0                            ; $601E: $20 $C0

    nop                                           ; $6020: $00
    nop                                           ; $6021: $00
    nop                                           ; $6022: $00
    nop                                           ; $6023: $00
    nop                                           ; $6024: $00
    nop                                           ; $6025: $00
    nop                                           ; $6026: $00
    nop                                           ; $6027: $00
    ld bc, $0700                                  ; $6028: $01 $00 $07
    nop                                           ; $602B: $00
    rlca                                          ; $602C: $07
    ld [bc], a                                    ; $602D: $02
    inc bc                                        ; $602E: $03
    ld bc, $0001                                  ; $602F: $01 $01 $00
    ld bc, $0F00                                  ; $6032: $01 $00 $0F
    ld bc, $0F3F                                  ; $6035: $01 $3F $0F
    ld a, a                                       ; $6038: $7F
    ccf                                           ; $6039: $3F
    rst RST_38                                    ; $603A: $FF
    ld h, e                                       ; $603B: $63
    ei                                            ; $603C: $FB
    dec e                                         ; $603D: $1D
    db $FD                                        ; $603E: $FD
    add $00                                       ; $603F: $C6 $00
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
    rra                                           ; $604E: $1F
    nop                                           ; $604F: $00
    rst RST_38                                    ; $6050: $FF
    rra                                           ; $6051: $1F
    rst RST_38                                    ; $6052: $FF
    rst RST_38                                    ; $6053: $FF
    rst RST_38                                    ; $6054: $FF
    rst RST_38                                    ; $6055: $FF
    rst RST_38                                    ; $6056: $FF
    rst RST_38                                    ; $6057: $FF
    rst RST_38                                    ; $6058: $FF
    rst RST_38                                    ; $6059: $FF
    rst RST_38                                    ; $605A: $FF
    rst RST_38                                    ; $605B: $FF
    rst RST_38                                    ; $605C: $FF
    ld bc, $0001                                  ; $605D: $01 $01 $00
    ld bc, $FF00                                  ; $6060: $01 $00 $FF
    ld bc, $FFFF                                  ; $6063: $01 $FF $FF
    rst RST_38                                    ; $6066: $FF
    rst RST_38                                    ; $6067: $FF
    rst RST_38                                    ; $6068: $FF
    ld a, a                                       ; $6069: $7F
    ld a, a                                       ; $606A: $7F
    nop                                           ; $606B: $00
    nop                                           ; $606C: $00
    nop                                           ; $606D: $00
    nop                                           ; $606E: $00
    nop                                           ; $606F: $00
    nop                                           ; $6070: $00
    nop                                           ; $6071: $00
    nop                                           ; $6072: $00
    nop                                           ; $6073: $00
    nop                                           ; $6074: $00
    nop                                           ; $6075: $00
    nop                                           ; $6076: $00
    nop                                           ; $6077: $00
    nop                                           ; $6078: $00
    nop                                           ; $6079: $00
    nop                                           ; $607A: $00
    nop                                           ; $607B: $00
    nop                                           ; $607C: $00
    nop                                           ; $607D: $00
    nop                                           ; $607E: $00
    nop                                           ; $607F: $00
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
    nop                                           ; $6096: $00
    nop                                           ; $6097: $00
    nop                                           ; $6098: $00
    nop                                           ; $6099: $00
    rrca                                          ; $609A: $0F
    nop                                           ; $609B: $00
    rra                                           ; $609C: $1F
    rrca                                          ; $609D: $0F
    rrca                                          ; $609E: $0F
    nop                                           ; $609F: $00
    nop                                           ; $60A0: $00
    nop                                           ; $60A1: $00
    nop                                           ; $60A2: $00
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
    ld bc, $1F00                                  ; $60BC: $01 $00 $1F
    nop                                           ; $60BF: $00
    ld [hl], b                                    ; $60C0: $70
    add b                                         ; $60C1: $80
    ld a, [hl]                                    ; $60C2: $7E
    or b                                          ; $60C3: $B0
    ld c, l                                       ; $60C4: $4D
    or [hl]                                       ; $60C5: $B6
    ld a, l                                       ; $60C6: $7D
    or [hl]                                       ; $60C7: $B6
    ld a, [hl]                                    ; $60C8: $7E
    add b                                         ; $60C9: $80
    ld a, l                                       ; $60CA: $7D
    xor [hl]                                      ; $60CB: $AE
    ld a, l                                       ; $60CC: $7D
    xor [hl]                                      ; $60CD: $AE
    cp $50                                        ; $60CE: $FE $50
    ld hl, sp+$00                                 ; $60D0: $F8 $00
    nop                                           ; $60D2: $00
    nop                                           ; $60D3: $00
    nop                                           ; $60D4: $00
    nop                                           ; $60D5: $00
    nop                                           ; $60D6: $00
    nop                                           ; $60D7: $00
    add b                                         ; $60D8: $80
    nop                                           ; $60D9: $00
    ld b, b                                       ; $60DA: $40
    add b                                         ; $60DB: $80
    ret nz                                        ; $60DC: $C0

    nop                                           ; $60DD: $00
    nop                                           ; $60DE: $00
    nop                                           ; $60DF: $00
    push af                                       ; $60E0: $F5
    jp c, $D9F6                                   ; $60E1: $DA $F6 $D9

    db $FC                                        ; $60E4: $FC
    jp $DBF4                                      ; $60E5: $C3 $F4 $DB


    db $F4                                        ; $60E8: $F4
    db $DB                                        ; $60E9: $DB
    ld hl, sp+$67                                 ; $60EA: $F8 $67
    ld hl, sp+$17                                 ; $60EC: $F8 $17
    db $FC                                        ; $60EE: $FC
    ei                                            ; $60EF: $FB
    cp $FD                                        ; $60F0: $FE $FD
    rst RST_38                                    ; $60F2: $FF
    db $FC                                        ; $60F3: $FC
    cp $3C                                        ; $60F4: $FE $3C
    db $FC                                        ; $60F6: $FC
    ld hl, sp-$01                                 ; $60F7: $F8 $FF
    ret nz                                        ; $60F9: $C0

    rst RST_38                                    ; $60FA: $FF
    nop                                           ; $60FB: $00
    rst RST_30                                    ; $60FC: $F7
    add sp, -$04                                  ; $60FD: $E8 $FC
    nop                                           ; $60FF: $00
    daa                                           ; $6100: $27
    ld a, [de]                                    ; $6101: $1A
    rra                                           ; $6102: $1F
    ld b, $EF                                     ; $6103: $06 $EF
    ld b, $FF                                     ; $6105: $06 $FF
    and $E7                                       ; $6107: $E6 $E7
    jp c, $E3FF                                   ; $6109: $DA $FF $E3

    rst RST_38                                    ; $610C: $FF
    db $F4                                        ; $610D: $F4
    rst RST_38                                    ; $610E: $FF
    rst RST_28                                    ; $610F: $EF
    rst RST_38                                    ; $6110: $FF
    rst RST_28                                    ; $6111: $EF
    rst RST_38                                    ; $6112: $FF
    rst RST_28                                    ; $6113: $EF
    rst RST_38                                    ; $6114: $FF
    scf                                           ; $6115: $37
    ccf                                           ; $6116: $3F
    nop                                           ; $6117: $00
    rrca                                          ; $6118: $0F
    rlca                                          ; $6119: $07
    rra                                           ; $611A: $1F
    ld c, $1F                                     ; $611B: $0E $1F
    rrca                                          ; $611D: $0F
    rra                                           ; $611E: $1F
    nop                                           ; $611F: $00
    nop                                           ; $6120: $00
    nop                                           ; $6121: $00
    nop                                           ; $6122: $00
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
    ld bc, $0300                                  ; $6136: $01 $00 $03
    ld bc, $0307                                  ; $6139: $01 $07 $03
    rrca                                          ; $613C: $0F
    nop                                           ; $613D: $00
    rst RST_38                                    ; $613E: $FF
    ld b, $00                                     ; $613F: $06 $00
    nop                                           ; $6141: $00
    nop                                           ; $6142: $00
    nop                                           ; $6143: $00
    nop                                           ; $6144: $00
    nop                                           ; $6145: $00
    nop                                           ; $6146: $00
    nop                                           ; $6147: $00
    ld c, $00                                     ; $6148: $0E $00
    ccf                                           ; $614A: $3F
    ld b, $3F                                     ; $614B: $06 $3F
    ld d, $1F                                     ; $614D: $16 $1F
    dec bc                                        ; $614F: $0B
    rrca                                          ; $6150: $0F
    dec b                                         ; $6151: $05
    rrca                                          ; $6152: $0F
    inc bc                                        ; $6153: $03
    ld a, a                                       ; $6154: $7F
    rrca                                          ; $6155: $0F
    rst RST_38                                    ; $6156: $FF
    ld a, a                                       ; $6157: $7F
    rst RST_38                                    ; $6158: $FF
    rst RST_38                                    ; $6159: $FF
    db $FC                                        ; $615A: $FC
    rra                                           ; $615B: $1F
    reti                                          ; $615C: $D9


    xor $E9                                       ; $615D: $EE $E9
    ld [hl], $00                                  ; $615F: $36 $00
    nop                                           ; $6161: $00
    nop                                           ; $6162: $00
    nop                                           ; $6163: $00
    nop                                           ; $6164: $00
    nop                                           ; $6165: $00
    nop                                           ; $6166: $00
    nop                                           ; $6167: $00
    nop                                           ; $6168: $00
    nop                                           ; $6169: $00
    nop                                           ; $616A: $00
    nop                                           ; $616B: $00
    ld h, b                                       ; $616C: $60
    nop                                           ; $616D: $00
    pop de                                        ; $616E: $D1
    jr nz, @-$2F                                  ; $616F: $20 $CF

    or b                                          ; $6171: $B0
    rst RST_38                                    ; $6172: $FF
    adc [hl]                                      ; $6173: $8E
    rst RST_38                                    ; $6174: $FF
    rra                                           ; $6175: $1F
    sbc a                                         ; $6176: $9F
    ld h, [hl]                                    ; $6177: $66
    cp $80                                        ; $6178: $FE $80
    ld a, h                                       ; $617A: $7C
    ld hl, sp-$08                                 ; $617B: $F8 $F8
    nop                                           ; $617D: $00
    nop                                           ; $617E: $00
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
    add b                                         ; $6198: $80
    nop                                           ; $6199: $00
    ld b, b                                       ; $619A: $40
    add b                                         ; $619B: $80
    ret nz                                        ; $619C: $C0

    nop                                           ; $619D: $00
    add b                                         ; $619E: $80

jr_015_619F:
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
    nop                                           ; $61AD: $00
    rrca                                          ; $61AE: $0F
    nop                                           ; $61AF: $00
    rst RST_38                                    ; $61B0: $FF
    rrca                                          ; $61B1: $0F
    rst RST_38                                    ; $61B2: $FF
    rst RST_38                                    ; $61B3: $FF
    rst RST_38                                    ; $61B4: $FF
    rst RST_38                                    ; $61B5: $FF
    rst RST_38                                    ; $61B6: $FF
    rst RST_38                                    ; $61B7: $FF
    rst RST_38                                    ; $61B8: $FF
    rst RST_38                                    ; $61B9: $FF
    rst RST_38                                    ; $61BA: $FF
    ld a, a                                       ; $61BB: $7F
    ld a, a                                       ; $61BC: $7F
    ld bc, $0001                                  ; $61BD: $01 $01 $00
    ld a, a                                       ; $61C0: $7F
    nop                                           ; $61C1: $00
    rst RST_38                                    ; $61C2: $FF
    ld a, a                                       ; $61C3: $7F
    rst RST_38                                    ; $61C4: $FF
    rst RST_38                                    ; $61C5: $FF
    rst RST_38                                    ; $61C6: $FF
    ccf                                           ; $61C7: $3F
    ccf                                           ; $61C8: $3F
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
    rlca                                          ; $61FA: $07
    nop                                           ; $61FB: $00
    rrca                                          ; $61FC: $0F
    rlca                                          ; $61FD: $07
    rlca                                          ; $61FE: $07
    nop                                           ; $61FF: $00
    inc bc                                        ; $6200: $03
    nop                                           ; $6201: $00
    rrca                                          ; $6202: $0F
    inc bc                                        ; $6203: $03
    rra                                           ; $6204: $1F
    rrca                                          ; $6205: $0F
    ccf                                           ; $6206: $3F
    ld e, $5E                                     ; $6207: $1E $5E
    inc h                                         ; $6209: $24
    xor h                                         ; $620A: $AC
    ld d, b                                       ; $620B: $50
    ret z                                         ; $620C: $C8

    jr nc, jr_015_619F                            ; $620D: $30 $90

    ld h, b                                       ; $620F: $60
    ld h, b                                       ; $6210: $60
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
    inc h                                         ; $6220: $24
    dec de                                        ; $6221: $1B
    ccf                                           ; $6222: $3F
    dec de                                        ; $6223: $1B
    ccf                                           ; $6224: $3F
    jr jr_015_6265                                ; $6225: $18 $3E

    inc bc                                        ; $6227: $03
    ld a, $0B                                     ; $6228: $3E $0B
    ccf                                           ; $622A: $3F
    nop                                           ; $622B: $00
    rra                                           ; $622C: $1F
    nop                                           ; $622D: $00
    nop                                           ; $622E: $00
    nop                                           ; $622F: $00
    ld [hl], c                                    ; $6230: $71
    nop                                           ; $6231: $00
    rst RST_38                                    ; $6232: $FF
    ld [hl], c                                    ; $6233: $71
    rst RST_38                                    ; $6234: $FF
    rst RST_38                                    ; $6235: $FF
    rst RST_38                                    ; $6236: $FF
    or a                                          ; $6237: $B7
    rst RST_38                                    ; $6238: $FF
    rla                                           ; $6239: $17
    rra                                           ; $623A: $1F
    inc bc                                        ; $623B: $03
    rlca                                          ; $623C: $07
    ld bc, $0001                                  ; $623D: $01 $01 $00
    rst RST_38                                    ; $6240: $FF
    cp $FF                                        ; $6241: $FE $FF
    cp $FE                                        ; $6243: $FE $FE
    db $FD                                        ; $6245: $FD
    cp $FD                                        ; $6246: $FE $FD
    db $FC                                        ; $6248: $FC
    ei                                            ; $6249: $FB
    cp $E1                                        ; $624A: $FE $E1
    rst RST_20                                    ; $624C: $E7
    nop                                           ; $624D: $00
    rrca                                          ; $624E: $0F
    nop                                           ; $624F: $00
    rrca                                          ; $6250: $0F
    nop                                           ; $6251: $00
    rlca                                          ; $6252: $07
    nop                                           ; $6253: $00
    rlca                                          ; $6254: $07
    nop                                           ; $6255: $00
    inc bc                                        ; $6256: $03
    nop                                           ; $6257: $00
    inc bc                                        ; $6258: $03
    nop                                           ; $6259: $00
    ld bc, $0100                                  ; $625A: $01 $00 $01
    nop                                           ; $625D: $00
    nop                                           ; $625E: $00
    nop                                           ; $625F: $00
    inc bc                                        ; $6260: $03
    cp $03                                        ; $6261: $FE $03
    cp $03                                        ; $6263: $FE $03

jr_015_6265:
    db $FD                                        ; $6265: $FD
    rlca                                          ; $6266: $07
    db $FD                                        ; $6267: $FD
    rrca                                          ; $6268: $0F
    ld sp, hl                                     ; $6269: $F9
    rra                                           ; $626A: $1F
    pop hl                                        ; $626B: $E1
    rst RST_38                                    ; $626C: $FF
    inc bc                                        ; $626D: $03
    rst RST_38                                    ; $626E: $FF
    inc bc                                        ; $626F: $03
    rst RST_38                                    ; $6270: $FF
    inc b                                         ; $6271: $04
    inc a                                         ; $6272: $3C
    nop                                           ; $6273: $00
    nop                                           ; $6274: $00
    nop                                           ; $6275: $00
    add b                                         ; $6276: $80
    nop                                           ; $6277: $00
    add b                                         ; $6278: $80
    nop                                           ; $6279: $00
    add b                                         ; $627A: $80
    nop                                           ; $627B: $00
    ret nz                                        ; $627C: $C0

    nop                                           ; $627D: $00
    ret nz                                        ; $627E: $C0

    nop                                           ; $627F: $00
    nop                                           ; $6280: $00
    nop                                           ; $6281: $00
    nop                                           ; $6282: $00
    nop                                           ; $6283: $00
    nop                                           ; $6284: $00
    nop                                           ; $6285: $00
    nop                                           ; $6286: $00
    nop                                           ; $6287: $00
    nop                                           ; $6288: $00
    nop                                           ; $6289: $00
    nop                                           ; $628A: $00
    nop                                           ; $628B: $00
    nop                                           ; $628C: $00
    nop                                           ; $628D: $00
    nop                                           ; $628E: $00
    nop                                           ; $628F: $00
    nop                                           ; $6290: $00
    nop                                           ; $6291: $00
    nop                                           ; $6292: $00
    nop                                           ; $6293: $00
    ld bc, $0200                                  ; $6294: $01 $00 $02

jr_015_6297:
    ld bc, $0003                                  ; $6297: $01 $03 $00
    ld bc, $0000                                  ; $629A: $01 $00 $00
    nop                                           ; $629D: $00
    dec de                                        ; $629E: $1B
    nop                                           ; $629F: $00
    rlca                                          ; $62A0: $07
    ld bc, $048B                                  ; $62A1: $01 $8B $04
    di                                            ; $62A4: $F3
    dec c                                         ; $62A5: $0D
    rst RST_38                                    ; $62A6: $FF
    ld [hl], c                                    ; $62A7: $71
    rst RST_38                                    ; $62A8: $FF
    ld hl, sp-$07                                 ; $62A9: $F8 $F9
    ld h, [hl]                                    ; $62AB: $66
    ld a, a                                       ; $62AC: $7F
    ld bc, $1EBF                                  ; $62AD: $01 $BF $1E
    sbc a                                         ; $62B0: $9F
    nop                                           ; $62B1: $00
    rst RST_38                                    ; $62B2: $FF
    rrca                                          ; $62B3: $0F
    rst RST_38                                    ; $62B4: $FF
    cp [hl]                                       ; $62B5: $BE
    rst RST_38                                    ; $62B6: $FF
    add d                                         ; $62B7: $82
    db $E3                                        ; $62B8: $E3
    nop                                           ; $62B9: $00
    sbc a                                         ; $62BA: $9F
    ld bc, $1D7F                                  ; $62BB: $01 $7F $1D
    rst RST_38                                    ; $62BE: $FF
    ld a, [hl]                                    ; $62BF: $7E
    ldh a, [$FF60]                                ; $62C0: $F0 $60
    ldh [$FFC0], a                                ; $62C2: $E0 $C0
    ldh [$FF80], a                                ; $62C4: $E0 $80
    ldh [$FFC0], a                                ; $62C6: $E0 $C0
    ldh a, [$FFE0]                                ; $62C8: $F0 $E0
    ld hl, sp-$10                                 ; $62CA: $F8 $F0
    call c, $CCF8                                 ; $62CC: $DC $F8 $CC
    jr c, jr_015_6297                             ; $62CF: $38 $C6

    ld a, h                                       ; $62D1: $7C
    add d                                         ; $62D2: $82
    db $FC                                        ; $62D3: $FC
    add e                                         ; $62D4: $83
    cp $81                                        ; $62D5: $FE $81
    cp $C1                                        ; $62D7: $FE $C1
    rst RST_38                                    ; $62D9: $FF
    pop bc                                        ; $62DA: $C1
    rst RST_38                                    ; $62DB: $FF
    ld hl, $01FF                                  ; $62DC: $21 $FF $01
    cp $00                                        ; $62DF: $FE $00
    nop                                           ; $62E1: $00
    rra                                           ; $62E2: $1F
    nop                                           ; $62E3: $00
    inc h                                         ; $62E4: $24
    dec de                                        ; $62E5: $1B
    ccf                                           ; $62E6: $3F
    dec de                                        ; $62E7: $1B
    rst RST_38                                    ; $62E8: $FF
    rlca                                          ; $62E9: $07
    rst RST_38                                    ; $62EA: $FF
    ld d, b                                       ; $62EB: $50
    rst RST_38                                    ; $62EC: $FF
    ld e, e                                       ; $62ED: $5B
    rst RST_38                                    ; $62EE: $FF
    db $EB                                        ; $62EF: $EB
    rst RST_38                                    ; $62F0: $FF
    db $EC                                        ; $62F1: $EC
    db $FC                                        ; $62F2: $FC
    ldh [$FFE0], a                                ; $62F3: $E0 $E0
    nop                                           ; $62F5: $00
    ret nz                                        ; $62F6: $C0

    add b                                         ; $62F7: $80
    ret nz                                        ; $62F8: $C0

    add b                                         ; $62F9: $80
    ret nz                                        ; $62FA: $C0

    add b                                         ; $62FB: $80
    add b                                         ; $62FC: $80
    nop                                           ; $62FD: $00
    add b                                         ; $62FE: $80
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
    add b                                         ; $6312: $80
    nop                                           ; $6313: $00
    add b                                         ; $6314: $80
    nop                                           ; $6315: $00
    add b                                         ; $6316: $80
    nop                                           ; $6317: $00
    ld b, b                                       ; $6318: $40
    add b                                         ; $6319: $80
    ld b, b                                       ; $631A: $40
    add b                                         ; $631B: $80
    ld b, b                                       ; $631C: $40
    add b                                         ; $631D: $80
    add b                                         ; $631E: $80
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
    nop                                           ; $632A: $00
    nop                                           ; $632B: $00
    nop                                           ; $632C: $00
    nop                                           ; $632D: $00
    nop                                           ; $632E: $00
    nop                                           ; $632F: $00
    nop                                           ; $6330: $00
    nop                                           ; $6331: $00
    ld l, [hl]                                    ; $6332: $6E
    nop                                           ; $6333: $00
    cp $6C                                        ; $6334: $FE $6C
    cp $2C                                        ; $6336: $FE $2C
    ld a, h                                       ; $6338: $7C
    sbc b                                         ; $6339: $98
    ld a, h                                       ; $633A: $7C
    or b                                          ; $633B: $B0
    db $FC                                        ; $633C: $FC

jr_015_633D:
    jr c, jr_015_633D                             ; $633D: $38 $FE

    inc e                                         ; $633F: $1C
    nop                                           ; $6340: $00
    nop                                           ; $6341: $00
    nop                                           ; $6342: $00
    nop                                           ; $6343: $00
    ld bc, $0100                                  ; $6344: $01 $00 $01
    nop                                           ; $6347: $00
    inc bc                                        ; $6348: $03
    nop                                           ; $6349: $00
    dec b                                         ; $634A: $05
    ld [bc], a                                    ; $634B: $02
    add hl, bc                                    ; $634C: $09
    ld b, $0F                                     ; $634D: $06 $0F
    ld bc, $0F7F                                  ; $634F: $01 $7F $0F
    cp a                                          ; $6352: $BF
    ld e, h                                       ; $6353: $5C
    db $FD                                        ; $6354: $FD
    ld a, [de]                                    ; $6355: $1A
    ld a, e                                       ; $6356: $7B
    dec [hl]                                      ; $6357: $35
    ccf                                           ; $6358: $3F
    ld [bc], a                                    ; $6359: $02
    ld b, $00                                     ; $635A: $06 $00
    nop                                           ; $635C: $00
    nop                                           ; $635D: $00
    nop                                           ; $635E: $00
    nop                                           ; $635F: $00
    nop                                           ; $6360: $00
    nop                                           ; $6361: $00
    ret nz                                        ; $6362: $C0

    nop                                           ; $6363: $00
    ldh a, [$FFC0]                                ; $6364: $F0 $C0
    ld hl, sp-$50                                 ; $6366: $F8 $B0
    ld sp, hl                                     ; $6368: $F9
    ld [hl], b                                    ; $6369: $70
    di                                            ; $636A: $F3
    pop hl                                        ; $636B: $E1
    db $E3                                        ; $636C: $E3
    pop bc                                        ; $636D: $C1
    rst RST_38                                    ; $636E: $FF
    db $E3                                        ; $636F: $E3
    rst RST_38                                    ; $6370: $FF
    ei                                            ; $6371: $FB
    rst RST_38                                    ; $6372: $FF
    rst RST_38                                    ; $6373: $FF
    pop hl                                        ; $6374: $E1
    rst RST_38                                    ; $6375: $FF
    ld hl, sp-$79                                 ; $6376: $F8 $87
    add a                                         ; $6378: $87
    nop                                           ; $6379: $00
    ld bc, $0000                                  ; $637A: $01 $00 $00
    nop                                           ; $637D: $00
    nop                                           ; $637E: $00
    nop                                           ; $637F: $00
    db $FC                                        ; $6380: $FC
    ld a, b                                       ; $6381: $78
    db $FC                                        ; $6382: $FC
    ret c                                         ; $6383: $D8

    rst RST_38                                    ; $6384: $FF
    ret c                                         ; $6385: $D8

    rst RST_38                                    ; $6386: $FF
    add c                                         ; $6387: $81
    rst RST_18                                    ; $6388: $DF
    cp [hl]                                       ; $6389: $BE
    rst RST_18                                    ; $638A: $DF
    cp [hl]                                       ; $638B: $BE
    rst RST_18                                    ; $638C: $DF
    cp [hl]                                       ; $638D: $BE
    rst RST_38                                    ; $638E: $FF
    call nz, Call_000_15FF                        ; $638F: $C4 $FF $15
    rst RST_18                                    ; $6392: $DF
    or d                                          ; $6393: $B2
    rst RST_18                                    ; $6394: $DF
    cp [hl]                                       ; $6395: $BE
    rst RST_18                                    ; $6396: $DF
    ld a, $FF                                     ; $6397: $3E $FF
    ld b, b                                       ; $6399: $40
    or a                                          ; $639A: $B7
    ld l, h                                       ; $639B: $6C
    ld a, l                                       ; $639C: $7D
    nop                                           ; $639D: $00
    nop                                           ; $639E: $00
    nop                                           ; $639F: $00
    ldh [$FF80], a                                ; $63A0: $E0 $80
    ld hl, sp-$20                                 ; $63A2: $F8 $E0
    db $FC                                        ; $63A4: $FC
    ld hl, sp-$01                                 ; $63A5: $F8 $FF
    db $FC                                        ; $63A7: $FC
    rst RST_38                                    ; $63A8: $FF
    rst RST_38                                    ; $63A9: $FF
    rst RST_38                                    ; $63AA: $FF
    cp a                                          ; $63AB: $BF
    rst RST_38                                    ; $63AC: $FF
    ld a, a                                       ; $63AD: $7F
    rst RST_38                                    ; $63AE: $FF
    ld a, l                                       ; $63AF: $7D
    rst RST_38                                    ; $63B0: $FF
    db $FD                                        ; $63B1: $FD
    rst RST_38                                    ; $63B2: $FF
    db $FD                                        ; $63B3: $FD
    rst RST_38                                    ; $63B4: $FF
    db $FC                                        ; $63B5: $FC
    rst RST_38                                    ; $63B6: $FF
    ei                                            ; $63B7: $FB
    rst RST_38                                    ; $63B8: $FF
    ld a, a                                       ; $63B9: $7F
    rst RST_38                                    ; $63BA: $FF
    ld a, [hl]                                    ; $63BB: $7E
    ld a, [hl]                                    ; $63BC: $7E
    inc e                                         ; $63BD: $1C
    inc e                                         ; $63BE: $1C
    nop                                           ; $63BF: $00
    nop                                           ; $63C0: $00
    nop                                           ; $63C1: $00
    nop                                           ; $63C2: $00
    nop                                           ; $63C3: $00
    ld bc, $FF00                                  ; $63C4: $01 $00 $FF
    ld bc, $FFFF                                  ; $63C7: $01 $FF $FF
    rst RST_38                                    ; $63CA: $FF
    rst RST_38                                    ; $63CB: $FF
    rst RST_38                                    ; $63CC: $FF
    db $FC                                        ; $63CD: $FC
    db $FC                                        ; $63CE: $FC
    ldh a, [$FFF8]                                ; $63CF: $F0 $F8
    nop                                           ; $63D1: $00
    rst RST_38                                    ; $63D2: $FF
    ldh [rIE], a                                  ; $63D3: $E0 $FF
    ldh a, [rIE]                                  ; $63D5: $F0 $FF
    sbc b                                         ; $63D7: $98
    sbc [hl]                                      ; $63D8: $9E
    inc c                                         ; $63D9: $0C
    rrca                                          ; $63DA: $0F
    inc b                                         ; $63DB: $04
    ld b, $01                                     ; $63DC: $06 $01
    ld bc, $0000                                  ; $63DE: $01 $00 $00
    nop                                           ; $63E1: $00
    inc a                                         ; $63E2: $3C
    nop                                           ; $63E3: $00
    cp $3C                                        ; $63E4: $FE $3C
    db $FC                                        ; $63E6: $FC
    ldh a, [$FFF0]                                ; $63E7: $F0 $F0
    ret nz                                        ; $63E9: $C0

    ret nz                                        ; $63EA: $C0

    nop                                           ; $63EB: $00
    nop                                           ; $63EC: $00
    nop                                           ; $63ED: $00
    nop                                           ; $63EE: $00
    nop                                           ; $63EF: $00
    nop                                           ; $63F0: $00
    nop                                           ; $63F1: $00
    add b                                         ; $63F2: $80
    nop                                           ; $63F3: $00
    ret nz                                        ; $63F4: $C0

    nop                                           ; $63F5: $00
    ldh [rP1], a                                  ; $63F6: $E0 $00
    ld [hl], b                                    ; $63F8: $70
    nop                                           ; $63F9: $00
    nop                                           ; $63FA: $00
    nop                                           ; $63FB: $00
    add b                                         ; $63FC: $80
    nop                                           ; $63FD: $00
    add b                                         ; $63FE: $80
    nop                                           ; $63FF: $00
    nop                                           ; $6400: $00
    nop                                           ; $6401: $00
    nop                                           ; $6402: $00
    nop                                           ; $6403: $00
    nop                                           ; $6404: $00
    nop                                           ; $6405: $00
    nop                                           ; $6406: $00
    nop                                           ; $6407: $00
    nop                                           ; $6408: $00
    nop                                           ; $6409: $00
    nop                                           ; $640A: $00
    nop                                           ; $640B: $00
    nop                                           ; $640C: $00
    nop                                           ; $640D: $00
    nop                                           ; $640E: $00
    nop                                           ; $640F: $00
    nop                                           ; $6410: $00
    nop                                           ; $6411: $00
    nop                                           ; $6412: $00
    nop                                           ; $6413: $00
    nop                                           ; $6414: $00
    nop                                           ; $6415: $00
    ld [hl], b                                    ; $6416: $70
    nop                                           ; $6417: $00
    ld hl, sp+$70                                 ; $6418: $F8 $70
    ld hl, sp-$10                                 ; $641A: $F8 $F0
    ld hl, sp-$50                                 ; $641C: $F8 $B0
    rst RST_38                                    ; $641E: $FF
    or b                                          ; $641F: $B0
    rrca                                          ; $6420: $0F
    inc bc                                        ; $6421: $03
    rrca                                          ; $6422: $0F
    inc b                                         ; $6423: $04
    rra                                           ; $6424: $1F
    dec c                                         ; $6425: $0D
    rra                                           ; $6426: $1F
    dec c                                         ; $6427: $0D
    rra                                           ; $6428: $1F
    dec c                                         ; $6429: $0D
    rrca                                          ; $642A: $0F
    ld b, $0F                                     ; $642B: $06 $0F
    ld b, $07                                     ; $642D: $06 $07
    inc bc                                        ; $642F: $03
    inc bc                                        ; $6430: $03
    ld bc, $0001                                  ; $6431: $01 $01 $00
    inc bc                                        ; $6434: $03
    ld bc, $030F                                  ; $6435: $01 $0F $03
    ccf                                           ; $6438: $3F
    ld c, $5F                                     ; $6439: $0E $5F
    jr z, jr_015_64B7                             ; $643B: $28 $7A

    ld bc, $0003                                  ; $643D: $01 $03 $00
    rst RST_38                                    ; $6440: $FF
    sbc h                                         ; $6441: $9C
    db $FC                                        ; $6442: $FC
    ld b, e                                       ; $6443: $43
    rst RST_38                                    ; $6444: $FF
    db $FC                                        ; $6445: $FC
    rst RST_38                                    ; $6446: $FF
    rst RST_38                                    ; $6447: $FF
    rst RST_38                                    ; $6448: $FF
    rst RST_38                                    ; $6449: $FF
    rst RST_38                                    ; $644A: $FF
    rst RST_38                                    ; $644B: $FF
    rst RST_38                                    ; $644C: $FF
    rst RST_30                                    ; $644D: $F7
    rst RST_38                                    ; $644E: $FF
    ld a, e                                       ; $644F: $7B
    rst RST_38                                    ; $6450: $FF
    sbc h                                         ; $6451: $9C
    rst RST_38                                    ; $6452: $FF
    call z, $86CF                                 ; $6453: $CC $CF $86
    adc a                                         ; $6456: $8F
    ld b, $3F                                     ; $6457: $06 $3F
    ld c, $FE                                     ; $6459: $0E $FE
    jr c, @-$06                                   ; $645B: $38 $F8

    ld h, b                                       ; $645D: $60
    ldh [rP1], a                                  ; $645E: $E0 $00
    nop                                           ; $6460: $00
    nop                                           ; $6461: $00
    nop                                           ; $6462: $00
    nop                                           ; $6463: $00
    ld bc, $0000                                  ; $6464: $01 $00 $00
    nop                                           ; $6467: $00
    nop                                           ; $6468: $00
    nop                                           ; $6469: $00
    nop                                           ; $646A: $00
    nop                                           ; $646B: $00
    nop                                           ; $646C: $00
    nop                                           ; $646D: $00
    ld bc, $1A00                                  ; $646E: $01 $00 $1A
    ld bc, $186F                                  ; $6471: $01 $6F $18
    cp l                                          ; $6474: $BD
    ld h, e                                       ; $6475: $63
    or a                                          ; $6476: $B7
    ld l, h                                       ; $6477: $6C
    ld a, h                                       ; $6478: $7C
    dec bc                                        ; $6479: $0B
    cp a                                          ; $647A: $BF
    ld h, e                                       ; $647B: $63
    or a                                          ; $647C: $B7
    ld l, e                                       ; $647D: $6B
    ld a, a                                       ; $647E: $7F
    dec bc                                        ; $647F: $0B
    inc a                                         ; $6480: $3C
    dec de                                        ; $6481: $1B
    rst RST_38                                    ; $6482: $FF
    inc e                                         ; $6483: $1C
    rst RST_38                                    ; $6484: $FF
    rst RST_38                                    ; $6485: $FF
    rst RST_38                                    ; $6486: $FF
    rra                                           ; $6487: $1F
    ccf                                           ; $6488: $3F
    dec b                                         ; $6489: $05
    ld e, a                                       ; $648A: $5F
    dec a                                         ; $648B: $3D
    cp l                                          ; $648C: $BD
    ld a, b                                       ; $648D: $78
    ld a, h                                       ; $648E: $7C
    ld hl, sp+$7E                                 ; $648F: $F8 $7E
    db $FC                                        ; $6491: $FC
    rst RST_38                                    ; $6492: $FF
    ld a, [hl]                                    ; $6493: $7E
    rst RST_38                                    ; $6494: $FF
    cp e                                          ; $6495: $BB
    rst RST_38                                    ; $6496: $FF
    ld hl, $9E61                                  ; $6497: $21 $61 $9E
    rst RST_38                                    ; $649A: $FF
    sbc $FF                                       ; $649B: $DE $FF
    inc e                                         ; $649D: $1C
    db $FC                                        ; $649E: $FC
    ld a, e                                       ; $649F: $7B
    add b                                         ; $64A0: $80
    nop                                           ; $64A1: $00
    add b                                         ; $64A2: $80
    nop                                           ; $64A3: $00
    ldh [rP1], a                                  ; $64A4: $E0 $00
    ldh a, [$FF60]                                ; $64A6: $F0 $60
    ldh a, [$FFA0]                                ; $64A8: $F0 $A0
    ldh [$FFC0], a                                ; $64AA: $E0 $C0
    ldh [$FFC0], a                                ; $64AC: $E0 $C0
    ret nz                                        ; $64AE: $C0

    nop                                           ; $64AF: $00
    nop                                           ; $64B0: $00
    nop                                           ; $64B1: $00
    nop                                           ; $64B2: $00
    nop                                           ; $64B3: $00
    nop                                           ; $64B4: $00
    nop                                           ; $64B5: $00
    add b                                         ; $64B6: $80

jr_015_64B7:
    nop                                           ; $64B7: $00
    add b                                         ; $64B8: $80
    nop                                           ; $64B9: $00
    ret nz                                        ; $64BA: $C0

    add b                                         ; $64BB: $80
    ret nz                                        ; $64BC: $C0

    add b                                         ; $64BD: $80
    ret nz                                        ; $64BE: $C0

    nop                                           ; $64BF: $00
    ld b, b                                       ; $64C0: $40
    add b                                         ; $64C1: $80
    add c                                         ; $64C2: $81
    nop                                           ; $64C3: $00
    ld b, a                                       ; $64C4: $47
    add c                                         ; $64C5: $81
    rst RST_38                                    ; $64C6: $FF
    rlca                                          ; $64C7: $07
    rst RST_38                                    ; $64C8: $FF
    ld a, a                                       ; $64C9: $7F
    rst RST_38                                    ; $64CA: $FF
    cp a                                          ; $64CB: $BF
    rst RST_38                                    ; $64CC: $FF
    cp a                                          ; $64CD: $BF
    rst RST_38                                    ; $64CE: $FF
    cp [hl]                                       ; $64CF: $BE
    cp $78                                        ; $64D0: $FE $78
    ld hl, sp-$20                                 ; $64D2: $F8 $E0
    ldh [rP1], a                                  ; $64D4: $E0 $00
    nop                                           ; $64D6: $00
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
    nop                                           ; $64EC: $00

jr_015_64ED:
    nop                                           ; $64ED: $00
    ld c, $00                                     ; $64EE: $0E $00
    ld a, $0C                                     ; $64F0: $3E $0C
    ld a, h                                       ; $64F2: $7C
    jr c, jr_015_64ED                             ; $64F3: $38 $F8

    ld [hl], b                                    ; $64F5: $70
    ldh a, [$FFE0]                                ; $64F6: $F0 $E0
    ldh [$FFC0], a                                ; $64F8: $E0 $C0
    ldh [$FFC0], a                                ; $64FA: $E0 $C0
    ret nz                                        ; $64FC: $C0

    add b                                         ; $64FD: $80
    add b                                         ; $64FE: $80
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
    nop                                           ; $6512: $00
    nop                                           ; $6513: $00
    jr nc, jr_015_6516                            ; $6514: $30 $00

jr_015_6516:
    ld l, b                                       ; $6516: $68
    db $10                                        ; $6517: $10
    ld hl, sp+$40                                 ; $6518: $F8 $40
    ld hl, sp+$70                                 ; $651A: $F8 $70
    ld a, l                                       ; $651C: $7D
    jr c, jr_015_655D                             ; $651D: $38 $3E

    dec e                                         ; $651F: $1D
    di                                            ; $6520: $F3
    rrca                                          ; $6521: $0F
    inc [hl]                                      ; $6522: $34
    rrca                                          ; $6523: $0F
    dec l                                         ; $6524: $2D
    rra                                           ; $6525: $1F
    dec l                                         ; $6526: $2D
    rra                                           ; $6527: $1F
    dec l                                         ; $6528: $2D
    rra                                           ; $6529: $1F
    ld [hl], $0F                                  ; $652A: $36 $0F
    ld d, $0F                                     ; $652C: $16 $0F
    dec de                                        ; $652E: $1B
    rlca                                          ; $652F: $07
    dec c                                         ; $6530: $0D
    inc bc                                        ; $6531: $03
    ld b, $01                                     ; $6532: $06 $01
    dec e                                         ; $6534: $1D
    inc bc                                        ; $6535: $03
    ld [hl], e                                    ; $6536: $73
    rrca                                          ; $6537: $0F
    adc $3F                                       ; $6538: $CE $3F
    adc b                                         ; $653A: $88
    ld a, a                                       ; $653B: $7F
    add h                                         ; $653C: $84
    ld a, e                                       ; $653D: $7B
    inc b                                         ; $653E: $04
    inc bc                                        ; $653F: $03
    sbc h                                         ; $6540: $9C
    rst RST_38                                    ; $6541: $FF
    ld b, b                                       ; $6542: $40
    rst RST_38                                    ; $6543: $FF
    db $FC                                        ; $6544: $FC
    rst RST_38                                    ; $6545: $FF
    rst RST_38                                    ; $6546: $FF
    rst RST_38                                    ; $6547: $FF
    rst RST_38                                    ; $6548: $FF
    rst RST_38                                    ; $6549: $FF
    rst RST_38                                    ; $654A: $FF
    rst RST_38                                    ; $654B: $FF
    rst RST_30                                    ; $654C: $F7
    rst RST_38                                    ; $654D: $FF
    ld a, e                                       ; $654E: $7B
    rst RST_38                                    ; $654F: $FF
    sbc h                                         ; $6550: $9C
    rst RST_38                                    ; $6551: $FF
    call z, $B6FF                                 ; $6552: $CC $FF $B6
    rst RST_08                                    ; $6555: $CF
    halt                                          ; $6556: $76
    adc a                                         ; $6557: $8F
    adc $3F                                       ; $6558: $CE $3F
    add hl, sp                                    ; $655A: $39
    cp $67                                        ; $655B: $FE $67

jr_015_655D:
    ld hl, sp+$1C                                 ; $655D: $F8 $1C
    ldh [rNR44], a                                ; $655F: $E0 $23
    ret nz                                        ; $6561: $C0

    ld l, [hl]                                    ; $6562: $6E
    add c                                         ; $6563: $81
    add hl, sp                                    ; $6564: $39
    rst RST_00                                    ; $6565: $C7
    rlca                                          ; $6566: $07
    rst RST_38                                    ; $6567: $FF
    ld a, a                                       ; $6568: $7F
    rst RST_38                                    ; $6569: $FF
    cp a                                          ; $656A: $BF
    rst RST_38                                    ; $656B: $FF
    cp a                                          ; $656C: $BF
    rst RST_38                                    ; $656D: $FF
    cp [hl]                                       ; $656E: $BE
    rst RST_38                                    ; $656F: $FF
    ld a, c                                       ; $6570: $79
    cp $E7                                        ; $6571: $FE $E7
    ld hl, sp+$1C                                 ; $6573: $F8 $1C
    ldh [$FFF0], a                                ; $6575: $E0 $F0
    nop                                           ; $6577: $00
    ret nz                                        ; $6578: $C0

    nop                                           ; $6579: $00
    add b                                         ; $657A: $80
    nop                                           ; $657B: $00
    add b                                         ; $657C: $80
    nop                                           ; $657D: $00
    nop                                           ; $657E: $00
    nop                                           ; $657F: $00
    nop                                           ; $6580: $00
    nop                                           ; $6581: $00

jr_015_6582:
    ld bc, $0100                                  ; $6582: $01 $00 $01
    nop                                           ; $6585: $00
    ld bc, $0000                                  ; $6586: $01 $00 $00
    nop                                           ; $6589: $00
    nop                                           ; $658A: $00
    nop                                           ; $658B: $00
    ld bc, $1F00                                  ; $658C: $01 $00 $1F
    nop                                           ; $658F: $00
    ld [hl], d                                    ; $6590: $72
    dec c                                         ; $6591: $0D
    call nz, $903F                                ; $6592: $C4 $3F $90
    ld a, a                                       ; $6595: $7F
    sub d                                         ; $6596: $92
    ld a, a                                       ; $6597: $7F
    call nz, $913F                                ; $6598: $C4 $3F $91
    ld a, a                                       ; $659B: $7F
    sub c                                         ; $659C: $91
    ld a, a                                       ; $659D: $7F
    push bc                                       ; $659E: $C5
    ccf                                           ; $659F: $3F
    db $EC                                        ; $65A0: $EC
    rra                                           ; $65A1: $1F
    adc [hl]                                      ; $65A2: $8E
    ld a, a                                       ; $65A3: $7F
    ld a, a                                       ; $65A4: $7F
    rst RST_38                                    ; $65A5: $FF
    adc a                                         ; $65A6: $8F
    ld a, a                                       ; $65A7: $7F
    ldh [c], a                                    ; $65A8: $E2
    rra                                           ; $65A9: $1F
    adc $3F                                       ; $65AA: $CE $3F
    sbc l                                         ; $65AC: $9D
    ld a, [hl]                                    ; $65AD: $7E
    dec a                                         ; $65AE: $3D
    cp $3E                                        ; $65AF: $FE $3E
    rst RST_38                                    ; $65B1: $FF
    ccf                                           ; $65B2: $3F
    rst RST_38                                    ; $65B3: $FF
    db $DD                                        ; $65B4: $DD
    rst RST_38                                    ; $65B5: $FF
    db $10                                        ; $65B6: $10
    rst RST_38                                    ; $65B7: $FF
    nop                                           ; $65B8: $00
    rst RST_38                                    ; $65B9: $FF
    rst RST_28                                    ; $65BA: $EF
    rst RST_38                                    ; $65BB: $FF
    adc [hl]                                      ; $65BC: $8E
    rst RST_38                                    ; $65BD: $FF
    cp h                                          ; $65BE: $BC
    rst RST_38                                    ; $65BF: $FF
    jr c, jr_015_6582                             ; $65C0: $38 $C0

    inc c                                         ; $65C2: $0C
    ldh a, [$FFB4]                                ; $65C3: $F0 $B4
    ld hl, sp-$2C                                 ; $65C5: $F8 $D4
    ld hl, sp-$14                                 ; $65C7: $F8 $EC
    ldh a, [$FFE8]                                ; $65C9: $F0 $E8
    ldh a, [rNR23]                                ; $65CB: $F0 $18
    ldh [$FFF0], a                                ; $65CD: $E0 $F0
    nop                                           ; $65CF: $00
    ret nz                                        ; $65D0: $C0

    nop                                           ; $65D1: $00
    ld h, b                                       ; $65D2: $60
    add b                                         ; $65D3: $80
    and b                                         ; $65D4: $A0
    ret nz                                        ; $65D5: $C0

    or b                                          ; $65D6: $B0
    ret nz                                        ; $65D7: $C0

    ld d, b                                       ; $65D8: $50

jr_015_65D9:
    ldh [$FF50], a                                ; $65D9: $E0 $50
    ldh [rNR10], a                                ; $65DB: $E0 $10
    ldh [rNR11], a                                ; $65DD: $E0 $11
    ldh [rP1], a                                  ; $65DF: $E0 $00
    nop                                           ; $65E1: $00
    nop                                           ; $65E2: $00
    nop                                           ; $65E3: $00
    nop                                           ; $65E4: $00
    nop                                           ; $65E5: $00
    rra                                           ; $65E6: $1F
    nop                                           ; $65E7: $00
    ld [hl], c                                    ; $65E8: $71
    ld c, $CD                                     ; $65E9: $0E $CD
    ld a, $BB                                     ; $65EB: $3E $BB
    ld a, h                                       ; $65ED: $7C
    halt                                          ; $65EE: $76
    ld hl, sp-$14                                 ; $65EF: $F8 $EC
    ldh a, [$FFD8]                                ; $65F1: $F0 $D8
    ldh [$FFD0], a                                ; $65F3: $E0 $D0
    ldh [$FFB0], a                                ; $65F5: $E0 $B0
    ret nz                                        ; $65F7: $C0

    ld h, b                                       ; $65F8: $60
    add b                                         ; $65F9: $80
    ret nz                                        ; $65FA: $C0

    nop                                           ; $65FB: $00
    add b                                         ; $65FC: $80
    nop                                           ; $65FD: $00
    nop                                           ; $65FE: $00
    nop                                           ; $65FF: $00

jr_015_6600:
    nop                                           ; $6600: $00
    nop                                           ; $6601: $00
    nop                                           ; $6602: $00
    nop                                           ; $6603: $00
    nop                                           ; $6604: $00
    nop                                           ; $6605: $00
    nop                                           ; $6606: $00
    nop                                           ; $6607: $00
    nop                                           ; $6608: $00
    nop                                           ; $6609: $00
    nop                                           ; $660A: $00
    nop                                           ; $660B: $00
    nop                                           ; $660C: $00
    nop                                           ; $660D: $00
    nop                                           ; $660E: $00
    nop                                           ; $660F: $00
    nop                                           ; $6610: $00
    nop                                           ; $6611: $00
    inc a                                         ; $6612: $3C
    nop                                           ; $6613: $00
    ld h, [hl]                                    ; $6614: $66
    jr jr_015_65D9                                ; $6615: $18 $C2

    inc a                                         ; $6617: $3C
    and d                                         ; $6618: $A2
    ld a, h                                       ; $6619: $7C
    cp e                                          ; $661A: $BB
    ld a, h                                       ; $661B: $7C
    db $DD                                        ; $661C: $DD
    ld a, $6E                                     ; $661D: $3E $6E
    rra                                           ; $661F: $1F
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
    nop                                           ; $6634: $00
    nop                                           ; $6635: $00
    nop                                           ; $6636: $00
    nop                                           ; $6637: $00
    nop                                           ; $6638: $00
    nop                                           ; $6639: $00
    ret nz                                        ; $663A: $C0

    nop                                           ; $663B: $00
    ld h, b                                       ; $663C: $60
    add b                                         ; $663D: $80
    jr nc, jr_015_6600                            ; $663E: $30 $C0

    ld [hl], $00                                  ; $6640: $36 $00
    ld c, c                                       ; $6642: $49
    ld [hl], $FF                                  ; $6643: $36 $FF
    ld [hl], $FF                                  ; $6645: $36 $FF
    jr nc, @-$06                                  ; $6647: $30 $F8

    ld b, a                                       ; $6649: $47
    rst RST_38                                    ; $664A: $FF
    scf                                           ; $664B: $37
    cp a                                          ; $664C: $BF
    ld b, b                                       ; $664D: $40
    cp a                                          ; $664E: $BF
    ld a, [hl]                                    ; $664F: $7E
    cp a                                          ; $6650: $BF
    ld a, [hl]                                    ; $6651: $7E
    cp a                                          ; $6652: $BF
    ld a, [hl]                                    ; $6653: $7E
    rst RST_38                                    ; $6654: $FF
    dec a                                         ; $6655: $3D
    cp a                                          ; $6656: $BF
    ld b, c                                       ; $6657: $41
    cp l                                          ; $6658: $BD
    ld c, b                                       ; $6659: $48
    ld e, [hl]                                    ; $665A: $5E
    add hl, bc                                    ; $665B: $09
    rra                                           ; $665C: $1F
    ld a, [bc]                                    ; $665D: $0A
    rra                                           ; $665E: $1F
    ld a, [bc]                                    ; $665F: $0A
    rra                                           ; $6660: $1F
    dec c                                         ; $6661: $0D
    rra                                           ; $6662: $1F
    dec c                                         ; $6663: $0D
    rrca                                          ; $6664: $0F
    ld b, $0F                                     ; $6665: $06 $0F
    ld b, $0E                                     ; $6667: $06 $0E
    dec b                                         ; $6669: $05
    inc c                                         ; $666A: $0C
    inc bc                                        ; $666B: $03
    inc c                                         ; $666C: $0C
    inc bc                                        ; $666D: $03
    ld [$1E07], sp                                ; $666E: $08 $07 $1E
    ld bc, $0E37                                  ; $6671: $01 $37 $0E
    ld e, a                                       ; $6674: $5F
    jr nc, jr_015_66E8                            ; $6675: $30 $71

    ld l, $3F                                     ; $6677: $2E $3F
    rrca                                          ; $6679: $0F
    ld e, a                                       ; $667A: $5F
    inc l                                         ; $667B: $2C
    ld a, a                                       ; $667C: $7F
    dec l                                         ; $667D: $2D
    ccf                                           ; $667E: $3F
    ld c, $7F                                     ; $667F: $0E $7F
    ld sp, $3F7F                                  ; $6681: $31 $7F $3F
    ld a, a                                       ; $6684: $7F
    ccf                                           ; $6685: $3F
    ccf                                           ; $6686: $3F
    rra                                           ; $6687: $1F
    ccf                                           ; $6688: $3F
    ld e, $1F                                     ; $6689: $1E $1F
    rrca                                          ; $668B: $0F
    rrca                                          ; $668C: $0F
    inc bc                                        ; $668D: $03
    rlca                                          ; $668E: $07
    ld bc, $000F                                  ; $668F: $01 $0F $00
    rra                                           ; $6692: $1F
    nop                                           ; $6693: $00
    dec e                                         ; $6694: $1D
    nop                                           ; $6695: $00
    dec sp                                        ; $6696: $3B
    ld bc, $0173                                  ; $6697: $01 $73 $01
    ld h, a                                       ; $669A: $67
    inc bc                                        ; $669B: $03
    ld h, a                                       ; $669C: $67
    ld bc, $0205                                  ; $669D: $01 $05 $02
    add b                                         ; $66A0: $80
    nop                                           ; $66A1: $00
    add b                                         ; $66A2: $80
    nop                                           ; $66A3: $00
    nop                                           ; $66A4: $00
    nop                                           ; $66A5: $00
    nop                                           ; $66A6: $00
    nop                                           ; $66A7: $00
    ret nz                                        ; $66A8: $C0

    nop                                           ; $66A9: $00
    and b                                         ; $66AA: $A0
    ld b, b                                       ; $66AB: $40
    ldh [rP1], a                                  ; $66AC: $E0 $00
    ldh [$FFC0], a                                ; $66AE: $E0 $C0
    ldh a, [$FFE0]                                ; $66B0: $F0 $E0
    add sp, $50                                   ; $66B2: $E8 $50
    ld h, h                                       ; $66B4: $64
    sbc b                                         ; $66B5: $98
    ccf                                           ; $66B6: $3F
    ret nz                                        ; $66B7: $C0

    rst RST_38                                    ; $66B8: $FF
    dec a                                         ; $66B9: $3D
    rst RST_38                                    ; $66BA: $FF
    cp $FF                                        ; $66BB: $FE $FF
    ld [hl], a                                    ; $66BD: $77
    ld a, a                                       ; $66BE: $7F
    rst RST_30                                    ; $66BF: $F7
    ld [hl], a                                    ; $66C0: $77
    ldh [rSVBK], a                                ; $66C1: $E0 $70
    ldh [$FF78], a                                ; $66C3: $E0 $78
    ret nz                                        ; $66C5: $C0

    db $FC                                        ; $66C6: $FC
    ld hl, sp-$04                                 ; $66C7: $F8 $FC
    ld hl, sp-$02                                 ; $66C9: $F8 $FE
    db $EC                                        ; $66CB: $EC
    cp $04                                        ; $66CC: $FE $04
    add a                                         ; $66CE: $87
    ld a, d                                       ; $66CF: $7A
    rst RST_38                                    ; $66D0: $FF
    ld a, d                                       ; $66D1: $7A
    cp $70                                        ; $66D2: $FE $70
    pop af                                        ; $66D4: $F1
    xor $FE                                       ; $66D5: $EE $FE
    ld [hl], b                                    ; $66D7: $70
    pop af                                        ; $66D8: $F1
    adc [hl]                                      ; $66D9: $8E
    cp $E0                                        ; $66DA: $FE $E0
    cp $F4                                        ; $66DC: $FE $F4
    cp $F4                                        ; $66DE: $FE $F4
    cp $F4                                        ; $66E0: $FE $F4
    cp $6C                                        ; $66E2: $FE $6C
    rst RST_38                                    ; $66E4: $FF
    sbc [hl]                                      ; $66E5: $9E
    rst RST_38                                    ; $66E6: $FF
    cp [hl]                                       ; $66E7: $BE

jr_015_66E8:
    rst RST_38                                    ; $66E8: $FF
    sbc $FF                                       ; $66E9: $DE $FF
    rst RST_18                                    ; $66EB: $DF
    rst RST_38                                    ; $66EC: $FF
    rst RST_18                                    ; $66ED: $DF
    rst RST_18                                    ; $66EE: $DF
    adc a                                         ; $66EF: $8F
    rst RST_08                                    ; $66F0: $CF
    add a                                         ; $66F1: $87
    add a                                         ; $66F2: $87
    ld bc, $0081                                  ; $66F3: $01 $81 $00
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
    add b                                         ; $6700: $80
    nop                                           ; $6701: $00
    add b                                         ; $6702: $80
    nop                                           ; $6703: $00
    ret nz                                        ; $6704: $C0

    add b                                         ; $6705: $80
    ldh a, [$FFC0]                                ; $6706: $F0 $C0
    db $FC                                        ; $6708: $FC
    ldh a, [$FFFE]                                ; $6709: $F0 $FE
    ld a, h                                       ; $670B: $7C
    ld a, h                                       ; $670C: $7C
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
    nop                                           ; $6718: $00
    nop                                           ; $6719: $00
    nop                                           ; $671A: $00
    nop                                           ; $671B: $00
    nop                                           ; $671C: $00
    nop                                           ; $671D: $00
    nop                                           ; $671E: $00
    nop                                           ; $671F: $00
    inc bc                                        ; $6720: $03
    nop                                           ; $6721: $00
    nop                                           ; $6722: $00
    nop                                           ; $6723: $00
    nop                                           ; $6724: $00
    nop                                           ; $6725: $00
    nop                                           ; $6726: $00
    nop                                           ; $6727: $00
    nop                                           ; $6728: $00
    nop                                           ; $6729: $00
    nop                                           ; $672A: $00
    nop                                           ; $672B: $00
    nop                                           ; $672C: $00
    nop                                           ; $672D: $00
    nop                                           ; $672E: $00
    nop                                           ; $672F: $00
    nop                                           ; $6730: $00
    nop                                           ; $6731: $00
    nop                                           ; $6732: $00
    nop                                           ; $6733: $00
    nop                                           ; $6734: $00
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
    nop                                           ; $6752: $00
    nop                                           ; $6753: $00
    nop                                           ; $6754: $00
    nop                                           ; $6755: $00
    add b                                         ; $6756: $80
    nop                                           ; $6757: $00
    ret nz                                        ; $6758: $C0

    add b                                         ; $6759: $80
    ret nz                                        ; $675A: $C0

    add b                                         ; $675B: $80
    add b                                         ; $675C: $80
    nop                                           ; $675D: $00
    add b                                         ; $675E: $80
    nop                                           ; $675F: $00
    nop                                           ; $6760: $00
    nop                                           ; $6761: $00
    call c, $FC00                                 ; $6762: $DC $00 $FC
    ret c                                         ; $6765: $D8

    db $FC                                        ; $6766: $FC
    ld e, b                                       ; $6767: $58
    ld hl, sp+$30                                 ; $6768: $F8 $30
    ld hl, sp+$60                                 ; $676A: $F8 $60
    db $FC                                        ; $676C: $FC
    ld [hl], b                                    ; $676D: $70
    rst RST_38                                    ; $676E: $FF
    inc a                                         ; $676F: $3C
    ld a, a                                       ; $6770: $7F
    cp [hl]                                       ; $6771: $BE
    rst RST_38                                    ; $6772: $FF
    ld a, a                                       ; $6773: $7F
    rst RST_38                                    ; $6774: $FF
    adc a                                         ; $6775: $8F
    db $E3                                        ; $6776: $E3
    rra                                           ; $6777: $1F
    pop af                                        ; $6778: $F1
    xor $F1                                       ; $6779: $EE $F1
    cp $F0                                        ; $677B: $FE $F0
    ld a, a                                       ; $677D: $7F
    ld hl, sp+$1F                                 ; $677E: $F8 $1F
    ldh [rP1], a                                  ; $6780: $E0 $00
    ld hl, sp-$20                                 ; $6782: $F8 $E0
    db $FC                                        ; $6784: $FC
    ld hl, sp-$02                                 ; $6785: $F8 $FE
    adc h                                         ; $6787: $8C
    cp a                                          ; $6788: $BF
    ld [hl], b                                    ; $6789: $70
    ld a, a                                       ; $678A: $7F
    add $5F                                       ; $678B: $C6 $5F
    or [hl]                                       ; $678D: $B6
    rst RST_18                                    ; $678E: $DF
    ld [hl], $7F                                  ; $678F: $36 $7F
    add [hl]                                      ; $6791: $86
    ld e, a                                       ; $6792: $5F
    or [hl]                                       ; $6793: $B6
    ld e, a                                       ; $6794: $5F
    or [hl]                                       ; $6795: $B6
    ccf                                           ; $6796: $3F
    call $E01F                                    ; $6797: $CD $1F $E0
    ld a, a                                       ; $679A: $7F
    sbc a                                         ; $679B: $9F
    rst RST_38                                    ; $679C: $FF
    ld a, a                                       ; $679D: $7F
    rst RST_38                                    ; $679E: $FF
    rst RST_38                                    ; $679F: $FF
    pop af                                        ; $67A0: $F1
    nop                                           ; $67A1: $00
    ret                                           ; $67A2: $C9


    or b                                          ; $67A3: $B0
    pop af                                        ; $67A4: $F1
    ret nz                                        ; $67A5: $C0

    pop hl                                        ; $67A6: $E1
    ret nz                                        ; $67A7: $C0

    pop af                                        ; $67A8: $F1
    ret nz                                        ; $67A9: $C0

    ret                                           ; $67AA: $C9


    or b                                          ; $67AB: $B0
    pop af                                        ; $67AC: $F1
    add b                                         ; $67AD: $80
    db $E3                                        ; $67AE: $E3
    ld b, c                                       ; $67AF: $41
    di                                            ; $67B0: $F3
    ld h, c                                       ; $67B1: $61
    rst RST_38                                    ; $67B2: $FF
    or e                                          ; $67B3: $B3
    rst RST_38                                    ; $67B4: $FF
    cp a                                          ; $67B5: $BF
    rst RST_38                                    ; $67B6: $FF
    rst RST_18                                    ; $67B7: $DF
    rst RST_38                                    ; $67B8: $FF
    rst RST_18                                    ; $67B9: $DF
    rst RST_38                                    ; $67BA: $FF
    rst RST_18                                    ; $67BB: $DF
    rst RST_38                                    ; $67BC: $FF
    cp a                                          ; $67BD: $BF
    rst RST_38                                    ; $67BE: $FF
    inc e                                         ; $67BF: $1C
    nop                                           ; $67C0: $00
    nop                                           ; $67C1: $00
    nop                                           ; $67C2: $00
    nop                                           ; $67C3: $00
    nop                                           ; $67C4: $00
    nop                                           ; $67C5: $00
    jr jr_015_67C8                                ; $67C6: $18 $00

jr_015_67C8:
    cpl                                           ; $67C8: $2F
    jr jr_015_6828                                ; $67C9: $18 $5D

    dec sp                                        ; $67CB: $3B
    ld a, e                                       ; $67CC: $7B
    rla                                           ; $67CD: $17
    cp a                                          ; $67CE: $BF
    ld h, [hl]                                    ; $67CF: $66
    rst RST_38                                    ; $67D0: $FF
    ld [hl], b                                    ; $67D1: $70
    ld a, a                                       ; $67D2: $7F
    ld sp, $033F                                  ; $67D3: $31 $3F $03
    dec de                                        ; $67D6: $1B
    rlca                                          ; $67D7: $07
    dec bc                                        ; $67D8: $0B
    rlca                                          ; $67D9: $07
    dec b                                         ; $67DA: $05
    inc bc                                        ; $67DB: $03
    ld [bc], a                                    ; $67DC: $02
    ld bc, $0001                                  ; $67DD: $01 $01 $00
    cp h                                          ; $67E0: $BC
    ld b, e                                       ; $67E1: $43
    rst RST_38                                    ; $67E2: $FF
    inc e                                         ; $67E3: $1C
    ld a, a                                       ; $67E4: $7F
    ld a, $3E                                     ; $67E5: $3E $3E
    add hl, de                                    ; $67E7: $19
    rra                                           ; $67E8: $1F
    nop                                           ; $67E9: $00
    adc a                                         ; $67EA: $8F
    rlca                                          ; $67EB: $07
    add a                                         ; $67EC: $87
    nop                                           ; $67ED: $00
    add e                                         ; $67EE: $83
    ld bc, $01C3                                  ; $67EF: $01 $C3 $01
    rst RST_20                                    ; $67F2: $E7
    jp $E3F7                                      ; $67F3: $C3 $F7 $E3


    rst RST_38                                    ; $67F6: $FF
    or $FE                                        ; $67F7: $F6 $FE
    db $F4                                        ; $67F9: $F4
    db $FC                                        ; $67FA: $FC
    add sp, -$08                                  ; $67FB: $E8 $F8
    ret nz                                        ; $67FD: $C0

    ret nz                                        ; $67FE: $C0

    nop                                           ; $67FF: $00
    jr jr_015_6811                                ; $6800: $18 $0F

    ld [$0807], sp                                ; $6802: $08 $07 $08
    rlca                                          ; $6805: $07
    inc e                                         ; $6806: $1C
    dec bc                                        ; $6807: $0B
    inc a                                         ; $6808: $3C
    dec de                                        ; $6809: $1B
    inc a                                         ; $680A: $3C
    dec de                                        ; $680B: $1B
    ld a, a                                       ; $680C: $7F
    inc a                                         ; $680D: $3C
    ld a, a                                       ; $680E: $7F
    inc a                                         ; $680F: $3C
    ld a, a                                       ; $6810: $7F

jr_015_6811:
    inc a                                         ; $6811: $3C
    ccf                                           ; $6812: $3F
    inc e                                         ; $6813: $1C
    rra                                           ; $6814: $1F
    ld b, $07                                     ; $6815: $06 $07
    ld bc, $003F                                  ; $6817: $01 $3F $00
    ld e, a                                       ; $681A: $5F
    cpl                                           ; $681B: $2F
    ld a, a                                       ; $681C: $7F
    nop                                           ; $681D: $00
    nop                                           ; $681E: $00
    nop                                           ; $681F: $00
    rst RST_38                                    ; $6820: $FF
    rst RST_38                                    ; $6821: $FF
    rst RST_38                                    ; $6822: $FF
    ei                                            ; $6823: $FB
    rst RST_38                                    ; $6824: $FF
    ei                                            ; $6825: $FB
    rst RST_38                                    ; $6826: $FF
    ld a, l                                       ; $6827: $7D

jr_015_6828:
    rst RST_38                                    ; $6828: $FF
    ld e, $FF                                     ; $6829: $1E $FF
    rst RST_00                                    ; $682B: $C7
    rst RST_38                                    ; $682C: $FF
    add e                                         ; $682D: $83
    xor a                                         ; $682E: $AF
    ld d, a                                       ; $682F: $57
    rst RST_38                                    ; $6830: $FF
    nop                                           ; $6831: $00
    nop                                           ; $6832: $00
    nop                                           ; $6833: $00
    nop                                           ; $6834: $00
    nop                                           ; $6835: $00
    nop                                           ; $6836: $00
    nop                                           ; $6837: $00
    nop                                           ; $6838: $00
    nop                                           ; $6839: $00
    nop                                           ; $683A: $00
    nop                                           ; $683B: $00
    nop                                           ; $683C: $00
    nop                                           ; $683D: $00
    nop                                           ; $683E: $00
    nop                                           ; $683F: $00
    sbc h                                         ; $6840: $9C
    nop                                           ; $6841: $00
    ret nz                                        ; $6842: $C0

    add b                                         ; $6843: $80
    ret nz                                        ; $6844: $C0

    add b                                         ; $6845: $80
    add b                                         ; $6846: $80
    nop                                           ; $6847: $00
    nop                                           ; $6848: $00
    nop                                           ; $6849: $00
    nop                                           ; $684A: $00
    nop                                           ; $684B: $00
    nop                                           ; $684C: $00
    nop                                           ; $684D: $00
    nop                                           ; $684E: $00
    nop                                           ; $684F: $00
    nop                                           ; $6850: $00
    nop                                           ; $6851: $00
    nop                                           ; $6852: $00
    nop                                           ; $6853: $00
    nop                                           ; $6854: $00
    nop                                           ; $6855: $00
    nop                                           ; $6856: $00
    nop                                           ; $6857: $00
    nop                                           ; $6858: $00
    nop                                           ; $6859: $00
    nop                                           ; $685A: $00
    nop                                           ; $685B: $00
    nop                                           ; $685C: $00
    nop                                           ; $685D: $00
    nop                                           ; $685E: $00
    nop                                           ; $685F: $00
    add b                                         ; $6860: $80
    nop                                           ; $6861: $00
    ret nz                                        ; $6862: $C0

    add b                                         ; $6863: $80
    ret nz                                        ; $6864: $C0

    add b                                         ; $6865: $80
    ret nz                                        ; $6866: $C0

    add b                                         ; $6867: $80
    ldh [$FFC0], a                                ; $6868: $E0 $C0
    ldh [$FFC0], a                                ; $686A: $E0 $C0
    ldh [$FFC0], a                                ; $686C: $E0 $C0
    ldh [$FFC0], a                                ; $686E: $E0 $C0
    ldh [$FFC0], a                                ; $6870: $E0 $C0
    ldh [$FFC0], a                                ; $6872: $E0 $C0
    ldh [$FFC0], a                                ; $6874: $E0 $C0
    ldh [$FFC0], a                                ; $6876: $E0 $C0
    ldh [$FFC0], a                                ; $6878: $E0 $C0
    ret nz                                        ; $687A: $C0

    add b                                         ; $687B: $80
    ret nz                                        ; $687C: $C0

    add b                                         ; $687D: $80
    add b                                         ; $687E: $80
    nop                                           ; $687F: $00
    nop                                           ; $6880: $00
    nop                                           ; $6881: $00
    nop                                           ; $6882: $00
    nop                                           ; $6883: $00
    nop                                           ; $6884: $00
    nop                                           ; $6885: $00
    nop                                           ; $6886: $00
    nop                                           ; $6887: $00
    nop                                           ; $6888: $00
    nop                                           ; $6889: $00
    nop                                           ; $688A: $00
    nop                                           ; $688B: $00
    nop                                           ; $688C: $00
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
    ld bc, $0100                                  ; $689A: $01 $00 $01
    nop                                           ; $689D: $00
    ldh [c], a                                    ; $689E: $E2
    ld bc, $006E                                  ; $689F: $01 $6E $00
    cp $6C                                        ; $68A2: $FE $6C
    cp $2C                                        ; $68A4: $FE $2C
    ld a, h                                       ; $68A6: $7C
    sbc b                                         ; $68A7: $98
    ld a, h                                       ; $68A8: $7C
    or b                                          ; $68A9: $B0
    cp $38                                        ; $68AA: $FE $38
    rst RST_38                                    ; $68AC: $FF
    ld e, $3F                                     ; $68AD: $1E $3F
    rst RST_18                                    ; $68AF: $DF
    rst RST_38                                    ; $68B0: $FF
    ccf                                           ; $68B1: $3F
    rst RST_38                                    ; $68B2: $FF
    rst RST_00                                    ; $68B3: $C7
    pop af                                        ; $68B4: $F1
    rrca                                          ; $68B5: $0F
    ld hl, sp-$09                                 ; $68B6: $F8 $F7
    ld hl, sp-$01                                 ; $68B8: $F8 $FF
    ld hl, sp+$3F                                 ; $68BA: $F8 $3F
    inc a                                         ; $68BC: $3C
    rrca                                          ; $68BD: $0F
    inc c                                         ; $68BE: $0C
    rlca                                          ; $68BF: $07
    ldh a, [rP1]                                  ; $68C0: $F0 $00
    db $FC                                        ; $68C2: $FC
    ld [hl], b                                    ; $68C3: $70
    cp $FC                                        ; $68C4: $FE $FC
    rst RST_38                                    ; $68C6: $FF
    add $DF                                       ; $68C7: $C6 $DF
    cp b                                          ; $68C9: $B8
    cp a                                          ; $68CA: $BF
    ld h, e                                       ; $68CB: $63
    xor a                                         ; $68CC: $AF
    ld e, e                                       ; $68CD: $5B
    ld l, a                                       ; $68CE: $6F
    sbc e                                         ; $68CF: $9B
    ccf                                           ; $68D0: $3F
    jp $DB2F                                      ; $68D1: $C3 $2F $DB


    cpl                                           ; $68D4: $2F
    db $DB                                        ; $68D5: $DB
    rra                                           ; $68D6: $1F
    and $0F                                       ; $68D7: $E6 $0F
    ldh a, [$FF3F]                                ; $68D9: $F0 $3F
    rst RST_08                                    ; $68DB: $CF
    ld a, a                                       ; $68DC: $7F
    cp a                                          ; $68DD: $BF
    rst RST_38                                    ; $68DE: $FF
    ld a, a                                       ; $68DF: $7F
    add b                                         ; $68E0: $80
    nop                                           ; $68E1: $00
    ld hl, sp+$00                                 ; $68E2: $F8 $00
    db $E4                                        ; $68E4: $E4
    ld e, b                                       ; $68E5: $58
    ld hl, sp+$60                                 ; $68E6: $F8 $60
    ldh a, [$FF60]                                ; $68E8: $F0 $60
    ld hl, sp+$60                                 ; $68EA: $F8 $60

jr_015_68EC:
    db $E4                                        ; $68EC: $E4
    ld e, b                                       ; $68ED: $58
    ld hl, sp-$40                                 ; $68EE: $F8 $C0
    pop af                                        ; $68F0: $F1
    jr nz, jr_015_68EC                            ; $68F1: $20 $F9

    or b                                          ; $68F3: $B0
    rst RST_38                                    ; $68F4: $FF
    reti                                          ; $68F5: $D9


    rst RST_38                                    ; $68F6: $FF
    rst RST_18                                    ; $68F7: $DF
    rst RST_38                                    ; $68F8: $FF
    rst RST_28                                    ; $68F9: $EF
    rst RST_38                                    ; $68FA: $FF
    rst RST_28                                    ; $68FB: $EF
    rst RST_38                                    ; $68FC: $FF
    rst RST_28                                    ; $68FD: $EF
    rst RST_38                                    ; $68FE: $FF
    rst RST_18                                    ; $68FF: $DF
    nop                                           ; $6900: $00
    nop                                           ; $6901: $00
    nop                                           ; $6902: $00
    nop                                           ; $6903: $00
    nop                                           ; $6904: $00
    nop                                           ; $6905: $00
    jr jr_015_6908                                ; $6906: $18 $00

jr_015_6908:
    cpl                                           ; $6908: $2F
    jr jr_015_6968                                ; $6909: $18 $5D

    dec sp                                        ; $690B: $3B
    ld a, e                                       ; $690C: $7B
    rla                                           ; $690D: $17
    cp a                                          ; $690E: $BF
    ld h, [hl]                                    ; $690F: $66
    rst RST_38                                    ; $6910: $FF
    ld [hl], b                                    ; $6911: $70
    ld a, a                                       ; $6912: $7F
    ld sp, $033F                                  ; $6913: $31 $3F $03
    dec de                                        ; $6916: $1B
    rlca                                          ; $6917: $07
    dec bc                                        ; $6918: $0B
    rlca                                          ; $6919: $07
    dec b                                         ; $691A: $05
    inc bc                                        ; $691B: $03
    ld [bc], a                                    ; $691C: $02
    ld bc, $0001                                  ; $691D: $01 $01 $00
    ld [hl], c                                    ; $6920: $71
    nop                                           ; $6921: $00
    ld e, [hl]                                    ; $6922: $5E
    ld hl, $0E7F                                  ; $6923: $21 $7F $0E
    ccf                                           ; $6926: $3F
    rra                                           ; $6927: $1F
    rra                                           ; $6928: $1F
    inc c                                         ; $6929: $0C
    adc a                                         ; $692A: $8F
    nop                                           ; $692B: $00
    add a                                         ; $692C: $87
    inc bc                                        ; $692D: $03
    add e                                         ; $692E: $83
    nop                                           ; $692F: $00
    pop bc                                        ; $6930: $C1
    nop                                           ; $6931: $00
    db $E3                                        ; $6932: $E3
    pop bc                                        ; $6933: $C1
    rst RST_30                                    ; $6934: $F7
    db $E3                                        ; $6935: $E3
    rst RST_38                                    ; $6936: $FF
    or $FE                                        ; $6937: $F6 $FE
    db $F4                                        ; $6939: $F4
    db $FC                                        ; $693A: $FC
    add sp, -$08                                  ; $693B: $E8 $F8
    ret nz                                        ; $693D: $C0

    ret nz                                        ; $693E: $C0

    nop                                           ; $693F: $00
    ld [$0807], sp                                ; $6940: $08 $07 $08
    rlca                                          ; $6943: $07
    inc e                                         ; $6944: $1C
    dec bc                                        ; $6945: $0B
    inc a                                         ; $6946: $3C
    dec de                                        ; $6947: $1B
    inc a                                         ; $6948: $3C
    dec de                                        ; $6949: $1B
    ld a, a                                       ; $694A: $7F
    inc a                                         ; $694B: $3C
    ld a, a                                       ; $694C: $7F
    inc a                                         ; $694D: $3C
    ld a, a                                       ; $694E: $7F
    inc a                                         ; $694F: $3C
    ccf                                           ; $6950: $3F
    inc e                                         ; $6951: $1C
    rra                                           ; $6952: $1F
    ld b, $07                                     ; $6953: $06 $07
    ld bc, $003F                                  ; $6955: $01 $3F $00
    ld e, a                                       ; $6958: $5F
    cpl                                           ; $6959: $2F
    ld a, a                                       ; $695A: $7F
    nop                                           ; $695B: $00
    nop                                           ; $695C: $00
    nop                                           ; $695D: $00
    nop                                           ; $695E: $00
    nop                                           ; $695F: $00
    rst RST_38                                    ; $6960: $FF
    rst RST_38                                    ; $6961: $FF
    rst RST_38                                    ; $6962: $FF
    ei                                            ; $6963: $FB
    rst RST_38                                    ; $6964: $FF
    ei                                            ; $6965: $FB
    rst RST_38                                    ; $6966: $FF
    ld a, l                                       ; $6967: $7D

jr_015_6968:
    rst RST_38                                    ; $6968: $FF
    ld e, $FF                                     ; $6969: $1E $FF
    rst RST_00                                    ; $696B: $C7
    rst RST_38                                    ; $696C: $FF
    add e                                         ; $696D: $83
    xor a                                         ; $696E: $AF
    ld d, a                                       ; $696F: $57
    rst RST_38                                    ; $6970: $FF
    nop                                           ; $6971: $00
    nop                                           ; $6972: $00
    nop                                           ; $6973: $00
    nop                                           ; $6974: $00
    nop                                           ; $6975: $00
    nop                                           ; $6976: $00
    nop                                           ; $6977: $00
    nop                                           ; $6978: $00
    nop                                           ; $6979: $00
    nop                                           ; $697A: $00
    nop                                           ; $697B: $00
    nop                                           ; $697C: $00
    nop                                           ; $697D: $00
    nop                                           ; $697E: $00
    nop                                           ; $697F: $00
    rst RST_38                                    ; $6980: $FF
    inc e                                         ; $6981: $1C
    sbc h                                         ; $6982: $9C
    nop                                           ; $6983: $00
    ret nz                                        ; $6984: $C0

    add b                                         ; $6985: $80
    ret nz                                        ; $6986: $C0

    add b                                         ; $6987: $80
    add b                                         ; $6988: $80
    nop                                           ; $6989: $00
    nop                                           ; $698A: $00
    nop                                           ; $698B: $00
    nop                                           ; $698C: $00
    nop                                           ; $698D: $00
    nop                                           ; $698E: $00
    nop                                           ; $698F: $00
    nop                                           ; $6990: $00
    nop                                           ; $6991: $00
    nop                                           ; $6992: $00
    nop                                           ; $6993: $00
    nop                                           ; $6994: $00
    nop                                           ; $6995: $00
    nop                                           ; $6996: $00
    nop                                           ; $6997: $00
    nop                                           ; $6998: $00
    nop                                           ; $6999: $00
    nop                                           ; $699A: $00
    nop                                           ; $699B: $00
    nop                                           ; $699C: $00
    nop                                           ; $699D: $00
    nop                                           ; $699E: $00
    nop                                           ; $699F: $00
    ld b, b                                       ; $69A0: $40
    nop                                           ; $69A1: $00
    ldh [rLCDC], a                                ; $69A2: $E0 $40
    ldh [rLCDC], a                                ; $69A4: $E0 $40
    ldh [rLCDC], a                                ; $69A6: $E0 $40
    ldh a, [$FF60]                                ; $69A8: $F0 $60
    ldh a, [$FF60]                                ; $69AA: $F0 $60
    ldh a, [$FF60]                                ; $69AC: $F0 $60
    ldh a, [$FF60]                                ; $69AE: $F0 $60
    ldh a, [$FFE0]                                ; $69B0: $F0 $E0
    ldh a, [$FFE0]                                ; $69B2: $F0 $E0
    ldh a, [$FFE0]                                ; $69B4: $F0 $E0
    ldh a, [$FFE0]                                ; $69B6: $F0 $E0
    ldh a, [$FFE0]                                ; $69B8: $F0 $E0
    ldh [$FFC0], a                                ; $69BA: $E0 $C0
    ldh [$FFC0], a                                ; $69BC: $E0 $C0
    ret nz                                        ; $69BE: $C0

    add b                                         ; $69BF: $80
    nop                                           ; $69C0: $00
    nop                                           ; $69C1: $00
    add b                                         ; $69C2: $80
    nop                                           ; $69C3: $00
    ld h, b                                       ; $69C4: $60
    nop                                           ; $69C5: $00
    ld a, b                                       ; $69C6: $78
    jr nz, jr_015_6A07                            ; $69C7: $20 $3E

    jr jr_015_6A02                                ; $69C9: $18 $37

    ld e, $19                                     ; $69CB: $1E $19
    rrca                                          ; $69CD: $0F
    jr jr_015_69DF                                ; $69CE: $18 $0F

    inc c                                         ; $69D0: $0C
    rlca                                          ; $69D1: $07
    inc c                                         ; $69D2: $0C
    rlca                                          ; $69D3: $07
    ld b, $03                                     ; $69D4: $06 $03
    ld b, $03                                     ; $69D6: $06 $03
    inc bc                                        ; $69D8: $03
    ld bc, $0103                                  ; $69D9: $01 $03 $01
    ld bc, $0100                                  ; $69DC: $01 $00 $01

jr_015_69DF:
    nop                                           ; $69DF: $00
    inc bc                                        ; $69E0: $03
    ld bc, $0103                                  ; $69E1: $01 $03 $01
    inc bc                                        ; $69E4: $03
    ld bc, $0103                                  ; $69E5: $01 $03 $01
    inc bc                                        ; $69E8: $03
    ld bc, $0103                                  ; $69E9: $01 $03 $01
    jp $F301                                      ; $69EC: $C3 $01 $F3


    pop bc                                        ; $69EF: $C1
    ccf                                           ; $69F0: $3F
    pop af                                        ; $69F1: $F1
    rrca                                          ; $69F2: $0F
    db $FD                                        ; $69F3: $FD
    inc bc                                        ; $69F4: $03
    rst RST_38                                    ; $69F5: $FF
    nop                                           ; $69F6: $00
    rst RST_38                                    ; $69F7: $FF
    ld bc, $02FE                                  ; $69F8: $01 $FE $02
    db $FD                                        ; $69FB: $FD
    add e                                         ; $69FC: $83
    db $FC                                        ; $69FD: $FC
    add c                                         ; $69FE: $81
    cp $7F                                        ; $69FF: $FE $7F
    ret nc                                        ; $6A01: $D0

jr_015_6A02:
    ld [hl], c                                    ; $6A02: $71
    xor [hl]                                      ; $6A03: $AE
    ld a, a                                       ; $6A04: $7F
    sub a                                         ; $6A05: $97
    ld e, a                                       ; $6A06: $5F

jr_015_6A07:
    xor b                                         ; $6A07: $A8
    ld d, a                                       ; $6A08: $57
    xor l                                         ; $6A09: $AD
    ld [hl], e                                    ; $6A0A: $73
    adc [hl]                                      ; $6A0B: $8E
    adc a                                         ; $6A0C: $8F
    ld [hl], c                                    ; $6A0D: $71
    add b                                         ; $6A0E: $80
    ld a, a                                       ; $6A0F: $7F
    add b                                         ; $6A10: $80
    ld a, a                                       ; $6A11: $7F
    ld b, h                                       ; $6A12: $44
    cp e                                          ; $6A13: $BB
    ld b, e                                       ; $6A14: $43
    cp h                                          ; $6A15: $BC
    ld hl, $F8DE                                  ; $6A16: $21 $DE $F8
    rlca                                          ; $6A19: $07
    db $FC                                        ; $6A1A: $FC
    inc bc                                        ; $6A1B: $03
    ld b, b                                       ; $6A1C: $40
    cp a                                          ; $6A1D: $BF
    rst RST_38                                    ; $6A1E: $FF
    nop                                           ; $6A1F: $00
    cp $83                                        ; $6A20: $FE $83
    adc l                                         ; $6A22: $8D
    halt                                          ; $6A23: $76
    db $FD                                        ; $6A24: $FD
    halt                                          ; $6A25: $76
    cp $69                                        ; $6A26: $FE $69
    ld sp, hl                                     ; $6A28: $F9
    xor $FE                                       ; $6A29: $EE $FE
    ld d, c                                       ; $6A2B: $51
    pop af                                        ; $6A2C: $F1
    ld e, $EF                                     ; $6A2D: $1E $EF
    or b                                          ; $6A2F: $B0
    ld c, b                                       ; $6A30: $48
    rst RST_30                                    ; $6A31: $F7
    ld [$10F7], sp                                ; $6A32: $08 $F7 $10
    rst RST_28                                    ; $6A35: $EF
    ldh [$FF1F], a                                ; $6A36: $E0 $1F
    sbc b                                         ; $6A38: $98
    ld h, a                                       ; $6A39: $67
    ld b, a                                       ; $6A3A: $47
    cp b                                          ; $6A3B: $B8
    ld b, b                                       ; $6A3C: $40
    cp a                                          ; $6A3D: $BF
    add b                                         ; $6A3E: $80
    ld a, a                                       ; $6A3F: $7F
    ld a, a                                       ; $6A40: $7F
    jp c, $DA7F                                   ; $6A41: $DA $7F $DA

    ld a, a                                       ; $6A44: $7F
    sub $7F                                       ; $6A45: $D6 $7F
    sub $7F                                       ; $6A47: $D6 $7F
    jp z, $CA7F                                   ; $6A49: $CA $7F $CA

    ld [hl], a                                    ; $6A4C: $77
    jp c, Jump_015_5AF7                           ; $6A4D: $DA $F7 $5A

    ld h, a                                       ; $6A50: $67
    ld a, [$F74B]                                 ; $6A51: $FA $4B $F7
    ld a, [bc]                                    ; $6A54: $0A
    rst RST_30                                    ; $6A55: $F7
    db $10                                        ; $6A56: $10
    rst RST_28                                    ; $6A57: $EF
    ld h, b                                       ; $6A58: $60
    sbc a                                         ; $6A59: $9F
    add b                                         ; $6A5A: $80
    ld a, a                                       ; $6A5B: $7F
    nop                                           ; $6A5C: $00
    rst RST_38                                    ; $6A5D: $FF
    nop                                           ; $6A5E: $00
    rst RST_38                                    ; $6A5F: $FF
    ld bc, $0300                                  ; $6A60: $01 $00 $03
    ld bc, $0306                                  ; $6A63: $01 $06 $03
    inc c                                         ; $6A66: $0C
    rlca                                          ; $6A67: $07
    add hl, de                                    ; $6A68: $19
    rrca                                          ; $6A69: $0F
    ld sp, $631F                                  ; $6A6A: $31 $1F $63
    ld a, $C3                                     ; $6A6D: $3E $C3
    ld a, [hl]                                    ; $6A6F: $7E
    add [hl]                                      ; $6A70: $86
    db $FC                                        ; $6A71: $FC
    ld b, $FC                                     ; $6A72: $06 $FC
    inc c                                         ; $6A74: $0C
    ld hl, sp+$0C                                 ; $6A75: $F8 $0C
    ld hl, sp+$18                                 ; $6A77: $F8 $18
    ldh a, [rNR23]                                ; $6A79: $F0 $18
    ldh a, [$FF30]                                ; $6A7B: $F0 $30
    ldh [$FF30], a                                ; $6A7D: $E0 $30
    ldh [rP1], a                                  ; $6A7F: $E0 $00
    nop                                           ; $6A81: $00
    nop                                           ; $6A82: $00

jr_015_6A83:
    nop                                           ; $6A83: $00
    nop                                           ; $6A84: $00
    nop                                           ; $6A85: $00
    ld [bc], a                                    ; $6A86: $02
    nop                                           ; $6A87: $00
    inc b                                         ; $6A88: $04
    nop                                           ; $6A89: $00
    inc c                                         ; $6A8A: $0C
    nop                                           ; $6A8B: $00
    jr jr_015_6A8E                                ; $6A8C: $18 $00

jr_015_6A8E:
    jr c, jr_015_6AA0                             ; $6A8E: $38 $10

    ld [hl], b                                    ; $6A90: $70
    jr nz, jr_015_6A83                            ; $6A91: $20 $F0

    ld h, b                                       ; $6A93: $60
    ldh [$FFC0], a                                ; $6A94: $E0 $C0
    ld h, b                                       ; $6A96: $60
    ret nz                                        ; $6A97: $C0

    ret nz                                        ; $6A98: $C0

    add b                                         ; $6A99: $80
    ret nz                                        ; $6A9A: $C0

    add b                                         ; $6A9B: $80
    add b                                         ; $6A9C: $80
    nop                                           ; $6A9D: $00
    add b                                         ; $6A9E: $80
    nop                                           ; $6A9F: $00

jr_015_6AA0:
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
    ld bc, $0000                                  ; $6AAA: $01 $00 $00
    nop                                           ; $6AAD: $00
    nop                                           ; $6AAE: $00
    nop                                           ; $6AAF: $00
    nop                                           ; $6AB0: $00
    nop                                           ; $6AB1: $00
    nop                                           ; $6AB2: $00
    nop                                           ; $6AB3: $00
    ld bc, $0200                                  ; $6AB4: $01 $00 $02
    ld bc, $0384                                  ; $6AB7: $01 $84 $03
    call nz, $EB03                                ; $6ABA: $C4 $03 $EB
    ld b, h                                       ; $6ABD: $44
    db $FD                                        ; $6ABE: $FD
    ld h, e                                       ; $6ABF: $63
    ld hl, sp+$70                                 ; $6AC0: $F8 $70
    ld a, [hl]                                    ; $6AC2: $7E
    jr c, jr_015_6B04                             ; $6AC3: $38 $3F

    ld e, $3F                                     ; $6AC5: $1E $3F
    add hl, de                                    ; $6AC7: $19
    rst RST_38                                    ; $6AC8: $FF
    dec de                                        ; $6AC9: $1B
    rst RST_38                                    ; $6ACA: $FF
    rst RST_38                                    ; $6ACB: $FF
    rst RST_38                                    ; $6ACC: $FF
    ccf                                           ; $6ACD: $3F
    ld a, a                                       ; $6ACE: $7F
    dec a                                         ; $6ACF: $3D
    ld a, a                                       ; $6AD0: $7F
    dec a                                         ; $6AD1: $3D
    cp l                                          ; $6AD2: $BD
    ld a, b                                       ; $6AD3: $78
    ld a, h                                       ; $6AD4: $7C
    ld hl, sp+$7C                                 ; $6AD5: $F8 $7C
    ldh a, [$FFFE]                                ; $6AD7: $F0 $FE

jr_015_6AD9:
    db $FC                                        ; $6AD9: $FC
    cp $FC                                        ; $6ADA: $FE $FC
    rst RST_38                                    ; $6ADC: $FF
    halt                                          ; $6ADD: $76
    rst RST_38                                    ; $6ADE: $FF
    cp d                                          ; $6ADF: $BA
    nop                                           ; $6AE0: $00
    nop                                           ; $6AE1: $00
    nop                                           ; $6AE2: $00
    nop                                           ; $6AE3: $00
    nop                                           ; $6AE4: $00
    nop                                           ; $6AE5: $00
    add b                                         ; $6AE6: $80
    nop                                           ; $6AE7: $00
    ldh [rP1], a                                  ; $6AE8: $E0 $00
    ld hl, sp+$60                                 ; $6AEA: $F8 $60
    ld hl, sp-$60                                 ; $6AEC: $F8 $A0
    ld hl, sp-$40                                 ; $6AEE: $F8 $C0
    ld hl, sp-$40                                 ; $6AF0: $F8 $C0
    ld hl, sp+$10                                 ; $6AF2: $F8 $10
    jr c, jr_015_6B06                             ; $6AF4: $38 $10

    ld a, b                                       ; $6AF6: $78
    jr nc, jr_015_6B75                            ; $6AF7: $30 $7C

    jr nc, jr_015_6AD9                            ; $6AF9: $30 $DE

    ld [hl], h                                    ; $6AFB: $74
    sbc $74                                       ; $6AFC: $DE $74
    sbc [hl]                                      ; $6AFE: $9E
    db $F4                                        ; $6AFF: $F4
    nop                                           ; $6B00: $00
    nop                                           ; $6B01: $00
    nop                                           ; $6B02: $00
    nop                                           ; $6B03: $00

jr_015_6B04:
    nop                                           ; $6B04: $00
    nop                                           ; $6B05: $00

jr_015_6B06:
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
    ld b, b                                       ; $6B18: $40
    nop                                           ; $6B19: $00
    ld b, b                                       ; $6B1A: $40
    nop                                           ; $6B1B: $00
    ret nz                                        ; $6B1C: $C0

    nop                                           ; $6B1D: $00
    ret nz                                        ; $6B1E: $C0

    nop                                           ; $6B1F: $00
    nop                                           ; $6B20: $00
    nop                                           ; $6B21: $00
    nop                                           ; $6B22: $00
    nop                                           ; $6B23: $00
    nop                                           ; $6B24: $00
    nop                                           ; $6B25: $00
    nop                                           ; $6B26: $00
    nop                                           ; $6B27: $00
    nop                                           ; $6B28: $00
    nop                                           ; $6B29: $00
    nop                                           ; $6B2A: $00
    nop                                           ; $6B2B: $00
    nop                                           ; $6B2C: $00
    nop                                           ; $6B2D: $00
    nop                                           ; $6B2E: $00
    nop                                           ; $6B2F: $00
    nop                                           ; $6B30: $00
    nop                                           ; $6B31: $00
    nop                                           ; $6B32: $00
    nop                                           ; $6B33: $00
    nop                                           ; $6B34: $00
    nop                                           ; $6B35: $00
    nop                                           ; $6B36: $00
    nop                                           ; $6B37: $00
    nop                                           ; $6B38: $00
    nop                                           ; $6B39: $00
    jr nc, jr_015_6B3C                            ; $6B3A: $30 $00

jr_015_6B3C:
    ld l, b                                       ; $6B3C: $68
    db $10                                        ; $6B3D: $10
    ld hl, sp+$40                                 ; $6B3E: $F8 $40
    rla                                           ; $6B40: $17
    inc c                                         ; $6B41: $0C
    inc e                                         ; $6B42: $1C
    dec bc                                        ; $6B43: $0B
    rra                                           ; $6B44: $1F
    inc bc                                        ; $6B45: $03
    rla                                           ; $6B46: $17
    dec bc                                        ; $6B47: $0B
    rra                                           ; $6B48: $1F
    dec bc                                        ; $6B49: $0B
    rra                                           ; $6B4A: $1F
    inc bc                                        ; $6B4B: $03
    ccf                                           ; $6B4C: $3F
    inc e                                         ; $6B4D: $1C
    ccf                                           ; $6B4E: $3F
    rra                                           ; $6B4F: $1F
    ccf                                           ; $6B50: $3F
    rra                                           ; $6B51: $1F
    rra                                           ; $6B52: $1F
    ld c, $1F                                     ; $6B53: $0E $1F
    rrca                                          ; $6B55: $0F
    rrca                                          ; $6B56: $0F
    rlca                                          ; $6B57: $07
    ld a, a                                       ; $6B58: $7F
    ld bc, $40BF                                  ; $6B59: $01 $BF $40
    rst RST_18                                    ; $6B5C: $DF
    cpl                                           ; $6B5D: $2F
    ld a, a                                       ; $6B5E: $7F
    nop                                           ; $6B5F: $00
    rst RST_38                                    ; $6B60: $FF
    ld hl, $9E61                                  ; $6B61: $21 $61 $9E
    rst RST_38                                    ; $6B64: $FF
    sbc $FF                                       ; $6B65: $DE $FF
    inc e                                         ; $6B67: $1C
    db $FC                                        ; $6B68: $FC
    ld a, e                                       ; $6B69: $7B
    rst RST_38                                    ; $6B6A: $FF
    sbc h                                         ; $6B6B: $9C
    db $FC                                        ; $6B6C: $FC
    ld b, e                                       ; $6B6D: $43
    rst RST_38                                    ; $6B6E: $FF
    db $FC                                        ; $6B6F: $FC
    rst RST_38                                    ; $6B70: $FF
    db $FD                                        ; $6B71: $FD
    rst RST_38                                    ; $6B72: $FF
    db $FD                                        ; $6B73: $FD
    rst RST_38                                    ; $6B74: $FF

jr_015_6B75:
    dec sp                                        ; $6B75: $3B
    rst RST_38                                    ; $6B76: $FF
    add a                                         ; $6B77: $87
    rst RST_20                                    ; $6B78: $E7
    pop bc                                        ; $6B79: $C1
    pop af                                        ; $6B7A: $F1
    ldh [$FFF0], a                                ; $6B7B: $E0 $F0
    ldh [$FFE0], a                                ; $6B7D: $E0 $E0
    nop                                           ; $6B7F: $00
    adc a                                         ; $6B80: $8F
    ld b, $CF                                     ; $6B81: $06 $CF
    add [hl]                                      ; $6B83: $86
    rst RST_08                                    ; $6B84: $CF
    add [hl]                                      ; $6B85: $86
    adc a                                         ; $6B86: $8F
    ld b, $4F                                     ; $6B87: $06 $4F
    add [hl]                                      ; $6B89: $86
    sbc a                                         ; $6B8A: $9F
    ld c, $5F                                     ; $6B8B: $0E $5F
    adc [hl]                                      ; $6B8D: $8E
    rst RST_38                                    ; $6B8E: $FF
    ld e, $FF                                     ; $6B8F: $1E $FF
    cp $FE                                        ; $6B91: $FE $FE
    db $FC                                        ; $6B93: $FC
    cp $FC                                        ; $6B94: $FE $FC
    db $FC                                        ; $6B96: $FC
    ld hl, sp-$08                                 ; $6B97: $F8 $F8
    ldh [$FFE0], a                                ; $6B99: $E0 $E0
    nop                                           ; $6B9B: $00
    nop                                           ; $6B9C: $00
    nop                                           ; $6B9D: $00
    nop                                           ; $6B9E: $00
    nop                                           ; $6B9F: $00
    rrca                                          ; $6BA0: $0F
    rlca                                          ; $6BA1: $07
    rlca                                          ; $6BA2: $07
    inc bc                                        ; $6BA3: $03
    inc bc                                        ; $6BA4: $03
    ld bc, $0103                                  ; $6BA5: $01 $03 $01
    rrca                                          ; $6BA8: $0F
    ld bc, $0F1F                                  ; $6BA9: $01 $1F $0F
    rrca                                          ; $6BAC: $0F
    inc bc                                        ; $6BAD: $03
    rlca                                          ; $6BAE: $07
    inc bc                                        ; $6BAF: $03
    rlca                                          ; $6BB0: $07
    inc bc                                        ; $6BB1: $03
    dec bc                                        ; $6BB2: $0B
    rlca                                          ; $6BB3: $07
    rla                                           ; $6BB4: $17
    rrca                                          ; $6BB5: $0F
    daa                                           ; $6BB6: $27
    rra                                           ; $6BB7: $1F
    ld c, a                                       ; $6BB8: $4F
    ccf                                           ; $6BB9: $3F
    ld c, a                                       ; $6BBA: $4F
    ccf                                           ; $6BBB: $3F
    cp a                                          ; $6BBC: $BF
    ld b, a                                       ; $6BBD: $47
    rst RST_18                                    ; $6BBE: $DF
    dec sp                                        ; $6BBF: $3B
    add b                                         ; $6BC0: $80
    nop                                           ; $6BC1: $00
    ldh [$FF80], a                                ; $6BC2: $E0 $80
    ldh a, [$FFE0]                                ; $6BC4: $F0 $E0
    ld hl, sp-$70                                 ; $6BC6: $F8 $90
    cp $B0                                        ; $6BC8: $FE $B0
    rst RST_38                                    ; $6BCA: $FF
    or $FF                                        ; $6BCB: $F6 $FF
    ld a, [$DCFE]                                 ; $6BCD: $FA $FE $DC
    cp $DC                                        ; $6BD0: $FE $DC
    call c, $C080                                 ; $6BD2: $DC $80 $C0
    add b                                         ; $6BD5: $80
    ret nz                                        ; $6BD6: $C0

    nop                                           ; $6BD7: $00
    ldh [$FFC0], a                                ; $6BD8: $E0 $C0
    ldh [$FFC0], a                                ; $6BDA: $E0 $C0
    ldh a, [$FF60]                                ; $6BDC: $F0 $60
    ld hl, sp-$50                                 ; $6BDE: $F8 $B0
    nop                                           ; $6BE0: $00
    nop                                           ; $6BE1: $00
    nop                                           ; $6BE2: $00
    nop                                           ; $6BE3: $00
    nop                                           ; $6BE4: $00
    nop                                           ; $6BE5: $00
    nop                                           ; $6BE6: $00
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
    ld b, b                                       ; $6BF8: $40
    nop                                           ; $6BF9: $00
    ldh [rLCDC], a                                ; $6BFA: $E0 $40
    ldh [rLCDC], a                                ; $6BFC: $E0 $40
    ldh [rLCDC], a                                ; $6BFE: $E0 $40
    nop                                           ; $6C00: $00
    nop                                           ; $6C01: $00
    nop                                           ; $6C02: $00
    nop                                           ; $6C03: $00
    nop                                           ; $6C04: $00
    nop                                           ; $6C05: $00
    nop                                           ; $6C06: $00
    nop                                           ; $6C07: $00
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
    jr jr_015_6C1C                                ; $6C1A: $18 $00

jr_015_6C1C:
    inc [hl]                                      ; $6C1C: $34
    ld [$207C], sp                                ; $6C1D: $08 $7C $20
    jr nc, jr_015_6C41                            ; $6C20: $30 $1F

    ld hl, $4E1E                                  ; $6C22: $21 $1E $4E
    ld sp, $2D52                                  ; $6C25: $31 $52 $2D
    sub d                                         ; $6C28: $92
    ld l, l                                       ; $6C29: $6D
    adc a                                         ; $6C2A: $8F
    ld [hl], b                                    ; $6C2B: $70
    sub c                                         ; $6C2C: $91
    ld l, [hl]                                    ; $6C2D: $6E
    sub c                                         ; $6C2E: $91
    ld l, [hl]                                    ; $6C2F: $6E
    ld c, [hl]                                    ; $6C30: $4E
    ld sp, $3847                                  ; $6C31: $31 $47 $38
    jr nz, jr_015_6C55                            ; $6C34: $20 $1F

    jr nc, jr_015_6C57                            ; $6C36: $30 $1F

    jr @+$11                                      ; $6C38: $18 $0F

    ld c, $07                                     ; $6C3A: $0E $07
    rlca                                          ; $6C3C: $07
    ld bc, $0001                                  ; $6C3D: $01 $01 $00
    sbc a                                         ; $6C40: $9F

jr_015_6C41:
    ld h, e                                       ; $6C41: $63
    ld a, a                                       ; $6C42: $7F
    add [hl]                                      ; $6C43: $86
    ld c, [hl]                                    ; $6C44: $4E
    cp c                                          ; $6C45: $B9
    ld b, a                                       ; $6C46: $47
    cp h                                          ; $6C47: $BC
    add $3D                                       ; $6C48: $C6 $3D
    ld b, a                                       ; $6C4A: $47
    cp h                                          ; $6C4B: $BC
    ld b, a                                       ; $6C4C: $47
    cp h                                          ; $6C4D: $BC
    adc h                                         ; $6C4E: $8C
    ld a, e                                       ; $6C4F: $7B
    rst RST_38                                    ; $6C50: $FF
    nop                                           ; $6C51: $00
    ld bc, $C0FF                                  ; $6C52: $01 $FF $C0

jr_015_6C55:
    rst RST_38                                    ; $6C55: $FF
    ld [hl], b                                    ; $6C56: $70

jr_015_6C57:
    cp a                                          ; $6C57: $BF
    ld a, [hl]                                    ; $6C58: $7E
    rst RST_00                                    ; $6C59: $C7
    and a                                         ; $6C5A: $A7
    ret nz                                        ; $6C5B: $C0

jr_015_6C5C:
    ldh a, [rNR41]                                ; $6C5C: $F0 $20
    jr c, jr_015_6C60                             ; $6C5E: $38 $00

jr_015_6C60:
    rst RST_38                                    ; $6C60: $FF
    rra                                           ; $6C61: $1F
    rst RST_18                                    ; $6C62: $DF
    xor a                                         ; $6C63: $AF
    sbc h                                         ; $6C64: $9C
    ld l, e                                       ; $6C65: $6B
    ld a, [hl]                                    ; $6C66: $7E
    sbc c                                         ; $6C67: $99
    rst RST_38                                    ; $6C68: $FF
    ld h, [hl]                                    ; $6C69: $66
    rst RST_38                                    ; $6C6A: $FF
    rra                                           ; $6C6B: $1F
    ld a, a                                       ; $6C6C: $7F
    ld hl, sp-$08                                 ; $6C6D: $F8 $F8
    rlca                                          ; $6C6F: $07
    nop                                           ; $6C70: $00
    rst RST_38                                    ; $6C71: $FF
    add b                                         ; $6C72: $80
    ld a, a                                       ; $6C73: $7F
    nop                                           ; $6C74: $00
    rst RST_38                                    ; $6C75: $FF
    rst RST_38                                    ; $6C76: $FF
    rst RST_38                                    ; $6C77: $FF
    rst RST_38                                    ; $6C78: $FF
    ret nz                                        ; $6C79: $C0

    jr nc, jr_015_6C5C                            ; $6C7A: $30 $E0

    inc e                                         ; $6C7C: $1C
    ldh a, [$FFFE]                                ; $6C7D: $F0 $FE
    nop                                           ; $6C7F: $00
    rrca                                          ; $6C80: $0F
    inc bc                                        ; $6C81: $03
    ccf                                           ; $6C82: $3F
    inc c                                         ; $6C83: $0C
    ld a, l                                       ; $6C84: $7D
    dec sp                                        ; $6C85: $3B
    db $FD                                        ; $6C86: $FD
    inc sp                                        ; $6C87: $33
    db $FD                                        ; $6C88: $FD
    cp e                                          ; $6C89: $BB
    db $FD                                        ; $6C8A: $FD
    ei                                            ; $6C8B: $FB
    ccf                                           ; $6C8C: $3F
    ld hl, sp+$0F                                 ; $6C8D: $F8 $0F
    pop af                                        ; $6C8F: $F1
    dec e                                         ; $6C90: $1D
    db $EB                                        ; $6C91: $EB
    db $DD                                        ; $6C92: $DD
    dec hl                                        ; $6C93: $2B
    push af                                       ; $6C94: $F5
    dec bc                                        ; $6C95: $0B
    rra                                           ; $6C96: $1F
    db $E4                                        ; $6C97: $E4
    dec bc                                        ; $6C98: $0B
    or $06                                        ; $6C99: $F6 $06
    ld sp, hl                                     ; $6C9B: $F9
    rst RST_38                                    ; $6C9C: $FF
    rst RST_38                                    ; $6C9D: $FF
    rst RST_38                                    ; $6C9E: $FF
    nop                                           ; $6C9F: $00
    xor b                                         ; $6CA0: $A8
    ld d, b                                       ; $6CA1: $50
    xor b                                         ; $6CA2: $A8
    ld d, b                                       ; $6CA3: $50
    xor a                                         ; $6CA4: $AF
    ld d, b                                       ; $6CA5: $50
    rst RST_38                                    ; $6CA6: $FF
    and a                                         ; $6CA7: $A7
    rst RST_38                                    ; $6CA8: $FF
    rst RST_28                                    ; $6CA9: $EF
    rst RST_38                                    ; $6CAA: $FF
    rst RST_28                                    ; $6CAB: $EF
    rst RST_38                                    ; $6CAC: $FF
    ld e, a                                       ; $6CAD: $5F
    rst RST_38                                    ; $6CAE: $FF
    ld e, [hl]                                    ; $6CAF: $5E
    rst RST_38                                    ; $6CB0: $FF
    cpl                                           ; $6CB1: $2F
    rst RST_38                                    ; $6CB2: $FF
    rst RST_28                                    ; $6CB3: $EF
    rst RST_38                                    ; $6CB4: $FF
    rst RST_28                                    ; $6CB5: $EF
    rst RST_38                                    ; $6CB6: $FF
    rra                                           ; $6CB7: $1F
    ld a, a                                       ; $6CB8: $7F
    call c, $23DF                                 ; $6CB9: $DC $DF $23
    rst RST_38                                    ; $6CBC: $FF
    ldh a, [$FFF0]                                ; $6CBD: $F0 $F0
    nop                                           ; $6CBF: $00
    nop                                           ; $6CC0: $00
    nop                                           ; $6CC1: $00
    ld hl, sp+$00                                 ; $6CC2: $F8 $00
    cp $F8                                        ; $6CC4: $FE $F8
    rst RST_38                                    ; $6CC6: $FF
    ld a, [hl]                                    ; $6CC7: $7E
    rst RST_38                                    ; $6CC8: $FF
    and e                                         ; $6CC9: $A3
    rst RST_38                                    ; $6CCA: $FF
    sbc h                                         ; $6CCB: $9C
    rst RST_38                                    ; $6CCC: $FF
    ld a, a                                       ; $6CCD: $7F
    rst RST_38                                    ; $6CCE: $FF
    db $E3                                        ; $6CCF: $E3
    ei                                            ; $6CD0: $FB
    ret nz                                        ; $6CD1: $C0

    rst RST_38                                    ; $6CD2: $FF
    add b                                         ; $6CD3: $80
    sbc $A1                                       ; $6CD4: $DE $A1
    adc a                                         ; $6CD6: $8F
    ld [hl], b                                    ; $6CD7: $70
    ccf                                           ; $6CD8: $3F
    db $FC                                        ; $6CD9: $FC
    rst RST_38                                    ; $6CDA: $FF
    ret nz                                        ; $6CDB: $C0

    ret nz                                        ; $6CDC: $C0

    nop                                           ; $6CDD: $00
    nop                                           ; $6CDE: $00
    nop                                           ; $6CDF: $00
    nop                                           ; $6CE0: $00
    nop                                           ; $6CE1: $00
    nop                                           ; $6CE2: $00
    nop                                           ; $6CE3: $00
    rlca                                          ; $6CE4: $07
    nop                                           ; $6CE5: $00
    rst RST_38                                    ; $6CE6: $FF
    rlca                                          ; $6CE7: $07
    rst RST_38                                    ; $6CE8: $FF
    cp $FE                                        ; $6CE9: $FE $FE
    ld hl, sp-$08                                 ; $6CEB: $F8 $F8
    nop                                           ; $6CED: $00
    ldh a, [$FFC0]                                ; $6CEE: $F0 $C0
    ret nc                                        ; $6CF0: $D0

    and b                                         ; $6CF1: $A0
    ldh a, [rP1]                                  ; $6CF2: $F0 $00
    ld a, a                                       ; $6CF4: $7F
    ldh a, [$FF03]                                ; $6CF5: $F0 $03
    rst RST_38                                    ; $6CF7: $FF
    rst RST_38                                    ; $6CF8: $FF
    nop                                           ; $6CF9: $00
    ret nz                                        ; $6CFA: $C0

    nop                                           ; $6CFB: $00
    nop                                           ; $6CFC: $00
    nop                                           ; $6CFD: $00
    nop                                           ; $6CFE: $00
    nop                                           ; $6CFF: $00
    nop                                           ; $6D00: $00
    nop                                           ; $6D01: $00
    nop                                           ; $6D02: $00
    nop                                           ; $6D03: $00
    nop                                           ; $6D04: $00
    nop                                           ; $6D05: $00
    nop                                           ; $6D06: $00
    nop                                           ; $6D07: $00
    nop                                           ; $6D08: $00
    nop                                           ; $6D09: $00
    ldh [rP1], a                                  ; $6D0A: $E0 $00
    ldh [$FFC0], a                                ; $6D0C: $E0 $C0
    ret nz                                        ; $6D0E: $C0

    add b                                         ; $6D0F: $80
    add b                                         ; $6D10: $80
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
    add b                                         ; $6D1E: $80
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
    ld bc, $0700                                  ; $6D38: $01 $00 $07
    ld bc, $070E                                  ; $6D3B: $01 $0E $07
    jr jr_015_6D4F                                ; $6D3E: $18 $0F

    nop                                           ; $6D40: $00
    nop                                           ; $6D41: $00
    nop                                           ; $6D42: $00
    nop                                           ; $6D43: $00
    nop                                           ; $6D44: $00
    nop                                           ; $6D45: $00
    nop                                           ; $6D46: $00
    nop                                           ; $6D47: $00
    nop                                           ; $6D48: $00
    nop                                           ; $6D49: $00
    nop                                           ; $6D4A: $00
    nop                                           ; $6D4B: $00
    nop                                           ; $6D4C: $00
    nop                                           ; $6D4D: $00
    nop                                           ; $6D4E: $00

jr_015_6D4F:
    nop                                           ; $6D4F: $00
    nop                                           ; $6D50: $00
    nop                                           ; $6D51: $00
    nop                                           ; $6D52: $00
    nop                                           ; $6D53: $00
    jr c, jr_015_6D56                             ; $6D54: $38 $00

jr_015_6D56:
    ldh a, [rNR41]                                ; $6D56: $F0 $20
    and a                                         ; $6D58: $A7
    ret nz                                        ; $6D59: $C0

    ld a, a                                       ; $6D5A: $7F
    add $7F                                       ; $6D5B: $C6 $7F
    or c                                          ; $6D5D: $B1
    rst RST_10                                    ; $6D5E: $D7
    db $EB                                        ; $6D5F: $EB
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
    ld c, $00                                     ; $6D74: $0E $00
    ld e, $0C                                     ; $6D76: $1E $0C
    rra                                           ; $6D78: $1F
    nop                                           ; $6D79: $00
    ld a, a                                       ; $6D7A: $7F
    ld c, $BE                                     ; $6D7B: $0E $BE
    ld e, h                                       ; $6D7D: $5C
    ccf                                           ; $6D7E: $3F
    jp nc, RST_00                                 ; $6D7F: $D2 $00 $00

    nop                                           ; $6D82: $00
    nop                                           ; $6D83: $00
    nop                                           ; $6D84: $00
    nop                                           ; $6D85: $00
    nop                                           ; $6D86: $00
    nop                                           ; $6D87: $00
    nop                                           ; $6D88: $00
    nop                                           ; $6D89: $00
    nop                                           ; $6D8A: $00
    nop                                           ; $6D8B: $00
    nop                                           ; $6D8C: $00
    nop                                           ; $6D8D: $00
    nop                                           ; $6D8E: $00
    nop                                           ; $6D8F: $00
    nop                                           ; $6D90: $00
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
    ld l, d                                       ; $6D9E: $6A
    nop                                           ; $6D9F: $00
    inc c                                         ; $6DA0: $0C
    nop                                           ; $6DA1: $00
    ld a, a                                       ; $6DA2: $7F
    inc c                                         ; $6DA3: $0C
    or e                                          ; $6DA4: $B3
    ld l, l                                       ; $6DA5: $6D
    cp a                                          ; $6DA6: $BF
    ld l, l                                       ; $6DA7: $6D
    ld a, a                                       ; $6DA8: $7F
    ld bc, $75BF                                  ; $6DA9: $01 $BF $75
    cp a                                          ; $6DAC: $BF
    ld [hl], l                                    ; $6DAD: $75
    ld a, a                                       ; $6DAE: $7F
    dec bc                                        ; $6DAF: $0B
    ccf                                           ; $6DB0: $3F
    nop                                           ; $6DB1: $00
    nop                                           ; $6DB2: $00
    nop                                           ; $6DB3: $00
    nop                                           ; $6DB4: $00
    nop                                           ; $6DB5: $00
    nop                                           ; $6DB6: $00
    nop                                           ; $6DB7: $00
    nop                                           ; $6DB8: $00
    nop                                           ; $6DB9: $00
    nop                                           ; $6DBA: $00
    nop                                           ; $6DBB: $00
    nop                                           ; $6DBC: $00
    nop                                           ; $6DBD: $00
    nop                                           ; $6DBE: $00
    nop                                           ; $6DBF: $00
    ld bc, $0100                                  ; $6DC0: $01 $00 $01
    nop                                           ; $6DC3: $00
    ld bc, $0300                                  ; $6DC4: $01 $00 $03
    nop                                           ; $6DC7: $00
    dec b                                         ; $6DC8: $05
    ld [bc], a                                    ; $6DC9: $02
    add hl, bc                                    ; $6DCA: $09
    ld b, $7F                                     ; $6DCB: $06 $7F
    ld [$5DBE], sp                                ; $6DCD: $08 $BE $5D
    db $FC                                        ; $6DD0: $FC
    dec de                                        ; $6DD1: $1B
    ei                                            ; $6DD2: $FB
    inc [hl]                                      ; $6DD3: $34
    rst RST_30                                    ; $6DD4: $F7
    jp $E0FF                                      ; $6DD5: $C3 $FF $E0


    rst RST_38                                    ; $6DD8: $FF
    rst RST_28                                    ; $6DD9: $EF
    rst RST_38                                    ; $6DDA: $FF
    ldh [$FFF8], a                                ; $6DDB: $E0 $F8
    ldh [$FFE4], a                                ; $6DDD: $E0 $E4
    ret c                                         ; $6DDF: $D8

    ret nz                                        ; $6DE0: $C0

    nop                                           ; $6DE1: $00
    ldh a, [$FFC0]                                ; $6DE2: $F0 $C0
    ld hl, sp-$50                                 ; $6DE4: $F8 $B0
    ld hl, sp+$70                                 ; $6DE6: $F8 $70
    ld sp, hl                                     ; $6DE8: $F9
    ldh a, [$FFF3]                                ; $6DE9: $F0 $F3
    pop bc                                        ; $6DEB: $C1
    rst RST_38                                    ; $6DEC: $FF
    pop af                                        ; $6DED: $F1
    rst RST_38                                    ; $6DEE: $FF
    db $FD                                        ; $6DEF: $FD
    rst RST_38                                    ; $6DF0: $FF
    ld a, a                                       ; $6DF1: $7F
    pop hl                                        ; $6DF2: $E1
    ld e, a                                       ; $6DF3: $5F
    ldh a, [$FFCF]                                ; $6DF4: $F0 $CF
    ld hl, sp+$37                                 ; $6DF6: $F8 $37
    cp $F9                                        ; $6DF8: $FE $F9
    rst RST_38                                    ; $6DFA: $FF
    ret nz                                        ; $6DFB: $C0

    ret nz                                        ; $6DFC: $C0

    nop                                           ; $6DFD: $00
    nop                                           ; $6DFE: $00
    nop                                           ; $6DFF: $00
    ld a, [de]                                    ; $6E00: $1A
    nop                                           ; $6E01: $00
    ld a, l                                       ; $6E02: $7D
    ld a, [de]                                    ; $6E03: $1A
    db $FD                                        ; $6E04: $FD
    ld h, d                                       ; $6E05: $62
    db $ED                                        ; $6E06: $ED
    jp c, $9DEF                                   ; $6E07: $DA $EF $9D

    rst RST_28                                    ; $6E0A: $EF
    rst RST_18                                    ; $6E0B: $DF
    rst RST_28                                    ; $6E0C: $EF
    rst RST_18                                    ; $6E0D: $DF
    rst RST_38                                    ; $6E0E: $FF
    jp nz, $8A7F                                  ; $6E0F: $C2 $7F $8A

    rst RST_28                                    ; $6E12: $EF
    ld e, c                                       ; $6E13: $59
    rst RST_28                                    ; $6E14: $EF
    ld e, a                                       ; $6E15: $5F
    xor a                                         ; $6E16: $AF
    ld e, a                                       ; $6E17: $5F
    rst RST_38                                    ; $6E18: $FF
    jr nz, jr_015_6E76                            ; $6E19: $20 $5B

    ld [hl], $36                                  ; $6E1B: $36 $36
    nop                                           ; $6E1D: $00
    nop                                           ; $6E1E: $00
    nop                                           ; $6E1F: $00
    add b                                         ; $6E20: $80
    nop                                           ; $6E21: $00
    ld b, c                                       ; $6E22: $41
    add b                                         ; $6E23: $80
    ld b, a                                       ; $6E24: $47
    add c                                         ; $6E25: $81
    ld a, a                                       ; $6E26: $7F
    add a                                         ; $6E27: $87
    rst RST_38                                    ; $6E28: $FF
    dec sp                                        ; $6E29: $3B
    rst RST_38                                    ; $6E2A: $FF
    ld a, l                                       ; $6E2B: $7D
    rst RST_38                                    ; $6E2C: $FF
    ld a, h                                       ; $6E2D: $7C
    rst RST_38                                    ; $6E2E: $FF
    ei                                            ; $6E2F: $FB
    rst RST_38                                    ; $6E30: $FF
    rst RST_30                                    ; $6E31: $F7
    rst RST_38                                    ; $6E32: $FF
    ld a, [hl]                                    ; $6E33: $7E
    rst RST_38                                    ; $6E34: $FF
    ld a, h                                       ; $6E35: $7C
    cp $7C                                        ; $6E36: $FE $7C
    db $FC                                        ; $6E38: $FC
    ld hl, sp-$08                                 ; $6E39: $F8 $F8
    ldh [$FFE0], a                                ; $6E3B: $E0 $E0
    nop                                           ; $6E3D: $00
    nop                                           ; $6E3E: $00
    nop                                           ; $6E3F: $00
    nop                                           ; $6E40: $00
    nop                                           ; $6E41: $00
    nop                                           ; $6E42: $00
    nop                                           ; $6E43: $00
    rst RST_38                                    ; $6E44: $FF
    nop                                           ; $6E45: $00
    rst RST_38                                    ; $6E46: $FF
    rst RST_38                                    ; $6E47: $FF
    rst RST_38                                    ; $6E48: $FF
    rst RST_38                                    ; $6E49: $FF
    rst RST_38                                    ; $6E4A: $FF
    ldh [$FFE0], a                                ; $6E4B: $E0 $E0
    nop                                           ; $6E4D: $00
    ld hl, sp-$20                                 ; $6E4E: $F8 $E0
    cp $F8                                        ; $6E50: $FE $F8
    rst RST_38                                    ; $6E52: $FF
    ld e, $DE                                     ; $6E53: $1E $DE
    dec b                                         ; $6E55: $05
    rst RST_20                                    ; $6E56: $E7
    nop                                           ; $6E57: $00
    ldh a, [rP1]                                  ; $6E58: $F0 $00
    ld a, b                                       ; $6E5A: $78
    nop                                           ; $6E5B: $00
    ld e, $00                                     ; $6E5C: $1E $00
    ld c, $00                                     ; $6E5E: $0E $00
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
    add b                                         ; $6E6C: $80
    nop                                           ; $6E6D: $00
    ldh [$FF80], a                                ; $6E6E: $E0 $80
    cp $E0                                        ; $6E70: $FE $E0
    rst RST_38                                    ; $6E72: $FF
    cp $FE                                        ; $6E73: $FE $FE
    nop                                           ; $6E75: $00

jr_015_6E76:
    nop                                           ; $6E76: $00
    nop                                           ; $6E77: $00
    nop                                           ; $6E78: $00
    nop                                           ; $6E79: $00
    add b                                         ; $6E7A: $80
    nop                                           ; $6E7B: $00
    add b                                         ; $6E7C: $80
    nop                                           ; $6E7D: $00
    nop                                           ; $6E7E: $00
    nop                                           ; $6E7F: $00
    ld hl, sp+$00                                 ; $6E80: $F8 $00
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
    nop                                           ; $6EA0: $00
    nop                                           ; $6EA1: $00
    nop                                           ; $6EA2: $00
    nop                                           ; $6EA3: $00
    nop                                           ; $6EA4: $00
    nop                                           ; $6EA5: $00
    nop                                           ; $6EA6: $00
    nop                                           ; $6EA7: $00
    ld a, h                                       ; $6EA8: $7C
    nop                                           ; $6EA9: $00
    rst RST_38                                    ; $6EAA: $FF
    ld a, h                                       ; $6EAB: $7C
    ld a, a                                       ; $6EAC: $7F
    rra                                           ; $6EAD: $1F
    rra                                           ; $6EAE: $1F
    rlca                                          ; $6EAF: $07
    rlca                                          ; $6EB0: $07
    ld bc, $0001                                  ; $6EB1: $01 $01 $00
    nop                                           ; $6EB4: $00
    nop                                           ; $6EB5: $00
    nop                                           ; $6EB6: $00
    nop                                           ; $6EB7: $00
    ld bc, $0200                                  ; $6EB8: $01 $00 $02
    ld bc, $0003                                  ; $6EBB: $01 $03 $00
    nop                                           ; $6EBE: $00
    nop                                           ; $6EBF: $00
    nop                                           ; $6EC0: $00
    nop                                           ; $6EC1: $00
    ld bc, $0700                                  ; $6EC2: $01 $00 $07
    nop                                           ; $6EC5: $00
    rrca                                          ; $6EC6: $0F
    rlca                                          ; $6EC7: $07
    rra                                           ; $6EC8: $1F
    rrca                                          ; $6EC9: $0F
    rra                                           ; $6ECA: $1F
    rrca                                          ; $6ECB: $0F
    rst RST_38                                    ; $6ECC: $FF
    rra                                           ; $6ECD: $1F
    rst RST_38                                    ; $6ECE: $FF
    rst RST_18                                    ; $6ECF: $DF
    rst RST_38                                    ; $6ED0: $FF
    sbc $FF                                       ; $6ED1: $DE $FF
    db $EC                                        ; $6ED3: $EC
    rst RST_38                                    ; $6ED4: $FF
    ld [hl], b                                    ; $6ED5: $70
    ld a, a                                       ; $6ED6: $7F
    jr nc, @+$01                                  ; $6ED7: $30 $FF

    add hl, bc                                    ; $6ED9: $09
    rst RST_38                                    ; $6EDA: $FF
    inc sp                                        ; $6EDB: $33
    cp e                                          ; $6EDC: $BB
    ld b, b                                       ; $6EDD: $40
    ld b, b                                       ; $6EDE: $40
    nop                                           ; $6EDF: $00
    ld [hl], b                                    ; $6EE0: $70
    ccf                                           ; $6EE1: $3F
    ld hl, sp+$1F                                 ; $6EE2: $F8 $1F
    ret nz                                        ; $6EE4: $C0

    rst RST_38                                    ; $6EE5: $FF
    ret nz                                        ; $6EE6: $C0

    ld a, a                                       ; $6EE7: $7F
    ret nz                                        ; $6EE8: $C0

    cp a                                          ; $6EE9: $BF
    ret nz                                        ; $6EEA: $C0

    cp a                                          ; $6EEB: $BF
    ret nz                                        ; $6EEC: $C0

    cp a                                          ; $6EED: $BF
    pop bc                                        ; $6EEE: $C1
    cp a                                          ; $6EEF: $BF
    add a                                         ; $6EF0: $87
    ld a, h                                       ; $6EF1: $7C
    rst RST_38                                    ; $6EF2: $FF
    nop                                           ; $6EF3: $00
    rst RST_38                                    ; $6EF4: $FF
    ld h, b                                       ; $6EF5: $60
    rst RST_38                                    ; $6EF6: $FF
    ld [hl], b                                    ; $6EF7: $70
    rst RST_38                                    ; $6EF8: $FF
    ld hl, sp-$05                                 ; $6EF9: $F8 $FB
    ldh a, [$FFF3]                                ; $6EFB: $F0 $F3
    ret nz                                        ; $6EFD: $C0

    ret nz                                        ; $6EFE: $C0

    nop                                           ; $6EFF: $00
    ccf                                           ; $6F00: $3F
    ld [$EB3F], a                                 ; $6F01: $EA $3F $EB
    ccf                                           ; $6F04: $3F
    db $DD                                        ; $6F05: $DD
    ld a, a                                       ; $6F06: $7F
    db $DD                                        ; $6F07: $DD
    ld a, a                                       ; $6F08: $7F
    call z, $807C                                 ; $6F09: $CC $7C $80
    ld hl, sp-$80                                 ; $6F0C: $F8 $80
    ld hl, sp+$00                                 ; $6F0E: $F8 $00
    ldh a, [rP1]                                  ; $6F10: $F0 $00
    ldh [rP1], a                                  ; $6F12: $E0 $00
    ret nz                                        ; $6F14: $C0

    nop                                           ; $6F15: $00
    nop                                           ; $6F16: $00
    nop                                           ; $6F17: $00
    add b                                         ; $6F18: $80
    nop                                           ; $6F19: $00
    db $FC                                        ; $6F1A: $FC
    nop                                           ; $6F1B: $00
    db $FC                                        ; $6F1C: $FC

jr_015_6F1D:
    nop                                           ; $6F1D: $00
    nop                                           ; $6F1E: $00
    nop                                           ; $6F1F: $00
    nop                                           ; $6F20: $00
    nop                                           ; $6F21: $00
    nop                                           ; $6F22: $00
    nop                                           ; $6F23: $00
    jr jr_015_6F26                                ; $6F24: $18 $00

jr_015_6F26:
    inc h                                         ; $6F26: $24
    jr jr_015_6F57                                ; $6F27: $18 $2E

    inc e                                         ; $6F29: $1C
    ccf                                           ; $6F2A: $3F
    inc c                                         ; $6F2B: $0C
    ld a, a                                       ; $6F2C: $7F
    jr nz, jr_015_6F1D                            ; $6F2D: $20 $EE

    ld [hl], l                                    ; $6F2F: $75
    db $DD                                        ; $6F30: $DD
    ld l, e                                       ; $6F31: $6B
    ld a, a                                       ; $6F32: $7F
    dec de                                        ; $6F33: $1B
    ccf                                           ; $6F34: $3F
    inc e                                         ; $6F35: $1C
    rra                                           ; $6F36: $1F
    ld bc, $0307                                  ; $6F37: $01 $07 $03
    inc bc                                        ; $6F3A: $03
    ld bc, $0001                                  ; $6F3B: $01 $01 $00
    nop                                           ; $6F3E: $00
    nop                                           ; $6F3F: $00
    nop                                           ; $6F40: $00
    nop                                           ; $6F41: $00
    nop                                           ; $6F42: $00
    nop                                           ; $6F43: $00
    nop                                           ; $6F44: $00
    nop                                           ; $6F45: $00
    jr jr_015_6F48                                ; $6F46: $18 $00

jr_015_6F48:
    cpl                                           ; $6F48: $2F
    db $10                                        ; $6F49: $10
    cp a                                          ; $6F4A: $BF
    rlca                                          ; $6F4B: $07
    rst RST_18                                    ; $6F4C: $DF
    adc a                                         ; $6F4D: $8F
    rst RST_08                                    ; $6F4E: $CF
    add [hl]                                      ; $6F4F: $86
    rst RST_20                                    ; $6F50: $E7
    nop                                           ; $6F51: $00
    sub e                                         ; $6F52: $93
    pop hl                                        ; $6F53: $E1
    ret                                           ; $6F54: $C9


    ldh a, [$FFE4]                                ; $6F55: $F0 $E4

jr_015_6F57:
    ld hl, sp-$01                                 ; $6F57: $F8 $FF
    ld hl, sp-$01                                 ; $6F59: $F8 $FF
    rst RST_30                                    ; $6F5B: $F7
    rst RST_38                                    ; $6F5C: $FF
    ld h, b                                       ; $6F5D: $60
    ld h, b                                       ; $6F5E: $60
    nop                                           ; $6F5F: $00
    nop                                           ; $6F60: $00
    nop                                           ; $6F61: $00
    scf                                           ; $6F62: $37
    nop                                           ; $6F63: $00
    ld a, a                                       ; $6F64: $7F
    ld [hl], $7F                                  ; $6F65: $36 $7F
    ld d, $BE                                     ; $6F67: $16 $BE
    ld c, h                                       ; $6F69: $4C
    ld a, $D8                                     ; $6F6A: $3E $D8
    rst RST_38                                    ; $6F6C: $FF
    inc e                                         ; $6F6D: $1C
    rst RST_38                                    ; $6F6E: $FF
    adc a                                         ; $6F6F: $8F
    sbc a                                         ; $6F70: $9F
    ld l, a                                       ; $6F71: $6F
    db $FC                                        ; $6F72: $FC
    rra                                           ; $6F73: $1F
    db $FC                                        ; $6F74: $FC
    db $E3                                        ; $6F75: $E3
    db $FC                                        ; $6F76: $FC
    rlca                                          ; $6F77: $07

jr_015_6F78:
    ld hl, sp+$3F                                 ; $6F78: $F8 $3F
    ldh a, [rIE]                                  ; $6F7A: $F0 $FF
    ld hl, sp-$01                                 ; $6F7C: $F8 $FF
    db $FC                                        ; $6F7E: $FC
    rrca                                          ; $6F7F: $0F
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
    add b                                         ; $6F8E: $80
    nop                                           ; $6F8F: $00
    ret nz                                        ; $6F90: $C0

    add b                                         ; $6F91: $80
    ldh [$FFC0], a                                ; $6F92: $E0 $C0
    ld h, b                                       ; $6F94: $60
    ret nz                                        ; $6F95: $C0

    jr nc, jr_015_6F78                            ; $6F96: $30 $E0

    db $10                                        ; $6F98: $10
    ldh [rNR24], a                                ; $6F99: $E0 $19
    ldh a, [$FF09]                                ; $6F9B: $F0 $09
    ldh a, [rIF]                                  ; $6F9D: $F0 $0F
    ld hl, sp+$00                                 ; $6F9F: $F8 $00
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
    ld hl, sp+$00                                 ; $6FAE: $F8 $00
    inc h                                         ; $6FB0: $24

jr_015_6FB1:
    ret c                                         ; $6FB1: $D8

    db $FC                                        ; $6FB2: $FC
    ret c                                         ; $6FB3: $D8

    db $FC                                        ; $6FB4: $FC
    jr c, jr_015_6FB1                             ; $6FB5: $38 $FA

    add h                                         ; $6FB7: $84
    ld a, [$FADC]                                 ; $6FB8: $FA $DC $FA
    ld e, h                                       ; $6FBB: $5C
    db $FC                                        ; $6FBC: $FC
    ld h, b                                       ; $6FBD: $60
    ld hl, sp+$00                                 ; $6FBE: $F8 $00
    ld bc, $0000                                  ; $6FC0: $01 $00 $00
    nop                                           ; $6FC3: $00
    nop                                           ; $6FC4: $00
    nop                                           ; $6FC5: $00
    nop                                           ; $6FC6: $00
    nop                                           ; $6FC7: $00
    ld a, h                                       ; $6FC8: $7C
    nop                                           ; $6FC9: $00
    rst RST_38                                    ; $6FCA: $FF
    ld a, h                                       ; $6FCB: $7C
    ld a, a                                       ; $6FCC: $7F
    rra                                           ; $6FCD: $1F
    rra                                           ; $6FCE: $1F
    rlca                                          ; $6FCF: $07
    rlca                                          ; $6FD0: $07
    ld bc, $0001                                  ; $6FD1: $01 $01 $00
    nop                                           ; $6FD4: $00
    nop                                           ; $6FD5: $00
    nop                                           ; $6FD6: $00
    nop                                           ; $6FD7: $00
    ld bc, $0200                                  ; $6FD8: $01 $00 $02
    ld bc, $0003                                  ; $6FDB: $01 $03 $00
    nop                                           ; $6FDE: $00
    nop                                           ; $6FDF: $00
    ldh a, [rP1]                                  ; $6FE0: $F0 $00
    ld bc, $0700                                  ; $6FE2: $01 $00 $07
    nop                                           ; $6FE5: $00
    rrca                                          ; $6FE6: $0F
    rlca                                          ; $6FE7: $07
    rra                                           ; $6FE8: $1F
    rrca                                          ; $6FE9: $0F
    rra                                           ; $6FEA: $1F
    rrca                                          ; $6FEB: $0F
    rst RST_38                                    ; $6FEC: $FF
    rra                                           ; $6FED: $1F
    rst RST_38                                    ; $6FEE: $FF
    rst RST_18                                    ; $6FEF: $DF
    rst RST_38                                    ; $6FF0: $FF
    sbc $FF                                       ; $6FF1: $DE $FF
    db $EC                                        ; $6FF3: $EC
    rst RST_38                                    ; $6FF4: $FF
    ld [hl], b                                    ; $6FF5: $70
    ld a, a                                       ; $6FF6: $7F
    jr nc, @+$01                                  ; $6FF7: $30 $FF

    add hl, bc                                    ; $6FF9: $09
    rst RST_38                                    ; $6FFA: $FF
    inc sp                                        ; $6FFB: $33
    cp e                                          ; $6FFC: $BB
    ld b, b                                       ; $6FFD: $40
    ld b, b                                       ; $6FFE: $40
    nop                                           ; $6FFF: $00
    ld hl, sp+$1F                                 ; $7000: $F8 $1F
    ret nz                                        ; $7002: $C0

    rst RST_38                                    ; $7003: $FF
    ret nz                                        ; $7004: $C0

    ld a, a                                       ; $7005: $7F
    ret nz                                        ; $7006: $C0

    cp a                                          ; $7007: $BF
    ret nz                                        ; $7008: $C0

    cp a                                          ; $7009: $BF
    ret nz                                        ; $700A: $C0

    cp a                                          ; $700B: $BF
    pop bc                                        ; $700C: $C1
    cp a                                          ; $700D: $BF
    add a                                         ; $700E: $87
    ld a, h                                       ; $700F: $7C
    rst RST_38                                    ; $7010: $FF
    nop                                           ; $7011: $00
    rst RST_38                                    ; $7012: $FF
    ld h, b                                       ; $7013: $60
    rst RST_38                                    ; $7014: $FF
    ld [hl], b                                    ; $7015: $70
    rst RST_38                                    ; $7016: $FF
    ld hl, sp-$05                                 ; $7017: $F8 $FB
    ldh a, [$FFF3]                                ; $7019: $F0 $F3
    ret nz                                        ; $701B: $C0

    ret nz                                        ; $701C: $C0

    nop                                           ; $701D: $00
    nop                                           ; $701E: $00
    nop                                           ; $701F: $00
    ccf                                           ; $7020: $3F
    db $EB                                        ; $7021: $EB
    ccf                                           ; $7022: $3F
    db $DD                                        ; $7023: $DD
    ld a, a                                       ; $7024: $7F
    db $DD                                        ; $7025: $DD
    ld a, a                                       ; $7026: $7F
    call z, $807C                                 ; $7027: $CC $7C $80
    ld hl, sp-$80                                 ; $702A: $F8 $80
    ld hl, sp+$00                                 ; $702C: $F8 $00
    ldh a, [rP1]                                  ; $702E: $F0 $00
    ldh [rP1], a                                  ; $7030: $E0 $00
    ret nz                                        ; $7032: $C0

    nop                                           ; $7033: $00
    nop                                           ; $7034: $00
    nop                                           ; $7035: $00
    add b                                         ; $7036: $80
    nop                                           ; $7037: $00
    db $FC                                        ; $7038: $FC
    nop                                           ; $7039: $00
    db $FC                                        ; $703A: $FC
    nop                                           ; $703B: $00
    nop                                           ; $703C: $00
    nop                                           ; $703D: $00
    nop                                           ; $703E: $00

jr_015_703F:
    nop                                           ; $703F: $00
    nop                                           ; $7040: $00
    nop                                           ; $7041: $00
    nop                                           ; $7042: $00
    nop                                           ; $7043: $00
    nop                                           ; $7044: $00
    nop                                           ; $7045: $00
    jr jr_015_7048                                ; $7046: $18 $00

jr_015_7048:
    inc h                                         ; $7048: $24
    jr jr_015_7079                                ; $7049: $18 $2E

    inc e                                         ; $704B: $1C
    ccf                                           ; $704C: $3F
    inc c                                         ; $704D: $0C
    ld a, a                                       ; $704E: $7F
    jr nz, jr_015_703F                            ; $704F: $20 $EE

    ld [hl], l                                    ; $7051: $75
    db $DD                                        ; $7052: $DD
    ld l, e                                       ; $7053: $6B
    ld a, a                                       ; $7054: $7F
    dec de                                        ; $7055: $1B
    ccf                                           ; $7056: $3F
    inc e                                         ; $7057: $1C
    rra                                           ; $7058: $1F
    ld bc, $0307                                  ; $7059: $01 $07 $03
    inc bc                                        ; $705C: $03
    ld bc, $0001                                  ; $705D: $01 $01 $00
    nop                                           ; $7060: $00
    nop                                           ; $7061: $00
    nop                                           ; $7062: $00
    nop                                           ; $7063: $00
    nop                                           ; $7064: $00
    nop                                           ; $7065: $00
    jr jr_015_7068                                ; $7066: $18 $00

jr_015_7068:
    cpl                                           ; $7068: $2F
    db $10                                        ; $7069: $10
    ccf                                           ; $706A: $3F
    rlca                                          ; $706B: $07
    sbc a                                         ; $706C: $9F
    rrca                                          ; $706D: $0F
    rst RST_08                                    ; $706E: $CF
    add [hl]                                      ; $706F: $86
    rst RST_00                                    ; $7070: $C7
    add b                                         ; $7071: $80
    db $E3                                        ; $7072: $E3
    ld bc, $E091                                  ; $7073: $01 $91 $E0
    ret z                                         ; $7076: $C8

    ldh a, [$FFE5]                                ; $7077: $F0 $E5

jr_015_7079:
    ld hl, sp-$01                                 ; $7079: $F8 $FF
    ld sp, hl                                     ; $707B: $F9
    rst RST_38                                    ; $707C: $FF
    rst RST_30                                    ; $707D: $F7
    rst RST_38                                    ; $707E: $FF
    ld l, h                                       ; $707F: $6C
    scf                                           ; $7080: $37
    nop                                           ; $7081: $00
    ld a, a                                       ; $7082: $7F
    ld [hl], $7F                                  ; $7083: $36 $7F
    ld d, $BE                                     ; $7085: $16 $BE
    ld c, h                                       ; $7087: $4C
    ld a, $D8                                     ; $7088: $3E $D8
    rst RST_38                                    ; $708A: $FF
    inc e                                         ; $708B: $1C
    rst RST_38                                    ; $708C: $FF
    adc a                                         ; $708D: $8F
    sbc a                                         ; $708E: $9F
    ld l, a                                       ; $708F: $6F
    db $FC                                        ; $7090: $FC
    rra                                           ; $7091: $1F
    db $FC                                        ; $7092: $FC
    db $E3                                        ; $7093: $E3
    db $FC                                        ; $7094: $FC
    rlca                                          ; $7095: $07

jr_015_7096:
    ld hl, sp+$3F                                 ; $7096: $F8 $3F
    ldh a, [rIE]                                  ; $7098: $F0 $FF
    ld hl, sp-$01                                 ; $709A: $F8 $FF
    db $FC                                        ; $709C: $FC
    adc a                                         ; $709D: $8F
    sbc h                                         ; $709E: $9C
    rrca                                          ; $709F: $0F
    nop                                           ; $70A0: $00
    nop                                           ; $70A1: $00
    nop                                           ; $70A2: $00
    nop                                           ; $70A3: $00
    nop                                           ; $70A4: $00
    nop                                           ; $70A5: $00
    nop                                           ; $70A6: $00
    nop                                           ; $70A7: $00
    nop                                           ; $70A8: $00
    nop                                           ; $70A9: $00
    nop                                           ; $70AA: $00
    nop                                           ; $70AB: $00
    add b                                         ; $70AC: $80
    nop                                           ; $70AD: $00
    ret nz                                        ; $70AE: $C0

    add b                                         ; $70AF: $80
    ldh [$FFC0], a                                ; $70B0: $E0 $C0
    ld h, b                                       ; $70B2: $60
    ret nz                                        ; $70B3: $C0

    jr nc, jr_015_7096                            ; $70B4: $30 $E0

    db $10                                        ; $70B6: $10
    ldh [rNR24], a                                ; $70B7: $E0 $19
    ldh a, [$FF09]                                ; $70B9: $F0 $09
    ldh a, [rIF]                                  ; $70BB: $F0 $0F
    ld hl, sp+$0F                                 ; $70BD: $F8 $0F
    ld a, [$0000]                                 ; $70BF: $FA $00 $00
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
    nop                                           ; $70CC: $00
    nop                                           ; $70CD: $00
    ld hl, sp+$00                                 ; $70CE: $F8 $00
    inc h                                         ; $70D0: $24

jr_015_70D1:
    ret c                                         ; $70D1: $D8

    db $FC                                        ; $70D2: $FC
    ret c                                         ; $70D3: $D8

    db $FC                                        ; $70D4: $FC
    jr c, jr_015_70D1                             ; $70D5: $38 $FA

    add h                                         ; $70D7: $84
    ld a, [$FADC]                                 ; $70D8: $FA $DC $FA
    ld e, h                                       ; $70DB: $5C
    db $FC                                        ; $70DC: $FC
    ld h, b                                       ; $70DD: $60
    ld hl, sp+$00                                 ; $70DE: $F8 $00
    nop                                           ; $70E0: $00
    nop                                           ; $70E1: $00
    ld bc, $0600                                  ; $70E2: $01 $00 $06
    ld bc, $070C                                  ; $70E5: $01 $0C $07
    jr jr_015_70F9                                ; $70E8: $18 $0F

    ld sp, $311E                                  ; $70EA: $31 $1E $31
    ld e, $61                                     ; $70ED: $1E $61
    ld a, $65                                     ; $70EF: $3E $65
    ld a, $5D                                     ; $70F1: $3E $5D
    ld [hl], $F9                                  ; $70F3: $36 $F9
    ld c, [hl]                                    ; $70F5: $4E
    reti                                          ; $70F6: $D9


    ld c, $91                                     ; $70F7: $0E $91

jr_015_70F9:
    ld c, $31                                     ; $70F9: $0E $31
    ld e, $31                                     ; $70FB: $1E $31
    ld e, $23                                     ; $70FD: $1E $23
    ld e, $78                                     ; $70FF: $1E $78
    nop                                           ; $7101: $00
    add [hl]                                      ; $7102: $86
    ld a, b                                       ; $7103: $78
    ld bc, $6CFE                                  ; $7104: $01 $FE $6C
    sub e                                         ; $7107: $93
    sub d                                         ; $7108: $92
    ld l, l                                       ; $7109: $6D
    sub d                                         ; $710A: $92
    ld l, l                                       ; $710B: $6D

jr_015_710C:
    sbc [hl]                                      ; $710C: $9E
    ld h, c                                       ; $710D: $61

jr_015_710E:
    ld [hl], c                                    ; $710E: $71
    adc [hl]                                      ; $710F: $8E
    sub c                                         ; $7110: $91
    ld l, [hl]                                    ; $7111: $6E
    ld a, [hl]                                    ; $7112: $7E
    add c                                         ; $7113: $81
    ld [bc], a                                    ; $7114: $02
    db $FD                                        ; $7115: $FD
    inc bc                                        ; $7116: $03
    db $FC                                        ; $7117: $FC
    add a                                         ; $7118: $87
    db $FC                                        ; $7119: $FC
    rst RST_38                                    ; $711A: $FF
    ld a, d                                       ; $711B: $7A
    ld a, a                                       ; $711C: $7F
    add e                                         ; $711D: $83
    ld l, e                                       ; $711E: $6B
    sub l                                         ; $711F: $95

jr_015_7120:
    nop                                           ; $7120: $00
    nop                                           ; $7121: $00
    nop                                           ; $7122: $00
    nop                                           ; $7123: $00
    add b                                         ; $7124: $80
    nop                                           ; $7125: $00
    ret nz                                        ; $7126: $C0

    add b                                         ; $7127: $80
    ld h, b                                       ; $7128: $60
    ret nz                                        ; $7129: $C0

    jr nc, jr_015_710C                            ; $712A: $30 $E0

    jr nc, jr_015_710E                            ; $712C: $30 $E0

    jr jr_015_7120                                ; $712E: $18 $F0

    sbc b                                         ; $7130: $98
    ldh a, [$FFE8]                                ; $7131: $F0 $E8
    or b                                          ; $7133: $B0
    ld a, h                                       ; $7134: $7C
    ret z                                         ; $7135: $C8

    db $EC                                        ; $7136: $EC
    ld b, b                                       ; $7137: $40
    ld h, h                                       ; $7138: $64
    add b                                         ; $7139: $80
    ldh a, [rNR41]                                ; $713A: $F0 $20
    ldh a, [$FFA0]                                ; $713C: $F0 $A0
    ldh a, [$FFC0]                                ; $713E: $F0 $C0
    sbc d                                         ; $7140: $9A
    ld a, l                                       ; $7141: $7D
    sbc b                                         ; $7142: $98
    ld a, a                                       ; $7143: $7F

jr_015_7144:
    cp b                                          ; $7144: $B8
    ld l, a                                       ; $7145: $6F
    ld hl, sp+$4F                                 ; $7146: $F8 $4F
    ret c                                         ; $7148: $D8

    rrca                                          ; $7149: $0F
    ret c                                         ; $714A: $D8

    rrca                                          ; $714B: $0F
    sbc b                                         ; $714C: $98
    rrca                                          ; $714D: $0F
    jr jr_015_715F                                ; $714E: $18 $0F

    inc c                                         ; $7150: $0C
    rlca                                          ; $7151: $07
    inc c                                         ; $7152: $0C
    rlca                                          ; $7153: $07
    inc c                                         ; $7154: $0C
    rlca                                          ; $7155: $07
    inc c                                         ; $7156: $0C
    rlca                                          ; $7157: $07
    dec c                                         ; $7158: $0D
    ld b, $0E                                     ; $7159: $06 $0E
    dec b                                         ; $715B: $05
    rrca                                          ; $715C: $0F
    dec b                                         ; $715D: $05
    dec c                                         ; $715E: $0D

jr_015_715F:
    ld b, $B7                                     ; $715F: $06 $B7
    ld c, d                                       ; $7161: $4A
    ei                                            ; $7162: $FB
    ld d, h                                       ; $7163: $54
    ld sp, hl                                     ; $7164: $F9
    ld d, [hl]                                    ; $7165: $56
    rst RST_38                                    ; $7166: $FF
    ld l, c                                       ; $7167: $69
    rst RST_38                                    ; $7168: $FF
    ld l, a                                       ; $7169: $6F
    ld a, a                                       ; $716A: $7F
    or e                                          ; $716B: $B3
    ld a, e                                       ; $716C: $7B
    or a                                          ; $716D: $B7

jr_015_716E:
    ld [hl], e                                    ; $716E: $73
    xor a                                         ; $716F: $AF
    ld h, e                                       ; $7170: $63
    sbc a                                         ; $7171: $9F
    ld h, e                                       ; $7172: $63
    sbc [hl]                                      ; $7173: $9E
    ld b, a                                       ; $7174: $47
    cp a                                          ; $7175: $BF
    rst RST_30                                    ; $7176: $F7
    rrca                                          ; $7177: $0F
    cp a                                          ; $7178: $BF
    ld [hl], a                                    ; $7179: $77
    rst RST_38                                    ; $717A: $FF
    add b                                         ; $717B: $80
    adc h                                         ; $717C: $8C
    ld [hl], e                                    ; $717D: $73
    rst RST_38                                    ; $717E: $FF
    ld a, e                                       ; $717F: $7B
    ld b, b                                       ; $7180: $40
    add b                                         ; $7181: $80
    jr nz, jr_015_7144                            ; $7182: $20 $C0

    ldh [rP1], a                                  ; $7184: $E0 $00
    ld hl, sp-$40                                 ; $7186: $F8 $C0
    db $FC                                        ; $7188: $FC
    ld l, b                                       ; $7189: $68
    db $FC                                        ; $718A: $FC
    ld l, b                                       ; $718B: $68
    db $FC                                        ; $718C: $FC
    and b                                         ; $718D: $A0
    or b                                          ; $718E: $B0
    nop                                           ; $718F: $00
    add b                                         ; $7190: $80
    nop                                           ; $7191: $00
    ret nz                                        ; $7192: $C0

    nop                                           ; $7193: $00
    ldh [$FFC0], a                                ; $7194: $E0 $C0
    ldh [$FFC0], a                                ; $7196: $E0 $C0
    ldh a, [$FF60]                                ; $7198: $F0 $60
    ldh a, [rNR41]                                ; $719A: $F0 $20
    jr c, jr_015_716E                             ; $719C: $38 $D0

    ld hl, sp-$30                                 ; $719E: $F8 $D0
    rst RST_28                                    ; $71A0: $EF
    ld d, [hl]                                    ; $71A1: $56
    rst RST_38                                    ; $71A2: $FF
    ld d, [hl]                                    ; $71A3: $56
    rst RST_18                                    ; $71A4: $DF
    ld h, a                                       ; $71A5: $67
    rst RST_38                                    ; $71A6: $FF
    ld e, b                                       ; $71A7: $58
    ld a, a                                       ; $71A8: $7F
    rra                                           ; $71A9: $1F
    ld a, a                                       ; $71AA: $7F
    rra                                           ; $71AB: $1F
    ld a, a                                       ; $71AC: $7F
    cpl                                           ; $71AD: $2F
    ld a, a                                       ; $71AE: $7F
    cpl                                           ; $71AF: $2F
    ld l, a                                       ; $71B0: $6F
    scf                                           ; $71B1: $37
    ld h, a                                       ; $71B2: $67
    add hl, sp                                    ; $71B3: $39
    inc sp                                        ; $71B4: $33
    inc e                                         ; $71B5: $1C
    scf                                           ; $71B6: $37
    jr jr_015_71F8                                ; $71B7: $18 $3F

    db $10                                        ; $71B9: $10
    ld a, $10                                     ; $71BA: $3E $10
    ccf                                           ; $71BC: $3F
    nop                                           ; $71BD: $00
    dec sp                                        ; $71BE: $3B

jr_015_71BF:
    inc b                                         ; $71BF: $04
    rst RST_38                                    ; $71C0: $FF
    jr c, @-$06                                   ; $71C1: $38 $F8

    rst RST_30                                    ; $71C3: $F7
    rst RST_38                                    ; $71C4: $FF
    jr c, jr_015_71BF                             ; $71C5: $38 $F8

    rst RST_00                                    ; $71C7: $C7
    rst RST_38                                    ; $71C8: $FF
    ldh a, [$FFFC]                                ; $71C9: $F0 $FC
    ld hl, sp-$04                                 ; $71CB: $F8 $FC
    ld hl, sp-$04                                 ; $71CD: $F8 $FC
    ld a, b                                       ; $71CF: $78
    cp $B4                                        ; $71D0: $FE $B4
    cp $CC                                        ; $71D2: $FE $CC
    cp $DC                                        ; $71D4: $FE $DC
    cp $6C                                        ; $71D6: $FE $6C
    cp $6C                                        ; $71D8: $FE $6C
    db $FC                                        ; $71DA: $FC
    ld l, b                                       ; $71DB: $68
    db $FC                                        ; $71DC: $FC
    ret c                                         ; $71DD: $D8

    ld hl, sp-$30                                 ; $71DE: $F8 $D0
    nop                                           ; $71E0: $00
    nop                                           ; $71E1: $00
    add b                                         ; $71E2: $80
    nop                                           ; $71E3: $00
    nop                                           ; $71E4: $00
    nop                                           ; $71E5: $00
    add b                                         ; $71E6: $80
    nop                                           ; $71E7: $00
    nop                                           ; $71E8: $00
    nop                                           ; $71E9: $00
    nop                                           ; $71EA: $00
    nop                                           ; $71EB: $00
    nop                                           ; $71EC: $00
    nop                                           ; $71ED: $00
    nop                                           ; $71EE: $00
    nop                                           ; $71EF: $00
    nop                                           ; $71F0: $00
    nop                                           ; $71F1: $00
    nop                                           ; $71F2: $00
    nop                                           ; $71F3: $00
    nop                                           ; $71F4: $00
    nop                                           ; $71F5: $00
    nop                                           ; $71F6: $00
    nop                                           ; $71F7: $00

jr_015_71F8:
    nop                                           ; $71F8: $00
    nop                                           ; $71F9: $00
    nop                                           ; $71FA: $00
    nop                                           ; $71FB: $00
    nop                                           ; $71FC: $00
    nop                                           ; $71FD: $00
    nop                                           ; $71FE: $00
    nop                                           ; $71FF: $00
    rst RST_08                                    ; $7200: $CF

jr_015_7201:
    ld [hl], $DF                                  ; $7201: $36 $DF
    ld [hl-], a                                   ; $7203: $32
    ld e, e                                       ; $7204: $5B
    inc [hl]                                      ; $7205: $34
    ld e, a                                       ; $7206: $5F
    jr nc, jr_015_725A                            ; $7207: $30 $51

    jr nz, jr_015_725B                            ; $7209: $20 $50

    jr nz, jr_015_727D                            ; $720B: $20 $70

    jr nz, jr_015_727F                            ; $720D: $20 $70

    jr nz, jr_015_7231                            ; $720F: $20 $20

    nop                                           ; $7211: $00
    nop                                           ; $7212: $00
    nop                                           ; $7213: $00
    nop                                           ; $7214: $00
    nop                                           ; $7215: $00
    nop                                           ; $7216: $00
    nop                                           ; $7217: $00
    nop                                           ; $7218: $00
    nop                                           ; $7219: $00
    nop                                           ; $721A: $00
    nop                                           ; $721B: $00
    nop                                           ; $721C: $00
    nop                                           ; $721D: $00
    nop                                           ; $721E: $00
    nop                                           ; $721F: $00
    ldh [$FFC0], a                                ; $7220: $E0 $C0
    ldh [$FFC0], a                                ; $7222: $E0 $C0
    ldh [$FFC0], a                                ; $7224: $E0 $C0
    ldh [$FFC0], a                                ; $7226: $E0 $C0
    ldh [$FFC0], a                                ; $7228: $E0 $C0
    ldh a, [$FF60]                                ; $722A: $F0 $60
    ldh a, [$FF60]                                ; $722C: $F0 $60
    ld [hl], b                                    ; $722E: $70
    jr nz, jr_015_72A9                            ; $722F: $20 $78

jr_015_7231:
    jr nc, jr_015_726B                            ; $7231: $30 $38

    db $10                                        ; $7233: $10
    jr jr_015_7236                                ; $7234: $18 $00

jr_015_7236:
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
    ld [hl], $00                                  ; $7240: $36 $00
    ld c, c                                       ; $7242: $49
    ld [hl], $C9                                  ; $7243: $36 $C9
    ld [hl], $CF                                  ; $7245: $36 $CF
    jr nc, jr_015_7201                            ; $7247: $30 $B8

    ld b, a                                       ; $7249: $47
    ret z                                         ; $724A: $C8

    scf                                           ; $724B: $37
    cp a                                          ; $724C: $BF
    ld b, b                                       ; $724D: $40
    add c                                         ; $724E: $81
    ld a, [hl]                                    ; $724F: $7E
    add c                                         ; $7250: $81
    ld a, [hl]                                    ; $7251: $7E
    add c                                         ; $7252: $81
    ld a, [hl]                                    ; $7253: $7E
    jp $BF3D                                      ; $7254: $C3 $3D $BF


    ld b, c                                       ; $7257: $41
    or l                                          ; $7258: $B5
    ld c, b                                       ; $7259: $48

jr_015_725A:
    ld d, [hl]                                    ; $725A: $56

jr_015_725B:
    add hl, bc                                    ; $725B: $09
    rla                                           ; $725C: $17
    ld a, [bc]                                    ; $725D: $0A
    rla                                           ; $725E: $17
    ld a, [bc]                                    ; $725F: $0A
    rra                                           ; $7260: $1F
    dec c                                         ; $7261: $0D
    rra                                           ; $7262: $1F
    dec c                                         ; $7263: $0D
    rrca                                          ; $7264: $0F
    ld b, $0F                                     ; $7265: $06 $0F
    ld b, $0E                                     ; $7267: $06 $0E
    dec b                                         ; $7269: $05
    inc c                                         ; $726A: $0C

jr_015_726B:
    inc bc                                        ; $726B: $03
    inc c                                         ; $726C: $0C
    inc bc                                        ; $726D: $03
    ld [$1E07], sp                                ; $726E: $08 $07 $1E
    ld bc, $0E37                                  ; $7271: $01 $37 $0E
    ld e, a                                       ; $7274: $5F
    jr nc, jr_015_72E8                            ; $7275: $30 $71

    ld l, $3F                                     ; $7277: $2E $3F
    rrca                                          ; $7279: $0F
    ld e, a                                       ; $727A: $5F
    inc l                                         ; $727B: $2C
    ld a, a                                       ; $727C: $7F

jr_015_727D:
    dec l                                         ; $727D: $2D
    ccf                                           ; $727E: $3F

jr_015_727F:
    ld c, $7F                                     ; $727F: $0E $7F
    ld sp, $3F7F                                  ; $7281: $31 $7F $3F
    ld a, a                                       ; $7284: $7F
    ccf                                           ; $7285: $3F
    ccf                                           ; $7286: $3F
    rra                                           ; $7287: $1F
    ccf                                           ; $7288: $3F
    ld e, $1F                                     ; $7289: $1E $1F
    rrca                                          ; $728B: $0F
    rrca                                          ; $728C: $0F
    inc bc                                        ; $728D: $03
    rlca                                          ; $728E: $07
    ld bc, $000F                                  ; $728F: $01 $0F $00
    rra                                           ; $7292: $1F
    nop                                           ; $7293: $00
    dec e                                         ; $7294: $1D
    nop                                           ; $7295: $00
    dec sp                                        ; $7296: $3B
    ld bc, $0173                                  ; $7297: $01 $73 $01
    ld h, a                                       ; $729A: $67
    inc bc                                        ; $729B: $03
    ld h, a                                       ; $729C: $67
    ld bc, $0205                                  ; $729D: $01 $05 $02
    add b                                         ; $72A0: $80
    nop                                           ; $72A1: $00
    add b                                         ; $72A2: $80
    nop                                           ; $72A3: $00
    nop                                           ; $72A4: $00
    nop                                           ; $72A5: $00
    nop                                           ; $72A6: $00
    nop                                           ; $72A7: $00
    ret nz                                        ; $72A8: $C0

jr_015_72A9:
    nop                                           ; $72A9: $00
    and b                                         ; $72AA: $A0
    ld b, b                                       ; $72AB: $40
    ldh [rP1], a                                  ; $72AC: $E0 $00
    ldh [$FFC0], a                                ; $72AE: $E0 $C0
    ldh a, [$FFE0]                                ; $72B0: $F0 $E0
    add sp, $50                                   ; $72B2: $E8 $50
    ld h, h                                       ; $72B4: $64
    sbc b                                         ; $72B5: $98
    ccf                                           ; $72B6: $3F
    ret nz                                        ; $72B7: $C0

    rst RST_38                                    ; $72B8: $FF
    dec a                                         ; $72B9: $3D
    rst RST_38                                    ; $72BA: $FF
    cp $FF                                        ; $72BB: $FE $FF
    ld [hl], a                                    ; $72BD: $77
    ld a, a                                       ; $72BE: $7F
    rst RST_30                                    ; $72BF: $F7
    ld [hl], a                                    ; $72C0: $77
    ldh [rSVBK], a                                ; $72C1: $E0 $70
    ldh [$FF78], a                                ; $72C3: $E0 $78
    ret nz                                        ; $72C5: $C0

    db $FC                                        ; $72C6: $FC
    ld hl, sp-$04                                 ; $72C7: $F8 $FC
    ld hl, sp-$02                                 ; $72C9: $F8 $FE
    db $EC                                        ; $72CB: $EC
    cp $04                                        ; $72CC: $FE $04
    add a                                         ; $72CE: $87
    ld a, d                                       ; $72CF: $7A
    rst RST_38                                    ; $72D0: $FF
    ld a, d                                       ; $72D1: $7A
    cp $70                                        ; $72D2: $FE $70
    pop af                                        ; $72D4: $F1
    xor $FE                                       ; $72D5: $EE $FE
    ld [hl], b                                    ; $72D7: $70
    pop af                                        ; $72D8: $F1
    adc [hl]                                      ; $72D9: $8E
    cp $E0                                        ; $72DA: $FE $E0
    ld hl, sp-$10                                 ; $72DC: $F8 $F0
    ld hl, sp-$10                                 ; $72DE: $F8 $F0
    ld hl, sp-$10                                 ; $72E0: $F8 $F0
    db $FC                                        ; $72E2: $FC
    ld l, b                                       ; $72E3: $68
    db $FC                                        ; $72E4: $FC
    sbc b                                         ; $72E5: $98
    cp $BC                                        ; $72E6: $FE $BC

jr_015_72E8:
    cp $DC                                        ; $72E8: $FE $DC
    cp $DC                                        ; $72EA: $FE $DC
    cp $DC                                        ; $72EC: $FE $DC
    sbc $8C                                       ; $72EE: $DE $8C
    sbc $8C                                       ; $72F0: $DE $8C
    sbc [hl]                                      ; $72F2: $9E
    inc c                                         ; $72F3: $0C
    sbc [hl]                                      ; $72F4: $9E
    inc c                                         ; $72F5: $0C
    ld e, $0C                                     ; $72F6: $1E $0C
    ld a, $1C                                     ; $72F8: $3E $1C
    inc a                                         ; $72FA: $3C
    jr jr_015_7339                                ; $72FB: $18 $3C

    jr jr_015_7337                                ; $72FD: $18 $38

    db $10                                        ; $72FF: $10
    rst RST_08                                    ; $7300: $CF
    rlca                                          ; $7301: $07
    rrca                                          ; $7302: $0F
    ld b, $0F                                     ; $7303: $06 $0F
    ld b, $0E                                     ; $7305: $06 $0E
    inc b                                         ; $7307: $04
    ld c, $04                                     ; $7308: $0E $04
    ld c, $04                                     ; $730A: $0E $04
    ld c, $04                                     ; $730C: $0E $04
    inc b                                         ; $730E: $04
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
    nop                                           ; $732A: $00
    nop                                           ; $732B: $00
    nop                                           ; $732C: $00
    nop                                           ; $732D: $00
    nop                                           ; $732E: $00
    nop                                           ; $732F: $00
    nop                                           ; $7330: $00
    nop                                           ; $7331: $00
    nop                                           ; $7332: $00
    nop                                           ; $7333: $00
    nop                                           ; $7334: $00
    nop                                           ; $7335: $00
    add b                                         ; $7336: $80

jr_015_7337:
    nop                                           ; $7337: $00
    ret nz                                        ; $7338: $C0

jr_015_7339:
    add b                                         ; $7339: $80
    ret nz                                        ; $733A: $C0

    add b                                         ; $733B: $80
    add b                                         ; $733C: $80
    nop                                           ; $733D: $00
    add b                                         ; $733E: $80
    nop                                           ; $733F: $00
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
