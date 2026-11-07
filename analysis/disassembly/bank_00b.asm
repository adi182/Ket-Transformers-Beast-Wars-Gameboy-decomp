; Disassembly of "original.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00b", ROMX[$4000], BANK[$b]

    ld e, d                                       ; $4000: $5A
    ld b, [hl]                                    ; $4001: $46
    rst RST_38                                    ; $4002: $FF
    rst RST_38                                    ; $4003: $FF
    add e                                         ; $4004: $83
    ld b, [hl]                                    ; $4005: $46
    rst RST_38                                    ; $4006: $FF
    rst RST_38                                    ; $4007: $FF
    ld e, d                                       ; $4008: $5A
    ld b, [hl]                                    ; $4009: $46
    rst RST_38                                    ; $400A: $FF
    rst RST_38                                    ; $400B: $FF
    ei                                            ; $400C: $FB
    ld b, h                                       ; $400D: $44
    rst RST_38                                    ; $400E: $FF
    rst RST_38                                    ; $400F: $FF
    inc e                                         ; $4010: $1C
    ld c, e                                       ; $4011: $4B
    rst RST_38                                    ; $4012: $FF
    rst RST_38                                    ; $4013: $FF
    ld b, l                                       ; $4014: $45
    ld c, e                                       ; $4015: $4B
    rst RST_38                                    ; $4016: $FF
    rst RST_38                                    ; $4017: $FF
    inc e                                         ; $4018: $1C
    ld c, e                                       ; $4019: $4B
    rst RST_38                                    ; $401A: $FF
    rst RST_38                                    ; $401B: $FF
    ld b, l                                       ; $401C: $45
    ld c, e                                       ; $401D: $4B
    rst RST_38                                    ; $401E: $FF
    rst RST_38                                    ; $401F: $FF
    inc e                                         ; $4020: $1C
    ld c, e                                       ; $4021: $4B
    rst RST_38                                    ; $4022: $FF
    rst RST_38                                    ; $4023: $FF
    ld b, l                                       ; $4024: $45
    ld c, e                                       ; $4025: $4B
    rst RST_38                                    ; $4026: $FF
    rst RST_38                                    ; $4027: $FF
    rst RST_38                                    ; $4028: $FF
    rst RST_38                                    ; $4029: $FF
    ld c, h                                       ; $402A: $4C
    ld b, h                                       ; $402B: $44
    rst RST_38                                    ; $402C: $FF
    rst RST_38                                    ; $402D: $FF
    ld [hl], d                                    ; $402E: $72
    ld b, h                                       ; $402F: $44
    rst RST_38                                    ; $4030: $FF
    rst RST_38                                    ; $4031: $FF
    sub l                                         ; $4032: $95
    ld b, h                                       ; $4033: $44
    rst RST_38                                    ; $4034: $FF
    rst RST_38                                    ; $4035: $FF
    ld [hl], d                                    ; $4036: $72
    ld b, h                                       ; $4037: $44
    rst RST_38                                    ; $4038: $FF
    rst RST_38                                    ; $4039: $FF
    rst RST_38                                    ; $403A: $FF
    rst RST_38                                    ; $403B: $FF
    cp b                                          ; $403C: $B8
    ld b, h                                       ; $403D: $44
    rst RST_38                                    ; $403E: $FF
    rst RST_38                                    ; $403F: $FF
    db $DB                                        ; $4040: $DB
    ld b, h                                       ; $4041: $44
    rst RST_38                                    ; $4042: $FF
    rst RST_38                                    ; $4043: $FF
    ei                                            ; $4044: $FB
    ld b, h                                       ; $4045: $44
    rst RST_38                                    ; $4046: $FF
    rst RST_38                                    ; $4047: $FF
    db $DB                                        ; $4048: $DB
    ld b, h                                       ; $4049: $44
    rst RST_38                                    ; $404A: $FF
    rst RST_38                                    ; $404B: $FF
    rst RST_38                                    ; $404C: $FF
    rst RST_38                                    ; $404D: $FF
    db $DB                                        ; $404E: $DB
    ld b, h                                       ; $404F: $44
    rst RST_38                                    ; $4050: $FF
    rst RST_38                                    ; $4051: $FF
    ei                                            ; $4052: $FB
    ld b, h                                       ; $4053: $44
    rst RST_38                                    ; $4054: $FF
    rst RST_38                                    ; $4055: $FF
    db $DB                                        ; $4056: $DB
    ld b, h                                       ; $4057: $44
    rst RST_38                                    ; $4058: $FF
    rst RST_38                                    ; $4059: $FF
    cp b                                          ; $405A: $B8
    ld b, h                                       ; $405B: $44
    rst RST_38                                    ; $405C: $FF
    rst RST_38                                    ; $405D: $FF
    rst RST_38                                    ; $405E: $FF
    rst RST_38                                    ; $405F: $FF
    ld e, $45                                     ; $4060: $1E $45
    rst RST_38                                    ; $4062: $FF
    rst RST_38                                    ; $4063: $FF
    rst RST_38                                    ; $4064: $FF
    rst RST_38                                    ; $4065: $FF
    ld e, $45                                     ; $4066: $1E $45
    rst RST_38                                    ; $4068: $FF
    rst RST_38                                    ; $4069: $FF
    ld b, c                                       ; $406A: $41
    ld b, l                                       ; $406B: $45
    rst RST_38                                    ; $406C: $FF
    rst RST_38                                    ; $406D: $FF
    ld b, c                                       ; $406E: $41
    ld b, l                                       ; $406F: $45
    rst RST_38                                    ; $4070: $FF
    rst RST_38                                    ; $4071: $FF
    ld h, h                                       ; $4072: $64
    ld b, l                                       ; $4073: $45
    rst RST_38                                    ; $4074: $FF
    rst RST_38                                    ; $4075: $FF
    ld h, h                                       ; $4076: $64
    ld b, l                                       ; $4077: $45
    rst RST_38                                    ; $4078: $FF
    rst RST_38                                    ; $4079: $FF
    ld b, c                                       ; $407A: $41
    ld b, l                                       ; $407B: $45
    rst RST_38                                    ; $407C: $FF
    rst RST_38                                    ; $407D: $FF
    ld b, c                                       ; $407E: $41
    ld b, l                                       ; $407F: $45
    rst RST_38                                    ; $4080: $FF
    rst RST_38                                    ; $4081: $FF
    ld e, $45                                     ; $4082: $1E $45
    rst RST_38                                    ; $4084: $FF
    rst RST_38                                    ; $4085: $FF
    rst RST_38                                    ; $4086: $FF
    rst RST_38                                    ; $4087: $FF
    ld e, $45                                     ; $4088: $1E $45
    rst RST_38                                    ; $408A: $FF
    rst RST_38                                    ; $408B: $FF
    ld b, c                                       ; $408C: $41
    ld b, l                                       ; $408D: $45
    rst RST_38                                    ; $408E: $FF
    rst RST_38                                    ; $408F: $FF
    sub h                                         ; $4090: $94
    ld b, l                                       ; $4091: $45
    rst RST_38                                    ; $4092: $FF
    rst RST_38                                    ; $4093: $FF
    pop bc                                        ; $4094: $C1
    ld b, l                                       ; $4095: $45
    rst RST_38                                    ; $4096: $FF
    rst RST_38                                    ; $4097: $FF
    sbc [hl]                                      ; $4098: $9E
    ld b, l                                       ; $4099: $45
    rst RST_38                                    ; $409A: $FF
    rst RST_38                                    ; $409B: $FF
    bit 0, l                                      ; $409C: $CB $45
    rst RST_38                                    ; $409E: $FF
    rst RST_38                                    ; $409F: $FF
    ld b, c                                       ; $40A0: $41
    ld b, l                                       ; $40A1: $45
    rst RST_38                                    ; $40A2: $FF
    rst RST_38                                    ; $40A3: $FF
    ld e, $45                                     ; $40A4: $1E $45
    rst RST_38                                    ; $40A6: $FF
    rst RST_38                                    ; $40A7: $FF
    rst RST_38                                    ; $40A8: $FF
    rst RST_38                                    ; $40A9: $FF
    ld e, $45                                     ; $40AA: $1E $45
    rst RST_38                                    ; $40AC: $FF
    rst RST_38                                    ; $40AD: $FF
    ld b, c                                       ; $40AE: $41
    ld b, l                                       ; $40AF: $45
    rst RST_38                                    ; $40B0: $FF
    rst RST_38                                    ; $40B1: $FF
    bit 0, l                                      ; $40B2: $CB $45
    rst RST_38                                    ; $40B4: $FF
    rst RST_38                                    ; $40B5: $FF
    sbc [hl]                                      ; $40B6: $9E
    ld b, l                                       ; $40B7: $45
    rst RST_38                                    ; $40B8: $FF
    rst RST_38                                    ; $40B9: $FF
    pop bc                                        ; $40BA: $C1
    ld b, l                                       ; $40BB: $45
    rst RST_38                                    ; $40BC: $FF
    rst RST_38                                    ; $40BD: $FF
    sub h                                         ; $40BE: $94
    ld b, l                                       ; $40BF: $45
    rst RST_38                                    ; $40C0: $FF
    rst RST_38                                    ; $40C1: $FF
    ld b, c                                       ; $40C2: $41
    ld b, l                                       ; $40C3: $45
    rst RST_38                                    ; $40C4: $FF
    rst RST_38                                    ; $40C5: $FF
    ld e, $45                                     ; $40C6: $1E $45
    rst RST_38                                    ; $40C8: $FF
    rst RST_38                                    ; $40C9: $FF
    rst RST_38                                    ; $40CA: $FF
    rst RST_38                                    ; $40CB: $FF
    xor $45                                       ; $40CC: $EE $45
    rst RST_38                                    ; $40CE: $FF
    rst RST_38                                    ; $40CF: $FF
    rst RST_38                                    ; $40D0: $FF
    rst RST_38                                    ; $40D1: $FF
    ld de, $FF46                                  ; $40D2: $11 $46 $FF
    rst RST_38                                    ; $40D5: $FF
    rst RST_38                                    ; $40D6: $FF
    rst RST_38                                    ; $40D7: $FF
    inc [hl]                                      ; $40D8: $34
    ld b, [hl]                                    ; $40D9: $46
    rst RST_38                                    ; $40DA: $FF
    rst RST_38                                    ; $40DB: $FF
    ld e, $45                                     ; $40DC: $1E $45
    rst RST_38                                    ; $40DE: $FF
    rst RST_38                                    ; $40DF: $FF
    rst RST_38                                    ; $40E0: $FF
    rst RST_38                                    ; $40E1: $FF
    ld e, d                                       ; $40E2: $5A
    ld b, [hl]                                    ; $40E3: $46
    rst RST_38                                    ; $40E4: $FF
    rst RST_38                                    ; $40E5: $FF
    add e                                         ; $40E6: $83
    ld b, [hl]                                    ; $40E7: $46
    rst RST_38                                    ; $40E8: $FF
    rst RST_38                                    ; $40E9: $FF
    ld e, d                                       ; $40EA: $5A
    ld b, [hl]                                    ; $40EB: $46
    rst RST_38                                    ; $40EC: $FF
    rst RST_38                                    ; $40ED: $FF
    rst RST_38                                    ; $40EE: $FF
    rst RST_38                                    ; $40EF: $FF
    xor $45                                       ; $40F0: $EE $45
    rst RST_38                                    ; $40F2: $FF
    rst RST_38                                    ; $40F3: $FF
    xor h                                         ; $40F4: $AC
    ld b, [hl]                                    ; $40F5: $46
    rst RST_38                                    ; $40F6: $FF
    rst RST_38                                    ; $40F7: $FF
    xor $45                                       ; $40F8: $EE $45
    rst RST_38                                    ; $40FA: $FF
    rst RST_38                                    ; $40FB: $FF
    rst RST_38                                    ; $40FC: $FF
    rst RST_38                                    ; $40FD: $FF
    ld e, $45                                     ; $40FE: $1E $45
    rst RST_38                                    ; $4100: $FF
    rst RST_38                                    ; $4101: $FF
    push de                                       ; $4102: $D5
    ld b, [hl]                                    ; $4103: $46
    rst RST_38                                    ; $4104: $FF
    rst RST_38                                    ; $4105: $FF
    ld bc, $FF47                                  ; $4106: $01 $47 $FF
    rst RST_38                                    ; $4109: $FF
    jr nc, jr_00B_4153                            ; $410A: $30 $47

    rst RST_38                                    ; $410C: $FF
    rst RST_38                                    ; $410D: $FF
    ld e, c                                       ; $410E: $59
    ld b, a                                       ; $410F: $47
    rst RST_38                                    ; $4110: $FF
    rst RST_38                                    ; $4111: $FF
    push de                                       ; $4112: $D5
    ld b, [hl]                                    ; $4113: $46
    rst RST_38                                    ; $4114: $FF
    rst RST_38                                    ; $4115: $FF
    rst RST_38                                    ; $4116: $FF
    rst RST_38                                    ; $4117: $FF
    add d                                         ; $4118: $82
    ld b, a                                       ; $4119: $47
    rst RST_38                                    ; $411A: $FF
    rst RST_38                                    ; $411B: $FF
    and l                                         ; $411C: $A5
    ld b, a                                       ; $411D: $47
    rst RST_38                                    ; $411E: $FF
    rst RST_38                                    ; $411F: $FF
    add d                                         ; $4120: $82
    ld b, a                                       ; $4121: $47
    rst RST_38                                    ; $4122: $FF
    rst RST_38                                    ; $4123: $FF
    rst RST_38                                    ; $4124: $FF
    rst RST_38                                    ; $4125: $FF
    ret z                                         ; $4126: $C8

    ld b, a                                       ; $4127: $47
    rst RST_38                                    ; $4128: $FF
    rst RST_38                                    ; $4129: $FF
    db $EB                                        ; $412A: $EB
    ld b, a                                       ; $412B: $47
    rst RST_38                                    ; $412C: $FF
    rst RST_38                                    ; $412D: $FF
    ret z                                         ; $412E: $C8

    ld b, a                                       ; $412F: $47
    rst RST_38                                    ; $4130: $FF
    rst RST_38                                    ; $4131: $FF
    rst RST_38                                    ; $4132: $FF
    rst RST_38                                    ; $4133: $FF
    add d                                         ; $4134: $82
    ld b, a                                       ; $4135: $47
    rst RST_38                                    ; $4136: $FF
    rst RST_38                                    ; $4137: $FF
    ld de, $FF48                                  ; $4138: $11 $48 $FF
    rst RST_38                                    ; $413B: $FF
    inc [hl]                                      ; $413C: $34
    ld c, b                                       ; $413D: $48
    rst RST_38                                    ; $413E: $FF
    rst RST_38                                    ; $413F: $FF
    ld l, l                                       ; $4140: $6D
    ld c, b                                       ; $4141: $48
    rst RST_38                                    ; $4142: $FF
    rst RST_38                                    ; $4143: $FF
    add d                                         ; $4144: $82
    ld b, a                                       ; $4145: $47
    rst RST_38                                    ; $4146: $FF
    rst RST_38                                    ; $4147: $FF
    rst RST_38                                    ; $4148: $FF
    rst RST_38                                    ; $4149: $FF
    sub [hl]                                      ; $414A: $96
    ld c, b                                       ; $414B: $48
    rst RST_38                                    ; $414C: $FF
    rst RST_38                                    ; $414D: $FF
    cp h                                          ; $414E: $BC
    ld c, b                                       ; $414F: $48
    rst RST_38                                    ; $4150: $FF
    rst RST_38                                    ; $4151: $FF
    cp h                                          ; $4152: $BC

jr_00B_4153:
    ld c, b                                       ; $4153: $48
    rst RST_38                                    ; $4154: $FF
    rst RST_38                                    ; $4155: $FF
    cp h                                          ; $4156: $BC
    ld c, b                                       ; $4157: $48
    rst RST_38                                    ; $4158: $FF
    rst RST_38                                    ; $4159: $FF
    ld e, $45                                     ; $415A: $1E $45
    rst RST_38                                    ; $415C: $FF
    rst RST_38                                    ; $415D: $FF
    rst RST_38                                    ; $415E: $FF
    rst RST_38                                    ; $415F: $FF
    ldh [c], a                                    ; $4160: $E2
    ld c, b                                       ; $4161: $48
    rst RST_38                                    ; $4162: $FF
    rst RST_38                                    ; $4163: $FF
    dec bc                                        ; $4164: $0B
    ld c, c                                       ; $4165: $49
    rst RST_38                                    ; $4166: $FF
    rst RST_38                                    ; $4167: $FF
    dec bc                                        ; $4168: $0B
    ld c, c                                       ; $4169: $49
    rst RST_38                                    ; $416A: $FF
    rst RST_38                                    ; $416B: $FF
    dec bc                                        ; $416C: $0B
    ld c, c                                       ; $416D: $49
    rst RST_38                                    ; $416E: $FF
    rst RST_38                                    ; $416F: $FF
    ld e, $45                                     ; $4170: $1E $45
    rst RST_38                                    ; $4172: $FF
    rst RST_38                                    ; $4173: $FF
    rst RST_38                                    ; $4174: $FF
    rst RST_38                                    ; $4175: $FF
    ld e, d                                       ; $4176: $5A
    ld b, [hl]                                    ; $4177: $46
    rst RST_38                                    ; $4178: $FF
    rst RST_38                                    ; $4179: $FF
    dec sp                                        ; $417A: $3B
    ld c, c                                       ; $417B: $49
    rst RST_38                                    ; $417C: $FF
    rst RST_38                                    ; $417D: $FF
    ld h, h                                       ; $417E: $64
    ld c, c                                       ; $417F: $49
    rst RST_38                                    ; $4180: $FF
    rst RST_38                                    ; $4181: $FF
    adc d                                         ; $4182: $8A
    ld c, c                                       ; $4183: $49
    rst RST_38                                    ; $4184: $FF
    rst RST_38                                    ; $4185: $FF
    or b                                          ; $4186: $B0
    ld c, c                                       ; $4187: $49
    rst RST_38                                    ; $4188: $FF
    rst RST_38                                    ; $4189: $FF
    sub $49                                       ; $418A: $D6 $49
    rst RST_38                                    ; $418C: $FF
    rst RST_38                                    ; $418D: $FF
    ld sp, hl                                     ; $418E: $F9
    ld c, c                                       ; $418F: $49
    rst RST_38                                    ; $4190: $FF
    rst RST_38                                    ; $4191: $FF
    rra                                           ; $4192: $1F
    ld c, d                                       ; $4193: $4A
    rst RST_38                                    ; $4194: $FF
    rst RST_38                                    ; $4195: $FF
    ld c, b                                       ; $4196: $48
    ld c, d                                       ; $4197: $4A
    rst RST_38                                    ; $4198: $FF
    rst RST_38                                    ; $4199: $FF
    dec sp                                        ; $419A: $3B
    ld c, c                                       ; $419B: $49
    rst RST_38                                    ; $419C: $FF
    rst RST_38                                    ; $419D: $FF
    ld h, h                                       ; $419E: $64
    ld c, c                                       ; $419F: $49
    rst RST_38                                    ; $41A0: $FF
    rst RST_38                                    ; $41A1: $FF
    ld [hl], c                                    ; $41A2: $71
    ld c, d                                       ; $41A3: $4A
    rst RST_38                                    ; $41A4: $FF
    rst RST_38                                    ; $41A5: $FF
    sub a                                         ; $41A6: $97
    ld c, d                                       ; $41A7: $4A
    rst RST_38                                    ; $41A8: $FF
    rst RST_38                                    ; $41A9: $FF
    sub $49                                       ; $41AA: $D6 $49
    rst RST_38                                    ; $41AC: $FF
    rst RST_38                                    ; $41AD: $FF
    ld sp, hl                                     ; $41AE: $F9
    ld c, c                                       ; $41AF: $49
    rst RST_38                                    ; $41B0: $FF
    rst RST_38                                    ; $41B1: $FF
    rra                                           ; $41B2: $1F
    ld c, d                                       ; $41B3: $4A
    rst RST_38                                    ; $41B4: $FF
    rst RST_38                                    ; $41B5: $FF
    ld c, b                                       ; $41B6: $48
    ld c, d                                       ; $41B7: $4A
    rst RST_38                                    ; $41B8: $FF
    rst RST_38                                    ; $41B9: $FF
    push de                                       ; $41BA: $D5
    ld b, [hl]                                    ; $41BB: $46
    rst RST_38                                    ; $41BC: $FF
    rst RST_38                                    ; $41BD: $FF
    ld bc, $FF47                                  ; $41BE: $01 $47 $FF
    rst RST_38                                    ; $41C1: $FF
    jr nc, jr_00B_420B                            ; $41C2: $30 $47

    rst RST_38                                    ; $41C4: $FF
    rst RST_38                                    ; $41C5: $FF
    push de                                       ; $41C6: $D5
    ld b, [hl]                                    ; $41C7: $46
    rst RST_38                                    ; $41C8: $FF
    rst RST_38                                    ; $41C9: $FF
    rst RST_38                                    ; $41CA: $FF
    rst RST_38                                    ; $41CB: $FF
    cp l                                          ; $41CC: $BD
    ld c, d                                       ; $41CD: $4A
    rst RST_38                                    ; $41CE: $FF
    rst RST_38                                    ; $41CF: $FF
    ld e, d                                       ; $41D0: $5A
    ld b, [hl]                                    ; $41D1: $46
    rst RST_38                                    ; $41D2: $FF
    rst RST_38                                    ; $41D3: $FF
    rst RST_38                                    ; $41D4: $FF
    rst RST_38                                    ; $41D5: $FF
    dec d                                         ; $41D6: $15
    ld c, c                                       ; $41D7: $49
    rst RST_38                                    ; $41D8: $FF
    rst RST_38                                    ; $41D9: $FF
    dec d                                         ; $41DA: $15
    ld c, c                                       ; $41DB: $49
    rst RST_38                                    ; $41DC: $FF
    rst RST_38                                    ; $41DD: $FF
    ld e, $45                                     ; $41DE: $1E $45
    rst RST_38                                    ; $41E0: $FF
    rst RST_38                                    ; $41E1: $FF
    rst RST_38                                    ; $41E2: $FF
    rst RST_38                                    ; $41E3: $FF
    db $ED                                        ; $41E4: $ED
    ld c, d                                       ; $41E5: $4A
    rst RST_38                                    ; $41E6: $FF
    rst RST_38                                    ; $41E7: $FF
    ld c, h                                       ; $41E8: $4C
    ld b, h                                       ; $41E9: $44
    rst RST_38                                    ; $41EA: $FF
    rst RST_38                                    ; $41EB: $FF
    rst RST_38                                    ; $41EC: $FF
    rst RST_38                                    ; $41ED: $FF
    ld e, d                                       ; $41EE: $5A
    ld b, [hl]                                    ; $41EF: $46
    rst RST_38                                    ; $41F0: $FF
    rst RST_38                                    ; $41F1: $FF
    inc e                                         ; $41F2: $1C
    ld c, e                                       ; $41F3: $4B
    rst RST_38                                    ; $41F4: $FF
    rst RST_38                                    ; $41F5: $FF
    ld b, l                                       ; $41F6: $45
    ld c, e                                       ; $41F7: $4B
    rst RST_38                                    ; $41F8: $FF
    rst RST_38                                    ; $41F9: $FF
    ld l, [hl]                                    ; $41FA: $6E
    ld c, e                                       ; $41FB: $4B
    rst RST_38                                    ; $41FC: $FF
    rst RST_38                                    ; $41FD: $FF
    sub a                                         ; $41FE: $97
    ld c, e                                       ; $41FF: $4B
    rst RST_38                                    ; $4200: $FF
    rst RST_38                                    ; $4201: $FF
    rst RST_38                                    ; $4202: $FF
    rst RST_38                                    ; $4203: $FF
    ret nz                                        ; $4204: $C0

    ld c, e                                       ; $4205: $4B
    rst RST_38                                    ; $4206: $FF
    rst RST_38                                    ; $4207: $FF
    db $E3                                        ; $4208: $E3
    ld c, e                                       ; $4209: $4B
    rst RST_38                                    ; $420A: $FF

jr_00B_420B:
    rst RST_38                                    ; $420B: $FF
    inc bc                                        ; $420C: $03
    ld c, h                                       ; $420D: $4C
    rst RST_38                                    ; $420E: $FF
    rst RST_38                                    ; $420F: $FF
    rst RST_38                                    ; $4210: $FF
    rst RST_38                                    ; $4211: $FF
    inc bc                                        ; $4212: $03
    ld c, h                                       ; $4213: $4C
    rst RST_38                                    ; $4214: $FF
    rst RST_38                                    ; $4215: $FF
    db $E3                                        ; $4216: $E3
    ld c, e                                       ; $4217: $4B
    rst RST_38                                    ; $4218: $FF
    rst RST_38                                    ; $4219: $FF
    ret nz                                        ; $421A: $C0

    ld c, e                                       ; $421B: $4B
    rst RST_38                                    ; $421C: $FF
    rst RST_38                                    ; $421D: $FF
    rst RST_38                                    ; $421E: $FF
    rst RST_38                                    ; $421F: $FF
    sub l                                         ; $4220: $95
    ld b, h                                       ; $4221: $44
    rst RST_38                                    ; $4222: $FF
    rst RST_38                                    ; $4223: $FF
    inc hl                                        ; $4224: $23
    ld c, h                                       ; $4225: $4C
    rst RST_38                                    ; $4226: $FF
    rst RST_38                                    ; $4227: $FF
    sub l                                         ; $4228: $95
    ld b, h                                       ; $4229: $44
    rst RST_38                                    ; $422A: $FF
    rst RST_38                                    ; $422B: $FF
    rst RST_38                                    ; $422C: $FF
    rst RST_38                                    ; $422D: $FF
    ld a, $48                                     ; $422E: $3E $48
    rst RST_38                                    ; $4230: $FF
    rst RST_38                                    ; $4231: $FF
    ld l, a                                       ; $4232: $6F
    ld c, h                                       ; $4233: $4C
    rst RST_38                                    ; $4234: $FF
    rst RST_38                                    ; $4235: $FF
    sub l                                         ; $4236: $95
    ld c, h                                       ; $4237: $4C
    rst RST_38                                    ; $4238: $FF
    rst RST_38                                    ; $4239: $FF
    cp e                                          ; $423A: $BB
    ld c, h                                       ; $423B: $4C
    rst RST_38                                    ; $423C: $FF
    rst RST_38                                    ; $423D: $FF
    pop hl                                        ; $423E: $E1
    ld c, h                                       ; $423F: $4C
    rst RST_38                                    ; $4240: $FF
    rst RST_38                                    ; $4241: $FF
    pop hl                                        ; $4242: $E1
    ld c, h                                       ; $4243: $4C
    ld c, a                                       ; $4244: $4F
    ld c, h                                       ; $4245: $4C
    pop hl                                        ; $4246: $E1
    ld c, h                                       ; $4247: $4C
    ld d, a                                       ; $4248: $57
    ld c, h                                       ; $4249: $4C
    rst RST_38                                    ; $424A: $FF
    rst RST_38                                    ; $424B: $FF
    ld a, $48                                     ; $424C: $3E $48
    rst RST_38                                    ; $424E: $FF
    rst RST_38                                    ; $424F: $FF
    ld l, a                                       ; $4250: $6F
    ld c, h                                       ; $4251: $4C
    rst RST_38                                    ; $4252: $FF
    rst RST_38                                    ; $4253: $FF
    sub l                                         ; $4254: $95
    ld c, h                                       ; $4255: $4C
    rst RST_38                                    ; $4256: $FF
    rst RST_38                                    ; $4257: $FF
    cp e                                          ; $4258: $BB
    ld c, h                                       ; $4259: $4C
    rst RST_38                                    ; $425A: $FF
    rst RST_38                                    ; $425B: $FF
    pop hl                                        ; $425C: $E1
    ld c, h                                       ; $425D: $4C
    rst RST_38                                    ; $425E: $FF
    rst RST_38                                    ; $425F: $FF
    pop hl                                        ; $4260: $E1
    ld c, h                                       ; $4261: $4C
    ld d, a                                       ; $4262: $57
    ld c, h                                       ; $4263: $4C
    rst RST_38                                    ; $4264: $FF
    rst RST_38                                    ; $4265: $FF
    rlca                                          ; $4266: $07
    ld c, l                                       ; $4267: $4D
    rst RST_38                                    ; $4268: $FF
    rst RST_38                                    ; $4269: $FF
    rst RST_38                                    ; $426A: $FF
    rst RST_38                                    ; $426B: $FF
    rlca                                          ; $426C: $07
    ld c, l                                       ; $426D: $4D
    rst RST_38                                    ; $426E: $FF
    rst RST_38                                    ; $426F: $FF
    rst RST_38                                    ; $4270: $FF
    rst RST_38                                    ; $4271: $FF
    ld c, h                                       ; $4272: $4C
    ld b, h                                       ; $4273: $44
    rst RST_38                                    ; $4274: $FF
    rst RST_38                                    ; $4275: $FF
    rlca                                          ; $4276: $07
    ld c, l                                       ; $4277: $4D
    rst RST_38                                    ; $4278: $FF
    rst RST_38                                    ; $4279: $FF
    jr nc, jr_00B_42C9                            ; $427A: $30 $4D

    rst RST_38                                    ; $427C: $FF
    rst RST_38                                    ; $427D: $FF
    rst RST_38                                    ; $427E: $FF
    rst RST_38                                    ; $427F: $FF
    ld [hl], h                                    ; $4280: $74
    ld c, l                                       ; $4281: $4D
    rst RST_38                                    ; $4282: $FF
    rst RST_38                                    ; $4283: $FF
    rst RST_38                                    ; $4284: $FF
    rst RST_38                                    ; $4285: $FF
    rlca                                          ; $4286: $07
    ld c, l                                       ; $4287: $4D
    rst RST_38                                    ; $4288: $FF
    rst RST_38                                    ; $4289: $FF
    bit 0, l                                      ; $428A: $CB $45
    rst RST_38                                    ; $428C: $FF
    rst RST_38                                    ; $428D: $FF
    sbc [hl]                                      ; $428E: $9E
    ld b, l                                       ; $428F: $45
    rst RST_38                                    ; $4290: $FF
    rst RST_38                                    ; $4291: $FF
    pop bc                                        ; $4292: $C1
    ld b, l                                       ; $4293: $45
    rst RST_38                                    ; $4294: $FF
    rst RST_38                                    ; $4295: $FF
    sub h                                         ; $4296: $94
    ld b, l                                       ; $4297: $45
    rst RST_38                                    ; $4298: $FF
    rst RST_38                                    ; $4299: $FF
    ld b, c                                       ; $429A: $41
    ld b, l                                       ; $429B: $45
    rst RST_38                                    ; $429C: $FF
    rst RST_38                                    ; $429D: $FF
    ld e, $45                                     ; $429E: $1E $45
    rst RST_38                                    ; $42A0: $FF
    rst RST_38                                    ; $42A1: $FF
    rst RST_38                                    ; $42A2: $FF
    rst RST_38                                    ; $42A3: $FF
    rlca                                          ; $42A4: $07
    ld c, l                                       ; $42A5: $4D
    rst RST_38                                    ; $42A6: $FF
    rst RST_38                                    ; $42A7: $FF
    sub a                                         ; $42A8: $97
    ld c, l                                       ; $42A9: $4D
    rst RST_38                                    ; $42AA: $FF
    rst RST_38                                    ; $42AB: $FF
    rst RST_00                                    ; $42AC: $C7
    ld c, l                                       ; $42AD: $4D
    rst RST_38                                    ; $42AE: $FF
    rst RST_38                                    ; $42AF: $FF
    sub a                                         ; $42B0: $97
    ld c, l                                       ; $42B1: $4D
    rst RST_38                                    ; $42B2: $FF
    rst RST_38                                    ; $42B3: $FF
    rst RST_00                                    ; $42B4: $C7
    ld c, l                                       ; $42B5: $4D
    rst RST_38                                    ; $42B6: $FF
    rst RST_38                                    ; $42B7: $FF
    rst RST_38                                    ; $42B8: $FF
    rst RST_38                                    ; $42B9: $FF
    jr nc, jr_00B_4309                            ; $42BA: $30 $4D

    rst RST_38                                    ; $42BC: $FF
    rst RST_38                                    ; $42BD: $FF
    ld a, [hl-]                                   ; $42BE: $3A
    ld c, l                                       ; $42BF: $4D
    rst RST_38                                    ; $42C0: $FF
    rst RST_38                                    ; $42C1: $FF
    ld b, h                                       ; $42C2: $44
    ld c, l                                       ; $42C3: $4D
    rst RST_38                                    ; $42C4: $FF
    rst RST_38                                    ; $42C5: $FF
    ld c, [hl]                                    ; $42C6: $4E
    ld c, l                                       ; $42C7: $4D
    rst RST_38                                    ; $42C8: $FF

jr_00B_42C9:
    rst RST_38                                    ; $42C9: $FF
    ld c, [hl]                                    ; $42CA: $4E
    ld c, l                                       ; $42CB: $4D
    rst RST_38                                    ; $42CC: $FF
    rst RST_38                                    ; $42CD: $FF
    sub a                                         ; $42CE: $97
    ld c, l                                       ; $42CF: $4D
    rst RST_38                                    ; $42D0: $FF
    rst RST_38                                    ; $42D1: $FF
    rst RST_00                                    ; $42D2: $C7
    ld c, l                                       ; $42D3: $4D
    rst RST_38                                    ; $42D4: $FF
    rst RST_38                                    ; $42D5: $FF
    rst RST_38                                    ; $42D6: $FF
    rst RST_38                                    ; $42D7: $FF
    rlca                                          ; $42D8: $07
    ld c, l                                       ; $42D9: $4D
    rst RST_38                                    ; $42DA: $FF
    rst RST_38                                    ; $42DB: $FF
    sub a                                         ; $42DC: $97
    ld c, l                                       ; $42DD: $4D
    rst RST_38                                    ; $42DE: $FF
    rst RST_38                                    ; $42DF: $FF
    rst RST_00                                    ; $42E0: $C7
    ld c, l                                       ; $42E1: $4D
    rst RST_38                                    ; $42E2: $FF
    rst RST_38                                    ; $42E3: $FF
    rst RST_38                                    ; $42E4: $FF
    rst RST_38                                    ; $42E5: $FF
    and c                                         ; $42E6: $A1
    ld c, l                                       ; $42E7: $4D
    rst RST_38                                    ; $42E8: $FF
    rst RST_38                                    ; $42E9: $FF
    rst RST_38                                    ; $42EA: $FF
    rst RST_38                                    ; $42EB: $FF
    ld e, $45                                     ; $42EC: $1E $45
    rst RST_38                                    ; $42EE: $FF
    rst RST_38                                    ; $42EF: $FF
    ld e, $45                                     ; $42F0: $1E $45
    rst RST_38                                    ; $42F2: $FF
    rst RST_38                                    ; $42F3: $FF
    rst RST_38                                    ; $42F4: $FF
    rst RST_38                                    ; $42F5: $FF
    db $E4                                        ; $42F6: $E4
    ld c, l                                       ; $42F7: $4D
    rst RST_38                                    ; $42F8: $FF
    rst RST_38                                    ; $42F9: $FF
    ld b, b                                       ; $42FA: $40
    ld c, [hl]                                    ; $42FB: $4E
    rst RST_38                                    ; $42FC: $FF
    rst RST_38                                    ; $42FD: $FF
    halt                                          ; $42FE: $76
    ld c, [hl]                                    ; $42FF: $4E
    rst RST_38                                    ; $4300: $FF
    rst RST_38                                    ; $4301: $FF
    sbc h                                         ; $4302: $9C
    ld c, [hl]                                    ; $4303: $4E
    rst RST_38                                    ; $4304: $FF
    rst RST_38                                    ; $4305: $FF
    rst RST_38                                    ; $4306: $FF
    rst RST_38                                    ; $4307: $FF
    db $10                                        ; $4308: $10

jr_00B_4309:
    ld c, [hl]                                    ; $4309: $4E
    rst RST_38                                    ; $430A: $FF
    rst RST_38                                    ; $430B: $FF
    ld c, d                                       ; $430C: $4A
    ld c, [hl]                                    ; $430D: $4E
    rst RST_38                                    ; $430E: $FF
    rst RST_38                                    ; $430F: $FF
    halt                                          ; $4310: $76
    ld c, [hl]                                    ; $4311: $4E
    rst RST_38                                    ; $4312: $FF
    rst RST_38                                    ; $4313: $FF
    halt                                          ; $4314: $76
    ld c, [hl]                                    ; $4315: $4E
    rst RST_38                                    ; $4316: $FF
    rst RST_38                                    ; $4317: $FF
    sbc h                                         ; $4318: $9C
    ld c, [hl]                                    ; $4319: $4E
    rst RST_38                                    ; $431A: $FF
    rst RST_38                                    ; $431B: $FF
    rst RST_38                                    ; $431C: $FF
    rst RST_38                                    ; $431D: $FF
    db $E4                                        ; $431E: $E4
    ld c, l                                       ; $431F: $4D
    rst RST_38                                    ; $4320: $FF
    rst RST_38                                    ; $4321: $FF
    db $10                                        ; $4322: $10
    ld c, [hl]                                    ; $4323: $4E
    rst RST_38                                    ; $4324: $FF
    rst RST_38                                    ; $4325: $FF
    ld c, d                                       ; $4326: $4A
    ld c, [hl]                                    ; $4327: $4E
    rst RST_38                                    ; $4328: $FF
    rst RST_38                                    ; $4329: $FF
    halt                                          ; $432A: $76
    ld c, [hl]                                    ; $432B: $4E
    rst RST_38                                    ; $432C: $FF
    rst RST_38                                    ; $432D: $FF
    sbc h                                         ; $432E: $9C
    ld c, [hl]                                    ; $432F: $4E
    rst RST_38                                    ; $4330: $FF
    rst RST_38                                    ; $4331: $FF
    rst RST_38                                    ; $4332: $FF
    rst RST_38                                    ; $4333: $FF
    cp a                                          ; $4334: $BF
    ld c, [hl]                                    ; $4335: $4E
    rst RST_38                                    ; $4336: $FF
    rst RST_38                                    ; $4337: $FF
    push hl                                       ; $4338: $E5
    ld c, [hl]                                    ; $4339: $4E
    rst RST_38                                    ; $433A: $FF
    rst RST_38                                    ; $433B: $FF
    cp a                                          ; $433C: $BF
    ld c, [hl]                                    ; $433D: $4E
    rst RST_38                                    ; $433E: $FF
    rst RST_38                                    ; $433F: $FF
    dec bc                                        ; $4340: $0B
    ld c, a                                       ; $4341: $4F
    rst RST_38                                    ; $4342: $FF
    rst RST_38                                    ; $4343: $FF
    cp a                                          ; $4344: $BF
    ld c, [hl]                                    ; $4345: $4E
    rst RST_38                                    ; $4346: $FF
    rst RST_38                                    ; $4347: $FF
    inc [hl]                                      ; $4348: $34
    ld c, a                                       ; $4349: $4F
    rst RST_38                                    ; $434A: $FF
    rst RST_38                                    ; $434B: $FF
    cp a                                          ; $434C: $BF
    ld c, [hl]                                    ; $434D: $4E
    rst RST_38                                    ; $434E: $FF
    rst RST_38                                    ; $434F: $FF
    ld e, d                                       ; $4350: $5A
    ld c, a                                       ; $4351: $4F
    rst RST_38                                    ; $4352: $FF
    rst RST_38                                    ; $4353: $FF
    cp a                                          ; $4354: $BF
    ld c, [hl]                                    ; $4355: $4E
    rst RST_38                                    ; $4356: $FF
    rst RST_38                                    ; $4357: $FF
    sbc h                                         ; $4358: $9C
    ld c, [hl]                                    ; $4359: $4E
    rst RST_38                                    ; $435A: $FF
    rst RST_38                                    ; $435B: $FF
    add b                                         ; $435C: $80
    ld c, a                                       ; $435D: $4F
    rst RST_38                                    ; $435E: $FF
    rst RST_38                                    ; $435F: $FF
    xor h                                         ; $4360: $AC
    ld c, a                                       ; $4361: $4F
    rst RST_38                                    ; $4362: $FF
    rst RST_38                                    ; $4363: $FF
    rst RST_38                                    ; $4364: $FF
    rst RST_38                                    ; $4365: $FF
    dec sp                                        ; $4366: $3B
    ld c, c                                       ; $4367: $49
    rst RST_38                                    ; $4368: $FF
    rst RST_38                                    ; $4369: $FF
    push de                                       ; $436A: $D5
    ld c, a                                       ; $436B: $4F
    rst RST_38                                    ; $436C: $FF
    rst RST_38                                    ; $436D: $FF
    ei                                            ; $436E: $FB
    ld c, a                                       ; $436F: $4F
    rst RST_38                                    ; $4370: $FF
    rst RST_38                                    ; $4371: $FF
    inc h                                         ; $4372: $24
    ld d, b                                       ; $4373: $50
    rst RST_38                                    ; $4374: $FF
    rst RST_38                                    ; $4375: $FF
    sbc h                                         ; $4376: $9C
    ld c, [hl]                                    ; $4377: $4E
    rst RST_38                                    ; $4378: $FF
    rst RST_38                                    ; $4379: $FF
    rst RST_38                                    ; $437A: $FF
    rst RST_38                                    ; $437B: $FF
    dec sp                                        ; $437C: $3B
    ld c, c                                       ; $437D: $49
    rst RST_38                                    ; $437E: $FF
    rst RST_38                                    ; $437F: $FF
    ld c, d                                       ; $4380: $4A
    ld d, b                                       ; $4381: $50
    rst RST_38                                    ; $4382: $FF
    rst RST_38                                    ; $4383: $FF
    ld a, l                                       ; $4384: $7D
    ld d, b                                       ; $4385: $50
    rst RST_38                                    ; $4386: $FF
    rst RST_38                                    ; $4387: $FF
    and [hl]                                      ; $4388: $A6
    ld d, b                                       ; $4389: $50
    rst RST_38                                    ; $438A: $FF
    rst RST_38                                    ; $438B: $FF
    call z, $FF50                                 ; $438C: $CC $50 $FF
    rst RST_38                                    ; $438F: $FF
    sbc h                                         ; $4390: $9C
    ld c, [hl]                                    ; $4391: $4E
    rst RST_38                                    ; $4392: $FF
    rst RST_38                                    ; $4393: $FF
    rst RST_38                                    ; $4394: $FF
    rst RST_38                                    ; $4395: $FF
    dec sp                                        ; $4396: $3B
    ld c, c                                       ; $4397: $49
    rst RST_38                                    ; $4398: $FF
    rst RST_38                                    ; $4399: $FF
    ld d, h                                       ; $439A: $54
    ld d, b                                       ; $439B: $50
    rst RST_38                                    ; $439C: $FF
    rst RST_38                                    ; $439D: $FF
    ld a, l                                       ; $439E: $7D
    ld d, b                                       ; $439F: $50
    rst RST_38                                    ; $43A0: $FF
    rst RST_38                                    ; $43A1: $FF
    sub a                                         ; $43A2: $97
    ld c, d                                       ; $43A3: $4A
    rst RST_38                                    ; $43A4: $FF
    rst RST_38                                    ; $43A5: $FF
    sub $49                                       ; $43A6: $D6 $49
    rst RST_38                                    ; $43A8: $FF
    rst RST_38                                    ; $43A9: $FF
    rra                                           ; $43AA: $1F
    ld c, d                                       ; $43AB: $4A
    rst RST_38                                    ; $43AC: $FF
    rst RST_38                                    ; $43AD: $FF
    sub $49                                       ; $43AE: $D6 $49
    rst RST_38                                    ; $43B0: $FF
    rst RST_38                                    ; $43B1: $FF
    ld sp, hl                                     ; $43B2: $F9
    ld c, c                                       ; $43B3: $49
    rst RST_38                                    ; $43B4: $FF
    rst RST_38                                    ; $43B5: $FF
    ldh a, [c]                                    ; $43B6: $F2
    ld d, b                                       ; $43B7: $50
    rst RST_38                                    ; $43B8: $FF
    rst RST_38                                    ; $43B9: $FF
    dec de                                        ; $43BA: $1B
    ld d, c                                       ; $43BB: $51
    rst RST_38                                    ; $43BC: $FF
    rst RST_38                                    ; $43BD: $FF
    sbc h                                         ; $43BE: $9C
    ld c, [hl]                                    ; $43BF: $4E
    rst RST_38                                    ; $43C0: $FF
    rst RST_38                                    ; $43C1: $FF
    sbc h                                         ; $43C2: $9C
    ld c, [hl]                                    ; $43C3: $4E
    rst RST_38                                    ; $43C4: $FF
    rst RST_38                                    ; $43C5: $FF
    rst RST_38                                    ; $43C6: $FF
    rst RST_38                                    ; $43C7: $FF
    dec sp                                        ; $43C8: $3B
    ld c, c                                       ; $43C9: $49
    rst RST_38                                    ; $43CA: $FF
    rst RST_38                                    ; $43CB: $FF
    ld c, d                                       ; $43CC: $4A
    ld d, b                                       ; $43CD: $50
    rst RST_38                                    ; $43CE: $FF
    rst RST_38                                    ; $43CF: $FF
    ld a, l                                       ; $43D0: $7D
    ld d, b                                       ; $43D1: $50
    rst RST_38                                    ; $43D2: $FF
    rst RST_38                                    ; $43D3: $FF
    sub a                                         ; $43D4: $97
    ld c, d                                       ; $43D5: $4A
    rst RST_38                                    ; $43D6: $FF
    rst RST_38                                    ; $43D7: $FF
    sub $49                                       ; $43D8: $D6 $49
    rst RST_38                                    ; $43DA: $FF
    rst RST_38                                    ; $43DB: $FF
    ld sp, hl                                     ; $43DC: $F9
    ld c, c                                       ; $43DD: $49
    rst RST_38                                    ; $43DE: $FF
    rst RST_38                                    ; $43DF: $FF
    rra                                           ; $43E0: $1F
    ld c, d                                       ; $43E1: $4A
    rst RST_38                                    ; $43E2: $FF
    rst RST_38                                    ; $43E3: $FF
    ld c, b                                       ; $43E4: $48
    ld c, d                                       ; $43E5: $4A
    rst RST_38                                    ; $43E6: $FF
    rst RST_38                                    ; $43E7: $FF
    ldh a, [c]                                    ; $43E8: $F2
    ld d, b                                       ; $43E9: $50
    rst RST_38                                    ; $43EA: $FF
    rst RST_38                                    ; $43EB: $FF
    dec de                                        ; $43EC: $1B
    ld d, c                                       ; $43ED: $51
    rst RST_38                                    ; $43EE: $FF
    rst RST_38                                    ; $43EF: $FF
    dec sp                                        ; $43F0: $3B
    ld c, c                                       ; $43F1: $49
    rst RST_38                                    ; $43F2: $FF
    rst RST_38                                    ; $43F3: $FF
    dec sp                                        ; $43F4: $3B
    ld c, c                                       ; $43F5: $49
    rst RST_38                                    ; $43F6: $FF
    rst RST_38                                    ; $43F7: $FF
    rst RST_38                                    ; $43F8: $FF
    rst RST_38                                    ; $43F9: $FF
    ld c, h                                       ; $43FA: $4C
    ld b, h                                       ; $43FB: $44
    rst RST_38                                    ; $43FC: $FF
    rst RST_38                                    ; $43FD: $FF
    rst RST_00                                    ; $43FE: $C7
    ld c, d                                       ; $43FF: $4A
    rst RST_38                                    ; $4400: $FF
    rst RST_38                                    ; $4401: $FF
    cp a                                          ; $4402: $BF
    ld c, [hl]                                    ; $4403: $4E
    rst RST_38                                    ; $4404: $FF
    rst RST_38                                    ; $4405: $FF
    push hl                                       ; $4406: $E5
    ld c, [hl]                                    ; $4407: $4E
    rst RST_38                                    ; $4408: $FF
    rst RST_38                                    ; $4409: $FF
    cp a                                          ; $440A: $BF
    ld c, [hl]                                    ; $440B: $4E
    rst RST_38                                    ; $440C: $FF
    rst RST_38                                    ; $440D: $FF
    dec bc                                        ; $440E: $0B
    ld c, a                                       ; $440F: $4F
    rst RST_38                                    ; $4410: $FF
    rst RST_38                                    ; $4411: $FF
    cp a                                          ; $4412: $BF
    ld c, [hl]                                    ; $4413: $4E
    rst RST_38                                    ; $4414: $FF
    rst RST_38                                    ; $4415: $FF
    inc [hl]                                      ; $4416: $34
    ld c, a                                       ; $4417: $4F
    rst RST_38                                    ; $4418: $FF
    rst RST_38                                    ; $4419: $FF
    dec sp                                        ; $441A: $3B
    ld c, c                                       ; $441B: $49
    rst RST_38                                    ; $441C: $FF
    rst RST_38                                    ; $441D: $FF
    push de                                       ; $441E: $D5
    ld c, a                                       ; $441F: $4F
    rst RST_38                                    ; $4420: $FF
    rst RST_38                                    ; $4421: $FF
    ei                                            ; $4422: $FB
    ld c, a                                       ; $4423: $4F
    rst RST_38                                    ; $4424: $FF
    rst RST_38                                    ; $4425: $FF
    inc h                                         ; $4426: $24
    ld d, b                                       ; $4427: $50
    rst RST_38                                    ; $4428: $FF
    rst RST_38                                    ; $4429: $FF
    sub $49                                       ; $442A: $D6 $49
    rst RST_38                                    ; $442C: $FF
    rst RST_38                                    ; $442D: $FF
    ld sp, hl                                     ; $442E: $F9
    ld c, c                                       ; $442F: $49
    rst RST_38                                    ; $4430: $FF
    rst RST_38                                    ; $4431: $FF
    rra                                           ; $4432: $1F
    ld c, d                                       ; $4433: $4A
    rst RST_38                                    ; $4434: $FF
    rst RST_38                                    ; $4435: $FF
    ld c, b                                       ; $4436: $48
    ld c, d                                       ; $4437: $4A
    rst RST_38                                    ; $4438: $FF
    rst RST_38                                    ; $4439: $FF
    ldh a, [c]                                    ; $443A: $F2
    ld d, b                                       ; $443B: $50
    rst RST_38                                    ; $443C: $FF
    rst RST_38                                    ; $443D: $FF
    dec de                                        ; $443E: $1B
    ld d, c                                       ; $443F: $51
    rst RST_38                                    ; $4440: $FF
    rst RST_38                                    ; $4441: $FF
    ld c, b                                       ; $4442: $48
    ld c, d                                       ; $4443: $4A
    rst RST_38                                    ; $4444: $FF
    rst RST_38                                    ; $4445: $FF
    rra                                           ; $4446: $1F
    ld c, d                                       ; $4447: $4A
    rst RST_38                                    ; $4448: $FF
    rst RST_38                                    ; $4449: $FF
    rst RST_38                                    ; $444A: $FF
    rst RST_38                                    ; $444B: $FF
    nop                                           ; $444C: $00
    ld b, $00                                     ; $444D: $06 $00
    nop                                           ; $444F: $00
    ld b, b                                       ; $4450: $40
    inc d                                         ; $4451: $14
    ld d, [hl]                                    ; $4452: $56
    ld b, h                                       ; $4453: $44
    nop                                           ; $4454: $00
    nop                                           ; $4455: $00
    add hl, bc                                    ; $4456: $09
    cpl                                           ; $4457: $2F
    ldh a, [rP1]                                  ; $4458: $F0 $00
    cpl                                           ; $445A: $2F
    ld hl, sp+$02                                 ; $445B: $F8 $02
    cpl                                           ; $445D: $2F
    nop                                           ; $445E: $00
    inc b                                         ; $445F: $04
    jr nc, jr_00B_446A                            ; $4460: $30 $08

    ld b, $20                                     ; $4462: $06 $20
    ld [$1F08], sp                                ; $4464: $08 $08 $1F
    nop                                           ; $4467: $00
    ld a, [bc]                                    ; $4468: $0A
    rra                                           ; $4469: $1F

jr_00B_446A:
    ld hl, sp+$0C                                 ; $446A: $F8 $0C
    rra                                           ; $446C: $1F
    ldh a, [$FF0E]                                ; $446D: $F0 $0E
    daa                                           ; $446F: $27
    add sp, $10                                   ; $4470: $E8 $10
    nop                                           ; $4472: $00
    ld b, $00                                     ; $4473: $06 $00
    jr nz, @+$43                                  ; $4475: $20 $41

    inc d                                         ; $4477: $14
    ld a, h                                       ; $4478: $7C
    ld b, h                                       ; $4479: $44
    nop                                           ; $447A: $00
    nop                                           ; $447B: $00
    ld [$F02F], sp                                ; $447C: $08 $2F $F0
    nop                                           ; $447F: $00
    cpl                                           ; $4480: $2F
    ld hl, sp+$02                                 ; $4481: $F8 $02
    cpl                                           ; $4483: $2F
    nop                                           ; $4484: $00
    inc b                                         ; $4485: $04
    jr nc, jr_00B_4490                            ; $4486: $30 $08

    ld b, $20                                     ; $4488: $06 $20
    ld [$1F08], sp                                ; $448A: $08 $08 $1F
    nop                                           ; $448D: $00
    ld a, [bc]                                    ; $448E: $0A
    rra                                           ; $448F: $1F

jr_00B_4490:
    ld hl, sp+$0C                                 ; $4490: $F8 $0C
    rra                                           ; $4492: $1F
    ldh a, [$FF0E]                                ; $4493: $F0 $0E
    nop                                           ; $4495: $00
    ld b, $00                                     ; $4496: $06 $00
    jr nz, jr_00B_44DC                            ; $4498: $20 $42

    inc d                                         ; $449A: $14
    sbc a                                         ; $449B: $9F
    ld b, h                                       ; $449C: $44

jr_00B_449D:
    nop                                           ; $449D: $00
    nop                                           ; $449E: $00
    ld [$F030], sp                                ; $449F: $08 $30 $F0
    nop                                           ; $44A2: $00
    jr nc, jr_00B_449D                            ; $44A3: $30 $F8

    ld [bc], a                                    ; $44A5: $02
    jr nc, jr_00B_44A8                            ; $44A6: $30 $00

jr_00B_44A8:
    inc b                                         ; $44A8: $04
    jr nc, @+$0A                                  ; $44A9: $30 $08

    ld b, $20                                     ; $44AB: $06 $20
    pop af                                        ; $44AD: $F1
    ld [$F920], sp                                ; $44AE: $08 $20 $F9
    ld a, [bc]                                    ; $44B1: $0A
    jr nz, jr_00B_44B5                            ; $44B2: $20 $01

    inc c                                         ; $44B4: $0C

jr_00B_44B5:
    ld [hl+], a                                   ; $44B5: $22
    add hl, bc                                    ; $44B6: $09
    ld c, $00                                     ; $44B7: $0E $00
    ld bc, $2000                                  ; $44B9: $01 $00 $20
    ld b, e                                       ; $44BC: $43
    inc d                                         ; $44BD: $14

jr_00B_44BE:
    jp nz, $0444                                  ; $44BE: $C2 $44 $04

    nop                                           ; $44C1: $00
    ld [$F030], sp                                ; $44C2: $08 $30 $F0
    nop                                           ; $44C5: $00
    jr nc, @-$06                                  ; $44C6: $30 $F8

    ld [bc], a                                    ; $44C8: $02
    jr nc, jr_00B_44CB                            ; $44C9: $30 $00

jr_00B_44CB:
    inc b                                         ; $44CB: $04
    jr nz, jr_00B_44BE                            ; $44CC: $20 $F0

    ld b, $20                                     ; $44CE: $06 $20
    ld hl, sp+$08                                 ; $44D0: $F8 $08
    jr nz, jr_00B_44D4                            ; $44D2: $20 $00

jr_00B_44D4:
    ld a, [bc]                                    ; $44D4: $0A
    db $10                                        ; $44D5: $10
    db $F4                                        ; $44D6: $F4
    inc c                                         ; $44D7: $0C
    db $10                                        ; $44D8: $10
    db $FC                                        ; $44D9: $FC
    ld c, $00                                     ; $44DA: $0E $00

jr_00B_44DC:
    ld bc, $2000                                  ; $44DC: $01 $00 $20
    ld b, h                                       ; $44DF: $44
    inc d                                         ; $44E0: $14

jr_00B_44E1:
    push hl                                       ; $44E1: $E5
    ld b, h                                       ; $44E2: $44
    inc b                                         ; $44E3: $04
    nop                                           ; $44E4: $00
    rlca                                          ; $44E5: $07
    jr nc, @-$08                                  ; $44E6: $30 $F6

    nop                                           ; $44E8: $00

jr_00B_44E9:
    jr nc, jr_00B_44E9                            ; $44E9: $30 $FE

    ld [bc], a                                    ; $44EB: $02

jr_00B_44EC:
    jr nz, jr_00B_44E1                            ; $44EC: $20 $F3

    inc b                                         ; $44EE: $04
    jr nz, jr_00B_44EC                            ; $44EF: $20 $FB

    ld b, $20                                     ; $44F1: $06 $20
    inc bc                                        ; $44F3: $03
    ld [$F410], sp                                ; $44F4: $08 $10 $F4
    ld a, [bc]                                    ; $44F7: $0A
    db $10                                        ; $44F8: $10
    db $FC                                        ; $44F9: $FC
    inc c                                         ; $44FA: $0C
    nop                                           ; $44FB: $00
    ld bc, $0000                                  ; $44FC: $01 $00 $00
    ld b, l                                       ; $44FF: $45
    inc d                                         ; $4500: $14

jr_00B_4501:
    dec b                                         ; $4501: $05
    ld b, l                                       ; $4502: $45

jr_00B_4503:
    dec b                                         ; $4503: $05
    nop                                           ; $4504: $00
    ld [$F030], sp                                ; $4505: $08 $30 $F0
    nop                                           ; $4508: $00
    jr nc, jr_00B_4503                            ; $4509: $30 $F8

    ld [bc], a                                    ; $450B: $02
    jr nc, jr_00B_450E                            ; $450C: $30 $00

jr_00B_450E:
    inc b                                         ; $450E: $04
    jr nz, jr_00B_4501                            ; $450F: $20 $F0

    ld b, $20                                     ; $4511: $06 $20
    ld hl, sp+$08                                 ; $4513: $F8 $08
    jr nz, jr_00B_4517                            ; $4515: $20 $00

jr_00B_4517:
    ld a, [bc]                                    ; $4517: $0A
    db $10                                        ; $4518: $10
    ldh a, [c]                                    ; $4519: $F2
    inc c                                         ; $451A: $0C
    db $10                                        ; $451B: $10
    ld a, [$000E]                                 ; $451C: $FA $0E $00
    rlca                                          ; $451F: $07
    nop                                           ; $4520: $00
    nop                                           ; $4521: $00
    ld b, [hl]                                    ; $4522: $46
    inc d                                         ; $4523: $14
    jr z, jr_00B_456B                             ; $4524: $28 $45

jr_00B_4526:
    rst RST_38                                    ; $4526: $FF
    nop                                           ; $4527: $00
    ld [$F030], sp                                ; $4528: $08 $30 $F0
    nop                                           ; $452B: $00
    jr nc, jr_00B_4526                            ; $452C: $30 $F8

    ld [bc], a                                    ; $452E: $02
    jr nc, jr_00B_4531                            ; $452F: $30 $00

jr_00B_4531:
    inc b                                         ; $4531: $04
    jr nc, @+$0A                                  ; $4532: $30 $08

    ld b, $20                                     ; $4534: $06 $20
    db $F4                                        ; $4536: $F4
    ld [$FC20], sp                                ; $4537: $08 $20 $FC
    ld a, [bc]                                    ; $453A: $0A
    jr nz, @+$06                                  ; $453B: $20 $04

    inc c                                         ; $453D: $0C
    jr nz, @+$0E                                  ; $453E: $20 $0C

    ld c, $00                                     ; $4540: $0E $00
    ld bc, $0000                                  ; $4542: $01 $00 $00
    ld b, a                                       ; $4545: $47
    inc d                                         ; $4546: $14
    ld c, e                                       ; $4547: $4B
    ld b, l                                       ; $4548: $45
    nop                                           ; $4549: $00
    inc bc                                        ; $454A: $03
    ld [$F01B], sp                                ; $454B: $08 $1B $F0
    nop                                           ; $454E: $00
    dec d                                         ; $454F: $15
    ld hl, sp+$02                                 ; $4550: $F8 $02
    dec d                                         ; $4552: $15
    nop                                           ; $4553: $00
    inc b                                         ; $4554: $04
    ld d, $08                                     ; $4555: $16 $08
    ld b, $25                                     ; $4557: $06 $25
    rst RST_30                                    ; $4559: $F7
    ld [$FF25], sp                                ; $455A: $08 $25 $FF
    ld a, [bc]                                    ; $455D: $0A
    dec h                                         ; $455E: $25
    rlca                                          ; $455F: $07
    inc c                                         ; $4560: $0C
    dec [hl]                                      ; $4561: $35
    rst RST_38                                    ; $4562: $FF
    ld c, $00                                     ; $4563: $0E $00
    ld [$0000], sp                                ; $4565: $08 $00 $00
    ld c, b                                       ; $4568: $48
    inc d                                         ; $4569: $14
    ld a, b                                       ; $456A: $78

jr_00B_456B:
    ld b, l                                       ; $456B: $45
    nop                                           ; $456C: $00
    dec c                                         ; $456D: $0D
    ld h, b                                       ; $456E: $60
    ld [$0000], sp                                ; $456F: $08 $00 $00
    ld c, b                                       ; $4572: $48
    inc d                                         ; $4573: $14
    ld a, b                                       ; $4574: $78
    ld b, l                                       ; $4575: $45
    cp $16                                        ; $4576: $FE $16
    add hl, bc                                    ; $4578: $09
    inc c                                         ; $4579: $0C
    pop af                                        ; $457A: $F1
    nop                                           ; $457B: $00
    inc c                                         ; $457C: $0C
    ld sp, hl                                     ; $457D: $F9
    ld [bc], a                                    ; $457E: $02
    inc c                                         ; $457F: $0C
    ld bc, $0C04                                  ; $4580: $01 $04 $0C
    add hl, bc                                    ; $4583: $09
    ld b, $1C                                     ; $4584: $06 $1C
    pop af                                        ; $4586: $F1
    ld [$F91C], sp                                ; $4587: $08 $1C $F9
    ld a, [bc]                                    ; $458A: $0A
    inc e                                         ; $458B: $1C
    ld bc, $1C0C                                  ; $458C: $01 $0C $1C
    add hl, bc                                    ; $458F: $09
    ld c, $2C                                     ; $4590: $0E $2C
    ld bc, $0010                                  ; $4592: $01 $10 $00
    ld [$2000], sp                                ; $4595: $08 $00 $20
    ld c, c                                       ; $4598: $49
    inc d                                         ; $4599: $14
    xor b                                         ; $459A: $A8
    ld b, l                                       ; $459B: $45
    nop                                           ; $459C: $00
    ld a, [bc]                                    ; $459D: $0A
    ld h, b                                       ; $459E: $60
    ld [$2000], sp                                ; $459F: $08 $00 $20
    ld c, c                                       ; $45A2: $49
    inc d                                         ; $45A3: $14
    xor b                                         ; $45A4: $A8
    ld b, l                                       ; $45A5: $45

jr_00B_45A6:
    nop                                           ; $45A6: $00
    jp hl                                         ; $45A7: $E9


    ld [$F016], sp                                ; $45A8: $08 $16 $F0
    nop                                           ; $45AB: $00
    jr jr_00B_45A6                                ; $45AC: $18 $F8

    ld [bc], a                                    ; $45AE: $02
    ld a, [de]                                    ; $45AF: $1A
    nop                                           ; $45B0: $00
    inc b                                         ; $45B1: $04
    jr jr_00B_45BC                                ; $45B2: $18 $08

    ld b, $1E                                     ; $45B4: $06 $1E
    db $10                                        ; $45B6: $10
    ld [$F808], sp                                ; $45B7: $08 $08 $F8
    ld a, [bc]                                    ; $45BA: $0A
    ld a, [bc]                                    ; $45BB: $0A

jr_00B_45BC:
    nop                                           ; $45BC: $00
    inc c                                         ; $45BD: $0C
    ld [$0E08], sp                                ; $45BE: $08 $08 $0E
    nop                                           ; $45C1: $00
    ld [$2000], sp                                ; $45C2: $08 $00 $20
    ld c, d                                       ; $45C5: $4A
    inc d                                         ; $45C6: $14
    push de                                       ; $45C7: $D5
    ld b, l                                       ; $45C8: $45
    nop                                           ; $45C9: $00
    ld a, [bc]                                    ; $45CA: $0A
    ld h, b                                       ; $45CB: $60
    ld [$2000], sp                                ; $45CC: $08 $00 $20
    ld c, d                                       ; $45CF: $4A
    inc d                                         ; $45D0: $14
    push de                                       ; $45D1: $D5
    ld b, l                                       ; $45D2: $45
    nop                                           ; $45D3: $00
    and $08                                       ; $45D4: $E6 $08
    inc c                                         ; $45D6: $0C
    inc b                                         ; $45D7: $04
    nop                                           ; $45D8: $00
    inc c                                         ; $45D9: $0C
    db $FC                                        ; $45DA: $FC
    ld [bc], a                                    ; $45DB: $02
    ld [de], a                                    ; $45DC: $12
    db $F4                                        ; $45DD: $F4
    inc b                                         ; $45DE: $04
    inc e                                         ; $45DF: $1C
    db $FC                                        ; $45E0: $FC
    ld b, $1C                                     ; $45E1: $06 $1C
    inc b                                         ; $45E3: $04
    ld [$F21D], sp                                ; $45E4: $08 $1D $F2
    ld a, [bc]                                    ; $45E7: $0A
    ld [hl+], a                                   ; $45E8: $22
    ld a, [$2C0C]                                 ; $45E9: $FA $0C $2C
    ld [bc], a                                    ; $45EC: $02
    ld c, $00                                     ; $45ED: $0E $00
    ld b, $00                                     ; $45EF: $06 $00
    jr nz, jr_00B_463E                            ; $45F1: $20 $4B

    inc d                                         ; $45F3: $14
    ld hl, sp+$45                                 ; $45F4: $F8 $45
    ld bc, $0800                                  ; $45F6: $01 $00 $08
    rra                                           ; $45F9: $1F
    ldh a, [rP1]                                  ; $45FA: $F0 $00
    inc e                                         ; $45FC: $1C
    ld hl, sp+$02                                 ; $45FD: $F8 $02
    inc e                                         ; $45FF: $1C
    nop                                           ; $4600: $00
    inc b                                         ; $4601: $04
    dec e                                         ; $4602: $1D
    ld [$2C06], sp                                ; $4603: $08 $06 $2C
    rst RST_30                                    ; $4606: $F7
    ld [$FF2C], sp                                ; $4607: $08 $2C $FF
    ld a, [bc]                                    ; $460A: $0A
    inc l                                         ; $460B: $2C
    rlca                                          ; $460C: $07
    inc c                                         ; $460D: $0C
    inc a                                         ; $460E: $3C
    rst RST_38                                    ; $460F: $FF
    ld c, $00                                     ; $4610: $0E $00
    rlca                                          ; $4612: $07
    nop                                           ; $4613: $00
    jr nz, jr_00B_4662                            ; $4614: $20 $4C

    inc d                                         ; $4616: $14
    dec de                                        ; $4617: $1B
    ld b, [hl]                                    ; $4618: $46
    rlca                                          ; $4619: $07
    nop                                           ; $461A: $00
    ld [$EC30], sp                                ; $461B: $08 $30 $EC
    nop                                           ; $461E: $00
    jr nc, @-$0A                                  ; $461F: $30 $F4

    ld [bc], a                                    ; $4621: $02
    jr nc, @-$02                                  ; $4622: $30 $FC

    inc b                                         ; $4624: $04
    jr nz, @-$14                                  ; $4625: $20 $EA

    ld b, $20                                     ; $4627: $06 $20
    ldh a, [c]                                    ; $4629: $F2
    ld [$FA20], sp                                ; $462A: $08 $20 $FA
    ld a, [bc]                                    ; $462D: $0A
    jr nz, @+$04                                  ; $462E: $20 $02

    inc c                                         ; $4630: $0C
    jr nc, @+$06                                  ; $4631: $30 $04

    ld c, $00                                     ; $4633: $0E $00
    ld [$2000], sp                                ; $4635: $08 $00 $20
    ld c, l                                       ; $4638: $4D
    inc d                                         ; $4639: $14
    ld a, $46                                     ; $463A: $3E $46
    nop                                           ; $463C: $00
    inc c                                         ; $463D: $0C

jr_00B_463E:
    add hl, bc                                    ; $463E: $09
    rrca                                          ; $463F: $0F
    ldh a, [rP1]                                  ; $4640: $F0 $00
    inc c                                         ; $4642: $0C
    ld hl, sp+$02                                 ; $4643: $F8 $02
    inc c                                         ; $4645: $0C
    nop                                           ; $4646: $00
    inc b                                         ; $4647: $04
    inc c                                         ; $4648: $0C
    ld [$1C06], sp                                ; $4649: $08 $06 $1C
    ld hl, sp+$08                                 ; $464C: $F8 $08
    inc e                                         ; $464E: $1C
    nop                                           ; $464F: $00
    ld a, [bc]                                    ; $4650: $0A
    inc e                                         ; $4651: $1C
    ld [$140C], sp                                ; $4652: $08 $0C $14
    db $10                                        ; $4655: $10
    ld c, $2C                                     ; $4656: $0E $2C
    nop                                           ; $4658: $00
    stop                                          ; $4659: $10 $00
    ld b, $00                                     ; $465B: $06 $00
    add b                                         ; $465D: $80
    ld d, e                                       ; $465E: $53
    inc d                                         ; $465F: $14
    ld h, h                                       ; $4660: $64
    ld b, [hl]                                    ; $4661: $46

jr_00B_4662:
    nop                                           ; $4662: $00
    nop                                           ; $4663: $00
    ld a, [bc]                                    ; $4664: $0A
    cpl                                           ; $4665: $2F
    db $ED                                        ; $4666: $ED
    nop                                           ; $4667: $00
    cpl                                           ; $4668: $2F
    push af                                       ; $4669: $F5
    ld [bc], a                                    ; $466A: $02
    cpl                                           ; $466B: $2F
    db $FD                                        ; $466C: $FD
    inc b                                         ; $466D: $04
    jr nc, @+$07                                  ; $466E: $30 $05

    ld b, $3C                                     ; $4670: $06 $3C
    dec c                                         ; $4672: $0D
    ld [$ED1F], sp                                ; $4673: $08 $1F $ED
    ld a, [bc]                                    ; $4676: $0A
    rra                                           ; $4677: $1F
    push af                                       ; $4678: $F5
    inc c                                         ; $4679: $0C
    rra                                           ; $467A: $1F
    db $FD                                        ; $467B: $FD
    ld c, $20                                     ; $467C: $0E $20
    dec b                                         ; $467E: $05
    db $10                                        ; $467F: $10
    rra                                           ; $4680: $1F
    dec c                                         ; $4681: $0D
    ld [de], a                                    ; $4682: $12
    nop                                           ; $4683: $00
    ld b, $D7                                     ; $4684: $06 $D7
    ret nz                                        ; $4686: $C0

    ld d, h                                       ; $4687: $54
    inc d                                         ; $4688: $14
    adc l                                         ; $4689: $8D
    ld b, [hl]                                    ; $468A: $46
    nop                                           ; $468B: $00
    nop                                           ; $468C: $00
    ld a, [bc]                                    ; $468D: $0A
    cpl                                           ; $468E: $2F
    pop af                                        ; $468F: $F1
    nop                                           ; $4690: $00
    cpl                                           ; $4691: $2F
    ld sp, hl                                     ; $4692: $F9
    ld [bc], a                                    ; $4693: $02
    cpl                                           ; $4694: $2F
    ld bc, $2B04                                  ; $4695: $01 $04 $2B
    add hl, bc                                    ; $4698: $09
    ld b, $1F                                     ; $4699: $06 $1F
    db $E4                                        ; $469B: $E4
    ld [$EC1F], sp                                ; $469C: $08 $1F $EC
    ld a, [bc]                                    ; $469F: $0A
    rra                                           ; $46A0: $1F
    db $F4                                        ; $46A1: $F4
    inc c                                         ; $46A2: $0C
    rra                                           ; $46A3: $1F
    db $FC                                        ; $46A4: $FC
    ld c, $1F                                     ; $46A5: $0E $1F
    inc b                                         ; $46A7: $04
    db $10                                        ; $46A8: $10
    dec sp                                        ; $46A9: $3B
    rlca                                          ; $46AA: $07
    ld [de], a                                    ; $46AB: $12
    nop                                           ; $46AC: $00
    ld b, $D8                                     ; $46AD: $06 $D8
    nop                                           ; $46AF: $00
    ld d, [hl]                                    ; $46B0: $56
    inc d                                         ; $46B1: $14
    or [hl]                                       ; $46B2: $B6
    ld b, [hl]                                    ; $46B3: $46
    ld hl, sp+$00                                 ; $46B4: $F8 $00
    ld a, [bc]                                    ; $46B6: $0A
    inc l                                         ; $46B7: $2C
    add sp, $00                                   ; $46B8: $E8 $00
    rra                                           ; $46BA: $1F
    ldh a, [rSC]                                  ; $46BB: $F0 $02
    dec e                                         ; $46BD: $1D
    ld hl, sp+$04                                 ; $46BE: $F8 $04
    dec e                                         ; $46C0: $1D
    nop                                           ; $46C1: $00
    ld b, $1D                                     ; $46C2: $06 $1D
    ld [$2F08], sp                                ; $46C4: $08 $08 $2F
    ldh a, [$FF0A]                                ; $46C7: $F0 $0A
    dec l                                         ; $46C9: $2D
    ld hl, sp+$0C                                 ; $46CA: $F8 $0C
    dec l                                         ; $46CC: $2D
    nop                                           ; $46CD: $00
    ld c, $2D                                     ; $46CE: $0E $2D
    ld [$3D10], sp                                ; $46D0: $08 $10 $3D
    rlca                                          ; $46D3: $07
    ld [de], a                                    ; $46D4: $12
    nop                                           ; $46D5: $00
    ld b, $00                                     ; $46D6: $06 $00
    ld b, b                                       ; $46D8: $40
    ld d, a                                       ; $46D9: $57
    inc d                                         ; $46DA: $14
    rst RST_18                                    ; $46DB: $DF
    ld b, [hl]                                    ; $46DC: $46
    rst RST_30                                    ; $46DD: $F7
    nop                                           ; $46DE: $00
    dec bc                                        ; $46DF: $0B
    cpl                                           ; $46E0: $2F
    ld sp, hl                                     ; $46E1: $F9
    nop                                           ; $46E2: $00
    cpl                                           ; $46E3: $2F
    ld bc, $2F02                                  ; $46E4: $01 $02 $2F
    add hl, bc                                    ; $46E7: $09
    inc b                                         ; $46E8: $04
    ld a, [hl-]                                   ; $46E9: $3A
    ld de, $2206                                  ; $46EA: $11 $06 $22
    rst RST_28                                    ; $46ED: $EF
    ld [$F721], sp                                ; $46EE: $08 $21 $F7
    ld a, [bc]                                    ; $46F1: $0A
    rra                                           ; $46F2: $1F
    rst RST_38                                    ; $46F3: $FF
    inc c                                         ; $46F4: $0C
    rra                                           ; $46F5: $1F
    rlca                                          ; $46F6: $07
    ld c, $22                                     ; $46F7: $0E $22
    rrca                                          ; $46F9: $0F
    db $10                                        ; $46FA: $10
    ld de, $12FD                                  ; $46FB: $11 $FD $12
    rrca                                          ; $46FE: $0F
    dec b                                         ; $46FF: $05
    inc d                                         ; $4700: $14
    nop                                           ; $4701: $00
    ld a, [bc]                                    ; $4702: $0A
    reti                                          ; $4703: $D9


    and b                                         ; $4704: $A0
    ld e, b                                       ; $4705: $58
    inc d                                         ; $4706: $14
    dec bc                                        ; $4707: $0B
    ld b, a                                       ; $4708: $47
    rst RST_30                                    ; $4709: $F7
    nop                                           ; $470A: $00
    inc c                                         ; $470B: $0C
    ld l, $D8                                     ; $470C: $2E $D8
    nop                                           ; $470E: $00
    inc h                                         ; $470F: $24
    ldh [rSC], a                                  ; $4710: $E0 $02
    dec h                                         ; $4712: $25
    add sp, $04                                   ; $4713: $E8 $04
    daa                                           ; $4715: $27
    ldh a, [rTMA]                                 ; $4716: $F0 $06
    cpl                                           ; $4718: $2F
    ld hl, sp+$08                                 ; $4719: $F8 $08
    cpl                                           ; $471B: $2F
    nop                                           ; $471C: $00
    ld a, [bc]                                    ; $471D: $0A
    inc sp                                        ; $471E: $33
    ld [$1F0C], sp                                ; $471F: $08 $0C $1F
    rst RST_30                                    ; $4722: $F7
    ld c, $1F                                     ; $4723: $0E $1F
    rst RST_38                                    ; $4725: $FF
    db $10                                        ; $4726: $10
    rla                                           ; $4727: $17
    rst RST_28                                    ; $4728: $EF
    ld [de], a                                    ; $4729: $12
    rrca                                          ; $472A: $0F
    rst RST_30                                    ; $472B: $F7
    inc d                                         ; $472C: $14
    dec d                                         ; $472D: $15
    rst RST_20                                    ; $472E: $E7
    ld d, $00                                     ; $472F: $16 $00
    ld a, [bc]                                    ; $4731: $0A
    nop                                           ; $4732: $00
    jr nz, jr_00B_478F                            ; $4733: $20 $5A

    inc d                                         ; $4735: $14

jr_00B_4736:
    ld a, [hl-]                                   ; $4736: $3A
    ld b, a                                       ; $4737: $47
    rst RST_30                                    ; $4738: $F7
    nop                                           ; $4739: $00
    ld a, [bc]                                    ; $473A: $0A
    dec l                                         ; $473B: $2D
    ret c                                         ; $473C: $D8

    nop                                           ; $473D: $00
    inc hl                                        ; $473E: $23
    ldh [rSC], a                                  ; $473F: $E0 $02
    inc hl                                        ; $4741: $23
    add sp, $04                                   ; $4742: $E8 $04
    jr z, jr_00B_4736                             ; $4744: $28 $F0

    ld b, $2F                                     ; $4746: $06 $2F
    ld hl, sp+$08                                 ; $4748: $F8 $08
    inc a                                         ; $474A: $3C
    nop                                           ; $474B: $00
    ld a, [bc]                                    ; $474C: $0A
    rra                                           ; $474D: $1F
    ld hl, sp+$0C                                 ; $474E: $F8 $0C
    rra                                           ; $4750: $1F
    nop                                           ; $4751: $00
    ld c, $18                                     ; $4752: $0E $18
    ldh a, [rNR10]                                ; $4754: $F0 $10
    inc de                                        ; $4756: $13
    add sp, $12                                   ; $4757: $E8 $12
    nop                                           ; $4759: $00
    ld a, [bc]                                    ; $475A: $0A
    nop                                           ; $475B: $00
    ld h, b                                       ; $475C: $60
    ld e, e                                       ; $475D: $5B
    inc d                                         ; $475E: $14
    ld h, e                                       ; $475F: $63
    ld b, a                                       ; $4760: $47
    rst RST_30                                    ; $4761: $F7
    nop                                           ; $4762: $00
    ld a, [bc]                                    ; $4763: $0A
    dec l                                         ; $4764: $2D
    jp c, $2300                                   ; $4765: $DA $00 $23

    ldh [c], a                                    ; $4768: $E2
    ld [bc], a                                    ; $4769: $02
    inc hl                                        ; $476A: $23
    ld [$2904], a                                 ; $476B: $EA $04 $29
    ldh a, [c]                                    ; $476E: $F2
    ld b, $2F                                     ; $476F: $06 $2F
    ld a, [$3D08]                                 ; $4771: $FA $08 $3D
    ld [bc], a                                    ; $4774: $02
    ld a, [bc]                                    ; $4775: $0A
    add hl, de                                    ; $4776: $19
    pop af                                        ; $4777: $F1
    inc c                                         ; $4778: $0C
    rra                                           ; $4779: $1F
    ld sp, hl                                     ; $477A: $F9
    ld c, $1F                                     ; $477B: $0E $1F
    ld bc, $1310                                  ; $477D: $01 $10 $13
    jp hl                                         ; $4780: $E9


    ld [de], a                                    ; $4781: $12
    nop                                           ; $4782: $00
    rlca                                          ; $4783: $07
    nop                                           ; $4784: $00
    and b                                         ; $4785: $A0
    ld e, h                                       ; $4786: $5C
    inc d                                         ; $4787: $14

jr_00B_4788:
    adc h                                         ; $4788: $8C
    ld b, a                                       ; $4789: $47
    rst RST_38                                    ; $478A: $FF
    nop                                           ; $478B: $00
    ld [$EE30], sp                                ; $478C: $08 $30 $EE

jr_00B_478F:
    nop                                           ; $478F: $00
    jr nc, jr_00B_4788                            ; $4790: $30 $F6

    ld [bc], a                                    ; $4792: $02

jr_00B_4793:
    jr nc, jr_00B_4793                            ; $4793: $30 $FE

    inc b                                         ; $4795: $04
    jr nc, jr_00B_479E                            ; $4796: $30 $06

    ld b, $20                                     ; $4798: $06 $20
    rst RST_28                                    ; $479A: $EF
    ld [$F720], sp                                ; $479B: $08 $20 $F7

jr_00B_479E:
    ld a, [bc]                                    ; $479E: $0A
    jr nz, @+$01                                  ; $479F: $20 $FF

    inc c                                         ; $47A1: $0C
    dec h                                         ; $47A2: $25
    rlca                                          ; $47A3: $07
    ld c, $00                                     ; $47A4: $0E $00
    rlca                                          ; $47A6: $07
    jp c, Jump_00B_5DA0                           ; $47A7: $DA $A0 $5D

    inc d                                         ; $47AA: $14
    xor a                                         ; $47AB: $AF
    ld b, a                                       ; $47AC: $47
    rst RST_38                                    ; $47AD: $FF
    nop                                           ; $47AE: $00
    ld [$F630], sp                                ; $47AF: $08 $30 $F6
    nop                                           ; $47B2: $00

jr_00B_47B3:
    jr nc, jr_00B_47B3                            ; $47B3: $30 $FE

    ld [bc], a                                    ; $47B5: $02
    jr nc, jr_00B_47BE                            ; $47B6: $30 $06

    inc b                                         ; $47B8: $04
    jr nz, @+$07                                  ; $47B9: $20 $05

    ld b, $20                                     ; $47BB: $06 $20
    db $FD                                        ; $47BD: $FD

jr_00B_47BE:
    ld [$F521], sp                                ; $47BE: $08 $21 $F5
    ld a, [bc]                                    ; $47C1: $0A
    jr z, @-$11                                   ; $47C2: $28 $ED

    inc c                                         ; $47C4: $0C
    inc hl                                        ; $47C5: $23
    push hl                                       ; $47C6: $E5
    ld c, $00                                     ; $47C7: $0E $00
    rlca                                          ; $47C9: $07
    nop                                           ; $47CA: $00
    and b                                         ; $47CB: $A0
    ld e, [hl]                                    ; $47CC: $5E
    inc d                                         ; $47CD: $14

jr_00B_47CE:
    jp nc, $FF47                                  ; $47CE: $D2 $47 $FF

    nop                                           ; $47D1: $00
    ld [$EE30], sp                                ; $47D2: $08 $30 $EE
    nop                                           ; $47D5: $00
    jr nc, jr_00B_47CE                            ; $47D6: $30 $F6

    ld [bc], a                                    ; $47D8: $02

jr_00B_47D9:
    jr nc, jr_00B_47D9                            ; $47D9: $30 $FE

    inc b                                         ; $47DB: $04
    jr nc, jr_00B_47E4                            ; $47DC: $30 $06

jr_00B_47DE:
    ld b, $20                                     ; $47DE: $06 $20
    rst RST_28                                    ; $47E0: $EF
    ld [$F720], sp                                ; $47E1: $08 $20 $F7

jr_00B_47E4:
    ld a, [bc]                                    ; $47E4: $0A
    jr nz, @+$01                                  ; $47E5: $20 $FF

    inc c                                         ; $47E7: $0C
    dec h                                         ; $47E8: $25
    rlca                                          ; $47E9: $07
    ld c, $00                                     ; $47EA: $0E $00
    rlca                                          ; $47EC: $07
    db $DB                                        ; $47ED: $DB
    and b                                         ; $47EE: $A0
    ld e, a                                       ; $47EF: $5F
    inc d                                         ; $47F0: $14
    push af                                       ; $47F1: $F5
    ld b, a                                       ; $47F2: $47
    rst RST_38                                    ; $47F3: $FF
    nop                                           ; $47F4: $00
    add hl, bc                                    ; $47F5: $09
    jr nc, jr_00B_47DE                            ; $47F6: $30 $E6

    nop                                           ; $47F8: $00
    ld l, $EE                                     ; $47F9: $2E $EE
    ld [bc], a                                    ; $47FB: $02
    inc l                                         ; $47FC: $2C
    or $04                                        ; $47FD: $F6 $04

jr_00B_47FF:
    jr nc, jr_00B_47FF                            ; $47FF: $30 $FE

    ld b, $30                                     ; $4801: $06 $30
    ld b, $08                                     ; $4803: $06 $08
    jr nz, @-$07                                  ; $4805: $20 $F7

    ld a, [bc]                                    ; $4807: $0A
    jr nz, @+$01                                  ; $4808: $20 $FF

    inc c                                         ; $480A: $0C
    ld h, $07                                     ; $480B: $26 $07
    ld c, $1E                                     ; $480D: $0E $1E
    xor $10                                       ; $480F: $EE $10
    nop                                           ; $4811: $00

jr_00B_4812:
    rlca                                          ; $4812: $07
    nop                                           ; $4813: $00
    ret nz                                        ; $4814: $C0

    ld h, b                                       ; $4815: $60
    inc d                                         ; $4816: $14
    dec de                                        ; $4817: $1B
    ld c, b                                       ; $4818: $48
    nop                                           ; $4819: $00
    nop                                           ; $481A: $00
    ld [$F330], sp                                ; $481B: $08 $30 $F3
    nop                                           ; $481E: $00
    jr nc, @-$03                                  ; $481F: $30 $FB

    ld [bc], a                                    ; $4821: $02
    jr nc, jr_00B_4827                            ; $4822: $30 $03

    inc b                                         ; $4824: $04
    jr nz, jr_00B_4812                            ; $4825: $20 $EB

jr_00B_4827:
    ld b, $20                                     ; $4827: $06 $20
    di                                            ; $4829: $F3
    ld [$FB20], sp                                ; $482A: $08 $20 $FB
    ld a, [bc]                                    ; $482D: $0A
    jr nz, jr_00B_4833                            ; $482E: $20 $03

    inc c                                         ; $4830: $0C
    inc l                                         ; $4831: $2C
    dec bc                                        ; $4832: $0B

jr_00B_4833:
    ld c, $00                                     ; $4833: $0E $00

jr_00B_4835:
    ld b, $DC                                     ; $4835: $06 $DC
    ret nz                                        ; $4837: $C0

    ld h, c                                       ; $4838: $61
    inc d                                         ; $4839: $14
    ld c, b                                       ; $483A: $48
    ld c, b                                       ; $483B: $48
    nop                                           ; $483C: $00
    nop                                           ; $483D: $00
    nop                                           ; $483E: $00
    ld b, $DC                                     ; $483F: $06 $DC
    ret nz                                        ; $4841: $C0

    ld h, c                                       ; $4842: $61
    inc d                                         ; $4843: $14
    ld c, b                                       ; $4844: $48
    ld c, b                                       ; $4845: $48
    ld [bc], a                                    ; $4846: $02
    nop                                           ; $4847: $00
    inc c                                         ; $4848: $0C
    jr nc, jr_00B_4835                            ; $4849: $30 $EA

jr_00B_484B:
    nop                                           ; $484B: $00
    jr nc, @-$0C                                  ; $484C: $30 $F2

    ld [bc], a                                    ; $484E: $02
    jr nc, jr_00B_484B                            ; $484F: $30 $FA

    inc b                                         ; $4851: $04
    jr nc, jr_00B_4856                            ; $4852: $30 $02

    ld b, $39                                     ; $4854: $06 $39

jr_00B_4856:
    ld a, [bc]                                    ; $4856: $0A
    ld [$DC19], sp                                ; $4857: $08 $19 $DC
    ld a, [bc]                                    ; $485A: $0A
    add hl, de                                    ; $485B: $19
    db $E4                                        ; $485C: $E4
    inc c                                         ; $485D: $0C
    jr nz, @-$14                                  ; $485E: $20 $EA

jr_00B_4860:
    ld c, $20                                     ; $4860: $0E $20
    ldh a, [c]                                    ; $4862: $F2
    db $10                                        ; $4863: $10
    jr nz, jr_00B_4860                            ; $4864: $20 $FA

    ld [de], a                                    ; $4866: $12
    jr nz, jr_00B_486B                            ; $4867: $20 $02

    inc d                                         ; $4869: $14
    db $10                                        ; $486A: $10

jr_00B_486B:
    ldh a, [c]                                    ; $486B: $F2
    ld d, $00                                     ; $486C: $16 $00
    ld b, $00                                     ; $486E: $06 $00
    ld b, b                                       ; $4870: $40
    ld h, e                                       ; $4871: $63
    inc d                                         ; $4872: $14
    ld [hl], a                                    ; $4873: $77
    ld c, b                                       ; $4874: $48
    nop                                           ; $4875: $00

jr_00B_4876:
    nop                                           ; $4876: $00
    ld a, [bc]                                    ; $4877: $0A
    jr nc, jr_00B_486B                            ; $4878: $30 $F1

    nop                                           ; $487A: $00
    jr nc, jr_00B_4876                            ; $487B: $30 $F9

    ld [bc], a                                    ; $487D: $02
    jr nc, jr_00B_4881                            ; $487E: $30 $01

    inc b                                         ; $4880: $04

jr_00B_4881:
    jr nc, jr_00B_488C                            ; $4881: $30 $09

    ld b, $1C                                     ; $4883: $06 $1C

jr_00B_4885:
    sbc $08                                       ; $4885: $DE $08
    inc e                                         ; $4887: $1C
    and $0A                                       ; $4888: $E6 $0A
    ld e, $EE                                     ; $488A: $1E $EE

jr_00B_488C:
    inc c                                         ; $488C: $0C
    jr nz, jr_00B_4885                            ; $488D: $20 $F6

    ld c, $20                                     ; $488F: $0E $20
    cp $10                                        ; $4891: $FE $10
    jr nz, jr_00B_489B                            ; $4893: $20 $06

    ld [de], a                                    ; $4895: $12
    nop                                           ; $4896: $00
    ld [$80DD], sp                                ; $4897: $08 $DD $80
    ld h, h                                       ; $489A: $64

jr_00B_489B:
    inc d                                         ; $489B: $14
    and b                                         ; $489C: $A0
    ld c, b                                       ; $489D: $48
    ld [bc], a                                    ; $489E: $02
    inc c                                         ; $489F: $0C
    add hl, bc                                    ; $48A0: $09
    ld [$00EC], sp                                ; $48A1: $08 $EC $00
    add hl, bc                                    ; $48A4: $09
    db $F4                                        ; $48A5: $F4
    ld [bc], a                                    ; $48A6: $02
    rrca                                          ; $48A7: $0F
    ld a, [$0F04]                                 ; $48A8: $FA $04 $0F
    ld [bc], a                                    ; $48AB: $02
    ld b, $19                                     ; $48AC: $06 $19
    ldh a, [c]                                    ; $48AE: $F2
    ld [$F31F], sp                                ; $48AF: $08 $1F $F3
    ld a, [bc]                                    ; $48B2: $0A
    rra                                           ; $48B3: $1F
    ei                                            ; $48B4: $FB
    inc c                                         ; $48B5: $0C
    rra                                           ; $48B6: $1F
    inc bc                                        ; $48B7: $03

jr_00B_48B8:
    ld c, $17                                     ; $48B8: $0E $17
    ld a, [bc]                                    ; $48BA: $0A
    stop                                          ; $48BB: $10 $00
    ld [$A0DD], sp                                ; $48BD: $08 $DD $A0
    ld h, l                                       ; $48C0: $65
    inc d                                         ; $48C1: $14
    add $48                                       ; $48C2: $C6 $48
    ld bc, $090E                                  ; $48C4: $01 $0E $09
    ld a, [de]                                    ; $48C7: $1A
    db $E4                                        ; $48C8: $E4
    nop                                           ; $48C9: $00
    jr jr_00B_48B8                                ; $48CA: $18 $EC

    ld [bc], a                                    ; $48CC: $02
    ld a, [de]                                    ; $48CD: $1A
    db $F4                                        ; $48CE: $F4
    inc b                                         ; $48CF: $04
    dec de                                        ; $48D0: $1B
    db $FC                                        ; $48D1: $FC
    ld b, $1B                                     ; $48D2: $06 $1B
    inc b                                         ; $48D4: $04
    ld [$F40A], sp                                ; $48D5: $08 $0A $F4
    ld a, [bc]                                    ; $48D8: $0A
    dec bc                                        ; $48D9: $0B
    db $FC                                        ; $48DA: $FC
    inc c                                         ; $48DB: $0C
    dec bc                                        ; $48DC: $0B
    inc b                                         ; $48DD: $04
    ld c, $08                                     ; $48DE: $0E $08
    inc c                                         ; $48E0: $0C
    stop                                          ; $48E1: $10 $00
    ld [$C000], sp                                ; $48E3: $08 $00 $C0
    ld h, [hl]                                    ; $48E6: $66
    inc d                                         ; $48E7: $14
    db $EC                                        ; $48E8: $EC
    ld c, b                                       ; $48E9: $48
    ld bc, $0A0C                                  ; $48EA: $01 $0C $0A
    ld e, $ED                                     ; $48ED: $1E $ED
    nop                                           ; $48EF: $00
    ld e, $F5                                     ; $48F0: $1E $F5
    ld [bc], a                                    ; $48F2: $02
    ld e, $FD                                     ; $48F3: $1E $FD
    inc b                                         ; $48F5: $04
    ld c, $ED                                     ; $48F6: $0E $ED
    ld b, $0E                                     ; $48F8: $06 $0E
    push af                                       ; $48FA: $F5
    ld [$FD0E], sp                                ; $48FB: $08 $0E $FD
    ld a, [bc]                                    ; $48FE: $0A
    ld e, $05                                     ; $48FF: $1E $05
    inc c                                         ; $4901: $0C
    ld c, $05                                     ; $4902: $0E $05
    ld c, $16                                     ; $4904: $0E $16
    dec c                                         ; $4906: $0D
    db $10                                        ; $4907: $10
    ld l, $F8                                     ; $4908: $2E $F8
    ld [de], a                                    ; $490A: $12
    nop                                           ; $490B: $00
    ld [$00DE], sp                                ; $490C: $08 $DE $00
    ld l, b                                       ; $490F: $68
    inc d                                         ; $4910: $14
    rra                                           ; $4911: $1F
    ld c, c                                       ; $4912: $49
    ld bc, $000C                                  ; $4913: $01 $0C $00
    ld [$0000], sp                                ; $4916: $08 $00 $00
    ld l, b                                       ; $4919: $68
    inc d                                         ; $491A: $14
    rra                                           ; $491B: $1F
    ld c, c                                       ; $491C: $49
    inc b                                         ; $491D: $04
    db $10                                        ; $491E: $10
    add hl, bc                                    ; $491F: $09
    add hl, hl                                    ; $4920: $29
    rst RST_20                                    ; $4921: $E7
    nop                                           ; $4922: $00
    ld [hl+], a                                   ; $4923: $22
    rst RST_28                                    ; $4924: $EF
    ld [bc], a                                    ; $4925: $02
    dec e                                         ; $4926: $1D
    rst RST_30                                    ; $4927: $F7
    inc b                                         ; $4928: $04
    ld de, $06E7                                  ; $4929: $11 $E7 $06
    db $10                                        ; $492C: $10
    rst RST_28                                    ; $492D: $EF
    ld [$F70D], sp                                ; $492E: $08 $0D $F7
    ld a, [bc]                                    ; $4931: $0A
    add hl, bc                                    ; $4932: $09
    rst RST_38                                    ; $4933: $FF
    inc c                                         ; $4934: $0C
    add hl, de                                    ; $4935: $19
    rst RST_38                                    ; $4936: $FF
    ld c, $13                                     ; $4937: $0E $13
    rlca                                          ; $4939: $07
    stop                                          ; $493A: $10 $00
    ld b, $00                                     ; $493C: $06 $00

jr_00B_493E:
    jr nz, jr_00B_49A9                            ; $493E: $20 $69

    inc d                                         ; $4940: $14
    ld b, l                                       ; $4941: $45
    ld c, c                                       ; $4942: $49
    nop                                           ; $4943: $00
    nop                                           ; $4944: $00
    ld a, [bc]                                    ; $4945: $0A
    ld [hl-], a                                   ; $4946: $32
    pop af                                        ; $4947: $F1
    nop                                           ; $4948: $00
    ld l, $F9                                     ; $4949: $2E $F9
    ld [bc], a                                    ; $494B: $02
    ld l, $01                                     ; $494C: $2E $01
    inc b                                         ; $494E: $04
    jr jr_00B_493E                                ; $494F: $18 $ED

    ld b, $1C                                     ; $4951: $06 $1C
    push af                                       ; $4953: $F5
    ld [$F50C], sp                                ; $4954: $08 $0C $F5
    ld a, [bc]                                    ; $4957: $0A
    ld e, $FD                                     ; $4958: $1E $FD
    inc c                                         ; $495A: $0C
    jr nz, @+$07                                  ; $495B: $20 $05

    ld c, $23                                     ; $495D: $0E $23
    dec c                                         ; $495F: $0D

jr_00B_4960:
    db $10                                        ; $4960: $10
    jr nc, jr_00B_496A                            ; $4961: $30 $07

    ld [de], a                                    ; $4963: $12
    nop                                           ; $4964: $00
    ld b, $00                                     ; $4965: $06 $00
    ld h, b                                       ; $4967: $60
    ld l, d                                       ; $4968: $6A
    inc d                                         ; $4969: $14

jr_00B_496A:
    ld l, [hl]                                    ; $496A: $6E

jr_00B_496B:
    ld c, c                                       ; $496B: $49
    nop                                           ; $496C: $00
    nop                                           ; $496D: $00
    add hl, bc                                    ; $496E: $09
    jr nc, jr_00B_4960                            ; $496F: $30 $EF

    nop                                           ; $4971: $00
    jr nc, jr_00B_496B                            ; $4972: $30 $F7

    ld [bc], a                                    ; $4974: $02
    jr nc, @+$01                                  ; $4975: $30 $FF

    inc b                                         ; $4977: $04
    jr nc, jr_00B_4981                            ; $4978: $30 $07

    ld b, $20                                     ; $497A: $06 $20
    or $08                                        ; $497C: $F6 $08

jr_00B_497E:
    jr nz, jr_00B_497E                            ; $497E: $20 $FE

    ld a, [bc]                                    ; $4980: $0A

jr_00B_4981:
    jr nz, @+$08                                  ; $4981: $20 $06

    inc c                                         ; $4983: $0C
    db $10                                        ; $4984: $10
    ld sp, hl                                     ; $4985: $F9
    ld c, $10                                     ; $4986: $0E $10

jr_00B_4988:
    ld bc, $0010                                  ; $4988: $01 $10 $00
    ld b, $09                                     ; $498B: $06 $09
    add b                                         ; $498D: $80
    ld l, e                                       ; $498E: $6B
    inc d                                         ; $498F: $14
    sub h                                         ; $4990: $94
    ld c, c                                       ; $4991: $49
    nop                                           ; $4992: $00

jr_00B_4993:
    nop                                           ; $4993: $00
    add hl, bc                                    ; $4994: $09
    jr nc, jr_00B_4988                            ; $4995: $30 $F1

    nop                                           ; $4997: $00
    jr nc, jr_00B_4993                            ; $4998: $30 $F9

    ld [bc], a                                    ; $499A: $02
    jr nc, jr_00B_499E                            ; $499B: $30 $01

    inc b                                         ; $499D: $04

jr_00B_499E:
    jr nc, jr_00B_49A9                            ; $499E: $30 $09

    ld b, $20                                     ; $49A0: $06 $20
    push hl                                       ; $49A2: $E5
    ld [$ED20], sp                                ; $49A3: $08 $20 $ED
    ld a, [bc]                                    ; $49A6: $0A
    jr nz, jr_00B_499E                            ; $49A7: $20 $F5

jr_00B_49A9:
    inc c                                         ; $49A9: $0C
    jr nz, jr_00B_49A9                            ; $49AA: $20 $FD

    ld c, $20                                     ; $49AC: $0E $20

jr_00B_49AE:
    dec b                                         ; $49AE: $05
    stop                                          ; $49AF: $10 $00
    ld b, $00                                     ; $49B1: $06 $00
    and b                                         ; $49B3: $A0
    ld l, h                                       ; $49B4: $6C
    inc d                                         ; $49B5: $14
    cp d                                          ; $49B6: $BA
    ld c, c                                       ; $49B7: $49
    nop                                           ; $49B8: $00

jr_00B_49B9:
    nop                                           ; $49B9: $00
    add hl, bc                                    ; $49BA: $09
    jr nc, jr_00B_49AE                            ; $49BB: $30 $F1

    nop                                           ; $49BD: $00
    jr nc, jr_00B_49B9                            ; $49BE: $30 $F9

    ld [bc], a                                    ; $49C0: $02
    jr nc, jr_00B_49C4                            ; $49C1: $30 $01

    inc b                                         ; $49C3: $04

jr_00B_49C4:
    jr nc, jr_00B_49CF                            ; $49C4: $30 $09

jr_00B_49C6:
    ld b, $20                                     ; $49C6: $06 $20
    rst RST_20                                    ; $49C8: $E7
    ld [$EF20], sp                                ; $49C9: $08 $20 $EF
    ld a, [bc]                                    ; $49CC: $0A
    jr nz, jr_00B_49C6                            ; $49CD: $20 $F7

jr_00B_49CF:
    inc c                                         ; $49CF: $0C
    jr nz, @+$01                                  ; $49D0: $20 $FF

    ld c, $20                                     ; $49D2: $0E $20
    rlca                                          ; $49D4: $07
    stop                                          ; $49D5: $10 $00
    ld b, $00                                     ; $49D7: $06 $00
    ret nz                                        ; $49D9: $C0

    ld l, l                                       ; $49DA: $6D
    inc d                                         ; $49DB: $14
    ldh [rOBP1], a                                ; $49DC: $E0 $49
    nop                                           ; $49DE: $00

jr_00B_49DF:
    nop                                           ; $49DF: $00
    ld [$F130], sp                                ; $49E0: $08 $30 $F1
    nop                                           ; $49E3: $00
    jr nc, jr_00B_49DF                            ; $49E4: $30 $F9

    ld [bc], a                                    ; $49E6: $02
    jr nc, jr_00B_49EA                            ; $49E7: $30 $01

    inc b                                         ; $49E9: $04

jr_00B_49EA:
    jr c, jr_00B_49F5                             ; $49EA: $38 $09

    ld b, $20                                     ; $49EC: $06 $20
    db $EC                                        ; $49EE: $EC
    ld [$F420], sp                                ; $49EF: $08 $20 $F4
    ld a, [bc]                                    ; $49F2: $0A
    jr nz, @-$02                                  ; $49F3: $20 $FC

jr_00B_49F5:
    inc c                                         ; $49F5: $0C
    jr nz, jr_00B_49FC                            ; $49F6: $20 $04

    ld c, $00                                     ; $49F8: $0E $00
    ld b, $00                                     ; $49FA: $06 $00

jr_00B_49FC:
    ret nz                                        ; $49FC: $C0

    ld l, [hl]                                    ; $49FD: $6E
    inc d                                         ; $49FE: $14
    inc bc                                        ; $49FF: $03
    ld c, d                                       ; $4A00: $4A
    nop                                           ; $4A01: $00
    nop                                           ; $4A02: $00
    add hl, bc                                    ; $4A03: $09
    cpl                                           ; $4A04: $2F
    rst RST_28                                    ; $4A05: $EF
    nop                                           ; $4A06: $00
    ld l, $F7                                     ; $4A07: $2E $F7
    ld [bc], a                                    ; $4A09: $02
    cpl                                           ; $4A0A: $2F
    rst RST_38                                    ; $4A0B: $FF
    inc b                                         ; $4A0C: $04
    scf                                           ; $4A0D: $37
    rlca                                          ; $4A0E: $07
    ld b, $1F                                     ; $4A0F: $06 $1F
    rst RST_28                                    ; $4A11: $EF
    ld [$F71E], sp                                ; $4A12: $08 $1E $F7
    ld a, [bc]                                    ; $4A15: $0A
    rra                                           ; $4A16: $1F

jr_00B_4A17:
    rst RST_38                                    ; $4A17: $FF
    inc c                                         ; $4A18: $0C
    ld e, $07                                     ; $4A19: $1E $07
    ld c, $3E                                     ; $4A1B: $0E $3E
    rst RST_30                                    ; $4A1D: $F7
    stop                                          ; $4A1E: $10 $00
    ld b, $09                                     ; $4A20: $06 $09
    ldh [$FF6F], a                                ; $4A22: $E0 $6F
    inc d                                         ; $4A24: $14
    add hl, hl                                    ; $4A25: $29
    ld c, d                                       ; $4A26: $4A
    nop                                           ; $4A27: $00
    nop                                           ; $4A28: $00

jr_00B_4A29:
    ld a, [bc]                                    ; $4A29: $0A
    jr nc, jr_00B_4A17                            ; $4A2A: $30 $EB

    nop                                           ; $4A2C: $00
    cpl                                           ; $4A2D: $2F
    di                                            ; $4A2E: $F3
    ld [bc], a                                    ; $4A2F: $02
    cpl                                           ; $4A30: $2F
    ei                                            ; $4A31: $FB
    inc b                                         ; $4A32: $04
    jr nc, jr_00B_4A38                            ; $4A33: $30 $03

    ld b, $3C                                     ; $4A35: $06 $3C
    dec bc                                        ; $4A37: $0B

jr_00B_4A38:
    ld [$E320], sp                                ; $4A38: $08 $20 $E3
    ld a, [bc]                                    ; $4A3B: $0A
    jr nz, jr_00B_4A29                            ; $4A3C: $20 $EB

    inc c                                         ; $4A3E: $0C
    rra                                           ; $4A3F: $1F
    di                                            ; $4A40: $F3
    ld c, $1F                                     ; $4A41: $0E $1F
    ei                                            ; $4A43: $FB
    db $10                                        ; $4A44: $10

jr_00B_4A45:
    jr nz, @+$05                                  ; $4A45: $20 $03

    ld [de], a                                    ; $4A47: $12
    nop                                           ; $4A48: $00
    ld b, $00                                     ; $4A49: $06 $00
    jr nz, jr_00B_4ABE                            ; $4A4B: $20 $71

    inc d                                         ; $4A4D: $14
    ld d, d                                       ; $4A4E: $52
    ld c, d                                       ; $4A4F: $4A
    nop                                           ; $4A50: $00
    nop                                           ; $4A51: $00
    ld a, [bc]                                    ; $4A52: $0A
    jr nc, jr_00B_4A45                            ; $4A53: $30 $F0

    nop                                           ; $4A55: $00
    cpl                                           ; $4A56: $2F
    ld hl, sp+$02                                 ; $4A57: $F8 $02
    jr nc, jr_00B_4A5B                            ; $4A59: $30 $00

jr_00B_4A5B:
    inc b                                         ; $4A5B: $04
    jr nc, jr_00B_4A66                            ; $4A5C: $30 $08

    ld b, $1F                                     ; $4A5E: $06 $1F
    and $08                                       ; $4A60: $E6 $08
    rra                                           ; $4A62: $1F
    xor $0A                                       ; $4A63: $EE $0A
    rra                                           ; $4A65: $1F

jr_00B_4A66:
    or $0C                                        ; $4A66: $F6 $0C

jr_00B_4A68:
    jr nz, jr_00B_4A68                            ; $4A68: $20 $FE

    ld c, $20                                     ; $4A6A: $0E $20
    ld b, $10                                     ; $4A6C: $06 $10
    cpl                                           ; $4A6E: $2F

jr_00B_4A6F:
    and $12                                       ; $4A6F: $E6 $12
    nop                                           ; $4A71: $00
    ld b, $09                                     ; $4A72: $06 $09
    ld h, b                                       ; $4A74: $60
    ld [hl], d                                    ; $4A75: $72
    inc d                                         ; $4A76: $14
    ld a, e                                       ; $4A77: $7B
    ld c, d                                       ; $4A78: $4A
    nop                                           ; $4A79: $00

jr_00B_4A7A:
    nop                                           ; $4A7A: $00
    add hl, bc                                    ; $4A7B: $09
    jr nc, jr_00B_4A6F                            ; $4A7C: $30 $F1

    nop                                           ; $4A7E: $00
    jr nc, jr_00B_4A7A                            ; $4A7F: $30 $F9

    ld [bc], a                                    ; $4A81: $02

jr_00B_4A82:
    jr nc, jr_00B_4A85                            ; $4A82: $30 $01

    inc b                                         ; $4A84: $04

jr_00B_4A85:
    jr c, jr_00B_4A90                             ; $4A85: $38 $09

    ld b, $20                                     ; $4A87: $06 $20
    ldh [c], a                                    ; $4A89: $E2
    ld [$EA20], sp                                ; $4A8A: $08 $20 $EA

jr_00B_4A8D:
    ld a, [bc]                                    ; $4A8D: $0A
    jr nz, jr_00B_4A82                            ; $4A8E: $20 $F2

jr_00B_4A90:
    inc c                                         ; $4A90: $0C
    jr nz, jr_00B_4A8D                            ; $4A91: $20 $FA

    ld c, $20                                     ; $4A93: $0E $20

jr_00B_4A95:
    ld [bc], a                                    ; $4A95: $02
    stop                                          ; $4A96: $10 $00
    ld b, $00                                     ; $4A98: $06 $00
    add b                                         ; $4A9A: $80
    ld [hl], e                                    ; $4A9B: $73
    inc d                                         ; $4A9C: $14
    and c                                         ; $4A9D: $A1
    ld c, d                                       ; $4A9E: $4A
    nop                                           ; $4A9F: $00

jr_00B_4AA0:
    nop                                           ; $4AA0: $00
    add hl, bc                                    ; $4AA1: $09
    jr nc, jr_00B_4A95                            ; $4AA2: $30 $F1

    nop                                           ; $4AA4: $00
    jr nc, jr_00B_4AA0                            ; $4AA5: $30 $F9

    ld [bc], a                                    ; $4AA7: $02
    jr nc, jr_00B_4AAB                            ; $4AA8: $30 $01

    inc b                                         ; $4AAA: $04

jr_00B_4AAB:
    jr nc, jr_00B_4AB6                            ; $4AAB: $30 $09

    ld b, $20                                     ; $4AAD: $06 $20
    db $E3                                        ; $4AAF: $E3
    ld [$EB20], sp                                ; $4AB0: $08 $20 $EB
    ld a, [bc]                                    ; $4AB3: $0A

jr_00B_4AB4:
    jr nz, @-$0B                                  ; $4AB4: $20 $F3

jr_00B_4AB6:
    inc c                                         ; $4AB6: $0C
    jr nz, jr_00B_4AB4                            ; $4AB7: $20 $FB

    ld c, $20                                     ; $4AB9: $0E $20
    inc bc                                        ; $4ABB: $03
    stop                                          ; $4ABC: $10 $00

jr_00B_4ABE:
    ld b, $00                                     ; $4ABE: $06 $00
    and b                                         ; $4AC0: $A0
    ld [hl], h                                    ; $4AC1: $74
    inc d                                         ; $4AC2: $14
    pop de                                        ; $4AC3: $D1
    ld c, d                                       ; $4AC4: $4A
    nop                                           ; $4AC5: $00
    nop                                           ; $4AC6: $00
    nop                                           ; $4AC7: $00
    ld b, $02                                     ; $4AC8: $06 $02
    and b                                         ; $4ACA: $A0
    ld [hl], h                                    ; $4ACB: $74
    inc d                                         ; $4ACC: $14
    pop de                                        ; $4ACD: $D1
    ld c, d                                       ; $4ACE: $4A
    nop                                           ; $4ACF: $00
    nop                                           ; $4AD0: $00
    add hl, bc                                    ; $4AD1: $09
    ld hl, $00E8                                  ; $4AD2: $21 $E8 $00
    dec e                                         ; $4AD5: $1D
    ldh a, [rSC]                                  ; $4AD6: $F0 $02
    dec e                                         ; $4AD8: $1D
    ld hl, sp+$04                                 ; $4AD9: $F8 $04
    dec l                                         ; $4ADB: $2D
    ldh a, [rTMA]                                 ; $4ADC: $F0 $06
    dec l                                         ; $4ADE: $2D
    ld hl, sp+$08                                 ; $4ADF: $F8 $08
    ld [hl+], a                                   ; $4AE1: $22
    nop                                           ; $4AE2: $00
    ld a, [bc]                                    ; $4AE3: $0A
    ld [hl-], a                                   ; $4AE4: $32
    nop                                           ; $4AE5: $00
    inc c                                         ; $4AE6: $0C
    jr nz, jr_00B_4AF1                            ; $4AE7: $20 $08

    ld c, $38                                     ; $4AE9: $0E $38
    ld [$0010], sp                                ; $4AEB: $08 $10 $00
    ld b, $00                                     ; $4AEE: $06 $00
    ret nz                                        ; $4AF0: $C0

jr_00B_4AF1:
    ld [hl], l                                    ; $4AF1: $75
    inc d                                         ; $4AF2: $14
    rst RST_30                                    ; $4AF3: $F7
    ld c, d                                       ; $4AF4: $4A

jr_00B_4AF5:
    nop                                           ; $4AF5: $00
    nop                                           ; $4AF6: $00
    inc c                                         ; $4AF7: $0C
    jr nc, @-$0E                                  ; $4AF8: $30 $F0

    nop                                           ; $4AFA: $00
    jr nc, jr_00B_4AF5                            ; $4AFB: $30 $F8

    ld [bc], a                                    ; $4AFD: $02
    jr nc, jr_00B_4B00                            ; $4AFE: $30 $00

jr_00B_4B00:
    inc b                                         ; $4B00: $04
    jr nc, @+$0A                                  ; $4B01: $30 $08

    ld b, $20                                     ; $4B03: $06 $20
    xor $08                                       ; $4B05: $EE $08
    jr nz, @-$08                                  ; $4B07: $20 $F6

    ld a, [bc]                                    ; $4B09: $0A

jr_00B_4B0A:
    jr nz, jr_00B_4B0A                            ; $4B0A: $20 $FE

    inc c                                         ; $4B0C: $0C

jr_00B_4B0D:
    jr nz, @+$08                                  ; $4B0D: $20 $06

    ld c, $20                                     ; $4B0F: $0E $20
    ld c, $10                                     ; $4B11: $0E $10
    db $10                                        ; $4B13: $10
    ld hl, sp+$12                                 ; $4B14: $F8 $12
    stop                                          ; $4B16: $10 $00
    inc d                                         ; $4B18: $14
    db $10                                        ; $4B19: $10
    ld [$0016], sp                                ; $4B1A: $08 $16 $00
    ld b, $00                                     ; $4B1D: $06 $00
    ld b, b                                       ; $4B1F: $40
    ld [hl], a                                    ; $4B20: $77
    inc d                                         ; $4B21: $14
    ld h, $4B                                     ; $4B22: $26 $4B
    nop                                           ; $4B24: $00
    nop                                           ; $4B25: $00
    ld a, [bc]                                    ; $4B26: $0A
    jr nz, jr_00B_4B0D                            ; $4B27: $20 $E4

    nop                                           ; $4B29: $00
    inc e                                         ; $4B2A: $1C
    db $EC                                        ; $4B2B: $EC
    ld [bc], a                                    ; $4B2C: $02
    rra                                           ; $4B2D: $1F
    db $F4                                        ; $4B2E: $F4
    inc b                                         ; $4B2F: $04
    rra                                           ; $4B30: $1F
    db $FC                                        ; $4B31: $FC
    ld b, $1F                                     ; $4B32: $06 $1F
    inc b                                         ; $4B34: $04
    ld [$F12F], sp                                ; $4B35: $08 $2F $F1
    ld a, [bc]                                    ; $4B38: $0A
    cpl                                           ; $4B39: $2F
    ld sp, hl                                     ; $4B3A: $F9
    inc c                                         ; $4B3B: $0C
    cpl                                           ; $4B3C: $2F
    ld bc, $2A0E                                  ; $4B3D: $01 $0E $2A
    add hl, bc                                    ; $4B40: $09
    db $10                                        ; $4B41: $10
    ld a, [hl-]                                   ; $4B42: $3A
    rlca                                          ; $4B43: $07
    ld [de], a                                    ; $4B44: $12
    nop                                           ; $4B45: $00
    ld b, $00                                     ; $4B46: $06 $00
    add b                                         ; $4B48: $80
    ld a, b                                       ; $4B49: $78
    inc d                                         ; $4B4A: $14
    ld c, a                                       ; $4B4B: $4F
    ld c, e                                       ; $4B4C: $4B
    nop                                           ; $4B4D: $00
    nop                                           ; $4B4E: $00
    ld a, [bc]                                    ; $4B4F: $0A
    cpl                                           ; $4B50: $2F
    pop af                                        ; $4B51: $F1
    nop                                           ; $4B52: $00
    cpl                                           ; $4B53: $2F
    ld sp, hl                                     ; $4B54: $F9
    ld [bc], a                                    ; $4B55: $02
    cpl                                           ; $4B56: $2F
    ld bc, $2A04                                  ; $4B57: $01 $04 $2A
    add hl, bc                                    ; $4B5A: $09
    ld b, $1F                                     ; $4B5B: $06 $1F
    db $E4                                        ; $4B5D: $E4
    ld [$EC1F], sp                                ; $4B5E: $08 $1F $EC
    ld a, [bc]                                    ; $4B61: $0A
    rra                                           ; $4B62: $1F
    db $F4                                        ; $4B63: $F4
    inc c                                         ; $4B64: $0C
    rra                                           ; $4B65: $1F
    db $FC                                        ; $4B66: $FC
    ld c, $1F                                     ; $4B67: $0E $1F
    inc b                                         ; $4B69: $04
    db $10                                        ; $4B6A: $10
    ld a, [hl-]                                   ; $4B6B: $3A
    rlca                                          ; $4B6C: $07
    ld [de], a                                    ; $4B6D: $12
    nop                                           ; $4B6E: $00
    ld b, $00                                     ; $4B6F: $06 $00
    ret nz                                        ; $4B71: $C0

    ld a, c                                       ; $4B72: $79
    inc d                                         ; $4B73: $14
    ld a, b                                       ; $4B74: $78
    ld c, e                                       ; $4B75: $4B
    nop                                           ; $4B76: $00
    nop                                           ; $4B77: $00
    ld a, [bc]                                    ; $4B78: $0A
    cpl                                           ; $4B79: $2F
    pop af                                        ; $4B7A: $F1
    nop                                           ; $4B7B: $00
    cpl                                           ; $4B7C: $2F
    ld sp, hl                                     ; $4B7D: $F9
    ld [bc], a                                    ; $4B7E: $02
    cpl                                           ; $4B7F: $2F
    ld bc, $3A04                                  ; $4B80: $01 $04 $3A
    rlca                                          ; $4B83: $07
    ld b, $21                                     ; $4B84: $06 $21
    db $E4                                        ; $4B86: $E4
    ld [$EC1F], sp                                ; $4B87: $08 $1F $EC
    ld a, [bc]                                    ; $4B8A: $0A
    rra                                           ; $4B8B: $1F
    db $F4                                        ; $4B8C: $F4
    inc c                                         ; $4B8D: $0C
    rra                                           ; $4B8E: $1F
    db $FC                                        ; $4B8F: $FC
    ld c, $1F                                     ; $4B90: $0E $1F
    inc b                                         ; $4B92: $04
    db $10                                        ; $4B93: $10
    daa                                           ; $4B94: $27
    add hl, bc                                    ; $4B95: $09
    ld [de], a                                    ; $4B96: $12
    nop                                           ; $4B97: $00
    ld b, $00                                     ; $4B98: $06 $00
    nop                                           ; $4B9A: $00
    ld a, e                                       ; $4B9B: $7B
    inc d                                         ; $4B9C: $14
    and c                                         ; $4B9D: $A1
    ld c, e                                       ; $4B9E: $4B
    nop                                           ; $4B9F: $00
    nop                                           ; $4BA0: $00
    ld a, [bc]                                    ; $4BA1: $0A
    cpl                                           ; $4BA2: $2F
    pop af                                        ; $4BA3: $F1
    nop                                           ; $4BA4: $00
    cpl                                           ; $4BA5: $2F
    ld sp, hl                                     ; $4BA6: $F9
    ld [bc], a                                    ; $4BA7: $02
    cpl                                           ; $4BA8: $2F
    ld bc, $3A04                                  ; $4BA9: $01 $04 $3A
    rlca                                          ; $4BAC: $07
    ld b, $20                                     ; $4BAD: $06 $20
    db $E4                                        ; $4BAF: $E4
    ld [$EC1F], sp                                ; $4BB0: $08 $1F $EC
    ld a, [bc]                                    ; $4BB3: $0A
    rra                                           ; $4BB4: $1F
    db $F4                                        ; $4BB5: $F4
    inc c                                         ; $4BB6: $0C
    rra                                           ; $4BB7: $1F
    db $FC                                        ; $4BB8: $FC
    ld c, $1F                                     ; $4BB9: $0E $1F
    inc b                                         ; $4BBB: $04
    db $10                                        ; $4BBC: $10
    daa                                           ; $4BBD: $27
    add hl, bc                                    ; $4BBE: $09
    ld [de], a                                    ; $4BBF: $12
    nop                                           ; $4BC0: $00
    ld b, $00                                     ; $4BC1: $06 $00
    ret nz                                        ; $4BC3: $C0

    ld h, b                                       ; $4BC4: $60
    ld [hl+], a                                   ; $4BC5: $22
    jp z, Jump_000_004B                           ; $4BC6: $CA $4B $00

    rrca                                          ; $4BC9: $0F
    ld [$F421], sp                                ; $4BCA: $08 $21 $F4
    nop                                           ; $4BCD: $00
    rra                                           ; $4BCE: $1F
    db $FC                                        ; $4BCF: $FC
    ld [bc], a                                    ; $4BD0: $02
    inc c                                         ; $4BD1: $0C
    inc bc                                        ; $4BD2: $03
    inc b                                         ; $4BD3: $04
    rrca                                          ; $4BD4: $0F
    db $FC                                        ; $4BD5: $FC
    ld b, $11                                     ; $4BD6: $06 $11
    db $F4                                        ; $4BD8: $F4
    ld [$EC12], sp                                ; $4BD9: $08 $12 $EC
    ld a, [bc]                                    ; $4BDC: $0A
    inc e                                         ; $4BDD: $1C
    inc b                                         ; $4BDE: $04
    inc c                                         ; $4BDF: $0C
    dec c                                         ; $4BE0: $0D
    dec bc                                        ; $4BE1: $0B
    ld c, $00                                     ; $4BE2: $0E $00
    ld bc, $C000                                  ; $4BE4: $01 $00 $C0
    ld h, c                                       ; $4BE7: $61
    ld [hl+], a                                   ; $4BE8: $22
    db $ED                                        ; $4BE9: $ED
    ld c, e                                       ; $4BEA: $4B
    nop                                           ; $4BEB: $00
    rrca                                          ; $4BEC: $0F
    rlca                                          ; $4BED: $07
    db $10                                        ; $4BEE: $10
    xor $00                                       ; $4BEF: $EE $00
    db $10                                        ; $4BF1: $10

jr_00B_4BF2:
    or $02                                        ; $4BF2: $F6 $02
    db $10                                        ; $4BF4: $10
    cp $04                                        ; $4BF5: $FE $04
    dec c                                         ; $4BF7: $0D
    ld b, $06                                     ; $4BF8: $06 $06
    jr nz, jr_00B_4BF2                            ; $4BFA: $20 $F6

    ld [$FE20], sp                                ; $4BFC: $08 $20 $FE
    ld a, [bc]                                    ; $4BFF: $0A
    dec e                                         ; $4C00: $1D
    ld b, $0C                                     ; $4C01: $06 $0C
    nop                                           ; $4C03: $00
    ld bc, $A000                                  ; $4C04: $01 $00 $A0
    ld h, d                                       ; $4C07: $62
    ld [hl+], a                                   ; $4C08: $22
    dec c                                         ; $4C09: $0D
    ld c, h                                       ; $4C0A: $4C
    nop                                           ; $4C0B: $00
    rrca                                          ; $4C0C: $0F
    rlca                                          ; $4C0D: $07

jr_00B_4C0E:
    rrca                                          ; $4C0E: $0F
    db $EC                                        ; $4C0F: $EC
    nop                                           ; $4C10: $00
    rrca                                          ; $4C11: $0F
    db $F4                                        ; $4C12: $F4
    ld [bc], a                                    ; $4C13: $02
    inc de                                        ; $4C14: $13
    db $FC                                        ; $4C15: $FC
    inc b                                         ; $4C16: $04
    rla                                           ; $4C17: $17
    inc b                                         ; $4C18: $04

jr_00B_4C19:
    ld b, $0F                                     ; $4C19: $06 $0F
    inc c                                         ; $4C1B: $0C
    ld [$F41F], sp                                ; $4C1C: $08 $1F $F4
    ld a, [bc]                                    ; $4C1F: $0A
    inc hl                                        ; $4C20: $23
    db $FC                                        ; $4C21: $FC
    inc c                                         ; $4C22: $0C
    nop                                           ; $4C23: $00

jr_00B_4C24:
    ld b, $00                                     ; $4C24: $06 $00
    add b                                         ; $4C26: $80
    ld h, e                                       ; $4C27: $63
    ld [hl+], a                                   ; $4C28: $22
    dec l                                         ; $4C29: $2D
    ld c, h                                       ; $4C2A: $4C

jr_00B_4C2B:
    ld [$0B00], sp                                ; $4C2B: $08 $00 $0B
    jr nc, jr_00B_4C0E                            ; $4C2E: $30 $DE

    nop                                           ; $4C30: $00
    jr nc, jr_00B_4C19                            ; $4C31: $30 $E6

    ld [bc], a                                    ; $4C33: $02
    jr nc, jr_00B_4C24                            ; $4C34: $30 $EE

jr_00B_4C36:
    inc b                                         ; $4C36: $04
    jr nc, @-$08                                  ; $4C37: $30 $F6

    ld b, $30                                     ; $4C39: $06 $30
    cp $08                                        ; $4C3B: $FE $08
    jr nc, jr_00B_4C45                            ; $4C3D: $30 $06

    ld a, [bc]                                    ; $4C3F: $0A
    jr nz, jr_00B_4C2B                            ; $4C40: $20 $E9

    inc c                                         ; $4C42: $0C
    jr nz, jr_00B_4C36                            ; $4C43: $20 $F1

jr_00B_4C45:
    ld c, $20                                     ; $4C45: $0E $20
    ld sp, hl                                     ; $4C47: $F9
    db $10                                        ; $4C48: $10
    jr nz, jr_00B_4C4C                            ; $4C49: $20 $01

    ld [de], a                                    ; $4C4B: $12

jr_00B_4C4C:
    ld h, $0E                                     ; $4C4C: $26 $0E
    inc d                                         ; $4C4E: $14
    nop                                           ; $4C4F: $00
    and b                                         ; $4C50: $A0
    ld e, e                                       ; $4C51: $5B
    ld [hl+], a                                   ; $4C52: $22
    ld e, a                                       ; $4C53: $5F
    ld c, h                                       ; $4C54: $4C
    ld a, [$2000]                                 ; $4C55: $FA $00 $20
    and b                                         ; $4C58: $A0
    ld e, e                                       ; $4C59: $5B
    ld [hl+], a                                   ; $4C5A: $22
    ld e, a                                       ; $4C5B: $5F
    ld c, h                                       ; $4C5C: $4C
    ld b, $00                                     ; $4C5D: $06 $00
    dec b                                         ; $4C5F: $05
    db $10                                        ; $4C60: $10
    jp hl                                         ; $4C61: $E9


    nop                                           ; $4C62: $00
    db $10                                        ; $4C63: $10
    pop af                                        ; $4C64: $F1
    ld [bc], a                                    ; $4C65: $02
    db $10                                        ; $4C66: $10
    ld sp, hl                                     ; $4C67: $F9
    inc b                                         ; $4C68: $04
    db $10                                        ; $4C69: $10
    ld bc, $1006                                  ; $4C6A: $01 $06 $10
    add hl, bc                                    ; $4C6D: $09
    ld [$0600], sp                                ; $4C6E: $08 $00 $06
    nop                                           ; $4C71: $00
    ld b, b                                       ; $4C72: $40
    ld e, h                                       ; $4C73: $5C
    ld [hl+], a                                   ; $4C74: $22

jr_00B_4C75:
    ld a, c                                       ; $4C75: $79
    ld c, h                                       ; $4C76: $4C
    ld a, [$0900]                                 ; $4C77: $FA $00 $09
    jr nc, jr_00B_4C75                            ; $4C7A: $30 $F9

    nop                                           ; $4C7C: $00
    jr nc, jr_00B_4C80                            ; $4C7D: $30 $01

    ld [bc], a                                    ; $4C7F: $02

jr_00B_4C80:
    jr nc, jr_00B_4C8B                            ; $4C80: $30 $09

    inc b                                         ; $4C82: $04
    add hl, sp                                    ; $4C83: $39
    ld de, $1D06                                  ; $4C84: $11 $06 $1D
    rst RST_20                                    ; $4C87: $E7
    ld [$EF1D], sp                                ; $4C88: $08 $1D $EF

jr_00B_4C8B:
    ld a, [bc]                                    ; $4C8B: $0A
    jr nz, @-$07                                  ; $4C8C: $20 $F7

    inc c                                         ; $4C8E: $0C
    jr nz, @+$01                                  ; $4C8F: $20 $FF

    ld c, $20                                     ; $4C91: $0E $20
    rlca                                          ; $4C93: $07
    stop                                          ; $4C94: $10 $00
    ld b, $00                                     ; $4C96: $06 $00
    ld h, b                                       ; $4C98: $60
    ld e, l                                       ; $4C99: $5D
    ld [hl+], a                                   ; $4C9A: $22

jr_00B_4C9B:
    sbc a                                         ; $4C9B: $9F
    ld c, h                                       ; $4C9C: $4C
    ld a, [$0900]                                 ; $4C9D: $FA $00 $09
    jr nc, jr_00B_4C9B                            ; $4CA0: $30 $F9

    nop                                           ; $4CA2: $00
    jr nc, jr_00B_4CA6                            ; $4CA3: $30 $01

    ld [bc], a                                    ; $4CA5: $02

jr_00B_4CA6:
    jr nc, jr_00B_4CB1                            ; $4CA6: $30 $09

    inc b                                         ; $4CA8: $04
    add hl, sp                                    ; $4CA9: $39
    ld de, $1D06                                  ; $4CAA: $11 $06 $1D
    ld [$1D08], a                                 ; $4CAD: $EA $08 $1D
    ldh a, [c]                                    ; $4CB0: $F2

jr_00B_4CB1:
    ld a, [bc]                                    ; $4CB1: $0A
    jr nz, @-$04                                  ; $4CB2: $20 $FA

    inc c                                         ; $4CB4: $0C
    jr nz, jr_00B_4CB9                            ; $4CB5: $20 $02

    ld c, $20                                     ; $4CB7: $0E $20

jr_00B_4CB9:
    ld a, [bc]                                    ; $4CB9: $0A
    stop                                          ; $4CBA: $10 $00
    ld b, $00                                     ; $4CBC: $06 $00
    add b                                         ; $4CBE: $80
    ld e, [hl]                                    ; $4CBF: $5E
    ld [hl+], a                                   ; $4CC0: $22

jr_00B_4CC1:
    push bc                                       ; $4CC1: $C5
    ld c, h                                       ; $4CC2: $4C
    ld a, [$0900]                                 ; $4CC3: $FA $00 $09
    jr nc, jr_00B_4CC1                            ; $4CC6: $30 $F9

    nop                                           ; $4CC8: $00
    jr nc, jr_00B_4CCC                            ; $4CC9: $30 $01

    ld [bc], a                                    ; $4CCB: $02

jr_00B_4CCC:
    jr nc, jr_00B_4CD7                            ; $4CCC: $30 $09

    inc b                                         ; $4CCE: $04
    add hl, sp                                    ; $4CCF: $39
    ld de, $1D06                                  ; $4CD0: $11 $06 $1D
    db $EB                                        ; $4CD3: $EB
    ld [$F31D], sp                                ; $4CD4: $08 $1D $F3

jr_00B_4CD7:
    ld a, [bc]                                    ; $4CD7: $0A
    jr nz, @-$03                                  ; $4CD8: $20 $FB

    inc c                                         ; $4CDA: $0C
    jr nz, jr_00B_4CE0                            ; $4CDB: $20 $03

    ld c, $20                                     ; $4CDD: $0E $20
    dec bc                                        ; $4CDF: $0B

jr_00B_4CE0:
    stop                                          ; $4CE0: $10 $00
    ld b, $00                                     ; $4CE2: $06 $00
    and b                                         ; $4CE4: $A0
    ld e, a                                       ; $4CE5: $5F
    ld [hl+], a                                   ; $4CE6: $22

jr_00B_4CE7:
    db $EB                                        ; $4CE7: $EB
    ld c, h                                       ; $4CE8: $4C
    ld a, [$0900]                                 ; $4CE9: $FA $00 $09
    jr nc, jr_00B_4CE7                            ; $4CEC: $30 $F9

    nop                                           ; $4CEE: $00
    jr nc, jr_00B_4CF2                            ; $4CEF: $30 $01

    ld [bc], a                                    ; $4CF1: $02

jr_00B_4CF2:
    jr nc, jr_00B_4CFD                            ; $4CF2: $30 $09

    inc b                                         ; $4CF4: $04
    add hl, sp                                    ; $4CF5: $39
    ld de, $1D06                                  ; $4CF6: $11 $06 $1D
    db $EB                                        ; $4CF9: $EB
    ld [$F31D], sp                                ; $4CFA: $08 $1D $F3

jr_00B_4CFD:
    ld a, [bc]                                    ; $4CFD: $0A
    jr nz, @-$03                                  ; $4CFE: $20 $FB

    inc c                                         ; $4D00: $0C
    jr nz, jr_00B_4D06                            ; $4D01: $20 $03

    ld c, $20                                     ; $4D03: $0E $20
    dec bc                                        ; $4D05: $0B

jr_00B_4D06:
    stop                                          ; $4D06: $10 $00
    ld bc, $4000                                  ; $4D08: $01 $00 $40
    ld c, [hl]                                    ; $4D0B: $4E
    inc d                                         ; $4D0C: $14
    ld de, $064D                                  ; $4D0D: $11 $4D $06
    nop                                           ; $4D10: $00
    ld a, [bc]                                    ; $4D11: $0A
    ld sp, $00ED                                  ; $4D12: $31 $ED $00
    ld sp, $02F5                                  ; $4D15: $31 $F5 $02
    ld hl, $04E8                                  ; $4D18: $21 $E8 $04
    ld hl, $06F0                                  ; $4D1B: $21 $F0 $06
    ld hl, $08F8                                  ; $4D1E: $21 $F8 $08
    ld sp, $0AFD                                  ; $4D21: $31 $FD $0A
    ld hl, $0C00                                  ; $4D24: $21 $00 $0C
    ld hl, $0E08                                  ; $4D27: $21 $08 $0E
    ld de, $10F8                                  ; $4D2A: $11 $F8 $10
    ld de, $1200                                  ; $4D2D: $11 $00 $12
    nop                                           ; $4D30: $00
    ld bc, $8000                                  ; $4D31: $01 $00 $80
    ld c, a                                       ; $4D34: $4F
    inc d                                         ; $4D35: $14
    ld e, b                                       ; $4D36: $58
    ld c, l                                       ; $4D37: $4D
    dec bc                                        ; $4D38: $0B
    nop                                           ; $4D39: $00
    jr nz, jr_00B_4D3D                            ; $4D3A: $20 $01

    nop                                           ; $4D3C: $00

jr_00B_4D3D:
    add b                                         ; $4D3D: $80
    ld c, a                                       ; $4D3E: $4F
    inc d                                         ; $4D3F: $14
    ld e, b                                       ; $4D40: $58
    ld c, l                                       ; $4D41: $4D
    push af                                       ; $4D42: $F5
    nop                                           ; $4D43: $00
    ld b, b                                       ; $4D44: $40
    ld bc, $8000                                  ; $4D45: $01 $00 $80
    ld c, a                                       ; $4D48: $4F
    inc d                                         ; $4D49: $14

jr_00B_4D4A:
    ld e, b                                       ; $4D4A: $58
    ld c, l                                       ; $4D4B: $4D
    dec bc                                        ; $4D4C: $0B
    nop                                           ; $4D4D: $00
    ld h, b                                       ; $4D4E: $60
    ld bc, $8000                                  ; $4D4F: $01 $00 $80

jr_00B_4D52:
    ld c, a                                       ; $4D52: $4F
    inc d                                         ; $4D53: $14
    ld e, b                                       ; $4D54: $58

jr_00B_4D55:
    ld c, l                                       ; $4D55: $4D
    push af                                       ; $4D56: $F5
    nop                                           ; $4D57: $00
    add hl, bc                                    ; $4D58: $09
    jr nc, jr_00B_4D4A                            ; $4D59: $30 $EF

    nop                                           ; $4D5B: $00
    jr nc, jr_00B_4D55                            ; $4D5C: $30 $F7

    ld [bc], a                                    ; $4D5E: $02
    jr nz, @-$18                                  ; $4D5F: $20 $E6

    inc b                                         ; $4D61: $04
    jr nz, jr_00B_4D52                            ; $4D62: $20 $EE

    ld b, $20                                     ; $4D64: $06 $20
    or $08                                        ; $4D66: $F6 $08

jr_00B_4D68:
    jr nz, jr_00B_4D68                            ; $4D68: $20 $FE

    ld a, [bc]                                    ; $4D6A: $0A
    jr nc, @+$01                                  ; $4D6B: $30 $FF

    inc c                                         ; $4D6D: $0C
    dec de                                        ; $4D6E: $1B
    ld bc, $100E                                  ; $4D6F: $01 $0E $10
    pop af                                        ; $4D72: $F1
    stop                                          ; $4D73: $10 $00
    ld bc, $A000                                  ; $4D75: $01 $00 $A0
    ld d, b                                       ; $4D78: $50
    inc d                                         ; $4D79: $14
    ld a, [hl]                                    ; $4D7A: $7E
    ld c, l                                       ; $4D7B: $4D

jr_00B_4D7C:
    rlca                                          ; $4D7C: $07
    nop                                           ; $4D7D: $00
    ld [$E525], sp                                ; $4D7E: $08 $25 $E5
    nop                                           ; $4D81: $00
    jr nc, @-$11                                  ; $4D82: $30 $ED

    ld [bc], a                                    ; $4D84: $02
    jr nc, jr_00B_4D7C                            ; $4D85: $30 $F5

jr_00B_4D87:
    inc b                                         ; $4D87: $04
    jr nc, jr_00B_4D87                            ; $4D88: $30 $FD

    ld b, $20                                     ; $4D8A: $06 $20
    db $ED                                        ; $4D8C: $ED
    ld [$F520], sp                                ; $4D8D: $08 $20 $F5

jr_00B_4D90:
    ld a, [bc]                                    ; $4D90: $0A
    jr nz, jr_00B_4D90                            ; $4D91: $20 $FD

    inc c                                         ; $4D93: $0C
    dec hl                                        ; $4D94: $2B
    dec b                                         ; $4D95: $05
    ld c, $00                                     ; $4D96: $0E $00
    inc e                                         ; $4D98: $1C
    nop                                           ; $4D99: $00
    and b                                         ; $4D9A: $A0
    ld d, c                                       ; $4D9B: $51
    inc d                                         ; $4D9C: $14
    xor e                                         ; $4D9D: $AB
    ld c, l                                       ; $4D9E: $4D
    inc b                                         ; $4D9F: $04

jr_00B_4DA0:
    ld a, [bc]                                    ; $4DA0: $0A
    ld h, b                                       ; $4DA1: $60
    inc e                                         ; $4DA2: $1C
    nop                                           ; $4DA3: $00
    and b                                         ; $4DA4: $A0
    ld d, c                                       ; $4DA5: $51
    inc d                                         ; $4DA6: $14
    xor e                                         ; $4DA7: $AB
    ld c, l                                       ; $4DA8: $4D
    nop                                           ; $4DA9: $00
    nop                                           ; $4DAA: $00

jr_00B_4DAB:
    add hl, bc                                    ; $4DAB: $09
    dec hl                                        ; $4DAC: $2B
    rst RST_20                                    ; $4DAD: $E7
    nop                                           ; $4DAE: $00
    jr z, jr_00B_4DA0                             ; $4DAF: $28 $EF

    ld [bc], a                                    ; $4DB1: $02
    jr z, jr_00B_4DAB                             ; $4DB2: $28 $F7

    inc b                                         ; $4DB4: $04
    jr z, @+$01                                   ; $4DB5: $28 $FF

    ld b, $28                                     ; $4DB7: $06 $28
    rlca                                          ; $4DB9: $07
    ld [$F338], sp                                ; $4DBA: $08 $38 $F3
    ld a, [bc]                                    ; $4DBD: $0A
    jr c, @-$03                                   ; $4DBE: $38 $FB

    inc c                                         ; $4DC0: $0C
    jr c, jr_00B_4DC6                             ; $4DC1: $38 $03

    ld c, $20                                     ; $4DC3: $0E $20
    rrca                                          ; $4DC5: $0F

jr_00B_4DC6:
    stop                                          ; $4DC6: $10 $00
    inc e                                         ; $4DC8: $1C
    nop                                           ; $4DC9: $00
    ret nz                                        ; $4DCA: $C0

    ld d, d                                       ; $4DCB: $52
    inc d                                         ; $4DCC: $14
    pop de                                        ; $4DCD: $D1
    ld c, l                                       ; $4DCE: $4D
    ld [bc], a                                    ; $4DCF: $02
    nop                                           ; $4DD0: $00
    ld b, $3A                                     ; $4DD1: $06 $3A
    jp hl                                         ; $4DD3: $E9


    nop                                           ; $4DD4: $00
    ld sp, $02F1                                  ; $4DD5: $31 $F1 $02
    ld sp, $04F9                                  ; $4DD8: $31 $F9 $04
    ld sp, $0601                                  ; $4DDB: $31 $01 $06
    dec [hl]                                      ; $4DDE: $35

jr_00B_4DDF:
    add hl, bc                                    ; $4DDF: $09
    ld [$FE41], sp                                ; $4DE0: $08 $41 $FE
    ld a, [bc]                                    ; $4DE3: $0A
    nop                                           ; $4DE4: $00
    ld b, $00                                     ; $4DE5: $06 $00
    ldh [$FF64], a                                ; $4DE7: $E0 $64
    ld [hl+], a                                   ; $4DE9: $22
    xor $4D                                       ; $4DEA: $EE $4D
    ld bc, $0B00                                  ; $4DEC: $01 $00 $0B
    jr jr_00B_4DDF                                ; $4DEF: $18 $EE

    nop                                           ; $4DF1: $00
    dec e                                         ; $4DF2: $1D
    or $02                                        ; $4DF3: $F6 $02
    dec e                                         ; $4DF5: $1D
    cp $04                                        ; $4DF6: $FE $04
    jr nz, jr_00B_4E00                            ; $4DF8: $20 $06

    ld b, $25                                     ; $4DFA: $06 $25
    ld c, $08                                     ; $4DFC: $0E $08
    dec l                                         ; $4DFE: $2D
    rst RST_30                                    ; $4DFF: $F7

jr_00B_4E00:
    ld a, [bc]                                    ; $4E00: $0A
    dec l                                         ; $4E01: $2D
    rst RST_38                                    ; $4E02: $FF
    inc c                                         ; $4E03: $0C
    jr nc, jr_00B_4E0D                            ; $4E04: $30 $07

    ld c, $34                                     ; $4E06: $0E $34
    rst RST_28                                    ; $4E08: $EF
    db $10                                        ; $4E09: $10
    dec c                                         ; $4E0A: $0D
    or $12                                        ; $4E0B: $F6 $12

jr_00B_4E0D:
    dec sp                                        ; $4E0D: $3B
    rrca                                          ; $4E0E: $0F
    inc d                                         ; $4E0F: $14
    nop                                           ; $4E10: $00
    ld b, $00                                     ; $4E11: $06 $00
    ld b, b                                       ; $4E13: $40
    ld h, [hl]                                    ; $4E14: $66
    ld [hl+], a                                   ; $4E15: $22
    ld a, [de]                                    ; $4E16: $1A
    ld c, [hl]                                    ; $4E17: $4E
    ld bc, $0900                                  ; $4E18: $01 $00 $09
    cpl                                           ; $4E1B: $2F
    rst RST_28                                    ; $4E1C: $EF
    nop                                           ; $4E1D: $00
    dec l                                         ; $4E1E: $2D
    or $02                                        ; $4E1F: $F6 $02
    dec hl                                        ; $4E21: $2B
    cp $04                                        ; $4E22: $FE $04
    jr nc, @+$08                                  ; $4E24: $30 $06

    ld b, $30                                     ; $4E26: $06 $30
    ld c, $08                                     ; $4E28: $0E $08
    dec e                                         ; $4E2A: $1D
    or $0A                                        ; $4E2B: $F6 $0A
    dec de                                        ; $4E2D: $1B
    cp $0C                                        ; $4E2E: $FE $0C
    jr nz, @+$08                                  ; $4E30: $20 $06

    ld c, $20                                     ; $4E32: $0E $20
    ld c, $10                                     ; $4E34: $0E $10
    nop                                           ; $4E36: $00
    ld b, $DF                                     ; $4E37: $06 $DF
    ld h, b                                       ; $4E39: $60
    ld h, a                                       ; $4E3A: $67
    ld [hl+], a                                   ; $4E3B: $22
    ld d, h                                       ; $4E3C: $54
    ld c, [hl]                                    ; $4E3D: $4E
    ld bc, $0000                                  ; $4E3E: $01 $00 $00
    ld b, $05                                     ; $4E41: $06 $05
    ld h, b                                       ; $4E43: $60
    ld h, a                                       ; $4E44: $67
    ld [hl+], a                                   ; $4E45: $22
    ld d, h                                       ; $4E46: $54
    ld c, [hl]                                    ; $4E47: $4E
    ld bc, $0000                                  ; $4E48: $01 $00 $00
    cp e                                          ; $4E4B: $BB
    nop                                           ; $4E4C: $00
    ld h, b                                       ; $4E4D: $60
    ld h, a                                       ; $4E4E: $67
    ld [hl+], a                                   ; $4E4F: $22
    ld d, h                                       ; $4E50: $54
    ld c, [hl]                                    ; $4E51: $4E
    ld bc, $0B00                                  ; $4E52: $01 $00 $0B
    cpl                                           ; $4E55: $2F
    rst RST_28                                    ; $4E56: $EF
    nop                                           ; $4E57: $00
    cpl                                           ; $4E58: $2F
    rst RST_30                                    ; $4E59: $F7
    ld [bc], a                                    ; $4E5A: $02
    cpl                                           ; $4E5B: $2F
    rst RST_38                                    ; $4E5C: $FF
    inc b                                         ; $4E5D: $04
    jr nc, jr_00B_4E67                            ; $4E5E: $30 $07

    ld b, $22                                     ; $4E60: $06 $22
    sbc $08                                       ; $4E62: $DE $08
    ld [hl+], a                                   ; $4E64: $22
    and $0A                                       ; $4E65: $E6 $0A

jr_00B_4E67:
    ld [hl+], a                                   ; $4E67: $22
    xor $0C                                       ; $4E68: $EE $0C
    rra                                           ; $4E6A: $1F
    or $0E                                        ; $4E6B: $F6 $0E
    rra                                           ; $4E6D: $1F
    cp $10                                        ; $4E6E: $FE $10
    jr nz, @+$08                                  ; $4E70: $20 $06

    ld [de], a                                    ; $4E72: $12
    ld [hl+], a                                   ; $4E73: $22
    ld c, $14                                     ; $4E74: $0E $14
    nop                                           ; $4E76: $00
    ld b, $00                                     ; $4E77: $06 $00
    ret nz                                        ; $4E79: $C0

    ld l, b                                       ; $4E7A: $68
    ld [hl+], a                                   ; $4E7B: $22
    add b                                         ; $4E7C: $80
    ld c, [hl]                                    ; $4E7D: $4E
    ld bc, $0900                                  ; $4E7E: $01 $00 $09
    cpl                                           ; $4E81: $2F
    rst RST_28                                    ; $4E82: $EF
    nop                                           ; $4E83: $00
    cpl                                           ; $4E84: $2F
    rst RST_30                                    ; $4E85: $F7
    ld [bc], a                                    ; $4E86: $02
    cpl                                           ; $4E87: $2F
    rst RST_38                                    ; $4E88: $FF
    inc b                                         ; $4E89: $04
    jr nc, jr_00B_4E93                            ; $4E8A: $30 $07

    ld b, $1F                                     ; $4E8C: $06 $1F
    db $E4                                        ; $4E8E: $E4
    ld [$EC1F], sp                                ; $4E8F: $08 $1F $EC
    ld a, [bc]                                    ; $4E92: $0A

jr_00B_4E93:
    rra                                           ; $4E93: $1F
    db $F4                                        ; $4E94: $F4
    inc c                                         ; $4E95: $0C
    rra                                           ; $4E96: $1F
    db $FC                                        ; $4E97: $FC
    ld c, $20                                     ; $4E98: $0E $20
    inc b                                         ; $4E9A: $04
    stop                                          ; $4E9B: $10 $00
    ld b, $00                                     ; $4E9D: $06 $00
    ldh [rBCPD], a                                ; $4E9F: $E0 $69
    ld [hl+], a                                   ; $4EA1: $22
    and [hl]                                      ; $4EA2: $A6
    ld c, [hl]                                    ; $4EA3: $4E
    rst RST_38                                    ; $4EA4: $FF
    nop                                           ; $4EA5: $00
    ld [$EE19], sp                                ; $4EA6: $08 $19 $EE
    nop                                           ; $4EA9: $00
    rra                                           ; $4EAA: $1F
    or $02                                        ; $4EAB: $F6 $02
    dec de                                        ; $4EAD: $1B
    cp $04                                        ; $4EAE: $FE $04
    ld hl, $0606                                  ; $4EB0: $21 $06 $06
    cpl                                           ; $4EB3: $2F
    or $08                                        ; $4EB4: $F6 $08
    dec hl                                        ; $4EB6: $2B
    cp $0A                                        ; $4EB7: $FE $0A
    dec [hl]                                      ; $4EB9: $35
    ld b, $0C                                     ; $4EBA: $06 $0C
    ld [hl-], a                                   ; $4EBC: $32
    xor $0E                                       ; $4EBD: $EE $0E
    nop                                           ; $4EBF: $00
    ld b, $00                                     ; $4EC0: $06 $00
    ldh [rOCPS], a                                ; $4EC2: $E0 $6A
    ld [hl+], a                                   ; $4EC4: $22
    ret                                           ; $4EC5: $C9


    ld c, [hl]                                    ; $4EC6: $4E
    rst RST_38                                    ; $4EC7: $FF
    nop                                           ; $4EC8: $00
    add hl, bc                                    ; $4EC9: $09
    cpl                                           ; $4ECA: $2F
    ldh a, [rP1]                                  ; $4ECB: $F0 $00
    cpl                                           ; $4ECD: $2F
    ld hl, sp+$02                                 ; $4ECE: $F8 $02
    cpl                                           ; $4ED0: $2F
    nop                                           ; $4ED1: $00
    inc b                                         ; $4ED2: $04
    dec sp                                        ; $4ED3: $3B
    ld [$1F06], sp                                ; $4ED4: $08 $06 $1F
    rst RST_28                                    ; $4ED7: $EF
    ld [$F71F], sp                                ; $4ED8: $08 $1F $F7
    ld a, [bc]                                    ; $4EDB: $0A
    rra                                           ; $4EDC: $1F
    rst RST_38                                    ; $4EDD: $FF
    inc c                                         ; $4EDE: $0C
    rra                                           ; $4EDF: $1F
    rlca                                          ; $4EE0: $07
    ld c, $2B                                     ; $4EE1: $0E $2B
    ld [$0010], sp                                ; $4EE3: $08 $10 $00
    ld b, $E0                                     ; $4EE6: $06 $E0
    nop                                           ; $4EE8: $00
    ld l, h                                       ; $4EE9: $6C
    ld [hl+], a                                   ; $4EEA: $22
    rst RST_28                                    ; $4EEB: $EF
    ld c, [hl]                                    ; $4EEC: $4E
    rst RST_38                                    ; $4EED: $FF
    nop                                           ; $4EEE: $00
    add hl, bc                                    ; $4EEF: $09
    cpl                                           ; $4EF0: $2F
    ldh a, [c]                                    ; $4EF1: $F2
    nop                                           ; $4EF2: $00
    cpl                                           ; $4EF3: $2F
    ld a, [$2B02]                                 ; $4EF4: $FA $02 $2B
    ld [bc], a                                    ; $4EF7: $02
    inc b                                         ; $4EF8: $04
    jr c, jr_00B_4F03                             ; $4EF9: $38 $08

    ld b, $1D                                     ; $4EFB: $06 $1D
    pop hl                                        ; $4EFD: $E1
    ld [$E91D], sp                                ; $4EFE: $08 $1D $E9
    ld a, [bc]                                    ; $4F01: $0A
    rra                                           ; $4F02: $1F

jr_00B_4F03:
    pop af                                        ; $4F03: $F1
    inc c                                         ; $4F04: $0C
    rra                                           ; $4F05: $1F
    ld sp, hl                                     ; $4F06: $F9
    ld c, $20                                     ; $4F07: $0E $20
    ld bc, $0010                                  ; $4F09: $01 $10 $00
    ld b, $E0                                     ; $4F0C: $06 $E0
    jr nz, jr_00B_4F7D                            ; $4F0E: $20 $6D

    ld [hl+], a                                   ; $4F10: $22
    dec d                                         ; $4F11: $15
    ld c, a                                       ; $4F12: $4F
    rst RST_38                                    ; $4F13: $FF
    nop                                           ; $4F14: $00
    ld a, [bc]                                    ; $4F15: $0A
    cpl                                           ; $4F16: $2F
    ldh a, [c]                                    ; $4F17: $F2
    nop                                           ; $4F18: $00
    cpl                                           ; $4F19: $2F
    ld a, [$3002]                                 ; $4F1A: $FA $02 $30
    ld [bc], a                                    ; $4F1D: $02
    inc b                                         ; $4F1E: $04
    jr c, jr_00B_4F2B                             ; $4F1F: $38 $0A

    ld b, $1F                                     ; $4F21: $06 $1F

jr_00B_4F23:
    pop hl                                        ; $4F23: $E1
    ld [$E91F], sp                                ; $4F24: $08 $1F $E9
    ld a, [bc]                                    ; $4F27: $0A
    rra                                           ; $4F28: $1F
    pop af                                        ; $4F29: $F1
    inc c                                         ; $4F2A: $0C

jr_00B_4F2B:
    rra                                           ; $4F2B: $1F
    ld sp, hl                                     ; $4F2C: $F9
    ld c, $20                                     ; $4F2D: $0E $20
    ld bc, $2010                                  ; $4F2F: $01 $10 $20
    add hl, bc                                    ; $4F32: $09
    ld [de], a                                    ; $4F33: $12
    nop                                           ; $4F34: $00
    ld b, $E0                                     ; $4F35: $06 $E0
    ld h, b                                       ; $4F37: $60
    ld l, [hl]                                    ; $4F38: $6E
    ld [hl+], a                                   ; $4F39: $22
    ld a, $4F                                     ; $4F3A: $3E $4F
    rst RST_38                                    ; $4F3C: $FF
    nop                                           ; $4F3D: $00
    add hl, bc                                    ; $4F3E: $09
    jr z, jr_00B_4F23                             ; $4F3F: $28 $E2

    nop                                           ; $4F41: $00
    daa                                           ; $4F42: $27
    ld [$2F02], a                                 ; $4F43: $EA $02 $2F
    ldh a, [c]                                    ; $4F46: $F2
    inc b                                         ; $4F47: $04
    cpl                                           ; $4F48: $2F
    ld a, [$3006]                                 ; $4F49: $FA $06 $30
    ld [bc], a                                    ; $4F4C: $02
    ld [$0A38], sp                                ; $4F4D: $08 $38 $0A
    ld a, [bc]                                    ; $4F50: $0A
    rra                                           ; $4F51: $1F
    ldh a, [c]                                    ; $4F52: $F2
    inc c                                         ; $4F53: $0C
    rra                                           ; $4F54: $1F
    ld a, [$1F0E]                                 ; $4F55: $FA $0E $1F
    ld [bc], a                                    ; $4F58: $02
    stop                                          ; $4F59: $10 $00
    ld b, $E0                                     ; $4F5B: $06 $E0
    add b                                         ; $4F5D: $80
    ld l, a                                       ; $4F5E: $6F
    ld [hl+], a                                   ; $4F5F: $22
    ld h, h                                       ; $4F60: $64
    ld c, a                                       ; $4F61: $4F
    rst RST_38                                    ; $4F62: $FF
    nop                                           ; $4F63: $00
    add hl, bc                                    ; $4F64: $09
    cpl                                           ; $4F65: $2F
    ldh a, [c]                                    ; $4F66: $F2
    nop                                           ; $4F67: $00
    cpl                                           ; $4F68: $2F
    ld a, [$2C02]                                 ; $4F69: $FA $02 $2C
    ld [bc], a                                    ; $4F6C: $02
    inc b                                         ; $4F6D: $04
    jr nc, jr_00B_4F78                            ; $4F6E: $30 $08

    ld b, $1D                                     ; $4F70: $06 $1D
    ldh [$FF08], a                                ; $4F72: $E0 $08
    dec e                                         ; $4F74: $1D
    add sp, $0A                                   ; $4F75: $E8 $0A
    rra                                           ; $4F77: $1F

jr_00B_4F78:
    ldh a, [$FF0C]                                ; $4F78: $F0 $0C
    rra                                           ; $4F7A: $1F
    ld hl, sp+$0E                                 ; $4F7B: $F8 $0E

jr_00B_4F7D:
    jr nz, jr_00B_4F7F                            ; $4F7D: $20 $00

jr_00B_4F7F:
    stop                                          ; $4F7F: $10 $00
    ld b, $E0                                     ; $4F81: $06 $E0
    and b                                         ; $4F83: $A0
    ld [hl], b                                    ; $4F84: $70
    ld [hl+], a                                   ; $4F85: $22
    adc d                                         ; $4F86: $8A

jr_00B_4F87:
    ld c, a                                       ; $4F87: $4F
    nop                                           ; $4F88: $00
    nop                                           ; $4F89: $00
    dec bc                                        ; $4F8A: $0B
    jr nc, @-$0F                                  ; $4F8B: $30 $EF

jr_00B_4F8D:
    nop                                           ; $4F8D: $00
    jr nc, jr_00B_4F87                            ; $4F8E: $30 $F7

    ld [bc], a                                    ; $4F90: $02
    jr nc, @+$01                                  ; $4F91: $30 $FF

    inc b                                         ; $4F93: $04
    jr nc, jr_00B_4F9D                            ; $4F94: $30 $07

    ld b, $20                                     ; $4F96: $06 $20

jr_00B_4F98:
    sbc $08                                       ; $4F98: $DE $08
    jr nz, @-$18                                  ; $4F9A: $20 $E6

    ld a, [bc]                                    ; $4F9C: $0A

jr_00B_4F9D:
    jr nz, jr_00B_4F8D                            ; $4F9D: $20 $EE

    inc c                                         ; $4F9F: $0C
    jr nz, jr_00B_4F98                            ; $4FA0: $20 $F6

    ld c, $20                                     ; $4FA2: $0E $20
    cp $10                                        ; $4FA4: $FE $10
    jr nz, @+$08                                  ; $4FA6: $20 $06

jr_00B_4FA8:
    ld [de], a                                    ; $4FA8: $12
    inc e                                         ; $4FA9: $1C
    ld c, $14                                     ; $4FAA: $0E $14
    nop                                           ; $4FAC: $00
    ld b, $00                                     ; $4FAD: $06 $00
    nop                                           ; $4FAF: $00
    ld [hl], d                                    ; $4FB0: $72
    ld [hl+], a                                   ; $4FB1: $22
    or [hl]                                       ; $4FB2: $B6

jr_00B_4FB3:
    ld c, a                                       ; $4FB3: $4F
    nop                                           ; $4FB4: $00
    nop                                           ; $4FB5: $00
    ld a, [bc]                                    ; $4FB6: $0A
    jr nc, jr_00B_4FA8                            ; $4FB7: $30 $EF

    nop                                           ; $4FB9: $00

jr_00B_4FBA:
    jr nc, jr_00B_4FB3                            ; $4FBA: $30 $F7

    ld [bc], a                                    ; $4FBC: $02
    jr nc, @+$01                                  ; $4FBD: $30 $FF

    inc b                                         ; $4FBF: $04
    jr nc, jr_00B_4FC9                            ; $4FC0: $30 $07

    ld b, $20                                     ; $4FC2: $06 $20
    rst RST_18                                    ; $4FC4: $DF

jr_00B_4FC5:
    ld [$E720], sp                                ; $4FC5: $08 $20 $E7
    ld a, [bc]                                    ; $4FC8: $0A

jr_00B_4FC9:
    jr nz, jr_00B_4FBA                            ; $4FC9: $20 $EF

    inc c                                         ; $4FCB: $0C
    jr nz, jr_00B_4FC5                            ; $4FCC: $20 $F7

    ld c, $20                                     ; $4FCE: $0E $20
    rst RST_38                                    ; $4FD0: $FF
    db $10                                        ; $4FD1: $10
    jr nz, jr_00B_4FDB                            ; $4FD2: $20 $07

    ld [de], a                                    ; $4FD4: $12
    nop                                           ; $4FD5: $00
    ld b, $00                                     ; $4FD6: $06 $00
    ld b, b                                       ; $4FD8: $40
    ld [hl], e                                    ; $4FD9: $73
    ld [hl+], a                                   ; $4FDA: $22

jr_00B_4FDB:
    rst RST_18                                    ; $4FDB: $DF
    ld c, a                                       ; $4FDC: $4F
    nop                                           ; $4FDD: $00

jr_00B_4FDE:
    nop                                           ; $4FDE: $00
    add hl, bc                                    ; $4FDF: $09
    jr nc, @-$0D                                  ; $4FE0: $30 $F1

    nop                                           ; $4FE2: $00
    jr nc, jr_00B_4FDE                            ; $4FE3: $30 $F9

    ld [bc], a                                    ; $4FE5: $02
    jr nc, jr_00B_4FE9                            ; $4FE6: $30 $01

    inc b                                         ; $4FE8: $04

jr_00B_4FE9:
    jr nc, jr_00B_4FF4                            ; $4FE9: $30 $09

    ld b, $20                                     ; $4FEB: $06 $20
    or $08                                        ; $4FED: $F6 $08

jr_00B_4FEF:
    jr nz, jr_00B_4FEF                            ; $4FEF: $20 $FE

    ld a, [bc]                                    ; $4FF1: $0A
    jr nz, @+$08                                  ; $4FF2: $20 $06

jr_00B_4FF4:
    inc c                                         ; $4FF4: $0C
    db $10                                        ; $4FF5: $10
    ld sp, hl                                     ; $4FF6: $F9
    ld c, $10                                     ; $4FF7: $0E $10

jr_00B_4FF9:
    ld bc, $0010                                  ; $4FF9: $01 $10 $00
    ld b, $E1                                     ; $4FFC: $06 $E1
    ld h, b                                       ; $4FFE: $60

jr_00B_4FFF:
    ld [hl], h                                    ; $4FFF: $74
    ld [hl+], a                                   ; $5000: $22
    dec b                                         ; $5001: $05
    ld d, b                                       ; $5002: $50
    nop                                           ; $5003: $00

jr_00B_5004:
    nop                                           ; $5004: $00
    ld a, [bc]                                    ; $5005: $0A
    jr nc, jr_00B_4FF9                            ; $5006: $30 $F1

    nop                                           ; $5008: $00
    jr nc, jr_00B_5004                            ; $5009: $30 $F9

    ld [bc], a                                    ; $500B: $02
    jr nc, jr_00B_500F                            ; $500C: $30 $01

    inc b                                         ; $500E: $04

jr_00B_500F:
    jr nc, jr_00B_501A                            ; $500F: $30 $09

    ld b, $20                                     ; $5011: $06 $20
    ldh [$FF08], a                                ; $5013: $E0 $08

jr_00B_5015:
    jr nz, jr_00B_4FFF                            ; $5015: $20 $E8

    ld a, [bc]                                    ; $5017: $0A
    jr nz, @-$0E                                  ; $5018: $20 $F0

jr_00B_501A:
    inc c                                         ; $501A: $0C
    jr nz, jr_00B_5015                            ; $501B: $20 $F8

    ld c, $20                                     ; $501D: $0E $20
    nop                                           ; $501F: $00
    db $10                                        ; $5020: $10
    jr nz, @+$0A                                  ; $5021: $20 $08

    ld [de], a                                    ; $5023: $12
    nop                                           ; $5024: $00
    ld b, $00                                     ; $5025: $06 $00
    and b                                         ; $5027: $A0
    ld [hl], l                                    ; $5028: $75
    ld [hl+], a                                   ; $5029: $22
    ld l, $50                                     ; $502A: $2E $50
    nop                                           ; $502C: $00
    nop                                           ; $502D: $00
    add hl, bc                                    ; $502E: $09
    cpl                                           ; $502F: $2F
    rst RST_28                                    ; $5030: $EF
    nop                                           ; $5031: $00
    cpl                                           ; $5032: $2F
    rst RST_30                                    ; $5033: $F7
    ld [bc], a                                    ; $5034: $02
    jr nc, @+$01                                  ; $5035: $30 $FF

    inc b                                         ; $5037: $04
    jr nc, jr_00B_5041                            ; $5038: $30 $07

    ld b, $22                                     ; $503A: $06 $22
    rst RST_20                                    ; $503C: $E7
    ld [$EF1F], sp                                ; $503D: $08 $1F $EF
    ld a, [bc]                                    ; $5040: $0A

jr_00B_5041:
    rra                                           ; $5041: $1F
    rst RST_30                                    ; $5042: $F7
    inc c                                         ; $5043: $0C
    jr nz, @+$01                                  ; $5044: $20 $FF

    ld c, $20                                     ; $5046: $0E $20

jr_00B_5048:
    rlca                                          ; $5048: $07
    stop                                          ; $5049: $10 $00
    ld b, $00                                     ; $504B: $06 $00
    ret nz                                        ; $504D: $C0

    halt                                          ; $504E: $76
    ld [hl+], a                                   ; $504F: $22
    ld e, [hl]                                    ; $5050: $5E
    ld d, b                                       ; $5051: $50
    ld [$0000], sp                                ; $5052: $08 $00 $00
    ld b, $DB                                     ; $5055: $06 $DB
    ret nz                                        ; $5057: $C0

    halt                                          ; $5058: $76
    ld [hl+], a                                   ; $5059: $22
    ld e, [hl]                                    ; $505A: $5E
    ld d, b                                       ; $505B: $50
    ld [$0A00], sp                                ; $505C: $08 $00 $0A
    jr nc, jr_00B_5048                            ; $505F: $30 $E7

    nop                                           ; $5061: $00
    jr nc, @-$0F                                  ; $5062: $30 $EF

    ld [bc], a                                    ; $5064: $02
    jr nc, @-$07                                  ; $5065: $30 $F7

    inc b                                         ; $5067: $04
    jr nc, @+$01                                  ; $5068: $30 $FF

    ld b, $30                                     ; $506A: $06 $30
    rlca                                          ; $506C: $07
    ld [$EE20], sp                                ; $506D: $08 $20 $EE
    ld a, [bc]                                    ; $5070: $0A
    jr nz, @-$08                                  ; $5071: $20 $F6

    inc c                                         ; $5073: $0C

jr_00B_5074:
    jr nz, jr_00B_5074                            ; $5074: $20 $FE

    ld c, $10                                     ; $5076: $0E $10
    pop af                                        ; $5078: $F1
    db $10                                        ; $5079: $10
    db $10                                        ; $507A: $10
    ld sp, hl                                     ; $507B: $F9
    ld [de], a                                    ; $507C: $12
    nop                                           ; $507D: $00
    ld b, $E2                                     ; $507E: $06 $E2
    nop                                           ; $5080: $00

jr_00B_5081:
    ld a, b                                       ; $5081: $78
    ld [hl+], a                                   ; $5082: $22
    add a                                         ; $5083: $87
    ld d, b                                       ; $5084: $50
    nop                                           ; $5085: $00

jr_00B_5086:
    nop                                           ; $5086: $00
    ld a, [bc]                                    ; $5087: $0A

jr_00B_5088:
    jr nc, jr_00B_5090                            ; $5088: $30 $06

jr_00B_508A:
    nop                                           ; $508A: $00

jr_00B_508B:
    jr nc, jr_00B_508B                            ; $508B: $30 $FE

    ld [bc], a                                    ; $508D: $02
    jr nc, jr_00B_5086                            ; $508E: $30 $F6

jr_00B_5090:
    inc b                                         ; $5090: $04
    jr nc, jr_00B_5081                            ; $5091: $30 $EE

    ld b, $20                                     ; $5093: $06 $20
    inc bc                                        ; $5095: $03
    ld [$FB20], sp                                ; $5096: $08 $20 $FB
    ld a, [bc]                                    ; $5099: $0A
    jr nz, @-$0B                                  ; $509A: $20 $F3

    inc c                                         ; $509C: $0C
    jr nz, jr_00B_508A                            ; $509D: $20 $EB

    ld c, $30                                     ; $509F: $0E $30
    and $10                                       ; $50A1: $E6 $10
    jr nz, jr_00B_5088                            ; $50A3: $20 $E3

    ld [de], a                                    ; $50A5: $12
    nop                                           ; $50A6: $00
    ld b, $E2                                     ; $50A7: $06 $E2
    ld b, b                                       ; $50A9: $40
    ld a, c                                       ; $50AA: $79
    ld [hl+], a                                   ; $50AB: $22
    or b                                          ; $50AC: $B0
    ld d, b                                       ; $50AD: $50
    nop                                           ; $50AE: $00
    nop                                           ; $50AF: $00
    add hl, bc                                    ; $50B0: $09
    cpl                                           ; $50B1: $2F
    pop af                                        ; $50B2: $F1
    nop                                           ; $50B3: $00
    ld sp, $02F9                                  ; $50B4: $31 $F9 $02
    ld sp, $0401                                  ; $50B7: $31 $01 $04
    ld [hl], $09                                  ; $50BA: $36 $09
    ld b, $1F                                     ; $50BC: $06 $1F
    pop af                                        ; $50BE: $F1
    ld [$F921], sp                                ; $50BF: $08 $21 $F9
    ld a, [bc]                                    ; $50C2: $0A
    ld hl, $0C01                                  ; $50C3: $21 $01 $0C
    rrca                                          ; $50C6: $0F
    pop af                                        ; $50C7: $F1
    ld c, $11                                     ; $50C8: $0E $11
    ld sp, hl                                     ; $50CA: $F9
    stop                                          ; $50CB: $10 $00
    ld b, $00                                     ; $50CD: $06 $00
    ld h, b                                       ; $50CF: $60
    ld a, d                                       ; $50D0: $7A
    ld [hl+], a                                   ; $50D1: $22
    sub $50                                       ; $50D2: $D6 $50
    nop                                           ; $50D4: $00
    nop                                           ; $50D5: $00
    add hl, bc                                    ; $50D6: $09
    ld sp, $00F1                                  ; $50D7: $31 $F1 $00
    ld sp, $02F9                                  ; $50DA: $31 $F9 $02
    ld sp, $0401                                  ; $50DD: $31 $01 $04
    dec [hl]                                      ; $50E0: $35
    add hl, bc                                    ; $50E1: $09
    ld b, $19                                     ; $50E2: $06 $19
    ld [$2108], a                                 ; $50E4: $EA $08 $21
    ldh a, [c]                                    ; $50E7: $F2
    ld a, [bc]                                    ; $50E8: $0A
    ld hl, $0CFA                                  ; $50E9: $21 $FA $0C
    ld hl, $0E02                                  ; $50EC: $21 $02 $0E
    ld de, $10EE                                  ; $50EF: $11 $EE $10
    nop                                           ; $50F2: $00
    ld b, $09                                     ; $50F3: $06 $09
    add b                                         ; $50F5: $80
    ld a, e                                       ; $50F6: $7B
    ld [hl+], a                                   ; $50F7: $22
    db $FC                                        ; $50F8: $FC
    ld d, b                                       ; $50F9: $50
    nop                                           ; $50FA: $00
    nop                                           ; $50FB: $00
    ld a, [bc]                                    ; $50FC: $0A
    cpl                                           ; $50FD: $2F
    pop af                                        ; $50FE: $F1
    nop                                           ; $50FF: $00
    cpl                                           ; $5100: $2F
    ld sp, hl                                     ; $5101: $F9
    ld [bc], a                                    ; $5102: $02
    ld sp, $0401                                  ; $5103: $31 $01 $04
    jr nc, @+$0B                                  ; $5106: $30 $09

    ld b, $18                                     ; $5108: $06 $18
    add sp, $08                                   ; $510A: $E8 $08
    rra                                           ; $510C: $1F
    ldh a, [$FF0A]                                ; $510D: $F0 $0A
    rra                                           ; $510F: $1F
    ld hl, sp+$0C                                 ; $5110: $F8 $0C
    ld hl, $0E00                                  ; $5112: $21 $00 $0E
    jr nz, jr_00B_511F                            ; $5115: $20 $08

    db $10                                        ; $5117: $10
    rrca                                          ; $5118: $0F
    db $EC                                        ; $5119: $EC
    ld [de], a                                    ; $511A: $12
    nop                                           ; $511B: $00
    ld b, $09                                     ; $511C: $06 $09
    ret nz                                        ; $511E: $C0

jr_00B_511F:
    ld a, h                                       ; $511F: $7C
    ld [hl+], a                                   ; $5120: $22
    dec h                                         ; $5121: $25
    ld d, c                                       ; $5122: $51
    nop                                           ; $5123: $00
    nop                                           ; $5124: $00
    ld a, [bc]                                    ; $5125: $0A
    cpl                                           ; $5126: $2F
    pop af                                        ; $5127: $F1
    nop                                           ; $5128: $00
    cpl                                           ; $5129: $2F
    ld sp, hl                                     ; $512A: $F9
    ld [bc], a                                    ; $512B: $02
    ld sp, $0401                                  ; $512C: $31 $01 $04
    jr nc, @+$0B                                  ; $512F: $30 $09

    ld b, $1A                                     ; $5131: $06 $1A
    add sp, $08                                   ; $5133: $E8 $08
    rra                                           ; $5135: $1F
    ldh a, [$FF0A]                                ; $5136: $F0 $0A
    rra                                           ; $5138: $1F
    ld hl, sp+$0C                                 ; $5139: $F8 $0C
    ld hl, $0E00                                  ; $513B: $21 $00 $0E
    jr nz, jr_00B_5148                            ; $513E: $20 $08

    db $10                                        ; $5140: $10
    rrca                                          ; $5141: $0F
    db $EC                                        ; $5142: $EC
    ld [de], a                                    ; $5143: $12
    ld c, h                                       ; $5144: $4C
    ld d, h                                       ; $5145: $54
    rst RST_38                                    ; $5146: $FF
    rst RST_38                                    ; $5147: $FF

jr_00B_5148:
    ld l, a                                       ; $5148: $6F
    ld d, h                                       ; $5149: $54
    rst RST_38                                    ; $514A: $FF
    rst RST_38                                    ; $514B: $FF
    sub l                                         ; $514C: $95
    ld d, h                                       ; $514D: $54
    rst RST_38                                    ; $514E: $FF
    rst RST_38                                    ; $514F: $FF
    jp nz, $FF54                                  ; $5150: $C2 $54 $FF

    rst RST_38                                    ; $5153: $FF
    sub l                                         ; $5154: $95
    ld d, h                                       ; $5155: $54
    rst RST_38                                    ; $5156: $FF
    rst RST_38                                    ; $5157: $FF
    ld l, a                                       ; $5158: $6F
    ld d, h                                       ; $5159: $54
    rst RST_38                                    ; $515A: $FF
    rst RST_38                                    ; $515B: $FF
    rst RST_38                                    ; $515C: $FF
    rst RST_38                                    ; $515D: $FF
    ld sp, $FF55                                  ; $515E: $31 $55 $FF
    rst RST_38                                    ; $5161: $FF
    add sp, $54                                   ; $5162: $E8 $54
    rst RST_38                                    ; $5164: $FF
    rst RST_38                                    ; $5165: $FF
    sub l                                         ; $5166: $95
    ld d, h                                       ; $5167: $54
    rst RST_38                                    ; $5168: $FF
    rst RST_38                                    ; $5169: $FF
    ld c, $55                                     ; $516A: $0E $55
    rst RST_38                                    ; $516C: $FF
    rst RST_38                                    ; $516D: $FF
    rst RST_38                                    ; $516E: $FF
    rst RST_38                                    ; $516F: $FF
    ld c, $55                                     ; $5170: $0E $55
    rst RST_38                                    ; $5172: $FF
    rst RST_38                                    ; $5173: $FF
    sub l                                         ; $5174: $95
    ld d, h                                       ; $5175: $54
    rst RST_38                                    ; $5176: $FF
    rst RST_38                                    ; $5177: $FF
    add sp, $54                                   ; $5178: $E8 $54
    rst RST_38                                    ; $517A: $FF
    rst RST_38                                    ; $517B: $FF
    ld sp, $FF55                                  ; $517C: $31 $55 $FF
    rst RST_38                                    ; $517F: $FF
    rst RST_38                                    ; $5180: $FF
    rst RST_38                                    ; $5181: $FF
    ld sp, $FF55                                  ; $5182: $31 $55 $FF
    rst RST_38                                    ; $5185: $FF
    rst RST_38                                    ; $5186: $FF
    rst RST_38                                    ; $5187: $FF
    ld sp, $FF55                                  ; $5188: $31 $55 $FF
    rst RST_38                                    ; $518B: $FF
    sub l                                         ; $518C: $95
    ld d, h                                       ; $518D: $54
    rst RST_38                                    ; $518E: $FF
    rst RST_38                                    ; $518F: $FF
    sub l                                         ; $5190: $95
    ld d, h                                       ; $5191: $54
    rst RST_38                                    ; $5192: $FF
    rst RST_38                                    ; $5193: $FF
    ld c, $55                                     ; $5194: $0E $55
    rst RST_38                                    ; $5196: $FF
    rst RST_38                                    ; $5197: $FF
    ld c, $55                                     ; $5198: $0E $55
    rst RST_38                                    ; $519A: $FF
    rst RST_38                                    ; $519B: $FF
    sub l                                         ; $519C: $95
    ld d, h                                       ; $519D: $54
    rst RST_38                                    ; $519E: $FF
    rst RST_38                                    ; $519F: $FF
    sub l                                         ; $51A0: $95
    ld d, h                                       ; $51A1: $54
    rst RST_38                                    ; $51A2: $FF
    rst RST_38                                    ; $51A3: $FF
    ld sp, $FF55                                  ; $51A4: $31 $55 $FF
    rst RST_38                                    ; $51A7: $FF
    rst RST_38                                    ; $51A8: $FF
    rst RST_38                                    ; $51A9: $FF
    ld sp, $FF55                                  ; $51AA: $31 $55 $FF
    rst RST_38                                    ; $51AD: $FF
    sub l                                         ; $51AE: $95
    ld d, h                                       ; $51AF: $54
    rst RST_38                                    ; $51B0: $FF
    rst RST_38                                    ; $51B1: $FF
    ld e, e                                       ; $51B2: $5B
    ld d, l                                       ; $51B3: $55
    rst RST_38                                    ; $51B4: $FF
    rst RST_38                                    ; $51B5: $FF
    sbc c                                         ; $51B6: $99
    ld d, l                                       ; $51B7: $55
    rst RST_38                                    ; $51B8: $FF
    rst RST_38                                    ; $51B9: $FF
    ld l, a                                       ; $51BA: $6F
    ld d, l                                       ; $51BB: $55
    rst RST_38                                    ; $51BC: $FF
    rst RST_38                                    ; $51BD: $FF
    xor l                                         ; $51BE: $AD
    ld d, l                                       ; $51BF: $55
    rst RST_38                                    ; $51C0: $FF
    rst RST_38                                    ; $51C1: $FF
    sub l                                         ; $51C2: $95
    ld d, h                                       ; $51C3: $54
    rst RST_38                                    ; $51C4: $FF
    rst RST_38                                    ; $51C5: $FF
    ld sp, $FF55                                  ; $51C6: $31 $55 $FF
    rst RST_38                                    ; $51C9: $FF
    rst RST_38                                    ; $51CA: $FF
    rst RST_38                                    ; $51CB: $FF
    ld sp, $FF55                                  ; $51CC: $31 $55 $FF
    rst RST_38                                    ; $51CF: $FF
    sub l                                         ; $51D0: $95
    ld d, h                                       ; $51D1: $54
    rst RST_38                                    ; $51D2: $FF
    rst RST_38                                    ; $51D3: $FF
    xor l                                         ; $51D4: $AD
    ld d, l                                       ; $51D5: $55
    rst RST_38                                    ; $51D6: $FF
    rst RST_38                                    ; $51D7: $FF
    ld l, a                                       ; $51D8: $6F
    ld d, l                                       ; $51D9: $55
    rst RST_38                                    ; $51DA: $FF
    rst RST_38                                    ; $51DB: $FF
    sbc c                                         ; $51DC: $99
    ld d, l                                       ; $51DD: $55
    rst RST_38                                    ; $51DE: $FF
    rst RST_38                                    ; $51DF: $FF
    ld e, e                                       ; $51E0: $5B
    ld d, l                                       ; $51E1: $55
    rst RST_38                                    ; $51E2: $FF
    rst RST_38                                    ; $51E3: $FF
    sub l                                         ; $51E4: $95
    ld d, h                                       ; $51E5: $54
    rst RST_38                                    ; $51E6: $FF
    rst RST_38                                    ; $51E7: $FF
    ld sp, $FF55                                  ; $51E8: $31 $55 $FF
    rst RST_38                                    ; $51EB: $FF
    rst RST_38                                    ; $51EC: $FF
    rst RST_38                                    ; $51ED: $FF
    rst RST_10                                    ; $51EE: $D7
    ld d, l                                       ; $51EF: $55
    rst RST_38                                    ; $51F0: $FF
    rst RST_38                                    ; $51F1: $FF
    rst RST_38                                    ; $51F2: $FF
    rst RST_38                                    ; $51F3: $FF
    rst RST_30                                    ; $51F4: $F7
    ld d, l                                       ; $51F5: $55
    rst RST_38                                    ; $51F6: $FF
    rst RST_38                                    ; $51F7: $FF
    rst RST_38                                    ; $51F8: $FF
    rst RST_38                                    ; $51F9: $FF
    ld a, [de]                                    ; $51FA: $1A
    ld d, [hl]                                    ; $51FB: $56
    rst RST_38                                    ; $51FC: $FF
    rst RST_38                                    ; $51FD: $FF
    ld sp, $FF55                                  ; $51FE: $31 $55 $FF
    rst RST_38                                    ; $5201: $FF
    rst RST_38                                    ; $5202: $FF
    rst RST_38                                    ; $5203: $FF
    ld a, [hl-]                                   ; $5204: $3A
    ld d, [hl]                                    ; $5205: $56
    rst RST_38                                    ; $5206: $FF
    rst RST_38                                    ; $5207: $FF
    ld h, b                                       ; $5208: $60
    ld d, [hl]                                    ; $5209: $56
    rst RST_38                                    ; $520A: $FF
    rst RST_38                                    ; $520B: $FF
    ld a, [hl-]                                   ; $520C: $3A
    ld d, [hl]                                    ; $520D: $56
    rst RST_38                                    ; $520E: $FF
    rst RST_38                                    ; $520F: $FF
    rst RST_38                                    ; $5210: $FF
    rst RST_38                                    ; $5211: $FF
    add [hl]                                      ; $5212: $86
    ld d, [hl]                                    ; $5213: $56
    rst RST_38                                    ; $5214: $FF
    rst RST_38                                    ; $5215: $FF
    xor c                                         ; $5216: $A9
    ld d, [hl]                                    ; $5217: $56
    rst RST_38                                    ; $5218: $FF
    rst RST_38                                    ; $5219: $FF
    add [hl]                                      ; $521A: $86
    ld d, [hl]                                    ; $521B: $56
    rst RST_38                                    ; $521C: $FF
    rst RST_38                                    ; $521D: $FF
    rst RST_38                                    ; $521E: $FF
    rst RST_38                                    ; $521F: $FF
    jp nc, $FF56                                  ; $5220: $D2 $56 $FF

    rst RST_38                                    ; $5223: $FF
    ei                                            ; $5224: $FB
    ld d, [hl]                                    ; $5225: $56
    rst RST_38                                    ; $5226: $FF
    rst RST_38                                    ; $5227: $FF
    inc sp                                        ; $5228: $33
    ld d, a                                       ; $5229: $57
    rst RST_38                                    ; $522A: $FF
    rst RST_38                                    ; $522B: $FF
    rst RST_38                                    ; $522C: $FF
    rst RST_38                                    ; $522D: $FF
    ld h, e                                       ; $522E: $63
    ld d, a                                       ; $522F: $57
    rst RST_38                                    ; $5230: $FF
    rst RST_38                                    ; $5231: $FF
    add [hl]                                      ; $5232: $86
    ld d, a                                       ; $5233: $57
    rst RST_38                                    ; $5234: $FF
    rst RST_38                                    ; $5235: $FF
    ld h, e                                       ; $5236: $63
    ld d, a                                       ; $5237: $57
    rst RST_38                                    ; $5238: $FF
    rst RST_38                                    ; $5239: $FF
    rst RST_38                                    ; $523A: $FF
    rst RST_38                                    ; $523B: $FF
    add [hl]                                      ; $523C: $86
    ld d, [hl]                                    ; $523D: $56
    rst RST_38                                    ; $523E: $FF
    rst RST_38                                    ; $523F: $FF
    xor h                                         ; $5240: $AC
    ld d, a                                       ; $5241: $57
    rst RST_38                                    ; $5242: $FF
    rst RST_38                                    ; $5243: $FF
    add [hl]                                      ; $5244: $86
    ld d, [hl]                                    ; $5245: $56
    rst RST_38                                    ; $5246: $FF
    rst RST_38                                    ; $5247: $FF
    rst RST_38                                    ; $5248: $FF
    rst RST_38                                    ; $5249: $FF
    jp nc, $FF57                                  ; $524A: $D2 $57 $FF

    rst RST_38                                    ; $524D: $FF
    ld hl, sp+$57                                 ; $524E: $F8 $57
    rst RST_38                                    ; $5250: $FF
    rst RST_38                                    ; $5251: $FF
    dec de                                        ; $5252: $1B
    ld e, b                                       ; $5253: $58
    rst RST_38                                    ; $5254: $FF
    rst RST_38                                    ; $5255: $FF
    ld b, h                                       ; $5256: $44
    ld e, b                                       ; $5257: $58
    rst RST_38                                    ; $5258: $FF
    rst RST_38                                    ; $5259: $FF
    ld hl, sp+$57                                 ; $525A: $F8 $57
    rst RST_38                                    ; $525C: $FF
    rst RST_38                                    ; $525D: $FF
    rst RST_38                                    ; $525E: $FF
    rst RST_38                                    ; $525F: $FF
    ei                                            ; $5260: $FB
    ld d, [hl]                                    ; $5261: $56
    rst RST_38                                    ; $5262: $FF
    rst RST_38                                    ; $5263: $FF
    inc sp                                        ; $5264: $33
    ld d, a                                       ; $5265: $57
    rst RST_38                                    ; $5266: $FF
    rst RST_38                                    ; $5267: $FF
    inc sp                                        ; $5268: $33
    ld d, a                                       ; $5269: $57
    rst RST_38                                    ; $526A: $FF
    rst RST_38                                    ; $526B: $FF
    inc sp                                        ; $526C: $33
    ld d, a                                       ; $526D: $57
    rst RST_38                                    ; $526E: $FF
    rst RST_38                                    ; $526F: $FF
    ld sp, $FF55                                  ; $5270: $31 $55 $FF
    rst RST_38                                    ; $5273: $FF
    rst RST_38                                    ; $5274: $FF
    rst RST_38                                    ; $5275: $FF
    nop                                           ; $5276: $00
    ld e, d                                       ; $5277: $5A
    rst RST_38                                    ; $5278: $FF
    rst RST_38                                    ; $5279: $FF
    ld l, l                                       ; $527A: $6D
    ld e, b                                       ; $527B: $58
    rst RST_38                                    ; $527C: $FF
    rst RST_38                                    ; $527D: $FF
    ld l, l                                       ; $527E: $6D
    ld e, b                                       ; $527F: $58
    rst RST_38                                    ; $5280: $FF
    rst RST_38                                    ; $5281: $FF
    ld l, l                                       ; $5282: $6D
    ld e, b                                       ; $5283: $58
    rst RST_38                                    ; $5284: $FF
    rst RST_38                                    ; $5285: $FF
    ld sp, $FF55                                  ; $5286: $31 $55 $FF
    rst RST_38                                    ; $5289: $FF
    rst RST_38                                    ; $528A: $FF
    rst RST_38                                    ; $528B: $FF
    call $FF59                                    ; $528C: $CD $59 $FF
    rst RST_38                                    ; $528F: $FF
    sbc a                                         ; $5290: $9F
    ld d, h                                       ; $5291: $54
    rst RST_38                                    ; $5292: $FF
    rst RST_38                                    ; $5293: $FF
    ld [hl], c                                    ; $5294: $71
    ld e, d                                       ; $5295: $5A
    rst RST_38                                    ; $5296: $FF
    rst RST_38                                    ; $5297: $FF
    ld e, $5A                                     ; $5298: $1E $5A
    rst RST_38                                    ; $529A: $FF
    rst RST_38                                    ; $529B: $FF
    dec a                                         ; $529C: $3D
    ld d, a                                       ; $529D: $57
    rst RST_38                                    ; $529E: $FF
    rst RST_38                                    ; $529F: $FF
    rst RST_38                                    ; $52A0: $FF
    rst RST_38                                    ; $52A1: $FF
    and b                                         ; $52A2: $A0
    ld e, b                                       ; $52A3: $58
    rst RST_38                                    ; $52A4: $FF
    rst RST_38                                    ; $52A5: $FF
    ld sp, $FF55                                  ; $52A6: $31 $55 $FF
    rst RST_38                                    ; $52A9: $FF
    rst RST_38                                    ; $52AA: $FF
    rst RST_38                                    ; $52AB: $FF
    or $59                                        ; $52AC: $F6 $59
    rst RST_38                                    ; $52AE: $FF
    rst RST_38                                    ; $52AF: $FF
    or $59                                        ; $52B0: $F6 $59
    rst RST_38                                    ; $52B2: $FF
    rst RST_38                                    ; $52B3: $FF
    ld sp, $FF55                                  ; $52B4: $31 $55 $FF
    rst RST_38                                    ; $52B7: $FF
    rst RST_38                                    ; $52B8: $FF
    rst RST_38                                    ; $52B9: $FF
    ret nz                                        ; $52BA: $C0

    ld e, b                                       ; $52BB: $58
    rst RST_38                                    ; $52BC: $FF
    rst RST_38                                    ; $52BD: $FF
    db $E3                                        ; $52BE: $E3
    ld e, b                                       ; $52BF: $58
    rst RST_38                                    ; $52C0: $FF
    rst RST_38                                    ; $52C1: $FF
    rst RST_38                                    ; $52C2: $FF
    rst RST_38                                    ; $52C3: $FF
    ret nz                                        ; $52C4: $C0

    ld e, b                                       ; $52C5: $58
    rst RST_38                                    ; $52C6: $FF
    rst RST_38                                    ; $52C7: $FF
    add hl, bc                                    ; $52C8: $09
    ld e, c                                       ; $52C9: $59
    rst RST_38                                    ; $52CA: $FF
    rst RST_38                                    ; $52CB: $FF
    jr c, jr_00B_5327                             ; $52CC: $38 $59

    rst RST_38                                    ; $52CE: $FF
    rst RST_38                                    ; $52CF: $FF
    rst RST_38                                    ; $52D0: $FF
    rst RST_38                                    ; $52D1: $FF
    ld e, b                                       ; $52D2: $58
    ld e, c                                       ; $52D3: $59
    rst RST_38                                    ; $52D4: $FF
    rst RST_38                                    ; $52D5: $FF
    ld a, [hl]                                    ; $52D6: $7E
    ld e, c                                       ; $52D7: $59
    rst RST_38                                    ; $52D8: $FF
    rst RST_38                                    ; $52D9: $FF
    and a                                         ; $52DA: $A7
    ld e, c                                       ; $52DB: $59
    rst RST_38                                    ; $52DC: $FF
    rst RST_38                                    ; $52DD: $FF
    rst RST_38                                    ; $52DE: $FF
    rst RST_38                                    ; $52DF: $FF
    ld sp, $FF55                                  ; $52E0: $31 $55 $FF
    rst RST_38                                    ; $52E3: $FF
    sub l                                         ; $52E4: $95
    ld d, h                                       ; $52E5: $54
    rst RST_38                                    ; $52E6: $FF
    rst RST_38                                    ; $52E7: $FF
    ld l, a                                       ; $52E8: $6F
    ld d, l                                       ; $52E9: $55
    rst RST_38                                    ; $52EA: $FF
    rst RST_38                                    ; $52EB: $FF
    sbc c                                         ; $52EC: $99
    ld d, l                                       ; $52ED: $55
    rst RST_38                                    ; $52EE: $FF
    rst RST_38                                    ; $52EF: $FF
    ld e, e                                       ; $52F0: $5B
    ld d, l                                       ; $52F1: $55
    rst RST_38                                    ; $52F2: $FF
    rst RST_38                                    ; $52F3: $FF
    sub l                                         ; $52F4: $95
    ld d, h                                       ; $52F5: $54
    rst RST_38                                    ; $52F6: $FF
    rst RST_38                                    ; $52F7: $FF
    ld sp, $FF55                                  ; $52F8: $31 $55 $FF
    rst RST_38                                    ; $52FB: $FF
    ld c, h                                       ; $52FC: $4C
    ld d, h                                       ; $52FD: $54
    rst RST_38                                    ; $52FE: $FF
    rst RST_38                                    ; $52FF: $FF
    ld e, b                                       ; $5300: $58
    ld e, c                                       ; $5301: $59
    rst RST_38                                    ; $5302: $FF
    rst RST_38                                    ; $5303: $FF
    ld a, [hl]                                    ; $5304: $7E
    ld e, c                                       ; $5305: $59
    rst RST_38                                    ; $5306: $FF
    rst RST_38                                    ; $5307: $FF
    and a                                         ; $5308: $A7
    ld e, c                                       ; $5309: $59
    rst RST_38                                    ; $530A: $FF
    rst RST_38                                    ; $530B: $FF
    rst RST_38                                    ; $530C: $FF
    rst RST_38                                    ; $530D: $FF
    call $FF59                                    ; $530E: $CD $59 $FF
    rst RST_38                                    ; $5311: $FF
    rst RST_38                                    ; $5312: $FF
    rst RST_38                                    ; $5313: $FF
    call $FF59                                    ; $5314: $CD $59 $FF
    rst RST_38                                    ; $5317: $FF
    rst RST_38                                    ; $5318: $FF
    rst RST_38                                    ; $5319: $FF
    ld c, h                                       ; $531A: $4C
    ld d, h                                       ; $531B: $54
    rst RST_38                                    ; $531C: $FF
    rst RST_38                                    ; $531D: $FF
    call $FF59                                    ; $531E: $CD $59 $FF
    rst RST_38                                    ; $5321: $FF
    or $59                                        ; $5322: $F6 $59
    rst RST_38                                    ; $5324: $FF
    rst RST_38                                    ; $5325: $FF
    rst RST_38                                    ; $5326: $FF

jr_00B_5327:
    rst RST_38                                    ; $5327: $FF
    ld b, c                                       ; $5328: $41
    ld e, d                                       ; $5329: $5A
    rst RST_38                                    ; $532A: $FF
    rst RST_38                                    ; $532B: $FF
    rst RST_38                                    ; $532C: $FF
    rst RST_38                                    ; $532D: $FF
    call $FF59                                    ; $532E: $CD $59 $FF
    rst RST_38                                    ; $5331: $FF
    xor l                                         ; $5332: $AD
    ld d, l                                       ; $5333: $55
    rst RST_38                                    ; $5334: $FF
    rst RST_38                                    ; $5335: $FF
    ld l, a                                       ; $5336: $6F
    ld d, l                                       ; $5337: $55
    rst RST_38                                    ; $5338: $FF
    rst RST_38                                    ; $5339: $FF
    sbc c                                         ; $533A: $99
    ld d, l                                       ; $533B: $55
    rst RST_38                                    ; $533C: $FF
    rst RST_38                                    ; $533D: $FF
    ld e, e                                       ; $533E: $5B
    ld d, l                                       ; $533F: $55
    rst RST_38                                    ; $5340: $FF
    rst RST_38                                    ; $5341: $FF
    sub l                                         ; $5342: $95
    ld d, h                                       ; $5343: $54
    rst RST_38                                    ; $5344: $FF
    rst RST_38                                    ; $5345: $FF
    ld sp, $FF55                                  ; $5346: $31 $55 $FF
    rst RST_38                                    ; $5349: $FF
    rst RST_38                                    ; $534A: $FF
    rst RST_38                                    ; $534B: $FF
    call $FF59                                    ; $534C: $CD $59 $FF
    rst RST_38                                    ; $534F: $FF
    ld h, a                                       ; $5350: $67
    ld e, d                                       ; $5351: $5A
    rst RST_38                                    ; $5352: $FF
    rst RST_38                                    ; $5353: $FF
    and h                                         ; $5354: $A4
    ld e, d                                       ; $5355: $5A
    rst RST_38                                    ; $5356: $FF
    rst RST_38                                    ; $5357: $FF
    ld h, a                                       ; $5358: $67
    ld e, d                                       ; $5359: $5A
    rst RST_38                                    ; $535A: $FF
    rst RST_38                                    ; $535B: $FF
    and h                                         ; $535C: $A4
    ld e, d                                       ; $535D: $5A
    rst RST_38                                    ; $535E: $FF
    rst RST_38                                    ; $535F: $FF
    rst RST_38                                    ; $5360: $FF
    rst RST_38                                    ; $5361: $FF
    or $59                                        ; $5362: $F6 $59
    rst RST_38                                    ; $5364: $FF
    rst RST_38                                    ; $5365: $FF
    nop                                           ; $5366: $00
    ld e, d                                       ; $5367: $5A
    rst RST_38                                    ; $5368: $FF
    rst RST_38                                    ; $5369: $FF
    ld a, [bc]                                    ; $536A: $0A
    ld e, d                                       ; $536B: $5A
    rst RST_38                                    ; $536C: $FF
    rst RST_38                                    ; $536D: $FF
    inc d                                         ; $536E: $14
    ld e, d                                       ; $536F: $5A
    rst RST_38                                    ; $5370: $FF
    rst RST_38                                    ; $5371: $FF
    inc d                                         ; $5372: $14
    ld e, d                                       ; $5373: $5A
    rst RST_38                                    ; $5374: $FF
    rst RST_38                                    ; $5375: $FF
    ld h, a                                       ; $5376: $67
    ld e, d                                       ; $5377: $5A
    rst RST_38                                    ; $5378: $FF
    rst RST_38                                    ; $5379: $FF
    and h                                         ; $537A: $A4
    ld e, d                                       ; $537B: $5A
    rst RST_38                                    ; $537C: $FF
    rst RST_38                                    ; $537D: $FF
    rst RST_38                                    ; $537E: $FF
    rst RST_38                                    ; $537F: $FF
    call $FF59                                    ; $5380: $CD $59 $FF
    rst RST_38                                    ; $5383: $FF
    ld h, a                                       ; $5384: $67
    ld e, d                                       ; $5385: $5A
    rst RST_38                                    ; $5386: $FF
    rst RST_38                                    ; $5387: $FF
    and h                                         ; $5388: $A4
    ld e, d                                       ; $5389: $5A
    rst RST_38                                    ; $538A: $FF
    rst RST_38                                    ; $538B: $FF
    rst RST_38                                    ; $538C: $FF
    rst RST_38                                    ; $538D: $FF
    ld a, e                                       ; $538E: $7B
    ld e, d                                       ; $538F: $5A
    rst RST_38                                    ; $5390: $FF
    rst RST_38                                    ; $5391: $FF
    rst RST_38                                    ; $5392: $FF
    rst RST_38                                    ; $5393: $FF
    ld sp, $FF55                                  ; $5394: $31 $55 $FF
    rst RST_38                                    ; $5397: $FF
    ld sp, $FF55                                  ; $5398: $31 $55 $FF
    rst RST_38                                    ; $539B: $FF
    rst RST_38                                    ; $539C: $FF
    rst RST_38                                    ; $539D: $FF
    jp nc, $FF56                                  ; $539E: $D2 $56 $FF

    rst RST_38                                    ; $53A1: $FF
    pop de                                        ; $53A2: $D1
    ld e, d                                       ; $53A3: $5A
    rst RST_38                                    ; $53A4: $FF
    rst RST_38                                    ; $53A5: $FF
    nop                                           ; $53A6: $00
    ld e, e                                       ; $53A7: $5B
    rst RST_38                                    ; $53A8: $FF
    rst RST_38                                    ; $53A9: $FF
    pop de                                        ; $53AA: $D1
    ld e, d                                       ; $53AB: $5A
    rst RST_38                                    ; $53AC: $FF
    rst RST_38                                    ; $53AD: $FF
    and b                                         ; $53AE: $A0
    ld e, b                                       ; $53AF: $58
    rst RST_38                                    ; $53B0: $FF
    rst RST_38                                    ; $53B1: $FF
    ld sp, $FF55                                  ; $53B2: $31 $55 $FF
    rst RST_38                                    ; $53B5: $FF
    rst RST_38                                    ; $53B6: $FF
    rst RST_38                                    ; $53B7: $FF
    dec sp                                        ; $53B8: $3B
    ld d, l                                       ; $53B9: $55
    rst RST_38                                    ; $53BA: $FF
    rst RST_38                                    ; $53BB: $FF
    add [hl]                                      ; $53BC: $86
    ld d, [hl]                                    ; $53BD: $56
    rst RST_38                                    ; $53BE: $FF
    rst RST_38                                    ; $53BF: $FF
    xor h                                         ; $53C0: $AC
    ld d, a                                       ; $53C1: $57
    rst RST_38                                    ; $53C2: $FF
    rst RST_38                                    ; $53C3: $FF
    xor [hl]                                      ; $53C4: $AE
    ld e, d                                       ; $53C5: $5A
    rst RST_38                                    ; $53C6: $FF
    rst RST_38                                    ; $53C7: $FF
    ld sp, $FF55                                  ; $53C8: $31 $55 $FF
    rst RST_38                                    ; $53CB: $FF
    rst RST_38                                    ; $53CC: $FF
    rst RST_38                                    ; $53CD: $FF
    ret nz                                        ; $53CE: $C0

    ld e, b                                       ; $53CF: $58
    rst RST_38                                    ; $53D0: $FF
    rst RST_38                                    ; $53D1: $FF
    inc hl                                        ; $53D2: $23
    ld e, e                                       ; $53D3: $5B
    rst RST_38                                    ; $53D4: $FF
    rst RST_38                                    ; $53D5: $FF
    ld c, c                                       ; $53D6: $49
    ld e, e                                       ; $53D7: $5B
    rst RST_38                                    ; $53D8: $FF
    rst RST_38                                    ; $53D9: $FF
    inc hl                                        ; $53DA: $23
    ld e, e                                       ; $53DB: $5B
    rst RST_38                                    ; $53DC: $FF
    rst RST_38                                    ; $53DD: $FF
    ld c, c                                       ; $53DE: $49
    ld e, e                                       ; $53DF: $5B
    rst RST_38                                    ; $53E0: $FF
    rst RST_38                                    ; $53E1: $FF
    nop                                           ; $53E2: $00
    ld e, d                                       ; $53E3: $5A
    rst RST_38                                    ; $53E4: $FF
    rst RST_38                                    ; $53E5: $FF
    ld [hl], a                                    ; $53E6: $77
    ld e, b                                       ; $53E7: $58
    rst RST_38                                    ; $53E8: $FF
    rst RST_38                                    ; $53E9: $FF
    add sp, $54                                   ; $53EA: $E8 $54
    rst RST_38                                    ; $53EC: $FF
    rst RST_38                                    ; $53ED: $FF
    ld sp, $FF55                                  ; $53EE: $31 $55 $FF
    rst RST_38                                    ; $53F1: $FF
    rst RST_38                                    ; $53F2: $FF
    rst RST_38                                    ; $53F3: $FF
    jp nc, $FF56                                  ; $53F4: $D2 $56 $FF

    rst RST_38                                    ; $53F7: $FF
    ei                                            ; $53F8: $FB
    ld d, [hl]                                    ; $53F9: $56
    rst RST_38                                    ; $53FA: $FF
    rst RST_38                                    ; $53FB: $FF
    ld l, a                                       ; $53FC: $6F
    ld e, e                                       ; $53FD: $5B
    rst RST_38                                    ; $53FE: $FF
    rst RST_38                                    ; $53FF: $FF
    sbc e                                         ; $5400: $9B
    ld e, e                                       ; $5401: $5B
    rst RST_38                                    ; $5402: $FF
    rst RST_38                                    ; $5403: $FF
    ld l, a                                       ; $5404: $6F
    ld e, e                                       ; $5405: $5B
    rst RST_38                                    ; $5406: $FF
    rst RST_38                                    ; $5407: $FF
    ld l, a                                       ; $5408: $6F
    ld d, l                                       ; $5409: $55
    rst RST_38                                    ; $540A: $FF
    rst RST_38                                    ; $540B: $FF
    sbc c                                         ; $540C: $99
    ld d, l                                       ; $540D: $55
    rst RST_38                                    ; $540E: $FF
    rst RST_38                                    ; $540F: $FF
    ld e, e                                       ; $5410: $5B
    ld d, l                                       ; $5411: $55
    rst RST_38                                    ; $5412: $FF
    rst RST_38                                    ; $5413: $FF
    sub l                                         ; $5414: $95
    ld d, h                                       ; $5415: $54
    rst RST_38                                    ; $5416: $FF
    rst RST_38                                    ; $5417: $FF
    ld sp, $FF55                                  ; $5418: $31 $55 $FF
    rst RST_38                                    ; $541B: $FF
    rst RST_38                                    ; $541C: $FF
    rst RST_38                                    ; $541D: $FF
    ld sp, $FF55                                  ; $541E: $31 $55 $FF
    rst RST_38                                    ; $5421: $FF
    ld h, l                                       ; $5422: $65
    ld d, l                                       ; $5423: $55
    rst RST_38                                    ; $5424: $FF
    rst RST_38                                    ; $5425: $FF
    and e                                         ; $5426: $A3
    ld d, l                                       ; $5427: $55
    rst RST_38                                    ; $5428: $FF
    rst RST_38                                    ; $5429: $FF
    ld a, c                                       ; $542A: $79
    ld d, l                                       ; $542B: $55
    rst RST_38                                    ; $542C: $FF
    rst RST_38                                    ; $542D: $FF
    or a                                          ; $542E: $B7
    ld d, l                                       ; $542F: $55
    rst RST_38                                    ; $5430: $FF
    rst RST_38                                    ; $5431: $FF
    ld h, l                                       ; $5432: $65
    ld d, l                                       ; $5433: $55
    rst RST_38                                    ; $5434: $FF
    rst RST_38                                    ; $5435: $FF
    and e                                         ; $5436: $A3
    ld d, l                                       ; $5437: $55
    rst RST_38                                    ; $5438: $FF
    rst RST_38                                    ; $5439: $FF
    ld a, c                                       ; $543A: $79
    ld d, l                                       ; $543B: $55
    rst RST_38                                    ; $543C: $FF
    rst RST_38                                    ; $543D: $FF
    or a                                          ; $543E: $B7
    ld d, l                                       ; $543F: $55
    rst RST_38                                    ; $5440: $FF
    rst RST_38                                    ; $5441: $FF
    ld sp, $FF55                                  ; $5442: $31 $55 $FF
    rst RST_38                                    ; $5445: $FF
    ld sp, $FF55                                  ; $5446: $31 $55 $FF
    rst RST_38                                    ; $5449: $FF
    rst RST_38                                    ; $544A: $FF
    rst RST_38                                    ; $544B: $FF
    nop                                           ; $544C: $00
    ld bc, $0000                                  ; $544D: $01 $00 $00
    ld b, b                                       ; $5450: $40
    dec d                                         ; $5451: $15
    ld d, [hl]                                    ; $5452: $56
    ld d, h                                       ; $5453: $54
    nop                                           ; $5454: $00
    nop                                           ; $5455: $00
    ld [$F330], sp                                ; $5456: $08 $30 $F3
    nop                                           ; $5459: $00
    jr nc, @-$03                                  ; $545A: $30 $FB

    ld [bc], a                                    ; $545C: $02
    jr nc, jr_00B_5462                            ; $545D: $30 $03

    inc b                                         ; $545F: $04
    ld l, $0B                                     ; $5460: $2E $0B

jr_00B_5462:
    ld b, $20                                     ; $5462: $06 $20
    di                                            ; $5464: $F3
    ld [$FB20], sp                                ; $5465: $08 $20 $FB
    ld a, [bc]                                    ; $5468: $0A
    jr nz, jr_00B_546E                            ; $5469: $20 $03

    inc c                                         ; $546B: $0C
    ld e, $0B                                     ; $546C: $1E $0B

jr_00B_546E:
    ld c, $00                                     ; $546E: $0E $00
    ld bc, $0000                                  ; $5470: $01 $00 $00
    ld b, c                                       ; $5473: $41
    dec d                                         ; $5474: $15
    ld a, c                                       ; $5475: $79
    ld d, h                                       ; $5476: $54
    nop                                           ; $5477: $00
    nop                                           ; $5478: $00
    add hl, bc                                    ; $5479: $09

jr_00B_547A:
    jr nc, @-$0B                                  ; $547A: $30 $F3

    nop                                           ; $547C: $00
    jr nc, jr_00B_547A                            ; $547D: $30 $FB

    ld [bc], a                                    ; $547F: $02
    jr nc, jr_00B_5485                            ; $5480: $30 $03

    inc b                                         ; $5482: $04
    jr nc, @+$0D                                  ; $5483: $30 $0B

jr_00B_5485:
    ld b, $20                                     ; $5485: $06 $20
    di                                            ; $5487: $F3
    ld [$FB20], sp                                ; $5488: $08 $20 $FB
    ld a, [bc]                                    ; $548B: $0A
    jr nz, jr_00B_5491                            ; $548C: $20 $03

    inc c                                         ; $548E: $0C
    jr nz, jr_00B_549C                            ; $548F: $20 $0B

jr_00B_5491:
    ld c, $10                                     ; $5491: $0E $10
    ei                                            ; $5493: $FB
    stop                                          ; $5494: $10 $00
    ld bc, $2000                                  ; $5496: $01 $00 $20
    ld b, d                                       ; $5499: $42
    dec d                                         ; $549A: $15
    xor c                                         ; $549B: $A9

jr_00B_549C:
    ld d, h                                       ; $549C: $54
    nop                                           ; $549D: $00
    nop                                           ; $549E: $00
    nop                                           ; $549F: $00
    ld bc, $2005                                  ; $54A0: $01 $05 $20
    ld b, d                                       ; $54A3: $42
    dec d                                         ; $54A4: $15
    xor c                                         ; $54A5: $A9
    ld d, h                                       ; $54A6: $54
    nop                                           ; $54A7: $00
    nop                                           ; $54A8: $00
    ld [$F31E], sp                                ; $54A9: $08 $1E $F3
    nop                                           ; $54AC: $00
    ld l, $FB                                     ; $54AD: $2E $FB
    ld [bc], a                                    ; $54AF: $02
    add hl, hl                                    ; $54B0: $29
    inc bc                                        ; $54B1: $03
    inc b                                         ; $54B2: $04
    ld e, $FB                                     ; $54B3: $1E $FB
    ld b, $19                                     ; $54B5: $06 $19
    nop                                           ; $54B7: $00
    ld [$0B24], sp                                ; $54B8: $08 $24 $0B
    ld a, [bc]                                    ; $54BB: $0A
    inc d                                         ; $54BC: $14
    dec bc                                        ; $54BD: $0B
    inc c                                         ; $54BE: $0C
    ld c, $F8                                     ; $54BF: $0E $F8
    ld c, $00                                     ; $54C1: $0E $00
    ld bc, $2000                                  ; $54C3: $01 $00 $20
    ld b, e                                       ; $54C6: $43
    dec d                                         ; $54C7: $15
    call z, Call_000_0054                         ; $54C8: $CC $54 $00
    nop                                           ; $54CB: $00
    add hl, bc                                    ; $54CC: $09
    inc l                                         ; $54CD: $2C
    ld sp, hl                                     ; $54CE: $F9
    nop                                           ; $54CF: $00
    inc l                                         ; $54D0: $2C
    ld bc, $2302                                  ; $54D1: $01 $02 $23
    add hl, bc                                    ; $54D4: $09
    inc b                                         ; $54D5: $04
    inc e                                         ; $54D6: $1C
    ld bc, $1C06                                  ; $54D7: $01 $06 $1C
    ld sp, hl                                     ; $54DA: $F9
    ld [$F11C], sp                                ; $54DB: $08 $1C $F1
    ld a, [bc]                                    ; $54DE: $0A
    inc c                                         ; $54DF: $0C
    rst RST_30                                    ; $54E0: $F7
    inc c                                         ; $54E1: $0C
    inc de                                        ; $54E2: $13
    add hl, bc                                    ; $54E3: $09
    ld c, $0A                                     ; $54E4: $0E $0A
    rst RST_38                                    ; $54E6: $FF
    stop                                          ; $54E7: $10 $00
    ld bc, $4000                                  ; $54E9: $01 $00 $40
    ld b, h                                       ; $54EC: $44
    dec d                                         ; $54ED: $15
    ldh a, [c]                                    ; $54EE: $F2
    ld d, h                                       ; $54EF: $54
    nop                                           ; $54F0: $00
    nop                                           ; $54F1: $00
    add hl, bc                                    ; $54F2: $09

jr_00B_54F3:
    jr nz, @-$0B                                  ; $54F3: $20 $F3

    nop                                           ; $54F5: $00
    jr z, jr_00B_54F3                             ; $54F6: $28 $FB

    ld [bc], a                                    ; $54F8: $02
    ld a, [hl+]                                   ; $54F9: $2A
    inc bc                                        ; $54FA: $03
    inc b                                         ; $54FB: $04
    dec hl                                        ; $54FC: $2B
    dec bc                                        ; $54FD: $0B
    ld b, $18                                     ; $54FE: $06 $18
    ei                                            ; $5500: $FB
    ld [$031A], sp                                ; $5501: $08 $1A $03
    ld a, [bc]                                    ; $5504: $0A
    dec de                                        ; $5505: $1B
    dec bc                                        ; $5506: $0B
    inc c                                         ; $5507: $0C
    db $10                                        ; $5508: $10
    di                                            ; $5509: $F3
    ld c, $35                                     ; $550A: $0E $35
    inc de                                        ; $550C: $13
    stop                                          ; $550D: $10 $00
    ld bc, $6000                                  ; $550F: $01 $00 $60
    ld b, l                                       ; $5512: $45
    dec d                                         ; $5513: $15
    jr jr_00B_556B                                ; $5514: $18 $55

    ld bc, $0800                                  ; $5516: $01 $00 $08
    dec h                                         ; $5519: $25
    xor $00                                       ; $551A: $EE $00
    dec h                                         ; $551C: $25
    or $02                                        ; $551D: $F6 $02
    dec h                                         ; $551F: $25
    cp $04                                        ; $5520: $FE $04
    ld h, $06                                     ; $5522: $26 $06
    ld b, $15                                     ; $5524: $06 $15
    pop af                                        ; $5526: $F1
    ld [$F915], sp                                ; $5527: $08 $15 $F9
    ld a, [bc]                                    ; $552A: $0A
    dec d                                         ; $552B: $15
    ld bc, $210C                                  ; $552C: $01 $0C $21
    dec bc                                        ; $552F: $0B
    ld c, $00                                     ; $5530: $0E $00
    rlca                                          ; $5532: $07
    nop                                           ; $5533: $00
    ld h, b                                       ; $5534: $60
    ld b, [hl]                                    ; $5535: $46
    dec d                                         ; $5536: $15
    ld b, l                                       ; $5537: $45
    ld d, l                                       ; $5538: $55
    nop                                           ; $5539: $00
    nop                                           ; $553A: $00
    jr nz, jr_00B_5544                            ; $553B: $20 $07

    nop                                           ; $553D: $00
    ld h, b                                       ; $553E: $60
    ld b, [hl]                                    ; $553F: $46
    dec d                                         ; $5540: $15
    ld b, l                                       ; $5541: $45
    ld d, l                                       ; $5542: $55
    nop                                           ; $5543: $00

jr_00B_5544:
    nop                                           ; $5544: $00

jr_00B_5545:
    rlca                                          ; $5545: $07
    jr nc, jr_00B_554F                            ; $5546: $30 $07

    nop                                           ; $5548: $00
    jr nc, @+$01                                  ; $5549: $30 $FF

    ld [bc], a                                    ; $554B: $02
    jr nc, jr_00B_5545                            ; $554C: $30 $F7

    inc b                                         ; $554E: $04

jr_00B_554F:
    add hl, hl                                    ; $554F: $29
    rst RST_28                                    ; $5550: $EF
    ld b, $20                                     ; $5551: $06 $20
    or $08                                        ; $5553: $F6 $08

jr_00B_5555:
    jr nz, jr_00B_5555                            ; $5555: $20 $FE

    ld a, [bc]                                    ; $5557: $0A
    ld a, [hl+]                                   ; $5558: $2A
    inc c                                         ; $5559: $0C
    inc c                                         ; $555A: $0C
    nop                                           ; $555B: $00
    ld [$4000], sp                                ; $555C: $08 $00 $40
    ld b, a                                       ; $555F: $47
    dec d                                         ; $5560: $15
    add e                                         ; $5561: $83
    ld d, l                                       ; $5562: $55
    nop                                           ; $5563: $00
    dec c                                         ; $5564: $0D
    nop                                           ; $5565: $00
    ld [$4007], sp                                ; $5566: $08 $07 $40
    ld b, a                                       ; $5569: $47
    dec d                                         ; $556A: $15

jr_00B_556B:
    add e                                         ; $556B: $83
    ld d, l                                       ; $556C: $55
    rst RST_38                                    ; $556D: $FF
    ld de, $0860                                  ; $556E: $11 $60 $08
    nop                                           ; $5571: $00
    ld b, b                                       ; $5572: $40
    ld b, a                                       ; $5573: $47
    dec d                                         ; $5574: $15
    add e                                         ; $5575: $83

jr_00B_5576:
    ld d, l                                       ; $5576: $55
    nop                                           ; $5577: $00
    db $ED                                        ; $5578: $ED
    ld h, b                                       ; $5579: $60
    ld [$4007], sp                                ; $557A: $08 $07 $40
    ld b, a                                       ; $557D: $47
    dec d                                         ; $557E: $15
    add e                                         ; $557F: $83
    ld d, l                                       ; $5580: $55

jr_00B_5581:
    inc bc                                        ; $5581: $03
    db $F4                                        ; $5582: $F4
    rlca                                          ; $5583: $07
    jr nz, jr_00B_5576                            ; $5584: $20 $F0

    nop                                           ; $5586: $00
    jr nz, jr_00B_5581                            ; $5587: $20 $F8

    ld [bc], a                                    ; $5589: $02
    jr nz, jr_00B_558C                            ; $558A: $20 $00

jr_00B_558C:
    inc b                                         ; $558C: $04
    db $10                                        ; $558D: $10
    rst RST_30                                    ; $558E: $F7
    ld b, $10                                     ; $558F: $06 $10
    rst RST_38                                    ; $5591: $FF
    ld [$0710], sp                                ; $5592: $08 $10 $07
    ld a, [bc]                                    ; $5595: $0A
    ld a, [de]                                    ; $5596: $1A
    ld [$000C], sp                                ; $5597: $08 $0C $00
    ld [$2000], sp                                ; $559A: $08 $00 $20
    ld c, b                                       ; $559D: $48
    dec d                                         ; $559E: $15
    pop bc                                        ; $559F: $C1
    ld d, l                                       ; $55A0: $55
    ld [$000F], sp                                ; $55A1: $08 $0F $00
    ld [$2007], sp                                ; $55A4: $08 $07 $20
    ld c, b                                       ; $55A7: $48
    dec d                                         ; $55A8: $15
    pop bc                                        ; $55A9: $C1
    ld d, l                                       ; $55AA: $55
    rlca                                          ; $55AB: $07
    inc de                                        ; $55AC: $13
    ld h, b                                       ; $55AD: $60
    ld [$2000], sp                                ; $55AE: $08 $00 $20
    ld c, b                                       ; $55B1: $48
    dec d                                         ; $55B2: $15
    pop bc                                        ; $55B3: $C1
    ld d, l                                       ; $55B4: $55
    ei                                            ; $55B5: $FB
    db $EB                                        ; $55B6: $EB
    ld h, b                                       ; $55B7: $60
    ld [$2007], sp                                ; $55B8: $08 $07 $20
    ld c, b                                       ; $55BB: $48
    dec d                                         ; $55BC: $15
    pop bc                                        ; $55BD: $C1
    ld d, l                                       ; $55BE: $55
    ei                                            ; $55BF: $FB
    pop af                                        ; $55C0: $F1
    rlca                                          ; $55C1: $07
    ld de, $00ED                                  ; $55C2: $11 $ED $00
    ld de, $02F5                                  ; $55C5: $11 $F5 $02
    ld de, $04FD                                  ; $55C8: $11 $FD $04
    ld hl, $06ED                                  ; $55CB: $21 $ED $06
    ld hl, $08F5                                  ; $55CE: $21 $F5 $08
    ld hl, $0AFD                                  ; $55D1: $21 $FD $0A
    ld a, [de]                                    ; $55D4: $1A
    dec b                                         ; $55D5: $05
    inc c                                         ; $55D6: $0C
    nop                                           ; $55D7: $00
    ld bc, $0000                                  ; $55D8: $01 $00 $00
    ld c, c                                       ; $55DB: $49
    dec d                                         ; $55DC: $15
    pop hl                                        ; $55DD: $E1
    ld d, l                                       ; $55DE: $55
    nop                                           ; $55DF: $00
    nop                                           ; $55E0: $00
    rlca                                          ; $55E1: $07
    jr nc, jr_00B_55ED                            ; $55E2: $30 $09

    nop                                           ; $55E4: $00
    jr nc, jr_00B_55E8                            ; $55E5: $30 $01

    ld [bc], a                                    ; $55E7: $02

jr_00B_55E8:
    jr nc, @-$05                                  ; $55E8: $30 $F9

    inc b                                         ; $55EA: $04
    jr nz, @+$03                                  ; $55EB: $20 $01

jr_00B_55ED:
    ld b, $20                                     ; $55ED: $06 $20
    ld sp, hl                                     ; $55EF: $F9
    ld [$F125], sp                                ; $55F0: $08 $25 $F1
    ld a, [bc]                                    ; $55F3: $0A
    jr nz, @+$0F                                  ; $55F4: $20 $0D

    inc c                                         ; $55F6: $0C
    nop                                           ; $55F7: $00
    rlca                                          ; $55F8: $07
    nop                                           ; $55F9: $00
    ldh [rOBP1], a                                ; $55FA: $E0 $49
    dec d                                         ; $55FC: $15
    ld bc, $0056                                  ; $55FD: $01 $56 $00
    nop                                           ; $5600: $00

jr_00B_5601:
    ld [$0730], sp                                ; $5601: $08 $30 $07
    nop                                           ; $5604: $00
    jr nc, @+$01                                  ; $5605: $30 $FF

    ld [bc], a                                    ; $5607: $02
    jr nc, jr_00B_5601                            ; $5608: $30 $F7

    inc b                                         ; $560A: $04
    ld a, [hl+]                                   ; $560B: $2A
    rst RST_28                                    ; $560C: $EF
    ld b, $21                                     ; $560D: $06 $21
    rst RST_20                                    ; $560F: $E7
    ld [$F420], sp                                ; $5610: $08 $20 $F4
    ld a, [bc]                                    ; $5613: $0A
    jr nz, @-$02                                  ; $5614: $20 $FC

    inc c                                         ; $5616: $0C
    jr nz, @+$06                                  ; $5617: $20 $04

    ld c, $00                                     ; $5619: $0E $00
    ld [$E000], sp                                ; $561B: $08 $00 $E0
    ld c, d                                       ; $561E: $4A

jr_00B_561F:
    dec d                                         ; $561F: $15
    inc h                                         ; $5620: $24
    ld d, [hl]                                    ; $5621: $56
    ld bc, $0709                                  ; $5622: $01 $09 $07
    ld hl, $0002                                  ; $5625: $21 $02 $00
    jr nz, @-$04                                  ; $5628: $20 $FA

    ld [bc], a                                    ; $562A: $02
    jr nz, jr_00B_561F                            ; $562B: $20 $F2

    inc b                                         ; $562D: $04
    ld de, $0600                                  ; $562E: $11 $00 $06
    db $10                                        ; $5631: $10
    ld hl, sp+$08                                 ; $5632: $F8 $08
    inc d                                         ; $5634: $14
    ldh a, [$FF0A]                                ; $5635: $F0 $0A
    jr nc, @-$04                                  ; $5637: $30 $FA

    inc c                                         ; $5639: $0C
    nop                                           ; $563A: $00
    ld bc, $6000                                  ; $563B: $01 $00 $60
    ld d, c                                       ; $563E: $51
    dec d                                         ; $563F: $15

jr_00B_5640:
    ld b, h                                       ; $5640: $44
    ld d, [hl]                                    ; $5641: $56
    nop                                           ; $5642: $00
    nop                                           ; $5643: $00
    add hl, bc                                    ; $5644: $09
    jr nc, jr_00B_5640                            ; $5645: $30 $F9

    nop                                           ; $5647: $00
    jr nc, jr_00B_564B                            ; $5648: $30 $01

    ld [bc], a                                    ; $564A: $02

jr_00B_564B:
    jr nc, jr_00B_5656                            ; $564B: $30 $09

    inc b                                         ; $564D: $04
    jr nz, @-$05                                  ; $564E: $20 $F9

    ld b, $26                                     ; $5650: $06 $26
    pop af                                        ; $5652: $F1
    ld [$E924], sp                                ; $5653: $08 $24 $E9

jr_00B_5656:
    ld a, [bc]                                    ; $5656: $0A
    ld d, $F1                                     ; $5657: $16 $F1
    inc c                                         ; $5659: $0C
    jr nz, @+$03                                  ; $565A: $20 $01

    ld c, $20                                     ; $565C: $0E $20
    add hl, bc                                    ; $565E: $09
    stop                                          ; $565F: $10 $00
    ld bc, $80E3                                  ; $5661: $01 $E3 $80
    ld d, d                                       ; $5664: $52
    dec d                                         ; $5665: $15
    ld l, d                                       ; $5666: $6A
    ld d, [hl]                                    ; $5667: $56
    nop                                           ; $5668: $00
    nop                                           ; $5669: $00
    add hl, bc                                    ; $566A: $09

jr_00B_566B:
    jr nc, @-$0B                                  ; $566B: $30 $F3

    nop                                           ; $566D: $00
    jr nc, jr_00B_566B                            ; $566E: $30 $FB

    ld [bc], a                                    ; $5670: $02
    jr nc, @+$05                                  ; $5671: $30 $03

    inc b                                         ; $5673: $04
    ld [hl+], a                                   ; $5674: $22
    ld [$2406], a                                 ; $5675: $EA $06 $24
    ldh [c], a                                    ; $5678: $E2

jr_00B_5679:
    ld [$F220], sp                                ; $5679: $08 $20 $F2
    ld a, [bc]                                    ; $567C: $0A
    jr nz, jr_00B_5679                            ; $567D: $20 $FA

    inc c                                         ; $567F: $0C
    jr nz, jr_00B_5684                            ; $5680: $20 $02

    ld c, $2B                                     ; $5682: $0E $2B

jr_00B_5684:
    ld a, [bc]                                    ; $5684: $0A
    stop                                          ; $5685: $10 $00
    ld bc, $A000                                  ; $5687: $01 $00 $A0
    ld d, e                                       ; $568A: $53
    dec d                                         ; $568B: $15
    sub b                                         ; $568C: $90
    ld d, [hl]                                    ; $568D: $56
    nop                                           ; $568E: $00
    nop                                           ; $568F: $00
    ld [$F630], sp                                ; $5690: $08 $30 $F6
    nop                                           ; $5693: $00

jr_00B_5694:
    jr nc, jr_00B_5694                            ; $5694: $30 $FE

    ld [bc], a                                    ; $5696: $02
    jr nc, jr_00B_569F                            ; $5697: $30 $06

    inc b                                         ; $5699: $04
    jr nz, @-$11                                  ; $569A: $20 $ED

    ld b, $20                                     ; $569C: $06 $20
    push af                                       ; $569E: $F5

jr_00B_569F:
    ld [$FD20], sp                                ; $569F: $08 $20 $FD
    ld a, [bc]                                    ; $56A2: $0A
    jr nz, jr_00B_56AA                            ; $56A3: $20 $05

    inc c                                         ; $56A5: $0C
    jr nz, @+$0F                                  ; $56A6: $20 $0D

    ld c, $00                                     ; $56A8: $0E $00

jr_00B_56AA:
    ld bc, $A0E4                                  ; $56AA: $01 $E4 $A0
    ld d, h                                       ; $56AD: $54
    dec d                                         ; $56AE: $15
    or e                                          ; $56AF: $B3
    ld d, [hl]                                    ; $56B0: $56
    nop                                           ; $56B1: $00

jr_00B_56B2:
    nop                                           ; $56B2: $00
    ld a, [bc]                                    ; $56B3: $0A
    jr nc, jr_00B_56B2                            ; $56B4: $30 $FC

    nop                                           ; $56B6: $00
    jr nc, jr_00B_56BD                            ; $56B7: $30 $04

    ld [bc], a                                    ; $56B9: $02
    inc hl                                        ; $56BA: $23
    db $F4                                        ; $56BB: $F4
    inc b                                         ; $56BC: $04

jr_00B_56BD:
    inc hl                                        ; $56BD: $23
    db $EC                                        ; $56BE: $EC
    ld b, $23                                     ; $56BF: $06 $23
    db $E4                                        ; $56C1: $E4
    ld [$FC20], sp                                ; $56C2: $08 $20 $FC
    ld a, [bc]                                    ; $56C5: $0A

jr_00B_56C6:
    jr nz, @+$06                                  ; $56C6: $20 $04

    inc c                                         ; $56C8: $0C
    jr nz, jr_00B_56D7                            ; $56C9: $20 $0C

    ld c, $13                                     ; $56CB: $0E $13
    db $F4                                        ; $56CD: $F4
    db $10                                        ; $56CE: $10
    db $10                                        ; $56CF: $10
    db $FC                                        ; $56D0: $FC

jr_00B_56D1:
    ld [de], a                                    ; $56D1: $12
    nop                                           ; $56D2: $00
    ld bc, $E000                                  ; $56D3: $01 $00 $E0
    ld d, l                                       ; $56D6: $55

jr_00B_56D7:
    dec d                                         ; $56D7: $15
    call c, Call_000_0056                         ; $56D8: $DC $56 $00
    nop                                           ; $56DB: $00

jr_00B_56DC:
    ld a, [bc]                                    ; $56DC: $0A
    jr nc, jr_00B_56C6                            ; $56DD: $30 $E7

    nop                                           ; $56DF: $00
    jr nc, jr_00B_56D1                            ; $56E0: $30 $EF

    ld [bc], a                                    ; $56E2: $02
    jr nc, jr_00B_56DC                            ; $56E3: $30 $F7

    inc b                                         ; $56E5: $04
    jr nc, @+$01                                  ; $56E6: $30 $FF

    ld b, $30                                     ; $56E8: $06 $30
    rlca                                          ; $56EA: $07
    ld [$EB20], sp                                ; $56EB: $08 $20 $EB
    ld a, [bc]                                    ; $56EE: $0A

jr_00B_56EF:
    jr nz, @-$0B                                  ; $56EF: $20 $F3

    inc c                                         ; $56F1: $0C
    jr nz, jr_00B_56EF                            ; $56F2: $20 $FB

    ld c, $20                                     ; $56F4: $0E $20
    inc bc                                        ; $56F6: $03
    db $10                                        ; $56F7: $10
    jr nz, jr_00B_5705                            ; $56F8: $20 $0B

    ld [de], a                                    ; $56FA: $12
    nop                                           ; $56FB: $00
    ld bc, $20E7                                  ; $56FC: $01 $E7 $20
    ld d, a                                       ; $56FF: $57
    dec d                                         ; $5700: $15
    dec b                                         ; $5701: $05
    ld d, a                                       ; $5702: $57
    nop                                           ; $5703: $00
    nop                                           ; $5704: $00

jr_00B_5705:
    rrca                                          ; $5705: $0F
    inc l                                         ; $5706: $2C
    and $00                                       ; $5707: $E6 $00
    inc e                                         ; $5709: $1C
    and $02                                       ; $570A: $E6 $02
    inc l                                         ; $570C: $2C
    xor $04                                       ; $570D: $EE $04
    inc e                                         ; $570F: $1C

jr_00B_5710:
    xor $06                                       ; $5710: $EE $06
    inc c                                         ; $5712: $0C

jr_00B_5713:
    and $08                                       ; $5713: $E6 $08
    inc c                                         ; $5715: $0C
    xor $0A                                       ; $5716: $EE $0A
    jr nz, jr_00B_5710                            ; $5718: $20 $F6

    inc c                                         ; $571A: $0C
    jr nc, jr_00B_5713                            ; $571B: $30 $F6

    ld c, $30                                     ; $571D: $0E $30
    cp $10                                        ; $571F: $FE $10

jr_00B_5721:
    jr nz, jr_00B_5721                            ; $5721: $20 $FE

    ld [de], a                                    ; $5723: $12
    add hl, hl                                    ; $5724: $29
    ld b, $14                                     ; $5725: $06 $14
    db $10                                        ; $5727: $10
    or $16                                        ; $5728: $F6 $16
    db $10                                        ; $572A: $10
    cp $18                                        ; $572B: $FE $18
    add hl, de                                    ; $572D: $19
    ld b, $1A                                     ; $572E: $06 $1A
    add hl, hl                                    ; $5730: $29
    ld c, $1C                                     ; $5731: $0E $1C
    nop                                           ; $5733: $00
    ld bc, $00E7                                  ; $5734: $01 $E7 $00
    ld e, c                                       ; $5737: $59
    dec d                                         ; $5738: $15
    ld b, a                                       ; $5739: $47
    ld d, a                                       ; $573A: $57
    nop                                           ; $573B: $00
    nop                                           ; $573C: $00
    ld h, b                                       ; $573D: $60
    ld bc, $0005                                  ; $573E: $01 $05 $00
    ld e, c                                       ; $5741: $59
    dec d                                         ; $5742: $15
    ld b, a                                       ; $5743: $47
    ld d, a                                       ; $5744: $57

jr_00B_5745:
    nop                                           ; $5745: $00
    nop                                           ; $5746: $00
    add hl, bc                                    ; $5747: $09
    jr nc, @-$09                                  ; $5748: $30 $F5

jr_00B_574A:
    nop                                           ; $574A: $00
    jr nc, jr_00B_574A                            ; $574B: $30 $FD

    ld [bc], a                                    ; $574D: $02
    jr nz, jr_00B_5745                            ; $574E: $20 $F5

jr_00B_5750:
    inc b                                         ; $5750: $04
    jr nz, jr_00B_5750                            ; $5751: $20 $FD

    ld b, $10                                     ; $5753: $06 $10
    push af                                       ; $5755: $F5
    ld [$FD10], sp                                ; $5756: $08 $10 $FD
    ld a, [bc]                                    ; $5759: $0A
    ld a, [hl+]                                   ; $575A: $2A
    dec b                                         ; $575B: $05
    inc c                                         ; $575C: $0C
    ld a, [de]                                    ; $575D: $1A
    dec b                                         ; $575E: $05
    ld c, $2D                                     ; $575F: $0E $2D
    dec c                                         ; $5761: $0D
    stop                                          ; $5762: $10 $00
    rlca                                          ; $5764: $07
    nop                                           ; $5765: $00
    jr nz, @+$5C                                  ; $5766: $20 $5A

    dec d                                         ; $5768: $15
    ld l, l                                       ; $5769: $6D
    ld d, a                                       ; $576A: $57
    nop                                           ; $576B: $00

jr_00B_576C:
    nop                                           ; $576C: $00
    ld [$0630], sp                                ; $576D: $08 $30 $06

jr_00B_5770:
    nop                                           ; $5770: $00

jr_00B_5771:
    jr nc, jr_00B_5771                            ; $5771: $30 $FE

    ld [bc], a                                    ; $5773: $02
    jr nc, jr_00B_576C                            ; $5774: $30 $F6

    inc b                                         ; $5776: $04
    daa                                           ; $5777: $27
    xor $06                                       ; $5778: $EE $06
    jr nz, jr_00B_5770                            ; $577A: $20 $F4

    ld [$FC20], sp                                ; $577C: $08 $20 $FC
    ld a, [bc]                                    ; $577F: $0A
    jr nz, jr_00B_578C                            ; $5780: $20 $0A

    inc c                                         ; $5782: $0C
    rra                                           ; $5783: $1F
    and $0E                                       ; $5784: $E6 $0E
    nop                                           ; $5786: $00
    rlca                                          ; $5787: $07
    push hl                                       ; $5788: $E5
    jr nz, jr_00B_57E6                            ; $5789: $20 $5B

    dec d                                         ; $578B: $15

jr_00B_578C:
    sub b                                         ; $578C: $90
    ld d, a                                       ; $578D: $57
    nop                                           ; $578E: $00

jr_00B_578F:
    nop                                           ; $578F: $00
    add hl, bc                                    ; $5790: $09
    jr nc, jr_00B_5799                            ; $5791: $30 $06

    nop                                           ; $5793: $00

jr_00B_5794:
    jr nc, jr_00B_5794                            ; $5794: $30 $FE

    ld [bc], a                                    ; $5796: $02
    jr nc, jr_00B_578F                            ; $5797: $30 $F6

jr_00B_5799:
    inc b                                         ; $5799: $04
    inc h                                         ; $579A: $24

jr_00B_579B:
    xor $06                                       ; $579B: $EE $06
    daa                                           ; $579D: $27
    and $08                                       ; $579E: $E6 $08
    cpl                                           ; $57A0: $2F
    sbc $0A                                       ; $57A1: $DE $0A
    jr nz, jr_00B_579B                            ; $57A3: $20 $F6

    inc c                                         ; $57A5: $0C

jr_00B_57A6:
    jr nz, jr_00B_57A6                            ; $57A6: $20 $FE

    ld c, $20                                     ; $57A8: $0E $20
    ld a, [bc]                                    ; $57AA: $0A
    stop                                          ; $57AB: $10 $00
    rlca                                          ; $57AD: $07
    push hl                                       ; $57AE: $E5
    ld b, b                                       ; $57AF: $40
    ld e, h                                       ; $57B0: $5C

jr_00B_57B1:
    dec d                                         ; $57B1: $15
    or [hl]                                       ; $57B2: $B6
    ld d, a                                       ; $57B3: $57
    ld [$0900], sp                                ; $57B4: $08 $00 $09
    jr nc, @+$04                                  ; $57B7: $30 $02

    nop                                           ; $57B9: $00
    jr nc, @-$04                                  ; $57BA: $30 $FA

    ld [bc], a                                    ; $57BC: $02
    jr nc, jr_00B_57B1                            ; $57BD: $30 $F2

    inc b                                         ; $57BF: $04
    dec hl                                        ; $57C0: $2B
    ld [$2D06], a                                 ; $57C1: $EA $06 $2D
    ldh [c], a                                    ; $57C4: $E2
    ld [$DA28], sp                                ; $57C5: $08 $28 $DA
    ld a, [bc]                                    ; $57C8: $0A
    jr nz, @-$11                                  ; $57C9: $20 $ED

    inc c                                         ; $57CB: $0C
    jr nz, @-$09                                  ; $57CC: $20 $F5

    ld c, $20                                     ; $57CE: $0E $20
    rst RST_38                                    ; $57D0: $FF
    stop                                          ; $57D1: $10 $00
    rlca                                          ; $57D3: $07
    nop                                           ; $57D4: $00
    ld h, b                                       ; $57D5: $60
    ld e, l                                       ; $57D6: $5D
    dec d                                         ; $57D7: $15
    call c, Call_000_0057                         ; $57D8: $DC $57 $00
    nop                                           ; $57DB: $00

jr_00B_57DC:
    add hl, bc                                    ; $57DC: $09
    ld l, $07                                     ; $57DD: $2E $07
    nop                                           ; $57DF: $00
    jr nc, @+$01                                  ; $57E0: $30 $FF

    ld [bc], a                                    ; $57E2: $02
    jr nc, jr_00B_57DC                            ; $57E3: $30 $F7

    inc b                                         ; $57E5: $04

jr_00B_57E6:
    jr nz, @+$01                                  ; $57E6: $20 $FF

    ld b, $20                                     ; $57E8: $06 $20
    rst RST_30                                    ; $57EA: $F7
    ld [$EF29], sp                                ; $57EB: $08 $29 $EF
    ld a, [bc]                                    ; $57EE: $0A
    add hl, hl                                    ; $57EF: $29
    rst RST_20                                    ; $57F0: $E7
    inc c                                         ; $57F1: $0C
    add hl, de                                    ; $57F2: $19
    rst RST_28                                    ; $57F3: $EF
    ld c, $19                                     ; $57F4: $0E $19
    rst RST_20                                    ; $57F6: $E7
    stop                                          ; $57F7: $10 $00
    rlca                                          ; $57F9: $07
    nop                                           ; $57FA: $00
    add b                                         ; $57FB: $80

jr_00B_57FC:
    ld e, [hl]                                    ; $57FC: $5E
    dec d                                         ; $57FD: $15
    ld [bc], a                                    ; $57FE: $02
    ld e, b                                       ; $57FF: $58
    nop                                           ; $5800: $00
    nop                                           ; $5801: $00
    ld [$EC30], sp                                ; $5802: $08 $30 $EC
    nop                                           ; $5805: $00
    jr nc, jr_00B_57FC                            ; $5806: $30 $F4

    ld [bc], a                                    ; $5808: $02
    jr nc, @-$02                                  ; $5809: $30 $FC

    inc b                                         ; $580B: $04
    jr nc, @+$06                                  ; $580C: $30 $04

    ld b, $20                                     ; $580E: $06 $20
    di                                            ; $5810: $F3
    ld [$FB20], sp                                ; $5811: $08 $20 $FB
    ld a, [bc]                                    ; $5814: $0A
    jr nz, jr_00B_581A                            ; $5815: $20 $03

    inc c                                         ; $5817: $0C
    daa                                           ; $5818: $27
    inc c                                         ; $5819: $0C

jr_00B_581A:
    ld c, $00                                     ; $581A: $0E $00
    rlca                                          ; $581C: $07
    and $80                                       ; $581D: $E6 $80
    ld e, a                                       ; $581F: $5F
    dec d                                         ; $5820: $15
    dec h                                         ; $5821: $25

jr_00B_5822:
    ld e, b                                       ; $5822: $58
    nop                                           ; $5823: $00
    nop                                           ; $5824: $00
    ld a, [bc]                                    ; $5825: $0A
    jr nc, jr_00B_582C                            ; $5826: $30 $04

    nop                                           ; $5828: $00
    jr nc, @-$02                                  ; $5829: $30 $FC

    ld [bc], a                                    ; $582B: $02

jr_00B_582C:
    jr nc, jr_00B_5822                            ; $582C: $30 $F4

    inc b                                         ; $582E: $04
    jr nz, jr_00B_583D                            ; $582F: $20 $0C

    ld b, $20                                     ; $5831: $06 $20
    inc b                                         ; $5833: $04
    ld [$FC20], sp                                ; $5834: $08 $20 $FC
    ld a, [bc]                                    ; $5837: $0A
    dec hl                                        ; $5838: $2B
    db $EC                                        ; $5839: $EC
    inc c                                         ; $583A: $0C
    inc sp                                        ; $583B: $33
    db $E4                                        ; $583C: $E4

jr_00B_583D:
    ld c, $28                                     ; $583D: $0E $28
    call c, $2010                                 ; $583F: $DC $10 $20
    db $F4                                        ; $5842: $F4
    ld [de], a                                    ; $5843: $12
    nop                                           ; $5844: $00
    rlca                                          ; $5845: $07
    and $C0                                       ; $5846: $E6 $C0

jr_00B_5848:
    ld h, b                                       ; $5848: $60
    dec d                                         ; $5849: $15
    ld c, [hl]                                    ; $584A: $4E

jr_00B_584B:
    ld e, b                                       ; $584B: $58
    nop                                           ; $584C: $00
    nop                                           ; $584D: $00
    ld a, [bc]                                    ; $584E: $0A
    jr nc, jr_00B_5855                            ; $584F: $30 $04

jr_00B_5851:
    nop                                           ; $5851: $00
    jr nc, @-$02                                  ; $5852: $30 $FC

    ld [bc], a                                    ; $5854: $02

jr_00B_5855:
    jr nc, jr_00B_584B                            ; $5855: $30 $F4

    inc b                                         ; $5857: $04
    jr nz, jr_00B_5851                            ; $5858: $20 $F7

    ld b, $20                                     ; $585A: $06 $20
    rst RST_38                                    ; $585C: $FF
    ld [$0720], sp                                ; $585D: $08 $20 $07
    ld a, [bc]                                    ; $5860: $0A
    dec de                                        ; $5861: $1B
    rrca                                          ; $5862: $0F
    inc c                                         ; $5863: $0C
    dec hl                                        ; $5864: $2B
    db $EC                                        ; $5865: $EC
    ld c, $34                                     ; $5866: $0E $34
    db $E4                                        ; $5868: $E4
    db $10                                        ; $5869: $10
    jr z, jr_00B_5848                             ; $586A: $28 $DC

    ld [de], a                                    ; $586C: $12
    nop                                           ; $586D: $00
    ld [$0002], sp                                ; $586E: $08 $02 $00
    ld h, d                                       ; $5871: $62
    dec d                                         ; $5872: $15
    add c                                         ; $5873: $81
    ld e, b                                       ; $5874: $58
    dec b                                         ; $5875: $05
    add hl, bc                                    ; $5876: $09
    nop                                           ; $5877: $00
    ld bc, $0005                                  ; $5878: $01 $05 $00
    ld h, d                                       ; $587B: $62
    dec d                                         ; $587C: $15
    add c                                         ; $587D: $81
    ld e, b                                       ; $587E: $58
    dec b                                         ; $587F: $05
    add hl, bc                                    ; $5880: $09
    ld a, [bc]                                    ; $5881: $0A
    inc h                                         ; $5882: $24
    push hl                                       ; $5883: $E5
    nop                                           ; $5884: $00
    ld a, [de]                                    ; $5885: $1A
    db $ED                                        ; $5886: $ED
    ld [bc], a                                    ; $5887: $02
    inc hl                                        ; $5888: $23
    push af                                       ; $5889: $F5
    inc b                                         ; $588A: $04
    inc hl                                        ; $588B: $23
    db $FD                                        ; $588C: $FD
    ld b, $0A                                     ; $588D: $06 $0A

jr_00B_588F:
    db $ED                                        ; $588F: $ED
    ld [$F513], sp                                ; $5890: $08 $13 $F5
    ld a, [bc]                                    ; $5893: $0A
    inc de                                        ; $5894: $13
    db $FD                                        ; $5895: $FD
    inc c                                         ; $5896: $0C
    dec de                                        ; $5897: $1B
    dec b                                         ; $5898: $05
    ld c, $14                                     ; $5899: $0E $14
    dec c                                         ; $589B: $0D
    db $10                                        ; $589C: $10
    ld [$12FA], sp                                ; $589D: $08 $FA $12
    nop                                           ; $58A0: $00
    ld bc, $4000                                  ; $58A1: $01 $00 $40
    ld h, e                                       ; $58A4: $63
    dec d                                         ; $58A5: $15
    xor d                                         ; $58A6: $AA
    ld e, b                                       ; $58A7: $58
    ld b, $00                                     ; $58A8: $06 $00
    rlca                                          ; $58AA: $07
    jr z, jr_00B_588F                             ; $58AB: $28 $E2

    nop                                           ; $58AD: $00
    jr z, @-$14                                   ; $58AE: $28 $EA

    ld [bc], a                                    ; $58B0: $02
    dec hl                                        ; $58B1: $2B
    ldh a, [c]                                    ; $58B2: $F2
    inc b                                         ; $58B3: $04
    ld l, $FA                                     ; $58B4: $2E $FA
    ld b, $2F                                     ; $58B6: $06 $2F
    ld [bc], a                                    ; $58B8: $02
    ld [$0A2F], sp                                ; $58B9: $08 $2F $0A
    ld a, [bc]                                    ; $58BC: $0A
    ld e, $F3                                     ; $58BD: $1E $F3
    inc c                                         ; $58BF: $0C
    nop                                           ; $58C0: $00
    ld bc, $2000                                  ; $58C1: $01 $00 $20
    ld h, h                                       ; $58C4: $64
    dec d                                         ; $58C5: $15
    jp z, Jump_000_0358                           ; $58C6: $CA $58 $03

    nop                                           ; $58C9: $00
    ld [$F430], sp                                ; $58CA: $08 $30 $F4
    nop                                           ; $58CD: $00
    jr nc, @-$02                                  ; $58CE: $30 $FC

    ld [bc], a                                    ; $58D0: $02
    jr nz, @-$0A                                  ; $58D1: $20 $F4

    inc b                                         ; $58D3: $04
    jr nz, @-$02                                  ; $58D4: $20 $FC

    ld b, $1F                                     ; $58D6: $06 $1F
    inc b                                         ; $58D8: $04
    ld [$042F], sp                                ; $58D9: $08 $2F $04
    ld a, [bc]                                    ; $58DC: $0A
    ld h, $0C                                     ; $58DD: $26 $0C
    inc c                                         ; $58DF: $0C
    db $10                                        ; $58E0: $10
    db $FC                                        ; $58E1: $FC
    ld c, $00                                     ; $58E2: $0E $00

jr_00B_58E4:
    ld bc, $2000                                  ; $58E4: $01 $00 $20
    ld h, l                                       ; $58E7: $65
    dec d                                         ; $58E8: $15
    db $ED                                        ; $58E9: $ED
    ld e, b                                       ; $58EA: $58
    inc bc                                        ; $58EB: $03

jr_00B_58EC:
    nop                                           ; $58EC: $00
    add hl, bc                                    ; $58ED: $09
    jr nc, jr_00B_58E4                            ; $58EE: $30 $F4

    nop                                           ; $58F0: $00
    jr nc, @-$02                                  ; $58F1: $30 $FC

    ld [bc], a                                    ; $58F3: $02

jr_00B_58F4:
    cpl                                           ; $58F4: $2F
    inc b                                         ; $58F5: $04
    inc b                                         ; $58F6: $04
    jr nz, jr_00B_58EC                            ; $58F7: $20 $F3

    ld b, $20                                     ; $58F9: $06 $20
    ei                                            ; $58FB: $FB
    ld [$0320], sp                                ; $58FC: $08 $20 $03

jr_00B_58FF:
    ld a, [bc]                                    ; $58FF: $0A
    add hl, hl                                    ; $5900: $29
    inc c                                         ; $5901: $0C
    inc c                                         ; $5902: $0C
    db $10                                        ; $5903: $10
    ei                                            ; $5904: $FB
    ld c, $10                                     ; $5905: $0E $10
    inc bc                                        ; $5907: $03
    stop                                          ; $5908: $10 $00

jr_00B_590A:
    ld bc, $C000                                  ; $590A: $01 $00 $C0
    ld l, c                                       ; $590D: $69
    dec d                                         ; $590E: $15
    inc de                                        ; $590F: $13
    ld e, c                                       ; $5910: $59
    ld c, $00                                     ; $5911: $0E $00
    inc c                                         ; $5913: $0C
    jr nc, jr_00B_58F4                            ; $5914: $30 $DE

    nop                                           ; $5916: $00

jr_00B_5917:
    jr nc, jr_00B_58FF                            ; $5917: $30 $E6

    ld [bc], a                                    ; $5919: $02
    jr nc, jr_00B_590A                            ; $591A: $30 $EE

    inc b                                         ; $591C: $04
    jr nc, @-$08                                  ; $591D: $30 $F6

    ld b, $30                                     ; $591F: $06 $30
    cp $08                                        ; $5921: $FE $08
    jr nc, jr_00B_592B                            ; $5923: $30 $06

    ld a, [bc]                                    ; $5925: $0A
    ld h, $0E                                     ; $5926: $26 $0E
    inc c                                         ; $5928: $0C
    jr nz, jr_00B_5917                            ; $5929: $20 $EC

jr_00B_592B:
    ld c, $20                                     ; $592B: $0E $20

jr_00B_592D:
    db $F4                                        ; $592D: $F4
    db $10                                        ; $592E: $10
    jr nz, jr_00B_592D                            ; $592F: $20 $FC

jr_00B_5931:
    ld [de], a                                    ; $5931: $12
    jr nz, @+$06                                  ; $5932: $20 $04

    inc d                                         ; $5934: $14
    db $10                                        ; $5935: $10
    db $F4                                        ; $5936: $F4
    ld d, $00                                     ; $5937: $16 $00
    ld bc, $4000                                  ; $5939: $01 $00 $40

jr_00B_593C:
    ld l, e                                       ; $593C: $6B
    dec d                                         ; $593D: $15

jr_00B_593E:
    ld b, d                                       ; $593E: $42
    ld e, c                                       ; $593F: $59
    ld c, $00                                     ; $5940: $0E $00
    rlca                                          ; $5942: $07
    jr nc, jr_00B_5931                            ; $5943: $30 $EC

    nop                                           ; $5945: $00
    jr nc, jr_00B_593C                            ; $5946: $30 $F4

    ld [bc], a                                    ; $5948: $02
    jr nc, @-$02                                  ; $5949: $30 $FC

    inc b                                         ; $594B: $04
    jr nz, jr_00B_593E                            ; $594C: $20 $F0

    ld b, $20                                     ; $594E: $06 $20
    ld hl, sp+$08                                 ; $5950: $F8 $08
    jr nz, jr_00B_5954                            ; $5952: $20 $00

jr_00B_5954:
    ld a, [bc]                                    ; $5954: $0A
    db $10                                        ; $5955: $10
    di                                            ; $5956: $F3
    inc c                                         ; $5957: $0C
    nop                                           ; $5958: $00
    ld bc, $4000                                  ; $5959: $01 $00 $40
    ld h, [hl]                                    ; $595C: $66
    dec d                                         ; $595D: $15
    ld h, d                                       ; $595E: $62
    ld e, c                                       ; $595F: $59
    inc bc                                        ; $5960: $03
    nop                                           ; $5961: $00
    add hl, bc                                    ; $5962: $09
    rrca                                          ; $5963: $0F
    push af                                       ; $5964: $F5
    nop                                           ; $5965: $00
    rra                                           ; $5966: $1F
    push af                                       ; $5967: $F5
    ld [bc], a                                    ; $5968: $02
    cpl                                           ; $5969: $2F
    push af                                       ; $596A: $F5
    inc b                                         ; $596B: $04
    inc de                                        ; $596C: $13
    db $FD                                        ; $596D: $FD
    ld b, $23                                     ; $596E: $06 $23
    db $FD                                        ; $5970: $FD
    ld [$FD33], sp                                ; $5971: $08 $33 $FD
    ld a, [bc]                                    ; $5974: $0A
    jr c, jr_00B_597C                             ; $5975: $38 $05

    inc c                                         ; $5977: $0C
    ccf                                           ; $5978: $3F
    push af                                       ; $5979: $F5
    ld c, $13                                     ; $597A: $0E $13

jr_00B_597C:
    dec b                                         ; $597C: $05
    stop                                          ; $597D: $10 $00
    ld bc, $6000                                  ; $597F: $01 $00 $60
    ld h, a                                       ; $5982: $67
    dec d                                         ; $5983: $15
    adc b                                         ; $5984: $88
    ld e, c                                       ; $5985: $59
    inc bc                                        ; $5986: $03
    nop                                           ; $5987: $00
    ld a, [bc]                                    ; $5988: $0A
    jr nz, jr_00B_597C                            ; $5989: $20 $F1

    nop                                           ; $598B: $00
    daa                                           ; $598C: $27
    ld sp, hl                                     ; $598D: $F9
    ld [bc], a                                    ; $598E: $02
    inc l                                         ; $598F: $2C
    ld bc, $2504                                  ; $5990: $01 $04 $25
    pop hl                                        ; $5993: $E1
    ld b, $25                                     ; $5994: $06 $25
    jp hl                                         ; $5996: $E9


    ld [$F130], sp                                ; $5997: $08 $30 $F1
    ld a, [bc]                                    ; $599A: $0A
    scf                                           ; $599B: $37
    ld sp, hl                                     ; $599C: $F9
    inc c                                         ; $599D: $0C
    inc a                                         ; $599E: $3C
    ld bc, $2B0E                                  ; $599F: $01 $0E $2B
    add hl, bc                                    ; $59A2: $09
    db $10                                        ; $59A3: $10
    dec d                                         ; $59A4: $15
    jp hl                                         ; $59A5: $E9


    ld [de], a                                    ; $59A6: $12
    nop                                           ; $59A7: $00
    ld bc, $A000                                  ; $59A8: $01 $00 $A0
    ld l, b                                       ; $59AB: $68
    dec d                                         ; $59AC: $15
    or c                                          ; $59AD: $B1
    ld e, c                                       ; $59AE: $59
    inc bc                                        ; $59AF: $03
    nop                                           ; $59B0: $00
    add hl, bc                                    ; $59B1: $09
    ld hl, $00F0                                  ; $59B2: $21 $F0 $00
    daa                                           ; $59B5: $27
    ld hl, sp+$02                                 ; $59B6: $F8 $02
    dec hl                                        ; $59B8: $2B
    nop                                           ; $59B9: $00
    inc b                                         ; $59BA: $04
    inc h                                         ; $59BB: $24
    ldh [rTMA], a                                 ; $59BC: $E0 $06
    inc h                                         ; $59BE: $24
    add sp, $08                                   ; $59BF: $E8 $08
    ld sp, $0AF1                                  ; $59C1: $31 $F1 $0A
    scf                                           ; $59C4: $37
    ld sp, hl                                     ; $59C5: $F9
    inc c                                         ; $59C6: $0C
    dec sp                                        ; $59C7: $3B
    ld bc, $2B0E                                  ; $59C8: $01 $0E $2B
    ld [$0010], sp                                ; $59CB: $08 $10 $00
    ld bc, $C000                                  ; $59CE: $01 $00 $C0
    ld c, e                                       ; $59D1: $4B
    dec d                                         ; $59D2: $15
    rst RST_10                                    ; $59D3: $D7
    ld e, c                                       ; $59D4: $59
    nop                                           ; $59D5: $00
    nop                                           ; $59D6: $00
    ld a, [bc]                                    ; $59D7: $0A
    ld sp, $00F9                                  ; $59D8: $31 $F9 $00
    ld sp, $0201                                  ; $59DB: $31 $01 $02
    ld h, $F1                                     ; $59DE: $26 $F1
    inc b                                         ; $59E0: $04
    dec h                                         ; $59E1: $25
    db $EC                                        ; $59E2: $EC
    ld b, $21                                     ; $59E3: $06 $21
    ld sp, hl                                     ; $59E5: $F9
    ld [$0121], sp                                ; $59E6: $08 $21 $01
    ld a, [bc]                                    ; $59E9: $0A
    cpl                                           ; $59EA: $2F
    add hl, bc                                    ; $59EB: $09
    inc c                                         ; $59EC: $0C
    ld [hl+], a                                   ; $59ED: $22
    ld de, $110E                                  ; $59EE: $11 $0E $11
    nop                                           ; $59F1: $00
    db $10                                        ; $59F2: $10
    jr jr_00B_59FE                                ; $59F3: $18 $09

    ld [de], a                                    ; $59F5: $12
    nop                                           ; $59F6: $00
    ld bc, $0000                                  ; $59F7: $01 $00 $00
    ld c, l                                       ; $59FA: $4D
    dec d                                         ; $59FB: $15
    jr z, @+$5C                                   ; $59FC: $28 $5A

jr_00B_59FE:
    nop                                           ; $59FE: $00
    nop                                           ; $59FF: $00
    jr nz, jr_00B_5A03                            ; $5A00: $20 $01

    nop                                           ; $5A02: $00

jr_00B_5A03:
    nop                                           ; $5A03: $00
    ld c, l                                       ; $5A04: $4D
    dec d                                         ; $5A05: $15
    jr z, jr_00B_5A62                             ; $5A06: $28 $5A

    nop                                           ; $5A08: $00
    nop                                           ; $5A09: $00
    ld b, b                                       ; $5A0A: $40
    ld bc, $0000                                  ; $5A0B: $01 $00 $00
    ld c, l                                       ; $5A0E: $4D
    dec d                                         ; $5A0F: $15
    jr z, jr_00B_5A6C                             ; $5A10: $28 $5A

    nop                                           ; $5A12: $00
    nop                                           ; $5A13: $00
    ld h, b                                       ; $5A14: $60
    ld bc, $0000                                  ; $5A15: $01 $00 $00
    ld c, l                                       ; $5A18: $4D
    dec d                                         ; $5A19: $15
    jr z, jr_00B_5A76                             ; $5A1A: $28 $5A

    nop                                           ; $5A1C: $00
    nop                                           ; $5A1D: $00
    ld h, b                                       ; $5A1E: $60
    ld bc, $0005                                  ; $5A1F: $01 $05 $00
    ld c, l                                       ; $5A22: $4D
    dec d                                         ; $5A23: $15
    jr z, jr_00B_5A80                             ; $5A24: $28 $5A

jr_00B_5A26:
    nop                                           ; $5A26: $00
    nop                                           ; $5A27: $00
    ld [$0530], sp                                ; $5A28: $08 $30 $05

jr_00B_5A2B:
    nop                                           ; $5A2B: $00
    jr nc, jr_00B_5A2B                            ; $5A2C: $30 $FD

    ld [bc], a                                    ; $5A2E: $02
    jr nc, jr_00B_5A26                            ; $5A2F: $30 $F5

    inc b                                         ; $5A31: $04
    jr nz, jr_00B_5A37                            ; $5A32: $20 $03

    ld b, $20                                     ; $5A34: $06 $20
    ei                                            ; $5A36: $FB

jr_00B_5A37:
    ld [$F320], sp                                ; $5A37: $08 $20 $F3
    ld a, [bc]                                    ; $5A3A: $0A
    jr nc, @-$11                                  ; $5A3B: $30 $ED

    inc c                                         ; $5A3D: $0C
    jr jr_00B_5A2B                                ; $5A3E: $18 $EB

    ld c, $00                                     ; $5A40: $0E $00
    ld bc, $0000                                  ; $5A42: $01 $00 $00
    ld c, [hl]                                    ; $5A45: $4E
    dec d                                         ; $5A46: $15
    ld c, e                                       ; $5A47: $4B
    ld e, d                                       ; $5A48: $5A

jr_00B_5A49:
    nop                                           ; $5A49: $00
    nop                                           ; $5A4A: $00
    add hl, bc                                    ; $5A4B: $09
    jr nc, @+$0C                                  ; $5A4C: $30 $0A

jr_00B_5A4E:
    nop                                           ; $5A4E: $00
    jr nc, @+$04                                  ; $5A4F: $30 $02

    ld [bc], a                                    ; $5A51: $02
    jr nc, jr_00B_5A4E                            ; $5A52: $30 $FA

    inc b                                         ; $5A54: $04
    jr z, jr_00B_5A49                             ; $5A55: $28 $F2

    ld b, $20                                     ; $5A57: $06 $20
    ld a, [$2008]                                 ; $5A59: $FA $08 $20
    ld [bc], a                                    ; $5A5C: $02
    ld a, [bc]                                    ; $5A5D: $0A
    jr nz, jr_00B_5A6A                            ; $5A5E: $20 $0A

    inc c                                         ; $5A60: $0C
    inc h                                         ; $5A61: $24

jr_00B_5A62:
    xor $0E                                       ; $5A62: $EE $0E
    db $10                                        ; $5A64: $10
    ld [bc], a                                    ; $5A65: $02
    stop                                          ; $5A66: $10 $00
    inc e                                         ; $5A68: $1C
    nop                                           ; $5A69: $00

jr_00B_5A6A:
    jr nz, jr_00B_5ABB                            ; $5A6A: $20 $4F

jr_00B_5A6C:
    dec d                                         ; $5A6C: $15
    add l                                         ; $5A6D: $85
    ld e, d                                       ; $5A6E: $5A
    ld b, $17                                     ; $5A6F: $06 $17
    nop                                           ; $5A71: $00
    inc e                                         ; $5A72: $1C
    dec b                                         ; $5A73: $05
    jr nz, @+$51                                  ; $5A74: $20 $4F

jr_00B_5A76:
    dec d                                         ; $5A76: $15
    add l                                         ; $5A77: $85
    ld e, d                                       ; $5A78: $5A
    ld b, $17                                     ; $5A79: $06 $17
    ld h, b                                       ; $5A7B: $60
    inc e                                         ; $5A7C: $1C
    nop                                           ; $5A7D: $00
    jr nz, jr_00B_5ACF                            ; $5A7E: $20 $4F

jr_00B_5A80:
    dec d                                         ; $5A80: $15
    add l                                         ; $5A81: $85
    ld e, d                                       ; $5A82: $5A
    nop                                           ; $5A83: $00
    nop                                           ; $5A84: $00
    ld a, [bc]                                    ; $5A85: $0A
    dec e                                         ; $5A86: $1D
    db $E4                                        ; $5A87: $E4
    nop                                           ; $5A88: $00
    dec de                                        ; $5A89: $1B
    db $EC                                        ; $5A8A: $EC
    ld [bc], a                                    ; $5A8B: $02
    dec de                                        ; $5A8C: $1B
    db $F4                                        ; $5A8D: $F4
    inc b                                         ; $5A8E: $04
    dec de                                        ; $5A8F: $1B
    db $FC                                        ; $5A90: $FC
    ld b, $1B                                     ; $5A91: $06 $1B
    inc b                                         ; $5A93: $04
    ld [$E80D], sp                                ; $5A94: $08 $0D $E8
    ld a, [bc]                                    ; $5A97: $0A
    dec bc                                        ; $5A98: $0B
    ldh a, [$FF0C]                                ; $5A99: $F0 $0C
    dec bc                                        ; $5A9B: $0B
    ld hl, sp+$0E                                 ; $5A9C: $F8 $0E
    dec bc                                        ; $5A9E: $0B
    nop                                           ; $5A9F: $00
    db $10                                        ; $5AA0: $10
    inc d                                         ; $5AA1: $14
    inc c                                         ; $5AA2: $0C
    ld [de], a                                    ; $5AA3: $12
    nop                                           ; $5AA4: $00
    inc e                                         ; $5AA5: $1C
    nop                                           ; $5AA6: $00
    ld h, b                                       ; $5AA7: $60
    ld d, b                                       ; $5AA8: $50
    dec d                                         ; $5AA9: $15
    cp b                                          ; $5AAA: $B8
    ld e, d                                       ; $5AAB: $5A
    rlca                                          ; $5AAC: $07
    dec bc                                        ; $5AAD: $0B
    ld b, b                                       ; $5AAE: $40
    inc e                                         ; $5AAF: $1C
    nop                                           ; $5AB0: $00
    ld h, b                                       ; $5AB1: $60
    ld d, b                                       ; $5AB2: $50
    dec d                                         ; $5AB3: $15
    cp b                                          ; $5AB4: $B8
    ld e, d                                       ; $5AB5: $5A
    dec b                                         ; $5AB6: $05
    inc c                                         ; $5AB7: $0C
    ld [$E32B], sp                                ; $5AB8: $08 $2B $E3

jr_00B_5ABB:
    nop                                           ; $5ABB: $00
    dec hl                                        ; $5ABC: $2B
    db $EB                                        ; $5ABD: $EB
    ld [bc], a                                    ; $5ABE: $02
    dec hl                                        ; $5ABF: $2B
    di                                            ; $5AC0: $F3
    inc b                                         ; $5AC1: $04
    dec hl                                        ; $5AC2: $2B
    ei                                            ; $5AC3: $FB
    ld b, $2B                                     ; $5AC4: $06 $2B
    inc bc                                        ; $5AC6: $03
    ld [$0B23], sp                                ; $5AC7: $08 $23 $0B
    ld a, [bc]                                    ; $5ACA: $0A
    dec de                                        ; $5ACB: $1B
    db $E4                                        ; $5ACC: $E4
    inc c                                         ; $5ACD: $0C
    dec de                                        ; $5ACE: $1B

jr_00B_5ACF:
    ldh a, [$FF0E]                                ; $5ACF: $F0 $0E
    nop                                           ; $5AD1: $00
    rlca                                          ; $5AD2: $07
    and $20                                       ; $5AD3: $E6 $20
    ld l, h                                       ; $5AD5: $6C
    dec d                                         ; $5AD6: $15
    db $DB                                        ; $5AD7: $DB
    ld e, d                                       ; $5AD8: $5A
    nop                                           ; $5AD9: $00
    dec b                                         ; $5ADA: $05
    inc c                                         ; $5ADB: $0C
    ld a, [hl+]                                   ; $5ADC: $2A
    db $DD                                        ; $5ADD: $DD
    nop                                           ; $5ADE: $00
    dec hl                                        ; $5ADF: $2B
    push hl                                       ; $5AE0: $E5
    ld [bc], a                                    ; $5AE1: $02
    add hl, hl                                    ; $5AE2: $29
    db $ED                                        ; $5AE3: $ED
    inc b                                         ; $5AE4: $04
    dec h                                         ; $5AE5: $25
    push af                                       ; $5AE6: $F5
    ld b, $25                                     ; $5AE7: $06 $25
    db $FD                                        ; $5AE9: $FD
    ld [$0525], sp                                ; $5AEA: $08 $25 $05
    ld a, [bc]                                    ; $5AED: $0A
    dec h                                         ; $5AEE: $25
    dec c                                         ; $5AEF: $0D
    inc c                                         ; $5AF0: $0C
    ld hl, $0E15                                  ; $5AF1: $21 $15 $0E
    ld a, [de]                                    ; $5AF4: $1A
    db $DD                                        ; $5AF5: $DD
    db $10                                        ; $5AF6: $10
    dec de                                        ; $5AF7: $1B
    push hl                                       ; $5AF8: $E5
    ld [de], a                                    ; $5AF9: $12
    add hl, de                                    ; $5AFA: $19
    db $ED                                        ; $5AFB: $ED
    inc d                                         ; $5AFC: $14
    dec d                                         ; $5AFD: $15
    ld a, [$0016]                                 ; $5AFE: $FA $16 $00
    rlca                                          ; $5B01: $07
    and $A0                                       ; $5B02: $E6 $A0
    ld l, l                                       ; $5B04: $6D
    dec d                                         ; $5B05: $15
    ld a, [bc]                                    ; $5B06: $0A
    ld e, e                                       ; $5B07: $5B
    nop                                           ; $5B08: $00
    dec b                                         ; $5B09: $05
    ld [$E12B], sp                                ; $5B0A: $08 $2B $E1
    nop                                           ; $5B0D: $00
    inc hl                                        ; $5B0E: $23
    jp hl                                         ; $5B0F: $E9


    ld [bc], a                                    ; $5B10: $02
    ld [hl+], a                                   ; $5B11: $22
    pop af                                        ; $5B12: $F1
    inc b                                         ; $5B13: $04
    inc h                                         ; $5B14: $24
    ld sp, hl                                     ; $5B15: $F9
    ld b, $24                                     ; $5B16: $06 $24
    ld bc, $2308                                  ; $5B18: $01 $08 $23
    add hl, bc                                    ; $5B1B: $09
    ld a, [bc]                                    ; $5B1C: $0A
    rra                                           ; $5B1D: $1F
    ld de, $330C                                  ; $5B1E: $11 $0C $33
    jp hl                                         ; $5B21: $E9


    ld c, $00                                     ; $5B22: $0E $00
    ld bc, $A000                                  ; $5B24: $01 $00 $A0
    ld l, [hl]                                    ; $5B27: $6E
    dec d                                         ; $5B28: $15
    dec l                                         ; $5B29: $2D
    ld e, e                                       ; $5B2A: $5B
    nop                                           ; $5B2B: $00
    nop                                           ; $5B2C: $00
    add hl, bc                                    ; $5B2D: $09
    ld sp, $00EC                                  ; $5B2E: $31 $EC $00
    ld sp, $02F4                                  ; $5B31: $31 $F4 $02
    jr nc, @-$02                                  ; $5B34: $30 $FC

    inc b                                         ; $5B36: $04
    jr nc, @+$06                                  ; $5B37: $30 $04

    ld b, $20                                     ; $5B39: $06 $20
    ld [$2108], a                                 ; $5B3B: $EA $08 $21
    ldh a, [c]                                    ; $5B3E: $F2
    ld a, [bc]                                    ; $5B3F: $0A
    jr nz, @-$04                                  ; $5B40: $20 $FA

    inc c                                         ; $5B42: $0C
    jr nz, jr_00B_5B47                            ; $5B43: $20 $02

    ld c, $25                                     ; $5B45: $0E $25

jr_00B_5B47:
    ld a, [bc]                                    ; $5B47: $0A
    stop                                          ; $5B48: $10 $00
    ld bc, $C000                                  ; $5B4A: $01 $00 $C0
    ld l, a                                       ; $5B4D: $6F
    dec d                                         ; $5B4E: $15
    ld d, e                                       ; $5B4F: $53
    ld e, e                                       ; $5B50: $5B
    nop                                           ; $5B51: $00
    nop                                           ; $5B52: $00
    add hl, bc                                    ; $5B53: $09
    ld sp, $00EC                                  ; $5B54: $31 $EC $00
    ld sp, $02F4                                  ; $5B57: $31 $F4 $02
    ld sp, $04FC                                  ; $5B5A: $31 $FC $04
    ld sp, $0604                                  ; $5B5D: $31 $04 $06
    jr nz, @-$14                                  ; $5B60: $20 $EA

    ld [$F221], sp                                ; $5B62: $08 $21 $F2
    ld a, [bc]                                    ; $5B65: $0A
    ld hl, $0CFA                                  ; $5B66: $21 $FA $0C
    ld hl, $0E02                                  ; $5B69: $21 $02 $0E
    dec h                                         ; $5B6C: $25
    ld a, [bc]                                    ; $5B6D: $0A
    stop                                          ; $5B6E: $10 $00
    ld bc, $E0E7                                  ; $5B70: $01 $E7 $E0
    ld [hl], b                                    ; $5B73: $70
    dec d                                         ; $5B74: $15
    ld a, c                                       ; $5B75: $79
    ld e, e                                       ; $5B76: $5B
    ld [bc], a                                    ; $5B77: $02
    nop                                           ; $5B78: $00
    dec bc                                        ; $5B79: $0B
    inc c                                         ; $5B7A: $0C
    xor $00                                       ; $5B7B: $EE $00
    inc c                                         ; $5B7D: $0C
    or $02                                        ; $5B7E: $F6 $02
    inc c                                         ; $5B80: $0C
    cp $04                                        ; $5B81: $FE $04
    inc e                                         ; $5B83: $1C
    ldh a, [rTMA]                                 ; $5B84: $F0 $06
    inc e                                         ; $5B86: $1C
    ld hl, sp+$08                                 ; $5B87: $F8 $08
    inc e                                         ; $5B89: $1C
    nop                                           ; $5B8A: $00
    ld a, [bc]                                    ; $5B8B: $0A
    inc l                                         ; $5B8C: $2C
    db $F4                                        ; $5B8D: $F4
    inc c                                         ; $5B8E: $0C
    inc l                                         ; $5B8F: $2C
    db $FC                                        ; $5B90: $FC
    ld c, $2C                                     ; $5B91: $0E $2C
    inc b                                         ; $5B93: $04
    db $10                                        ; $5B94: $10
    inc a                                         ; $5B95: $3C
    or $12                                        ; $5B96: $F6 $12
    inc a                                         ; $5B98: $3C
    cp $14                                        ; $5B99: $FE $14
    nop                                           ; $5B9B: $00
    ld bc, $40E7                                  ; $5B9C: $01 $E7 $40
    ld [hl], d                                    ; $5B9F: $72

jr_00B_5BA0:
    dec d                                         ; $5BA0: $15
    and l                                         ; $5BA1: $A5
    ld e, e                                       ; $5BA2: $5B

jr_00B_5BA3:
    ld [bc], a                                    ; $5BA3: $02
    nop                                           ; $5BA4: $00
    ld [$F510], sp                                ; $5BA5: $08 $10 $F5
    nop                                           ; $5BA8: $00
    jr nz, jr_00B_5BA0                            ; $5BA9: $20 $F5

    ld [bc], a                                    ; $5BAB: $02
    jr nc, jr_00B_5BA3                            ; $5BAC: $30 $F5

    inc b                                         ; $5BAE: $04
    inc d                                         ; $5BAF: $14
    db $FD                                        ; $5BB0: $FD
    ld b, $24                                     ; $5BB1: $06 $24
    db $FD                                        ; $5BB3: $FD
    ld [$FD34], sp                                ; $5BB4: $08 $34 $FD
    ld a, [bc]                                    ; $5BB7: $0A
    ld b, b                                       ; $5BB8: $40
    ei                                            ; $5BB9: $FB
    inc c                                         ; $5BBA: $0C
    inc d                                         ; $5BBB: $14
    dec b                                         ; $5BBC: $05
    ld c, $F3                                     ; $5BBD: $0E $F3
    ld h, b                                       ; $5BBF: $60
    rst RST_38                                    ; $5BC0: $FF
    rst RST_38                                    ; $5BC1: $FF
    ld a, [bc]                                    ; $5BC2: $0A
    ld h, c                                       ; $5BC3: $61
    rst RST_38                                    ; $5BC4: $FF
    rst RST_38                                    ; $5BC5: $FF
    di                                            ; $5BC6: $F3
    ld h, b                                       ; $5BC7: $60
    rst RST_38                                    ; $5BC8: $FF
    rst RST_38                                    ; $5BC9: $FF
    push af                                       ; $5BCA: $F5
    ld h, e                                       ; $5BCB: $63
    rst RST_38                                    ; $5BCC: $FF
    rst RST_38                                    ; $5BCD: $FF
    dec d                                         ; $5BCE: $15
    ld h, h                                       ; $5BCF: $64
    rst RST_38                                    ; $5BD0: $FF
    rst RST_38                                    ; $5BD1: $FF
    push af                                       ; $5BD2: $F5
    ld h, e                                       ; $5BD3: $63
    rst RST_38                                    ; $5BD4: $FF
    rst RST_38                                    ; $5BD5: $FF
    dec d                                         ; $5BD6: $15
    ld h, h                                       ; $5BD7: $64
    rst RST_38                                    ; $5BD8: $FF
    rst RST_38                                    ; $5BD9: $FF
    push af                                       ; $5BDA: $F5
    ld h, e                                       ; $5BDB: $63
    rst RST_38                                    ; $5BDC: $FF
    rst RST_38                                    ; $5BDD: $FF
    dec d                                         ; $5BDE: $15
    ld h, h                                       ; $5BDF: $64
    rst RST_38                                    ; $5BE0: $FF
    rst RST_38                                    ; $5BE1: $FF
    rst RST_38                                    ; $5BE2: $FF
    rst RST_38                                    ; $5BE3: $FF
    xor b                                         ; $5BE4: $A8
    ld e, a                                       ; $5BE5: $5F
    rst RST_38                                    ; $5BE6: $FF
    rst RST_38                                    ; $5BE7: $FF
    jp nz, $FF5F                                  ; $5BE8: $C2 $5F $FF

    rst RST_38                                    ; $5BEB: $FF
    call c, $FF5F                                 ; $5BEC: $DC $5F $FF
    rst RST_38                                    ; $5BEF: $FF
    jp nz, $FF5F                                  ; $5BF0: $C2 $5F $FF

    rst RST_38                                    ; $5BF3: $FF
    rst RST_38                                    ; $5BF4: $FF
    rst RST_38                                    ; $5BF5: $FF
    xor b                                         ; $5BF6: $A8
    ld e, a                                       ; $5BF7: $5F
    rst RST_38                                    ; $5BF8: $FF
    rst RST_38                                    ; $5BF9: $FF
    or $5F                                        ; $5BFA: $F6 $5F
    rst RST_38                                    ; $5BFC: $FF
    rst RST_38                                    ; $5BFD: $FF
    db $10                                        ; $5BFE: $10
    ld h, b                                       ; $5BFF: $60
    rst RST_38                                    ; $5C00: $FF
    rst RST_38                                    ; $5C01: $FF
    or $5F                                        ; $5C02: $F6 $5F
    rst RST_38                                    ; $5C04: $FF
    rst RST_38                                    ; $5C05: $FF
    rst RST_38                                    ; $5C06: $FF
    rst RST_38                                    ; $5C07: $FF
    or $5F                                        ; $5C08: $F6 $5F
    rst RST_38                                    ; $5C0A: $FF
    rst RST_38                                    ; $5C0B: $FF
    db $10                                        ; $5C0C: $10
    ld h, b                                       ; $5C0D: $60
    rst RST_38                                    ; $5C0E: $FF
    rst RST_38                                    ; $5C0F: $FF
    or $5F                                        ; $5C10: $F6 $5F
    rst RST_38                                    ; $5C12: $FF
    rst RST_38                                    ; $5C13: $FF
    xor b                                         ; $5C14: $A8
    ld e, a                                       ; $5C15: $5F
    rst RST_38                                    ; $5C16: $FF
    rst RST_38                                    ; $5C17: $FF
    rst RST_38                                    ; $5C18: $FF
    rst RST_38                                    ; $5C19: $FF
    daa                                           ; $5C1A: $27
    ld h, b                                       ; $5C1B: $60
    rst RST_38                                    ; $5C1C: $FF
    rst RST_38                                    ; $5C1D: $FF
    rst RST_38                                    ; $5C1E: $FF
    rst RST_38                                    ; $5C1F: $FF
    daa                                           ; $5C20: $27
    ld h, b                                       ; $5C21: $60
    rst RST_38                                    ; $5C22: $FF
    rst RST_38                                    ; $5C23: $FF
    ld a, $60                                     ; $5C24: $3E $60
    rst RST_38                                    ; $5C26: $FF
    rst RST_38                                    ; $5C27: $FF
    ld a, $60                                     ; $5C28: $3E $60
    rst RST_38                                    ; $5C2A: $FF
    rst RST_38                                    ; $5C2B: $FF
    ld d, l                                       ; $5C2C: $55
    ld h, b                                       ; $5C2D: $60
    rst RST_38                                    ; $5C2E: $FF
    rst RST_38                                    ; $5C2F: $FF
    ld d, l                                       ; $5C30: $55
    ld h, b                                       ; $5C31: $60
    rst RST_38                                    ; $5C32: $FF
    rst RST_38                                    ; $5C33: $FF
    ld a, $60                                     ; $5C34: $3E $60
    rst RST_38                                    ; $5C36: $FF
    rst RST_38                                    ; $5C37: $FF
    ld a, $60                                     ; $5C38: $3E $60
    rst RST_38                                    ; $5C3A: $FF
    rst RST_38                                    ; $5C3B: $FF
    daa                                           ; $5C3C: $27
    ld h, b                                       ; $5C3D: $60
    rst RST_38                                    ; $5C3E: $FF
    rst RST_38                                    ; $5C3F: $FF
    rst RST_38                                    ; $5C40: $FF
    rst RST_38                                    ; $5C41: $FF
    daa                                           ; $5C42: $27
    ld h, b                                       ; $5C43: $60
    rst RST_38                                    ; $5C44: $FF
    rst RST_38                                    ; $5C45: $FF
    ld a, $60                                     ; $5C46: $3E $60
    rst RST_38                                    ; $5C48: $FF
    rst RST_38                                    ; $5C49: $FF
    sub a                                         ; $5C4A: $97
    ld h, b                                       ; $5C4B: $60
    rst RST_38                                    ; $5C4C: $FF
    rst RST_38                                    ; $5C4D: $FF
    ld l, h                                       ; $5C4E: $6C
    ld h, b                                       ; $5C4F: $60
    rst RST_38                                    ; $5C50: $FF
    rst RST_38                                    ; $5C51: $FF
    adc l                                         ; $5C52: $8D
    ld h, b                                       ; $5C53: $60
    rst RST_38                                    ; $5C54: $FF
    rst RST_38                                    ; $5C55: $FF
    halt                                          ; $5C56: $76
    ld h, b                                       ; $5C57: $60
    rst RST_38                                    ; $5C58: $FF
    rst RST_38                                    ; $5C59: $FF
    ld a, $60                                     ; $5C5A: $3E $60
    rst RST_38                                    ; $5C5C: $FF
    rst RST_38                                    ; $5C5D: $FF
    daa                                           ; $5C5E: $27
    ld h, b                                       ; $5C5F: $60
    rst RST_38                                    ; $5C60: $FF
    rst RST_38                                    ; $5C61: $FF
    rst RST_38                                    ; $5C62: $FF
    rst RST_38                                    ; $5C63: $FF
    daa                                           ; $5C64: $27
    ld h, b                                       ; $5C65: $60
    rst RST_38                                    ; $5C66: $FF
    rst RST_38                                    ; $5C67: $FF
    ld a, $60                                     ; $5C68: $3E $60
    rst RST_38                                    ; $5C6A: $FF
    rst RST_38                                    ; $5C6B: $FF
    halt                                          ; $5C6C: $76
    ld h, b                                       ; $5C6D: $60
    rst RST_38                                    ; $5C6E: $FF
    rst RST_38                                    ; $5C6F: $FF
    adc l                                         ; $5C70: $8D
    ld h, b                                       ; $5C71: $60
    rst RST_38                                    ; $5C72: $FF
    rst RST_38                                    ; $5C73: $FF
    ld l, h                                       ; $5C74: $6C
    ld h, b                                       ; $5C75: $60
    rst RST_38                                    ; $5C76: $FF
    rst RST_38                                    ; $5C77: $FF
    sub a                                         ; $5C78: $97
    ld h, b                                       ; $5C79: $60
    rst RST_38                                    ; $5C7A: $FF
    rst RST_38                                    ; $5C7B: $FF
    ld a, $60                                     ; $5C7C: $3E $60
    rst RST_38                                    ; $5C7E: $FF
    rst RST_38                                    ; $5C7F: $FF
    daa                                           ; $5C80: $27
    ld h, b                                       ; $5C81: $60
    rst RST_38                                    ; $5C82: $FF
    rst RST_38                                    ; $5C83: $FF
    rst RST_38                                    ; $5C84: $FF
    rst RST_38                                    ; $5C85: $FF
    xor [hl]                                      ; $5C86: $AE
    ld h, b                                       ; $5C87: $60
    rst RST_38                                    ; $5C88: $FF
    rst RST_38                                    ; $5C89: $FF
    rst RST_38                                    ; $5C8A: $FF
    rst RST_38                                    ; $5C8B: $FF
    ret z                                         ; $5C8C: $C8

    ld h, b                                       ; $5C8D: $60
    rst RST_38                                    ; $5C8E: $FF
    rst RST_38                                    ; $5C8F: $FF
    rst RST_38                                    ; $5C90: $FF
    rst RST_38                                    ; $5C91: $FF
    rst RST_18                                    ; $5C92: $DF
    ld h, b                                       ; $5C93: $60
    rst RST_38                                    ; $5C94: $FF
    rst RST_38                                    ; $5C95: $FF
    daa                                           ; $5C96: $27
    ld h, b                                       ; $5C97: $60
    rst RST_38                                    ; $5C98: $FF
    rst RST_38                                    ; $5C99: $FF
    rst RST_38                                    ; $5C9A: $FF
    rst RST_38                                    ; $5C9B: $FF
    di                                            ; $5C9C: $F3
    ld h, b                                       ; $5C9D: $60
    rst RST_38                                    ; $5C9E: $FF
    rst RST_38                                    ; $5C9F: $FF
    ld a, [bc]                                    ; $5CA0: $0A
    ld h, c                                       ; $5CA1: $61
    rst RST_38                                    ; $5CA2: $FF
    rst RST_38                                    ; $5CA3: $FF
    jr nc, jr_00B_5D07                            ; $5CA4: $30 $61

    rst RST_38                                    ; $5CA6: $FF
    rst RST_38                                    ; $5CA7: $FF
    rst RST_38                                    ; $5CA8: $FF
    rst RST_38                                    ; $5CA9: $FF
    ld d, b                                       ; $5CAA: $50
    ld h, c                                       ; $5CAB: $61
    rst RST_38                                    ; $5CAC: $FF
    rst RST_38                                    ; $5CAD: $FF
    ld [hl], h                                    ; $5CAE: $74
    ld h, c                                       ; $5CAF: $61
    rst RST_38                                    ; $5CB0: $FF
    rst RST_38                                    ; $5CB1: $FF
    ld d, b                                       ; $5CB2: $50
    ld h, c                                       ; $5CB3: $61
    rst RST_38                                    ; $5CB4: $FF
    rst RST_38                                    ; $5CB5: $FF
    rst RST_38                                    ; $5CB6: $FF
    rst RST_38                                    ; $5CB7: $FF
    daa                                           ; $5CB8: $27
    ld h, b                                       ; $5CB9: $60
    rst RST_38                                    ; $5CBA: $FF
    rst RST_38                                    ; $5CBB: $FF
    sub h                                         ; $5CBC: $94
    ld h, c                                       ; $5CBD: $61
    rst RST_38                                    ; $5CBE: $FF
    rst RST_38                                    ; $5CBF: $FF
    or c                                          ; $5CC0: $B1
    ld h, c                                       ; $5CC1: $61
    rst RST_38                                    ; $5CC2: $FF
    rst RST_38                                    ; $5CC3: $FF
    db $EB                                        ; $5CC4: $EB
    ld h, c                                       ; $5CC5: $61
    dec b                                         ; $5CC6: $05
    ld h, d                                       ; $5CC7: $62
    rst RST_10                                    ; $5CC8: $D7
    ld h, c                                       ; $5CC9: $61
    ld a, [de]                                    ; $5CCA: $1A
    ld h, d                                       ; $5CCB: $62
    ld d, b                                       ; $5CCC: $50
    ld h, c                                       ; $5CCD: $61
    rst RST_38                                    ; $5CCE: $FF
    rst RST_38                                    ; $5CCF: $FF
    rst RST_38                                    ; $5CD0: $FF
    rst RST_38                                    ; $5CD1: $FF
    add hl, hl                                    ; $5CD2: $29
    ld h, d                                       ; $5CD3: $62
    rst RST_38                                    ; $5CD4: $FF
    rst RST_38                                    ; $5CD5: $FF
    ld b, e                                       ; $5CD6: $43
    ld h, d                                       ; $5CD7: $62
    rst RST_38                                    ; $5CD8: $FF
    rst RST_38                                    ; $5CD9: $FF
    add hl, hl                                    ; $5CDA: $29
    ld h, d                                       ; $5CDB: $62
    rst RST_38                                    ; $5CDC: $FF
    rst RST_38                                    ; $5CDD: $FF
    rst RST_38                                    ; $5CDE: $FF
    rst RST_38                                    ; $5CDF: $FF
    ld h, b                                       ; $5CE0: $60
    ld h, d                                       ; $5CE1: $62
    rst RST_38                                    ; $5CE2: $FF
    rst RST_38                                    ; $5CE3: $FF
    add h                                         ; $5CE4: $84
    ld h, d                                       ; $5CE5: $62
    rst RST_38                                    ; $5CE6: $FF
    rst RST_38                                    ; $5CE7: $FF
    ld h, b                                       ; $5CE8: $60
    ld h, d                                       ; $5CE9: $62
    rst RST_38                                    ; $5CEA: $FF
    rst RST_38                                    ; $5CEB: $FF
    rst RST_38                                    ; $5CEC: $FF
    rst RST_38                                    ; $5CED: $FF
    add hl, hl                                    ; $5CEE: $29
    ld h, d                                       ; $5CEF: $62
    rst RST_38                                    ; $5CF0: $FF
    rst RST_38                                    ; $5CF1: $FF
    xor [hl]                                      ; $5CF2: $AE
    ld h, d                                       ; $5CF3: $62
    rst RST_38                                    ; $5CF4: $FF
    rst RST_38                                    ; $5CF5: $FF
    push de                                       ; $5CF6: $D5
    ld h, d                                       ; $5CF7: $62
    ld sp, hl                                     ; $5CF8: $F9
    ld h, d                                       ; $5CF9: $62
    push de                                       ; $5CFA: $D5
    ld h, d                                       ; $5CFB: $62
    ld [$2963], sp                                ; $5CFC: $08 $63 $29
    ld h, d                                       ; $5CFF: $62
    rst RST_38                                    ; $5D00: $FF
    rst RST_38                                    ; $5D01: $FF
    rst RST_38                                    ; $5D02: $FF
    rst RST_38                                    ; $5D03: $FF
    inc d                                         ; $5D04: $14
    ld h, e                                       ; $5D05: $63
    rst RST_38                                    ; $5D06: $FF

jr_00B_5D07:
    rst RST_38                                    ; $5D07: $FF
    ld sp, $FF63                                  ; $5D08: $31 $63 $FF
    rst RST_38                                    ; $5D0B: $FF
    ld sp, $FF63                                  ; $5D0C: $31 $63 $FF
    rst RST_38                                    ; $5D0F: $FF
    ld sp, $FF63                                  ; $5D10: $31 $63 $FF
    rst RST_38                                    ; $5D13: $FF
    daa                                           ; $5D14: $27
    ld h, b                                       ; $5D15: $60
    rst RST_38                                    ; $5D16: $FF
    rst RST_38                                    ; $5D17: $FF
    rst RST_38                                    ; $5D18: $FF
    rst RST_38                                    ; $5D19: $FF
    ld l, d                                       ; $5D1A: $6A
    ld h, d                                       ; $5D1B: $62
    rst RST_38                                    ; $5D1C: $FF
    rst RST_38                                    ; $5D1D: $FF
    adc [hl]                                      ; $5D1E: $8E
    ld h, d                                       ; $5D1F: $62
    rst RST_38                                    ; $5D20: $FF
    rst RST_38                                    ; $5D21: $FF
    adc [hl]                                      ; $5D22: $8E
    ld h, d                                       ; $5D23: $62
    rst RST_38                                    ; $5D24: $FF
    rst RST_38                                    ; $5D25: $FF
    adc [hl]                                      ; $5D26: $8E
    ld h, d                                       ; $5D27: $62
    rst RST_38                                    ; $5D28: $FF
    rst RST_38                                    ; $5D29: $FF
    daa                                           ; $5D2A: $27
    ld h, b                                       ; $5D2B: $60
    rst RST_38                                    ; $5D2C: $FF
    rst RST_38                                    ; $5D2D: $FF
    rst RST_38                                    ; $5D2E: $FF
    rst RST_38                                    ; $5D2F: $FF
    daa                                           ; $5D30: $27
    ld h, b                                       ; $5D31: $60
    rst RST_38                                    ; $5D32: $FF
    rst RST_38                                    ; $5D33: $FF
    ld d, l                                       ; $5D34: $55
    ld h, b                                       ; $5D35: $60
    rst RST_38                                    ; $5D36: $FF
    rst RST_38                                    ; $5D37: $FF
    ld c, e                                       ; $5D38: $4B
    ld h, e                                       ; $5D39: $63
    rst RST_38                                    ; $5D3A: $FF
    rst RST_38                                    ; $5D3B: $FF
    ld e, a                                       ; $5D3C: $5F
    ld h, e                                       ; $5D3D: $63
    rst RST_38                                    ; $5D3E: $FF
    rst RST_38                                    ; $5D3F: $FF
    rst RST_38                                    ; $5D40: $FF
    rst RST_38                                    ; $5D41: $FF
    rst RST_38                                    ; $5D42: $FF
    rst RST_38                                    ; $5D43: $FF
    halt                                          ; $5D44: $76
    ld h, e                                       ; $5D45: $63
    rst RST_38                                    ; $5D46: $FF
    rst RST_38                                    ; $5D47: $FF
    daa                                           ; $5D48: $27
    ld h, b                                       ; $5D49: $60
    rst RST_38                                    ; $5D4A: $FF
    rst RST_38                                    ; $5D4B: $FF
    rst RST_38                                    ; $5D4C: $FF
    rst RST_38                                    ; $5D4D: $FF
    adc l                                         ; $5D4E: $8D
    ld h, e                                       ; $5D4F: $63
    rst RST_38                                    ; $5D50: $FF
    rst RST_38                                    ; $5D51: $FF
    adc l                                         ; $5D52: $8D
    ld h, e                                       ; $5D53: $63
    rst RST_38                                    ; $5D54: $FF
    rst RST_38                                    ; $5D55: $FF
    daa                                           ; $5D56: $27
    ld h, b                                       ; $5D57: $60
    rst RST_38                                    ; $5D58: $FF
    rst RST_38                                    ; $5D59: $FF
    rst RST_38                                    ; $5D5A: $FF
    rst RST_38                                    ; $5D5B: $FF
    cp e                                          ; $5D5C: $BB
    ld h, e                                       ; $5D5D: $63
    rst RST_38                                    ; $5D5E: $FF
    rst RST_38                                    ; $5D5F: $FF
    ret c                                         ; $5D60: $D8

    ld h, e                                       ; $5D61: $63
    rst RST_38                                    ; $5D62: $FF
    rst RST_38                                    ; $5D63: $FF
    rst RST_38                                    ; $5D64: $FF
    rst RST_38                                    ; $5D65: $FF
    di                                            ; $5D66: $F3
    ld h, b                                       ; $5D67: $60
    rst RST_38                                    ; $5D68: $FF
    rst RST_38                                    ; $5D69: $FF
    push af                                       ; $5D6A: $F5
    ld h, e                                       ; $5D6B: $63
    rst RST_38                                    ; $5D6C: $FF
    rst RST_38                                    ; $5D6D: $FF
    dec d                                         ; $5D6E: $15
    ld h, h                                       ; $5D6F: $64
    rst RST_38                                    ; $5D70: $FF
    rst RST_38                                    ; $5D71: $FF
    ld [hl-], a                                   ; $5D72: $32
    ld h, h                                       ; $5D73: $64
    rst RST_38                                    ; $5D74: $FF
    rst RST_38                                    ; $5D75: $FF
    dec d                                         ; $5D76: $15
    ld h, h                                       ; $5D77: $64
    rst RST_38                                    ; $5D78: $FF
    rst RST_38                                    ; $5D79: $FF
    rst RST_38                                    ; $5D7A: $FF
    rst RST_38                                    ; $5D7B: $FF
    xor c                                         ; $5D7C: $A9
    ld h, h                                       ; $5D7D: $64
    rst RST_38                                    ; $5D7E: $FF
    rst RST_38                                    ; $5D7F: $FF
    ld c, h                                       ; $5D80: $4C
    ld h, h                                       ; $5D81: $64
    rst RST_38                                    ; $5D82: $FF
    rst RST_38                                    ; $5D83: $FF
    ld h, e                                       ; $5D84: $63
    ld h, h                                       ; $5D85: $64
    rst RST_38                                    ; $5D86: $FF
    rst RST_38                                    ; $5D87: $FF
    rst RST_38                                    ; $5D88: $FF
    rst RST_38                                    ; $5D89: $FF
    ld h, e                                       ; $5D8A: $63
    ld h, h                                       ; $5D8B: $64
    rst RST_38                                    ; $5D8C: $FF
    rst RST_38                                    ; $5D8D: $FF
    ld c, h                                       ; $5D8E: $4C
    ld h, h                                       ; $5D8F: $64
    rst RST_38                                    ; $5D90: $FF
    rst RST_38                                    ; $5D91: $FF
    xor c                                         ; $5D92: $A9
    ld h, h                                       ; $5D93: $64
    rst RST_38                                    ; $5D94: $FF
    rst RST_38                                    ; $5D95: $FF
    rst RST_38                                    ; $5D96: $FF
    rst RST_38                                    ; $5D97: $FF
    and h                                         ; $5D98: $A4
    ld h, e                                       ; $5D99: $63
    rst RST_38                                    ; $5D9A: $FF
    rst RST_38                                    ; $5D9B: $FF
    ld a, l                                       ; $5D9C: $7D
    ld h, h                                       ; $5D9D: $64
    rst RST_38                                    ; $5D9E: $FF
    rst RST_38                                    ; $5D9F: $FF

Jump_00B_5DA0:
    cp e                                          ; $5DA0: $BB
    ld h, e                                       ; $5DA1: $63
    rst RST_38                                    ; $5DA2: $FF
    rst RST_38                                    ; $5DA3: $FF
    rst RST_38                                    ; $5DA4: $FF
    rst RST_38                                    ; $5DA5: $FF
    xor c                                         ; $5DA6: $A9
    ld h, h                                       ; $5DA7: $64
    rst RST_38                                    ; $5DA8: $FF
    rst RST_38                                    ; $5DA9: $FF
    jp $FF64                                      ; $5DAA: $C3 $64 $FF


    rst RST_38                                    ; $5DAD: $FF
    and $64                                       ; $5DAE: $E6 $64
    rst RST_38                                    ; $5DB0: $FF
    rst RST_38                                    ; $5DB1: $FF
    rrca                                          ; $5DB2: $0F
    ld h, l                                       ; $5DB3: $65
    rst RST_38                                    ; $5DB4: $FF
    rst RST_38                                    ; $5DB5: $FF
    ld [hl-], a                                   ; $5DB6: $32
    ld h, l                                       ; $5DB7: $65
    rst RST_38                                    ; $5DB8: $FF
    rst RST_38                                    ; $5DB9: $FF
    rrca                                          ; $5DBA: $0F
    ld h, l                                       ; $5DBB: $65
    rst RST_38                                    ; $5DBC: $FF
    rst RST_38                                    ; $5DBD: $FF
    and $64                                       ; $5DBE: $E6 $64
    rst RST_38                                    ; $5DC0: $FF
    rst RST_38                                    ; $5DC1: $FF
    rrca                                          ; $5DC2: $0F
    ld h, l                                       ; $5DC3: $65
    rst RST_38                                    ; $5DC4: $FF
    rst RST_38                                    ; $5DC5: $FF
    ld [hl-], a                                   ; $5DC6: $32
    ld h, l                                       ; $5DC7: $65
    rst RST_38                                    ; $5DC8: $FF
    rst RST_38                                    ; $5DC9: $FF
    ld d, l                                       ; $5DCA: $55
    ld h, l                                       ; $5DCB: $65
    rst RST_38                                    ; $5DCC: $FF
    rst RST_38                                    ; $5DCD: $FF
    ld [hl], d                                    ; $5DCE: $72
    ld h, l                                       ; $5DCF: $65
    rst RST_38                                    ; $5DD0: $FF
    rst RST_38                                    ; $5DD1: $FF
    sub l                                         ; $5DD2: $95
    ld h, l                                       ; $5DD3: $65
    cp c                                          ; $5DD4: $B9
    ld h, l                                       ; $5DD5: $65
    sbc a                                         ; $5DD6: $9F
    ld h, l                                       ; $5DD7: $65
    cp c                                          ; $5DD8: $B9
    ld h, l                                       ; $5DD9: $65
    rst RST_38                                    ; $5DDA: $FF
    rst RST_38                                    ; $5DDB: $FF
    xor c                                         ; $5DDC: $A9
    ld h, h                                       ; $5DDD: $64
    rst RST_38                                    ; $5DDE: $FF
    rst RST_38                                    ; $5DDF: $FF
    jp $FF64                                      ; $5DE0: $C3 $64 $FF


    rst RST_38                                    ; $5DE3: $FF
    and $64                                       ; $5DE4: $E6 $64
    rst RST_38                                    ; $5DE6: $FF
    rst RST_38                                    ; $5DE7: $FF
    rrca                                          ; $5DE8: $0F
    ld h, l                                       ; $5DE9: $65
    rst RST_38                                    ; $5DEA: $FF
    rst RST_38                                    ; $5DEB: $FF
    ld [hl-], a                                   ; $5DEC: $32
    ld h, l                                       ; $5DED: $65
    rst RST_38                                    ; $5DEE: $FF
    rst RST_38                                    ; $5DEF: $FF
    rrca                                          ; $5DF0: $0F
    ld h, l                                       ; $5DF1: $65
    rst RST_38                                    ; $5DF2: $FF
    rst RST_38                                    ; $5DF3: $FF
    and $64                                       ; $5DF4: $E6 $64
    rst RST_38                                    ; $5DF6: $FF
    rst RST_38                                    ; $5DF7: $FF
    rrca                                          ; $5DF8: $0F
    ld h, l                                       ; $5DF9: $65
    rst RST_38                                    ; $5DFA: $FF
    rst RST_38                                    ; $5DFB: $FF
    ld [hl-], a                                   ; $5DFC: $32
    ld h, l                                       ; $5DFD: $65
    rst RST_38                                    ; $5DFE: $FF
    rst RST_38                                    ; $5DFF: $FF
    ld d, l                                       ; $5E00: $55
    ld h, l                                       ; $5E01: $65
    rst RST_38                                    ; $5E02: $FF
    rst RST_38                                    ; $5E03: $FF
    ld [hl], d                                    ; $5E04: $72
    ld h, l                                       ; $5E05: $65
    rst RST_38                                    ; $5E06: $FF
    rst RST_38                                    ; $5E07: $FF
    sbc a                                         ; $5E08: $9F
    ld h, l                                       ; $5E09: $65
    cp c                                          ; $5E0A: $B9
    ld h, l                                       ; $5E0B: $65
    rst RST_38                                    ; $5E0C: $FF
    rst RST_38                                    ; $5E0D: $FF
    jp c, $FF65                                   ; $5E0E: $DA $65 $FF

    rst RST_38                                    ; $5E11: $FF
    rst RST_38                                    ; $5E12: $FF
    rst RST_38                                    ; $5E13: $FF
    jp c, $FF65                                   ; $5E14: $DA $65 $FF

    rst RST_38                                    ; $5E17: $FF
    rst RST_38                                    ; $5E18: $FF
    rst RST_38                                    ; $5E19: $FF
    xor b                                         ; $5E1A: $A8
    ld e, a                                       ; $5E1B: $5F
    rst RST_38                                    ; $5E1C: $FF
    rst RST_38                                    ; $5E1D: $FF
    jp c, $FF65                                   ; $5E1E: $DA $65 $FF

    rst RST_38                                    ; $5E21: $FF
    pop af                                        ; $5E22: $F1
    ld h, l                                       ; $5E23: $65
    rst RST_38                                    ; $5E24: $FF
    rst RST_38                                    ; $5E25: $FF
    rst RST_38                                    ; $5E26: $FF
    rst RST_38                                    ; $5E27: $FF
    add hl, hl                                    ; $5E28: $29
    ld h, [hl]                                    ; $5E29: $66
    rst RST_38                                    ; $5E2A: $FF
    rst RST_38                                    ; $5E2B: $FF
    rst RST_38                                    ; $5E2C: $FF
    rst RST_38                                    ; $5E2D: $FF
    jp c, $FF65                                   ; $5E2E: $DA $65 $FF

    rst RST_38                                    ; $5E31: $FF
    halt                                          ; $5E32: $76
    ld h, b                                       ; $5E33: $60
    rst RST_38                                    ; $5E34: $FF
    rst RST_38                                    ; $5E35: $FF
    adc l                                         ; $5E36: $8D
    ld h, b                                       ; $5E37: $60
    rst RST_38                                    ; $5E38: $FF
    rst RST_38                                    ; $5E39: $FF
    ld l, h                                       ; $5E3A: $6C
    ld h, b                                       ; $5E3B: $60
    rst RST_38                                    ; $5E3C: $FF
    rst RST_38                                    ; $5E3D: $FF
    sub a                                         ; $5E3E: $97
    ld h, b                                       ; $5E3F: $60
    rst RST_38                                    ; $5E40: $FF
    rst RST_38                                    ; $5E41: $FF
    ld a, $60                                     ; $5E42: $3E $60
    rst RST_38                                    ; $5E44: $FF
    rst RST_38                                    ; $5E45: $FF
    daa                                           ; $5E46: $27
    ld h, b                                       ; $5E47: $60
    rst RST_38                                    ; $5E48: $FF
    rst RST_38                                    ; $5E49: $FF
    rst RST_38                                    ; $5E4A: $FF
    rst RST_38                                    ; $5E4B: $FF
    jp c, $FF65                                   ; $5E4C: $DA $65 $FF

    rst RST_38                                    ; $5E4F: $FF
    ld b, b                                       ; $5E50: $40
    ld h, [hl]                                    ; $5E51: $66
    rst RST_38                                    ; $5E52: $FF
    rst RST_38                                    ; $5E53: $FF
    ld h, h                                       ; $5E54: $64
    ld h, [hl]                                    ; $5E55: $66
    rst RST_38                                    ; $5E56: $FF
    rst RST_38                                    ; $5E57: $FF
    ld b, b                                       ; $5E58: $40
    ld h, [hl]                                    ; $5E59: $66
    rst RST_38                                    ; $5E5A: $FF
    rst RST_38                                    ; $5E5B: $FF
    ld h, h                                       ; $5E5C: $64
    ld h, [hl]                                    ; $5E5D: $66
    rst RST_38                                    ; $5E5E: $FF
    rst RST_38                                    ; $5E5F: $FF
    rst RST_38                                    ; $5E60: $FF
    rst RST_38                                    ; $5E61: $FF
    pop af                                        ; $5E62: $F1
    ld h, l                                       ; $5E63: $65
    rst RST_38                                    ; $5E64: $FF
    rst RST_38                                    ; $5E65: $FF
    ei                                            ; $5E66: $FB
    ld h, l                                       ; $5E67: $65
    rst RST_38                                    ; $5E68: $FF
    rst RST_38                                    ; $5E69: $FF
    dec b                                         ; $5E6A: $05
    ld h, [hl]                                    ; $5E6B: $66
    rst RST_38                                    ; $5E6C: $FF
    rst RST_38                                    ; $5E6D: $FF
    rrca                                          ; $5E6E: $0F
    ld h, [hl]                                    ; $5E6F: $66
    rst RST_38                                    ; $5E70: $FF
    rst RST_38                                    ; $5E71: $FF
    rrca                                          ; $5E72: $0F
    ld h, [hl]                                    ; $5E73: $66
    rst RST_38                                    ; $5E74: $FF
    rst RST_38                                    ; $5E75: $FF
    ld b, b                                       ; $5E76: $40
    ld h, [hl]                                    ; $5E77: $66
    rst RST_38                                    ; $5E78: $FF
    rst RST_38                                    ; $5E79: $FF
    ld h, h                                       ; $5E7A: $64
    ld h, [hl]                                    ; $5E7B: $66
    rst RST_38                                    ; $5E7C: $FF
    rst RST_38                                    ; $5E7D: $FF
    rst RST_38                                    ; $5E7E: $FF
    rst RST_38                                    ; $5E7F: $FF
    jp c, $FF65                                   ; $5E80: $DA $65 $FF

    rst RST_38                                    ; $5E83: $FF
    ld b, b                                       ; $5E84: $40
    ld h, [hl]                                    ; $5E85: $66
    rst RST_38                                    ; $5E86: $FF
    rst RST_38                                    ; $5E87: $FF
    ld h, h                                       ; $5E88: $64
    ld h, [hl]                                    ; $5E89: $66
    rst RST_38                                    ; $5E8A: $FF
    rst RST_38                                    ; $5E8B: $FF
    rst RST_38                                    ; $5E8C: $FF
    rst RST_38                                    ; $5E8D: $FF
    ld c, d                                       ; $5E8E: $4A
    ld h, [hl]                                    ; $5E8F: $66
    rst RST_38                                    ; $5E90: $FF
    rst RST_38                                    ; $5E91: $FF
    rst RST_38                                    ; $5E92: $FF
    rst RST_38                                    ; $5E93: $FF
    daa                                           ; $5E94: $27
    ld h, b                                       ; $5E95: $60
    rst RST_38                                    ; $5E96: $FF
    rst RST_38                                    ; $5E97: $FF
    daa                                           ; $5E98: $27
    ld h, b                                       ; $5E99: $60
    rst RST_38                                    ; $5E9A: $FF
    rst RST_38                                    ; $5E9B: $FF
    rst RST_38                                    ; $5E9C: $FF
    rst RST_38                                    ; $5E9D: $FF
    sub h                                         ; $5E9E: $94
    ld h, c                                       ; $5E9F: $61
    rst RST_38                                    ; $5EA0: $FF
    rst RST_38                                    ; $5EA1: $FF
    pop hl                                        ; $5EA2: $E1
    ld h, c                                       ; $5EA3: $61
    dec b                                         ; $5EA4: $05
    ld h, d                                       ; $5EA5: $62
    rst RST_10                                    ; $5EA6: $D7
    ld h, c                                       ; $5EA7: $61
    ld a, [de]                                    ; $5EA8: $1A
    ld h, d                                       ; $5EA9: $62
    rst RST_38                                    ; $5EAA: $FF
    rst RST_38                                    ; $5EAB: $FF
    sub h                                         ; $5EAC: $94
    ld h, c                                       ; $5EAD: $61
    rst RST_38                                    ; $5EAE: $FF
    rst RST_38                                    ; $5EAF: $FF
    or c                                          ; $5EB0: $B1
    ld h, c                                       ; $5EB1: $61
    rst RST_38                                    ; $5EB2: $FF
    rst RST_38                                    ; $5EB3: $FF
    rst RST_10                                    ; $5EB4: $D7
    ld h, c                                       ; $5EB5: $61
    ld a, [de]                                    ; $5EB6: $1A
    ld h, d                                       ; $5EB7: $62
    rst RST_10                                    ; $5EB8: $D7
    ld h, c                                       ; $5EB9: $61
    ld a, [de]                                    ; $5EBA: $1A
    ld h, d                                       ; $5EBB: $62
    sub h                                         ; $5EBC: $94
    ld h, c                                       ; $5EBD: $61
    rst RST_38                                    ; $5EBE: $FF
    rst RST_38                                    ; $5EBF: $FF
    rst RST_38                                    ; $5EC0: $FF
    rst RST_38                                    ; $5EC1: $FF
    di                                            ; $5EC2: $F3
    ld h, b                                       ; $5EC3: $60
    rst RST_38                                    ; $5EC4: $FF
    rst RST_38                                    ; $5EC5: $FF
    ld a, e                                       ; $5EC6: $7B
    ld h, [hl]                                    ; $5EC7: $66
    rst RST_38                                    ; $5EC8: $FF
    rst RST_38                                    ; $5EC9: $FF
    sbc b                                         ; $5ECA: $98
    ld h, [hl]                                    ; $5ECB: $66
    rst RST_38                                    ; $5ECC: $FF
    rst RST_38                                    ; $5ECD: $FF
    jp nz, $FF66                                  ; $5ECE: $C2 $66 $FF

    rst RST_38                                    ; $5ED1: $FF
    rst RST_28                                    ; $5ED2: $EF
    ld h, [hl]                                    ; $5ED3: $66
    rst RST_38                                    ; $5ED4: $FF
    rst RST_38                                    ; $5ED5: $FF
    di                                            ; $5ED6: $F3
    ld h, b                                       ; $5ED7: $60
    rst RST_38                                    ; $5ED8: $FF
    rst RST_38                                    ; $5ED9: $FF
    rst RST_38                                    ; $5EDA: $FF
    rst RST_38                                    ; $5EDB: $FF
    daa                                           ; $5EDC: $27
    ld h, b                                       ; $5EDD: $60
    rst RST_38                                    ; $5EDE: $FF
    rst RST_38                                    ; $5EDF: $FF
    ld d, $67                                     ; $5EE0: $16 $67
    rst RST_38                                    ; $5EE2: $FF
    rst RST_38                                    ; $5EE3: $FF
    inc a                                         ; $5EE4: $3C
    ld h, a                                       ; $5EE5: $67
    rst RST_38                                    ; $5EE6: $FF
    rst RST_38                                    ; $5EE7: $FF
    ld e, a                                       ; $5EE8: $5F
    ld h, a                                       ; $5EE9: $67
    rst RST_38                                    ; $5EEA: $FF
    rst RST_38                                    ; $5EEB: $FF
    adc b                                         ; $5EEC: $88
    ld h, a                                       ; $5EED: $67
    rst RST_38                                    ; $5EEE: $FF
    rst RST_38                                    ; $5EEF: $FF
    daa                                           ; $5EF0: $27
    ld h, b                                       ; $5EF1: $60
    rst RST_38                                    ; $5EF2: $FF
    rst RST_38                                    ; $5EF3: $FF
    rst RST_38                                    ; $5EF4: $FF
    rst RST_38                                    ; $5EF5: $FF
    xor c                                         ; $5EF6: $A9
    ld h, h                                       ; $5EF7: $64
    rst RST_38                                    ; $5EF8: $FF
    rst RST_38                                    ; $5EF9: $FF
    xor b                                         ; $5EFA: $A8
    ld h, a                                       ; $5EFB: $67
    rst RST_38                                    ; $5EFC: $FF
    rst RST_38                                    ; $5EFD: $FF
    bit 4, a                                      ; $5EFE: $CB $67
    rst RST_38                                    ; $5F00: $FF
    rst RST_38                                    ; $5F01: $FF
    add sp, $67                                   ; $5F02: $E8 $67
    rst RST_38                                    ; $5F04: $FF
    rst RST_38                                    ; $5F05: $FF
    rst RST_38                                    ; $5F06: $FF
    rst RST_38                                    ; $5F07: $FF
    daa                                           ; $5F08: $27
    ld h, b                                       ; $5F09: $60
    rst RST_38                                    ; $5F0A: $FF
    rst RST_38                                    ; $5F0B: $FF
    halt                                          ; $5F0C: $76
    ld h, e                                       ; $5F0D: $63
    rst RST_38                                    ; $5F0E: $FF
    rst RST_38                                    ; $5F0F: $FF
    ld a, [bc]                                    ; $5F10: $0A
    ld h, c                                       ; $5F11: $61
    rst RST_38                                    ; $5F12: $FF
    rst RST_38                                    ; $5F13: $FF
    jr nc, jr_00B_5F77                            ; $5F14: $30 $61

    rst RST_38                                    ; $5F16: $FF
    rst RST_38                                    ; $5F17: $FF
    xor [hl]                                      ; $5F18: $AE
    ld h, d                                       ; $5F19: $62
    rst RST_38                                    ; $5F1A: $FF
    rst RST_38                                    ; $5F1B: $FF
    push de                                       ; $5F1C: $D5
    ld h, d                                       ; $5F1D: $62
    ld sp, hl                                     ; $5F1E: $F9
    ld h, d                                       ; $5F1F: $62
    push de                                       ; $5F20: $D5
    ld h, d                                       ; $5F21: $62
    ld [$9463], sp                                ; $5F22: $08 $63 $94
    ld h, c                                       ; $5F25: $61
    rst RST_38                                    ; $5F26: $FF
    rst RST_38                                    ; $5F27: $FF
    or c                                          ; $5F28: $B1
    ld h, c                                       ; $5F29: $61
    rst RST_38                                    ; $5F2A: $FF
    rst RST_38                                    ; $5F2B: $FF
    db $EB                                        ; $5F2C: $EB
    ld h, c                                       ; $5F2D: $61
    dec b                                         ; $5F2E: $05
    ld h, d                                       ; $5F2F: $62
    rst RST_10                                    ; $5F30: $D7
    ld h, c                                       ; $5F31: $61
    ld a, [de]                                    ; $5F32: $1A
    ld h, d                                       ; $5F33: $62
    ld d, b                                       ; $5F34: $50
    ld h, c                                       ; $5F35: $61
    rst RST_38                                    ; $5F36: $FF
    rst RST_38                                    ; $5F37: $FF
    rst RST_38                                    ; $5F38: $FF
    rst RST_38                                    ; $5F39: $FF
    ld sp, hl                                     ; $5F3A: $F9
    ld h, [hl]                                    ; $5F3B: $66
    rst RST_38                                    ; $5F3C: $FF
    rst RST_38                                    ; $5F3D: $FF
    rst RST_38                                    ; $5F3E: $FF
    ld h, a                                       ; $5F3F: $67
    rst RST_38                                    ; $5F40: $FF
    rst RST_38                                    ; $5F41: $FF
    jr z, jr_00B_5FAC                             ; $5F42: $28 $68

    rst RST_38                                    ; $5F44: $FF
    rst RST_38                                    ; $5F45: $FF
    ld d, c                                       ; $5F46: $51
    ld l, b                                       ; $5F47: $68
    rst RST_38                                    ; $5F48: $FF
    rst RST_38                                    ; $5F49: $FF
    ld a, d                                       ; $5F4A: $7A
    ld l, b                                       ; $5F4B: $68
    rst RST_38                                    ; $5F4C: $FF
    rst RST_38                                    ; $5F4D: $FF
    xor h                                         ; $5F4E: $AC
    ld l, b                                       ; $5F4F: $68
    rst RST_38                                    ; $5F50: $FF
    rst RST_38                                    ; $5F51: $FF
    db $DB                                        ; $5F52: $DB
    ld l, b                                       ; $5F53: $68
    rst RST_38                                    ; $5F54: $FF
    rst RST_38                                    ; $5F55: $FF
    rlca                                          ; $5F56: $07
    ld l, c                                       ; $5F57: $69
    rst RST_38                                    ; $5F58: $FF
    rst RST_38                                    ; $5F59: $FF
    jr nc, jr_00B_5FC5                            ; $5F5A: $30 $69

    rst RST_38                                    ; $5F5C: $FF
    rst RST_38                                    ; $5F5D: $FF
    ld e, c                                       ; $5F5E: $59
    ld l, c                                       ; $5F5F: $69
    rst RST_38                                    ; $5F60: $FF
    rst RST_38                                    ; $5F61: $FF
    daa                                           ; $5F62: $27
    ld h, b                                       ; $5F63: $60
    rst RST_38                                    ; $5F64: $FF
    rst RST_38                                    ; $5F65: $FF
    rst RST_38                                    ; $5F66: $FF
    rst RST_38                                    ; $5F67: $FF
    ld [hl], e                                    ; $5F68: $73
    ld l, c                                       ; $5F69: $69
    rst RST_38                                    ; $5F6A: $FF
    rst RST_38                                    ; $5F6B: $FF
    adc l                                         ; $5F6C: $8D
    ld l, c                                       ; $5F6D: $69
    rst RST_38                                    ; $5F6E: $FF
    rst RST_38                                    ; $5F6F: $FF
    xor l                                         ; $5F70: $AD
    ld l, c                                       ; $5F71: $69
    rst RST_38                                    ; $5F72: $FF
    rst RST_38                                    ; $5F73: $FF
    ret nc                                        ; $5F74: $D0

    ld l, c                                       ; $5F75: $69
    rst RST_20                                    ; $5F76: $E7

jr_00B_5F77:
    ld l, c                                       ; $5F77: $69
    ret nc                                        ; $5F78: $D0

    ld l, c                                       ; $5F79: $69
    rst RST_38                                    ; $5F7A: $FF
    ld l, c                                       ; $5F7B: $69
    cp b                                          ; $5F7C: $B8
    ld h, d                                       ; $5F7D: $62
    rst RST_38                                    ; $5F7E: $FF
    rst RST_38                                    ; $5F7F: $FF
    rst RST_18                                    ; $5F80: $DF
    ld h, d                                       ; $5F81: $62
    ld sp, hl                                     ; $5F82: $F9
    ld h, d                                       ; $5F83: $62
    rst RST_18                                    ; $5F84: $DF
    ld h, d                                       ; $5F85: $62
    ld [$7363], sp                                ; $5F86: $08 $63 $73
    ld l, c                                       ; $5F89: $69
    rst RST_38                                    ; $5F8A: $FF
    rst RST_38                                    ; $5F8B: $FF
    bit 4, a                                      ; $5F8C: $CB $67
    rst RST_38                                    ; $5F8E: $FF
    rst RST_38                                    ; $5F8F: $FF
    add sp, $67                                   ; $5F90: $E8 $67
    rst RST_38                                    ; $5F92: $FF
    rst RST_38                                    ; $5F93: $FF
    rst RST_38                                    ; $5F94: $FF
    rst RST_38                                    ; $5F95: $FF
    xor [hl]                                      ; $5F96: $AE
    ld h, d                                       ; $5F97: $62
    rst RST_38                                    ; $5F98: $FF
    rst RST_38                                    ; $5F99: $FF
    and d                                         ; $5F9A: $A2
    ld h, [hl]                                    ; $5F9B: $66
    rst RST_38                                    ; $5F9C: $FF
    rst RST_38                                    ; $5F9D: $FF
    call z, $FF66                                 ; $5F9E: $CC $66 $FF
    rst RST_38                                    ; $5FA1: $FF
    ld e, d                                       ; $5FA2: $5A
    ld h, c                                       ; $5FA3: $61
    rst RST_38                                    ; $5FA4: $FF
    rst RST_38                                    ; $5FA5: $FF
    rst RST_38                                    ; $5FA6: $FF
    rst RST_38                                    ; $5FA7: $FF
    nop                                           ; $5FA8: $00
    ld [$0000], a                                 ; $5FA9: $EA $00 $00

jr_00B_5FAC:
    ld b, b                                       ; $5FAC: $40
    ld e, $B2                                     ; $5FAD: $1E $B2
    ld e, a                                       ; $5FAF: $5F
    nop                                           ; $5FB0: $00
    nop                                           ; $5FB1: $00
    dec b                                         ; $5FB2: $05
    jr nc, jr_00B_5FAC                            ; $5FB3: $30 $F7

    nop                                           ; $5FB5: $00
    jr nc, @+$01                                  ; $5FB6: $30 $FF

    ld [bc], a                                    ; $5FB8: $02
    jr nz, @-$05                                  ; $5FB9: $20 $F9

    inc b                                         ; $5FBB: $04
    jr nz, @+$03                                  ; $5FBC: $20 $01

    ld b, $30                                     ; $5FBE: $06 $30
    rlca                                          ; $5FC0: $07
    ld [$EA00], sp                                ; $5FC1: $08 $00 $EA
    nop                                           ; $5FC4: $00

jr_00B_5FC5:
    and b                                         ; $5FC5: $A0
    ld b, b                                       ; $5FC6: $40
    ld e, $CC                                     ; $5FC7: $1E $CC
    ld e, a                                       ; $5FC9: $5F
    nop                                           ; $5FCA: $00
    nop                                           ; $5FCB: $00
    dec b                                         ; $5FCC: $05
    jr nc, jr_00B_5FC5                            ; $5FCD: $30 $F6

    nop                                           ; $5FCF: $00

jr_00B_5FD0:
    jr nc, jr_00B_5FD0                            ; $5FD0: $30 $FE

    ld [bc], a                                    ; $5FD2: $02
    jr nc, jr_00B_5FDB                            ; $5FD3: $30 $06

    inc b                                         ; $5FD5: $04
    jr nz, jr_00B_5FD0                            ; $5FD6: $20 $F8

    ld b, $20                                     ; $5FD8: $06 $20
    nop                                           ; $5FDA: $00

jr_00B_5FDB:
    ld [$EA00], sp                                ; $5FDB: $08 $00 $EA
    nop                                           ; $5FDE: $00
    ld b, b                                       ; $5FDF: $40

jr_00B_5FE0:
    ld b, c                                       ; $5FE0: $41
    ld e, $E6                                     ; $5FE1: $1E $E6
    ld e, a                                       ; $5FE3: $5F
    nop                                           ; $5FE4: $00
    nop                                           ; $5FE5: $00

jr_00B_5FE6:
    dec b                                         ; $5FE6: $05
    jr nc, jr_00B_5FE0                            ; $5FE7: $30 $F7

    nop                                           ; $5FE9: $00
    jr nc, @+$01                                  ; $5FEA: $30 $FF

    ld [bc], a                                    ; $5FEC: $02
    jr nz, jr_00B_5FE6                            ; $5FED: $20 $F7

    inc b                                         ; $5FEF: $04
    jr nz, @+$01                                  ; $5FF0: $20 $FF

    ld b, $38                                     ; $5FF2: $06 $38
    rlca                                          ; $5FF4: $07
    ld [$EA00], sp                                ; $5FF5: $08 $00 $EA
    nop                                           ; $5FF8: $00
    ldh [rSTAT], a                                ; $5FF9: $E0 $41
    ld e, $00                                     ; $5FFB: $1E $00
    ld h, b                                       ; $5FFD: $60
    nop                                           ; $5FFE: $00
    nop                                           ; $5FFF: $00
    dec b                                         ; $6000: $05
    jr nc, @-$07                                  ; $6001: $30 $F7

    nop                                           ; $6003: $00
    jr nc, @+$01                                  ; $6004: $30 $FF

    ld [bc], a                                    ; $6006: $02
    jr nz, @-$05                                  ; $6007: $20 $F9

    inc b                                         ; $6009: $04
    jr nz, @+$03                                  ; $600A: $20 $01

    ld b, $30                                     ; $600C: $06 $30
    rlca                                          ; $600E: $07
    ld [$EA00], sp                                ; $600F: $08 $00 $EA
    nop                                           ; $6012: $00
    add b                                         ; $6013: $80

jr_00B_6014:
    ld b, d                                       ; $6014: $42
    ld e, $1A                                     ; $6015: $1E $1A
    ld h, b                                       ; $6017: $60
    nop                                           ; $6018: $00
    nop                                           ; $6019: $00
    inc b                                         ; $601A: $04
    jr nc, jr_00B_6014                            ; $601B: $30 $F7

    nop                                           ; $601D: $00
    jr nc, @+$01                                  ; $601E: $30 $FF

    ld [bc], a                                    ; $6020: $02
    jr nz, @-$05                                  ; $6021: $20 $F9

    inc b                                         ; $6023: $04
    dec h                                         ; $6024: $25
    ld bc, $0006                                  ; $6025: $01 $06 $00

jr_00B_6028:
    ld [$0000], a                                 ; $6028: $EA $00 $00
    ld b, e                                       ; $602B: $43
    ld e, $31                                     ; $602C: $1E $31
    ld h, b                                       ; $602E: $60
    ld [bc], a                                    ; $602F: $02
    nop                                           ; $6030: $00
    inc b                                         ; $6031: $04
    jr nc, jr_00B_6028                            ; $6032: $30 $F4

    nop                                           ; $6034: $00
    jr nc, @-$02                                  ; $6035: $30 $FC

    ld [bc], a                                    ; $6037: $02
    cpl                                           ; $6038: $2F
    ld bc, $2004                                  ; $6039: $01 $04 $20
    ld sp, hl                                     ; $603C: $F9
    ld b, $00                                     ; $603D: $06 $00
    ld [$8000], a                                 ; $603F: $EA $00 $80
    ld b, e                                       ; $6042: $43
    ld e, $48                                     ; $6043: $1E $48
    ld h, b                                       ; $6045: $60
    nop                                           ; $6046: $00
    ld [$1E04], sp                                ; $6047: $08 $04 $1E
    rst RST_30                                    ; $604A: $F7
    nop                                           ; $604B: $00
    ld e, $FF                                     ; $604C: $1E $FF
    ld [bc], a                                    ; $604E: $02
    ld l, $FA                                     ; $604F: $2E $FA
    inc b                                         ; $6051: $04
    ld l, $02                                     ; $6052: $2E $02
    ld b, $00                                     ; $6054: $06 $00
    ld [$0000], a                                 ; $6056: $EA $00 $00
    ld b, h                                       ; $6059: $44
    ld e, $5F                                     ; $605A: $1E $5F
    ld h, b                                       ; $605C: $60
    rst RST_38                                    ; $605D: $FF
    inc de                                        ; $605E: $13
    inc b                                         ; $605F: $04
    inc d                                         ; $6060: $14
    rst RST_30                                    ; $6061: $F7
    nop                                           ; $6062: $00
    inc d                                         ; $6063: $14
    rst RST_38                                    ; $6064: $FF
    ld [bc], a                                    ; $6065: $02
    inc h                                         ; $6066: $24
    db $FD                                        ; $6067: $FD
    inc b                                         ; $6068: $04
    inc e                                         ; $6069: $1C
    rlca                                          ; $606A: $07
    ld b, $00                                     ; $606B: $06 $00
    ld [$8000], a                                 ; $606D: $EA $00 $80
    ld b, h                                       ; $6070: $44
    ld e, $80                                     ; $6071: $1E $80
    ld h, b                                       ; $6073: $60
    ei                                            ; $6074: $FB
    ld [$EA60], sp                                ; $6075: $08 $60 $EA
    nop                                           ; $6078: $00
    add b                                         ; $6079: $80
    ld b, h                                       ; $607A: $44
    ld e, $80                                     ; $607B: $1E $80
    ld h, b                                       ; $607D: $60
    dec b                                         ; $607E: $05
    ld sp, hl                                     ; $607F: $F9
    inc b                                         ; $6080: $04
    ld hl, $0007                                  ; $6081: $21 $07 $00
    inc hl                                        ; $6084: $23
    rst RST_38                                    ; $6085: $FF
    ld [bc], a                                    ; $6086: $02
    inc de                                        ; $6087: $13
    rst RST_38                                    ; $6088: $FF
    inc b                                         ; $6089: $04
    dec de                                        ; $608A: $1B
    rst RST_30                                    ; $608B: $F7
    ld b, $00                                     ; $608C: $06 $00
    ld [$0000], a                                 ; $608E: $EA $00 $00
    ld b, l                                       ; $6091: $45
    ld e, $A1                                     ; $6092: $1E $A1
    ld h, b                                       ; $6094: $60
    nop                                           ; $6095: $00
    ld c, $60                                     ; $6096: $0E $60
    ld [$0000], a                                 ; $6098: $EA $00 $00

jr_00B_609B:
    ld b, l                                       ; $609B: $45
    ld e, $A1                                     ; $609C: $1E $A1
    ld h, b                                       ; $609E: $60
    rst RST_38                                    ; $609F: $FF
    push af                                       ; $60A0: $F5

jr_00B_60A1:
    inc b                                         ; $60A1: $04
    jr jr_00B_609B                                ; $60A2: $18 $F7

    nop                                           ; $60A4: $00
    ld a, [de]                                    ; $60A5: $1A
    rst RST_38                                    ; $60A6: $FF
    ld [bc], a                                    ; $60A7: $02
    jr z, jr_00B_60A1                             ; $60A8: $28 $F7

    inc b                                         ; $60AA: $04
    rra                                           ; $60AB: $1F
    ld [bc], a                                    ; $60AC: $02
    ld b, $00                                     ; $60AD: $06 $00
    ld [$8000], a                                 ; $60AF: $EA $00 $80
    ld b, l                                       ; $60B2: $45
    ld e, $B8                                     ; $60B3: $1E $B8
    ld h, b                                       ; $60B5: $60
    ld hl, sp+$00                                 ; $60B6: $F8 $00
    dec b                                         ; $60B8: $05
    jr nc, jr_00B_60BB                            ; $60B9: $30 $00

jr_00B_60BB:
    nop                                           ; $60BB: $00
    jr nc, jr_00B_60C6                            ; $60BC: $30 $08

    ld [bc], a                                    ; $60BE: $02
    jr nz, jr_00B_60C2                            ; $60BF: $20 $01

    inc b                                         ; $60C1: $04

jr_00B_60C2:
    jr nz, jr_00B_60CD                            ; $60C2: $20 $09

    ld b, $38                                     ; $60C4: $06 $38

jr_00B_60C6:
    db $10                                        ; $60C6: $10
    ld [$EA00], sp                                ; $60C7: $08 $00 $EA
    nop                                           ; $60CA: $00
    jr nz, jr_00B_6113                            ; $60CB: $20 $46

jr_00B_60CD:
    ld e, $D2                                     ; $60CD: $1E $D2
    ld h, b                                       ; $60CF: $60
    ld [bc], a                                    ; $60D0: $02
    nop                                           ; $60D1: $00
    inc b                                         ; $60D2: $04
    jr nc, jr_00B_60CD                            ; $60D3: $30 $F8

    nop                                           ; $60D5: $00

jr_00B_60D6:
    cpl                                           ; $60D6: $2F
    nop                                           ; $60D7: $00
    ld [bc], a                                    ; $60D8: $02
    jr nc, jr_00B_60E3                            ; $60D9: $30 $08

    inc b                                         ; $60DB: $04
    jr nz, jr_00B_60D6                            ; $60DC: $20 $F8

    ld b, $00                                     ; $60DE: $06 $00
    ld [$A000], a                                 ; $60E0: $EA $00 $A0

jr_00B_60E3:
    ld b, [hl]                                    ; $60E3: $46
    ld e, $E9                                     ; $60E4: $1E $E9
    ld h, b                                       ; $60E6: $60
    nop                                           ; $60E7: $00
    ld d, $03                                     ; $60E8: $16 $03
    inc de                                        ; $60EA: $13
    ld sp, hl                                     ; $60EB: $F9
    nop                                           ; $60EC: $00
    inc de                                        ; $60ED: $13
    ld bc, $2302                                  ; $60EE: $01 $02 $23
    db $FC                                        ; $60F1: $FC
    inc b                                         ; $60F2: $04
    nop                                           ; $60F3: $00
    ld [$C000], a                                 ; $60F4: $EA $00 $C0
    ld c, c                                       ; $60F7: $49
    ld e, $FD                                     ; $60F8: $1E $FD
    ld h, b                                       ; $60FA: $60
    ld hl, sp+$00                                 ; $60FB: $F8 $00
    inc b                                         ; $60FD: $04
    jr nc, jr_00B_6104                            ; $60FE: $30 $04

    nop                                           ; $6100: $00
    jr nc, jr_00B_610F                            ; $6101: $30 $0C

    ld [bc], a                                    ; $6103: $02

jr_00B_6104:
    jr nz, jr_00B_6109                            ; $6104: $20 $03

    inc b                                         ; $6106: $04
    jr nz, jr_00B_6114                            ; $6107: $20 $0B

jr_00B_6109:
    ld b, $00                                     ; $6109: $06 $00
    ld [$40EB], a                                 ; $610B: $EA $EB $40
    ld c, d                                       ; $610E: $4A

jr_00B_610F:
    ld e, $14                                     ; $610F: $1E $14
    ld h, c                                       ; $6111: $61
    ld sp, hl                                     ; $6112: $F9

jr_00B_6113:
    nop                                           ; $6113: $00

jr_00B_6114:
    add hl, bc                                    ; $6114: $09
    daa                                           ; $6115: $27
    jp hl                                         ; $6116: $E9


    nop                                           ; $6117: $00
    daa                                           ; $6118: $27
    pop af                                        ; $6119: $F1
    ld [bc], a                                    ; $611A: $02
    cpl                                           ; $611B: $2F
    ld sp, hl                                     ; $611C: $F9
    inc b                                         ; $611D: $04
    cpl                                           ; $611E: $2F
    ld bc, $3006                                  ; $611F: $01 $06 $30
    add hl, bc                                    ; $6122: $09
    ld [$F91F], sp                                ; $6123: $08 $1F $F9
    ld a, [bc]                                    ; $6126: $0A
    rra                                           ; $6127: $1F
    ld bc, $200C                                  ; $6128: $01 $0C $20
    add hl, bc                                    ; $612B: $09
    ld c, $17                                     ; $612C: $0E $17
    pop af                                        ; $612E: $F1
    stop                                          ; $612F: $10 $00
    ld [$60EB], a                                 ; $6131: $EA $EB $60
    ld c, e                                       ; $6134: $4B
    ld e, $3A                                     ; $6135: $1E $3A
    ld h, c                                       ; $6137: $61
    ld sp, hl                                     ; $6138: $F9
    nop                                           ; $6139: $00
    rlca                                          ; $613A: $07
    ld h, $ED                                     ; $613B: $26 $ED
    nop                                           ; $613D: $00
    ld [hl-], a                                   ; $613E: $32
    push af                                       ; $613F: $F5
    ld [bc], a                                    ; $6140: $02
    cpl                                           ; $6141: $2F
    db $FD                                        ; $6142: $FD
    inc b                                         ; $6143: $04
    jr nc, @+$07                                  ; $6144: $30 $05

jr_00B_6146:
    ld b, $32                                     ; $6146: $06 $32
    dec c                                         ; $6148: $0D
    ld [$FD1F], sp                                ; $6149: $08 $1F $FD
    ld a, [bc]                                    ; $614C: $0A
    jr nz, jr_00B_6154                            ; $614D: $20 $05

    inc c                                         ; $614F: $0C
    nop                                           ; $6150: $00
    ld [$4000], a                                 ; $6151: $EA $00 $40

jr_00B_6154:
    ld c, h                                       ; $6154: $4C
    ld e, $64                                     ; $6155: $1E $64
    ld h, c                                       ; $6157: $61
    pop af                                        ; $6158: $F1
    nop                                           ; $6159: $00
    jr nz, jr_00B_6146                            ; $615A: $20 $EA

    nop                                           ; $615C: $00
    ld b, b                                       ; $615D: $40
    ld c, h                                       ; $615E: $4C
    ld e, $64                                     ; $615F: $1E $64
    ld h, c                                       ; $6161: $61
    ld hl, sp+$00                                 ; $6162: $F8 $00
    dec b                                         ; $6164: $05
    jr nc, jr_00B_616E                            ; $6165: $30 $07

    nop                                           ; $6167: $00
    jr nc, jr_00B_6179                            ; $6168: $30 $0F

    ld [bc], a                                    ; $616A: $02
    jr c, jr_00B_6184                             ; $616B: $38 $17

    inc b                                         ; $616D: $04

jr_00B_616E:
    jr nz, @+$08                                  ; $616E: $20 $06

    ld b, $20                                     ; $6170: $06 $20
    ld c, $08                                     ; $6172: $0E $08
    nop                                           ; $6174: $00
    ld [$E0EB], a                                 ; $6175: $EA $EB $E0
    ld c, h                                       ; $6178: $4C

jr_00B_6179:
    ld e, $7E                                     ; $6179: $1E $7E
    ld h, c                                       ; $617B: $61
    ldh a, [c]                                    ; $617C: $F2
    nop                                           ; $617D: $00
    rlca                                          ; $617E: $07
    ld [hl-], a                                   ; $617F: $32
    rst RST_28                                    ; $6180: $EF
    nop                                           ; $6181: $00
    dec hl                                        ; $6182: $2B
    rst RST_30                                    ; $6183: $F7

jr_00B_6184:
    ld [bc], a                                    ; $6184: $02
    jr nc, @+$01                                  ; $6185: $30 $FF

    inc b                                         ; $6187: $04
    jr nc, jr_00B_6191                            ; $6188: $30 $07

    ld b, $20                                     ; $618A: $06 $20
    inc b                                         ; $618C: $04
    ld [$0C20], sp                                ; $618D: $08 $20 $0C
    ld a, [bc]                                    ; $6190: $0A

jr_00B_6191:
    jr nc, jr_00B_61A2                            ; $6191: $30 $0F

    inc c                                         ; $6193: $0C
    nop                                           ; $6194: $00
    ld [$C000], a                                 ; $6195: $EA $00 $C0
    ld c, l                                       ; $6198: $4D
    ld e, $9E                                     ; $6199: $1E $9E
    ld h, c                                       ; $619B: $61
    db $EB                                        ; $619C: $EB
    nop                                           ; $619D: $00
    ld b, $30                                     ; $619E: $06 $30
    dec bc                                        ; $61A0: $0B
    nop                                           ; $61A1: $00

jr_00B_61A2:
    jr nc, @+$15                                  ; $61A2: $30 $13

    ld [bc], a                                    ; $61A4: $02
    jr nz, @+$0F                                  ; $61A5: $20 $0D

    inc b                                         ; $61A7: $04
    jr nz, jr_00B_61BF                            ; $61A8: $20 $15

    ld b, $30                                     ; $61AA: $06 $30
    dec de                                        ; $61AC: $1B
    ld [$2326], sp                                ; $61AD: $08 $26 $23
    ld a, [bc]                                    ; $61B0: $0A
    nop                                           ; $61B1: $00
    ld [$80F1], a                                 ; $61B2: $EA $F1 $80
    ld c, [hl]                                    ; $61B5: $4E
    ld e, $BB                                     ; $61B6: $1E $BB
    ld h, c                                       ; $61B8: $61
    db $EB                                        ; $61B9: $EB
    nop                                           ; $61BA: $00
    add hl, bc                                    ; $61BB: $09
    dec hl                                        ; $61BC: $2B
    rst RST_28                                    ; $61BD: $EF
    nop                                           ; $61BE: $00

jr_00B_61BF:
    daa                                           ; $61BF: $27
    rst RST_30                                    ; $61C0: $F7
    ld [bc], a                                    ; $61C1: $02
    jr z, @+$01                                   ; $61C2: $28 $FF

    inc b                                         ; $61C4: $04
    jr z, jr_00B_61CE                             ; $61C5: $28 $07

    ld b, $28                                     ; $61C7: $06 $28
    rrca                                          ; $61C9: $0F
    ld [$171F], sp                                ; $61CA: $08 $1F $17
    ld a, [bc]                                    ; $61CD: $0A

jr_00B_61CE:
    jr c, @+$04                                   ; $61CE: $38 $02

    inc c                                         ; $61D0: $0C
    jr c, @+$0C                                   ; $61D1: $38 $0A

    ld c, $3E                                     ; $61D3: $0E $3E
    ld [de], a                                    ; $61D5: $12
    stop                                          ; $61D6: $10 $00
    ld [$A000], a                                 ; $61D8: $EA $00 $A0
    ld c, a                                       ; $61DB: $4F
    ld e, $F5                                     ; $61DC: $1E $F5
    ld h, c                                       ; $61DE: $61
    db $EB                                        ; $61DF: $EB
    nop                                           ; $61E0: $00
    nop                                           ; $61E1: $00
    ld [$A005], a                                 ; $61E2: $EA $05 $A0
    ld c, a                                       ; $61E5: $4F
    ld e, $F5                                     ; $61E6: $1E $F5
    ld h, c                                       ; $61E8: $61
    db $EB                                        ; $61E9: $EB
    nop                                           ; $61EA: $00
    nop                                           ; $61EB: $00
    ld [$A0F1], a                                 ; $61EC: $EA $F1 $A0
    ld c, a                                       ; $61EF: $4F
    ld e, $F5                                     ; $61F0: $1E $F5
    ld h, c                                       ; $61F2: $61
    db $EB                                        ; $61F3: $EB
    nop                                           ; $61F4: $00
    dec b                                         ; $61F5: $05
    cpl                                           ; $61F6: $2F
    rst RST_38                                    ; $61F7: $FF
    nop                                           ; $61F8: $00
    cpl                                           ; $61F9: $2F
    rlca                                          ; $61FA: $07
    ld [bc], a                                    ; $61FB: $02
    inc sp                                        ; $61FC: $33
    rrca                                          ; $61FD: $0F
    inc b                                         ; $61FE: $04
    rra                                           ; $61FF: $1F
    inc b                                         ; $6200: $04
    ld b, $1F                                     ; $6201: $06 $1F
    inc c                                         ; $6203: $0C
    ld [$4000], sp                                ; $6204: $08 $00 $40
    ld d, b                                       ; $6207: $50
    ld e, $0D                                     ; $6208: $1E $0D
    ld h, d                                       ; $620A: $62
    db $EB                                        ; $620B: $EB
    nop                                           ; $620C: $00
    inc b                                         ; $620D: $04
    inc hl                                        ; $620E: $23
    ldh a, [rP1]                                  ; $620F: $F0 $00
    inc sp                                        ; $6211: $33
    ldh a, [rSC]                                  ; $6212: $F0 $02
    ld [hl+], a                                   ; $6214: $22
    ld hl, sp+$04                                 ; $6215: $F8 $04
    ld [hl-], a                                   ; $6217: $32
    ld hl, sp+$06                                 ; $6218: $F8 $06
    nop                                           ; $621A: $00
    ret nz                                        ; $621B: $C0

    ld d, b                                       ; $621C: $50
    ld e, $22                                     ; $621D: $1E $22
    ld h, d                                       ; $621F: $62
    db $EB                                        ; $6220: $EB
    nop                                           ; $6221: $00
    ld [bc], a                                    ; $6222: $02
    inc hl                                        ; $6223: $23
    di                                            ; $6224: $F3
    nop                                           ; $6225: $00
    cpl                                           ; $6226: $2F
    ei                                            ; $6227: $FB
    ld [bc], a                                    ; $6228: $02
    nop                                           ; $6229: $00
    ld [$0000], a                                 ; $622A: $EA $00 $00
    ld d, c                                       ; $622D: $51
    ld e, $33                                     ; $622E: $1E $33
    ld h, d                                       ; $6230: $62
    ld a, [$0500]                                 ; $6231: $FA $00 $05
    jr nc, jr_00B_6236                            ; $6234: $30 $00

jr_00B_6236:
    nop                                           ; $6236: $00
    jr nc, jr_00B_6241                            ; $6237: $30 $08

    ld [bc], a                                    ; $6239: $02
    jr nz, @+$04                                  ; $623A: $20 $02

    inc b                                         ; $623C: $04
    jr nz, @+$0C                                  ; $623D: $20 $0A

    ld b, $30                                     ; $623F: $06 $30

jr_00B_6241:
    db $10                                        ; $6241: $10
    ld [$EA00], sp                                ; $6242: $08 $00 $EA
    db $EB                                        ; $6245: $EB
    and b                                         ; $6246: $A0
    ld d, c                                       ; $6247: $51
    ld e, $4D                                     ; $6248: $1E $4D
    ld h, d                                       ; $624A: $62
    ld sp, hl                                     ; $624B: $F9
    nop                                           ; $624C: $00
    ld b, $35                                     ; $624D: $06 $35
    db $EB                                        ; $624F: $EB
    nop                                           ; $6250: $00
    add hl, hl                                    ; $6251: $29
    di                                            ; $6252: $F3
    ld [bc], a                                    ; $6253: $02
    dec l                                         ; $6254: $2D
    ei                                            ; $6255: $FB
    inc b                                         ; $6256: $04
    dec l                                         ; $6257: $2D
    inc bc                                        ; $6258: $03
    ld b, $3D                                     ; $6259: $06 $3D
    nop                                           ; $625B: $00
    ld [$0834], sp                                ; $625C: $08 $34 $08
    ld a, [bc]                                    ; $625F: $0A
    nop                                           ; $6260: $00
    ld [$6000], a                                 ; $6261: $EA $00 $60
    ld d, d                                       ; $6264: $52
    ld e, $74                                     ; $6265: $1E $74
    ld h, d                                       ; $6267: $62
    di                                            ; $6268: $F3
    nop                                           ; $6269: $00
    nop                                           ; $626A: $00
    ld [$6000], a                                 ; $626B: $EA $00 $60
    ld d, d                                       ; $626E: $52
    ld e, $74                                     ; $626F: $1E $74
    ld h, d                                       ; $6271: $62
    pop af                                        ; $6272: $F1
    ei                                            ; $6273: $FB
    dec b                                         ; $6274: $05
    jr nc, jr_00B_627A                            ; $6275: $30 $03

    nop                                           ; $6277: $00
    jr nc, @+$0D                                  ; $6278: $30 $0B

jr_00B_627A:
    ld [bc], a                                    ; $627A: $02
    jr nc, @+$15                                  ; $627B: $30 $13

    inc b                                         ; $627D: $04
    jr nz, @+$0C                                  ; $627E: $20 $0A

    ld b, $20                                     ; $6280: $06 $20
    ld [de], a                                    ; $6282: $12
    ld [$EA00], sp                                ; $6283: $08 $00 $EA
    ldh a, [c]                                    ; $6286: $F2
    nop                                           ; $6287: $00
    ld d, e                                       ; $6288: $53
    ld e, $98                                     ; $6289: $1E $98
    ld h, d                                       ; $628B: $62
    db $ED                                        ; $628C: $ED
    nop                                           ; $628D: $00
    nop                                           ; $628E: $00
    ld [$00EB], a                                 ; $628F: $EA $EB $00
    ld d, e                                       ; $6292: $53
    ld e, $98                                     ; $6293: $1E $98

jr_00B_6295:
    ld h, d                                       ; $6295: $62
    push af                                       ; $6296: $F5
    ld a, [$3007]                                 ; $6297: $FA $07 $30
    rst RST_28                                    ; $629A: $EF
    nop                                           ; $629B: $00
    jr nc, jr_00B_6295                            ; $629C: $30 $F7

    ld [bc], a                                    ; $629E: $02
    jr nc, @+$01                                  ; $629F: $30 $FF

    inc b                                         ; $62A1: $04
    jr nc, jr_00B_62AB                            ; $62A2: $30 $07

    ld b, $30                                     ; $62A4: $06 $30
    rrca                                          ; $62A6: $0F
    ld [$0820], sp                                ; $62A7: $08 $20 $08
    ld a, [bc]                                    ; $62AA: $0A

jr_00B_62AB:
    jr nz, jr_00B_62BD                            ; $62AB: $20 $10

    inc c                                         ; $62AD: $0C
    nop                                           ; $62AE: $00
    ld [$E0EC], a                                 ; $62AF: $EA $EC $E0
    ld d, e                                       ; $62B2: $53
    ld e, $C2                                     ; $62B3: $1E $C2
    ld h, d                                       ; $62B5: $62
    ldh a, [rP1]                                  ; $62B6: $F0 $00
    nop                                           ; $62B8: $00
    ld [$E000], a                                 ; $62B9: $EA $00 $E0
    ld d, e                                       ; $62BC: $53

jr_00B_62BD:
    ld e, $C2                                     ; $62BD: $1E $C2
    ld h, d                                       ; $62BF: $62
    ldh a, [rP1]                                  ; $62C0: $F0 $00
    ld b, $2C                                     ; $62C2: $06 $2C
    ld hl, sp+$00                                 ; $62C4: $F8 $00
    inc l                                         ; $62C6: $2C
    nop                                           ; $62C7: $00
    ld [bc], a                                    ; $62C8: $02
    inc l                                         ; $62C9: $2C
    ld [$3C04], sp                                ; $62CA: $08 $04 $3C
    db $FD                                        ; $62CD: $FD
    ld b, $3C                                     ; $62CE: $06 $3C
    dec b                                         ; $62D0: $05
    ld [$0D3B], sp                                ; $62D1: $08 $3B $0D
    ld a, [bc]                                    ; $62D4: $0A
    nop                                           ; $62D5: $00
    ld [$A0EC], a                                 ; $62D6: $EA $EC $A0
    ld d, h                                       ; $62D9: $54
    ld e, $E9                                     ; $62DA: $1E $E9
    ld h, d                                       ; $62DC: $62
    ldh a, [rP1]                                  ; $62DD: $F0 $00
    nop                                           ; $62DF: $00
    ld [$A000], a                                 ; $62E0: $EA $00 $A0
    ld d, h                                       ; $62E3: $54
    ld e, $E9                                     ; $62E4: $1E $E9
    ld h, d                                       ; $62E6: $62
    ldh a, [rP1]                                  ; $62E7: $F0 $00
    dec b                                         ; $62E9: $05
    jr nc, @+$04                                  ; $62EA: $30 $02

    nop                                           ; $62EC: $00
    jr nc, @+$0C                                  ; $62ED: $30 $0A

    ld [bc], a                                    ; $62EF: $02
    scf                                           ; $62F0: $37
    ld [de], a                                    ; $62F1: $12
    inc b                                         ; $62F2: $04
    jr nz, jr_00B_62FC                            ; $62F3: $20 $07

    ld b, $20                                     ; $62F5: $06 $20
    rrca                                          ; $62F7: $0F
    ld [$4000], sp                                ; $62F8: $08 $00 $40
    ld d, l                                       ; $62FB: $55

jr_00B_62FC:
    ld e, $01                                     ; $62FC: $1E $01
    ld h, e                                       ; $62FE: $63
    ldh a, [rP1]                                  ; $62FF: $F0 $00
    ld [bc], a                                    ; $6301: $02
    jr nz, @+$01                                  ; $6302: $20 $FF

    nop                                           ; $6304: $00
    dec h                                         ; $6305: $25
    rst RST_30                                    ; $6306: $F7
    ld [bc], a                                    ; $6307: $02
    nop                                           ; $6308: $00
    add b                                         ; $6309: $80
    ld d, l                                       ; $630A: $55
    ld e, $10                                     ; $630B: $1E $10
    ld h, e                                       ; $630D: $63
    ldh a, [rP1]                                  ; $630E: $F0 $00
    ld bc, $FF20                                  ; $6310: $01 $20 $FF
    nop                                           ; $6313: $00
    nop                                           ; $6314: $00
    ld [$A0EC], a                                 ; $6315: $EA $EC $A0
    ld d, l                                       ; $6318: $55
    ld e, $1E                                     ; $6319: $1E $1E
    ld h, e                                       ; $631B: $63
    nop                                           ; $631C: $00
    inc c                                         ; $631D: $0C
    ld b, $1D                                     ; $631E: $06 $1D
    rst RST_28                                    ; $6320: $EF
    nop                                           ; $6321: $00
    dec e                                         ; $6322: $1D
    rst RST_30                                    ; $6323: $F7
    ld [bc], a                                    ; $6324: $02
    jr nz, @+$01                                  ; $6325: $20 $FF

    inc b                                         ; $6327: $04
    db $10                                        ; $6328: $10
    rst RST_38                                    ; $6329: $FF
    ld b, $0D                                     ; $632A: $06 $0D
    rst RST_30                                    ; $632C: $F7
    ld [$EF0D], sp                                ; $632D: $08 $0D $EF
    ld a, [bc]                                    ; $6330: $0A
    nop                                           ; $6331: $00
    ld [$60EC], a                                 ; $6332: $EA $EC $60
    ld d, [hl]                                    ; $6335: $56
    ld e, $3B                                     ; $6336: $1E $3B
    ld h, e                                       ; $6338: $63
    nop                                           ; $6339: $00
    inc b                                         ; $633A: $04
    dec b                                         ; $633B: $05
    jr z, @+$01                                   ; $633C: $28 $FF

    nop                                           ; $633E: $00
    jr @+$01                                      ; $633F: $18 $FF

    ld [bc], a                                    ; $6341: $02
    ld [hl+], a                                   ; $6342: $22
    rst RST_30                                    ; $6343: $F7
    inc b                                         ; $6344: $04
    ld [hl-], a                                   ; $6345: $32
    rst RST_30                                    ; $6346: $F7
    ld b, $2E                                     ; $6347: $06 $2E
    rst RST_28                                    ; $6349: $EF
    ld [$EA00], sp                                ; $634A: $08 $00 $EA
    dec b                                         ; $634D: $05
    nop                                           ; $634E: $00
    ld d, a                                       ; $634F: $57
    ld e, $55                                     ; $6350: $1E $55
    ld h, e                                       ; $6352: $63
    ld a, [$030E]                                 ; $6353: $FA $0E $03
    ld a, [de]                                    ; $6356: $1A
    rst RST_30                                    ; $6357: $F7
    nop                                           ; $6358: $00
    ld a, [de]                                    ; $6359: $1A
    rst RST_38                                    ; $635A: $FF
    ld [bc], a                                    ; $635B: $02
    ld [de], a                                    ; $635C: $12
    rlca                                          ; $635D: $07
    inc b                                         ; $635E: $04
    nop                                           ; $635F: $00
    ld [$6005], a                                 ; $6360: $EA $05 $60
    ld d, a                                       ; $6363: $57
    ld e, $69                                     ; $6364: $1E $69
    ld h, e                                       ; $6366: $63
    ld a, [$040E]                                 ; $6367: $FA $0E $04
    jr @-$01                                      ; $636A: $18 $FD

    nop                                           ; $636C: $00
    jr @+$07                                      ; $636D: $18 $05

    ld [bc], a                                    ; $636F: $02
    jr jr_00B_637F                                ; $6370: $18 $0D

    inc b                                         ; $6372: $04
    ld e, $15                                     ; $6373: $1E $15
    ld b, $00                                     ; $6375: $06 $00
    ld [$E000], a                                 ; $6377: $EA $00 $E0
    ld d, a                                       ; $637A: $57
    ld e, $80                                     ; $637B: $1E $80
    ld h, e                                       ; $637D: $63
    db $F4                                        ; $637E: $F4

jr_00B_637F:
    nop                                           ; $637F: $00
    inc b                                         ; $6380: $04
    cpl                                           ; $6381: $2F
    rrca                                          ; $6382: $0F
    nop                                           ; $6383: $00
    dec l                                         ; $6384: $2D
    rlca                                          ; $6385: $07
    ld [bc], a                                    ; $6386: $02
    jr z, @+$01                                   ; $6387: $28 $FF

    inc b                                         ; $6389: $04
    dec e                                         ; $638A: $1D
    rlca                                          ; $638B: $07
    ld b, $00                                     ; $638C: $06 $00
    ld [$6000], a                                 ; $638E: $EA $00 $60
    ld e, b                                       ; $6391: $58
    ld e, $97                                     ; $6392: $1E $97
    ld h, e                                       ; $6394: $63
    db $FD                                        ; $6395: $FD
    ld [$2704], sp                                ; $6396: $08 $04 $27
    ld a, [$2700]                                 ; $6399: $FA $00 $27
    ld [bc], a                                    ; $639C: $02
    ld [bc], a                                    ; $639D: $02
    rla                                           ; $639E: $17
    ld a, [$1704]                                 ; $639F: $FA $04 $17
    ld [bc], a                                    ; $63A2: $02
    ld b, $00                                     ; $63A3: $06 $00
    ld [$E000], a                                 ; $63A5: $EA $00 $E0
    ld e, b                                       ; $63A8: $58
    ld e, $AE                                     ; $63A9: $1E $AE
    ld h, e                                       ; $63AB: $63
    ld [bc], a                                    ; $63AC: $02

jr_00B_63AD:
    nop                                           ; $63AD: $00
    inc b                                         ; $63AE: $04
    jr nc, @-$08                                  ; $63AF: $30 $F6

    nop                                           ; $63B1: $00

jr_00B_63B2:
    jr nc, jr_00B_63B2                            ; $63B2: $30 $FE

    ld [bc], a                                    ; $63B4: $02
    jr nz, jr_00B_63AD                            ; $63B5: $20 $F6

    inc b                                         ; $63B7: $04

jr_00B_63B8:
    jr nz, jr_00B_63B8                            ; $63B8: $20 $FE

    ld b, $00                                     ; $63BA: $06 $00
    ld [$6000], a                                 ; $63BC: $EA $00 $60
    ld e, c                                       ; $63BF: $59
    ld e, $C5                                     ; $63C0: $1E $C5
    ld h, e                                       ; $63C2: $63
    ld [bc], a                                    ; $63C3: $02
    nop                                           ; $63C4: $00

jr_00B_63C5:
    ld b, $30                                     ; $63C5: $06 $30
    push af                                       ; $63C7: $F5

jr_00B_63C8:
    nop                                           ; $63C8: $00
    jr nc, jr_00B_63C8                            ; $63C9: $30 $FD

    ld [bc], a                                    ; $63CB: $02
    jr nc, jr_00B_63D3                            ; $63CC: $30 $05

    inc b                                         ; $63CE: $04
    jr nz, jr_00B_63C5                            ; $63CF: $20 $F4

    ld b, $20                                     ; $63D1: $06 $20

jr_00B_63D3:
    db $FC                                        ; $63D3: $FC
    ld [$0420], sp                                ; $63D4: $08 $20 $04
    ld a, [bc]                                    ; $63D7: $0A
    nop                                           ; $63D8: $00
    ld [$2000], a                                 ; $63D9: $EA $00 $20
    ld e, d                                       ; $63DC: $5A
    ld e, $E2                                     ; $63DD: $1E $E2
    ld h, e                                       ; $63DF: $63
    ld [bc], a                                    ; $63E0: $02

jr_00B_63E1:
    nop                                           ; $63E1: $00
    ld b, $30                                     ; $63E2: $06 $30

jr_00B_63E4:
    db $F4                                        ; $63E4: $F4
    nop                                           ; $63E5: $00
    jr nc, jr_00B_63E4                            ; $63E6: $30 $FC

    ld [bc], a                                    ; $63E8: $02
    jr nc, @+$06                                  ; $63E9: $30 $04

    inc b                                         ; $63EB: $04
    jr nz, jr_00B_63E1                            ; $63EC: $20 $F3

    ld b, $20                                     ; $63EE: $06 $20
    ei                                            ; $63F0: $FB
    ld [$0320], sp                                ; $63F1: $08 $20 $03
    ld a, [bc]                                    ; $63F4: $0A
    nop                                           ; $63F5: $00
    ld [$E000], a                                 ; $63F6: $EA $00 $E0
    ld e, d                                       ; $63F9: $5A
    ld e, $FF                                     ; $63FA: $1E $FF
    ld h, e                                       ; $63FC: $63
    ld hl, sp+$00                                 ; $63FD: $F8 $00
    rlca                                          ; $63FF: $07
    inc h                                         ; $6400: $24
    pop af                                        ; $6401: $F1
    nop                                           ; $6402: $00
    cpl                                           ; $6403: $2F
    ld sp, hl                                     ; $6404: $F9
    ld [bc], a                                    ; $6405: $02
    cpl                                           ; $6406: $2F
    ld bc, $3004                                  ; $6407: $01 $04 $30
    add hl, bc                                    ; $640A: $09
    ld b, $1F                                     ; $640B: $06 $1F
    ld sp, hl                                     ; $640D: $F9
    ld [$011F], sp                                ; $640E: $08 $1F $01
    ld a, [bc]                                    ; $6411: $0A
    jr nz, jr_00B_641D                            ; $6412: $20 $09

    inc c                                         ; $6414: $0C
    nop                                           ; $6415: $00
    ld [$C000], a                                 ; $6416: $EA $00 $C0
    ld e, e                                       ; $6419: $5B
    ld e, $1F                                     ; $641A: $1E $1F
    ld h, h                                       ; $641C: $64

jr_00B_641D:
    ld hl, sp+$00                                 ; $641D: $F8 $00
    ld b, $26                                     ; $641F: $06 $26
    ldh a, [c]                                    ; $6421: $F2
    nop                                           ; $6422: $00
    cpl                                           ; $6423: $2F
    ld a, [$2F02]                                 ; $6424: $FA $02 $2F
    ld [bc], a                                    ; $6427: $02
    inc b                                         ; $6428: $04
    jr nc, @+$0C                                  ; $6429: $30 $0A

    ld b, $1F                                     ; $642B: $06 $1F
    nop                                           ; $642D: $00
    ld [$0820], sp                                ; $642E: $08 $20 $08
    ld a, [bc]                                    ; $6431: $0A
    nop                                           ; $6432: $00
    ld [$8000], a                                 ; $6433: $EA $00 $80
    ld e, h                                       ; $6436: $5C
    ld e, $3C                                     ; $6437: $1E $3C
    ld h, h                                       ; $6439: $64
    ld hl, sp+$00                                 ; $643A: $F8 $00
    dec b                                         ; $643C: $05
    add hl, hl                                    ; $643D: $29
    ld sp, hl                                     ; $643E: $F9
    nop                                           ; $643F: $00
    add hl, hl                                    ; $6440: $29
    ld bc, $2902                                  ; $6441: $01 $02 $29
    add hl, bc                                    ; $6444: $09
    inc b                                         ; $6445: $04
    add hl, sp                                    ; $6446: $39
    nop                                           ; $6447: $00
    ld b, $39                                     ; $6448: $06 $39
    ld [$0008], sp                                ; $644A: $08 $08 $00
    ld [$6000], a                                 ; $644D: $EA $00 $60

jr_00B_6450:
    ld h, l                                       ; $6450: $65
    ld e, $56                                     ; $6451: $1E $56
    ld h, h                                       ; $6453: $64
    nop                                           ; $6454: $00
    rrca                                          ; $6455: $0F

jr_00B_6456:
    inc b                                         ; $6456: $04
    jr jr_00B_6450                                ; $6457: $18 $F7

    nop                                           ; $6459: $00
    jr @+$01                                      ; $645A: $18 $FF

    ld [bc], a                                    ; $645C: $02
    jr z, jr_00B_6456                             ; $645D: $28 $F7

    inc b                                         ; $645F: $04
    jr z, @+$01                                   ; $6460: $28 $FF

    ld b, $00                                     ; $6462: $06 $00
    ld [$E000], a                                 ; $6464: $EA $00 $E0
    ld h, l                                       ; $6467: $65
    ld e, $6D                                     ; $6468: $1E $6D
    ld h, h                                       ; $646A: $64
    nop                                           ; $646B: $00
    ld de, $1905                                  ; $646C: $11 $05 $19
    db $F4                                        ; $646F: $F4
    nop                                           ; $6470: $00
    rla                                           ; $6471: $17
    db $FC                                        ; $6472: $FC
    ld [bc], a                                    ; $6473: $02
    rla                                           ; $6474: $17
    inc b                                         ; $6475: $04

jr_00B_6476:
    inc b                                         ; $6476: $04
    add hl, hl                                    ; $6477: $29
    db $F4                                        ; $6478: $F4
    ld b, $27                                     ; $6479: $06 $27
    db $FC                                        ; $647B: $FC
    ld [$EA00], sp                                ; $647C: $08 $00 $EA
    nop                                           ; $647F: $00
    add b                                         ; $6480: $80

jr_00B_6481:
    ld h, [hl]                                    ; $6481: $66
    ld e, $87                                     ; $6482: $1E $87
    ld h, h                                       ; $6484: $64
    ld a, [$0B00]                                 ; $6485: $FA $00 $0B
    jr nc, jr_00B_6476                            ; $6488: $30 $EC

    nop                                           ; $648A: $00
    jr nc, jr_00B_6481                            ; $648B: $30 $F4

    ld [bc], a                                    ; $648D: $02
    jr nc, @-$02                                  ; $648E: $30 $FC

    inc b                                         ; $6490: $04
    jr nc, @+$06                                  ; $6491: $30 $04

    ld b, $30                                     ; $6493: $06 $30

jr_00B_6495:
    inc c                                         ; $6495: $0C
    ld [$1430], sp                                ; $6496: $08 $30 $14
    ld a, [bc]                                    ; $6499: $0A
    jr nz, jr_00B_6495                            ; $649A: $20 $F9

    inc c                                         ; $649C: $0C
    jr nz, @+$03                                  ; $649D: $20 $01

    ld c, $20                                     ; $649F: $0E $20
    add hl, bc                                    ; $64A1: $09
    db $10                                        ; $64A2: $10
    jr nz, @+$13                                  ; $64A3: $20 $11

    ld [de], a                                    ; $64A5: $12
    inc hl                                        ; $64A6: $23
    ld a, [de]                                    ; $64A7: $1A
    inc d                                         ; $64A8: $14
    nop                                           ; $64A9: $00
    ld [$2000], a                                 ; $64AA: $EA $00 $20
    ld e, l                                       ; $64AD: $5D
    ld e, $B3                                     ; $64AE: $1E $B3
    ld h, h                                       ; $64B0: $64
    nop                                           ; $64B1: $00
    nop                                           ; $64B2: $00
    dec b                                         ; $64B3: $05
    inc l                                         ; $64B4: $2C
    or $00                                        ; $64B5: $F6 $00
    inc l                                         ; $64B7: $2C
    cp $02                                        ; $64B8: $FE $02
    inc a                                         ; $64BA: $3C
    ld a, [$3C04]                                 ; $64BB: $FA $04 $3C
    ld [bc], a                                    ; $64BE: $02
    ld b, $2C                                     ; $64BF: $06 $2C
    ld b, $08                                     ; $64C1: $06 $08
    nop                                           ; $64C3: $00
    ld [$C000], a                                 ; $64C4: $EA $00 $C0
    ld e, l                                       ; $64C7: $5D
    ld e, $CD                                     ; $64C8: $1E $CD
    ld h, h                                       ; $64CA: $64
    ld a, [$0800]                                 ; $64CB: $FA $00 $08
    daa                                           ; $64CE: $27
    rst RST_30                                    ; $64CF: $F7
    nop                                           ; $64D0: $00
    daa                                           ; $64D1: $27
    rst RST_38                                    ; $64D2: $FF
    ld [bc], a                                    ; $64D3: $02
    scf                                           ; $64D4: $37
    rst RST_30                                    ; $64D5: $F7
    inc b                                         ; $64D6: $04
    scf                                           ; $64D7: $37
    rst RST_38                                    ; $64D8: $FF
    ld b, $24                                     ; $64D9: $06 $24
    rlca                                          ; $64DB: $07
    ld [$0F24], sp                                ; $64DC: $08 $24 $0F
    ld a, [bc]                                    ; $64DF: $0A
    inc [hl]                                      ; $64E0: $34
    rlca                                          ; $64E1: $07
    inc c                                         ; $64E2: $0C
    inc [hl]                                      ; $64E3: $34
    rrca                                          ; $64E4: $0F
    ld c, $00                                     ; $64E5: $0E $00
    ld [$C000], a                                 ; $64E7: $EA $00 $C0
    ld e, [hl]                                    ; $64EA: $5E
    ld e, $F0                                     ; $64EB: $1E $F0
    ld h, h                                       ; $64ED: $64
    ld hl, sp+$00                                 ; $64EE: $F8 $00
    ld a, [bc]                                    ; $64F0: $0A
    ld hl, $00F4                                  ; $64F1: $21 $F4 $00
    rra                                           ; $64F4: $1F
    db $FC                                        ; $64F5: $FC
    ld [bc], a                                    ; $64F6: $02
    ld hl, $0404                                  ; $64F7: $21 $04 $04
    ld sp, $06F4                                  ; $64FA: $31 $F4 $06
    cpl                                           ; $64FD: $2F
    db $FC                                        ; $64FE: $FC
    ld [$0431], sp                                ; $64FF: $08 $31 $04
    ld a, [bc]                                    ; $6502: $0A
    inc l                                         ; $6503: $2C
    inc c                                         ; $6504: $0C
    inc c                                         ; $6505: $0C
    inc l                                         ; $6506: $2C
    inc d                                         ; $6507: $14
    ld c, $3C                                     ; $6508: $0E $3C
    inc c                                         ; $650A: $0C
    db $10                                        ; $650B: $10
    inc a                                         ; $650C: $3C
    inc d                                         ; $650D: $14
    ld [de], a                                    ; $650E: $12
    nop                                           ; $650F: $00
    ld [$0000], a                                 ; $6510: $EA $00 $00
    ld h, b                                       ; $6513: $60
    ld e, $19                                     ; $6514: $1E $19
    ld h, l                                       ; $6516: $65
    ld hl, sp+$00                                 ; $6517: $F8 $00
    ld [$F727], sp                                ; $6519: $08 $27 $F7
    nop                                           ; $651C: $00
    daa                                           ; $651D: $27
    rst RST_38                                    ; $651E: $FF
    ld [bc], a                                    ; $651F: $02
    scf                                           ; $6520: $37
    rst RST_30                                    ; $6521: $F7
    inc b                                         ; $6522: $04
    scf                                           ; $6523: $37
    rst RST_38                                    ; $6524: $FF
    ld b, $2B                                     ; $6525: $06 $2B
    inc c                                         ; $6527: $0C
    ld [$142D], sp                                ; $6528: $08 $2D $14
    ld a, [bc]                                    ; $652B: $0A
    inc hl                                        ; $652C: $23
    rla                                           ; $652D: $17
    inc c                                         ; $652E: $0C
    dec sp                                        ; $652F: $3B
    ld de, $000E                                  ; $6530: $11 $0E $00
    ld [$0000], a                                 ; $6533: $EA $00 $00
    ld h, c                                       ; $6536: $61
    ld e, $3C                                     ; $6537: $1E $3C
    ld h, l                                       ; $6539: $65
    ld hl, sp+$00                                 ; $653A: $F8 $00
    ld [$F62C], sp                                ; $653C: $08 $2C $F6
    nop                                           ; $653F: $00
    inc l                                         ; $6540: $2C
    cp $02                                        ; $6541: $FE $02
    inc a                                         ; $6543: $3C
    or $04                                        ; $6544: $F6 $04
    inc a                                         ; $6546: $3C
    cp $06                                        ; $6547: $FE $06
    inc l                                         ; $6549: $2C
    inc c                                         ; $654A: $0C
    ld [$142C], sp                                ; $654B: $08 $2C $14
    ld a, [bc]                                    ; $654E: $0A
    inc a                                         ; $654F: $3C
    db $10                                        ; $6550: $10
    inc c                                         ; $6551: $0C
    jr c, @+$1A                                   ; $6552: $38 $18

    ld c, $00                                     ; $6554: $0E $00
    ld [$0000], a                                 ; $6556: $EA $00 $00
    ld h, d                                       ; $6559: $62
    ld e, $5F                                     ; $655A: $1E $5F
    ld h, l                                       ; $655C: $65
    ld hl, sp+$00                                 ; $655D: $F8 $00
    ld b, $28                                     ; $655F: $06 $28
    or $00                                        ; $6561: $F6 $00

jr_00B_6563:
    jr z, jr_00B_6563                             ; $6563: $28 $FE

    ld [bc], a                                    ; $6565: $02
    jr c, @-$08                                   ; $6566: $38 $F6

    inc b                                         ; $6568: $04

jr_00B_6569:
    jr c, jr_00B_6569                             ; $6569: $38 $FE

    ld b, $33                                     ; $656B: $06 $33
    dec bc                                        ; $656D: $0B
    ld [$1333], sp                                ; $656E: $08 $33 $13
    ld a, [bc]                                    ; $6571: $0A
    nop                                           ; $6572: $00
    ld [$C000], a                                 ; $6573: $EA $00 $C0
    ld h, d                                       ; $6576: $62
    ld e, $7C                                     ; $6577: $1E $7C
    ld h, l                                       ; $6579: $65
    ld hl, sp+$00                                 ; $657A: $F8 $00
    ld [$EF29], sp                                ; $657C: $08 $29 $EF
    nop                                           ; $657F: $00
    add hl, hl                                    ; $6580: $29
    rst RST_30                                    ; $6581: $F7
    ld [bc], a                                    ; $6582: $02
    add hl, hl                                    ; $6583: $29
    rst RST_38                                    ; $6584: $FF
    inc b                                         ; $6585: $04
    add hl, sp                                    ; $6586: $39
    push af                                       ; $6587: $F5
    ld b, $39                                     ; $6588: $06 $39
    db $FD                                        ; $658A: $FD

jr_00B_658B:
    ld [$0931], sp                                ; $658B: $08 $31 $09
    ld a, [bc]                                    ; $658E: $0A
    ld sp, $0C11                                  ; $658F: $31 $11 $0C
    ld h, $15                                     ; $6592: $26 $15
    ld c, $00                                     ; $6594: $0E $00
    ld [$C000], a                                 ; $6596: $EA $00 $C0
    ld h, e                                       ; $6599: $63
    ld e, $A9                                     ; $659A: $1E $A9
    ld h, l                                       ; $659C: $65
    push af                                       ; $659D: $F5
    ld sp, hl                                     ; $659E: $F9
    jr nz, jr_00B_658B                            ; $659F: $20 $EA

    nop                                           ; $65A1: $00
    ret nz                                        ; $65A2: $C0

    ld h, e                                       ; $65A3: $63
    ld e, $A9                                     ; $65A4: $1E $A9

jr_00B_65A6:
    ld h, l                                       ; $65A6: $65
    di                                            ; $65A7: $F3
    ld sp, hl                                     ; $65A8: $F9
    dec b                                         ; $65A9: $05
    jr nz, @-$0F                                  ; $65AA: $20 $EF

    nop                                           ; $65AC: $00
    jr nz, jr_00B_65A6                            ; $65AD: $20 $F7

    ld [bc], a                                    ; $65AF: $02
    jr nz, @+$01                                  ; $65B0: $20 $FF

    inc b                                         ; $65B2: $04
    jr nz, jr_00B_65BC                            ; $65B3: $20 $07

    ld b, $20                                     ; $65B5: $06 $20
    rrca                                          ; $65B7: $0F
    ld [$6000], sp                                ; $65B8: $08 $00 $60
    ld h, h                                       ; $65BB: $64

jr_00B_65BC:
    ld e, $C1                                     ; $65BC: $1E $C1
    ld h, l                                       ; $65BE: $65
    ld hl, sp+$00                                 ; $65BF: $F8 $00
    ld [$EF29], sp                                ; $65C1: $08 $29 $EF
    nop                                           ; $65C4: $00
    add hl, hl                                    ; $65C5: $29
    rst RST_30                                    ; $65C6: $F7
    ld [bc], a                                    ; $65C7: $02
    dec hl                                        ; $65C8: $2B
    db $FD                                        ; $65C9: $FD
    inc b                                         ; $65CA: $04
    add hl, sp                                    ; $65CB: $39
    push af                                       ; $65CC: $F5
    ld b, $3B                                     ; $65CD: $06 $3B
    db $FD                                        ; $65CF: $FD
    ld [$0A30], sp                                ; $65D0: $08 $30 $0A
    ld a, [bc]                                    ; $65D3: $0A
    jr nc, jr_00B_65E8                            ; $65D4: $30 $12

    inc c                                         ; $65D6: $0C
    inc h                                         ; $65D7: $24
    rla                                           ; $65D8: $17
    ld c, $00                                     ; $65D9: $0E $00
    ld [$0000], a                                 ; $65DB: $EA $00 $00
    ld b, a                                       ; $65DE: $47
    ld e, $E4                                     ; $65DF: $1E $E4

jr_00B_65E1:
    ld h, l                                       ; $65E1: $65
    nop                                           ; $65E2: $00
    nop                                           ; $65E3: $00
    inc b                                         ; $65E4: $04
    jr nc, jr_00B_65E1                            ; $65E5: $30 $FA

jr_00B_65E7:
    nop                                           ; $65E7: $00

jr_00B_65E8:
    jr nc, @+$04                                  ; $65E8: $30 $02

    ld [bc], a                                    ; $65EA: $02
    jr nz, jr_00B_65ED                            ; $65EB: $20 $00

jr_00B_65ED:
    inc b                                         ; $65ED: $04
    ld a, [hl+]                                   ; $65EE: $2A
    ld [$0006], sp                                ; $65EF: $08 $06 $00
    ld [$8000], a                                 ; $65F2: $EA $00 $80
    ld b, a                                       ; $65F5: $47
    ld e, $19                                     ; $65F6: $1E $19
    ld h, [hl]                                    ; $65F8: $66
    ei                                            ; $65F9: $FB
    nop                                           ; $65FA: $00
    jr nz, jr_00B_65E7                            ; $65FB: $20 $EA

    nop                                           ; $65FD: $00
    add b                                         ; $65FE: $80
    ld b, a                                       ; $65FF: $47
    ld e, $19                                     ; $6600: $1E $19
    ld h, [hl]                                    ; $6602: $66
    dec b                                         ; $6603: $05
    nop                                           ; $6604: $00
    ld b, b                                       ; $6605: $40
    ld [$8000], a                                 ; $6606: $EA $00 $80
    ld b, a                                       ; $6609: $47
    ld e, $19                                     ; $660A: $1E $19
    ld h, [hl]                                    ; $660C: $66
    ei                                            ; $660D: $FB
    inc c                                         ; $660E: $0C
    ld h, b                                       ; $660F: $60
    ld [$8000], a                                 ; $6610: $EA $00 $80
    ld b, a                                       ; $6613: $47
    ld e, $19                                     ; $6614: $1E $19
    ld h, [hl]                                    ; $6616: $66
    dec b                                         ; $6617: $05
    inc c                                         ; $6618: $0C
    dec b                                         ; $6619: $05
    jr nc, jr_00B_6620                            ; $661A: $30 $04

    nop                                           ; $661C: $00
    dec l                                         ; $661D: $2D
    db $FC                                        ; $661E: $FC
    ld [bc], a                                    ; $661F: $02

jr_00B_6620:
    jr nz, @+$06                                  ; $6620: $20 $04

    inc b                                         ; $6622: $04
    dec e                                         ; $6623: $1D
    db $FC                                        ; $6624: $FC
    ld b, $25                                     ; $6625: $06 $25
    db $F4                                        ; $6627: $F4
    ld [$EA00], sp                                ; $6628: $08 $00 $EA
    nop                                           ; $662B: $00
    jr nz, @+$4A                                  ; $662C: $20 $48

    ld e, $33                                     ; $662E: $1E $33
    ld h, [hl]                                    ; $6630: $66
    ld [bc], a                                    ; $6631: $02
    nop                                           ; $6632: $00
    inc b                                         ; $6633: $04
    jr nc, @-$07                                  ; $6634: $30 $F7

    nop                                           ; $6636: $00
    jr nc, @+$01                                  ; $6637: $30 $FF

    ld [bc], a                                    ; $6639: $02
    jr nc, @+$09                                  ; $663A: $30 $07

jr_00B_663C:
    inc b                                         ; $663C: $04
    jr nz, jr_00B_663C                            ; $663D: $20 $FD

    ld b, $00                                     ; $663F: $06 $00
    ld [$A000], a                                 ; $6641: $EA $00 $A0
    ld c, b                                       ; $6644: $48
    ld e, $54                                     ; $6645: $1E $54
    ld h, [hl]                                    ; $6647: $66
    db $F4                                        ; $6648: $F4
    dec c                                         ; $6649: $0D
    ld h, b                                       ; $664A: $60
    ld [$A000], a                                 ; $664B: $EA $00 $A0
    ld c, b                                       ; $664E: $48
    ld e, $54                                     ; $664F: $1E $54
    ld h, [hl]                                    ; $6651: $66
    nop                                           ; $6652: $00
    nop                                           ; $6653: $00
    dec b                                         ; $6654: $05
    dec hl                                        ; $6655: $2B
    rst RST_38                                    ; $6656: $FF
    nop                                           ; $6657: $00
    jr z, @+$09                                   ; $6658: $28 $07

    ld [bc], a                                    ; $665A: $02
    jr z, jr_00B_666C                             ; $665B: $28 $0F

    inc b                                         ; $665D: $04
    dec hl                                        ; $665E: $2B
    rla                                           ; $665F: $17
    ld b, $18                                     ; $6660: $06 $18
    dec bc                                        ; $6662: $0B
    ld [$EA00], sp                                ; $6663: $08 $00 $EA
    nop                                           ; $6666: $00
    ld b, b                                       ; $6667: $40
    ld c, c                                       ; $6668: $49
    ld e, $6E                                     ; $6669: $1E $6E
    ld h, [hl]                                    ; $666B: $66

jr_00B_666C:
    di                                            ; $666C: $F3
    ld sp, hl                                     ; $666D: $F9
    inc b                                         ; $666E: $04
    jr c, @+$01                                   ; $666F: $38 $FF

    nop                                           ; $6671: $00
    jr c, @+$09                                   ; $6672: $38 $07

    ld [bc], a                                    ; $6674: $02
    jr c, @+$11                                   ; $6675: $38 $0F

    inc b                                         ; $6677: $04
    jr c, jr_00B_6691                             ; $6678: $38 $17

    ld b, $00                                     ; $667A: $06 $00
    ld [$E000], a                                 ; $667C: $EA $00 $E0
    ld h, a                                       ; $667F: $67
    ld e, $85                                     ; $6680: $1E $85
    ld h, [hl]                                    ; $6682: $66
    di                                            ; $6683: $F3
    ld a, [bc]                                    ; $6684: $0A
    ld b, $27                                     ; $6685: $06 $27
    db $FC                                        ; $6687: $FC
    nop                                           ; $6688: $00
    daa                                           ; $6689: $27
    inc b                                         ; $668A: $04
    ld [bc], a                                    ; $668B: $02
    daa                                           ; $668C: $27
    inc c                                         ; $668D: $0C
    inc b                                         ; $668E: $04
    ld [hl-], a                                   ; $668F: $32
    inc d                                         ; $6690: $14

jr_00B_6691:
    ld b, $17                                     ; $6691: $06 $17
    inc b                                         ; $6693: $04
    ld [$0C17], sp                                ; $6694: $08 $17 $0C
    ld a, [bc]                                    ; $6697: $0A
    nop                                           ; $6698: $00
    ld [$A0EC], a                                 ; $6699: $EA $EC $A0
    ld l, b                                       ; $669C: $68
    ld e, $AC                                     ; $669D: $1E $AC
    ld h, [hl]                                    ; $669F: $66
    rst RST_38                                    ; $66A0: $FF
    ld [$EA20], sp                                ; $66A1: $08 $20 $EA
    nop                                           ; $66A4: $00
    and b                                         ; $66A5: $A0

jr_00B_66A6:
    ld l, b                                       ; $66A6: $68
    ld e, $AC                                     ; $66A7: $1E $AC
    ld h, [hl]                                    ; $66A9: $66
    ld bc, $0700                                  ; $66AA: $01 $00 $07
    jr jr_00B_66A6                                ; $66AD: $18 $F7

    nop                                           ; $66AF: $00
    jr @+$01                                      ; $66B0: $18 $FF

    ld [bc], a                                    ; $66B2: $02
    jr z, @-$07                                   ; $66B3: $28 $F7

    inc b                                         ; $66B5: $04
    jr z, @+$01                                   ; $66B6: $28 $FF

    ld b, $19                                     ; $66B8: $06 $19
    rlca                                          ; $66BA: $07
    ld [$0729], sp                                ; $66BB: $08 $29 $07
    ld a, [bc]                                    ; $66BE: $0A
    rra                                           ; $66BF: $1F
    rrca                                          ; $66C0: $0F

jr_00B_66C1:
    inc c                                         ; $66C1: $0C
    nop                                           ; $66C2: $00
    ld [$80EB], a                                 ; $66C3: $EA $EB $80
    ld l, c                                       ; $66C6: $69
    ld e, $D6                                     ; $66C7: $1E $D6
    ld h, [hl]                                    ; $66C9: $66
    ld bc, $2000                                  ; $66CA: $01 $00 $20
    ld [$8000], a                                 ; $66CD: $EA $00 $80
    ld l, c                                       ; $66D0: $69
    ld e, $D6                                     ; $66D1: $1E $D6
    ld h, [hl]                                    ; $66D3: $66
    ld bc, $0800                                  ; $66D4: $01 $00 $08

jr_00B_66D7:
    jr nc, jr_00B_66C1                            ; $66D7: $30 $E8

    nop                                           ; $66D9: $00
    jr nc, @-$0E                                  ; $66DA: $30 $F0

    ld [bc], a                                    ; $66DC: $02
    jr nc, jr_00B_66D7                            ; $66DD: $30 $F8

    inc b                                         ; $66DF: $04
    jr nc, jr_00B_66E2                            ; $66E0: $30 $00

jr_00B_66E2:
    ld b, $20                                     ; $66E2: $06 $20
    db $EB                                        ; $66E4: $EB
    ld [$F320], sp                                ; $66E5: $08 $20 $F3
    ld a, [bc]                                    ; $66E8: $0A
    jr nz, @-$03                                  ; $66E9: $20 $FB

    inc c                                         ; $66EB: $0C
    jr nz, @+$05                                  ; $66EC: $20 $03

    ld c, $00                                     ; $66EE: $0E $00
    ld [$80EB], a                                 ; $66F0: $EA $EB $80
    ld l, d                                       ; $66F3: $6A
    ld e, $03                                     ; $66F4: $1E $03
    ld h, a                                       ; $66F6: $67
    ld bc, $0000                                  ; $66F7: $01 $00 $00

jr_00B_66FA:
    ld [$8000], a                                 ; $66FA: $EA $00 $80
    ld l, d                                       ; $66FD: $6A
    ld e, $03                                     ; $66FE: $1E $03
    ld h, a                                       ; $6700: $67
    ld bc, $0600                                  ; $6701: $01 $00 $06
    jr nc, @-$15                                  ; $6704: $30 $E9

    nop                                           ; $6706: $00
    jr nc, jr_00B_66FA                            ; $6707: $30 $F1

    ld [bc], a                                    ; $6709: $02
    jr nc, @-$05                                  ; $670A: $30 $F9

    inc b                                         ; $670C: $04
    jr nc, @+$03                                  ; $670D: $30 $01

    ld b, $20                                     ; $670F: $06 $20
    or $08                                        ; $6711: $F6 $08

jr_00B_6713:
    jr nz, jr_00B_6713                            ; $6713: $20 $FE

    ld a, [bc]                                    ; $6715: $0A
    nop                                           ; $6716: $00
    ld [$4006], a                                 ; $6717: $EA $06 $40
    ld l, e                                       ; $671A: $6B
    ld e, $20                                     ; $671B: $1E $20
    ld h, a                                       ; $671D: $67
    di                                            ; $671E: $F3
    nop                                           ; $671F: $00
    add hl, bc                                    ; $6720: $09
    dec l                                         ; $6721: $2D
    rst RST_30                                    ; $6722: $F7
    nop                                           ; $6723: $00
    cpl                                           ; $6724: $2F
    rst RST_38                                    ; $6725: $FF
    ld [bc], a                                    ; $6726: $02
    jr nc, @+$09                                  ; $6727: $30 $07

    inc b                                         ; $6729: $04
    jr nc, jr_00B_673B                            ; $672A: $30 $0F

    ld b, $38                                     ; $672C: $06 $38
    rla                                           ; $672E: $17
    ld [$F81F], sp                                ; $672F: $08 $1F $F8
    ld a, [bc]                                    ; $6732: $0A
    jr nz, jr_00B_6735                            ; $6733: $20 $00

jr_00B_6735:
    inc c                                         ; $6735: $0C
    jr nz, jr_00B_6740                            ; $6736: $20 $08

    ld c, $20                                     ; $6738: $0E $20
    db $10                                        ; $673A: $10

jr_00B_673B:
    stop                                          ; $673B: $10 $00
    ld [$6006], a                                 ; $673D: $EA $06 $60

jr_00B_6740:
    ld l, h                                       ; $6740: $6C
    ld e, $46                                     ; $6741: $1E $46
    ld h, a                                       ; $6743: $67
    nop                                           ; $6744: $00
    rrca                                          ; $6745: $0F
    ld [$EF1F], sp                                ; $6746: $08 $1F $EF
    nop                                           ; $6749: $00
    rrca                                          ; $674A: $0F
    ldh a, [rSC]                                  ; $674B: $F0 $02
    rra                                           ; $674D: $1F
    rst RST_30                                    ; $674E: $F7
    inc b                                         ; $674F: $04
    rra                                           ; $6750: $1F
    rst RST_38                                    ; $6751: $FF
    ld b, $0F                                     ; $6752: $06 $0F
    ld hl, sp+$08                                 ; $6754: $F8 $08
    rrca                                          ; $6756: $0F
    nop                                           ; $6757: $00
    ld a, [bc]                                    ; $6758: $0A
    cpl                                           ; $6759: $2F
    rst RST_30                                    ; $675A: $F7

jr_00B_675B:
    inc c                                         ; $675B: $0C
    cpl                                           ; $675C: $2F
    rst RST_38                                    ; $675D: $FF
    ld c, $00                                     ; $675E: $0E $00
    ld [$6006], a                                 ; $6760: $EA $06 $60
    ld l, l                                       ; $6763: $6D
    ld e, $69                                     ; $6764: $1E $69
    ld h, a                                       ; $6766: $67
    db $FC                                        ; $6767: $FC
    inc de                                        ; $6768: $13
    ld a, [bc]                                    ; $6769: $0A
    jr nz, jr_00B_675B                            ; $676A: $20 $EF

    nop                                           ; $676C: $00
    rrca                                          ; $676D: $0F
    rst RST_28                                    ; $676E: $EF
    ld [bc], a                                    ; $676F: $02
    ld [$04F7], sp                                ; $6770: $08 $F7 $04
    ld [$06FF], sp                                ; $6773: $08 $FF $06
    ld [$0807], sp                                ; $6776: $08 $07 $08
    jr @-$07                                      ; $6779: $18 $F7

    ld a, [bc]                                    ; $677B: $0A
    jr @+$01                                      ; $677C: $18 $FF

    inc c                                         ; $677E: $0C
    jr jr_00B_6788                                ; $677F: $18 $07

    ld c, $28                                     ; $6781: $0E $28
    rst RST_30                                    ; $6783: $F7
    db $10                                        ; $6784: $10
    jr z, @+$01                                   ; $6785: $28 $FF

    ld [de], a                                    ; $6787: $12

jr_00B_6788:
    nop                                           ; $6788: $00
    ld [$A006], a                                 ; $6789: $EA $06 $A0
    ld l, [hl]                                    ; $678C: $6E
    ld e, $92                                     ; $678D: $1E $92
    ld h, a                                       ; $678F: $67
    push af                                       ; $6790: $F5
    dec b                                         ; $6791: $05
    rlca                                          ; $6792: $07
    daa                                           ; $6793: $27
    db $FD                                        ; $6794: $FD
    nop                                           ; $6795: $00
    jr z, @+$07                                   ; $6796: $28 $05

    ld [bc], a                                    ; $6798: $02
    jr z, jr_00B_67A8                             ; $6799: $28 $0D

    inc b                                         ; $679B: $04
    jr @+$06                                      ; $679C: $18 $04

    ld b, $18                                     ; $679E: $06 $18
    inc c                                         ; $67A0: $0C
    ld [$1418], sp                                ; $67A1: $08 $18 $14
    ld a, [bc]                                    ; $67A4: $0A
    jr z, jr_00B_67BC                             ; $67A5: $28 $15

    inc c                                         ; $67A7: $0C

jr_00B_67A8:
    nop                                           ; $67A8: $00
    ld [$8000], a                                 ; $67A9: $EA $00 $80
    ld l, a                                       ; $67AC: $6F
    ld e, $B2                                     ; $67AD: $1E $B2
    ld h, a                                       ; $67AF: $67
    db $F4                                        ; $67B0: $F4
    nop                                           ; $67B1: $00
    ld [$0629], sp                                ; $67B2: $08 $29 $06
    nop                                           ; $67B5: $00
    add hl, hl                                    ; $67B6: $29
    ld c, $02                                     ; $67B7: $0E $02
    add hl, sp                                    ; $67B9: $39
    ld b, $04                                     ; $67BA: $06 $04

jr_00B_67BC:
    add hl, sp                                    ; $67BC: $39
    ld c, $06                                     ; $67BD: $0E $06
    jr z, jr_00B_67D7                             ; $67BF: $28 $16

    ld [$1E28], sp                                ; $67C1: $08 $28 $1E
    ld a, [bc]                                    ; $67C4: $0A
    jr @+$18                                      ; $67C5: $18 $16

    inc c                                         ; $67C7: $0C
    jr jr_00B_67E8                                ; $67C8: $18 $1E

    ld c, $00                                     ; $67CA: $0E $00
    ld [$8000], a                                 ; $67CC: $EA $00 $80
    ld [hl], b                                    ; $67CF: $70
    ld e, $D5                                     ; $67D0: $1E $D5
    ld h, a                                       ; $67D2: $67
    db $F4                                        ; $67D3: $F4
    nop                                           ; $67D4: $00
    ld b, $30                                     ; $67D5: $06 $30

jr_00B_67D7:
    ld a, [$3000]                                 ; $67D7: $FA $00 $30
    ld [bc], a                                    ; $67DA: $02
    ld [bc], a                                    ; $67DB: $02
    jr nc, jr_00B_67E8                            ; $67DC: $30 $0A

    inc b                                         ; $67DE: $04
    jr nz, @+$03                                  ; $67DF: $20 $01

    ld b, $20                                     ; $67E1: $06 $20
    add hl, bc                                    ; $67E3: $09
    ld [$1229], sp                                ; $67E4: $08 $29 $12
    ld a, [bc]                                    ; $67E7: $0A

jr_00B_67E8:
    nop                                           ; $67E8: $00
    ld [$4000], a                                 ; $67E9: $EA $00 $40
    ld [hl], c                                    ; $67EC: $71
    ld e, $F2                                     ; $67ED: $1E $F2
    ld h, a                                       ; $67EF: $67
    db $F4                                        ; $67F0: $F4
    nop                                           ; $67F1: $00
    inc b                                         ; $67F2: $04
    jr nc, jr_00B_67FC                            ; $67F3: $30 $07

    nop                                           ; $67F5: $00
    jr nc, jr_00B_6807                            ; $67F6: $30 $0F

    ld [bc], a                                    ; $67F8: $02
    jr nz, @+$08                                  ; $67F9: $20 $06

    inc b                                         ; $67FB: $04

jr_00B_67FC:
    jr nz, jr_00B_680C                            ; $67FC: $20 $0E

    ld b, $00                                     ; $67FE: $06 $00
    ld [$C000], a                                 ; $6800: $EA $00 $C0
    ld [hl], c                                    ; $6803: $71
    ld e, $09                                     ; $6804: $1E $09
    ld l, b                                       ; $6806: $68

jr_00B_6807:
    db $EC                                        ; $6807: $EC
    nop                                           ; $6808: $00
    ld a, [bc]                                    ; $6809: $0A
    jr nc, @-$08                                  ; $680A: $30 $F6

jr_00B_680C:
    nop                                           ; $680C: $00

jr_00B_680D:
    jr nc, jr_00B_680D                            ; $680D: $30 $FE

    ld [bc], a                                    ; $680F: $02
    jr nz, jr_00B_680C                            ; $6810: $20 $FA

    inc b                                         ; $6812: $04
    jr nz, jr_00B_6817                            ; $6813: $20 $02

    ld b, $30                                     ; $6815: $06 $30

jr_00B_6817:
    ld b, $08                                     ; $6817: $06 $08
    jr nc, jr_00B_6829                            ; $6819: $30 $0E

    ld a, [bc]                                    ; $681B: $0A
    jr nc, jr_00B_6834                            ; $681C: $30 $16

    inc c                                         ; $681E: $0C
    jr nz, @+$0F                                  ; $681F: $20 $0D

    ld c, $20                                     ; $6821: $0E $20
    dec d                                         ; $6823: $15
    db $10                                        ; $6824: $10
    jr z, jr_00B_6845                             ; $6825: $28 $1E

    ld [de], a                                    ; $6827: $12
    nop                                           ; $6828: $00

jr_00B_6829:
    ld [$0000], a                                 ; $6829: $EA $00 $00
    ld [hl], e                                    ; $682C: $73
    ld e, $32                                     ; $682D: $1E $32
    ld l, b                                       ; $682F: $68
    db $ED                                        ; $6830: $ED
    nop                                           ; $6831: $00
    ld a, [bc]                                    ; $6832: $0A
    db $10                                        ; $6833: $10

jr_00B_6834:
    ld bc, $1000                                  ; $6834: $01 $00 $10
    add hl, bc                                    ; $6837: $09
    ld [bc], a                                    ; $6838: $02
    inc d                                         ; $6839: $14
    ld de, $1704                                  ; $683A: $11 $04 $17
    add hl, de                                    ; $683D: $19
    ld b, $19                                     ; $683E: $06 $19
    ld hl, $2008                                  ; $6840: $21 $08 $20
    add hl, bc                                    ; $6843: $09
    ld a, [bc]                                    ; $6844: $0A

jr_00B_6845:
    inc h                                         ; $6845: $24
    ld de, $270C                                  ; $6846: $11 $0C $27
    add hl, de                                    ; $6849: $19
    ld c, $30                                     ; $684A: $0E $30
    ld c, $10                                     ; $684C: $0E $10
    inc [hl]                                      ; $684E: $34
    ld d, $12                                     ; $684F: $16 $12
    nop                                           ; $6851: $00
    ld [$4002], a                                 ; $6852: $EA $02 $40
    ld [hl], h                                    ; $6855: $74
    ld e, $5B                                     ; $6856: $1E $5B
    ld l, b                                       ; $6858: $68
    or $02                                        ; $6859: $F6 $02
    ld a, [bc]                                    ; $685B: $0A
    daa                                           ; $685C: $27
    ld [bc], a                                    ; $685D: $02
    nop                                           ; $685E: $00
    rla                                           ; $685F: $17
    ld [bc], a                                    ; $6860: $02
    ld [bc], a                                    ; $6861: $02
    jr nz, jr_00B_686E                            ; $6862: $20 $0A

    inc b                                         ; $6864: $04
    jr nc, jr_00B_6871                            ; $6865: $30 $0A

    ld b, $1C                                     ; $6867: $06 $1C
    ld [de], a                                    ; $6869: $12
    ld [$122C], sp                                ; $686A: $08 $2C $12
    ld a, [bc]                                    ; $686D: $0A

jr_00B_686E:
    inc e                                         ; $686E: $1C
    ld a, [de]                                    ; $686F: $1A
    inc c                                         ; $6870: $0C

jr_00B_6871:
    inc l                                         ; $6871: $2C
    ld a, [de]                                    ; $6872: $1A
    ld c, $1F                                     ; $6873: $0E $1F
    ld [hl+], a                                   ; $6875: $22
    db $10                                        ; $6876: $10
    inc a                                         ; $6877: $3C
    dec d                                         ; $6878: $15
    ld [de], a                                    ; $6879: $12
    nop                                           ; $687A: $00
    ld [$80ED], a                                 ; $687B: $EA $ED $80
    ld [hl], l                                    ; $687E: $75
    ld e, $84                                     ; $687F: $1E $84
    ld l, b                                       ; $6881: $68
    ldh a, [c]                                    ; $6882: $F2
    ei                                            ; $6883: $FB
    dec c                                         ; $6884: $0D
    ld de, $000F                                  ; $6885: $11 $0F $00
    ld de, $0207                                  ; $6888: $11 $07 $02
    ld [de], a                                    ; $688B: $12
    rst RST_38                                    ; $688C: $FF
    inc b                                         ; $688D: $04
    inc d                                         ; $688E: $14
    rst RST_30                                    ; $688F: $F7
    ld b, $1A                                     ; $6890: $06 $1A
    rst RST_28                                    ; $6892: $EF
    ld [$0F24], sp                                ; $6893: $08 $24 $0F
    ld a, [bc]                                    ; $6896: $0A
    ld hl, $0C07                                  ; $6897: $21 $07 $0C
    ld [hl+], a                                   ; $689A: $22
    rst RST_38                                    ; $689B: $FF
    ld c, $24                                     ; $689C: $0E $24
    rst RST_30                                    ; $689E: $F7
    db $10                                        ; $689F: $10
    ld a, [hl+]                                   ; $68A0: $2A
    rst RST_28                                    ; $68A1: $EF
    ld [de], a                                    ; $68A2: $12
    ld [hl-], a                                   ; $68A3: $32
    rst RST_38                                    ; $68A4: $FF
    inc d                                         ; $68A5: $14
    ld sp, $1607                                  ; $68A6: $31 $07 $16
    inc [hl]                                      ; $68A9: $34
    rrca                                          ; $68AA: $0F
    jr jr_00B_68AD                                ; $68AB: $18 $00

jr_00B_68AD:
    ld [$20ED], a                                 ; $68AD: $EA $ED $20
    ld [hl], a                                    ; $68B0: $77
    ld e, $B6                                     ; $68B1: $1E $B6

jr_00B_68B3:
    ld l, b                                       ; $68B3: $68
    di                                            ; $68B4: $F3
    nop                                           ; $68B5: $00
    inc c                                         ; $68B6: $0C
    jr nc, @-$0F                                  ; $68B7: $30 $EF

    nop                                           ; $68B9: $00
    jr nc, jr_00B_68B3                            ; $68BA: $30 $F7

    ld [bc], a                                    ; $68BC: $02
    jr nc, @+$01                                  ; $68BD: $30 $FF

    inc b                                         ; $68BF: $04
    jr nz, jr_00B_68B3                            ; $68C0: $20 $F1

    ld b, $20                                     ; $68C2: $06 $20
    ld sp, hl                                     ; $68C4: $F9
    ld [$0120], sp                                ; $68C5: $08 $20 $01
    ld a, [bc]                                    ; $68C8: $0A
    ld [hl+], a                                   ; $68C9: $22
    add hl, bc                                    ; $68CA: $09
    inc c                                         ; $68CB: $0C
    ld [de], a                                    ; $68CC: $12
    add hl, bc                                    ; $68CD: $09
    ld c, $1C                                     ; $68CE: $0E $1C
    ld de, $1010                                  ; $68D0: $11 $10 $10
    ld bc, $1012                                  ; $68D3: $01 $12 $10
    ld sp, hl                                     ; $68D6: $F9

jr_00B_68D7:
    inc d                                         ; $68D7: $14
    db $10                                        ; $68D8: $10
    pop af                                        ; $68D9: $F1

jr_00B_68DA:
    ld d, $00                                     ; $68DA: $16 $00
    ld [$A0ED], a                                 ; $68DC: $EA $ED $A0
    ld a, b                                       ; $68DF: $78
    ld e, $E5                                     ; $68E0: $1E $E5
    ld l, b                                       ; $68E2: $68
    di                                            ; $68E3: $F3
    ld [bc], a                                    ; $68E4: $02
    dec bc                                        ; $68E5: $0B
    jr jr_00B_68D7                                ; $68E6: $18 $EF

jr_00B_68E8:
    nop                                           ; $68E8: $00
    jr z, jr_00B_68DA                             ; $68E9: $28 $EF

    ld [bc], a                                    ; $68EB: $02
    jr c, @-$0F                                   ; $68EC: $38 $EF

    inc b                                         ; $68EE: $04
    jr jr_00B_68E8                                ; $68EF: $18 $F7

    ld b, $28                                     ; $68F1: $06 $28
    rst RST_30                                    ; $68F3: $F7
    ld [$F738], sp                                ; $68F4: $08 $38 $F7
    ld a, [bc]                                    ; $68F7: $0A
    ld e, $FF                                     ; $68F8: $1E $FF
    inc c                                         ; $68FA: $0C
    dec de                                        ; $68FB: $1B
    rlca                                          ; $68FC: $07
    ld c, $1A                                     ; $68FD: $0E $1A
    rrca                                          ; $68FF: $0F
    db $10                                        ; $6900: $10
    dec hl                                        ; $6901: $2B
    rlca                                          ; $6902: $07
    ld [de], a                                    ; $6903: $12
    ld a, [hl+]                                   ; $6904: $2A
    rrca                                          ; $6905: $0F
    inc d                                         ; $6906: $14
    nop                                           ; $6907: $00
    ld [$00ED], a                                 ; $6908: $EA $ED $00
    ld a, d                                       ; $690B: $7A
    ld e, $11                                     ; $690C: $1E $11
    ld l, c                                       ; $690E: $69
    di                                            ; $690F: $F3
    nop                                           ; $6910: $00
    ld a, [bc]                                    ; $6911: $0A
    ld a, [de]                                    ; $6912: $1A
    rst RST_28                                    ; $6913: $EF
    nop                                           ; $6914: $00
    ld a, [hl+]                                   ; $6915: $2A
    rst RST_28                                    ; $6916: $EF
    ld [bc], a                                    ; $6917: $02
    ld a, [hl-]                                   ; $6918: $3A
    rst RST_28                                    ; $6919: $EF
    inc b                                         ; $691A: $04
    ld a, [de]                                    ; $691B: $1A
    rst RST_30                                    ; $691C: $F7
    ld b, $2A                                     ; $691D: $06 $2A
    rst RST_30                                    ; $691F: $F7
    ld [$F73A], sp                                ; $6920: $08 $3A $F7
    ld a, [bc]                                    ; $6923: $0A
    jr nz, @+$01                                  ; $6924: $20 $FF

    inc c                                         ; $6926: $0C
    ld [hl+], a                                   ; $6927: $22
    rlca                                          ; $6928: $07
    ld c, $12                                     ; $6929: $0E $12
    rlca                                          ; $692B: $07
    db $10                                        ; $692C: $10
    jr nz, jr_00B_693E                            ; $692D: $20 $0F

    ld [de], a                                    ; $692F: $12
    nop                                           ; $6930: $00
    ld [$4000], a                                 ; $6931: $EA $00 $40
    ld a, e                                       ; $6934: $7B
    ld e, $3A                                     ; $6935: $1E $3A
    ld l, c                                       ; $6937: $69
    di                                            ; $6938: $F3
    nop                                           ; $6939: $00
    ld a, [bc]                                    ; $693A: $0A
    ld a, [de]                                    ; $693B: $1A
    rst RST_28                                    ; $693C: $EF
    nop                                           ; $693D: $00

jr_00B_693E:
    ld a, [hl+]                                   ; $693E: $2A
    rst RST_28                                    ; $693F: $EF
    ld [bc], a                                    ; $6940: $02
    ld a, [hl-]                                   ; $6941: $3A
    rst RST_28                                    ; $6942: $EF
    inc b                                         ; $6943: $04
    ld a, [de]                                    ; $6944: $1A
    rst RST_30                                    ; $6945: $F7
    ld b, $2A                                     ; $6946: $06 $2A
    rst RST_30                                    ; $6948: $F7
    ld [$F73A], sp                                ; $6949: $08 $3A $F7
    ld a, [bc]                                    ; $694C: $0A
    jr nz, @+$01                                  ; $694D: $20 $FF

    inc c                                         ; $694F: $0C
    ld [hl+], a                                   ; $6950: $22
    rlca                                          ; $6951: $07
    ld c, $12                                     ; $6952: $0E $12
    rlca                                          ; $6954: $07
    db $10                                        ; $6955: $10
    jr nz, jr_00B_6967                            ; $6956: $20 $0F

    ld [de], a                                    ; $6958: $12
    nop                                           ; $6959: $00
    ld [$8000], a                                 ; $695A: $EA $00 $80
    ld a, h                                       ; $695D: $7C
    ld e, $63                                     ; $695E: $1E $63
    ld l, c                                       ; $6960: $69
    db $F4                                        ; $6961: $F4
    ld sp, hl                                     ; $6962: $F9
    dec b                                         ; $6963: $05
    jr nc, jr_00B_6969                            ; $6964: $30 $03

    nop                                           ; $6966: $00

jr_00B_6967:
    jr nc, @+$0D                                  ; $6967: $30 $0B

jr_00B_6969:
    ld [bc], a                                    ; $6969: $02
    jr nz, @+$04                                  ; $696A: $20 $02

    inc b                                         ; $696C: $04
    jr nz, jr_00B_6979                            ; $696D: $20 $0A

    ld b, $20                                     ; $696F: $06 $20
    ld [de], a                                    ; $6971: $12
    ld [$EA00], sp                                ; $6972: $08 $00 $EA
    nop                                           ; $6975: $00
    ld b, b                                       ; $6976: $40
    ld d, c                                       ; $6977: $51
    rra                                           ; $6978: $1F

jr_00B_6979:
    ld a, l                                       ; $6979: $7D
    ld l, c                                       ; $697A: $69
    ldh a, [c]                                    ; $697B: $F2
    nop                                           ; $697C: $00
    dec b                                         ; $697D: $05
    jr nc, jr_00B_6986                            ; $697E: $30 $06

    nop                                           ; $6980: $00
    jr nc, jr_00B_6991                            ; $6981: $30 $0E

    ld [bc], a                                    ; $6983: $02
    jr nz, @+$0B                                  ; $6984: $20 $09

jr_00B_6986:
    inc b                                         ; $6986: $04
    jr nz, jr_00B_699A                            ; $6987: $20 $11

    ld b, $30                                     ; $6989: $06 $30
    ld d, $08                                     ; $698B: $16 $08
    nop                                           ; $698D: $00
    ld [$E000], a                                 ; $698E: $EA $00 $E0

jr_00B_6991:
    ld d, c                                       ; $6991: $51
    rra                                           ; $6992: $1F
    sub a                                         ; $6993: $97
    ld l, c                                       ; $6994: $69
    ldh a, [c]                                    ; $6995: $F2
    nop                                           ; $6996: $00
    rlca                                          ; $6997: $07
    dec l                                         ; $6998: $2D

jr_00B_6999:
    rlca                                          ; $6999: $07

jr_00B_699A:
    nop                                           ; $699A: $00
    cpl                                           ; $699B: $2F
    rrca                                          ; $699C: $0F
    ld [bc], a                                    ; $699D: $02
    inc l                                         ; $699E: $2C
    rla                                           ; $699F: $17
    inc b                                         ; $69A0: $04
    dec e                                         ; $69A1: $1D
    rlca                                          ; $69A2: $07
    ld b, $1F                                     ; $69A3: $06 $1F
    rrca                                          ; $69A5: $0F
    ld [$171C], sp                                ; $69A6: $08 $1C $17
    ld a, [bc]                                    ; $69A9: $0A
    cpl                                           ; $69AA: $2F
    rra                                           ; $69AB: $1F
    inc c                                         ; $69AC: $0C
    jr nz, jr_00B_6999                            ; $69AD: $20 $EA

    nop                                           ; $69AF: $00
    ret nz                                        ; $69B0: $C0

    ld d, d                                       ; $69B1: $52
    rra                                           ; $69B2: $1F
    or a                                          ; $69B3: $B7
    ld l, c                                       ; $69B4: $69
    inc c                                         ; $69B5: $0C
    nop                                           ; $69B6: $00
    ld [$F723], sp                                ; $69B7: $08 $23 $F7
    nop                                           ; $69BA: $00
    rra                                           ; $69BB: $1F
    rst RST_38                                    ; $69BC: $FF
    ld [bc], a                                    ; $69BD: $02
    rra                                           ; $69BE: $1F
    rlca                                          ; $69BF: $07
    inc b                                         ; $69C0: $04
    jr nz, @+$11                                  ; $69C1: $20 $0F

    ld b, $30                                     ; $69C3: $06 $30
    rrca                                          ; $69C5: $0F
    ld [$072F], sp                                ; $69C6: $08 $2F $07
    ld a, [bc]                                    ; $69C9: $0A
    cpl                                           ; $69CA: $2F
    rst RST_38                                    ; $69CB: $FF
    inc c                                         ; $69CC: $0C
    inc sp                                        ; $69CD: $33
    di                                            ; $69CE: $F3
    ld c, $00                                     ; $69CF: $0E $00
    ld [$C000], a                                 ; $69D1: $EA $00 $C0
    ld d, e                                       ; $69D4: $53
    rra                                           ; $69D5: $1F
    jp c, $FB69                                   ; $69D6: $DA $69 $FB

    nop                                           ; $69D9: $00
    inc b                                         ; $69DA: $04
    cpl                                           ; $69DB: $2F
    rst RST_38                                    ; $69DC: $FF
    nop                                           ; $69DD: $00
    jr nc, @+$09                                  ; $69DE: $30 $07

    ld [bc], a                                    ; $69E0: $02
    rra                                           ; $69E1: $1F
    rst RST_38                                    ; $69E2: $FF
    inc b                                         ; $69E3: $04
    jr nz, jr_00B_69ED                            ; $69E4: $20 $07

    ld b, $00                                     ; $69E6: $06 $00
    ld b, b                                       ; $69E8: $40
    ld d, h                                       ; $69E9: $54
    rra                                           ; $69EA: $1F
    rst RST_28                                    ; $69EB: $EF
    ld l, c                                       ; $69EC: $69

jr_00B_69ED:
    ei                                            ; $69ED: $FB
    nop                                           ; $69EE: $00
    dec b                                         ; $69EF: $05
    dec hl                                        ; $69F0: $2B
    rst RST_30                                    ; $69F1: $F7
    nop                                           ; $69F2: $00
    add hl, hl                                    ; $69F3: $29
    rst RST_28                                    ; $69F4: $EF
    ld [bc], a                                    ; $69F5: $02
    ld [hl-], a                                   ; $69F6: $32
    rst RST_20                                    ; $69F7: $E7
    inc b                                         ; $69F8: $04
    add hl, sp                                    ; $69F9: $39
    rst RST_28                                    ; $69FA: $EF
    ld b, $3B                                     ; $69FB: $06 $3B
    rst RST_30                                    ; $69FD: $F7
    ld [$E000], sp                                ; $69FE: $08 $00 $E0
    ld d, h                                       ; $6A01: $54
    rra                                           ; $6A02: $1F
    rlca                                          ; $6A03: $07
    ld l, d                                       ; $6A04: $6A
    ei                                            ; $6A05: $FB
    nop                                           ; $6A06: $00
    inc bc                                        ; $6A07: $03
    dec hl                                        ; $6A08: $2B
    rst RST_30                                    ; $6A09: $F7
    nop                                           ; $6A0A: $00
    dec sp                                        ; $6A0B: $3B
    rst RST_30                                    ; $6A0C: $F7
    ld [bc], a                                    ; $6A0D: $02
    inc sp                                        ; $6A0E: $33
    rst RST_28                                    ; $6A0F: $EF
    inc b                                         ; $6A10: $04
    cp l                                          ; $6A11: $BD
    ld l, h                                       ; $6A12: $6C
    rst RST_38                                    ; $6A13: $FF
    rst RST_38                                    ; $6A14: $FF
    pop de                                        ; $6A15: $D1
    ld l, h                                       ; $6A16: $6C
    rst RST_38                                    ; $6A17: $FF
    rst RST_38                                    ; $6A18: $FF
    push hl                                       ; $6A19: $E5
    ld l, h                                       ; $6A1A: $6C
    rst RST_38                                    ; $6A1B: $FF
    rst RST_38                                    ; $6A1C: $FF
    pop de                                        ; $6A1D: $D1
    ld l, h                                       ; $6A1E: $6C
    rst RST_38                                    ; $6A1F: $FF
    rst RST_38                                    ; $6A20: $FF
    rst RST_38                                    ; $6A21: $FF
    rst RST_38                                    ; $6A22: $FF
    ld hl, $FF6D                                  ; $6A23: $21 $6D $FF
    rst RST_38                                    ; $6A26: $FF
    or $6C                                        ; $6A27: $F6 $6C
    rst RST_38                                    ; $6A29: $FF
    rst RST_38                                    ; $6A2A: $FF
    ld a, [bc]                                    ; $6A2B: $0A
    ld l, l                                       ; $6A2C: $6D
    rst RST_38                                    ; $6A2D: $FF
    rst RST_38                                    ; $6A2E: $FF
    rst RST_38                                    ; $6A2F: $FF
    rst RST_38                                    ; $6A30: $FF
    ld hl, $FF6D                                  ; $6A31: $21 $6D $FF
    rst RST_38                                    ; $6A34: $FF
    ld a, [bc]                                    ; $6A35: $0A
    ld l, l                                       ; $6A36: $6D
    rst RST_38                                    ; $6A37: $FF
    rst RST_38                                    ; $6A38: $FF
    or $6C                                        ; $6A39: $F6 $6C
    rst RST_38                                    ; $6A3B: $FF
    rst RST_38                                    ; $6A3C: $FF
    rst RST_38                                    ; $6A3D: $FF
    rst RST_38                                    ; $6A3E: $FF
    ld hl, $FF6D                                  ; $6A3F: $21 $6D $FF
    rst RST_38                                    ; $6A42: $FF
    rst RST_38                                    ; $6A43: $FF
    rst RST_38                                    ; $6A44: $FF
    ld hl, $FF6D                                  ; $6A45: $21 $6D $FF
    rst RST_38                                    ; $6A48: $FF
    or $6C                                        ; $6A49: $F6 $6C
    rst RST_38                                    ; $6A4B: $FF
    rst RST_38                                    ; $6A4C: $FF
    or $6C                                        ; $6A4D: $F6 $6C
    rst RST_38                                    ; $6A4F: $FF
    rst RST_38                                    ; $6A50: $FF
    ccf                                           ; $6A51: $3F
    ld l, l                                       ; $6A52: $6D
    rst RST_38                                    ; $6A53: $FF
    rst RST_38                                    ; $6A54: $FF
    ccf                                           ; $6A55: $3F
    ld l, l                                       ; $6A56: $6D
    rst RST_38                                    ; $6A57: $FF
    rst RST_38                                    ; $6A58: $FF
    ld a, [bc]                                    ; $6A59: $0A
    ld l, l                                       ; $6A5A: $6D
    rst RST_38                                    ; $6A5B: $FF
    rst RST_38                                    ; $6A5C: $FF
    ld a, [bc]                                    ; $6A5D: $0A
    ld l, l                                       ; $6A5E: $6D
    rst RST_38                                    ; $6A5F: $FF
    rst RST_38                                    ; $6A60: $FF
    ld hl, $FF6D                                  ; $6A61: $21 $6D $FF
    rst RST_38                                    ; $6A64: $FF
    rst RST_38                                    ; $6A65: $FF
    rst RST_38                                    ; $6A66: $FF
    ld d, b                                       ; $6A67: $50
    ld l, l                                       ; $6A68: $6D
    rst RST_38                                    ; $6A69: $FF
    rst RST_38                                    ; $6A6A: $FF
    rst RST_38                                    ; $6A6B: $FF
    rst RST_38                                    ; $6A6C: $FF
    ld d, b                                       ; $6A6D: $50
    ld l, l                                       ; $6A6E: $6D
    rst RST_38                                    ; $6A6F: $FF
    rst RST_38                                    ; $6A70: $FF
    rst RST_38                                    ; $6A71: $FF
    rst RST_38                                    ; $6A72: $FF
    ld d, b                                       ; $6A73: $50
    ld l, l                                       ; $6A74: $6D
    rst RST_38                                    ; $6A75: $FF
    rst RST_38                                    ; $6A76: $FF
    ld hl, $FF6D                                  ; $6A77: $21 $6D $FF
    rst RST_38                                    ; $6A7A: $FF
    rst RST_38                                    ; $6A7B: $FF
    rst RST_38                                    ; $6A7C: $FF
    ld h, h                                       ; $6A7D: $64
    ld l, l                                       ; $6A7E: $6D
    rst RST_38                                    ; $6A7F: $FF
    rst RST_38                                    ; $6A80: $FF
    add d                                         ; $6A81: $82
    ld l, l                                       ; $6A82: $6D
    rst RST_38                                    ; $6A83: $FF
    rst RST_38                                    ; $6A84: $FF
    and b                                         ; $6A85: $A0
    ld l, l                                       ; $6A86: $6D
    rst RST_38                                    ; $6A87: $FF
    rst RST_38                                    ; $6A88: $FF
    rst RST_38                                    ; $6A89: $FF
    rst RST_38                                    ; $6A8A: $FF
    ld h, h                                       ; $6A8B: $64
    ld l, l                                       ; $6A8C: $6D
    rst RST_38                                    ; $6A8D: $FF
    rst RST_38                                    ; $6A8E: $FF
    cp e                                          ; $6A8F: $BB
    ld l, l                                       ; $6A90: $6D
    rst RST_38                                    ; $6A91: $FF
    rst RST_38                                    ; $6A92: $FF
    ld h, h                                       ; $6A93: $64
    ld l, l                                       ; $6A94: $6D
    rst RST_38                                    ; $6A95: $FF
    rst RST_38                                    ; $6A96: $FF
    rst RST_38                                    ; $6A97: $FF
    rst RST_38                                    ; $6A98: $FF
    ld h, h                                       ; $6A99: $64
    ld l, l                                       ; $6A9A: $6D
    rst RST_38                                    ; $6A9B: $FF
    rst RST_38                                    ; $6A9C: $FF
    add d                                         ; $6A9D: $82
    ld l, l                                       ; $6A9E: $6D
    rst RST_38                                    ; $6A9F: $FF
    rst RST_38                                    ; $6AA0: $FF
    and b                                         ; $6AA1: $A0
    ld l, l                                       ; $6AA2: $6D
    rst RST_38                                    ; $6AA3: $FF
    rst RST_38                                    ; $6AA4: $FF
    reti                                          ; $6AA5: $D9


    ld l, l                                       ; $6AA6: $6D
    rst RST_38                                    ; $6AA7: $FF
    rst RST_38                                    ; $6AA8: $FF
    di                                            ; $6AA9: $F3
    ld l, l                                       ; $6AAA: $6D
    rst RST_38                                    ; $6AAB: $FF
    rst RST_38                                    ; $6AAC: $FF
    ld hl, $FF6D                                  ; $6AAD: $21 $6D $FF
    rst RST_38                                    ; $6AB0: $FF
    rst RST_38                                    ; $6AB1: $FF
    rst RST_38                                    ; $6AB2: $FF
    db $FD                                        ; $6AB3: $FD
    ld l, l                                       ; $6AB4: $6D
    rst RST_38                                    ; $6AB5: $FF
    rst RST_38                                    ; $6AB6: $FF
    adc h                                         ; $6AB7: $8C
    ld l, l                                       ; $6AB8: $6D
    rst RST_38                                    ; $6AB9: $FF
    rst RST_38                                    ; $6ABA: $FF
    adc h                                         ; $6ABB: $8C
    ld l, l                                       ; $6ABC: $6D
    rst RST_38                                    ; $6ABD: $FF
    rst RST_38                                    ; $6ABE: $FF
    adc h                                         ; $6ABF: $8C
    ld l, l                                       ; $6AC0: $6D
    rst RST_38                                    ; $6AC1: $FF
    rst RST_38                                    ; $6AC2: $FF
    ld hl, $FF6D                                  ; $6AC3: $21 $6D $FF
    rst RST_38                                    ; $6AC6: $FF
    rst RST_38                                    ; $6AC7: $FF
    rst RST_38                                    ; $6AC8: $FF
    ld l, [hl]                                    ; $6AC9: $6E
    ld l, l                                       ; $6ACA: $6D
    rst RST_38                                    ; $6ACB: $FF
    rst RST_38                                    ; $6ACC: $FF
    push bc                                       ; $6ACD: $C5
    ld l, l                                       ; $6ACE: $6D
    rst RST_38                                    ; $6ACF: $FF
    rst RST_38                                    ; $6AD0: $FF
    push bc                                       ; $6AD1: $C5
    ld l, l                                       ; $6AD2: $6D
    rst RST_38                                    ; $6AD3: $FF
    rst RST_38                                    ; $6AD4: $FF
    push bc                                       ; $6AD5: $C5
    ld l, l                                       ; $6AD6: $6D
    rst RST_38                                    ; $6AD7: $FF
    rst RST_38                                    ; $6AD8: $FF
    ld hl, $FF6D                                  ; $6AD9: $21 $6D $FF
    rst RST_38                                    ; $6ADC: $FF
    rst RST_38                                    ; $6ADD: $FF
    rst RST_38                                    ; $6ADE: $FF
    inc d                                         ; $6ADF: $14
    ld l, [hl]                                    ; $6AE0: $6E
    rst RST_38                                    ; $6AE1: $FF
    rst RST_38                                    ; $6AE2: $FF
    and b                                         ; $6AE3: $A0
    ld l, l                                       ; $6AE4: $6D
    rst RST_38                                    ; $6AE5: $FF
    rst RST_38                                    ; $6AE6: $FF
    ld c, h                                       ; $6AE7: $4C
    ld l, a                                       ; $6AE8: $6F
    rst RST_38                                    ; $6AE9: $FF
    rst RST_38                                    ; $6AEA: $FF
    xor d                                         ; $6AEB: $AA
    ld l, l                                       ; $6AEC: $6D
    rst RST_38                                    ; $6AED: $FF
    rst RST_38                                    ; $6AEE: $FF
    dec hl                                        ; $6AEF: $2B
    ld l, l                                       ; $6AF0: $6D
    rst RST_38                                    ; $6AF1: $FF
    rst RST_38                                    ; $6AF2: $FF
    rst RST_38                                    ; $6AF3: $FF
    rst RST_38                                    ; $6AF4: $FF
    jr z, jr_00B_6B65                             ; $6AF5: $28 $6E

    rst RST_38                                    ; $6AF7: $FF
    rst RST_38                                    ; $6AF8: $FF
    ld c, c                                       ; $6AF9: $49
    ld l, [hl]                                    ; $6AFA: $6E
    rst RST_38                                    ; $6AFB: $FF
    rst RST_38                                    ; $6AFC: $FF
    ld hl, $FF6D                                  ; $6AFD: $21 $6D $FF
    rst RST_38                                    ; $6B00: $FF
    rst RST_38                                    ; $6B01: $FF
    rst RST_38                                    ; $6B02: $FF
    ld [hl-], a                                   ; $6B03: $32
    ld l, [hl]                                    ; $6B04: $6E
    rst RST_38                                    ; $6B05: $FF
    rst RST_38                                    ; $6B06: $FF
    ld d, e                                       ; $6B07: $53
    ld l, [hl]                                    ; $6B08: $6E
    rst RST_38                                    ; $6B09: $FF
    rst RST_38                                    ; $6B0A: $FF
    dec hl                                        ; $6B0B: $2B
    ld l, l                                       ; $6B0C: $6D
    rst RST_38                                    ; $6B0D: $FF
    rst RST_38                                    ; $6B0E: $FF
    rst RST_38                                    ; $6B0F: $FF
    rst RST_38                                    ; $6B10: $FF
    ld b, h                                       ; $6B11: $44
    ld [hl], b                                    ; $6B12: $70
    rst RST_38                                    ; $6B13: $FF
    rst RST_38                                    ; $6B14: $FF
    ld e, e                                       ; $6B15: $5B
    ld [hl], b                                    ; $6B16: $70
    rst RST_38                                    ; $6B17: $FF
    rst RST_38                                    ; $6B18: $FF
    rst RST_38                                    ; $6B19: $FF
    rst RST_38                                    ; $6B1A: $FF
    ld h, a                                       ; $6B1B: $67
    ld l, [hl]                                    ; $6B1C: $6E
    rst RST_38                                    ; $6B1D: $FF
    rst RST_38                                    ; $6B1E: $FF
    adc a                                         ; $6B1F: $8F
    ld l, [hl]                                    ; $6B20: $6E
    rst RST_38                                    ; $6B21: $FF
    rst RST_38                                    ; $6B22: $FF
    ld a, b                                       ; $6B23: $78
    ld l, [hl]                                    ; $6B24: $6E
    rst RST_38                                    ; $6B25: $FF
    rst RST_38                                    ; $6B26: $FF
    rst RST_38                                    ; $6B27: $FF
    rst RST_38                                    ; $6B28: $FF
    ld h, a                                       ; $6B29: $67
    ld l, [hl]                                    ; $6B2A: $6E
    rst RST_38                                    ; $6B2B: $FF
    rst RST_38                                    ; $6B2C: $FF
    ld a, b                                       ; $6B2D: $78
    ld l, [hl]                                    ; $6B2E: $6E
    rst RST_38                                    ; $6B2F: $FF
    rst RST_38                                    ; $6B30: $FF
    ld h, a                                       ; $6B31: $67
    ld l, [hl]                                    ; $6B32: $6E
    rst RST_38                                    ; $6B33: $FF
    rst RST_38                                    ; $6B34: $FF
    ld a, b                                       ; $6B35: $78
    ld l, [hl]                                    ; $6B36: $6E
    rst RST_38                                    ; $6B37: $FF
    rst RST_38                                    ; $6B38: $FF
    ld h, a                                       ; $6B39: $67
    ld l, [hl]                                    ; $6B3A: $6E
    rst RST_38                                    ; $6B3B: $FF
    rst RST_38                                    ; $6B3C: $FF
    rst RST_38                                    ; $6B3D: $FF
    rst RST_38                                    ; $6B3E: $FF
    cp e                                          ; $6B3F: $BB
    ld l, [hl]                                    ; $6B40: $6E
    rst RST_38                                    ; $6B41: $FF
    rst RST_38                                    ; $6B42: $FF
    push de                                       ; $6B43: $D5
    ld l, [hl]                                    ; $6B44: $6E
    rst RST_38                                    ; $6B45: $FF
    rst RST_38                                    ; $6B46: $FF
    push af                                       ; $6B47: $F5
    ld l, [hl]                                    ; $6B48: $6E
    rst RST_38                                    ; $6B49: $FF
    rst RST_38                                    ; $6B4A: $FF
    rrca                                          ; $6B4B: $0F
    ld h, l                                       ; $6B4C: $65
    rst RST_38                                    ; $6B4D: $FF
    rst RST_38                                    ; $6B4E: $FF
    ld [hl-], a                                   ; $6B4F: $32
    ld h, l                                       ; $6B50: $65
    rst RST_38                                    ; $6B51: $FF
    rst RST_38                                    ; $6B52: $FF
    rrca                                          ; $6B53: $0F
    ld h, l                                       ; $6B54: $65
    rst RST_38                                    ; $6B55: $FF
    rst RST_38                                    ; $6B56: $FF
    and $64                                       ; $6B57: $E6 $64
    rst RST_38                                    ; $6B59: $FF
    rst RST_38                                    ; $6B5A: $FF
    rrca                                          ; $6B5B: $0F
    ld h, l                                       ; $6B5C: $65
    rst RST_38                                    ; $6B5D: $FF
    rst RST_38                                    ; $6B5E: $FF
    ld [hl-], a                                   ; $6B5F: $32
    ld h, l                                       ; $6B60: $65
    rst RST_38                                    ; $6B61: $FF
    rst RST_38                                    ; $6B62: $FF
    ld d, l                                       ; $6B63: $55
    ld h, l                                       ; $6B64: $65

jr_00B_6B65:
    rst RST_38                                    ; $6B65: $FF
    rst RST_38                                    ; $6B66: $FF
    ld [hl], d                                    ; $6B67: $72
    ld h, l                                       ; $6B68: $65
    rst RST_38                                    ; $6B69: $FF
    rst RST_38                                    ; $6B6A: $FF
    dec de                                        ; $6B6B: $1B
    ld l, a                                       ; $6B6C: $6F
    cp c                                          ; $6B6D: $B9
    ld h, l                                       ; $6B6E: $65
    dec h                                         ; $6B6F: $25
    ld l, a                                       ; $6B70: $6F
    cp c                                          ; $6B71: $B9
    ld h, l                                       ; $6B72: $65
    rst RST_38                                    ; $6B73: $FF
    rst RST_38                                    ; $6B74: $FF
    ld b, d                                       ; $6B75: $42
    ld l, a                                       ; $6B76: $6F
    rst RST_38                                    ; $6B77: $FF
    rst RST_38                                    ; $6B78: $FF
    rst RST_38                                    ; $6B79: $FF
    rst RST_38                                    ; $6B7A: $FF
    ld b, d                                       ; $6B7B: $42
    ld l, a                                       ; $6B7C: $6F
    rst RST_38                                    ; $6B7D: $FF
    rst RST_38                                    ; $6B7E: $FF
    rst RST_38                                    ; $6B7F: $FF
    rst RST_38                                    ; $6B80: $FF
    cp l                                          ; $6B81: $BD
    ld l, h                                       ; $6B82: $6C
    rst RST_38                                    ; $6B83: $FF
    rst RST_38                                    ; $6B84: $FF
    ld b, d                                       ; $6B85: $42
    ld l, a                                       ; $6B86: $6F
    rst RST_38                                    ; $6B87: $FF
    rst RST_38                                    ; $6B88: $FF
    ld b, d                                       ; $6B89: $42
    ld l, a                                       ; $6B8A: $6F
    rst RST_38                                    ; $6B8B: $FF
    rst RST_38                                    ; $6B8C: $FF
    rst RST_38                                    ; $6B8D: $FF
    rst RST_38                                    ; $6B8E: $FF
    add c                                         ; $6B8F: $81
    ld l, a                                       ; $6B90: $6F
    rst RST_38                                    ; $6B91: $FF
    rst RST_38                                    ; $6B92: $FF
    rst RST_38                                    ; $6B93: $FF
    rst RST_38                                    ; $6B94: $FF
    ld b, d                                       ; $6B95: $42
    ld l, a                                       ; $6B96: $6F
    rst RST_38                                    ; $6B97: $FF
    rst RST_38                                    ; $6B98: $FF
    or $6C                                        ; $6B99: $F6 $6C
    rst RST_38                                    ; $6B9B: $FF
    rst RST_38                                    ; $6B9C: $FF
    or $6C                                        ; $6B9D: $F6 $6C
    rst RST_38                                    ; $6B9F: $FF
    rst RST_38                                    ; $6BA0: $FF
    ccf                                           ; $6BA1: $3F
    ld l, l                                       ; $6BA2: $6D
    rst RST_38                                    ; $6BA3: $FF
    rst RST_38                                    ; $6BA4: $FF
    ccf                                           ; $6BA5: $3F
    ld l, l                                       ; $6BA6: $6D
    rst RST_38                                    ; $6BA7: $FF
    rst RST_38                                    ; $6BA8: $FF
    ld a, [bc]                                    ; $6BA9: $0A
    ld l, l                                       ; $6BAA: $6D
    rst RST_38                                    ; $6BAB: $FF
    rst RST_38                                    ; $6BAC: $FF
    ld hl, $FF6D                                  ; $6BAD: $21 $6D $FF
    rst RST_38                                    ; $6BB0: $FF
    rst RST_38                                    ; $6BB1: $FF
    rst RST_38                                    ; $6BB2: $FF
    ld b, d                                       ; $6BB3: $42
    ld l, a                                       ; $6BB4: $6F
    rst RST_38                                    ; $6BB5: $FF
    rst RST_38                                    ; $6BB6: $FF
    sub d                                         ; $6BB7: $92
    ld l, a                                       ; $6BB8: $6F
    rst RST_38                                    ; $6BB9: $FF
    rst RST_38                                    ; $6BBA: $FF
    or b                                          ; $6BBB: $B0
    ld l, a                                       ; $6BBC: $6F
    rst RST_38                                    ; $6BBD: $FF
    rst RST_38                                    ; $6BBE: $FF
    sub d                                         ; $6BBF: $92
    ld l, a                                       ; $6BC0: $6F
    rst RST_38                                    ; $6BC1: $FF
    rst RST_38                                    ; $6BC2: $FF
    or b                                          ; $6BC3: $B0
    ld l, a                                       ; $6BC4: $6F
    rst RST_38                                    ; $6BC5: $FF
    rst RST_38                                    ; $6BC6: $FF
    rst RST_38                                    ; $6BC7: $FF
    rst RST_38                                    ; $6BC8: $FF
    ld b, d                                       ; $6BC9: $42
    ld l, a                                       ; $6BCA: $6F
    rst RST_38                                    ; $6BCB: $FF
    rst RST_38                                    ; $6BCC: $FF
    ld d, [hl]                                    ; $6BCD: $56
    ld l, a                                       ; $6BCE: $6F
    rst RST_38                                    ; $6BCF: $FF
    rst RST_38                                    ; $6BD0: $FF
    ld h, b                                       ; $6BD1: $60
    ld l, a                                       ; $6BD2: $6F
    rst RST_38                                    ; $6BD3: $FF
    rst RST_38                                    ; $6BD4: $FF
    ld l, d                                       ; $6BD5: $6A
    ld l, a                                       ; $6BD6: $6F
    rst RST_38                                    ; $6BD7: $FF
    rst RST_38                                    ; $6BD8: $FF
    ld l, d                                       ; $6BD9: $6A
    ld l, a                                       ; $6BDA: $6F
    rst RST_38                                    ; $6BDB: $FF
    rst RST_38                                    ; $6BDC: $FF
    sub d                                         ; $6BDD: $92
    ld l, a                                       ; $6BDE: $6F
    rst RST_38                                    ; $6BDF: $FF
    rst RST_38                                    ; $6BE0: $FF
    or b                                          ; $6BE1: $B0
    ld l, a                                       ; $6BE2: $6F
    rst RST_38                                    ; $6BE3: $FF
    rst RST_38                                    ; $6BE4: $FF
    rst RST_38                                    ; $6BE5: $FF
    rst RST_38                                    ; $6BE6: $FF
    ld b, d                                       ; $6BE7: $42
    ld l, a                                       ; $6BE8: $6F
    rst RST_38                                    ; $6BE9: $FF
    rst RST_38                                    ; $6BEA: $FF
    sub d                                         ; $6BEB: $92
    ld l, a                                       ; $6BEC: $6F
    rst RST_38                                    ; $6BED: $FF
    rst RST_38                                    ; $6BEE: $FF
    or b                                          ; $6BEF: $B0
    ld l, a                                       ; $6BF0: $6F
    rst RST_38                                    ; $6BF1: $FF
    rst RST_38                                    ; $6BF2: $FF
    rst RST_38                                    ; $6BF3: $FF
    rst RST_38                                    ; $6BF4: $FF
    sbc h                                         ; $6BF5: $9C
    ld l, a                                       ; $6BF6: $6F
    rst RST_38                                    ; $6BF7: $FF
    rst RST_38                                    ; $6BF8: $FF
    rst RST_38                                    ; $6BF9: $FF
    rst RST_38                                    ; $6BFA: $FF
    ld hl, $FF6D                                  ; $6BFB: $21 $6D $FF
    rst RST_38                                    ; $6BFE: $FF
    ld hl, $FF6D                                  ; $6BFF: $21 $6D $FF
    rst RST_38                                    ; $6C02: $FF
    rst RST_38                                    ; $6C03: $FF
    rst RST_38                                    ; $6C04: $FF
    ld h, h                                       ; $6C05: $64
    ld l, l                                       ; $6C06: $6D
    rst RST_38                                    ; $6C07: $FF
    rst RST_38                                    ; $6C08: $FF
    add c                                         ; $6C09: $81
    ld l, a                                       ; $6C0A: $6F
    rst RST_38                                    ; $6C0B: $FF
    rst RST_38                                    ; $6C0C: $FF
    call nz, $FF6F                                ; $6C0D: $C4 $6F $FF
    rst RST_38                                    ; $6C10: $FF
    ld b, d                                       ; $6C11: $42
    ld l, a                                       ; $6C12: $6F
    rst RST_38                                    ; $6C13: $FF
    rst RST_38                                    ; $6C14: $FF
    ld hl, $FF6D                                  ; $6C15: $21 $6D $FF
    rst RST_38                                    ; $6C18: $FF
    rst RST_38                                    ; $6C19: $FF
    rst RST_38                                    ; $6C1A: $FF
    ld hl, $FF6D                                  ; $6C1B: $21 $6D $FF
    rst RST_38                                    ; $6C1E: $FF
    ld h, h                                       ; $6C1F: $64
    ld l, l                                       ; $6C20: $6D
    rst RST_38                                    ; $6C21: $FF
    rst RST_38                                    ; $6C22: $FF
    ret c                                         ; $6C23: $D8

    ld l, a                                       ; $6C24: $6F
    rst RST_38                                    ; $6C25: $FF
    rst RST_38                                    ; $6C26: $FF
    ret c                                         ; $6C27: $D8

    ld l, a                                       ; $6C28: $6F
    rst RST_38                                    ; $6C29: $FF
    rst RST_38                                    ; $6C2A: $FF
    ccf                                           ; $6C2B: $3F
    ld l, l                                       ; $6C2C: $6D
    rst RST_38                                    ; $6C2D: $FF
    rst RST_38                                    ; $6C2E: $FF
    ld a, [bc]                                    ; $6C2F: $0A
    ld l, l                                       ; $6C30: $6D
    rst RST_38                                    ; $6C31: $FF
    rst RST_38                                    ; $6C32: $FF
    ld hl, $FF6D                                  ; $6C33: $21 $6D $FF
    rst RST_38                                    ; $6C36: $FF
    rst RST_38                                    ; $6C37: $FF
    rst RST_38                                    ; $6C38: $FF
    ldh a, [c]                                    ; $6C39: $F2
    ld l, a                                       ; $6C3A: $6F
    rst RST_38                                    ; $6C3B: $FF
    rst RST_38                                    ; $6C3C: $FF
    inc c                                         ; $6C3D: $0C
    ld [hl], b                                    ; $6C3E: $70
    rst RST_38                                    ; $6C3F: $FF
    rst RST_38                                    ; $6C40: $FF
    reti                                          ; $6C41: $D9


    ld l, l                                       ; $6C42: $6D
    rst RST_38                                    ; $6C43: $FF
    rst RST_38                                    ; $6C44: $FF
    di                                            ; $6C45: $F3
    ld l, l                                       ; $6C46: $6D
    rst RST_38                                    ; $6C47: $FF
    rst RST_38                                    ; $6C48: $FF
    inc c                                         ; $6C49: $0C
    ld [hl], b                                    ; $6C4A: $70
    rst RST_38                                    ; $6C4B: $FF
    rst RST_38                                    ; $6C4C: $FF
    reti                                          ; $6C4D: $D9


    ld l, l                                       ; $6C4E: $6D
    rst RST_38                                    ; $6C4F: $FF
    rst RST_38                                    ; $6C50: $FF
    di                                            ; $6C51: $F3
    ld l, l                                       ; $6C52: $6D
    rst RST_38                                    ; $6C53: $FF
    rst RST_38                                    ; $6C54: $FF
    inc c                                         ; $6C55: $0C
    ld [hl], b                                    ; $6C56: $70
    rst RST_38                                    ; $6C57: $FF
    rst RST_38                                    ; $6C58: $FF
    ld a, [hl+]                                   ; $6C59: $2A
    ld [hl], b                                    ; $6C5A: $70
    rst RST_38                                    ; $6C5B: $FF
    rst RST_38                                    ; $6C5C: $FF
    ld b, h                                       ; $6C5D: $44
    ld [hl], b                                    ; $6C5E: $70
    rst RST_38                                    ; $6C5F: $FF
    rst RST_38                                    ; $6C60: $FF
    ld h, h                                       ; $6C61: $64
    ld l, l                                       ; $6C62: $6D
    rst RST_38                                    ; $6C63: $FF
    rst RST_38                                    ; $6C64: $FF
    rst RST_38                                    ; $6C65: $FF
    rst RST_38                                    ; $6C66: $FF
    ld h, a                                       ; $6C67: $67
    ld l, [hl]                                    ; $6C68: $6E
    rst RST_38                                    ; $6C69: $FF
    rst RST_38                                    ; $6C6A: $FF
    ld a, b                                       ; $6C6B: $78
    ld l, [hl]                                    ; $6C6C: $6E
    rst RST_38                                    ; $6C6D: $FF
    rst RST_38                                    ; $6C6E: $FF
    ld h, a                                       ; $6C6F: $67
    ld l, [hl]                                    ; $6C70: $6E
    rst RST_38                                    ; $6C71: $FF
    rst RST_38                                    ; $6C72: $FF
    ld a, [hl+]                                   ; $6C73: $2A
    ld [hl], b                                    ; $6C74: $70
    rst RST_38                                    ; $6C75: $FF
    rst RST_38                                    ; $6C76: $FF
    ld b, h                                       ; $6C77: $44
    ld [hl], b                                    ; $6C78: $70
    rst RST_38                                    ; $6C79: $FF
    rst RST_38                                    ; $6C7A: $FF
    ld e, e                                       ; $6C7B: $5B
    ld [hl], b                                    ; $6C7C: $70
    rst RST_38                                    ; $6C7D: $FF
    rst RST_38                                    ; $6C7E: $FF
    ldh a, [c]                                    ; $6C7F: $F2
    ld l, a                                       ; $6C80: $6F
    rst RST_38                                    ; $6C81: $FF
    rst RST_38                                    ; $6C82: $FF
    rst RST_38                                    ; $6C83: $FF
    rst RST_38                                    ; $6C84: $FF
    ld h, a                                       ; $6C85: $67
    ld l, [hl]                                    ; $6C86: $6E
    rst RST_38                                    ; $6C87: $FF
    rst RST_38                                    ; $6C88: $FF
    ld a, b                                       ; $6C89: $78
    ld l, [hl]                                    ; $6C8A: $6E
    rst RST_38                                    ; $6C8B: $FF
    rst RST_38                                    ; $6C8C: $FF
    ld h, a                                       ; $6C8D: $67
    ld l, [hl]                                    ; $6C8E: $6E
    rst RST_38                                    ; $6C8F: $FF
    rst RST_38                                    ; $6C90: $FF
    di                                            ; $6C91: $F3
    ld l, l                                       ; $6C92: $6D
    rst RST_38                                    ; $6C93: $FF
    rst RST_38                                    ; $6C94: $FF
    ld d, $70                                     ; $6C95: $16 $70
    rst RST_38                                    ; $6C97: $FF
    rst RST_38                                    ; $6C98: $FF
    reti                                          ; $6C99: $D9


    ld l, l                                       ; $6C9A: $6D
    rst RST_38                                    ; $6C9B: $FF
    rst RST_38                                    ; $6C9C: $FF
    ld h, a                                       ; $6C9D: $67
    ld l, [hl]                                    ; $6C9E: $6E
    rst RST_38                                    ; $6C9F: $FF
    rst RST_38                                    ; $6CA0: $FF
    ld a, b                                       ; $6CA1: $78
    ld l, [hl]                                    ; $6CA2: $6E
    rst RST_38                                    ; $6CA3: $FF
    rst RST_38                                    ; $6CA4: $FF
    ld h, a                                       ; $6CA5: $67
    ld l, [hl]                                    ; $6CA6: $6E
    rst RST_38                                    ; $6CA7: $FF
    rst RST_38                                    ; $6CA8: $FF
    rst RST_38                                    ; $6CA9: $FF
    rst RST_38                                    ; $6CAA: $FF
    inc c                                         ; $6CAB: $0C
    ld [hl], b                                    ; $6CAC: $70
    rst RST_38                                    ; $6CAD: $FF
    rst RST_38                                    ; $6CAE: $FF
    ld a, [hl+]                                   ; $6CAF: $2A
    ld [hl], b                                    ; $6CB0: $70
    rst RST_38                                    ; $6CB1: $FF
    rst RST_38                                    ; $6CB2: $FF
    ld b, h                                       ; $6CB3: $44
    ld [hl], b                                    ; $6CB4: $70
    rst RST_38                                    ; $6CB5: $FF
    rst RST_38                                    ; $6CB6: $FF
    ld h, h                                       ; $6CB7: $64
    ld l, l                                       ; $6CB8: $6D
    rst RST_38                                    ; $6CB9: $FF
    rst RST_38                                    ; $6CBA: $FF
    rst RST_38                                    ; $6CBB: $FF
    rst RST_38                                    ; $6CBC: $FF
    nop                                           ; $6CBD: $00
    ld [$0000], a                                 ; $6CBE: $EA $00 $00
    ld b, b                                       ; $6CC1: $40

jr_00B_6CC2:
    rra                                           ; $6CC2: $1F
    rst RST_00                                    ; $6CC3: $C7
    ld l, h                                       ; $6CC4: $6C
    nop                                           ; $6CC5: $00
    nop                                           ; $6CC6: $00
    inc bc                                        ; $6CC7: $03
    jr nc, jr_00B_6CC2                            ; $6CC8: $30 $F8

    nop                                           ; $6CCA: $00
    jr nc, jr_00B_6CCD                            ; $6CCB: $30 $00

jr_00B_6CCD:
    ld [bc], a                                    ; $6CCD: $02

jr_00B_6CCE:
    jr nz, jr_00B_6CCE                            ; $6CCE: $20 $FE

    inc b                                         ; $6CD0: $04
    nop                                           ; $6CD1: $00
    ld [$6000], a                                 ; $6CD2: $EA $00 $60
    ld b, b                                       ; $6CD5: $40

jr_00B_6CD6:
    rra                                           ; $6CD6: $1F
    db $DB                                        ; $6CD7: $DB
    ld l, h                                       ; $6CD8: $6C
    nop                                           ; $6CD9: $00
    nop                                           ; $6CDA: $00
    inc bc                                        ; $6CDB: $03
    jr nc, jr_00B_6CD6                            ; $6CDC: $30 $F8

    nop                                           ; $6CDE: $00
    jr nc, jr_00B_6CE1                            ; $6CDF: $30 $00

jr_00B_6CE1:
    ld [bc], a                                    ; $6CE1: $02
    jr nz, jr_00B_6CE4                            ; $6CE2: $20 $00

jr_00B_6CE4:
    inc b                                         ; $6CE4: $04
    nop                                           ; $6CE5: $00
    ld [$C000], a                                 ; $6CE6: $EA $00 $C0
    ld b, b                                       ; $6CE9: $40

jr_00B_6CEA:
    rra                                           ; $6CEA: $1F
    rst RST_28                                    ; $6CEB: $EF
    ld l, h                                       ; $6CEC: $6C
    nop                                           ; $6CED: $00
    nop                                           ; $6CEE: $00
    ld [bc], a                                    ; $6CEF: $02
    jr nc, jr_00B_6CEA                            ; $6CF0: $30 $F8

    nop                                           ; $6CF2: $00
    jr nc, jr_00B_6CF5                            ; $6CF3: $30 $00

jr_00B_6CF5:
    ld [bc], a                                    ; $6CF5: $02
    nop                                           ; $6CF6: $00
    ld [$0000], a                                 ; $6CF7: $EA $00 $00
    ld b, c                                       ; $6CFA: $41
    rra                                           ; $6CFB: $1F
    nop                                           ; $6CFC: $00
    ld l, l                                       ; $6CFD: $6D
    rlca                                          ; $6CFE: $07
    ld b, $03                                     ; $6CFF: $06 $03
    ld h, $F3                                     ; $6D01: $26 $F3
    nop                                           ; $6D03: $00
    ld h, $FB                                     ; $6D04: $26 $FB
    ld [bc], a                                    ; $6D06: $02
    ld d, $F3                                     ; $6D07: $16 $F3
    inc b                                         ; $6D09: $04
    nop                                           ; $6D0A: $00
    ld [$6000], a                                 ; $6D0B: $EA $00 $60
    ld b, c                                       ; $6D0E: $41
    rra                                           ; $6D0F: $1F
    inc d                                         ; $6D10: $14
    ld l, l                                       ; $6D11: $6D
    db $10                                        ; $6D12: $10
    rlca                                          ; $6D13: $07
    inc b                                         ; $6D14: $04
    ld h, $EA                                     ; $6D15: $26 $EA

jr_00B_6D17:
    nop                                           ; $6D17: $00
    ld h, $F2                                     ; $6D18: $26 $F2
    ld [bc], a                                    ; $6D1A: $02
    ld d, $EE                                     ; $6D1B: $16 $EE
    inc b                                         ; $6D1D: $04
    ld d, $F6                                     ; $6D1E: $16 $F6
    ld b, $00                                     ; $6D20: $06 $00
    ld [$E000], a                                 ; $6D22: $EA $00 $E0
    ld b, c                                       ; $6D25: $41
    rra                                           ; $6D26: $1F
    dec [hl]                                      ; $6D27: $35
    ld l, l                                       ; $6D28: $6D
    nop                                           ; $6D29: $00
    nop                                           ; $6D2A: $00
    jr nz, jr_00B_6D17                            ; $6D2B: $20 $EA

    nop                                           ; $6D2D: $00
    ldh [rSTAT], a                                ; $6D2E: $E0 $41

jr_00B_6D30:
    rra                                           ; $6D30: $1F
    dec [hl]                                      ; $6D31: $35
    ld l, l                                       ; $6D32: $6D
    nop                                           ; $6D33: $00
    nop                                           ; $6D34: $00
    inc bc                                        ; $6D35: $03
    jr nc, jr_00B_6D30                            ; $6D36: $30 $F8

    nop                                           ; $6D38: $00
    jr nc, jr_00B_6D3B                            ; $6D39: $30 $00

jr_00B_6D3B:
    ld [bc], a                                    ; $6D3B: $02
    jr nc, jr_00B_6D46                            ; $6D3C: $30 $08

    inc b                                         ; $6D3E: $04
    nop                                           ; $6D3F: $00
    ld [$4000], a                                 ; $6D40: $EA $00 $40
    ld b, d                                       ; $6D43: $42
    rra                                           ; $6D44: $1F
    ld c, c                                       ; $6D45: $49

jr_00B_6D46:
    ld l, l                                       ; $6D46: $6D
    ld [$021A], sp                                ; $6D47: $08 $1A $02
    db $10                                        ; $6D4A: $10
    ldh a, [c]                                    ; $6D4B: $F2
    nop                                           ; $6D4C: $00
    db $10                                        ; $6D4D: $10
    ld a, [$0002]                                 ; $6D4E: $FA $02 $00
    ld [$8000], a                                 ; $6D51: $EA $00 $80
    ld b, d                                       ; $6D54: $42
    rra                                           ; $6D55: $1F
    ld e, d                                       ; $6D56: $5A
    ld l, l                                       ; $6D57: $6D
    nop                                           ; $6D58: $00
    nop                                           ; $6D59: $00
    inc bc                                        ; $6D5A: $03
    cpl                                           ; $6D5B: $2F
    ld hl, sp+$00                                 ; $6D5C: $F8 $00
    cpl                                           ; $6D5E: $2F
    nop                                           ; $6D5F: $00
    ld [bc], a                                    ; $6D60: $02
    ccf                                           ; $6D61: $3F
    nop                                           ; $6D62: $00
    inc b                                         ; $6D63: $04
    nop                                           ; $6D64: $00
    ld [$6000], a                                 ; $6D65: $EA $00 $60
    ld b, h                                       ; $6D68: $44
    rra                                           ; $6D69: $1F
    ld a, b                                       ; $6D6A: $78
    ld l, l                                       ; $6D6B: $6D
    ld bc, $0000                                  ; $6D6C: $01 $00 $00

jr_00B_6D6F:
    ld [$6000], a                                 ; $6D6F: $EA $00 $60
    ld b, h                                       ; $6D72: $44
    rra                                           ; $6D73: $1F
    ld a, b                                       ; $6D74: $78
    ld l, l                                       ; $6D75: $6D
    inc bc                                        ; $6D76: $03
    ei                                            ; $6D77: $FB
    inc bc                                        ; $6D78: $03
    jr nc, jr_00B_6D6F                            ; $6D79: $30 $F4

    nop                                           ; $6D7B: $00
    jr nc, @-$02                                  ; $6D7C: $30 $FC

jr_00B_6D7E:
    ld [bc], a                                    ; $6D7E: $02
    jr nz, @-$02                                  ; $6D7F: $20 $FC

    inc b                                         ; $6D81: $04
    nop                                           ; $6D82: $00
    ld [$C0EE], a                                 ; $6D83: $EA $EE $C0
    ld b, h                                       ; $6D86: $44
    rra                                           ; $6D87: $1F
    sub [hl]                                      ; $6D88: $96

jr_00B_6D89:
    ld l, l                                       ; $6D89: $6D
    rlca                                          ; $6D8A: $07
    nop                                           ; $6D8B: $00
    nop                                           ; $6D8C: $00
    ld [$C0EE], a                                 ; $6D8D: $EA $EE $C0
    ld b, h                                       ; $6D90: $44
    rra                                           ; $6D91: $1F
    sub [hl]                                      ; $6D92: $96
    ld l, l                                       ; $6D93: $6D

jr_00B_6D94:
    inc c                                         ; $6D94: $0C
    db $FC                                        ; $6D95: $FC

jr_00B_6D96:
    inc bc                                        ; $6D96: $03
    jr nc, jr_00B_6D7E                            ; $6D97: $30 $E5

    nop                                           ; $6D99: $00
    jr nc, jr_00B_6D89                            ; $6D9A: $30 $ED

    ld [bc], a                                    ; $6D9C: $02
    jr nc, jr_00B_6D94                            ; $6D9D: $30 $F5

    inc b                                         ; $6D9F: $04
    nop                                           ; $6DA0: $00
    ld [$2000], a                                 ; $6DA1: $EA $00 $20
    ld b, l                                       ; $6DA4: $45
    rra                                           ; $6DA5: $1F
    or h                                          ; $6DA6: $B4
    ld l, l                                       ; $6DA7: $6D
    ld a, [bc]                                    ; $6DA8: $0A
    nop                                           ; $6DA9: $00
    jr nz, jr_00B_6D96                            ; $6DAA: $20 $EA

    xor $20                                       ; $6DAC: $EE $20

jr_00B_6DAE:
    ld b, l                                       ; $6DAE: $45
    rra                                           ; $6DAF: $1F
    or h                                          ; $6DB0: $B4
    ld l, l                                       ; $6DB1: $6D
    or $00                                        ; $6DB2: $F6 $00
    ld [bc], a                                    ; $6DB4: $02
    jr nc, @-$12                                  ; $6DB5: $30 $EC

    nop                                           ; $6DB7: $00
    jr nc, jr_00B_6DAE                            ; $6DB8: $30 $F4

    ld [bc], a                                    ; $6DBA: $02
    nop                                           ; $6DBB: $00
    ld [$60EF], a                                 ; $6DBC: $EA $EF $60
    ld b, l                                       ; $6DBF: $45
    rra                                           ; $6DC0: $1F

jr_00B_6DC1:
    rst RST_08                                    ; $6DC1: $CF
    ld l, l                                       ; $6DC2: $6D
    ld bc, $0000                                  ; $6DC3: $01 $00 $00
    ld [$60EF], a                                 ; $6DC6: $EA $EF $60
    ld b, l                                       ; $6DC9: $45
    rra                                           ; $6DCA: $1F
    rst RST_08                                    ; $6DCB: $CF

jr_00B_6DCC:
    ld l, l                                       ; $6DCC: $6D
    dec b                                         ; $6DCD: $05
    ei                                            ; $6DCE: $FB
    inc bc                                        ; $6DCF: $03
    jr nc, jr_00B_6DC1                            ; $6DD0: $30 $EF

    nop                                           ; $6DD2: $00
    jr nc, jr_00B_6DCC                            ; $6DD3: $30 $F7

    ld [bc], a                                    ; $6DD5: $02
    jr nc, @+$01                                  ; $6DD6: $30 $FF

    inc b                                         ; $6DD8: $04
    nop                                           ; $6DD9: $00
    ld [$C0F0], a                                 ; $6DDA: $EA $F0 $C0
    ld b, l                                       ; $6DDD: $45
    rra                                           ; $6DDE: $1F
    db $E3                                        ; $6DDF: $E3
    ld l, l                                       ; $6DE0: $6D
    add hl, bc                                    ; $6DE1: $09
    nop                                           ; $6DE2: $00
    dec b                                         ; $6DE3: $05
    add hl, hl                                    ; $6DE4: $29
    ld [$2900], a                                 ; $6DE5: $EA $00 $29
    ldh a, [c]                                    ; $6DE8: $F2

jr_00B_6DE9:
    ld [bc], a                                    ; $6DE9: $02
    add hl, hl                                    ; $6DEA: $29
    ld a, [$3904]                                 ; $6DEB: $FA $04 $39
    ldh a, [rTMA]                                 ; $6DEE: $F0 $06
    add hl, sp                                    ; $6DF0: $39
    ld hl, sp+$08                                 ; $6DF1: $F8 $08
    nop                                           ; $6DF3: $00
    ld [$6000], a                                 ; $6DF4: $EA $00 $60
    ld b, [hl]                                    ; $6DF7: $46
    rra                                           ; $6DF8: $1F
    rlca                                          ; $6DF9: $07
    ld l, [hl]                                    ; $6DFA: $6E
    add hl, bc                                    ; $6DFB: $09
    nop                                           ; $6DFC: $00
    jr nz, jr_00B_6DE9                            ; $6DFD: $20 $EA

    nop                                           ; $6DFF: $00
    ld h, b                                       ; $6E00: $60
    ld b, [hl]                                    ; $6E01: $46
    rra                                           ; $6E02: $1F
    rlca                                          ; $6E03: $07

jr_00B_6E04:
    ld l, [hl]                                    ; $6E04: $6E
    rst RST_30                                    ; $6E05: $F7
    db $FC                                        ; $6E06: $FC
    inc b                                         ; $6E07: $04
    cpl                                           ; $6E08: $2F
    rst RST_28                                    ; $6E09: $EF
    nop                                           ; $6E0A: $00
    jr nc, jr_00B_6E04                            ; $6E0B: $30 $F7

    ld [bc], a                                    ; $6E0D: $02
    jr nz, jr_00B_6E04                            ; $6E0E: $20 $F4

    inc b                                         ; $6E10: $04
    dec h                                         ; $6E11: $25
    db $FC                                        ; $6E12: $FC
    ld b, $00                                     ; $6E13: $06 $00

jr_00B_6E15:
    ld [$E002], a                                 ; $6E15: $EA $02 $E0
    ld b, [hl]                                    ; $6E18: $46
    rra                                           ; $6E19: $1F
    ld e, $6E                                     ; $6E1A: $1E $6E
    ld [bc], a                                    ; $6E1C: $02
    nop                                           ; $6E1D: $00

jr_00B_6E1E:
    inc bc                                        ; $6E1E: $03
    jr nc, jr_00B_6E15                            ; $6E1F: $30 $F4

    nop                                           ; $6E21: $00
    jr nc, @-$02                                  ; $6E22: $30 $FC

    ld [bc], a                                    ; $6E24: $02
    inc hl                                        ; $6E25: $23
    inc b                                         ; $6E26: $04
    inc b                                         ; $6E27: $04
    nop                                           ; $6E28: $00
    ld [$4000], a                                 ; $6E29: $EA $00 $40
    ld b, a                                       ; $6E2C: $47
    rra                                           ; $6E2D: $1F
    inc a                                         ; $6E2E: $3C
    ld l, [hl]                                    ; $6E2F: $6E
    inc bc                                        ; $6E30: $03
    nop                                           ; $6E31: $00
    jr nz, jr_00B_6E1E                            ; $6E32: $20 $EA

jr_00B_6E34:
    nop                                           ; $6E34: $00
    ld b, b                                       ; $6E35: $40
    ld b, a                                       ; $6E36: $47
    rra                                           ; $6E37: $1F
    inc a                                         ; $6E38: $3C
    ld l, [hl]                                    ; $6E39: $6E
    db $FD                                        ; $6E3A: $FD
    nop                                           ; $6E3B: $00
    inc b                                         ; $6E3C: $04
    jr nc, jr_00B_6E34                            ; $6E3D: $30 $F5

jr_00B_6E3F:
    nop                                           ; $6E3F: $00
    jr nc, jr_00B_6E3F                            ; $6E40: $30 $FD

    ld [bc], a                                    ; $6E42: $02
    jr nz, @-$02                                  ; $6E43: $20 $FC

    inc b                                         ; $6E45: $04
    ld h, $05                                     ; $6E46: $26 $05
    ld b, $00                                     ; $6E48: $06 $00
    ld [$C000], a                                 ; $6E4A: $EA $00 $C0
    ld b, a                                       ; $6E4D: $47
    rra                                           ; $6E4E: $1F
    ld e, l                                       ; $6E4F: $5D
    ld l, [hl]                                    ; $6E50: $6E
    inc bc                                        ; $6E51: $03
    nop                                           ; $6E52: $00
    jr nz, jr_00B_6E3F                            ; $6E53: $20 $EA

    nop                                           ; $6E55: $00
    ret nz                                        ; $6E56: $C0

jr_00B_6E57:
    ld b, a                                       ; $6E57: $47
    rra                                           ; $6E58: $1F
    ld e, l                                       ; $6E59: $5D
    ld l, [hl]                                    ; $6E5A: $6E
    db $FD                                        ; $6E5B: $FD
    nop                                           ; $6E5C: $00
    inc bc                                        ; $6E5D: $03
    jr nc, jr_00B_6E57                            ; $6E5E: $30 $F7

    nop                                           ; $6E60: $00
    jr nc, @+$01                                  ; $6E61: $30 $FF

    ld [bc], a                                    ; $6E63: $02
    jr z, jr_00B_6E6D                             ; $6E64: $28 $07

    inc b                                         ; $6E66: $04
    nop                                           ; $6E67: $00
    ld [$2000], a                                 ; $6E68: $EA $00 $20
    ld c, b                                       ; $6E6B: $48
    rra                                           ; $6E6C: $1F

jr_00B_6E6D:
    ld [hl], c                                    ; $6E6D: $71
    ld l, [hl]                                    ; $6E6E: $6E
    rst RST_38                                    ; $6E6F: $FF

jr_00B_6E70:
    nop                                           ; $6E70: $00
    ld [bc], a                                    ; $6E71: $02
    jr nc, jr_00B_6E70                            ; $6E72: $30 $FC

    nop                                           ; $6E74: $00
    jr nc, @+$06                                  ; $6E75: $30 $04

    ld [bc], a                                    ; $6E77: $02
    nop                                           ; $6E78: $00
    ld [$6000], a                                 ; $6E79: $EA $00 $60
    ld c, b                                       ; $6E7C: $48
    rra                                           ; $6E7D: $1F
    add d                                         ; $6E7E: $82
    ld l, [hl]                                    ; $6E7F: $6E
    rst RST_38                                    ; $6E80: $FF
    nop                                           ; $6E81: $00
    inc b                                         ; $6E82: $04
    ld h, $F8                                     ; $6E83: $26 $F8
    nop                                           ; $6E85: $00
    jr z, jr_00B_6E88                             ; $6E86: $28 $00

jr_00B_6E88:
    ld [bc], a                                    ; $6E88: $02
    dec e                                         ; $6E89: $1D
    inc bc                                        ; $6E8A: $03
    inc b                                         ; $6E8B: $04
    ld [hl], $FD                                  ; $6E8C: $36 $FD
    ld b, $00                                     ; $6E8E: $06 $00
    ld [$4000], a                                 ; $6E90: $EA $00 $40
    ld c, h                                       ; $6E93: $4C
    rra                                           ; $6E94: $1F
    sbc c                                         ; $6E95: $99
    ld l, [hl]                                    ; $6E96: $6E
    nop                                           ; $6E97: $00
    nop                                           ; $6E98: $00
    dec bc                                        ; $6E99: $0B
    ld [hl-], a                                   ; $6E9A: $32
    db $E3                                        ; $6E9B: $E3
    nop                                           ; $6E9C: $00
    dec l                                         ; $6E9D: $2D
    db $EB                                        ; $6E9E: $EB
    ld [bc], a                                    ; $6E9F: $02
    inc hl                                        ; $6EA0: $23
    di                                            ; $6EA1: $F3
    inc b                                         ; $6EA2: $04
    ld [hl+], a                                   ; $6EA3: $22
    ei                                            ; $6EA4: $FB
    ld b, $25                                     ; $6EA5: $06 $25
    inc bc                                        ; $6EA7: $03
    ld [$0B30], sp                                ; $6EA8: $08 $30 $0B
    ld a, [bc]                                    ; $6EAB: $0A
    inc h                                         ; $6EAC: $24
    ld [de], a                                    ; $6EAD: $12
    inc c                                         ; $6EAE: $0C
    dec a                                         ; $6EAF: $3D
    db $EB                                        ; $6EB0: $EB
    ld c, $33                                     ; $6EB1: $0E $33
    di                                            ; $6EB3: $F3
    db $10                                        ; $6EB4: $10
    ld [hl-], a                                   ; $6EB5: $32
    ei                                            ; $6EB6: $FB
    ld [de], a                                    ; $6EB7: $12
    dec [hl]                                      ; $6EB8: $35
    inc bc                                        ; $6EB9: $03
    inc d                                         ; $6EBA: $14
    nop                                           ; $6EBB: $00
    ld [$E000], a                                 ; $6EBC: $EA $00 $E0
    ld c, b                                       ; $6EBF: $48
    rra                                           ; $6EC0: $1F
    push bc                                       ; $6EC1: $C5
    ld l, [hl]                                    ; $6EC2: $6E
    ldh a, [rP1]                                  ; $6EC3: $F0 $00
    dec b                                         ; $6EC5: $05
    inc l                                         ; $6EC6: $2C
    inc b                                         ; $6EC7: $04
    nop                                           ; $6EC8: $00
    inc l                                         ; $6EC9: $2C
    inc c                                         ; $6ECA: $0C
    ld [bc], a                                    ; $6ECB: $02
    inc a                                         ; $6ECC: $3C
    ld [$3804], sp                                ; $6ECD: $08 $04 $38
    db $10                                        ; $6ED0: $10
    ld b, $22                                     ; $6ED1: $06 $22
    inc d                                         ; $6ED3: $14
    ld [$EA00], sp                                ; $6ED4: $08 $00 $EA
    nop                                           ; $6ED7: $00
    add b                                         ; $6ED8: $80
    ld c, c                                       ; $6ED9: $49
    rra                                           ; $6EDA: $1F
    rst RST_18                                    ; $6EDB: $DF
    ld l, [hl]                                    ; $6EDC: $6E
    nop                                           ; $6EDD: $00
    nop                                           ; $6EDE: $00
    rlca                                          ; $6EDF: $07
    ld e, $F0                                     ; $6EE0: $1E $F0
    nop                                           ; $6EE2: $00
    ld e, $F8                                     ; $6EE3: $1E $F8
    ld [bc], a                                    ; $6EE5: $02
    ld l, $F3                                     ; $6EE6: $2E $F3
    inc b                                         ; $6EE8: $04
    ld l, $FB                                     ; $6EE9: $2E $FB
    ld b, $1E                                     ; $6EEB: $06 $1E
    nop                                           ; $6EED: $00
    ld [$081E], sp                                ; $6EEE: $08 $1E $08
    ld a, [bc]                                    ; $6EF1: $0A
    ld l, $03                                     ; $6EF2: $2E $03
    inc c                                         ; $6EF4: $0C
    nop                                           ; $6EF5: $00
    ld [$6000], a                                 ; $6EF6: $EA $00 $60
    ld c, d                                       ; $6EF9: $4A

jr_00B_6EFA:
    rra                                           ; $6EFA: $1F
    rst RST_38                                    ; $6EFB: $FF
    ld l, [hl]                                    ; $6EFC: $6E
    nop                                           ; $6EFD: $00
    nop                                           ; $6EFE: $00
    add hl, bc                                    ; $6EFF: $09
    jr nc, @-$11                                  ; $6F00: $30 $ED

    nop                                           ; $6F02: $00
    jr nc, jr_00B_6EFA                            ; $6F03: $30 $F5

jr_00B_6F05:
    ld [bc], a                                    ; $6F05: $02
    jr nc, jr_00B_6F05                            ; $6F06: $30 $FD

    inc b                                         ; $6F08: $04
    jr nc, @+$07                                  ; $6F09: $30 $05

    ld b, $30                                     ; $6F0B: $06 $30
    dec c                                         ; $6F0D: $0D

jr_00B_6F0E:
    ld [$F220], sp                                ; $6F0E: $08 $20 $F2

jr_00B_6F11:
    ld a, [bc]                                    ; $6F11: $0A
    jr nz, jr_00B_6F0E                            ; $6F12: $20 $FA

    inc c                                         ; $6F14: $0C
    jr nz, jr_00B_6F1C                            ; $6F15: $20 $05

    ld c, $20                                     ; $6F17: $0E $20
    dec c                                         ; $6F19: $0D
    stop                                          ; $6F1A: $10 $00

jr_00B_6F1C:
    ld [$8000], a                                 ; $6F1C: $EA $00 $80
    ld c, e                                       ; $6F1F: $4B
    rra                                           ; $6F20: $1F
    cpl                                           ; $6F21: $2F
    ld l, a                                       ; $6F22: $6F
    rst RST_38                                    ; $6F23: $FF
    ei                                            ; $6F24: $FB

jr_00B_6F25:
    jr nz, jr_00B_6F11                            ; $6F25: $20 $EA

    nop                                           ; $6F27: $00
    add b                                         ; $6F28: $80
    ld c, e                                       ; $6F29: $4B
    rra                                           ; $6F2A: $1F
    cpl                                           ; $6F2B: $2F
    ld l, a                                       ; $6F2C: $6F
    db $10                                        ; $6F2D: $10
    rst RST_38                                    ; $6F2E: $FF
    ld b, $20                                     ; $6F2F: $06 $20
    add sp, $00                                   ; $6F31: $E8 $00
    jr nz, jr_00B_6F25                            ; $6F33: $20 $F0

    ld [bc], a                                    ; $6F35: $02
    jr nz, @-$06                                  ; $6F36: $20 $F8

    inc b                                         ; $6F38: $04
    jr nz, jr_00B_6F3B                            ; $6F39: $20 $00

jr_00B_6F3B:
    ld b, $20                                     ; $6F3B: $06 $20
    ld [$2008], sp                                ; $6F3D: $08 $08 $20
    db $10                                        ; $6F40: $10
    ld a, [bc]                                    ; $6F41: $0A
    nop                                           ; $6F42: $00
    ld [$E000], a                                 ; $6F43: $EA $00 $E0
    ld b, d                                       ; $6F46: $42
    rra                                           ; $6F47: $1F
    ld [hl], h                                    ; $6F48: $74
    ld l, a                                       ; $6F49: $6F
    ld a, [$0000]                                 ; $6F4A: $FA $00 $00
    ld [$E005], a                                 ; $6F4D: $EA $05 $E0
    ld b, d                                       ; $6F50: $42
    rra                                           ; $6F51: $1F
    ld [hl], h                                    ; $6F52: $74
    ld l, a                                       ; $6F53: $6F
    ld a, [$2000]                                 ; $6F54: $FA $00 $20
    ld [$E000], a                                 ; $6F57: $EA $00 $E0
    ld b, d                                       ; $6F5A: $42
    rra                                           ; $6F5B: $1F
    ld [hl], h                                    ; $6F5C: $74
    ld l, a                                       ; $6F5D: $6F
    ld b, $00                                     ; $6F5E: $06 $00
    ld b, b                                       ; $6F60: $40
    ld [$E000], a                                 ; $6F61: $EA $00 $E0
    ld b, d                                       ; $6F64: $42
    rra                                           ; $6F65: $1F
    ld [hl], h                                    ; $6F66: $74
    ld l, a                                       ; $6F67: $6F
    ld a, [$6011]                                 ; $6F68: $FA $11 $60
    ld [$E000], a                                 ; $6F6B: $EA $00 $E0
    ld b, d                                       ; $6F6E: $42
    rra                                           ; $6F6F: $1F
    ld [hl], h                                    ; $6F70: $74
    ld l, a                                       ; $6F71: $6F
    ld b, $11                                     ; $6F72: $06 $11
    inc b                                         ; $6F74: $04
    jr nc, jr_00B_6F77                            ; $6F75: $30 $00

jr_00B_6F77:
    nop                                           ; $6F77: $00
    jr nz, jr_00B_6F7E                            ; $6F78: $20 $04

    ld [bc], a                                    ; $6F7A: $02
    jr nc, jr_00B_6F85                            ; $6F7B: $30 $08

    inc b                                         ; $6F7D: $04

jr_00B_6F7E:
    jr nc, @+$12                                  ; $6F7E: $30 $10

    ld b, $00                                     ; $6F80: $06 $00
    ld [$6000], a                                 ; $6F82: $EA $00 $60

jr_00B_6F85:
    ld b, e                                       ; $6F85: $43
    rra                                           ; $6F86: $1F
    adc e                                         ; $6F87: $8B
    ld l, a                                       ; $6F88: $6F
    db $FC                                        ; $6F89: $FC
    nop                                           ; $6F8A: $00
    ld [bc], a                                    ; $6F8B: $02
    jr nc, jr_00B_6F8E                            ; $6F8C: $30 $00

jr_00B_6F8E:
    nop                                           ; $6F8E: $00
    jr nc, jr_00B_6F99                            ; $6F8F: $30 $08

    ld [bc], a                                    ; $6F91: $02
    nop                                           ; $6F92: $00
    ld [$A000], a                                 ; $6F93: $EA $00 $A0
    ld b, e                                       ; $6F96: $43
    rra                                           ; $6F97: $1F
    and [hl]                                      ; $6F98: $A6

jr_00B_6F99:
    ld l, a                                       ; $6F99: $6F
    rlca                                          ; $6F9A: $07
    ld e, $60                                     ; $6F9B: $1E $60
    ld [$A000], a                                 ; $6F9D: $EA $00 $A0
    ld b, e                                       ; $6FA0: $43
    rra                                           ; $6FA1: $1F
    and [hl]                                      ; $6FA2: $A6
    ld l, a                                       ; $6FA3: $6F
    dec bc                                        ; $6FA4: $0B
    db $F4                                        ; $6FA5: $F4
    inc bc                                        ; $6FA6: $03
    dec d                                         ; $6FA7: $15
    pop af                                        ; $6FA8: $F1
    nop                                           ; $6FA9: $00
    dec d                                         ; $6FAA: $15
    ld sp, hl                                     ; $6FAB: $F9
    ld [bc], a                                    ; $6FAC: $02
    dec d                                         ; $6FAD: $15
    ld bc, $0004                                  ; $6FAE: $01 $04 $00
    ld [$0000], a                                 ; $6FB1: $EA $00 $00
    ld b, h                                       ; $6FB4: $44
    rra                                           ; $6FB5: $1F
    cp d                                          ; $6FB6: $BA
    ld l, a                                       ; $6FB7: $6F
    ld sp, hl                                     ; $6FB8: $F9
    nop                                           ; $6FB9: $00
    inc bc                                        ; $6FBA: $03

jr_00B_6FBB:
    jr nc, jr_00B_6FBB                            ; $6FBB: $30 $FE

    nop                                           ; $6FBD: $00
    jr nc, @+$08                                  ; $6FBE: $30 $06

    ld [bc], a                                    ; $6FC0: $02
    jr nc, jr_00B_6FD1                            ; $6FC1: $30 $0E

    inc b                                         ; $6FC3: $04
    nop                                           ; $6FC4: $00
    ld [$A0F3], a                                 ; $6FC5: $EA $F3 $A0
    ld c, l                                       ; $6FC8: $4D

jr_00B_6FC9:
    rra                                           ; $6FC9: $1F
    adc $6F                                       ; $6FCA: $CE $6F
    rst RST_38                                    ; $6FCC: $FF
    db $10                                        ; $6FCD: $10
    inc bc                                        ; $6FCE: $03
    jr nz, jr_00B_6FC9                            ; $6FCF: $20 $F8

jr_00B_6FD1:
    nop                                           ; $6FD1: $00
    jr nz, jr_00B_6FD4                            ; $6FD2: $20 $00

jr_00B_6FD4:
    ld [bc], a                                    ; $6FD4: $02
    jr nz, jr_00B_6FDF                            ; $6FD5: $20 $08

    inc b                                         ; $6FD7: $04
    nop                                           ; $6FD8: $00
    ld [$00F0], a                                 ; $6FD9: $EA $F0 $00
    ld c, [hl]                                    ; $6FDC: $4E
    rra                                           ; $6FDD: $1F
    ldh [c], a                                    ; $6FDE: $E2

jr_00B_6FDF:
    ld l, a                                       ; $6FDF: $6F
    rst RST_38                                    ; $6FE0: $FF
    dec c                                         ; $6FE1: $0D
    dec b                                         ; $6FE2: $05
    ld d, $FA                                     ; $6FE3: $16 $FA
    nop                                           ; $6FE5: $00
    ld d, $02                                     ; $6FE6: $16 $02
    ld [bc], a                                    ; $6FE8: $02
    inc d                                         ; $6FE9: $14
    ld a, [bc]                                    ; $6FEA: $0A
    inc b                                         ; $6FEB: $04
    ld h, $FD                                     ; $6FEC: $26 $FD
    ld b, $28                                     ; $6FEE: $06 $28
    dec b                                         ; $6FF0: $05
    ld [$EA00], sp                                ; $6FF1: $08 $00 $EA
    nop                                           ; $6FF4: $00
    and b                                         ; $6FF5: $A0
    ld c, [hl]                                    ; $6FF6: $4E
    rra                                           ; $6FF7: $1F
    db $FC                                        ; $6FF8: $FC
    ld l, a                                       ; $6FF9: $6F
    di                                            ; $6FFA: $F3
    nop                                           ; $6FFB: $00
    dec b                                         ; $6FFC: $05
    inc l                                         ; $6FFD: $2C
    ld [$2C00], sp                                ; $6FFE: $08 $00 $2C
    db $10                                        ; $7001: $10
    ld [bc], a                                    ; $7002: $02
    dec h                                         ; $7003: $25
    jr jr_00B_700A                                ; $7004: $18 $04

    inc a                                         ; $7006: $3C
    ld [$3C06], sp                                ; $7007: $08 $06 $3C

jr_00B_700A:
    db $10                                        ; $700A: $10
    ld [$EA00], sp                                ; $700B: $08 $00 $EA
    ldh a, [rLCDC]                                ; $700E: $F0 $40
    ld c, a                                       ; $7010: $4F
    rra                                           ; $7011: $1F
    jr nz, jr_00B_7084                            ; $7012: $20 $70

    nop                                           ; $7014: $00
    nop                                           ; $7015: $00
    nop                                           ; $7016: $00
    ld [$4000], a                                 ; $7017: $EA $00 $40
    ld c, a                                       ; $701A: $4F
    rra                                           ; $701B: $1F
    jr nz, jr_00B_708E                            ; $701C: $20 $70

    nop                                           ; $701E: $00
    nop                                           ; $701F: $00
    inc bc                                        ; $7020: $03
    jr nc, @-$09                                  ; $7021: $30 $F5

jr_00B_7023:
    nop                                           ; $7023: $00
    jr nc, jr_00B_7023                            ; $7024: $30 $FD

jr_00B_7026:
    ld [bc], a                                    ; $7026: $02
    jr nz, jr_00B_7026                            ; $7027: $20 $FD

    inc b                                         ; $7029: $04
    nop                                           ; $702A: $00
    ld [$A0F0], a                                 ; $702B: $EA $F0 $A0
    ld c, a                                       ; $702E: $4F
    rra                                           ; $702F: $1F
    inc [hl]                                      ; $7030: $34
    ld [hl], b                                    ; $7031: $70
    ld [de], a                                    ; $7032: $12
    nop                                           ; $7033: $00
    dec b                                         ; $7034: $05
    ld sp, $00E8                                  ; $7035: $31 $E8 $00
    ld sp, $02F0                                  ; $7038: $31 $F0 $02
    ld h, $E0                                     ; $703B: $26 $E0
    inc b                                         ; $703D: $04
    ld hl, $06E8                                  ; $703E: $21 $E8 $06
    ld hl, $08F0                                  ; $7041: $21 $F0 $08
    nop                                           ; $7044: $00
    ld [$4000], a                                 ; $7045: $EA $00 $40
    ld d, b                                       ; $7048: $50
    rra                                           ; $7049: $1F
    ld c, [hl]                                    ; $704A: $4E
    ld [hl], b                                    ; $704B: $70
    ld [de], a                                    ; $704C: $12
    nop                                           ; $704D: $00
    inc b                                         ; $704E: $04
    inc hl                                        ; $704F: $23
    add sp, $00                                   ; $7050: $E8 $00
    inc hl                                        ; $7052: $23
    ldh a, [rSC]                                  ; $7053: $F0 $02
    inc sp                                        ; $7055: $33
    add sp, $04                                   ; $7056: $E8 $04
    inc sp                                        ; $7058: $33
    ldh a, [rTMA]                                 ; $7059: $F0 $06
    nop                                           ; $705B: $00
    ld [$C000], a                                 ; $705C: $EA $00 $C0
    ld d, b                                       ; $705F: $50
    rra                                           ; $7060: $1F
    ld h, l                                       ; $7061: $65
    ld [hl], b                                    ; $7062: $70
    ld [bc], a                                    ; $7063: $02
    nop                                           ; $7064: $00
    inc b                                         ; $7065: $04
    ld [hl+], a                                   ; $7066: $22
    rst RST_30                                    ; $7067: $F7
    nop                                           ; $7068: $00
    ld [hl+], a                                   ; $7069: $22
    rst RST_38                                    ; $706A: $FF
    ld [bc], a                                    ; $706B: $02
    ld [hl-], a                                   ; $706C: $32
    rst RST_30                                    ; $706D: $F7
    inc b                                         ; $706E: $04
    ld [hl-], a                                   ; $706F: $32
    rst RST_38                                    ; $7070: $FF
    ld b, $FF                                     ; $7071: $06 $FF
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

jr_00B_7084:
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

jr_00B_708E:
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
