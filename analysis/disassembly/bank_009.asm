; Disassembly of "original.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $009", ROMX[$4000], BANK[$9]

    adc $44                                       ; $4000: $CE $44
    push hl                                       ; $4002: $E5
    ld b, h                                       ; $4003: $44
    inc bc                                        ; $4004: $03
    ld c, b                                       ; $4005: $48
    inc d                                         ; $4006: $14
    ld b, l                                       ; $4007: $45
    dec e                                         ; $4008: $1D
    ld c, b                                       ; $4009: $48
    inc d                                         ; $400A: $14
    ld b, l                                       ; $400B: $45
    inc bc                                        ; $400C: $03
    ld c, b                                       ; $400D: $48
    inc d                                         ; $400E: $14
    ld b, l                                       ; $400F: $45
    dec e                                         ; $4010: $1D
    ld c, b                                       ; $4011: $48
    inc d                                         ; $4012: $14
    ld b, l                                       ; $4013: $45
    inc bc                                        ; $4014: $03
    ld c, b                                       ; $4015: $48
    inc d                                         ; $4016: $14
    ld b, l                                       ; $4017: $45
    dec e                                         ; $4018: $1D
    ld c, b                                       ; $4019: $48
    inc d                                         ; $401A: $14
    ld b, l                                       ; $401B: $45
    adc $44                                       ; $401C: $CE $44
    push hl                                       ; $401E: $E5
    ld b, h                                       ; $401F: $44
    rst RST_38                                    ; $4020: $FF
    rst RST_38                                    ; $4021: $FF
    or [hl]                                       ; $4022: $B6
    ld b, e                                       ; $4023: $43
    rst RST_38                                    ; $4024: $FF
    rst RST_38                                    ; $4025: $FF
    sub $43                                       ; $4026: $D6 $43
    rst RST_38                                    ; $4028: $FF
    rst RST_38                                    ; $4029: $FF
    or $43                                        ; $402A: $F6 $43
    rst RST_38                                    ; $402C: $FF
    rst RST_38                                    ; $402D: $FF
    sub $43                                       ; $402E: $D6 $43
    rst RST_38                                    ; $4030: $FF
    rst RST_38                                    ; $4031: $FF
    rst RST_38                                    ; $4032: $FF
    rst RST_38                                    ; $4033: $FF
    inc de                                        ; $4034: $13
    ld b, h                                       ; $4035: $44
    rst RST_38                                    ; $4036: $FF
    rst RST_38                                    ; $4037: $FF
    inc sp                                        ; $4038: $33
    ld b, h                                       ; $4039: $44
    rst RST_38                                    ; $403A: $FF
    rst RST_38                                    ; $403B: $FF
    or [hl]                                       ; $403C: $B6
    ld b, e                                       ; $403D: $43
    rst RST_38                                    ; $403E: $FF
    rst RST_38                                    ; $403F: $FF
    rst RST_38                                    ; $4040: $FF
    rst RST_38                                    ; $4041: $FF
    inc sp                                        ; $4042: $33
    ld b, h                                       ; $4043: $44
    rst RST_38                                    ; $4044: $FF
    rst RST_38                                    ; $4045: $FF
    inc de                                        ; $4046: $13
    ld b, h                                       ; $4047: $44
    rst RST_38                                    ; $4048: $FF
    rst RST_38                                    ; $4049: $FF
    or [hl]                                       ; $404A: $B6
    ld b, e                                       ; $404B: $43
    rst RST_38                                    ; $404C: $FF
    rst RST_38                                    ; $404D: $FF
    rst RST_38                                    ; $404E: $FF
    rst RST_38                                    ; $404F: $FF
    ld d, e                                       ; $4050: $53
    ld b, h                                       ; $4051: $44
    rst RST_38                                    ; $4052: $FF
    rst RST_38                                    ; $4053: $FF
    rst RST_38                                    ; $4054: $FF
    rst RST_38                                    ; $4055: $FF
    ld d, e                                       ; $4056: $53
    ld b, h                                       ; $4057: $44
    rst RST_38                                    ; $4058: $FF
    rst RST_38                                    ; $4059: $FF
    sub $43                                       ; $405A: $D6 $43
    rst RST_38                                    ; $405C: $FF
    rst RST_38                                    ; $405D: $FF
    sub $43                                       ; $405E: $D6 $43
    rst RST_38                                    ; $4060: $FF
    rst RST_38                                    ; $4061: $FF
    or $43                                        ; $4062: $F6 $43
    rst RST_38                                    ; $4064: $FF
    rst RST_38                                    ; $4065: $FF
    or $43                                        ; $4066: $F6 $43
    rst RST_38                                    ; $4068: $FF
    rst RST_38                                    ; $4069: $FF
    sub $43                                       ; $406A: $D6 $43
    rst RST_38                                    ; $406C: $FF
    rst RST_38                                    ; $406D: $FF
    sub $43                                       ; $406E: $D6 $43
    rst RST_38                                    ; $4070: $FF
    rst RST_38                                    ; $4071: $FF
    ld d, e                                       ; $4072: $53
    ld b, h                                       ; $4073: $44
    rst RST_38                                    ; $4074: $FF
    rst RST_38                                    ; $4075: $FF
    rst RST_38                                    ; $4076: $FF
    rst RST_38                                    ; $4077: $FF
    ld d, e                                       ; $4078: $53
    ld b, h                                       ; $4079: $44
    rst RST_38                                    ; $407A: $FF
    rst RST_38                                    ; $407B: $FF
    inc de                                        ; $407C: $13
    ld b, h                                       ; $407D: $44
    rst RST_38                                    ; $407E: $FF
    rst RST_38                                    ; $407F: $FF
    inc de                                        ; $4080: $13
    ld b, h                                       ; $4081: $44
    rst RST_38                                    ; $4082: $FF
    rst RST_38                                    ; $4083: $FF
    or $43                                        ; $4084: $F6 $43
    rst RST_38                                    ; $4086: $FF
    rst RST_38                                    ; $4087: $FF
    or $43                                        ; $4088: $F6 $43
    rst RST_38                                    ; $408A: $FF
    rst RST_38                                    ; $408B: $FF
    inc sp                                        ; $408C: $33
    ld b, h                                       ; $408D: $44
    rst RST_38                                    ; $408E: $FF
    rst RST_38                                    ; $408F: $FF
    inc sp                                        ; $4090: $33
    ld b, h                                       ; $4091: $44
    rst RST_38                                    ; $4092: $FF
    rst RST_38                                    ; $4093: $FF
    ld d, e                                       ; $4094: $53
    ld b, h                                       ; $4095: $44
    rst RST_38                                    ; $4096: $FF
    rst RST_38                                    ; $4097: $FF
    rst RST_38                                    ; $4098: $FF
    rst RST_38                                    ; $4099: $FF
    ld d, e                                       ; $409A: $53
    ld b, h                                       ; $409B: $44
    rst RST_38                                    ; $409C: $FF
    rst RST_38                                    ; $409D: $FF
    inc sp                                        ; $409E: $33
    ld b, h                                       ; $409F: $44
    rst RST_38                                    ; $40A0: $FF
    rst RST_38                                    ; $40A1: $FF
    inc sp                                        ; $40A2: $33
    ld b, h                                       ; $40A3: $44
    rst RST_38                                    ; $40A4: $FF
    rst RST_38                                    ; $40A5: $FF
    or $43                                        ; $40A6: $F6 $43
    rst RST_38                                    ; $40A8: $FF
    rst RST_38                                    ; $40A9: $FF
    or $43                                        ; $40AA: $F6 $43
    rst RST_38                                    ; $40AC: $FF
    rst RST_38                                    ; $40AD: $FF
    inc de                                        ; $40AE: $13
    ld b, h                                       ; $40AF: $44
    rst RST_38                                    ; $40B0: $FF
    rst RST_38                                    ; $40B1: $FF
    inc de                                        ; $40B2: $13
    ld b, h                                       ; $40B3: $44
    rst RST_38                                    ; $40B4: $FF
    rst RST_38                                    ; $40B5: $FF
    ld d, e                                       ; $40B6: $53
    ld b, h                                       ; $40B7: $44
    rst RST_38                                    ; $40B8: $FF
    rst RST_38                                    ; $40B9: $FF
    rst RST_38                                    ; $40BA: $FF
    rst RST_38                                    ; $40BB: $FF
    ld [hl], b                                    ; $40BC: $70
    ld b, h                                       ; $40BD: $44
    sbc b                                         ; $40BE: $98
    ld b, h                                       ; $40BF: $44
    rst RST_38                                    ; $40C0: $FF
    rst RST_38                                    ; $40C1: $FF
    ld a, d                                       ; $40C2: $7A
    ld b, h                                       ; $40C3: $44
    xor d                                         ; $40C4: $AA
    ld b, h                                       ; $40C5: $44
    rst RST_38                                    ; $40C6: $FF
    rst RST_38                                    ; $40C7: $FF
    add h                                         ; $40C8: $84
    ld b, h                                       ; $40C9: $44
    cp h                                          ; $40CA: $BC
    ld b, h                                       ; $40CB: $44
    ld d, e                                       ; $40CC: $53
    ld b, h                                       ; $40CD: $44
    rst RST_38                                    ; $40CE: $FF
    rst RST_38                                    ; $40CF: $FF
    rst RST_38                                    ; $40D0: $FF
    rst RST_38                                    ; $40D1: $FF
    adc $44                                       ; $40D2: $CE $44
    push hl                                       ; $40D4: $E5
    ld b, h                                       ; $40D5: $44
    ld a, [$1444]                                 ; $40D6: $FA $44 $14
    ld b, l                                       ; $40D9: $45
    adc $44                                       ; $40DA: $CE $44
    push hl                                       ; $40DC: $E5
    ld b, h                                       ; $40DD: $44
    rst RST_38                                    ; $40DE: $FF
    rst RST_38                                    ; $40DF: $FF
    add hl, hl                                    ; $40E0: $29
    ld b, l                                       ; $40E1: $45
    ld h, c                                       ; $40E2: $61
    ld b, l                                       ; $40E3: $45
    halt                                          ; $40E4: $76
    ld b, l                                       ; $40E5: $45
    and a                                         ; $40E6: $A7
    ld b, l                                       ; $40E7: $45
    add hl, hl                                    ; $40E8: $29
    ld b, l                                       ; $40E9: $45
    cp a                                          ; $40EA: $BF
    ld b, l                                       ; $40EB: $45
    rst RST_38                                    ; $40EC: $FF
    rst RST_38                                    ; $40ED: $FF
    ld [hl], a                                    ; $40EE: $77
    ld c, c                                       ; $40EF: $49
    rst RST_38                                    ; $40F0: $FF
    rst RST_38                                    ; $40F1: $FF
    pop de                                        ; $40F2: $D1
    ld b, l                                       ; $40F3: $45
    rst RST_38                                    ; $40F4: $FF
    rst RST_38                                    ; $40F5: $FF
    ld bc, $2146                                  ; $40F6: $01 $46 $21
    ld b, [hl]                                    ; $40F9: $46
    ccf                                           ; $40FA: $3F
    ld b, [hl]                                    ; $40FB: $46
    ld hl, $CE46                                  ; $40FC: $21 $46 $CE
    ld b, h                                       ; $40FF: $44
    push hl                                       ; $4100: $E5
    ld b, h                                       ; $4101: $44
    rst RST_38                                    ; $4102: $FF
    rst RST_38                                    ; $4103: $FF
    ld d, e                                       ; $4104: $53
    ld b, [hl]                                    ; $4105: $46
    rst RST_38                                    ; $4106: $FF
    rst RST_38                                    ; $4107: $FF
    ld [hl], b                                    ; $4108: $70
    ld b, [hl]                                    ; $4109: $46
    rst RST_38                                    ; $410A: $FF
    rst RST_38                                    ; $410B: $FF
    ld d, e                                       ; $410C: $53
    ld b, [hl]                                    ; $410D: $46
    rst RST_38                                    ; $410E: $FF
    rst RST_38                                    ; $410F: $FF
    rst RST_38                                    ; $4110: $FF
    rst RST_38                                    ; $4111: $FF
    ld d, e                                       ; $4112: $53
    ld b, [hl]                                    ; $4113: $46
    rst RST_38                                    ; $4114: $FF
    rst RST_38                                    ; $4115: $FF
    add b                                         ; $4116: $80
    ld b, l                                       ; $4117: $45
    sub b                                         ; $4118: $90
    ld b, [hl]                                    ; $4119: $46
    ld d, e                                       ; $411A: $53
    ld b, [hl]                                    ; $411B: $46
    rst RST_38                                    ; $411C: $FF
    rst RST_38                                    ; $411D: $FF
    rst RST_38                                    ; $411E: $FF
    rst RST_38                                    ; $411F: $FF
    ld d, e                                       ; $4120: $53
    ld b, [hl]                                    ; $4121: $46
    rst RST_38                                    ; $4122: $FF
    rst RST_38                                    ; $4123: $FF
    inc sp                                        ; $4124: $33
    ld b, l                                       ; $4125: $45
    or b                                          ; $4126: $B0
    ld b, [hl]                                    ; $4127: $46
    add b                                         ; $4128: $80
    ld b, l                                       ; $4129: $45
    sub b                                         ; $412A: $90
    ld b, [hl]                                    ; $412B: $46
    ld b, a                                       ; $412C: $47
    ld b, l                                       ; $412D: $45
    ret z                                         ; $412E: $C8

    ld b, [hl]                                    ; $412F: $46
    ld d, e                                       ; $4130: $53
    ld b, [hl]                                    ; $4131: $46
    rst RST_38                                    ; $4132: $FF
    rst RST_38                                    ; $4133: $FF
    rst RST_38                                    ; $4134: $FF
    rst RST_38                                    ; $4135: $FF
    ldh [c], a                                    ; $4136: $E2
    ld b, [hl]                                    ; $4137: $46
    rst RST_38                                    ; $4138: $FF
    rst RST_38                                    ; $4139: $FF
    ld [$2847], sp                                ; $413A: $08 $47 $28
    ld b, a                                       ; $413D: $47
    ld [$2847], sp                                ; $413E: $08 $47 $28
    ld b, a                                       ; $4141: $47
    ld c, e                                       ; $4142: $4B
    ld b, a                                       ; $4143: $47
    jr z, jr_009_418D                             ; $4144: $28 $47

    ld d, e                                       ; $4146: $53
    ld b, h                                       ; $4147: $44
    rst RST_38                                    ; $4148: $FF
    rst RST_38                                    ; $4149: $FF
    rst RST_38                                    ; $414A: $FF
    rst RST_38                                    ; $414B: $FF
    dec a                                         ; $414C: $3D
    ld b, l                                       ; $414D: $45
    ret nc                                        ; $414E: $D0

    ld b, [hl]                                    ; $414F: $46
    adc d                                         ; $4150: $8A
    ld b, l                                       ; $4151: $45
    sbc b                                         ; $4152: $98
    ld b, [hl]                                    ; $4153: $46
    adc d                                         ; $4154: $8A
    ld b, l                                       ; $4155: $45
    sbc b                                         ; $4156: $98
    ld b, [hl]                                    ; $4157: $46
    adc d                                         ; $4158: $8A
    ld b, l                                       ; $4159: $45
    sbc b                                         ; $415A: $98
    ld b, [hl]                                    ; $415B: $46
    ld d, e                                       ; $415C: $53
    ld b, h                                       ; $415D: $44
    rst RST_38                                    ; $415E: $FF
    rst RST_38                                    ; $415F: $FF
    rst RST_38                                    ; $4160: $FF
    rst RST_38                                    ; $4161: $FF
    adc $44                                       ; $4162: $CE $44
    push hl                                       ; $4164: $E5
    ld b, h                                       ; $4165: $44
    ld d, l                                       ; $4166: $55
    ld b, a                                       ; $4167: $47
    jr z, jr_009_41B1                             ; $4168: $28 $47

    ld [hl], e                                    ; $416A: $73
    ld b, a                                       ; $416B: $47
    rst RST_38                                    ; $416C: $FF
    rst RST_38                                    ; $416D: $FF
    ld e, a                                       ; $416E: $5F
    ld b, a                                       ; $416F: $47
    jr nc, jr_009_41B9                            ; $4170: $30 $47

    ld a, l                                       ; $4172: $7D
    ld b, a                                       ; $4173: $47
    rst RST_38                                    ; $4174: $FF
    rst RST_38                                    ; $4175: $FF
    or $43                                        ; $4176: $F6 $43
    rst RST_38                                    ; $4178: $FF
    rst RST_38                                    ; $4179: $FF
    cp a                                          ; $417A: $BF
    ld c, c                                       ; $417B: $49
    rst RST_38                                    ; $417C: $FF
    rst RST_38                                    ; $417D: $FF
    rst RST_38                                    ; $417E: $FF
    rst RST_38                                    ; $417F: $FF
    sub a                                         ; $4180: $97
    ld b, a                                       ; $4181: $47
    rst RST_38                                    ; $4182: $FF
    rst RST_38                                    ; $4183: $FF
    adc $44                                       ; $4184: $CE $44
    push hl                                       ; $4186: $E5
    ld b, h                                       ; $4187: $44
    rst RST_38                                    ; $4188: $FF
    rst RST_38                                    ; $4189: $FF
    ld [hl], a                                    ; $418A: $77
    ld c, c                                       ; $418B: $49
    rst RST_38                                    ; $418C: $FF

jr_009_418D:
    rst RST_38                                    ; $418D: $FF
    adc $44                                       ; $418E: $CE $44
    push hl                                       ; $4190: $E5
    ld b, h                                       ; $4191: $44
    ld d, e                                       ; $4192: $53
    ld b, h                                       ; $4193: $44
    rst RST_38                                    ; $4194: $FF
    rst RST_38                                    ; $4195: $FF
    rst RST_38                                    ; $4196: $FF
    rst RST_38                                    ; $4197: $FF
    cp l                                          ; $4198: $BD
    ld b, a                                       ; $4199: $47
    rst RST_38                                    ; $419A: $FF
    rst RST_38                                    ; $419B: $FF
    ldh [rBGP], a                                 ; $419C: $E0 $47
    rst RST_38                                    ; $419E: $FF
    rst RST_38                                    ; $419F: $FF
    rst RST_38                                    ; $41A0: $FF
    rst RST_38                                    ; $41A1: $FF
    adc $44                                       ; $41A2: $CE $44
    push hl                                       ; $41A4: $E5
    ld b, h                                       ; $41A5: $44
    inc bc                                        ; $41A6: $03
    ld c, b                                       ; $41A7: $48
    inc d                                         ; $41A8: $14
    ld b, l                                       ; $41A9: $45
    dec e                                         ; $41AA: $1D
    ld c, b                                       ; $41AB: $48
    inc d                                         ; $41AC: $14
    ld b, l                                       ; $41AD: $45
    inc bc                                        ; $41AE: $03
    ld c, b                                       ; $41AF: $48
    inc d                                         ; $41B0: $14

jr_009_41B1:
    ld b, l                                       ; $41B1: $45
    dec e                                         ; $41B2: $1D
    ld c, b                                       ; $41B3: $48
    inc d                                         ; $41B4: $14
    ld b, l                                       ; $41B5: $45
    inc bc                                        ; $41B6: $03
    ld c, b                                       ; $41B7: $48
    inc d                                         ; $41B8: $14

jr_009_41B9:
    ld b, l                                       ; $41B9: $45
    dec e                                         ; $41BA: $1D
    ld c, b                                       ; $41BB: $48
    inc d                                         ; $41BC: $14
    ld b, l                                       ; $41BD: $45
    adc $44                                       ; $41BE: $CE $44
    push hl                                       ; $41C0: $E5
    ld b, h                                       ; $41C1: $44
    rst RST_38                                    ; $41C2: $FF
    rst RST_38                                    ; $41C3: $FF
    inc [hl]                                      ; $41C4: $34
    ld c, b                                       ; $41C5: $48
    rst RST_38                                    ; $41C6: $FF
    rst RST_38                                    ; $41C7: $FF
    ld d, h                                       ; $41C8: $54
    ld c, b                                       ; $41C9: $48
    rst RST_38                                    ; $41CA: $FF
    rst RST_38                                    ; $41CB: $FF
    ld d, h                                       ; $41CC: $54
    ld c, b                                       ; $41CD: $48
    rst RST_38                                    ; $41CE: $FF
    rst RST_38                                    ; $41CF: $FF
    rst RST_38                                    ; $41D0: $FF
    rst RST_38                                    ; $41D1: $FF
    ld d, h                                       ; $41D2: $54
    ld c, b                                       ; $41D3: $48
    rst RST_38                                    ; $41D4: $FF
    rst RST_38                                    ; $41D5: $FF
    ld d, h                                       ; $41D6: $54
    ld c, b                                       ; $41D7: $48
    rst RST_38                                    ; $41D8: $FF
    rst RST_38                                    ; $41D9: $FF
    inc [hl]                                      ; $41DA: $34
    ld c, b                                       ; $41DB: $48
    rst RST_38                                    ; $41DC: $FF
    rst RST_38                                    ; $41DD: $FF
    rst RST_38                                    ; $41DE: $FF
    rst RST_38                                    ; $41DF: $FF
    ld [hl], a                                    ; $41E0: $77
    ld c, c                                       ; $41E1: $49
    rst RST_38                                    ; $41E2: $FF
    rst RST_38                                    ; $41E3: $FF
    ld [hl], h                                    ; $41E4: $74
    ld c, b                                       ; $41E5: $48
    rst RST_38                                    ; $41E6: $FF
    rst RST_38                                    ; $41E7: $FF
    and e                                         ; $41E8: $A3
    ld c, b                                       ; $41E9: $48
    rst RST_38                                    ; $41EA: $FF
    rst RST_38                                    ; $41EB: $FF
    rst RST_38                                    ; $41EC: $FF
    rst RST_38                                    ; $41ED: $FF
    or [hl]                                       ; $41EE: $B6
    ld b, e                                       ; $41EF: $43
    rst RST_38                                    ; $41F0: $FF
    rst RST_38                                    ; $41F1: $FF
    ld [hl], a                                    ; $41F2: $77
    ld c, c                                       ; $41F3: $49
    rst RST_38                                    ; $41F4: $FF
    rst RST_38                                    ; $41F5: $FF
    ret                                           ; $41F6: $C9


    ld c, b                                       ; $41F7: $48
    rst RST_38                                    ; $41F8: $FF
    rst RST_38                                    ; $41F9: $FF
    jp hl                                         ; $41FA: $E9


    ld c, b                                       ; $41FB: $48
    db $FD                                        ; $41FC: $FD
    ld c, b                                       ; $41FD: $48
    dec de                                        ; $41FE: $1B
    ld c, c                                       ; $41FF: $49
    inc a                                         ; $4200: $3C
    ld c, c                                       ; $4201: $49
    dec h                                         ; $4202: $25
    ld c, c                                       ; $4203: $49
    inc a                                         ; $4204: $3C
    ld c, c                                       ; $4205: $49
    rst RST_38                                    ; $4206: $FF
    rst RST_38                                    ; $4207: $FF
    or [hl]                                       ; $4208: $B6
    ld b, e                                       ; $4209: $43
    rst RST_38                                    ; $420A: $FF
    rst RST_38                                    ; $420B: $FF
    ld [hl], a                                    ; $420C: $77
    ld c, c                                       ; $420D: $49
    rst RST_38                                    ; $420E: $FF
    rst RST_38                                    ; $420F: $FF
    ret                                           ; $4210: $C9


    ld c, b                                       ; $4211: $48
    rst RST_38                                    ; $4212: $FF
    rst RST_38                                    ; $4213: $FF
    jp hl                                         ; $4214: $E9


    ld c, b                                       ; $4215: $48
    db $FD                                        ; $4216: $FD
    ld c, b                                       ; $4217: $48
    dec h                                         ; $4218: $25
    ld c, c                                       ; $4219: $49
    inc a                                         ; $421A: $3C
    ld c, c                                       ; $421B: $49
    rst RST_38                                    ; $421C: $FF
    rst RST_38                                    ; $421D: $FF
    ld e, d                                       ; $421E: $5A
    ld c, c                                       ; $421F: $49
    rst RST_38                                    ; $4220: $FF
    rst RST_38                                    ; $4221: $FF
    rst RST_38                                    ; $4222: $FF
    rst RST_38                                    ; $4223: $FF
    ld e, d                                       ; $4224: $5A
    ld c, c                                       ; $4225: $49
    rst RST_38                                    ; $4226: $FF
    rst RST_38                                    ; $4227: $FF
    rst RST_38                                    ; $4228: $FF
    rst RST_38                                    ; $4229: $FF
    or [hl]                                       ; $422A: $B6
    ld b, e                                       ; $422B: $43
    rst RST_38                                    ; $422C: $FF
    rst RST_38                                    ; $422D: $FF
    ld e, d                                       ; $422E: $5A
    ld c, c                                       ; $422F: $49
    rst RST_38                                    ; $4230: $FF
    rst RST_38                                    ; $4231: $FF
    ld [hl], a                                    ; $4232: $77
    ld c, c                                       ; $4233: $49
    rst RST_38                                    ; $4234: $FF
    rst RST_38                                    ; $4235: $FF
    rst RST_38                                    ; $4236: $FF
    rst RST_38                                    ; $4237: $FF
    or l                                          ; $4238: $B5
    ld c, c                                       ; $4239: $49
    rst RST_38                                    ; $423A: $FF
    rst RST_38                                    ; $423B: $FF
    rst RST_38                                    ; $423C: $FF
    rst RST_38                                    ; $423D: $FF
    ld e, d                                       ; $423E: $5A
    ld c, c                                       ; $423F: $49
    rst RST_38                                    ; $4240: $FF
    rst RST_38                                    ; $4241: $FF
    inc sp                                        ; $4242: $33
    ld b, h                                       ; $4243: $44
    rst RST_38                                    ; $4244: $FF
    rst RST_38                                    ; $4245: $FF
    inc sp                                        ; $4246: $33
    ld b, h                                       ; $4247: $44
    rst RST_38                                    ; $4248: $FF
    rst RST_38                                    ; $4249: $FF
    or $43                                        ; $424A: $F6 $43
    rst RST_38                                    ; $424C: $FF
    rst RST_38                                    ; $424D: $FF
    or $43                                        ; $424E: $F6 $43
    rst RST_38                                    ; $4250: $FF
    rst RST_38                                    ; $4251: $FF
    inc de                                        ; $4252: $13
    ld b, h                                       ; $4253: $44
    rst RST_38                                    ; $4254: $FF
    rst RST_38                                    ; $4255: $FF
    ld d, e                                       ; $4256: $53
    ld b, h                                       ; $4257: $44
    rst RST_38                                    ; $4258: $FF
    rst RST_38                                    ; $4259: $FF
    rst RST_38                                    ; $425A: $FF
    rst RST_38                                    ; $425B: $FF
    ld e, d                                       ; $425C: $5A
    ld c, c                                       ; $425D: $49
    rst RST_38                                    ; $425E: $FF
    rst RST_38                                    ; $425F: $FF
    call c, $FF49                                 ; $4260: $DC $49 $FF
    rst RST_38                                    ; $4263: $FF
    add hl, bc                                    ; $4264: $09
    ld c, d                                       ; $4265: $4A
    rst RST_38                                    ; $4266: $FF
    rst RST_38                                    ; $4267: $FF
    call c, $FF49                                 ; $4268: $DC $49 $FF
    rst RST_38                                    ; $426B: $FF
    add hl, bc                                    ; $426C: $09
    ld c, d                                       ; $426D: $4A
    rst RST_38                                    ; $426E: $FF
    rst RST_38                                    ; $426F: $FF
    rst RST_38                                    ; $4270: $FF
    rst RST_38                                    ; $4271: $FF
    ld [hl], a                                    ; $4272: $77
    ld c, c                                       ; $4273: $49
    rst RST_38                                    ; $4274: $FF
    rst RST_38                                    ; $4275: $FF
    add c                                         ; $4276: $81
    ld c, c                                       ; $4277: $49
    rst RST_38                                    ; $4278: $FF
    rst RST_38                                    ; $4279: $FF
    adc e                                         ; $427A: $8B
    ld c, c                                       ; $427B: $49
    rst RST_38                                    ; $427C: $FF
    rst RST_38                                    ; $427D: $FF
    sub l                                         ; $427E: $95
    ld c, c                                       ; $427F: $49
    rst RST_38                                    ; $4280: $FF
    rst RST_38                                    ; $4281: $FF
    sub l                                         ; $4282: $95
    ld c, c                                       ; $4283: $49
    rst RST_38                                    ; $4284: $FF
    rst RST_38                                    ; $4285: $FF
    call c, $FF49                                 ; $4286: $DC $49 $FF
    rst RST_38                                    ; $4289: $FF
    add hl, bc                                    ; $428A: $09
    ld c, d                                       ; $428B: $4A
    rst RST_38                                    ; $428C: $FF
    rst RST_38                                    ; $428D: $FF
    rst RST_38                                    ; $428E: $FF
    rst RST_38                                    ; $428F: $FF
    ld e, d                                       ; $4290: $5A
    ld c, c                                       ; $4291: $49
    rst RST_38                                    ; $4292: $FF
    rst RST_38                                    ; $4293: $FF
    call c, $FF49                                 ; $4294: $DC $49 $FF
    rst RST_38                                    ; $4297: $FF
    add hl, bc                                    ; $4298: $09
    ld c, d                                       ; $4299: $4A
    rst RST_38                                    ; $429A: $FF
    rst RST_38                                    ; $429B: $FF
    rst RST_38                                    ; $429C: $FF
    rst RST_38                                    ; $429D: $FF
    and $49                                       ; $429E: $E6 $49
    rst RST_38                                    ; $42A0: $FF
    rst RST_38                                    ; $42A1: $FF
    rst RST_38                                    ; $42A2: $FF
    rst RST_38                                    ; $42A3: $FF
    ld d, e                                       ; $42A4: $53
    ld b, h                                       ; $42A5: $44
    rst RST_38                                    ; $42A6: $FF
    rst RST_38                                    ; $42A7: $FF
    ld d, e                                       ; $42A8: $53
    ld b, h                                       ; $42A9: $44
    rst RST_38                                    ; $42AA: $FF
    rst RST_38                                    ; $42AB: $FF
    rst RST_38                                    ; $42AC: $FF
    rst RST_38                                    ; $42AD: $FF
    pop de                                        ; $42AE: $D1
    ld b, l                                       ; $42AF: $45
    rst RST_38                                    ; $42B0: $FF
    rst RST_38                                    ; $42B1: $FF
    ld l, d                                       ; $42B2: $6A
    ld c, d                                       ; $42B3: $4A
    add h                                         ; $42B4: $84
    ld c, d                                       ; $42B5: $4A
    sbc a                                         ; $42B6: $9F
    ld c, d                                       ; $42B7: $4A
    rst RST_38                                    ; $42B8: $FF
    rst RST_38                                    ; $42B9: $FF
    push bc                                       ; $42BA: $C5
    ld c, d                                       ; $42BB: $4A
    add h                                         ; $42BC: $84
    ld c, d                                       ; $42BD: $4A
    pop de                                        ; $42BE: $D1
    ld b, l                                       ; $42BF: $45
    rst RST_38                                    ; $42C0: $FF
    rst RST_38                                    ; $42C1: $FF
    rst RST_38                                    ; $42C2: $FF
    rst RST_38                                    ; $42C3: $FF
    ld h, $4A                                     ; $42C4: $26 $4A
    add h                                         ; $42C6: $84
    ld c, d                                       ; $42C7: $4A
    ld b, b                                       ; $42C8: $40
    ld c, d                                       ; $42C9: $4A
    add h                                         ; $42CA: $84
    ld c, d                                       ; $42CB: $4A
    sbc a                                         ; $42CC: $9F
    ld c, d                                       ; $42CD: $4A
    rst RST_38                                    ; $42CE: $FF
    rst RST_38                                    ; $42CF: $FF
    push bc                                       ; $42D0: $C5
    ld c, d                                       ; $42D1: $4A
    add h                                         ; $42D2: $84
    ld c, d                                       ; $42D3: $4A
    db $DB                                        ; $42D4: $DB
    ld b, l                                       ; $42D5: $45
    rst RST_38                                    ; $42D6: $FF
    rst RST_38                                    ; $42D7: $FF
    rst RST_38                                    ; $42D8: $FF
    rst RST_38                                    ; $42D9: $FF
    ld [hl], a                                    ; $42DA: $77
    ld c, c                                       ; $42DB: $49
    rst RST_38                                    ; $42DC: $FF
    rst RST_38                                    ; $42DD: $FF
    db $DB                                        ; $42DE: $DB
    ld b, l                                       ; $42DF: $45
    rst RST_38                                    ; $42E0: $FF
    rst RST_38                                    ; $42E1: $FF
    ld h, b                                       ; $42E2: $60
    ld c, d                                       ; $42E3: $4A
    add h                                         ; $42E4: $84
    ld c, d                                       ; $42E5: $4A
    sbc a                                         ; $42E6: $9F
    ld c, d                                       ; $42E7: $4A
    rst RST_38                                    ; $42E8: $FF
    rst RST_38                                    ; $42E9: $FF
    push bc                                       ; $42EA: $C5
    ld c, d                                       ; $42EB: $4A
    add h                                         ; $42EC: $84
    ld c, d                                       ; $42ED: $4A
    db $DB                                        ; $42EE: $DB
    ld b, l                                       ; $42EF: $45
    rst RST_38                                    ; $42F0: $FF
    rst RST_38                                    ; $42F1: $FF
    rst RST_38                                    ; $42F2: $FF
    rst RST_38                                    ; $42F3: $FF
    ld [hl], a                                    ; $42F4: $77
    ld c, c                                       ; $42F5: $49
    rst RST_38                                    ; $42F6: $FF
    rst RST_38                                    ; $42F7: $FF
    call c, Call_000_054A                         ; $42F8: $DC $4A $05
    ld c, e                                       ; $42FB: $4B
    ld a, [de]                                    ; $42FC: $1A
    ld c, e                                       ; $42FD: $4B
    dec b                                         ; $42FE: $05
    ld c, e                                       ; $42FF: $4B
    scf                                           ; $4300: $37
    ld c, e                                       ; $4301: $4B
    rst RST_38                                    ; $4302: $FF
    rst RST_38                                    ; $4303: $FF
    ld a, [de]                                    ; $4304: $1A
    ld c, e                                       ; $4305: $4B
    dec b                                         ; $4306: $05
    ld c, e                                       ; $4307: $4B
    ld [hl], a                                    ; $4308: $77
    ld c, c                                       ; $4309: $49
    rst RST_38                                    ; $430A: $FF
    rst RST_38                                    ; $430B: $FF
    rst RST_38                                    ; $430C: $FF
    rst RST_38                                    ; $430D: $FF
    ld e, d                                       ; $430E: $5A
    ld c, e                                       ; $430F: $4B
    ld [hl], c                                    ; $4310: $71
    ld c, e                                       ; $4311: $4B
    ld e, d                                       ; $4312: $5A
    ld c, e                                       ; $4313: $4B
    sub l                                         ; $4314: $95
    ld c, e                                       ; $4315: $4B
    or b                                          ; $4316: $B0
    ld c, e                                       ; $4317: $4B
    rst RST_38                                    ; $4318: $FF
    rst RST_38                                    ; $4319: $FF
    sub $43                                       ; $431A: $D6 $43
    rst RST_38                                    ; $431C: $FF
    rst RST_38                                    ; $431D: $FF
    cp a                                          ; $431E: $BF
    ld c, c                                       ; $431F: $49
    rst RST_38                                    ; $4320: $FF
    rst RST_38                                    ; $4321: $FF
    rst RST_38                                    ; $4322: $FF
    rst RST_38                                    ; $4323: $FF
    cp a                                          ; $4324: $BF
    ld c, c                                       ; $4325: $49
    rst RST_38                                    ; $4326: $FF
    rst RST_38                                    ; $4327: $FF
    db $D3                                        ; $4328: $D3
    ld c, e                                       ; $4329: $4B
    rst RST_38                                    ; $432A: $FF
    rst RST_38                                    ; $432B: $FF
    db $FC                                        ; $432C: $FC
    ld c, e                                       ; $432D: $4B
    rst RST_38                                    ; $432E: $FF
    rst RST_38                                    ; $432F: $FF
    ld l, $4C                                     ; $4330: $2E $4C
    rst RST_38                                    ; $4332: $FF
    rst RST_38                                    ; $4333: $FF
    ld e, l                                       ; $4334: $5D
    ld c, h                                       ; $4335: $4C
    rst RST_38                                    ; $4336: $FF
    rst RST_38                                    ; $4337: $FF
    cp a                                          ; $4338: $BF
    ld c, c                                       ; $4339: $49
    rst RST_38                                    ; $433A: $FF
    rst RST_38                                    ; $433B: $FF
    rst RST_38                                    ; $433C: $FF
    rst RST_38                                    ; $433D: $FF
    cp l                                          ; $433E: $BD
    ld b, a                                       ; $433F: $47
    rst RST_38                                    ; $4340: $FF
    rst RST_38                                    ; $4341: $FF
    ldh [rBGP], a                                 ; $4342: $E0 $47
    rst RST_38                                    ; $4344: $FF
    rst RST_38                                    ; $4345: $FF
    cp l                                          ; $4346: $BD
    ld b, a                                       ; $4347: $47
    rst RST_38                                    ; $4348: $FF
    rst RST_38                                    ; $4349: $FF
    pop de                                        ; $434A: $D1
    ld b, l                                       ; $434B: $45
    rst RST_38                                    ; $434C: $FF
    rst RST_38                                    ; $434D: $FF
    ld h, b                                       ; $434E: $60
    ld c, d                                       ; $434F: $4A
    add h                                         ; $4350: $84
    ld c, d                                       ; $4351: $4A
    sbc a                                         ; $4352: $9F
    ld c, d                                       ; $4353: $4A
    rst RST_38                                    ; $4354: $FF
    rst RST_38                                    ; $4355: $FF
    push bc                                       ; $4356: $C5
    ld c, d                                       ; $4357: $4A
    add h                                         ; $4358: $84
    ld c, d                                       ; $4359: $4A
    pop de                                        ; $435A: $D1
    ld b, l                                       ; $435B: $45
    rst RST_38                                    ; $435C: $FF
    rst RST_38                                    ; $435D: $FF
    cp a                                          ; $435E: $BF
    ld c, c                                       ; $435F: $49
    rst RST_38                                    ; $4360: $FF
    rst RST_38                                    ; $4361: $FF
    adc a                                         ; $4362: $8F
    ld c, h                                       ; $4363: $4C
    rst RST_38                                    ; $4364: $FF
    rst RST_38                                    ; $4365: $FF
    ldh [c], a                                    ; $4366: $E2
    ld b, [hl]                                    ; $4367: $46
    rst RST_38                                    ; $4368: $FF
    rst RST_38                                    ; $4369: $FF
    ld [$2847], sp                                ; $436A: $08 $47 $28
    ld b, a                                       ; $436D: $47
    or d                                          ; $436E: $B2
    ld c, h                                       ; $436F: $4C
    rst RST_38                                    ; $4370: $FF
    rst RST_38                                    ; $4371: $FF
    jp nc, Jump_000_284C                          ; $4372: $D2 $4C $28

    ld b, a                                       ; $4375: $47
    and $4C                                       ; $4376: $E6 $4C
    rst RST_38                                    ; $4378: $FF
    rst RST_38                                    ; $4379: $FF
    sub $43                                       ; $437A: $D6 $43
    rst RST_38                                    ; $437C: $FF
    rst RST_38                                    ; $437D: $FF
    cp a                                          ; $437E: $BF
    ld c, c                                       ; $437F: $49
    rst RST_38                                    ; $4380: $FF
    rst RST_38                                    ; $4381: $FF
    rst RST_38                                    ; $4382: $FF
    rst RST_38                                    ; $4383: $FF
    adc $44                                       ; $4384: $CE $44
    push hl                                       ; $4386: $E5
    ld b, h                                       ; $4387: $44
    inc bc                                        ; $4388: $03
    ld c, b                                       ; $4389: $48
    inc d                                         ; $438A: $14
    ld b, l                                       ; $438B: $45
    dec e                                         ; $438C: $1D
    ld c, b                                       ; $438D: $48
    inc d                                         ; $438E: $14
    ld b, l                                       ; $438F: $45
    inc bc                                        ; $4390: $03
    ld c, b                                       ; $4391: $48
    inc d                                         ; $4392: $14
    ld b, l                                       ; $4393: $45
    ret                                           ; $4394: $C9


    ld c, b                                       ; $4395: $48
    ld b, $4D                                     ; $4396: $06 $4D
    inc hl                                        ; $4398: $23
    ld c, l                                       ; $4399: $4D
    inc a                                         ; $439A: $3C
    ld c, c                                       ; $439B: $49
    inc hl                                        ; $439C: $23
    ld c, l                                       ; $439D: $4D
    inc a                                         ; $439E: $3C
    ld c, c                                       ; $439F: $49
    adc $44                                       ; $43A0: $CE $44
    push hl                                       ; $43A2: $E5
    ld b, h                                       ; $43A3: $44
    ret                                           ; $43A4: $C9


    ld c, b                                       ; $43A5: $48
    ld c, $4D                                     ; $43A6: $0E $4D
    dec l                                         ; $43A8: $2D
    ld c, l                                       ; $43A9: $4D
    inc a                                         ; $43AA: $3C
    ld c, c                                       ; $43AB: $49
    dec l                                         ; $43AC: $2D
    ld c, l                                       ; $43AD: $4D
    inc a                                         ; $43AE: $3C
    ld c, c                                       ; $43AF: $49
    adc $44                                       ; $43B0: $CE $44
    push hl                                       ; $43B2: $E5
    ld b, h                                       ; $43B3: $44
    rst RST_38                                    ; $43B4: $FF
    rst RST_38                                    ; $43B5: $FF
    nop                                           ; $43B6: $00
    ld bc, $0000                                  ; $43B7: $01 $00 $00
    ld b, b                                       ; $43BA: $40
    db $10                                        ; $43BB: $10
    ret nz                                        ; $43BC: $C0

    ld b, e                                       ; $43BD: $43
    nop                                           ; $43BE: $00
    nop                                           ; $43BF: $00
    rlca                                          ; $43C0: $07
    ld h, $F4                                     ; $43C1: $26 $F4
    nop                                           ; $43C3: $00
    ld d, $F4                                     ; $43C4: $16 $F4
    ld [bc], a                                    ; $43C6: $02
    rra                                           ; $43C7: $1F
    db $FC                                        ; $43C8: $FC
    inc b                                         ; $43C9: $04
    cpl                                           ; $43CA: $2F
    db $FC                                        ; $43CB: $FC
    ld b, $22                                     ; $43CC: $06 $22
    inc b                                         ; $43CE: $04
    ld [$0432], sp                                ; $43CF: $08 $32 $04
    ld a, [bc]                                    ; $43D2: $0A
    ld a, $F9                                     ; $43D3: $3E $F9
    inc c                                         ; $43D5: $0C
    nop                                           ; $43D6: $00
    ld bc, $E000                                  ; $43D7: $01 $00 $E0
    ld b, b                                       ; $43DA: $40
    db $10                                        ; $43DB: $10
    ldh [rSCX], a                                 ; $43DC: $E0 $43
    nop                                           ; $43DE: $00
    inc b                                         ; $43DF: $04
    rlca                                          ; $43E0: $07
    rra                                           ; $43E1: $1F
    db $F4                                        ; $43E2: $F4
    nop                                           ; $43E3: $00
    rrca                                          ; $43E4: $0F

jr_009_43E5:
    db $F4                                        ; $43E5: $F4
    ld [bc], a                                    ; $43E6: $02
    jr jr_009_43E5                                ; $43E7: $18 $FC

    inc b                                         ; $43E9: $04
    jr z, @-$02                                   ; $43EA: $28 $FC

    ld b, $1B                                     ; $43EC: $06 $1B
    inc b                                         ; $43EE: $04
    ld [$FC38], sp                                ; $43EF: $08 $38 $FC
    ld a, [bc]                                    ; $43F2: $0A
    dec hl                                        ; $43F3: $2B
    inc b                                         ; $43F4: $04
    inc c                                         ; $43F5: $0C
    nop                                           ; $43F6: $00
    ld bc, $C000                                  ; $43F7: $01 $00 $C0
    ld b, c                                       ; $43FA: $41
    stop                                          ; $43FB: $10 $00
    ld b, h                                       ; $43FD: $44
    nop                                           ; $43FE: $00
    inc b                                         ; $43FF: $04
    ld b, $1D                                     ; $4400: $06 $1D
    push af                                       ; $4402: $F5
    nop                                           ; $4403: $00
    dec c                                         ; $4404: $0D
    push af                                       ; $4405: $F5
    ld [bc], a                                    ; $4406: $02
    db $10                                        ; $4407: $10
    db $FD                                        ; $4408: $FD

jr_009_4409:
    inc b                                         ; $4409: $04
    jr nz, jr_009_4409                            ; $440A: $20 $FD

    ld b, $1A                                     ; $440C: $06 $1A
    dec b                                         ; $440E: $05
    ld [$FC2F], sp                                ; $440F: $08 $2F $FC
    ld a, [bc]                                    ; $4412: $0A
    nop                                           ; $4413: $00
    ld bc, $8000                                  ; $4414: $01 $00 $80
    ld b, d                                       ; $4417: $42
    db $10                                        ; $4418: $10
    dec e                                         ; $4419: $1D
    ld b, h                                       ; $441A: $44
    ld bc, $0702                                  ; $441B: $01 $02 $07
    ld [hl+], a                                   ; $441E: $22
    db $F4                                        ; $441F: $F4
    nop                                           ; $4420: $00
    ld [de], a                                    ; $4421: $12
    db $F4                                        ; $4422: $F4
    ld [bc], a                                    ; $4423: $02
    dec de                                        ; $4424: $1B
    db $FC                                        ; $4425: $FC
    inc b                                         ; $4426: $04
    dec hl                                        ; $4427: $2B
    db $FC                                        ; $4428: $FC
    ld b, $24                                     ; $4429: $06 $24
    inc b                                         ; $442B: $04
    ld [$0414], sp                                ; $442C: $08 $14 $04
    ld a, [bc]                                    ; $442F: $0A
    dec sp                                        ; $4430: $3B
    db $FD                                        ; $4431: $FD
    inc c                                         ; $4432: $0C
    nop                                           ; $4433: $00
    ld bc, $6000                                  ; $4434: $01 $00 $60
    ld b, e                                       ; $4437: $43
    db $10                                        ; $4438: $10
    dec a                                         ; $4439: $3D
    ld b, h                                       ; $443A: $44
    inc bc                                        ; $443B: $03
    nop                                           ; $443C: $00
    rlca                                          ; $443D: $07
    ld [hl+], a                                   ; $443E: $22
    di                                            ; $443F: $F3
    nop                                           ; $4440: $00
    ld [de], a                                    ; $4441: $12
    ei                                            ; $4442: $FB
    ld [bc], a                                    ; $4443: $02
    ld [hl+], a                                   ; $4444: $22
    ei                                            ; $4445: $FB
    inc b                                         ; $4446: $04
    ld [hl-], a                                   ; $4447: $32
    ld a, [$2206]                                 ; $4448: $FA $06 $22
    inc bc                                        ; $444B: $03
    ld [$F232], sp                                ; $444C: $08 $32 $F2
    ld a, [bc]                                    ; $444F: $0A
    ld [de], a                                    ; $4450: $12
    di                                            ; $4451: $F3
    inc c                                         ; $4452: $0C
    nop                                           ; $4453: $00
    rlca                                          ; $4454: $07
    nop                                           ; $4455: $00
    ld b, b                                       ; $4456: $40
    ld b, h                                       ; $4457: $44
    db $10                                        ; $4458: $10
    ld e, l                                       ; $4459: $5D
    ld b, h                                       ; $445A: $44
    nop                                           ; $445B: $00
    nop                                           ; $445C: $00
    ld b, $25                                     ; $445D: $06 $25
    push af                                       ; $445F: $F5
    nop                                           ; $4460: $00
    dec [hl]                                      ; $4461: $35
    push af                                       ; $4462: $F5
    ld [bc], a                                    ; $4463: $02
    dec h                                         ; $4464: $25
    db $FD                                        ; $4465: $FD
    inc b                                         ; $4466: $04
    dec [hl]                                      ; $4467: $35
    db $FD                                        ; $4468: $FD
    ld b, $29                                     ; $4469: $06 $29
    dec b                                         ; $446B: $05
    ld [$0539], sp                                ; $446C: $08 $39 $05
    ld a, [bc]                                    ; $446F: $0A
    nop                                           ; $4470: $00
    ld bc, $0000                                  ; $4471: $01 $00 $00
    ld b, l                                       ; $4474: $45
    db $10                                        ; $4475: $10
    adc [hl]                                      ; $4476: $8E
    ld b, h                                       ; $4477: $44
    rst RST_38                                    ; $4478: $FF
    nop                                           ; $4479: $00
    nop                                           ; $447A: $00
    rlca                                          ; $447B: $07
    nop                                           ; $447C: $00
    nop                                           ; $447D: $00
    ld b, l                                       ; $447E: $45
    db $10                                        ; $447F: $10
    adc [hl]                                      ; $4480: $8E
    ld b, h                                       ; $4481: $44
    db $FD                                        ; $4482: $FD
    inc b                                         ; $4483: $04
    nop                                           ; $4484: $00
    ld [$0000], sp                                ; $4485: $08 $00 $00
    ld b, l                                       ; $4488: $45
    db $10                                        ; $4489: $10
    adc [hl]                                      ; $448A: $8E
    ld b, h                                       ; $448B: $44
    ld sp, hl                                     ; $448C: $F9

jr_009_448D:
    db $FC                                        ; $448D: $FC
    inc bc                                        ; $448E: $03
    jr nz, jr_009_448D                            ; $448F: $20 $FC

    nop                                           ; $4491: $00
    jr nz, jr_009_4498                            ; $4492: $20 $04

    ld [bc], a                                    ; $4494: $02
    jr nz, jr_009_44A3                            ; $4495: $20 $0C

    inc b                                         ; $4497: $04

jr_009_4498:
    nop                                           ; $4498: $00
    ld h, b                                       ; $4499: $60
    ld b, l                                       ; $449A: $45
    db $10                                        ; $449B: $10
    and b                                         ; $449C: $A0
    ld b, h                                       ; $449D: $44
    rst RST_38                                    ; $449E: $FF

jr_009_449F:
    nop                                           ; $449F: $00
    inc bc                                        ; $44A0: $03
    jr nc, jr_009_449F                            ; $44A1: $30 $FC

jr_009_44A3:
    nop                                           ; $44A3: $00
    jr nc, jr_009_44AA                            ; $44A4: $30 $04

    ld [bc], a                                    ; $44A6: $02
    jr nc, jr_009_44B5                            ; $44A7: $30 $0C

    inc b                                         ; $44A9: $04

jr_009_44AA:
    nop                                           ; $44AA: $00
    ret nz                                        ; $44AB: $C0

    ld b, l                                       ; $44AC: $45
    db $10                                        ; $44AD: $10
    or d                                          ; $44AE: $B2
    ld b, h                                       ; $44AF: $44
    db $FD                                        ; $44B0: $FD
    inc b                                         ; $44B1: $04

jr_009_44B2:
    inc bc                                        ; $44B2: $03
    jr nc, jr_009_44B2                            ; $44B3: $30 $FD

jr_009_44B5:
    nop                                           ; $44B5: $00
    jr nc, jr_009_44BD                            ; $44B6: $30 $05

    ld [bc], a                                    ; $44B8: $02
    jr nc, jr_009_44C8                            ; $44B9: $30 $0D

    inc b                                         ; $44BB: $04

jr_009_44BC:
    nop                                           ; $44BC: $00

jr_009_44BD:
    jr nz, jr_009_4505                            ; $44BD: $20 $46

    db $10                                        ; $44BF: $10
    call nz, $0144                                ; $44C0: $C4 $44 $01
    inc b                                         ; $44C3: $04
    inc bc                                        ; $44C4: $03
    jr z, jr_009_44BC                             ; $44C5: $28 $F5

jr_009_44C7:
    nop                                           ; $44C7: $00

jr_009_44C8:
    jr z, jr_009_44C7                             ; $44C8: $28 $FD

    ld [bc], a                                    ; $44CA: $02
    jr z, jr_009_44D2                             ; $44CB: $28 $05

    inc b                                         ; $44CD: $04
    nop                                           ; $44CE: $00
    ld bc, $A000                                  ; $44CF: $01 $00 $A0

jr_009_44D2:
    ld c, d                                       ; $44D2: $4A
    db $10                                        ; $44D3: $10
    ret c                                         ; $44D4: $D8

    ld b, h                                       ; $44D5: $44
    ld [bc], a                                    ; $44D6: $02
    nop                                           ; $44D7: $00
    inc b                                         ; $44D8: $04
    dec e                                         ; $44D9: $1D
    ld [$2000], a                                 ; $44DA: $EA $00 $20
    ldh a, [c]                                    ; $44DD: $F2
    ld [bc], a                                    ; $44DE: $02
    jr nz, @-$04                                  ; $44DF: $20 $FA

    inc b                                         ; $44E1: $04
    jr nz, jr_009_44E6                            ; $44E2: $20 $02

    ld b, $00                                     ; $44E4: $06 $00

jr_009_44E6:
    jr nz, jr_009_4533                            ; $44E6: $20 $4B

    db $10                                        ; $44E8: $10
    db $ED                                        ; $44E9: $ED
    ld b, h                                       ; $44EA: $44
    ld [bc], a                                    ; $44EB: $02
    nop                                           ; $44EC: $00

jr_009_44ED:
    inc b                                         ; $44ED: $04
    dec [hl]                                      ; $44EE: $35
    ldh a, [c]                                    ; $44EF: $F2
    nop                                           ; $44F0: $00
    jr nc, jr_009_44ED                            ; $44F1: $30 $FA

    ld [bc], a                                    ; $44F3: $02
    jr nc, @+$04                                  ; $44F4: $30 $02

    inc b                                         ; $44F6: $04
    ld a, $0A                                     ; $44F7: $3E $0A
    ld b, $00                                     ; $44F9: $06 $00
    ld bc, $A046                                  ; $44FB: $01 $46 $A0
    ld c, e                                       ; $44FE: $4B
    db $10                                        ; $44FF: $10
    inc b                                         ; $4500: $04
    ld b, l                                       ; $4501: $45

jr_009_4502:
    ld [bc], a                                    ; $4502: $02
    nop                                           ; $4503: $00
    dec b                                         ; $4504: $05

jr_009_4505:
    dec e                                         ; $4505: $1D
    push hl                                       ; $4506: $E5
    nop                                           ; $4507: $00
    inc e                                         ; $4508: $1C
    db $ED                                        ; $4509: $ED
    ld [bc], a                                    ; $450A: $02
    jr nz, jr_009_4502                            ; $450B: $20 $F5

jr_009_450D:
    inc b                                         ; $450D: $04
    jr nz, jr_009_450D                            ; $450E: $20 $FD

    ld b, $20                                     ; $4510: $06 $20
    dec b                                         ; $4512: $05
    ld [$4000], sp                                ; $4513: $08 $00 $40
    ld c, h                                       ; $4516: $4C

jr_009_4517:
    db $10                                        ; $4517: $10
    inc e                                         ; $4518: $1C
    ld b, l                                       ; $4519: $45
    ld [bc], a                                    ; $451A: $02
    nop                                           ; $451B: $00
    inc b                                         ; $451C: $04
    jr nc, jr_009_4517                            ; $451D: $30 $F8

    nop                                           ; $451F: $00
    jr nc, jr_009_4522                            ; $4520: $30 $00

jr_009_4522:
    ld [bc], a                                    ; $4522: $02
    dec [hl]                                      ; $4523: $35
    ldh a, [rDIV]                                 ; $4524: $F0 $04
    dec a                                         ; $4526: $3D
    ld [$0006], sp                                ; $4527: $08 $06 $00
    ld bc, $C000                                  ; $452A: $01 $00 $C0
    ld c, h                                       ; $452D: $4C
    db $10                                        ; $452E: $10
    ld d, c                                       ; $452F: $51
    ld b, l                                       ; $4530: $45
    ldh a, [rP1]                                  ; $4531: $F0 $00

jr_009_4533:
    nop                                           ; $4533: $00
    rlca                                          ; $4534: $07
    nop                                           ; $4535: $00
    ret nz                                        ; $4536: $C0

    ld c, h                                       ; $4537: $4C
    db $10                                        ; $4538: $10
    ld d, c                                       ; $4539: $51
    ld b, l                                       ; $453A: $45
    db $F4                                        ; $453B: $F4
    ld [$0800], sp                                ; $453C: $08 $00 $08
    nop                                           ; $453F: $00
    ret nz                                        ; $4540: $C0

    ld c, h                                       ; $4541: $4C
    db $10                                        ; $4542: $10
    ld d, c                                       ; $4543: $51
    ld b, l                                       ; $4544: $45
    ld hl, sp+$00                                 ; $4545: $F8 $00
    jr nz, jr_009_4550                            ; $4547: $20 $07

    nop                                           ; $4549: $00
    ret nz                                        ; $454A: $C0

    ld c, h                                       ; $454B: $4C
    db $10                                        ; $454C: $10
    ld d, c                                       ; $454D: $51
    ld b, l                                       ; $454E: $45
    inc b                                         ; $454F: $04

jr_009_4550:
    ld [$2005], sp                                ; $4550: $08 $05 $20
    ei                                            ; $4553: $FB
    nop                                           ; $4554: $00
    jr nz, jr_009_455A                            ; $4555: $20 $03

    ld [bc], a                                    ; $4557: $02
    jr nz, jr_009_4565                            ; $4558: $20 $0B

jr_009_455A:
    inc b                                         ; $455A: $04
    db $10                                        ; $455B: $10
    rst RST_38                                    ; $455C: $FF
    ld b, $10                                     ; $455D: $06 $10
    rlca                                          ; $455F: $07
    ld [$6000], sp                                ; $4560: $08 $00 $60
    ld c, l                                       ; $4563: $4D
    db $10                                        ; $4564: $10

jr_009_4565:
    ld l, c                                       ; $4565: $69
    ld b, l                                       ; $4566: $45
    ldh a, [rP1]                                  ; $4567: $F0 $00
    inc b                                         ; $4569: $04
    ld [hl-], a                                   ; $456A: $32
    pop af                                        ; $456B: $F1
    nop                                           ; $456C: $00
    jr nc, @-$05                                  ; $456D: $30 $F9

    ld [bc], a                                    ; $456F: $02
    jr nc, jr_009_4573                            ; $4570: $30 $01

    inc b                                         ; $4572: $04

jr_009_4573:
    jr nc, jr_009_457E                            ; $4573: $30 $09

    ld b, $00                                     ; $4575: $06 $00
    ld a, [bc]                                    ; $4577: $0A
    ld b, a                                       ; $4578: $47
    ldh [rKEY1], a                                ; $4579: $E0 $4D
    db $10                                        ; $457B: $10
    sub h                                         ; $457C: $94
    ld b, l                                       ; $457D: $45

jr_009_457E:
    ldh a, [rP1]                                  ; $457E: $F0 $00
    nop                                           ; $4580: $00
    ld c, d                                       ; $4581: $4A
    ld c, e                                       ; $4582: $4B
    ldh [rKEY1], a                                ; $4583: $E0 $4D
    db $10                                        ; $4585: $10
    sub h                                         ; $4586: $94
    ld b, l                                       ; $4587: $45
    ldh a, [c]                                    ; $4588: $F2
    ld [$0800], sp                                ; $4589: $08 $00 $08
    ld c, l                                       ; $458C: $4D
    ldh [rKEY1], a                                ; $458D: $E0 $4D

jr_009_458F:
    db $10                                        ; $458F: $10
    sub h                                         ; $4590: $94
    ld b, l                                       ; $4591: $45
    ld hl, sp+$00                                 ; $4592: $F8 $00
    ld b, $20                                     ; $4594: $06 $20
    db $ED                                        ; $4596: $ED
    nop                                           ; $4597: $00
    jr nz, jr_009_458F                            ; $4598: $20 $F5

jr_009_459A:
    ld [bc], a                                    ; $459A: $02
    jr nz, jr_009_459A                            ; $459B: $20 $FD

    inc b                                         ; $459D: $04
    jr nz, @+$07                                  ; $459E: $20 $05

    ld b, $1E                                     ; $45A0: $06 $1E
    dec c                                         ; $45A2: $0D
    ld [$FD10], sp                                ; $45A3: $08 $10 $FD
    ld a, [bc]                                    ; $45A6: $0A
    nop                                           ; $45A7: $00
    and b                                         ; $45A8: $A0
    ld c, [hl]                                    ; $45A9: $4E

jr_009_45AA:
    db $10                                        ; $45AA: $10
    xor a                                         ; $45AB: $AF
    ld b, l                                       ; $45AC: $45
    ldh a, [rP1]                                  ; $45AD: $F0 $00
    dec b                                         ; $45AF: $05
    jr nc, @-$11                                  ; $45B0: $30 $ED

    nop                                           ; $45B2: $00
    jr nc, jr_009_45AA                            ; $45B3: $30 $F5

jr_009_45B5:
    ld [bc], a                                    ; $45B5: $02
    jr nc, jr_009_45B5                            ; $45B6: $30 $FD

    inc b                                         ; $45B8: $04
    jr nc, @+$07                                  ; $45B9: $30 $05

    ld b, $3C                                     ; $45BB: $06 $3C
    dec c                                         ; $45BD: $0D
    ld [$4000], sp                                ; $45BE: $08 $00 $40
    ld c, a                                       ; $45C1: $4F

jr_009_45C2:
    db $10                                        ; $45C2: $10
    rst RST_00                                    ; $45C3: $C7
    ld b, l                                       ; $45C4: $45
    ldh a, [rP1]                                  ; $45C5: $F0 $00
    inc bc                                        ; $45C7: $03
    jr nc, jr_009_45C2                            ; $45C8: $30 $F8

    nop                                           ; $45CA: $00
    jr nc, jr_009_45CD                            ; $45CB: $30 $00

jr_009_45CD:
    ld [bc], a                                    ; $45CD: $02
    jr nc, jr_009_45D8                            ; $45CE: $30 $08

    inc b                                         ; $45D0: $04
    nop                                           ; $45D1: $00
    ld bc, $A048                                  ; $45D2: $01 $48 $A0
    ld c, a                                       ; $45D5: $4F

jr_009_45D6:
    db $10                                        ; $45D6: $10
    push hl                                       ; $45D7: $E5

jr_009_45D8:
    ld b, l                                       ; $45D8: $45
    ld [bc], a                                    ; $45D9: $02
    nop                                           ; $45DA: $00
    nop                                           ; $45DB: $00
    ld bc, $A000                                  ; $45DC: $01 $00 $A0
    ld c, a                                       ; $45DF: $4F
    db $10                                        ; $45E0: $10

jr_009_45E1:
    push hl                                       ; $45E1: $E5
    ld b, l                                       ; $45E2: $45
    ld [bc], a                                    ; $45E3: $02

jr_009_45E4:
    nop                                           ; $45E4: $00
    add hl, bc                                    ; $45E5: $09
    rra                                           ; $45E6: $1F
    db $E3                                        ; $45E7: $E3
    nop                                           ; $45E8: $00
    jr z, jr_009_45D6                             ; $45E9: $28 $EB

    ld [bc], a                                    ; $45EB: $02
    jr nz, jr_009_45E1                            ; $45EC: $20 $F3

    inc b                                         ; $45EE: $04
    jr nc, jr_009_45E4                            ; $45EF: $30 $F3

    ld b, $1C                                     ; $45F1: $06 $1C
    ei                                            ; $45F3: $FB
    ld [$FB2C], sp                                ; $45F4: $08 $2C $FB
    ld a, [bc]                                    ; $45F7: $0A
    ld hl, $0C03                                  ; $45F8: $21 $03 $0C
    inc sp                                        ; $45FB: $33
    inc bc                                        ; $45FC: $03

jr_009_45FD:
    ld c, $38                                     ; $45FD: $0E $38
    db $EB                                        ; $45FF: $EB
    stop                                          ; $4600: $10 $00
    ld bc, $C048                                  ; $4602: $01 $48 $C0
    ld d, b                                       ; $4605: $50
    db $10                                        ; $4606: $10
    dec bc                                        ; $4607: $0B
    ld b, [hl]                                    ; $4608: $46
    inc bc                                        ; $4609: $03
    nop                                           ; $460A: $00
    rlca                                          ; $460B: $07
    db $10                                        ; $460C: $10
    db $ED                                        ; $460D: $ED
    nop                                           ; $460E: $00
    jr nz, @-$11                                  ; $460F: $20 $ED

    ld [bc], a                                    ; $4611: $02
    jr nc, @-$11                                  ; $4612: $30 $ED

    inc b                                         ; $4614: $04
    ld d, $E5                                     ; $4615: $16 $E5
    ld b, $26                                     ; $4617: $06 $26
    push hl                                       ; $4619: $E5
    ld [$E536], sp                                ; $461A: $08 $36 $E5
    ld a, [bc]                                    ; $461D: $0A
    jr nz, jr_009_45FD                            ; $461E: $20 $DD

    inc c                                         ; $4620: $0C
    nop                                           ; $4621: $00
    and b                                         ; $4622: $A0
    ld d, c                                       ; $4623: $51
    db $10                                        ; $4624: $10
    add hl, hl                                    ; $4625: $29
    ld b, [hl]                                    ; $4626: $46
    inc bc                                        ; $4627: $03
    nop                                           ; $4628: $00
    rlca                                          ; $4629: $07
    rra                                           ; $462A: $1F
    push af                                       ; $462B: $F5
    nop                                           ; $462C: $00
    cpl                                           ; $462D: $2F
    push af                                       ; $462E: $F5
    ld [bc], a                                    ; $462F: $02
    ld [hl+], a                                   ; $4630: $22
    db $FD                                        ; $4631: $FD
    inc b                                         ; $4632: $04
    ld [hl-], a                                   ; $4633: $32
    db $FD                                        ; $4634: $FD
    ld b, $1F                                     ; $4635: $06 $1F
    dec b                                         ; $4637: $05
    ld [$053A], sp                                ; $4638: $08 $3A $05
    ld a, [bc]                                    ; $463B: $0A
    ccf                                           ; $463C: $3F
    push af                                       ; $463D: $F5
    inc c                                         ; $463E: $0C
    nop                                           ; $463F: $00
    ld bc, $8048                                  ; $4640: $01 $48 $80
    ld d, d                                       ; $4643: $52
    db $10                                        ; $4644: $10
    ld c, c                                       ; $4645: $49
    ld b, [hl]                                    ; $4646: $46
    inc bc                                        ; $4647: $03
    nop                                           ; $4648: $00
    inc bc                                        ; $4649: $03
    dec bc                                        ; $464A: $0B
    db $ED                                        ; $464B: $ED
    nop                                           ; $464C: $00
    dec de                                        ; $464D: $1B
    db $ED                                        ; $464E: $ED
    ld [bc], a                                    ; $464F: $02
    dec [hl]                                      ; $4650: $35
    db $ED                                        ; $4651: $ED
    inc b                                         ; $4652: $04
    nop                                           ; $4653: $00
    rlca                                          ; $4654: $07
    nop                                           ; $4655: $00
    ldh [rHDMA2], a                               ; $4656: $E0 $52
    db $10                                        ; $4658: $10
    ld e, l                                       ; $4659: $5D
    ld b, [hl]                                    ; $465A: $46
    nop                                           ; $465B: $00
    nop                                           ; $465C: $00
    ld b, $25                                     ; $465D: $06 $25
    ldh a, [rP1]                                  ; $465F: $F0 $00
    dec h                                         ; $4661: $25
    ld hl, sp+$02                                 ; $4662: $F8 $02
    dec h                                         ; $4664: $25
    nop                                           ; $4665: $00
    inc b                                         ; $4666: $04
    dec h                                         ; $4667: $25
    ld [$3506], sp                                ; $4668: $08 $06 $35
    ld a, [$3508]                                 ; $466B: $FA $08 $35
    ld [bc], a                                    ; $466E: $02
    ld a, [bc]                                    ; $466F: $0A
    nop                                           ; $4670: $00
    rlca                                          ; $4671: $07
    ld c, c                                       ; $4672: $49
    and b                                         ; $4673: $A0
    ld d, e                                       ; $4674: $53
    db $10                                        ; $4675: $10
    ld a, d                                       ; $4676: $7A
    ld b, [hl]                                    ; $4677: $46
    nop                                           ; $4678: $00
    nop                                           ; $4679: $00
    rlca                                          ; $467A: $07
    ld hl, $00E5                                  ; $467B: $21 $E5 $00
    ld hl, $02ED                                  ; $467E: $21 $ED $02
    dec h                                         ; $4681: $25
    push af                                       ; $4682: $F5
    inc b                                         ; $4683: $04
    dec h                                         ; $4684: $25
    db $FD                                        ; $4685: $FD
    ld b, $25                                     ; $4686: $06 $25

jr_009_4688:
    dec b                                         ; $4688: $05
    ld [$F935], sp                                ; $4689: $08 $35 $F9
    ld a, [bc]                                    ; $468C: $0A
    dec [hl]                                      ; $468D: $35
    ld bc, $000C                                  ; $468E: $01 $0C $00
    add b                                         ; $4691: $80
    ld d, h                                       ; $4692: $54

jr_009_4693:
    db $10                                        ; $4693: $10
    and b                                         ; $4694: $A0
    ld b, [hl]                                    ; $4695: $46
    ei                                            ; $4696: $FB
    nop                                           ; $4697: $00
    nop                                           ; $4698: $00
    add b                                         ; $4699: $80
    ld d, h                                       ; $469A: $54
    db $10                                        ; $469B: $10
    and b                                         ; $469C: $A0
    ld b, [hl]                                    ; $469D: $46

jr_009_469E:
    ld bc, $05F8                                  ; $469E: $01 $F8 $05
    jr c, jr_009_4688                             ; $46A1: $38 $E5

    nop                                           ; $46A3: $00
    jr c, jr_009_4693                             ; $46A4: $38 $ED

    ld [bc], a                                    ; $46A6: $02
    jr c, jr_009_469E                             ; $46A7: $38 $F5

jr_009_46A9:
    inc b                                         ; $46A9: $04
    jr c, jr_009_46A9                             ; $46AA: $38 $FD

    ld b, $39                                     ; $46AC: $06 $39
    dec b                                         ; $46AE: $05
    ld [$2000], sp                                ; $46AF: $08 $00 $20
    ld d, l                                       ; $46B2: $55

jr_009_46B3:
    db $10                                        ; $46B3: $10
    cp b                                          ; $46B4: $B8
    ld b, [hl]                                    ; $46B5: $46
    db $FC                                        ; $46B6: $FC
    nop                                           ; $46B7: $00
    dec b                                         ; $46B8: $05
    add hl, sp                                    ; $46B9: $39
    db $ED                                        ; $46BA: $ED
    nop                                           ; $46BB: $00
    jr c, jr_009_46B3                             ; $46BC: $38 $F5

jr_009_46BE:
    ld [bc], a                                    ; $46BE: $02
    jr c, jr_009_46BE                             ; $46BF: $38 $FD

    inc b                                         ; $46C1: $04
    jr c, @+$07                                   ; $46C2: $38 $05

    ld b, $3A                                     ; $46C4: $06 $3A
    dec c                                         ; $46C6: $0D
    ld [$C000], sp                                ; $46C7: $08 $00 $C0
    ld d, l                                       ; $46CA: $55
    db $10                                        ; $46CB: $10
    ret c                                         ; $46CC: $D8

    ld b, [hl]                                    ; $46CD: $46
    ld a, [$2000]                                 ; $46CE: $FA $00 $20
    ret nz                                        ; $46D1: $C0

jr_009_46D2:
    ld d, l                                       ; $46D2: $55
    db $10                                        ; $46D3: $10
    ret c                                         ; $46D4: $D8

    ld b, [hl]                                    ; $46D5: $46
    ld [bc], a                                    ; $46D6: $02
    ld hl, sp+$03                                 ; $46D7: $F8 $03
    jr c, jr_009_46D2                             ; $46D9: $38 $F7

    nop                                           ; $46DB: $00
    jr c, @+$01                                   ; $46DC: $38 $FF

    ld [bc], a                                    ; $46DE: $02
    jr c, jr_009_46E8                             ; $46DF: $38 $07

    inc b                                         ; $46E1: $04
    nop                                           ; $46E2: $00
    ld [$204C], sp                                ; $46E3: $08 $4C $20
    ld d, [hl]                                    ; $46E6: $56
    db $10                                        ; $46E7: $10

jr_009_46E8:
    db $EC                                        ; $46E8: $EC
    ld b, [hl]                                    ; $46E9: $46
    nop                                           ; $46EA: $00
    add hl, bc                                    ; $46EB: $09
    add hl, bc                                    ; $46EC: $09
    ld [$00F3], sp                                ; $46ED: $08 $F3 $00
    jr @-$0B                                      ; $46F0: $18 $F3

    ld [bc], a                                    ; $46F2: $02

jr_009_46F3:
    ld [$04FB], sp                                ; $46F3: $08 $FB $04
    jr jr_009_46F3                                ; $46F6: $18 $FB

    ld b, $0A                                     ; $46F8: $06 $0A
    inc bc                                        ; $46FA: $03
    ld [$031A], sp                                ; $46FB: $08 $1A $03
    ld a, [bc]                                    ; $46FE: $0A

jr_009_46FF:
    rrca                                          ; $46FF: $0F
    dec bc                                        ; $4700: $0B
    inc c                                         ; $4701: $0C
    jr z, jr_009_46FF                             ; $4702: $28 $FB

    ld c, $1F                                     ; $4704: $0E $1F
    dec bc                                        ; $4706: $0B
    stop                                          ; $4707: $10 $00
    ld [$404C], sp                                ; $4709: $08 $4C $40
    ld d, a                                       ; $470C: $57
    db $10                                        ; $470D: $10
    ld [de], a                                    ; $470E: $12
    ld b, a                                       ; $470F: $47
    nop                                           ; $4710: $00
    ld c, $07                                     ; $4711: $0E $07
    jr nz, @-$09                                  ; $4713: $20 $F5

jr_009_4715:
    nop                                           ; $4715: $00
    jr nz, jr_009_4715                            ; $4716: $20 $FD

    ld [bc], a                                    ; $4718: $02
    jr nz, @-$11                                  ; $4719: $20 $ED

    inc b                                         ; $471B: $04
    dec bc                                        ; $471C: $0B
    push hl                                       ; $471D: $E5
    ld b, $1B                                     ; $471E: $06 $1B
    push hl                                       ; $4720: $E5
    ld [$ED10], sp                                ; $4721: $08 $10 $ED
    ld a, [bc]                                    ; $4724: $0A
    nop                                           ; $4725: $00
    db $EC                                        ; $4726: $EC
    inc c                                         ; $4727: $0C
    nop                                           ; $4728: $00
    jr nz, jr_009_4783                            ; $4729: $20 $58

    db $10                                        ; $472B: $10
    jr c, @+$49                                   ; $472C: $38 $47

    nop                                           ; $472E: $00
    ld c, $60                                     ; $472F: $0E $60
    jr nz, jr_009_478B                            ; $4731: $20 $58

    db $10                                        ; $4733: $10
    jr c, @+$49                                   ; $4734: $38 $47

    nop                                           ; $4736: $00
    add sp, $06                                   ; $4737: $E8 $06
    db $10                                        ; $4739: $10
    push af                                       ; $473A: $F5
    nop                                           ; $473B: $00
    db $10                                        ; $473C: $10
    db $FD                                        ; $473D: $FD
    ld [bc], a                                    ; $473E: $02
    dec e                                         ; $473F: $1D
    dec b                                         ; $4740: $05
    inc b                                         ; $4741: $04
    dec c                                         ; $4742: $0D
    dec b                                         ; $4743: $05
    ld b, $00                                     ; $4744: $06 $00
    ld sp, hl                                     ; $4746: $F9
    ld [$01FD], sp                                ; $4747: $08 $FD $01
    ld a, [bc]                                    ; $474A: $0A
    nop                                           ; $474B: $00
    ld [$E04C], sp                                ; $474C: $08 $4C $E0
    ld e, b                                       ; $474F: $58
    db $10                                        ; $4750: $10
    ld l, c                                       ; $4751: $69
    ld b, a                                       ; $4752: $47
    nop                                           ; $4753: $00
    ld c, $00                                     ; $4754: $0E $00
    ld bc, $E005                                  ; $4756: $01 $05 $E0
    ld e, b                                       ; $4759: $58
    db $10                                        ; $475A: $10
    ld l, c                                       ; $475B: $69
    ld b, a                                       ; $475C: $47
    nop                                           ; $475D: $00
    ld c, $60                                     ; $475E: $0E $60
    ld bc, $E005                                  ; $4760: $01 $05 $E0
    ld e, b                                       ; $4763: $58
    db $10                                        ; $4764: $10
    ld l, c                                       ; $4765: $69
    ld b, a                                       ; $4766: $47
    nop                                           ; $4767: $00
    add sp, $03                                   ; $4768: $E8 $03
    jr nz, @-$09                                  ; $476A: $20 $F5

jr_009_476C:
    nop                                           ; $476C: $00
    jr nz, jr_009_476C                            ; $476D: $20 $FD

    ld [bc], a                                    ; $476F: $02
    ld [hl+], a                                   ; $4770: $22
    db $ED                                        ; $4771: $ED
    inc b                                         ; $4772: $04
    nop                                           ; $4773: $00
    ld bc, $4005                                  ; $4774: $01 $05 $40
    ld e, c                                       ; $4777: $59
    db $10                                        ; $4778: $10
    add a                                         ; $4779: $87
    ld b, a                                       ; $477A: $47
    ld a, [bc]                                    ; $477B: $0A
    ld c, $60                                     ; $477C: $0E $60
    ld bc, $4000                                  ; $477E: $01 $00 $40
    ld e, c                                       ; $4781: $59
    db $10                                        ; $4782: $10

jr_009_4783:
    add a                                         ; $4783: $87
    ld b, a                                       ; $4784: $47
    ld sp, hl                                     ; $4785: $F9
    add sp, $05                                   ; $4786: $E8 $05
    dec de                                        ; $4788: $1B
    add sp, $00                                   ; $4789: $E8 $00

jr_009_478B:
    inc d                                         ; $478B: $14
    ldh a, [rSC]                                  ; $478C: $F0 $02
    ld [de], a                                    ; $478E: $12
    ld hl, sp+$04                                 ; $478F: $F8 $04
    ld de, $0600                                  ; $4791: $11 $00 $06
    ld [hl+], a                                   ; $4794: $22
    ld hl, sp+$08                                 ; $4795: $F8 $08
    nop                                           ; $4797: $00
    ld bc, $E000                                  ; $4798: $01 $00 $E0
    ld e, c                                       ; $479B: $59
    db $10                                        ; $479C: $10
    and c                                         ; $479D: $A1
    ld b, a                                       ; $479E: $47
    ld a, [$0900]                                 ; $479F: $FA $00 $09
    dec h                                         ; $47A2: $25
    ldh a, [c]                                    ; $47A3: $F2
    nop                                           ; $47A4: $00
    inc e                                         ; $47A5: $1C
    ld a, [$2C02]                                 ; $47A6: $FA $02 $2C
    ld a, [$2704]                                 ; $47A9: $FA $04 $27
    ld [bc], a                                    ; $47AC: $02
    ld b, $37                                     ; $47AD: $06 $37
    ld [bc], a                                    ; $47AF: $02
    ld [$0A22], sp                                ; $47B0: $08 $22 $0A
    ld a, [bc]                                    ; $47B3: $0A
    inc sp                                        ; $47B4: $33
    ld a, [bc]                                    ; $47B5: $0A
    inc c                                         ; $47B6: $0C
    jr nz, jr_009_47CB                            ; $47B7: $20 $12

    ld c, $38                                     ; $47B9: $0E $38
    ld [de], a                                    ; $47BB: $12
    stop                                          ; $47BC: $10 $00
    ld bc, $0000                                  ; $47BE: $01 $00 $00
    ld e, e                                       ; $47C1: $5B
    db $10                                        ; $47C2: $10
    rst RST_00                                    ; $47C3: $C7
    ld b, a                                       ; $47C4: $47
    ld bc, $0800                                  ; $47C5: $01 $00 $08
    inc hl                                        ; $47C8: $23
    ldh a, [rP1]                                  ; $47C9: $F0 $00

jr_009_47CB:
    inc [hl]                                      ; $47CB: $34
    ldh a, [rSC]                                  ; $47CC: $F0 $02
    ld hl, $04F8                                  ; $47CE: $21 $F8 $04
    ld sp, $06F8                                  ; $47D1: $31 $F8 $06
    ld hl, $0800                                  ; $47D4: $21 $00 $08
    ld sp, $0A00                                  ; $47D7: $31 $00 $0A
    ld [hl+], a                                   ; $47DA: $22
    ld [$3A0C], sp                                ; $47DB: $08 $0C $3A
    ld [$000E], sp                                ; $47DE: $08 $0E $00
    ld bc, $0000                                  ; $47E1: $01 $00 $00
    ld e, h                                       ; $47E4: $5C
    db $10                                        ; $47E5: $10
    ld [HeaderCartridgeType], a                   ; $47E6: $EA $47 $01
    nop                                           ; $47E9: $00
    ld [$F121], sp                                ; $47EA: $08 $21 $F1
    nop                                           ; $47ED: $00
    dec [hl]                                      ; $47EE: $35
    pop af                                        ; $47EF: $F1
    ld [bc], a                                    ; $47F0: $02
    dec de                                        ; $47F1: $1B
    ld sp, hl                                     ; $47F2: $F9
    inc b                                         ; $47F3: $04
    dec hl                                        ; $47F4: $2B
    ld sp, hl                                     ; $47F5: $F9
    ld b, $23                                     ; $47F6: $06 $23
    ld bc, $3308                                  ; $47F8: $01 $08 $33
    ld bc, $210A                                  ; $47FB: $01 $0A $21
    add hl, bc                                    ; $47FE: $09
    inc c                                         ; $47FF: $0C

jr_009_4800:
    dec a                                         ; $4800: $3D
    add hl, bc                                    ; $4801: $09
    ld c, $00                                     ; $4802: $0E $00
    ld bc, $0000                                  ; $4804: $01 $00 $00
    ld e, l                                       ; $4807: $5D
    db $10                                        ; $4808: $10
    dec c                                         ; $4809: $0D
    ld c, b                                       ; $480A: $48

jr_009_480B:
    nop                                           ; $480B: $00
    nop                                           ; $480C: $00
    dec b                                         ; $480D: $05
    inc e                                         ; $480E: $1C
    push hl                                       ; $480F: $E5
    nop                                           ; $4810: $00
    jr nz, jr_009_4800                            ; $4811: $20 $ED

jr_009_4813:
    ld [bc], a                                    ; $4813: $02
    jr nz, jr_009_480B                            ; $4814: $20 $F5

jr_009_4816:
    inc b                                         ; $4816: $04
    jr nz, jr_009_4816                            ; $4817: $20 $FD

    ld b, $20                                     ; $4819: $06 $20
    dec b                                         ; $481B: $05
    ld [$0100], sp                                ; $481C: $08 $00 $01
    nop                                           ; $481F: $00
    and b                                         ; $4820: $A0
    ld e, l                                       ; $4821: $5D
    db $10                                        ; $4822: $10
    daa                                           ; $4823: $27
    ld c, b                                       ; $4824: $48
    nop                                           ; $4825: $00
    nop                                           ; $4826: $00
    inc b                                         ; $4827: $04
    jr nz, jr_009_4813                            ; $4828: $20 $E9

    nop                                           ; $482A: $00
    jr nz, @-$0D                                  ; $482B: $20 $F1

    ld [bc], a                                    ; $482D: $02
    jr nz, @-$05                                  ; $482E: $20 $F9

    inc b                                         ; $4830: $04
    jr nz, @+$03                                  ; $4831: $20 $01

    ld b, $00                                     ; $4833: $06 $00
    ld bc, $A000                                  ; $4835: $01 $00 $A0
    ld h, c                                       ; $4838: $61
    db $10                                        ; $4839: $10
    ld a, $48                                     ; $483A: $3E $48
    nop                                           ; $483C: $00
    nop                                           ; $483D: $00
    rlca                                          ; $483E: $07
    inc hl                                        ; $483F: $23
    db $ED                                        ; $4840: $ED
    nop                                           ; $4841: $00
    add hl, hl                                    ; $4842: $29
    push af                                       ; $4843: $F5
    ld [bc], a                                    ; $4844: $02
    add hl, de                                    ; $4845: $19
    push af                                       ; $4846: $F5
    inc b                                         ; $4847: $04
    ld [hl+], a                                   ; $4848: $22
    db $FD                                        ; $4849: $FD
    ld b, $32                                     ; $484A: $06 $32
    db $FD                                        ; $484C: $FD
    ld [$0523], sp                                ; $484D: $08 $23 $05
    ld a, [bc]                                    ; $4850: $0A
    inc sp                                        ; $4851: $33
    dec b                                         ; $4852: $05
    inc c                                         ; $4853: $0C
    nop                                           ; $4854: $00
    ld bc, $8000                                  ; $4855: $01 $00 $80
    ld h, d                                       ; $4858: $62
    db $10                                        ; $4859: $10
    ld e, [hl]                                    ; $485A: $5E
    ld c, b                                       ; $485B: $48
    ld [bc], a                                    ; $485C: $02
    nop                                           ; $485D: $00
    rlca                                          ; $485E: $07
    daa                                           ; $485F: $27
    db $ED                                        ; $4860: $ED
    nop                                           ; $4861: $00
    daa                                           ; $4862: $27
    push af                                       ; $4863: $F5
    ld [bc], a                                    ; $4864: $02
    rla                                           ; $4865: $17
    push af                                       ; $4866: $F5
    inc b                                         ; $4867: $04
    ld e, $FD                                     ; $4868: $1E $FD
    ld b, $2E                                     ; $486A: $06 $2E
    db $FD                                        ; $486C: $FD
    ld [$0528], sp                                ; $486D: $08 $28 $05
    ld a, [bc]                                    ; $4870: $0A
    jr c, jr_009_4878                             ; $4871: $38 $05

    inc c                                         ; $4873: $0C
    nop                                           ; $4874: $00
    ld bc, $6000                                  ; $4875: $01 $00 $60

jr_009_4878:
    ld h, e                                       ; $4878: $63
    db $10                                        ; $4879: $10
    ld a, [hl]                                    ; $487A: $7E
    ld c, b                                       ; $487B: $48
    nop                                           ; $487C: $00
    nop                                           ; $487D: $00
    inc c                                         ; $487E: $0C
    inc hl                                        ; $487F: $23
    di                                            ; $4880: $F3
    nop                                           ; $4881: $00
    ld [hl+], a                                   ; $4882: $22
    ei                                            ; $4883: $FB
    ld [bc], a                                    ; $4884: $02
    inc hl                                        ; $4885: $23
    inc bc                                        ; $4886: $03
    inc b                                         ; $4887: $04
    inc sp                                        ; $4888: $33
    di                                            ; $4889: $F3
    ld b, $32                                     ; $488A: $06 $32
    ei                                            ; $488C: $FB
    ld [$0333], sp                                ; $488D: $08 $33 $03
    ld a, [bc]                                    ; $4890: $0A
    inc l                                         ; $4891: $2C
    db $EB                                        ; $4892: $EB
    inc c                                         ; $4893: $0C
    cpl                                           ; $4894: $2F
    dec bc                                        ; $4895: $0B
    ld c, $3C                                     ; $4896: $0E $3C
    db $EB                                        ; $4898: $EB
    db $10                                        ; $4899: $10
    ld sp, $12E3                                  ; $489A: $31 $E3 $12
    ld h, $13                                     ; $489D: $26 $13
    inc d                                         ; $489F: $14
    ccf                                           ; $48A0: $3F
    dec bc                                        ; $48A1: $0B
    ld d, $00                                     ; $48A2: $16 $00
    ld bc, $E000                                  ; $48A4: $01 $00 $E0
    ld h, h                                       ; $48A7: $64
    db $10                                        ; $48A8: $10
    xor l                                         ; $48A9: $AD
    ld c, b                                       ; $48AA: $48
    nop                                           ; $48AB: $00
    nop                                           ; $48AC: $00
    add hl, bc                                    ; $48AD: $09
    ld hl, $00F0                                  ; $48AE: $21 $F0 $00
    dec de                                        ; $48B1: $1B
    ld hl, sp+$02                                 ; $48B2: $F8 $02
    ld hl, $0400                                  ; $48B4: $21 $00 $04
    inc h                                         ; $48B7: $24
    ld [$3106], sp                                ; $48B8: $08 $06 $31
    ldh a, [$FF08]                                ; $48BB: $F0 $08
    dec hl                                        ; $48BD: $2B
    ld hl, sp+$0A                                 ; $48BE: $F8 $0A
    ld sp, $0C00                                  ; $48C0: $31 $00 $0C
    ld sp, $0EE8                                  ; $48C3: $31 $E8 $0E
    dec sp                                        ; $48C6: $3B
    ld [$0010], sp                                ; $48C7: $08 $10 $00
    ld bc, $2000                                  ; $48CA: $01 $00 $20
    ld e, [hl]                                    ; $48CD: $5E
    db $10                                        ; $48CE: $10
    db $D3                                        ; $48CF: $D3
    ld c, b                                       ; $48D0: $48
    ld [bc], a                                    ; $48D1: $02
    nop                                           ; $48D2: $00
    rlca                                          ; $48D3: $07
    rra                                           ; $48D4: $1F
    di                                            ; $48D5: $F3
    nop                                           ; $48D6: $00
    rrca                                          ; $48D7: $0F
    di                                            ; $48D8: $F3
    ld [bc], a                                    ; $48D9: $02
    dec [hl]                                      ; $48DA: $35
    di                                            ; $48DB: $F3
    inc b                                         ; $48DC: $04
    dec de                                        ; $48DD: $1B
    ei                                            ; $48DE: $FB
    ld b, $2B                                     ; $48DF: $06 $2B
    ei                                            ; $48E1: $FB
    ld [$0321], sp                                ; $48E2: $08 $21 $03
    ld a, [bc]                                    ; $48E5: $0A
    inc sp                                        ; $48E6: $33
    inc bc                                        ; $48E7: $03
    inc c                                         ; $48E8: $0C
    nop                                           ; $48E9: $00
    ld bc, $0000                                  ; $48EA: $01 $00 $00
    ld e, a                                       ; $48ED: $5F

jr_009_48EE:
    db $10                                        ; $48EE: $10
    di                                            ; $48EF: $F3
    ld c, b                                       ; $48F0: $48
    inc bc                                        ; $48F1: $03
    nop                                           ; $48F2: $00
    inc bc                                        ; $48F3: $03
    jr @-$11                                      ; $48F4: $18 $ED

    nop                                           ; $48F6: $00
    jr jr_009_48EE                                ; $48F7: $18 $F5

jr_009_48F9:
    ld [bc], a                                    ; $48F9: $02
    jr jr_009_48F9                                ; $48FA: $18 $FD

    inc b                                         ; $48FC: $04
    nop                                           ; $48FD: $00
    ld h, b                                       ; $48FE: $60
    ld e, a                                       ; $48FF: $5F

jr_009_4900:
    db $10                                        ; $4900: $10
    dec b                                         ; $4901: $05
    ld c, c                                       ; $4902: $49
    inc bc                                        ; $4903: $03
    nop                                           ; $4904: $00
    rlca                                          ; $4905: $07
    jr z, @-$11                                   ; $4906: $28 $ED

    nop                                           ; $4908: $00
    jr z, jr_009_4900                             ; $4909: $28 $F5

jr_009_490B:
    ld [bc], a                                    ; $490B: $02
    jr z, jr_009_490B                             ; $490C: $28 $FD

    inc b                                         ; $490E: $04
    jr z, @+$07                                   ; $490F: $28 $05

    ld b, $38                                     ; $4911: $06 $38
    rst RST_28                                    ; $4913: $EF
    ld [$FE38], sp                                ; $4914: $08 $38 $FE
    ld a, [bc]                                    ; $4917: $0A
    dec sp                                        ; $4918: $3B
    ld b, $0C                                     ; $4919: $06 $0C
    nop                                           ; $491B: $00
    ld bc, $4000                                  ; $491C: $01 $00 $40
    ld h, b                                       ; $491F: $60
    db $10                                        ; $4920: $10
    cpl                                           ; $4921: $2F
    ld c, c                                       ; $4922: $49
    inc bc                                        ; $4923: $03
    nop                                           ; $4924: $00
    jr nz, jr_009_4928                            ; $4925: $20 $01

    nop                                           ; $4927: $00

jr_009_4928:
    ld b, b                                       ; $4928: $40
    ld h, b                                       ; $4929: $60
    db $10                                        ; $492A: $10
    cpl                                           ; $492B: $2F
    ld c, c                                       ; $492C: $49
    db $FD                                        ; $492D: $FD
    nop                                           ; $492E: $00
    inc b                                         ; $492F: $04
    rla                                           ; $4930: $17
    db $EC                                        ; $4931: $EC
    nop                                           ; $4932: $00
    rla                                           ; $4933: $17
    db $F4                                        ; $4934: $F4
    ld [bc], a                                    ; $4935: $02
    rla                                           ; $4936: $17
    db $FC                                        ; $4937: $FC
    inc b                                         ; $4938: $04
    rla                                           ; $4939: $17
    inc b                                         ; $493A: $04
    ld b, $00                                     ; $493B: $06 $00
    ret nz                                        ; $493D: $C0

    ld h, b                                       ; $493E: $60
    db $10                                        ; $493F: $10
    ld b, h                                       ; $4940: $44
    ld c, c                                       ; $4941: $49
    inc bc                                        ; $4942: $03
    nop                                           ; $4943: $00
    rlca                                          ; $4944: $07
    inc hl                                        ; $4945: $23
    db $ED                                        ; $4946: $ED
    nop                                           ; $4947: $00
    ld [hl+], a                                   ; $4948: $22
    push af                                       ; $4949: $F5
    ld [bc], a                                    ; $494A: $02
    ld [hl+], a                                   ; $494B: $22
    db $FD                                        ; $494C: $FD
    inc b                                         ; $494D: $04
    inc [hl]                                      ; $494E: $34
    rst RST_28                                    ; $494F: $EF
    ld b, $32                                     ; $4950: $06 $32
    rst RST_30                                    ; $4952: $F7
    ld [$FF2D], sp                                ; $4953: $08 $2D $FF
    ld a, [bc]                                    ; $4956: $0A
    inc a                                         ; $4957: $3C
    inc b                                         ; $4958: $04
    inc c                                         ; $4959: $0C
    nop                                           ; $495A: $00
    ld bc, $8000                                  ; $495B: $01 $00 $80
    ld b, [hl]                                    ; $495E: $46
    db $10                                        ; $495F: $10
    ld h, h                                       ; $4960: $64
    ld c, c                                       ; $4961: $49
    rst RST_38                                    ; $4962: $FF
    nop                                           ; $4963: $00
    ld b, $21                                     ; $4964: $06 $21
    ei                                            ; $4966: $FB
    nop                                           ; $4967: $00
    ld hl, $0203                                  ; $4968: $21 $03 $02
    ld hl, $040B                                  ; $496B: $21 $0B $04
    ld sp, $06F8                                  ; $496E: $31 $F8 $06
    ld sp, $0800                                  ; $4971: $31 $00 $08
    ld sp, $0A08                                  ; $4974: $31 $08 $0A
    nop                                           ; $4977: $00
    ld bc, $4000                                  ; $4978: $01 $00 $40
    ld b, a                                       ; $497B: $47
    db $10                                        ; $497C: $10
    sbc a                                         ; $497D: $9F
    ld c, c                                       ; $497E: $49
    ld [bc], a                                    ; $497F: $02
    nop                                           ; $4980: $00
    jr nz, jr_009_4984                            ; $4981: $20 $01

    nop                                           ; $4983: $00

jr_009_4984:
    ld b, b                                       ; $4984: $40
    ld b, a                                       ; $4985: $47
    db $10                                        ; $4986: $10
    sbc a                                         ; $4987: $9F
    ld c, c                                       ; $4988: $49
    cp $00                                        ; $4989: $FE $00
    ld b, b                                       ; $498B: $40
    ld bc, $4000                                  ; $498C: $01 $00 $40
    ld b, a                                       ; $498F: $47
    db $10                                        ; $4990: $10
    sbc a                                         ; $4991: $9F
    ld c, c                                       ; $4992: $49
    ld [bc], a                                    ; $4993: $02
    inc b                                         ; $4994: $04
    ld h, b                                       ; $4995: $60
    ld bc, $4000                                  ; $4996: $01 $00 $40
    ld b, a                                       ; $4999: $47
    db $10                                        ; $499A: $10
    sbc a                                         ; $499B: $9F
    ld c, c                                       ; $499C: $49
    cp $04                                        ; $499D: $FE $04
    rlca                                          ; $499F: $07
    ld hl, $00F3                                  ; $49A0: $21 $F3 $00
    ld sp, $02F3                                  ; $49A3: $31 $F3 $02
    ld hl, $04FB                                  ; $49A6: $21 $FB $04
    ld sp, $06FB                                  ; $49A9: $31 $FB $06
    inc h                                         ; $49AC: $24
    inc bc                                        ; $49AD: $03
    ld [$0334], sp                                ; $49AE: $08 $34 $03
    ld a, [bc]                                    ; $49B1: $0A
    rra                                           ; $49B2: $1F
    dec bc                                        ; $49B3: $0B
    inc c                                         ; $49B4: $0C
    nop                                           ; $49B5: $00
    ld bc, $2000                                  ; $49B6: $01 $00 $20
    ld c, b                                       ; $49B9: $48
    db $10                                        ; $49BA: $10
    ret                                           ; $49BB: $C9


    ld c, c                                       ; $49BC: $49
    nop                                           ; $49BD: $00
    nop                                           ; $49BE: $00
    jr nz, jr_009_49C2                            ; $49BF: $20 $01

    nop                                           ; $49C1: $00

jr_009_49C2:
    jr nz, @+$4A                                  ; $49C2: $20 $48

    db $10                                        ; $49C4: $10
    ret                                           ; $49C5: $C9


    ld c, c                                       ; $49C6: $49
    inc bc                                        ; $49C7: $03
    nop                                           ; $49C8: $00
    ld b, $31                                     ; $49C9: $06 $31

jr_009_49CB:
    db $F4                                        ; $49CB: $F4
    nop                                           ; $49CC: $00
    jr c, jr_009_49CB                             ; $49CD: $38 $FC

    ld [bc], a                                    ; $49CF: $02
    dec [hl]                                      ; $49D0: $35
    inc b                                         ; $49D1: $04
    inc b                                         ; $49D2: $04
    dec h                                         ; $49D3: $25
    inc c                                         ; $49D4: $0C
    ld b, $28                                     ; $49D5: $06 $28
    db $FC                                        ; $49D7: $FC
    ld [$0425], sp                                ; $49D8: $08 $25 $04
    ld a, [bc]                                    ; $49DB: $0A
    nop                                           ; $49DC: $00
    ld bc, $E000                                  ; $49DD: $01 $00 $E0
    ld c, b                                       ; $49E0: $48
    db $10                                        ; $49E1: $10
    ldh a, [rOBP1]                                ; $49E2: $F0 $49
    ld a, [$600E]                                 ; $49E4: $FA $0E $60
    ld bc, $E000                                  ; $49E7: $01 $00 $E0
    ld c, b                                       ; $49EA: $48
    db $10                                        ; $49EB: $10
    ldh a, [rOBP1]                                ; $49EC: $F0 $49
    nop                                           ; $49EE: $00
    nop                                           ; $49EF: $00
    ld [$EF2D], sp                                ; $49F0: $08 $2D $EF
    nop                                           ; $49F3: $00
    ld h, $F7                                     ; $49F4: $26 $F7
    ld [bc], a                                    ; $49F6: $02
    ld hl, $04FF                                  ; $49F7: $21 $FF $04
    ld h, $07                                     ; $49FA: $26 $07
    ld b, $28                                     ; $49FC: $06 $28
    rrca                                          ; $49FE: $0F
    ld [$F736], sp                                ; $49FF: $08 $36 $F7
    ld a, [bc]                                    ; $4A02: $0A
    ld sp, $0CFF                                  ; $4A03: $31 $FF $0C
    ld [hl], $07                                  ; $4A06: $36 $07
    ld c, $00                                     ; $4A08: $0E $00
    ld bc, $E000                                  ; $4A0A: $01 $00 $E0
    ld c, c                                       ; $4A0D: $49
    db $10                                        ; $4A0E: $10
    inc de                                        ; $4A0F: $13
    ld c, d                                       ; $4A10: $4A
    ei                                            ; $4A11: $FB
    rst RST_38                                    ; $4A12: $FF
    ld b, $3C                                     ; $4A13: $06 $3C
    rst RST_28                                    ; $4A15: $EF
    nop                                           ; $4A16: $00
    scf                                           ; $4A17: $37
    rst RST_30                                    ; $4A18: $F7
    ld [bc], a                                    ; $4A19: $02
    ld [hl], $FE                                  ; $4A1A: $36 $FE
    inc b                                         ; $4A1C: $04
    ld [hl], $06                                  ; $4A1D: $36 $06
    ld b, $39                                     ; $4A1F: $06 $39
    ld c, $08                                     ; $4A21: $0E $08
    ld b, [hl]                                    ; $4A23: $46
    ld b, $0A                                     ; $4A24: $06 $0A
    nop                                           ; $4A26: $00
    ld bc, $0000                                  ; $4A27: $01 $00 $00

jr_009_4A2A:
    ld h, [hl]                                    ; $4A2A: $66
    db $10                                        ; $4A2B: $10
    jr nc, jr_009_4A78                            ; $4A2C: $30 $4A

    ldh a, [c]                                    ; $4A2E: $F2
    nop                                           ; $4A2F: $00
    dec b                                         ; $4A30: $05
    inc e                                         ; $4A31: $1C
    push hl                                       ; $4A32: $E5
    nop                                           ; $4A33: $00
    inc e                                         ; $4A34: $1C

jr_009_4A35:
    db $ED                                        ; $4A35: $ED
    ld [bc], a                                    ; $4A36: $02
    dec e                                         ; $4A37: $1D
    push af                                       ; $4A38: $F5
    inc b                                         ; $4A39: $04
    dec h                                         ; $4A3A: $25
    db $FD                                        ; $4A3B: $FD
    ld b, $3C                                     ; $4A3C: $06 $3C
    db $FD                                        ; $4A3E: $FD
    ld [$0100], sp                                ; $4A3F: $08 $00 $01
    nop                                           ; $4A42: $00
    and b                                         ; $4A43: $A0
    ld h, [hl]                                    ; $4A44: $66
    db $10                                        ; $4A45: $10
    ld c, d                                       ; $4A46: $4A
    ld c, d                                       ; $4A47: $4A
    ldh a, [c]                                    ; $4A48: $F2
    nop                                           ; $4A49: $00
    rlca                                          ; $4A4A: $07
    jr jr_009_4A2A                                ; $4A4B: $18 $DD

    nop                                           ; $4A4D: $00
    jr nz, jr_009_4A35                            ; $4A4E: $20 $E5

    ld [bc], a                                    ; $4A50: $02
    add hl, de                                    ; $4A51: $19
    db $ED                                        ; $4A52: $ED
    inc b                                         ; $4A53: $04
    inc h                                         ; $4A54: $24
    push af                                       ; $4A55: $F5
    ld b, $1C                                     ; $4A56: $06 $1C
    db $FD                                        ; $4A58: $FD
    ld [$FD3C], sp                                ; $4A59: $08 $3C $FD
    ld a, [bc]                                    ; $4A5C: $0A
    db $10                                        ; $4A5D: $10
    push hl                                       ; $4A5E: $E5
    inc c                                         ; $4A5F: $0C
    nop                                           ; $4A60: $00
    push af                                       ; $4A61: $F5
    nop                                           ; $4A62: $00
    add b                                         ; $4A63: $80
    ld h, a                                       ; $4A64: $67
    db $10                                        ; $4A65: $10
    ld [hl], h                                    ; $4A66: $74
    ld c, d                                       ; $4A67: $4A
    ld a, [$0000]                                 ; $4A68: $FA $00 $00
    ld bc, $8005                                  ; $4A6B: $01 $05 $80
    ld h, a                                       ; $4A6E: $67
    db $10                                        ; $4A6F: $10
    ld [hl], h                                    ; $4A70: $74
    ld c, d                                       ; $4A71: $4A
    ld a, [$0500]                                 ; $4A72: $FA $00 $05
    add hl, de                                    ; $4A75: $19
    push hl                                       ; $4A76: $E5
    nop                                           ; $4A77: $00

jr_009_4A78:
    dec e                                         ; $4A78: $1D
    db $ED                                        ; $4A79: $ED
    ld [bc], a                                    ; $4A7A: $02
    dec e                                         ; $4A7B: $1D
    push af                                       ; $4A7C: $F5
    inc b                                         ; $4A7D: $04
    dec h                                         ; $4A7E: $25
    db $DD                                        ; $4A7F: $DD
    ld b, $3C                                     ; $4A80: $06 $3C
    push af                                       ; $4A82: $F5
    ld [$2000], sp                                ; $4A83: $08 $00 $20
    ld l, b                                       ; $4A86: $68
    db $10                                        ; $4A87: $10
    adc h                                         ; $4A88: $8C
    ld c, d                                       ; $4A89: $4A
    ld a, [$0600]                                 ; $4A8A: $FA $00 $06
    ld hl, $00FD                                  ; $4A8D: $21 $FD $00
    ld hl, $0205                                  ; $4A90: $21 $05 $02
    ld h, $0D                                     ; $4A93: $26 $0D
    inc b                                         ; $4A95: $04
    ld sp, $06FD                                  ; $4A96: $31 $FD $06
    ld sp, $0805                                  ; $4A99: $31 $05 $08
    ld [hl], $0D                                  ; $4A9C: $36 $0D
    ld a, [bc]                                    ; $4A9E: $0A
    nop                                           ; $4A9F: $00
    cp e                                          ; $4AA0: $BB
    nop                                           ; $4AA1: $00
    ldh [rBCPS], a                                ; $4AA2: $E0 $68
    db $10                                        ; $4AA4: $10
    xor c                                         ; $4AA5: $A9
    ld c, d                                       ; $4AA6: $4A
    ld a, [$0900]                                 ; $4AA7: $FA $00 $09
    add hl, de                                    ; $4AAA: $19
    db $E4                                        ; $4AAB: $E4
    nop                                           ; $4AAC: $00
    dec e                                         ; $4AAD: $1D
    db $EC                                        ; $4AAE: $EC
    ld [bc], a                                    ; $4AAF: $02
    dec e                                         ; $4AB0: $1D
    db $F4                                        ; $4AB1: $F4
    inc b                                         ; $4AB2: $04
    dec e                                         ; $4AB3: $1D
    db $FC                                        ; $4AB4: $FC
    ld b, $21                                     ; $4AB5: $06 $21
    inc b                                         ; $4AB7: $04
    ld [$0C21], sp                                ; $4AB8: $08 $21 $0C
    ld a, [bc]                                    ; $4ABB: $0A
    dec [hl]                                      ; $4ABC: $35
    ei                                            ; $4ABD: $FB
    inc c                                         ; $4ABE: $0C
    ld sp, $0E03                                  ; $4ABF: $31 $03 $0E

jr_009_4AC2:
    ld sp, $100B                                  ; $4AC2: $31 $0B $10
    nop                                           ; $4AC5: $00
    ld bc, $0000                                  ; $4AC6: $01 $00 $00
    ld l, d                                       ; $4AC9: $6A
    db $10                                        ; $4ACA: $10
    rst RST_08                                    ; $4ACB: $CF
    ld c, d                                       ; $4ACC: $4A
    ld a, [$0400]                                 ; $4ACD: $FA $00 $04
    inc e                                         ; $4AD0: $1C
    push af                                       ; $4AD1: $F5
    nop                                           ; $4AD2: $00
    jr jr_009_4AC2                                ; $4AD3: $18 $ED

    ld [bc], a                                    ; $4AD5: $02
    dec bc                                        ; $4AD6: $0B
    and $04                                       ; $4AD7: $E6 $04
    inc a                                         ; $4AD9: $3C
    push af                                       ; $4ADA: $F5
    ld b, $00                                     ; $4ADB: $06 $00
    cp e                                          ; $4ADD: $BB
    nop                                           ; $4ADE: $00
    add b                                         ; $4ADF: $80
    ld l, d                                       ; $4AE0: $6A
    db $10                                        ; $4AE1: $10
    and $4A                                       ; $4AE2: $E6 $4A
    db $FC                                        ; $4AE4: $FC
    nop                                           ; $4AE5: $00
    ld a, [bc]                                    ; $4AE6: $0A
    inc e                                         ; $4AE7: $1C

jr_009_4AE8:
    db $FD                                        ; $4AE8: $FD
    nop                                           ; $4AE9: $00
    inc l                                         ; $4AEA: $2C

jr_009_4AEB:
    db $FD                                        ; $4AEB: $FD
    ld [bc], a                                    ; $4AEC: $02
    inc a                                         ; $4AED: $3C
    db $FC                                        ; $4AEE: $FC
    inc b                                         ; $4AEF: $04
    add hl, bc                                    ; $4AF0: $09
    ldh a, [c]                                    ; $4AF1: $F2
    ld b, $19                                     ; $4AF2: $06 $19
    push af                                       ; $4AF4: $F5
    ld [$F529], sp                                ; $4AF5: $08 $29 $F5
    ld a, [bc]                                    ; $4AF8: $0A
    jr jr_009_4AE8                                ; $4AF9: $18 $ED

    inc c                                         ; $4AFB: $0C
    jr z, jr_009_4AEB                             ; $4AFC: $28 $ED

    ld c, $38                                     ; $4AFE: $0E $38
    db $ED                                        ; $4B00: $ED
    db $10                                        ; $4B01: $10
    inc h                                         ; $4B02: $24
    push hl                                       ; $4B03: $E5
    ld [de], a                                    ; $4B04: $12
    nop                                           ; $4B05: $00
    ret nz                                        ; $4B06: $C0

    ld l, e                                       ; $4B07: $6B
    db $10                                        ; $4B08: $10
    dec c                                         ; $4B09: $0D
    ld c, e                                       ; $4B0A: $4B
    db $FC                                        ; $4B0B: $FC
    nop                                           ; $4B0C: $00
    inc b                                         ; $4B0D: $04
    inc h                                         ; $4B0E: $24
    dec b                                         ; $4B0F: $05
    nop                                           ; $4B10: $00
    inc [hl]                                      ; $4B11: $34
    dec b                                         ; $4B12: $05
    ld [bc], a                                    ; $4B13: $02
    dec hl                                        ; $4B14: $2B
    dec c                                         ; $4B15: $0D
    inc b                                         ; $4B16: $04
    dec sp                                        ; $4B17: $3B
    dec c                                         ; $4B18: $0D
    ld b, $00                                     ; $4B19: $06 $00
    ld bc, $4000                                  ; $4B1B: $01 $00 $40
    ld l, h                                       ; $4B1E: $6C
    db $10                                        ; $4B1F: $10
    inc h                                         ; $4B20: $24
    ld c, e                                       ; $4B21: $4B
    db $FC                                        ; $4B22: $FC
    nop                                           ; $4B23: $00
    ld b, $1C                                     ; $4B24: $06 $1C
    db $FD                                        ; $4B26: $FD
    nop                                           ; $4B27: $00
    inc l                                         ; $4B28: $2C
    db $FD                                        ; $4B29: $FD
    ld [bc], a                                    ; $4B2A: $02
    inc a                                         ; $4B2B: $3C
    ei                                            ; $4B2C: $FB
    inc b                                         ; $4B2D: $04
    add hl, de                                    ; $4B2E: $19
    push af                                       ; $4B2F: $F5
    ld b, $29                                     ; $4B30: $06 $29
    push af                                       ; $4B32: $F5
    ld [$F009], sp                                ; $4B33: $08 $09 $F0
    ld a, [bc]                                    ; $4B36: $0A
    nop                                           ; $4B37: $00
    ld bc, $0000                                  ; $4B38: $01 $00 $00
    ld l, l                                       ; $4B3B: $6D
    db $10                                        ; $4B3C: $10
    ld b, c                                       ; $4B3D: $41
    ld c, e                                       ; $4B3E: $4B
    db $FC                                        ; $4B3F: $FC
    nop                                           ; $4B40: $00
    ld [$F515], sp                                ; $4B41: $08 $15 $F5
    nop                                           ; $4B44: $00
    inc e                                         ; $4B45: $1C
    db $FD                                        ; $4B46: $FD
    ld [bc], a                                    ; $4B47: $02
    inc h                                         ; $4B48: $24
    dec b                                         ; $4B49: $05
    inc b                                         ; $4B4A: $04
    add hl, hl                                    ; $4B4B: $29
    dec c                                         ; $4B4C: $0D
    ld b, $2C                                     ; $4B4D: $06 $2C
    db $FD                                        ; $4B4F: $FD
    ld [$0534], sp                                ; $4B50: $08 $34 $05
    ld a, [bc]                                    ; $4B53: $0A
    add hl, sp                                    ; $4B54: $39
    dec c                                         ; $4B55: $0D
    inc c                                         ; $4B56: $0C
    inc a                                         ; $4B57: $3C
    db $FC                                        ; $4B58: $FC
    ld c, $00                                     ; $4B59: $0E $00
    ld bc, $0000                                  ; $4B5B: $01 $00 $00
    ld l, [hl]                                    ; $4B5E: $6E
    db $10                                        ; $4B5F: $10
    ld h, h                                       ; $4B60: $64
    ld c, e                                       ; $4B61: $4B
    ld sp, hl                                     ; $4B62: $F9
    dec bc                                        ; $4B63: $0B
    inc b                                         ; $4B64: $04

jr_009_4B65:
    db $10                                        ; $4B65: $10
    di                                            ; $4B66: $F3
    nop                                           ; $4B67: $00
    db $10                                        ; $4B68: $10
    ei                                            ; $4B69: $FB
    ld [bc], a                                    ; $4B6A: $02
    db $10                                        ; $4B6B: $10
    inc bc                                        ; $4B6C: $03
    inc b                                         ; $4B6D: $04
    db $10                                        ; $4B6E: $10
    dec bc                                        ; $4B6F: $0B

jr_009_4B70:
    ld b, $00                                     ; $4B70: $06 $00
    add b                                         ; $4B72: $80
    ld l, [hl]                                    ; $4B73: $6E
    db $10                                        ; $4B74: $10
    ld a, c                                       ; $4B75: $79
    ld c, e                                       ; $4B76: $4B
    ld sp, hl                                     ; $4B77: $F9
    dec bc                                        ; $4B78: $0B
    add hl, bc                                    ; $4B79: $09
    jr nz, jr_009_4B65                            ; $4B7A: $20 $E9

    nop                                           ; $4B7C: $00
    jr nz, jr_009_4B70                            ; $4B7D: $20 $F1

    ld [bc], a                                    ; $4B7F: $02
    jr nz, @-$05                                  ; $4B80: $20 $F9

    inc b                                         ; $4B82: $04
    jr nz, @+$03                                  ; $4B83: $20 $01

    ld b, $20                                     ; $4B85: $06 $20

jr_009_4B87:
    add hl, bc                                    ; $4B87: $09
    ld [$F130], sp                                ; $4B88: $08 $30 $F1
    ld a, [bc]                                    ; $4B8B: $0A
    jr nc, jr_009_4B87                            ; $4B8C: $30 $F9

    inc c                                         ; $4B8E: $0C
    jr nc, @+$03                                  ; $4B8F: $30 $01

    ld c, $23                                     ; $4B91: $0E $23
    pop hl                                        ; $4B93: $E1
    stop                                          ; $4B94: $10 $00
    and b                                         ; $4B96: $A0
    ld l, a                                       ; $4B97: $6F

jr_009_4B98:
    db $10                                        ; $4B98: $10
    sbc l                                         ; $4B99: $9D
    ld c, e                                       ; $4B9A: $4B
    ld sp, hl                                     ; $4B9B: $F9
    dec bc                                        ; $4B9C: $0B
    ld b, $20                                     ; $4B9D: $06 $20
    db $ED                                        ; $4B9F: $ED
    nop                                           ; $4BA0: $00
    jr nz, jr_009_4B98                            ; $4BA1: $20 $F5

    ld [bc], a                                    ; $4BA3: $02
    jr nz, jr_009_4BA9                            ; $4BA4: $20 $03

    inc b                                         ; $4BA6: $04
    jr nz, jr_009_4BB4                            ; $4BA7: $20 $0B

jr_009_4BA9:
    ld b, $28                                     ; $4BA9: $06 $28
    push hl                                       ; $4BAB: $E5
    ld [$0430], sp                                ; $4BAC: $08 $30 $04
    ld a, [bc]                                    ; $4BAF: $0A
    nop                                           ; $4BB0: $00
    ld bc, $6000                                  ; $4BB1: $01 $00 $60

jr_009_4BB4:
    ld [hl], b                                    ; $4BB4: $70
    db $10                                        ; $4BB5: $10
    cp d                                          ; $4BB6: $BA
    ld c, e                                       ; $4BB7: $4B
    ld hl, sp+$04                                 ; $4BB8: $F8 $04
    ld [$F410], sp                                ; $4BBA: $08 $10 $F4
    nop                                           ; $4BBD: $00
    rla                                           ; $4BBE: $17
    db $FC                                        ; $4BBF: $FC
    ld [bc], a                                    ; $4BC0: $02
    rla                                           ; $4BC1: $17
    inc b                                         ; $4BC2: $04
    inc b                                         ; $4BC3: $04
    jr jr_009_4BD2                                ; $4BC4: $18 $0C

    ld b, $27                                     ; $4BC6: $06 $27
    inc b                                         ; $4BC8: $04
    ld [$0C29], sp                                ; $4BC9: $08 $29 $0C
    ld a, [bc]                                    ; $4BCC: $0A
    scf                                           ; $4BCD: $37
    inc b                                         ; $4BCE: $04
    inc c                                         ; $4BCF: $0C
    inc bc                                        ; $4BD0: $03
    db $EC                                        ; $4BD1: $EC

jr_009_4BD2:
    ld c, $00                                     ; $4BD2: $0E $00
    ld bc, $604E                                  ; $4BD4: $01 $4E $60
    ld [hl], c                                    ; $4BD7: $71
    db $10                                        ; $4BD8: $10
    db $DD                                        ; $4BD9: $DD
    ld c, e                                       ; $4BDA: $4B
    db $FC                                        ; $4BDB: $FC
    inc bc                                        ; $4BDC: $03
    ld a, [bc]                                    ; $4BDD: $0A
    ld e, $F5                                     ; $4BDE: $1E $F5
    nop                                           ; $4BE0: $00
    ld a, [de]                                    ; $4BE1: $1A
    db $FD                                        ; $4BE2: $FD
    ld [bc], a                                    ; $4BE3: $02
    dec e                                         ; $4BE4: $1D
    dec b                                         ; $4BE5: $05
    inc b                                         ; $4BE6: $04
    add hl, de                                    ; $4BE7: $19
    dec c                                         ; $4BE8: $0D
    ld b, $2A                                     ; $4BE9: $06 $2A
    db $FD                                        ; $4BEB: $FD
    ld [$052D], sp                                ; $4BEC: $08 $2D $05
    ld a, [bc]                                    ; $4BEF: $0A
    add hl, hl                                    ; $4BF0: $29
    dec c                                         ; $4BF1: $0D
    inc c                                         ; $4BF2: $0C
    ld [hl], $F8                                  ; $4BF3: $36 $F8
    ld c, $3A                                     ; $4BF5: $0E $3A
    nop                                           ; $4BF7: $00
    db $10                                        ; $4BF8: $10
    daa                                           ; $4BF9: $27
    pop af                                        ; $4BFA: $F1
    ld [de], a                                    ; $4BFB: $12
    nop                                           ; $4BFC: $00
    ld bc, $A04E                                  ; $4BFD: $01 $4E $A0
    ld [hl], d                                    ; $4C00: $72
    db $10                                        ; $4C01: $10
    ld b, $4C                                     ; $4C02: $06 $4C
    db $FC                                        ; $4C04: $FC
    inc bc                                        ; $4C05: $03
    dec c                                         ; $4C06: $0D
    add hl, bc                                    ; $4C07: $09

jr_009_4C08:
    xor $00                                       ; $4C08: $EE $00
    ld a, [de]                                    ; $4C0A: $1A
    xor $02                                       ; $4C0B: $EE $02
    db $10                                        ; $4C0D: $10
    or $04                                        ; $4C0E: $F6 $04
    jr nz, jr_009_4C08                            ; $4C10: $20 $F6

    ld b, $10                                     ; $4C12: $06 $10
    cp $08                                        ; $4C14: $FE $08

jr_009_4C16:
    jr nz, jr_009_4C16                            ; $4C16: $20 $FE

    ld a, [bc]                                    ; $4C18: $0A
    ld de, $0C06                                  ; $4C19: $11 $06 $0C
    ld hl, $0E06                                  ; $4C1C: $21 $06 $0E
    inc e                                         ; $4C1F: $1C
    ld c, $10                                     ; $4C20: $0E $10
    jr nc, @-$08                                  ; $4C22: $30 $F6

    ld [de], a                                    ; $4C24: $12

jr_009_4C25:
    jr nc, jr_009_4C25                            ; $4C25: $30 $FE

    inc d                                         ; $4C27: $14
    ld sp, $1606                                  ; $4C28: $31 $06 $16
    inc c                                         ; $4C2B: $0C
    ld c, $18                                     ; $4C2C: $0E $18
    nop                                           ; $4C2E: $00
    ld bc, $404F                                  ; $4C2F: $01 $4F $40
    ld [hl], h                                    ; $4C32: $74
    db $10                                        ; $4C33: $10
    jr c, jr_009_4C82                             ; $4C34: $38 $4C

    db $FC                                        ; $4C36: $FC
    inc bc                                        ; $4C37: $03
    inc c                                         ; $4C38: $0C
    ld [hl+], a                                   ; $4C39: $22
    jp hl                                         ; $4C3A: $E9


    nop                                           ; $4C3B: $00
    ld [de], a                                    ; $4C3C: $12
    jp hl                                         ; $4C3D: $E9


    ld [bc], a                                    ; $4C3E: $02
    inc d                                         ; $4C3F: $14
    pop af                                        ; $4C40: $F1
    inc b                                         ; $4C41: $04
    inc b                                         ; $4C42: $04
    pop af                                        ; $4C43: $F1
    ld b, $09                                     ; $4C44: $06 $09
    ld sp, hl                                     ; $4C46: $F9
    ld [$0106], sp                                ; $4C47: $08 $06 $01
    ld a, [bc]                                    ; $4C4A: $0A
    daa                                           ; $4C4B: $27
    rst RST_28                                    ; $4C4C: $EF
    inc c                                         ; $4C4D: $0C
    rla                                           ; $4C4E: $17
    ld a, [$270E]                                 ; $4C4F: $FA $0E $27
    rst RST_30                                    ; $4C52: $F7
    db $10                                        ; $4C53: $10
    rla                                           ; $4C54: $17
    ld [bc], a                                    ; $4C55: $02
    ld [de], a                                    ; $4C56: $12
    daa                                           ; $4C57: $27
    rst RST_38                                    ; $4C58: $FF
    inc d                                         ; $4C59: $14
    ld [hl+], a                                   ; $4C5A: $22
    rlca                                          ; $4C5B: $07
    ld d, $00                                     ; $4C5C: $16 $00
    ld bc, $C04F                                  ; $4C5E: $01 $4F $C0
    ld [hl], l                                    ; $4C61: $75
    db $10                                        ; $4C62: $10
    ld h, a                                       ; $4C63: $67
    ld c, h                                       ; $4C64: $4C
    db $FC                                        ; $4C65: $FC
    inc bc                                        ; $4C66: $03
    dec c                                         ; $4C67: $0D
    ld [hl+], a                                   ; $4C68: $22
    push hl                                       ; $4C69: $E5
    nop                                           ; $4C6A: $00
    ld [hl-], a                                   ; $4C6B: $32
    push hl                                       ; $4C6C: $E5
    ld [bc], a                                    ; $4C6D: $02
    ld [hl+], a                                   ; $4C6E: $22
    db $ED                                        ; $4C6F: $ED
    inc b                                         ; $4C70: $04
    ld [hl-], a                                   ; $4C71: $32
    db $ED                                        ; $4C72: $ED
    ld b, $1F                                     ; $4C73: $06 $1F
    push af                                       ; $4C75: $F5
    ld [$F536], sp                                ; $4C76: $08 $36 $F5
    ld a, [bc]                                    ; $4C79: $0A
    ld a, [de]                                    ; $4C7A: $1A
    db $FC                                        ; $4C7B: $FC
    inc c                                         ; $4C7C: $0C
    ld a, [hl+]                                   ; $4C7D: $2A
    db $FD                                        ; $4C7E: $FD
    ld c, $3A                                     ; $4C7F: $0E $3A
    db $FD                                        ; $4C81: $FD

jr_009_4C82:
    db $10                                        ; $4C82: $10
    ld a, [de]                                    ; $4C83: $1A
    inc b                                         ; $4C84: $04
    ld [de], a                                    ; $4C85: $12
    ld a, [hl+]                                   ; $4C86: $2A
    dec b                                         ; $4C87: $05
    inc d                                         ; $4C88: $14
    ld a, [hl-]                                   ; $4C89: $3A
    dec b                                         ; $4C8A: $05
    ld d, $2A                                     ; $4C8B: $16 $2A
    dec c                                         ; $4C8D: $0D
    jr jr_009_4C90                                ; $4C8E: $18 $00

jr_009_4C90:
    ld bc, $6000                                  ; $4C90: $01 $00 $60
    ld [hl], a                                    ; $4C93: $77
    db $10                                        ; $4C94: $10
    sbc c                                         ; $4C95: $99
    ld c, h                                       ; $4C96: $4C
    ld sp, hl                                     ; $4C97: $F9
    nop                                           ; $4C98: $00
    ld [$F529], sp                                ; $4C99: $08 $29 $F5
    nop                                           ; $4C9C: $00
    add hl, de                                    ; $4C9D: $19
    push af                                       ; $4C9E: $F5
    ld [bc], a                                    ; $4C9F: $02
    ld hl, $04FD                                  ; $4CA0: $21 $FD $04
    ld sp, $06FD                                  ; $4CA3: $31 $FD $06
    inc hl                                        ; $4CA6: $23
    dec b                                         ; $4CA7: $05
    ld [$0533], sp                                ; $4CA8: $08 $33 $05
    ld a, [bc]                                    ; $4CAB: $0A
    dec hl                                        ; $4CAC: $2B
    dec c                                         ; $4CAD: $0D
    inc c                                         ; $4CAE: $0C
    dec sp                                        ; $4CAF: $3B
    dec c                                         ; $4CB0: $0D
    ld c, $00                                     ; $4CB1: $0E $00
    ld bc, $6000                                  ; $4CB3: $01 $00 $60
    ld a, b                                       ; $4CB6: $78
    db $10                                        ; $4CB7: $10
    cp h                                          ; $4CB8: $BC
    ld c, h                                       ; $4CB9: $4C
    ld [$070D], sp                                ; $4CBA: $08 $0D $07
    dec b                                         ; $4CBD: $05
    db $ED                                        ; $4CBE: $ED
    nop                                           ; $4CBF: $00
    dec d                                         ; $4CC0: $15
    db $ED                                        ; $4CC1: $ED
    ld [bc], a                                    ; $4CC2: $02
    dec h                                         ; $4CC3: $25
    db $ED                                        ; $4CC4: $ED
    inc b                                         ; $4CC5: $04
    dec bc                                        ; $4CC6: $0B
    push af                                       ; $4CC7: $F5
    ld b, $1B                                     ; $4CC8: $06 $1B
    push af                                       ; $4CCA: $F5
    ld [$FD15], sp                                ; $4CCB: $08 $15 $FD
    ld a, [bc]                                    ; $4CCE: $0A
    dec h                                         ; $4CCF: $25
    ld a, [$000C]                                 ; $4CD0: $FA $0C $00
    ld bc, $4000                                  ; $4CD3: $01 $00 $40
    ld a, c                                       ; $4CD6: $79
    db $10                                        ; $4CD7: $10
    call c, Call_000_004C                         ; $4CD8: $DC $4C $00
    ld c, $03                                     ; $4CDB: $0E $03
    jr nz, @-$09                                  ; $4CDD: $20 $F5

jr_009_4CDF:
    nop                                           ; $4CDF: $00
    jr nz, jr_009_4CDF                            ; $4CE0: $20 $FD

    ld [bc], a                                    ; $4CE2: $02
    jr nc, @-$09                                  ; $4CE3: $30 $F5

    inc b                                         ; $4CE5: $04
    nop                                           ; $4CE6: $00
    ld bc, $A000                                  ; $4CE7: $01 $00 $A0
    ld a, c                                       ; $4CEA: $79
    db $10                                        ; $4CEB: $10
    ldh a, [$FF4C]                                ; $4CEC: $F0 $4C
    cp $0F                                        ; $4CEE: $FE $0F
    rlca                                          ; $4CF0: $07
    add hl, de                                    ; $4CF1: $19
    push af                                       ; $4CF2: $F5
    nop                                           ; $4CF3: $00
    add hl, hl                                    ; $4CF4: $29
    push af                                       ; $4CF5: $F5
    ld [bc], a                                    ; $4CF6: $02
    add hl, bc                                    ; $4CF7: $09
    db $FD                                        ; $4CF8: $FD
    inc b                                         ; $4CF9: $04
    add hl, de                                    ; $4CFA: $19
    db $FD                                        ; $4CFB: $FD
    ld b, $0C                                     ; $4CFC: $06 $0C
    dec b                                         ; $4CFE: $05
    ld [$051C], sp                                ; $4CFF: $08 $1C $05
    ld a, [bc]                                    ; $4D02: $0A
    dec c                                         ; $4D03: $0D
    dec c                                         ; $4D04: $0D
    inc c                                         ; $4D05: $0C
    nop                                           ; $4D06: $00
    add b                                         ; $4D07: $80
    ld a, d                                       ; $4D08: $7A
    db $10                                        ; $4D09: $10
    ld d, $4D                                     ; $4D0A: $16 $4D
    ld [de], a                                    ; $4D0C: $12
    ei                                            ; $4D0D: $FB
    jr nz, jr_009_4C90                            ; $4D0E: $20 $80

    ld a, d                                       ; $4D10: $7A
    db $10                                        ; $4D11: $10
    ld d, $4D                                     ; $4D12: $16 $4D
    add hl, bc                                    ; $4D14: $09
    db $FD                                        ; $4D15: $FD
    inc b                                         ; $4D16: $04
    ld d, $EC                                     ; $4D17: $16 $EC
    nop                                           ; $4D19: $00
    ld d, $F4                                     ; $4D1A: $16 $F4
    ld [bc], a                                    ; $4D1C: $02
    ld [de], a                                    ; $4D1D: $12
    db $FC                                        ; $4D1E: $FC
    inc b                                         ; $4D1F: $04
    ld [de], a                                    ; $4D20: $12
    inc b                                         ; $4D21: $04
    ld b, $00                                     ; $4D22: $06 $00
    ld bc, $0000                                  ; $4D24: $01 $00 $00
    ld a, e                                       ; $4D27: $7B
    db $10                                        ; $4D28: $10
    scf                                           ; $4D29: $37
    ld c, l                                       ; $4D2A: $4D
    ld c, $FB                                     ; $4D2B: $0E $FB
    jr nz, jr_009_4D30                            ; $4D2D: $20 $01

    nop                                           ; $4D2F: $00

jr_009_4D30:
    nop                                           ; $4D30: $00
    ld a, e                                       ; $4D31: $7B
    db $10                                        ; $4D32: $10
    scf                                           ; $4D33: $37
    ld c, l                                       ; $4D34: $4D
    ld [bc], a                                    ; $4D35: $02
    db $FD                                        ; $4D36: $FD
    inc b                                         ; $4D37: $04
    ld d, $EC                                     ; $4D38: $16 $EC
    nop                                           ; $4D3A: $00
    ld d, $F4                                     ; $4D3B: $16 $F4
    ld [bc], a                                    ; $4D3D: $02
    ld [de], a                                    ; $4D3E: $12
    db $FC                                        ; $4D3F: $FC
    inc b                                         ; $4D40: $04
    ld [de], a                                    ; $4D41: $12
    inc b                                         ; $4D42: $04
    ld b, $92                                     ; $4D43: $06 $92
    ld d, b                                       ; $4D45: $50
    rst RST_38                                    ; $4D46: $FF
    rst RST_38                                    ; $4D47: $FF
    or l                                          ; $4D48: $B5
    ld d, b                                       ; $4D49: $50
    rst RST_38                                    ; $4D4A: $FF
    rst RST_38                                    ; $4D4B: $FF
    sub d                                         ; $4D4C: $92
    ld d, b                                       ; $4D4D: $50
    rst RST_38                                    ; $4D4E: $FF
    rst RST_38                                    ; $4D4F: $FF
    ret c                                         ; $4D50: $D8

    ld d, b                                       ; $4D51: $50
    rst RST_38                                    ; $4D52: $FF
    rst RST_38                                    ; $4D53: $FF
    rst RST_38                                    ; $4D54: $FF
    rst RST_38                                    ; $4D55: $FF
    ei                                            ; $4D56: $FB
    ld d, b                                       ; $4D57: $50
    rst RST_38                                    ; $4D58: $FF
    rst RST_38                                    ; $4D59: $FF
    ld e, $51                                     ; $4D5A: $1E $51
    rst RST_38                                    ; $4D5C: $FF
    rst RST_38                                    ; $4D5D: $FF
    ld a, $51                                     ; $4D5E: $3E $51
    rst RST_38                                    ; $4D60: $FF
    rst RST_38                                    ; $4D61: $FF
    ld e, $51                                     ; $4D62: $1E $51
    rst RST_38                                    ; $4D64: $FF
    rst RST_38                                    ; $4D65: $FF
    rst RST_38                                    ; $4D66: $FF
    rst RST_38                                    ; $4D67: $FF
    ld e, $51                                     ; $4D68: $1E $51
    rst RST_38                                    ; $4D6A: $FF
    rst RST_38                                    ; $4D6B: $FF
    ld a, $51                                     ; $4D6C: $3E $51
    rst RST_38                                    ; $4D6E: $FF
    rst RST_38                                    ; $4D6F: $FF
    ld e, $51                                     ; $4D70: $1E $51
    rst RST_38                                    ; $4D72: $FF
    rst RST_38                                    ; $4D73: $FF
    ei                                            ; $4D74: $FB
    ld d, b                                       ; $4D75: $50
    rst RST_38                                    ; $4D76: $FF
    rst RST_38                                    ; $4D77: $FF
    rst RST_38                                    ; $4D78: $FF
    rst RST_38                                    ; $4D79: $FF
    ld h, c                                       ; $4D7A: $61
    ld d, c                                       ; $4D7B: $51
    adc c                                         ; $4D7C: $89
    ld d, c                                       ; $4D7D: $51
    rst RST_38                                    ; $4D7E: $FF
    rst RST_38                                    ; $4D7F: $FF
    ld h, c                                       ; $4D80: $61
    ld d, c                                       ; $4D81: $51
    adc c                                         ; $4D82: $89
    ld d, c                                       ; $4D83: $51
    xor e                                         ; $4D84: $AB
    ld d, c                                       ; $4D85: $51
    rst RST_30                                    ; $4D86: $F7
    ld d, c                                       ; $4D87: $51
    xor e                                         ; $4D88: $AB
    ld d, c                                       ; $4D89: $51
    rst RST_30                                    ; $4D8A: $F7
    ld d, c                                       ; $4D8B: $51
    jp nc, Jump_000_1353                          ; $4D8C: $D2 $53 $13

    ld d, h                                       ; $4D8F: $54
    jp nc, Jump_000_1353                          ; $4D90: $D2 $53 $13

    ld d, h                                       ; $4D93: $54
    ld hl, $4952                                  ; $4D94: $21 $52 $49
    ld d, d                                       ; $4D97: $52
    ld hl, $4952                                  ; $4D98: $21 $52 $49
    ld d, d                                       ; $4D9B: $52
    ld h, c                                       ; $4D9C: $61
    ld d, c                                       ; $4D9D: $51
    adc c                                         ; $4D9E: $89
    ld d, c                                       ; $4D9F: $51
    rst RST_38                                    ; $4DA0: $FF
    rst RST_38                                    ; $4DA1: $FF
    ld h, c                                       ; $4DA2: $61
    ld d, c                                       ; $4DA3: $51
    adc c                                         ; $4DA4: $89
    ld d, c                                       ; $4DA5: $51
    ld l, h                                       ; $4DA6: $6C
    ld d, d                                       ; $4DA7: $52
    rst RST_38                                    ; $4DA8: $FF
    rst RST_38                                    ; $4DA9: $FF
    sub [hl]                                      ; $4DAA: $96
    ld d, d                                       ; $4DAB: $52
    rst RST_38                                    ; $4DAC: $FF
    rst RST_38                                    ; $4DAD: $FF
    call nc, $FF52                                ; $4DAE: $D4 $52 $FF
    rst RST_38                                    ; $4DB1: $FF
    xor d                                         ; $4DB2: $AA
    ld d, d                                       ; $4DB3: $52
    rst RST_38                                    ; $4DB4: $FF
    rst RST_38                                    ; $4DB5: $FF
    add sp, $52                                   ; $4DB6: $E8 $52
    rst RST_38                                    ; $4DB8: $FF
    rst RST_38                                    ; $4DB9: $FF
    ld hl, $4952                                  ; $4DBA: $21 $52 $49
    ld d, d                                       ; $4DBD: $52
    ld h, c                                       ; $4DBE: $61
    ld d, c                                       ; $4DBF: $51
    adc c                                         ; $4DC0: $89
    ld d, c                                       ; $4DC1: $51
    rst RST_38                                    ; $4DC2: $FF
    rst RST_38                                    ; $4DC3: $FF
    ld hl, $4952                                  ; $4DC4: $21 $52 $49
    ld d, d                                       ; $4DC7: $52
    ld h, c                                       ; $4DC8: $61
    ld d, c                                       ; $4DC9: $51
    adc c                                         ; $4DCA: $89
    ld d, c                                       ; $4DCB: $51
    rst RST_38                                    ; $4DCC: $FF
    rst RST_38                                    ; $4DCD: $FF
    ld a, [hl-]                                   ; $4DCE: $3A
    ld d, e                                       ; $4DCF: $53
    rst RST_38                                    ; $4DD0: $FF
    rst RST_38                                    ; $4DD1: $FF
    cp a                                          ; $4DD2: $BF
    ld d, c                                       ; $4DD3: $51
    rst RST_38                                    ; $4DD4: $FF
    ld d, c                                       ; $4DD5: $51
    cp a                                          ; $4DD6: $BF
    ld d, c                                       ; $4DD7: $51
    rst RST_38                                    ; $4DD8: $FF
    ld d, c                                       ; $4DD9: $51
    call c, Call_000_1B53                         ; $4DDA: $DC $53 $1B
    ld d, h                                       ; $4DDD: $54
    sbc b                                         ; $4DDE: $98
    ld d, e                                       ; $4DDF: $53
    rst RST_38                                    ; $4DE0: $FF
    rst RST_38                                    ; $4DE1: $FF
    rla                                           ; $4DE2: $17
    ld d, l                                       ; $4DE3: $55
    ld c, d                                       ; $4DE4: $4A
    ld d, l                                       ; $4DE5: $55
    ld hl, $4952                                  ; $4DE6: $21 $52 $49
    ld d, d                                       ; $4DE9: $52
    ld h, c                                       ; $4DEA: $61
    ld d, c                                       ; $4DEB: $51
    adc c                                         ; $4DEC: $89
    ld d, c                                       ; $4DED: $51
    rst RST_38                                    ; $4DEE: $FF
    rst RST_38                                    ; $4DEF: $FF
    dec b                                         ; $4DF0: $05
    ld d, e                                       ; $4DF1: $53
    rst RST_38                                    ; $4DF2: $FF
    rst RST_38                                    ; $4DF3: $FF
    rst RST_38                                    ; $4DF4: $FF
    rst RST_38                                    ; $4DF5: $FF
    inc e                                         ; $4DF6: $1C
    ld d, e                                       ; $4DF7: $53
    adc c                                         ; $4DF8: $89
    ld d, c                                       ; $4DF9: $51
    rst RST_38                                    ; $4DFA: $FF
    rst RST_38                                    ; $4DFB: $FF
    ld h, $53                                     ; $4DFC: $26 $53
    sub c                                         ; $4DFE: $91
    ld d, c                                       ; $4DFF: $51
    ld h, c                                       ; $4E00: $61
    ld d, c                                       ; $4E01: $51
    adc c                                         ; $4E02: $89
    ld d, c                                       ; $4E03: $51
    rst RST_38                                    ; $4E04: $FF
    rst RST_38                                    ; $4E05: $FF
    ld a, [hl-]                                   ; $4E06: $3A
    ld d, e                                       ; $4E07: $53
    rst RST_38                                    ; $4E08: $FF
    rst RST_38                                    ; $4E09: $FF
    cp c                                          ; $4E0A: $B9
    ld d, [hl]                                    ; $4E0B: $56
    ld a, c                                       ; $4E0C: $79
    ld d, e                                       ; $4E0D: $53
    cp c                                          ; $4E0E: $B9
    ld d, [hl]                                    ; $4E0F: $56
    ld h, c                                       ; $4E10: $61
    ld d, e                                       ; $4E11: $53
    xor a                                         ; $4E12: $AF
    ld d, [hl]                                    ; $4E13: $56
    jp hl                                         ; $4E14: $E9


    ld d, [hl]                                    ; $4E15: $56
    ld a, [hl-]                                   ; $4E16: $3A
    ld d, e                                       ; $4E17: $53
    rst RST_38                                    ; $4E18: $FF
    rst RST_38                                    ; $4E19: $FF
    rst RST_38                                    ; $4E1A: $FF
    rst RST_38                                    ; $4E1B: $FF
    ld a, [hl-]                                   ; $4E1C: $3A
    ld d, e                                       ; $4E1D: $53
    rst RST_38                                    ; $4E1E: $FF
    rst RST_38                                    ; $4E1F: $FF
    adc [hl]                                      ; $4E20: $8E
    ld d, e                                       ; $4E21: $53
    rst RST_38                                    ; $4E22: $FF
    rst RST_38                                    ; $4E23: $FF
    dec [hl]                                      ; $4E24: $35
    ld d, d                                       ; $4E25: $52
    ld d, c                                       ; $4E26: $51
    ld d, d                                       ; $4E27: $52
    xor a                                         ; $4E28: $AF
    ld d, [hl]                                    ; $4E29: $56
    jp hl                                         ; $4E2A: $E9


    ld d, [hl]                                    ; $4E2B: $56
    ld a, [hl-]                                   ; $4E2C: $3A
    ld d, e                                       ; $4E2D: $53
    rst RST_38                                    ; $4E2E: $FF
    rst RST_38                                    ; $4E2F: $FF
    rst RST_38                                    ; $4E30: $FF
    rst RST_38                                    ; $4E31: $FF
    ld h, c                                       ; $4E32: $61
    ld d, c                                       ; $4E33: $51
    adc c                                         ; $4E34: $89
    ld d, c                                       ; $4E35: $51
    and l                                         ; $4E36: $A5
    ld d, [hl]                                    ; $4E37: $56
    pop hl                                        ; $4E38: $E1
    ld d, [hl]                                    ; $4E39: $56
    ret z                                         ; $4E3A: $C8

    ld d, e                                       ; $4E3B: $53
    di                                            ; $4E3C: $F3
    ld d, e                                       ; $4E3D: $53
    ret z                                         ; $4E3E: $C8

    ld d, e                                       ; $4E3F: $53
    dec bc                                        ; $4E40: $0B
    ld d, h                                       ; $4E41: $54
    and l                                         ; $4E42: $A5
    ld d, [hl]                                    ; $4E43: $56
    pop hl                                        ; $4E44: $E1
    ld d, [hl]                                    ; $4E45: $56
    rst RST_38                                    ; $4E46: $FF
    rst RST_38                                    ; $4E47: $FF
    ld a, [hl-]                                   ; $4E48: $3A
    ld d, e                                       ; $4E49: $53
    rst RST_38                                    ; $4E4A: $FF
    rst RST_38                                    ; $4E4B: $FF
    ld [hl], l                                    ; $4E4C: $75
    ld d, c                                       ; $4E4D: $51
    sbc c                                         ; $4E4E: $99
    ld d, c                                       ; $4E4F: $51
    ld [hl], l                                    ; $4E50: $75
    ld d, c                                       ; $4E51: $51
    ld a, [hl+]                                   ; $4E52: $2A
    ld d, h                                       ; $4E53: $54
    ld l, e                                       ; $4E54: $6B
    ld d, c                                       ; $4E55: $51
    sbc c                                         ; $4E56: $99
    ld d, c                                       ; $4E57: $51
    ld a, [hl-]                                   ; $4E58: $3A
    ld d, e                                       ; $4E59: $53
    rst RST_38                                    ; $4E5A: $FF
    rst RST_38                                    ; $4E5B: $FF
    rst RST_38                                    ; $4E5C: $FF
    rst RST_38                                    ; $4E5D: $FF
    ld a, [hl-]                                   ; $4E5E: $3A
    ld d, e                                       ; $4E5F: $53
    rst RST_38                                    ; $4E60: $FF
    rst RST_38                                    ; $4E61: $FF
    add hl, sp                                    ; $4E62: $39
    ld d, h                                       ; $4E63: $54
    rst RST_38                                    ; $4E64: $FF
    rst RST_38                                    ; $4E65: $FF
    xor a                                         ; $4E66: $AF
    ld d, [hl]                                    ; $4E67: $56
    jp hl                                         ; $4E68: $E9


    ld d, [hl]                                    ; $4E69: $56
    ld a, [hl-]                                   ; $4E6A: $3A
    ld d, e                                       ; $4E6B: $53
    rst RST_38                                    ; $4E6C: $FF
    rst RST_38                                    ; $4E6D: $FF
    rst RST_38                                    ; $4E6E: $FF
    rst RST_38                                    ; $4E6F: $FF
    ld b, e                                       ; $4E70: $43
    ld d, h                                       ; $4E71: $54
    rst RST_38                                    ; $4E72: $FF
    rst RST_38                                    ; $4E73: $FF
    ld b, e                                       ; $4E74: $43
    ld d, h                                       ; $4E75: $54
    rst RST_38                                    ; $4E76: $FF
    rst RST_38                                    ; $4E77: $FF
    ld b, e                                       ; $4E78: $43
    ld d, h                                       ; $4E79: $54
    rst RST_38                                    ; $4E7A: $FF
    rst RST_38                                    ; $4E7B: $FF
    and l                                         ; $4E7C: $A5
    ld d, [hl]                                    ; $4E7D: $56
    pop hl                                        ; $4E7E: $E1
    ld d, [hl]                                    ; $4E7F: $56
    rst RST_38                                    ; $4E80: $FF
    rst RST_38                                    ; $4E81: $FF
    ld h, b                                       ; $4E82: $60
    ld d, h                                       ; $4E83: $54
    rst RST_38                                    ; $4E84: $FF
    rst RST_38                                    ; $4E85: $FF
    adc h                                         ; $4E86: $8C
    ld d, h                                       ; $4E87: $54
    rst RST_38                                    ; $4E88: $FF
    rst RST_38                                    ; $4E89: $FF
    adc h                                         ; $4E8A: $8C
    ld d, h                                       ; $4E8B: $54
    rst RST_38                                    ; $4E8C: $FF
    rst RST_38                                    ; $4E8D: $FF
    ld hl, $4952                                  ; $4E8E: $21 $52 $49
    ld d, d                                       ; $4E91: $52
    ld h, c                                       ; $4E92: $61
    ld d, c                                       ; $4E93: $51
    adc c                                         ; $4E94: $89
    ld d, c                                       ; $4E95: $51
    rst RST_38                                    ; $4E96: $FF
    rst RST_38                                    ; $4E97: $FF
    cp b                                          ; $4E98: $B8
    ld d, h                                       ; $4E99: $54
    rst RST_38                                    ; $4E9A: $FF
    rst RST_38                                    ; $4E9B: $FF
    db $E4                                        ; $4E9C: $E4
    ld d, h                                       ; $4E9D: $54
    rst RST_38                                    ; $4E9E: $FF
    rst RST_38                                    ; $4E9F: $FF
    db $E4                                        ; $4EA0: $E4
    ld d, h                                       ; $4EA1: $54
    rst RST_38                                    ; $4EA2: $FF
    rst RST_38                                    ; $4EA3: $FF
    ld hl, $4952                                  ; $4EA4: $21 $52 $49
    ld d, d                                       ; $4EA7: $52
    ld h, c                                       ; $4EA8: $61
    ld d, c                                       ; $4EA9: $51
    adc c                                         ; $4EAA: $89
    ld d, c                                       ; $4EAB: $51
    rst RST_38                                    ; $4EAC: $FF
    rst RST_38                                    ; $4EAD: $FF
    or l                                          ; $4EAE: $B5
    ld d, c                                       ; $4EAF: $51
    rst RST_30                                    ; $4EB0: $F7
    ld d, c                                       ; $4EB1: $51
    and b                                         ; $4EB2: $A0
    ld d, d                                       ; $4EB3: $52
    rst RST_38                                    ; $4EB4: $FF
    rst RST_38                                    ; $4EB5: $FF
    sbc $52                                       ; $4EB6: $DE $52
    rst RST_38                                    ; $4EB8: $FF
    rst RST_38                                    ; $4EB9: $FF
    or h                                          ; $4EBA: $B4
    ld d, d                                       ; $4EBB: $52
    rst RST_38                                    ; $4EBC: $FF
    rst RST_38                                    ; $4EBD: $FF
    halt                                          ; $4EBE: $76
    ld d, d                                       ; $4EBF: $52
    rst RST_38                                    ; $4EC0: $FF
    rst RST_38                                    ; $4EC1: $FF
    dec hl                                        ; $4EC2: $2B
    ld d, d                                       ; $4EC3: $52
    ld c, c                                       ; $4EC4: $49
    ld d, d                                       ; $4EC5: $52
    ld h, c                                       ; $4EC6: $61
    ld d, c                                       ; $4EC7: $51
    adc c                                         ; $4EC8: $89
    ld d, c                                       ; $4EC9: $51
    rst RST_38                                    ; $4ECA: $FF
    rst RST_38                                    ; $4ECB: $FF
    rst RST_38                                    ; $4ECC: $FF
    rst RST_38                                    ; $4ECD: $FF
    ret z                                         ; $4ECE: $C8

    ld d, e                                       ; $4ECF: $53
    dec bc                                        ; $4ED0: $0B
    ld d, h                                       ; $4ED1: $54
    ld hl, $4952                                  ; $4ED2: $21 $52 $49
    ld d, d                                       ; $4ED5: $52
    rst RST_38                                    ; $4ED6: $FF
    rst RST_38                                    ; $4ED7: $FF
    rla                                           ; $4ED8: $17
    ld d, l                                       ; $4ED9: $55
    ld c, d                                       ; $4EDA: $4A
    ld d, l                                       ; $4EDB: $55
    ld hl, $4952                                  ; $4EDC: $21 $52 $49
    ld d, d                                       ; $4EDF: $52
    ld h, c                                       ; $4EE0: $61
    ld d, c                                       ; $4EE1: $51
    adc c                                         ; $4EE2: $89
    ld d, c                                       ; $4EE3: $51
    rst RST_38                                    ; $4EE4: $FF
    rst RST_38                                    ; $4EE5: $FF
    ld l, h                                       ; $4EE6: $6C
    ld d, l                                       ; $4EE7: $55
    rst RST_38                                    ; $4EE8: $FF
    rst RST_38                                    ; $4EE9: $FF
    adc h                                         ; $4EEA: $8C
    ld d, l                                       ; $4EEB: $55
    rst RST_38                                    ; $4EEC: $FF
    rst RST_38                                    ; $4EED: $FF
    rst RST_38                                    ; $4EEE: $FF
    rst RST_38                                    ; $4EEF: $FF
    ld h, c                                       ; $4EF0: $61
    ld d, c                                       ; $4EF1: $51
    adc c                                         ; $4EF2: $89
    ld d, c                                       ; $4EF3: $51
    db $FD                                        ; $4EF4: $FD
    ld d, l                                       ; $4EF5: $55
    rst RST_38                                    ; $4EF6: $FF
    rst RST_38                                    ; $4EF7: $FF
    adc h                                         ; $4EF8: $8C
    ld d, l                                       ; $4EF9: $55
    rst RST_38                                    ; $4EFA: $FF
    rst RST_38                                    ; $4EFB: $FF
    rst RST_38                                    ; $4EFC: $FF
    rst RST_38                                    ; $4EFD: $FF
    ld a, [hl-]                                   ; $4EFE: $3A
    ld d, e                                       ; $4EFF: $53
    rst RST_38                                    ; $4F00: $FF
    rst RST_38                                    ; $4F01: $FF
    xor a                                         ; $4F02: $AF
    ld d, [hl]                                    ; $4F03: $56
    jp hl                                         ; $4F04: $E9


    ld d, [hl]                                    ; $4F05: $56
    xor a                                         ; $4F06: $AF
    ld d, [hl]                                    ; $4F07: $56
    ld h, c                                       ; $4F08: $61
    ld d, e                                       ; $4F09: $53
    xor a                                         ; $4F0A: $AF
    ld d, [hl]                                    ; $4F0B: $56
    ld a, c                                       ; $4F0C: $79
    ld d, e                                       ; $4F0D: $53
    xor h                                         ; $4F0E: $AC
    ld d, l                                       ; $4F0F: $55
    ldh [c], a                                    ; $4F10: $E2
    ld d, l                                       ; $4F11: $55
    or [hl]                                       ; $4F12: $B6
    ld d, l                                       ; $4F13: $55
    ldh [c], a                                    ; $4F14: $E2
    ld d, l                                       ; $4F15: $55
    ret nz                                        ; $4F16: $C0

    ld d, l                                       ; $4F17: $55
    ldh [c], a                                    ; $4F18: $E2
    ld d, l                                       ; $4F19: $55
    jp z, $E255                                   ; $4F1A: $CA $55 $E2

    ld d, l                                       ; $4F1D: $55
    call nc, $E255                                ; $4F1E: $D4 $55 $E2
    ld d, l                                       ; $4F21: $55
    rst RST_38                                    ; $4F22: $FF
    rst RST_38                                    ; $4F23: $FF
    ld h, c                                       ; $4F24: $61
    ld d, c                                       ; $4F25: $51
    adc c                                         ; $4F26: $89
    ld d, c                                       ; $4F27: $51
    inc l                                         ; $4F28: $2C
    ld d, [hl]                                    ; $4F29: $56
    ld b, b                                       ; $4F2A: $40
    ld d, [hl]                                    ; $4F2B: $56
    inc l                                         ; $4F2C: $2C
    ld d, [hl]                                    ; $4F2D: $56
    ld d, d                                       ; $4F2E: $52
    ld d, [hl]                                    ; $4F2F: $56
    inc l                                         ; $4F30: $2C
    ld d, [hl]                                    ; $4F31: $56
    ld h, h                                       ; $4F32: $64
    ld d, [hl]                                    ; $4F33: $56
    inc l                                         ; $4F34: $2C
    ld d, [hl]                                    ; $4F35: $56
    halt                                          ; $4F36: $76
    ld d, [hl]                                    ; $4F37: $56
    inc l                                         ; $4F38: $2C
    ld d, [hl]                                    ; $4F39: $56
    ld b, b                                       ; $4F3A: $40
    ld d, [hl]                                    ; $4F3B: $56
    inc l                                         ; $4F3C: $2C
    ld d, [hl]                                    ; $4F3D: $56
    ld d, d                                       ; $4F3E: $52
    ld d, [hl]                                    ; $4F3F: $56
    inc l                                         ; $4F40: $2C
    ld d, [hl]                                    ; $4F41: $56
    ld h, h                                       ; $4F42: $64
    ld d, [hl]                                    ; $4F43: $56
    inc l                                         ; $4F44: $2C
    ld d, [hl]                                    ; $4F45: $56
    halt                                          ; $4F46: $76
    ld d, [hl]                                    ; $4F47: $56
    inc l                                         ; $4F48: $2C
    ld d, [hl]                                    ; $4F49: $56
    ld b, b                                       ; $4F4A: $40
    ld d, [hl]                                    ; $4F4B: $56
    inc l                                         ; $4F4C: $2C
    ld d, [hl]                                    ; $4F4D: $56
    ld d, d                                       ; $4F4E: $52
    ld d, [hl]                                    ; $4F4F: $56
    inc l                                         ; $4F50: $2C
    ld d, [hl]                                    ; $4F51: $56
    ld h, h                                       ; $4F52: $64
    ld d, [hl]                                    ; $4F53: $56
    inc l                                         ; $4F54: $2C
    ld d, [hl]                                    ; $4F55: $56
    halt                                          ; $4F56: $76
    ld d, [hl]                                    ; $4F57: $56
    rst RST_38                                    ; $4F58: $FF
    rst RST_38                                    ; $4F59: $FF
    adc b                                         ; $4F5A: $88
    ld d, [hl]                                    ; $4F5B: $56
    rst RST_38                                    ; $4F5C: $FF
    rst RST_38                                    ; $4F5D: $FF
    rst RST_38                                    ; $4F5E: $FF
    rst RST_38                                    ; $4F5F: $FF
    dec hl                                        ; $4F60: $2B
    ld d, l                                       ; $4F61: $55
    ld e, d                                       ; $4F62: $5A
    ld d, l                                       ; $4F63: $55
    rst RST_38                                    ; $4F64: $FF
    rst RST_38                                    ; $4F65: $FF
    rla                                           ; $4F66: $17
    ld d, l                                       ; $4F67: $55
    ld c, d                                       ; $4F68: $4A
    ld d, l                                       ; $4F69: $55
    rst RST_38                                    ; $4F6A: $FF
    rst RST_38                                    ; $4F6B: $FF
    sub d                                         ; $4F6C: $92
    ld d, b                                       ; $4F6D: $50
    rst RST_38                                    ; $4F6E: $FF
    rst RST_38                                    ; $4F6F: $FF
    adc b                                         ; $4F70: $88
    ld d, [hl]                                    ; $4F71: $56
    rst RST_38                                    ; $4F72: $FF
    rst RST_38                                    ; $4F73: $FF
    and l                                         ; $4F74: $A5
    ld d, [hl]                                    ; $4F75: $56
    pop hl                                        ; $4F76: $E1
    ld d, [hl]                                    ; $4F77: $56
    rst RST_38                                    ; $4F78: $FF
    rst RST_38                                    ; $4F79: $FF
    and l                                         ; $4F7A: $A5
    ld d, [hl]                                    ; $4F7B: $56
    pop hl                                        ; $4F7C: $E1
    ld d, [hl]                                    ; $4F7D: $56
    rst RST_38                                    ; $4F7E: $FF
    rst RST_38                                    ; $4F7F: $FF
    dec hl                                        ; $4F80: $2B
    ld d, l                                       ; $4F81: $55
    ld e, d                                       ; $4F82: $5A
    ld d, l                                       ; $4F83: $55
    xor e                                         ; $4F84: $AB
    ld d, c                                       ; $4F85: $51
    rst RST_30                                    ; $4F86: $F7
    ld d, c                                       ; $4F87: $51
    xor e                                         ; $4F88: $AB
    ld d, c                                       ; $4F89: $51
    rst RST_30                                    ; $4F8A: $F7
    ld d, c                                       ; $4F8B: $51
    ld hl, $4952                                  ; $4F8C: $21 $52 $49
    ld d, d                                       ; $4F8F: $52
    ld hl, $4952                                  ; $4F90: $21 $52 $49
    ld d, d                                       ; $4F93: $52
    ld hl, $4952                                  ; $4F94: $21 $52 $49
    ld d, d                                       ; $4F97: $52
    ld h, c                                       ; $4F98: $61
    ld d, c                                       ; $4F99: $51
    adc c                                         ; $4F9A: $89
    ld d, c                                       ; $4F9B: $51
    rst RST_38                                    ; $4F9C: $FF
    rst RST_38                                    ; $4F9D: $FF
    rla                                           ; $4F9E: $17
    ld d, l                                       ; $4F9F: $55
    ld c, d                                       ; $4FA0: $4A
    ld d, l                                       ; $4FA1: $55
    ret                                           ; $4FA2: $C9


    ld d, c                                       ; $4FA3: $51
    rlca                                          ; $4FA4: $07
    ld d, d                                       ; $4FA5: $52
    dec bc                                        ; $4FA6: $0B
    ld d, a                                       ; $4FA7: $57
    rst RST_38                                    ; $4FA8: $FF
    rst RST_38                                    ; $4FA9: $FF
    ret                                           ; $4FAA: $C9


    ld d, c                                       ; $4FAB: $51
    rlca                                          ; $4FAC: $07
    ld d, d                                       ; $4FAD: $52
    dec bc                                        ; $4FAE: $0B
    ld d, a                                       ; $4FAF: $57
    rst RST_38                                    ; $4FB0: $FF
    rst RST_38                                    ; $4FB1: $FF
    rst RST_38                                    ; $4FB2: $FF
    rst RST_38                                    ; $4FB3: $FF
    dec hl                                        ; $4FB4: $2B
    ld d, l                                       ; $4FB5: $55
    ld e, d                                       ; $4FB6: $5A
    ld d, l                                       ; $4FB7: $55
    ld hl, $5255                                  ; $4FB8: $21 $55 $52
    ld d, l                                       ; $4FBB: $55
    dec c                                         ; $4FBC: $0D
    ld d, l                                       ; $4FBD: $55
    ld b, d                                       ; $4FBE: $42
    ld d, l                                       ; $4FBF: $55
    rla                                           ; $4FC0: $17
    ld d, l                                       ; $4FC1: $55
    ld c, d                                       ; $4FC2: $4A
    ld d, l                                       ; $4FC3: $55
    rla                                           ; $4FC4: $17
    ld d, l                                       ; $4FC5: $55
    ld c, d                                       ; $4FC6: $4A
    ld d, l                                       ; $4FC7: $55
    ret                                           ; $4FC8: $C9


    ld d, c                                       ; $4FC9: $51
    rlca                                          ; $4FCA: $07
    ld d, d                                       ; $4FCB: $52
    dec bc                                        ; $4FCC: $0B
    ld d, a                                       ; $4FCD: $57
    rst RST_38                                    ; $4FCE: $FF
    rst RST_38                                    ; $4FCF: $FF
    rst RST_38                                    ; $4FD0: $FF
    rst RST_38                                    ; $4FD1: $FF
    rla                                           ; $4FD2: $17
    ld d, l                                       ; $4FD3: $55
    ld c, d                                       ; $4FD4: $4A
    ld d, l                                       ; $4FD5: $55
    ret                                           ; $4FD6: $C9


    ld d, c                                       ; $4FD7: $51
    rlca                                          ; $4FD8: $07
    ld d, d                                       ; $4FD9: $52
    dec bc                                        ; $4FDA: $0B
    ld d, a                                       ; $4FDB: $57
    rst RST_38                                    ; $4FDC: $FF
    rst RST_38                                    ; $4FDD: $FF
    rst RST_38                                    ; $4FDE: $FF
    rst RST_38                                    ; $4FDF: $FF
    dec d                                         ; $4FE0: $15
    ld d, a                                       ; $4FE1: $57
    rst RST_38                                    ; $4FE2: $FF
    rst RST_38                                    ; $4FE3: $FF
    rst RST_38                                    ; $4FE4: $FF
    rst RST_38                                    ; $4FE5: $FF
    ld h, c                                       ; $4FE6: $61
    ld d, c                                       ; $4FE7: $51
    adc c                                         ; $4FE8: $89
    ld d, c                                       ; $4FE9: $51
    ld h, c                                       ; $4FEA: $61
    ld d, c                                       ; $4FEB: $51
    adc c                                         ; $4FEC: $89
    ld d, c                                       ; $4FED: $51
    rst RST_38                                    ; $4FEE: $FF
    rst RST_38                                    ; $4FEF: $FF
    ld a, [hl-]                                   ; $4FF0: $3A
    ld d, e                                       ; $4FF1: $53
    rst RST_38                                    ; $4FF2: $FF
    rst RST_38                                    ; $4FF3: $FF
    dec [hl]                                      ; $4FF4: $35
    ld d, d                                       ; $4FF5: $52
    ld d, c                                       ; $4FF6: $51
    ld d, d                                       ; $4FF7: $52
    and d                                         ; $4FF8: $A2
    ld d, e                                       ; $4FF9: $53
    rst RST_38                                    ; $4FFA: $FF
    rst RST_38                                    ; $4FFB: $FF
    dec [hl]                                      ; $4FFC: $35
    ld d, d                                       ; $4FFD: $52
    ld d, c                                       ; $4FFE: $51
    ld d, d                                       ; $4FFF: $52
    ld b, h                                       ; $5000: $44
    ld d, e                                       ; $5001: $53
    rst RST_38                                    ; $5002: $FF
    rst RST_38                                    ; $5003: $FF
    rst RST_38                                    ; $5004: $FF
    rst RST_38                                    ; $5005: $FF
    ld h, c                                       ; $5006: $61
    ld d, c                                       ; $5007: $51
    adc c                                         ; $5008: $89
    ld d, c                                       ; $5009: $51
    and l                                         ; $500A: $A5
    ld d, [hl]                                    ; $500B: $56
    pop hl                                        ; $500C: $E1
    ld d, [hl]                                    ; $500D: $56
    ld l, [hl]                                    ; $500E: $6E
    ld d, a                                       ; $500F: $57
    rst RST_38                                    ; $5010: $FF
    rst RST_38                                    ; $5011: $FF
    add hl, sp                                    ; $5012: $39
    ld d, a                                       ; $5013: $57
    rst RST_38                                    ; $5014: $FF
    rst RST_38                                    ; $5015: $FF
    cpl                                           ; $5016: $2F
    ld d, a                                       ; $5017: $57
    rst RST_38                                    ; $5018: $FF
    rst RST_38                                    ; $5019: $FF
    ld hl, $4952                                  ; $501A: $21 $52 $49
    ld d, d                                       ; $501D: $52
    and l                                         ; $501E: $A5
    ld d, [hl]                                    ; $501F: $56
    pop hl                                        ; $5020: $E1
    ld d, [hl]                                    ; $5021: $56
    ld h, c                                       ; $5022: $61
    ld d, c                                       ; $5023: $51
    adc c                                         ; $5024: $89
    ld d, c                                       ; $5025: $51
    rst RST_38                                    ; $5026: $FF
    rst RST_38                                    ; $5027: $FF
    and l                                         ; $5028: $A5
    ld d, [hl]                                    ; $5029: $56
    pop hl                                        ; $502A: $E1
    ld d, [hl]                                    ; $502B: $56
    xor e                                         ; $502C: $AB
    ld d, c                                       ; $502D: $51
    rst RST_30                                    ; $502E: $F7
    ld d, c                                       ; $502F: $51
    ret z                                         ; $5030: $C8

    ld d, e                                       ; $5031: $53
    dec bc                                        ; $5032: $0B
    ld d, h                                       ; $5033: $54
    and b                                         ; $5034: $A0
    ld d, d                                       ; $5035: $52
    rst RST_38                                    ; $5036: $FF
    rst RST_38                                    ; $5037: $FF
    sbc $52                                       ; $5038: $DE $52
    rst RST_38                                    ; $503A: $FF
    rst RST_38                                    ; $503B: $FF
    or h                                          ; $503C: $B4
    ld d, d                                       ; $503D: $52
    rst RST_38                                    ; $503E: $FF
    rst RST_38                                    ; $503F: $FF
    halt                                          ; $5040: $76
    ld d, d                                       ; $5041: $52
    rst RST_38                                    ; $5042: $FF
    rst RST_38                                    ; $5043: $FF
    dec hl                                        ; $5044: $2B
    ld d, d                                       ; $5045: $52
    ld c, c                                       ; $5046: $49
    ld d, d                                       ; $5047: $52
    ld h, c                                       ; $5048: $61
    ld d, c                                       ; $5049: $51
    adc c                                         ; $504A: $89
    ld d, c                                       ; $504B: $51
    ld h, c                                       ; $504C: $61
    ld d, c                                       ; $504D: $51
    adc c                                         ; $504E: $89
    ld d, c                                       ; $504F: $51
    rst RST_38                                    ; $5050: $FF
    rst RST_38                                    ; $5051: $FF
    and l                                         ; $5052: $A5
    ld d, [hl]                                    ; $5053: $56
    pop hl                                        ; $5054: $E1
    ld d, [hl]                                    ; $5055: $56
    xor e                                         ; $5056: $AB
    ld d, c                                       ; $5057: $51
    rst RST_30                                    ; $5058: $F7
    ld d, c                                       ; $5059: $51
    ret z                                         ; $505A: $C8

    ld d, e                                       ; $505B: $53
    dec bc                                        ; $505C: $0B
    ld d, h                                       ; $505D: $54
    ld h, b                                       ; $505E: $60
    ld d, h                                       ; $505F: $54
    rst RST_38                                    ; $5060: $FF
    rst RST_38                                    ; $5061: $FF
    ld hl, $4952                                  ; $5062: $21 $52 $49
    ld d, d                                       ; $5065: $52
    ld h, c                                       ; $5066: $61
    ld d, c                                       ; $5067: $51
    adc c                                         ; $5068: $89
    ld d, c                                       ; $5069: $51
    ld h, c                                       ; $506A: $61
    ld d, c                                       ; $506B: $51
    adc c                                         ; $506C: $89
    ld d, c                                       ; $506D: $51
    rst RST_38                                    ; $506E: $FF
    rst RST_38                                    ; $506F: $FF
    and l                                         ; $5070: $A5
    ld d, [hl]                                    ; $5071: $56
    pop hl                                        ; $5072: $E1
    ld d, [hl]                                    ; $5073: $56
    cpl                                           ; $5074: $2F
    ld d, a                                       ; $5075: $57
    rst RST_38                                    ; $5076: $FF
    rst RST_38                                    ; $5077: $FF
    add d                                         ; $5078: $82
    ld d, a                                       ; $5079: $57
    rst RST_38                                    ; $507A: $FF
    rst RST_38                                    ; $507B: $FF
    xor b                                         ; $507C: $A8
    ld d, a                                       ; $507D: $57
    rst RST_38                                    ; $507E: $FF
    rst RST_38                                    ; $507F: $FF
    ret z                                         ; $5080: $C8

    ld d, a                                       ; $5081: $57
    rst RST_38                                    ; $5082: $FF
    rst RST_38                                    ; $5083: $FF
    ld hl, $4952                                  ; $5084: $21 $52 $49
    ld d, d                                       ; $5087: $52
    and l                                         ; $5088: $A5
    ld d, [hl]                                    ; $5089: $56
    pop hl                                        ; $508A: $E1
    ld d, [hl]                                    ; $508B: $56
    and l                                         ; $508C: $A5
    ld d, [hl]                                    ; $508D: $56
    pop hl                                        ; $508E: $E1
    ld d, [hl]                                    ; $508F: $56
    rst RST_38                                    ; $5090: $FF
    rst RST_38                                    ; $5091: $FF
    nop                                           ; $5092: $00
    dec e                                         ; $5093: $1D
    nop                                           ; $5094: $00
    nop                                           ; $5095: $00
    ld b, b                                       ; $5096: $40
    ld de, $509C                                  ; $5097: $11 $9C $50
    ei                                            ; $509A: $FB
    nop                                           ; $509B: $00
    ld [$F227], sp                                ; $509C: $08 $27 $F2
    nop                                           ; $509F: $00
    dec l                                         ; $50A0: $2D
    ld a, [$2F02]                                 ; $50A1: $FA $02 $2F
    ld [bc], a                                    ; $50A4: $02
    inc b                                         ; $50A5: $04
    ld l, $0A                                     ; $50A6: $2E $0A
    ld b, $31                                     ; $50A8: $06 $31
    ld [de], a                                    ; $50AA: $12
    ld [$FA3D], sp                                ; $50AB: $08 $3D $FA
    ld a, [bc]                                    ; $50AE: $0A
    ccf                                           ; $50AF: $3F
    ld [bc], a                                    ; $50B0: $02
    inc c                                         ; $50B1: $0C
    ld a, $0A                                     ; $50B2: $3E $0A
    ld c, $00                                     ; $50B4: $0E $00
    dec e                                         ; $50B6: $1D
    nop                                           ; $50B7: $00
    nop                                           ; $50B8: $00
    ld b, c                                       ; $50B9: $41
    ld de, $50BF                                  ; $50BA: $11 $BF $50
    ei                                            ; $50BD: $FB
    nop                                           ; $50BE: $00
    ld [$F227], sp                                ; $50BF: $08 $27 $F2
    nop                                           ; $50C2: $00
    dec l                                         ; $50C3: $2D
    ld a, [$2E02]                                 ; $50C4: $FA $02 $2E
    ld [bc], a                                    ; $50C7: $02
    inc b                                         ; $50C8: $04
    ld l, $0A                                     ; $50C9: $2E $0A
    ld b, $31                                     ; $50CB: $06 $31
    ld [de], a                                    ; $50CD: $12
    ld [$FA3D], sp                                ; $50CE: $08 $3D $FA
    ld a, [bc]                                    ; $50D1: $0A
    ld a, $02                                     ; $50D2: $3E $02
    inc c                                         ; $50D4: $0C
    ld a, $0A                                     ; $50D5: $3E $0A
    ld c, $00                                     ; $50D7: $0E $00
    dec e                                         ; $50D9: $1D
    nop                                           ; $50DA: $00
    nop                                           ; $50DB: $00
    ld b, d                                       ; $50DC: $42
    ld de, $50E2                                  ; $50DD: $11 $E2 $50
    ei                                            ; $50E0: $FB
    nop                                           ; $50E1: $00
    ld [$F227], sp                                ; $50E2: $08 $27 $F2
    nop                                           ; $50E5: $00
    dec l                                         ; $50E6: $2D
    ld a, [$2E02]                                 ; $50E7: $FA $02 $2E
    ld [bc], a                                    ; $50EA: $02
    inc b                                         ; $50EB: $04
    ld l, $0A                                     ; $50EC: $2E $0A
    ld b, $32                                     ; $50EE: $06 $32
    ld [de], a                                    ; $50F0: $12
    ld [$FA3D], sp                                ; $50F1: $08 $3D $FA
    ld a, [bc]                                    ; $50F4: $0A
    ld a, $02                                     ; $50F5: $3E $02
    inc c                                         ; $50F7: $0C
    ld a, $0A                                     ; $50F8: $3E $0A
    ld c, $00                                     ; $50FA: $0E $00

jr_009_50FC:
    dec e                                         ; $50FC: $1D
    nop                                           ; $50FD: $00
    nop                                           ; $50FE: $00
    ld b, e                                       ; $50FF: $43
    ld de, $5105                                  ; $5100: $11 $05 $51
    ld a, [$0800]                                 ; $5103: $FA $00 $08
    jr z, jr_009_50FC                             ; $5106: $28 $F4

    nop                                           ; $5108: $00
    inc l                                         ; $5109: $2C
    db $FC                                        ; $510A: $FC
    ld [bc], a                                    ; $510B: $02
    ld l, $04                                     ; $510C: $2E $04
    inc b                                         ; $510E: $04
    cpl                                           ; $510F: $2F
    inc c                                         ; $5110: $0C
    ld b, $33                                     ; $5111: $06 $33
    inc d                                         ; $5113: $14
    ld [$F73C], sp                                ; $5114: $08 $3C $F7
    ld a, [bc]                                    ; $5117: $0A
    ld a, $02                                     ; $5118: $3E $02
    inc c                                         ; $511A: $0C
    ccf                                           ; $511B: $3F
    inc c                                         ; $511C: $0C
    ld c, $00                                     ; $511D: $0E $00
    dec e                                         ; $511F: $1D
    nop                                           ; $5120: $00
    nop                                           ; $5121: $00
    ld b, h                                       ; $5122: $44
    ld de, $5128                                  ; $5123: $11 $28 $51
    ld a, [$0700]                                 ; $5126: $FA $00 $07
    daa                                           ; $5129: $27
    rst RST_28                                    ; $512A: $EF
    nop                                           ; $512B: $00
    jr z, @-$07                                   ; $512C: $28 $F7

    ld [bc], a                                    ; $512E: $02
    dec l                                         ; $512F: $2D
    rst RST_38                                    ; $5130: $FF
    inc b                                         ; $5131: $04
    ld l, $07                                     ; $5132: $2E $07
    ld b, $2F                                     ; $5134: $06 $2F
    rrca                                          ; $5136: $0F
    ld [$FD3D], sp                                ; $5137: $08 $3D $FD
    ld a, [bc]                                    ; $513A: $0A

jr_009_513B:
    ld a, $07                                     ; $513B: $3E $07
    inc c                                         ; $513D: $0C
    nop                                           ; $513E: $00
    dec e                                         ; $513F: $1D
    nop                                           ; $5140: $00
    ldh [rLY], a                                  ; $5141: $E0 $44
    ld de, $5148                                  ; $5143: $11 $48 $51
    ld a, [$0800]                                 ; $5146: $FA $00 $08
    jr z, jr_009_513B                             ; $5149: $28 $F0

    nop                                           ; $514B: $00
    dec l                                         ; $514C: $2D
    ld hl, sp+$02                                 ; $514D: $F8 $02
    ld l, $00                                     ; $514F: $2E $00
    inc b                                         ; $5151: $04
    cpl                                           ; $5152: $2F
    ld [$3006], sp                                ; $5153: $08 $06 $30
    db $10                                        ; $5156: $10
    ld [$F53D], sp                                ; $5157: $08 $3D $F5
    ld a, [bc]                                    ; $515A: $0A
    ld a, $00                                     ; $515B: $3E $00
    inc c                                         ; $515D: $0C
    ccf                                           ; $515E: $3F
    ld [$000E], sp                                ; $515F: $08 $0E $00
    ld e, $00                                     ; $5162: $1E $00
    ldh [rLYC], a                                 ; $5164: $E0 $45
    ld de, $517F                                  ; $5166: $11 $7F $51
    db $FD                                        ; $5169: $FD
    nop                                           ; $516A: $00
    jr nz, jr_009_518B                            ; $516B: $20 $1E

    nop                                           ; $516D: $00
    ldh [rLYC], a                                 ; $516E: $E0 $45
    ld de, $517F                                  ; $5170: $11 $7F $51
    inc bc                                        ; $5173: $03
    nop                                           ; $5174: $00
    jr nz, @+$20                                  ; $5175: $20 $1E

    ld e, c                                       ; $5177: $59
    ldh [rLYC], a                                 ; $5178: $E0 $45
    ld de, $517F                                  ; $517A: $11 $7F $51
    inc bc                                        ; $517D: $03
    nop                                           ; $517E: $00
    inc bc                                        ; $517F: $03
    ld [hl-], a                                   ; $5180: $32
    rst RST_38                                    ; $5181: $FF
    nop                                           ; $5182: $00
    ld sp, $02F7                                  ; $5183: $31 $F7 $02
    dec hl                                        ; $5186: $2B
    rst RST_28                                    ; $5187: $EF
    inc b                                         ; $5188: $04
    nop                                           ; $5189: $00
    ld b, b                                       ; $518A: $40

jr_009_518B:
    ld b, [hl]                                    ; $518B: $46
    ld de, $51A1                                  ; $518C: $11 $A1 $51
    db $FD                                        ; $518F: $FD
    nop                                           ; $5190: $00
    nop                                           ; $5191: $00
    ld b, b                                       ; $5192: $40
    ld b, [hl]                                    ; $5193: $46
    ld de, $51A1                                  ; $5194: $11 $A1 $51
    db $FD                                        ; $5197: $FD
    ld hl, sp+$20                                 ; $5198: $F8 $20
    ld b, b                                       ; $519A: $40
    ld b, [hl]                                    ; $519B: $46
    ld de, $51A1                                  ; $519C: $11 $A1 $51
    inc bc                                        ; $519F: $03
    nop                                           ; $51A0: $00
    inc bc                                        ; $51A1: $03
    ld [hl-], a                                   ; $51A2: $32
    rlca                                          ; $51A3: $07
    nop                                           ; $51A4: $00
    inc [hl]                                      ; $51A5: $34
    rrca                                          ; $51A6: $0F
    ld [bc], a                                    ; $51A7: $02
    dec a                                         ; $51A8: $3D
    rla                                           ; $51A9: $17
    inc b                                         ; $51AA: $04
    nop                                           ; $51AB: $00
    rra                                           ; $51AC: $1F
    nop                                           ; $51AD: $00
    and b                                         ; $51AE: $A0
    ld b, [hl]                                    ; $51AF: $46
    ld de, $51E7                                  ; $51B0: $11 $E7 $51
    cp $10                                        ; $51B3: $FE $10
    nop                                           ; $51B5: $00
    rra                                           ; $51B6: $1F
    dec b                                         ; $51B7: $05
    and b                                         ; $51B8: $A0
    ld b, [hl]                                    ; $51B9: $46
    ld de, $51E7                                  ; $51BA: $11 $E7 $51
    cp $10                                        ; $51BD: $FE $10
    jr nz, jr_009_51E0                            ; $51BF: $20 $1F

    nop                                           ; $51C1: $00
    and b                                         ; $51C2: $A0
    ld b, [hl]                                    ; $51C3: $46
    ld de, $51E7                                  ; $51C4: $11 $E7 $51
    ld b, $10                                     ; $51C7: $06 $10
    ld b, b                                       ; $51C9: $40
    rra                                           ; $51CA: $1F
    nop                                           ; $51CB: $00
    and b                                         ; $51CC: $A0
    ld b, [hl]                                    ; $51CD: $46
    ld de, $51E7                                  ; $51CE: $11 $E7 $51
    ld sp, hl                                     ; $51D1: $F9
    or $60                                        ; $51D2: $F6 $60
    rra                                           ; $51D4: $1F
    nop                                           ; $51D5: $00
    and b                                         ; $51D6: $A0
    ld b, [hl]                                    ; $51D7: $46
    ld de, $51E7                                  ; $51D8: $11 $E7 $51
    rlca                                          ; $51DB: $07
    db $10                                        ; $51DC: $10
    ld h, b                                       ; $51DD: $60
    rra                                           ; $51DE: $1F
    nop                                           ; $51DF: $00

jr_009_51E0:
    and b                                         ; $51E0: $A0
    ld b, [hl]                                    ; $51E1: $46
    ld de, $51E7                                  ; $51E2: $11 $E7 $51
    ld b, $F1                                     ; $51E5: $06 $F1
    dec b                                         ; $51E7: $05
    dec c                                         ; $51E8: $0D
    xor $00                                       ; $51E9: $EE $00
    dec d                                         ; $51EB: $15
    or $02                                        ; $51EC: $F6 $02
    inc de                                        ; $51EE: $13
    cp $04                                        ; $51EF: $FE $04
    jr jr_009_51F9                                ; $51F1: $18 $06

    ld b, $18                                     ; $51F3: $06 $18
    ld c, $08                                     ; $51F5: $0E $08
    nop                                           ; $51F7: $00
    ld b, b                                       ; $51F8: $40

jr_009_51F9:
    ld b, a                                       ; $51F9: $47
    ld de, $5217                                  ; $51FA: $11 $17 $52
    cp $10                                        ; $51FD: $FE $10
    jr nz, @+$42                                  ; $51FF: $20 $40

    ld b, a                                       ; $5201: $47
    ld de, $5217                                  ; $5202: $11 $17 $52
    ld b, $10                                     ; $5205: $06 $10
    ld b, b                                       ; $5207: $40
    ld b, b                                       ; $5208: $40
    ld b, a                                       ; $5209: $47
    ld de, $5217                                  ; $520A: $11 $17 $52
    ld sp, hl                                     ; $520D: $F9
    or $60                                        ; $520E: $F6 $60
    ld b, b                                       ; $5210: $40
    ld b, a                                       ; $5211: $47
    ld de, $5217                                  ; $5212: $11 $17 $52
    rlca                                          ; $5215: $07
    db $10                                        ; $5216: $10
    inc bc                                        ; $5217: $03
    jr z, jr_009_5221                             ; $5218: $28 $07

    nop                                           ; $521A: $00
    jr z, jr_009_522C                             ; $521B: $28 $0F

    ld [bc], a                                    ; $521D: $02
    dec l                                         ; $521E: $2D
    rst RST_38                                    ; $521F: $FF
    inc b                                         ; $5220: $04

jr_009_5221:
    nop                                           ; $5221: $00
    rra                                           ; $5222: $1F
    nop                                           ; $5223: $00
    and b                                         ; $5224: $A0
    ld b, a                                       ; $5225: $47
    ld de, $523F                                  ; $5226: $11 $3F $52
    db $FD                                        ; $5229: $FD
    dec c                                         ; $522A: $0D
    nop                                           ; $522B: $00

jr_009_522C:
    rra                                           ; $522C: $1F
    dec b                                         ; $522D: $05
    and b                                         ; $522E: $A0
    ld b, a                                       ; $522F: $47
    ld de, $523F                                  ; $5230: $11 $3F $52
    db $FD                                        ; $5233: $FD
    dec c                                         ; $5234: $0D
    jr nz, @+$21                                  ; $5235: $20 $1F

    nop                                           ; $5237: $00
    and b                                         ; $5238: $A0
    ld b, a                                       ; $5239: $47
    ld de, $523F                                  ; $523A: $11 $3F $52
    inc bc                                        ; $523D: $03
    dec c                                         ; $523E: $0D
    inc bc                                        ; $523F: $03
    ld e, $F7                                     ; $5240: $1E $F7
    nop                                           ; $5242: $00
    ld l, $F7                                     ; $5243: $2E $F7
    ld [bc], a                                    ; $5245: $02
    dec h                                         ; $5246: $25
    rst RST_28                                    ; $5247: $EF
    inc b                                         ; $5248: $04
    nop                                           ; $5249: $00
    nop                                           ; $524A: $00
    ld c, b                                       ; $524B: $48
    ld de, $5259                                  ; $524C: $11 $59 $52
    db $FD                                        ; $524F: $FD
    dec c                                         ; $5250: $0D
    jr nz, jr_009_5253                            ; $5251: $20 $00

jr_009_5253:
    ld c, b                                       ; $5253: $48
    ld de, $5259                                  ; $5254: $11 $59 $52
    inc bc                                        ; $5257: $03
    dec c                                         ; $5258: $0D
    ld b, $1F                                     ; $5259: $06 $1F
    rst RST_38                                    ; $525B: $FF
    nop                                           ; $525C: $00
    rrca                                          ; $525D: $0F
    rst RST_38                                    ; $525E: $FF
    ld [bc], a                                    ; $525F: $02
    dec e                                         ; $5260: $1D
    rlca                                          ; $5261: $07
    inc b                                         ; $5262: $04
    dec e                                         ; $5263: $1D
    rrca                                          ; $5264: $0F
    ld b, $0D                                     ; $5265: $06 $0D
    rlca                                          ; $5267: $07
    ld [$1729], sp                                ; $5268: $08 $29 $17
    ld a, [bc]                                    ; $526B: $0A
    nop                                           ; $526C: $00
    rra                                           ; $526D: $1F
    nop                                           ; $526E: $00
    ret nz                                        ; $526F: $C0

    ld c, b                                       ; $5270: $48
    ld de, $5280                                  ; $5271: $11 $80 $52
    nop                                           ; $5274: $00
    inc bc                                        ; $5275: $03
    nop                                           ; $5276: $00
    rra                                           ; $5277: $1F
    dec b                                         ; $5278: $05
    ret nz                                        ; $5279: $C0

    ld c, b                                       ; $527A: $48
    ld de, $5280                                  ; $527B: $11 $80 $52
    nop                                           ; $527E: $00
    inc bc                                        ; $527F: $03
    rlca                                          ; $5280: $07
    ld de, $00EE                                  ; $5281: $11 $EE $00
    rla                                           ; $5284: $17
    or $02                                        ; $5285: $F6 $02

jr_009_5287:
    jr jr_009_5287                                ; $5287: $18 $FE

    inc b                                         ; $5289: $04
    ld [hl+], a                                   ; $528A: $22
    rlca                                          ; $528B: $07
    ld b, $26                                     ; $528C: $06 $26
    rst RST_38                                    ; $528E: $FF
    ld [$0732], sp                                ; $528F: $08 $32 $07
    ld a, [bc]                                    ; $5292: $0A
    ld a, [hl-]                                   ; $5293: $3A
    rst RST_38                                    ; $5294: $FF
    inc c                                         ; $5295: $0C
    nop                                           ; $5296: $00
    rra                                           ; $5297: $1F
    nop                                           ; $5298: $00
    and b                                         ; $5299: $A0
    ld c, c                                       ; $529A: $49
    ld de, $52BE                                  ; $529B: $11 $BE $52
    nop                                           ; $529E: $00
    dec c                                         ; $529F: $0D
    nop                                           ; $52A0: $00
    rra                                           ; $52A1: $1F
    dec b                                         ; $52A2: $05
    and b                                         ; $52A3: $A0
    ld c, c                                       ; $52A4: $49
    ld de, $52BE                                  ; $52A5: $11 $BE $52
    nop                                           ; $52A8: $00
    dec c                                         ; $52A9: $0D
    ld h, b                                       ; $52AA: $60
    rra                                           ; $52AB: $1F
    nop                                           ; $52AC: $00
    and b                                         ; $52AD: $A0
    ld c, c                                       ; $52AE: $49
    ld de, $52BE                                  ; $52AF: $11 $BE $52
    nop                                           ; $52B2: $00
    db $EC                                        ; $52B3: $EC
    ld h, b                                       ; $52B4: $60
    rra                                           ; $52B5: $1F
    dec b                                         ; $52B6: $05
    and b                                         ; $52B7: $A0
    ld c, c                                       ; $52B8: $49
    ld de, $52BE                                  ; $52B9: $11 $BE $52
    nop                                           ; $52BC: $00
    db $EC                                        ; $52BD: $EC
    rlca                                          ; $52BE: $07
    rla                                           ; $52BF: $17
    di                                            ; $52C0: $F3
    nop                                           ; $52C1: $00
    daa                                           ; $52C2: $27
    di                                            ; $52C3: $F3
    ld [bc], a                                    ; $52C4: $02
    inc de                                        ; $52C5: $13
    ei                                            ; $52C6: $FB
    inc b                                         ; $52C7: $04
    inc hl                                        ; $52C8: $23
    ei                                            ; $52C9: $FB
    ld b, $18                                     ; $52CA: $06 $18
    inc bc                                        ; $52CC: $03
    ld [$0308], sp                                ; $52CD: $08 $08 $03
    ld a, [bc]                                    ; $52D0: $0A
    ld [de], a                                    ; $52D1: $12
    dec bc                                        ; $52D2: $0B
    inc c                                         ; $52D3: $0C
    nop                                           ; $52D4: $00
    rra                                           ; $52D5: $1F
    nop                                           ; $52D6: $00
    add b                                         ; $52D7: $80
    ld c, d                                       ; $52D8: $4A
    ld de, $52F2                                  ; $52D9: $11 $F2 $52
    nop                                           ; $52DC: $00
    dec c                                         ; $52DD: $0D
    nop                                           ; $52DE: $00
    rra                                           ; $52DF: $1F
    dec b                                         ; $52E0: $05
    add b                                         ; $52E1: $80
    ld c, d                                       ; $52E2: $4A
    ld de, $52F2                                  ; $52E3: $11 $F2 $52
    nop                                           ; $52E6: $00
    dec c                                         ; $52E7: $0D
    ld h, b                                       ; $52E8: $60
    rra                                           ; $52E9: $1F
    nop                                           ; $52EA: $00
    add b                                         ; $52EB: $80
    ld c, d                                       ; $52EC: $4A
    ld de, $52F2                                  ; $52ED: $11 $F2 $52
    nop                                           ; $52F0: $00
    db $EC                                        ; $52F1: $EC
    ld b, $11                                     ; $52F2: $06 $11
    ldh a, [c]                                    ; $52F4: $F2
    nop                                           ; $52F5: $00
    ld hl, $02F4                                  ; $52F6: $21 $F4 $02
    ld de, $04FA                                  ; $52F9: $11 $FA $04
    ld hl, $06FC                                  ; $52FC: $21 $FC $06
    ld de, $0802                                  ; $52FF: $11 $02 $08
    ld hl, $0A04                                  ; $5302: $21 $04 $0A
    nop                                           ; $5305: $00
    dec e                                         ; $5306: $1D
    nop                                           ; $5307: $00
    ld b, b                                       ; $5308: $40
    ld c, e                                       ; $5309: $4B
    ld de, $530F                                  ; $530A: $11 $0F $53
    ld a, [$0400]                                 ; $530D: $FA $00 $04
    ld [hl], $F6                                  ; $5310: $36 $F6
    nop                                           ; $5312: $00
    ld [hl-], a                                   ; $5313: $32
    cp $02                                        ; $5314: $FE $02
    jr nc, @+$08                                  ; $5316: $30 $06

    inc b                                         ; $5318: $04
    ld sp, $060E                                  ; $5319: $31 $0E $06
    nop                                           ; $531C: $00
    ld e, $00                                     ; $531D: $1E $00
    ret nz                                        ; $531F: $C0

    ld c, e                                       ; $5320: $4B
    ld de, $5330                                  ; $5321: $11 $30 $53
    db $FD                                        ; $5324: $FD
    nop                                           ; $5325: $00
    nop                                           ; $5326: $00
    rra                                           ; $5327: $1F
    nop                                           ; $5328: $00
    ret nz                                        ; $5329: $C0

    ld c, e                                       ; $532A: $4B
    ld de, $5330                                  ; $532B: $11 $30 $53
    db $FD                                        ; $532E: $FD
    ld hl, sp+$03                                 ; $532F: $F8 $03
    inc sp                                        ; $5331: $33
    rst RST_38                                    ; $5332: $FF
    nop                                           ; $5333: $00
    dec [hl]                                      ; $5334: $35
    rst RST_30                                    ; $5335: $F7
    ld [bc], a                                    ; $5336: $02
    ld a, [hl-]                                   ; $5337: $3A
    rst RST_28                                    ; $5338: $EF
    inc b                                         ; $5339: $04
    nop                                           ; $533A: $00
    dec e                                         ; $533B: $1D
    nop                                           ; $533C: $00
    ld b, b                                       ; $533D: $40
    ld c, [hl]                                    ; $533E: $4E
    ld de, $534E                                  ; $533F: $11 $4E $53
    ld sp, hl                                     ; $5342: $F9
    nop                                           ; $5343: $00
    jr nz, jr_009_5363                            ; $5344: $20 $1D

    nop                                           ; $5346: $00
    ld b, b                                       ; $5347: $40
    ld c, [hl]                                    ; $5348: $4E
    ld de, $534E                                  ; $5349: $11 $4E $53
    rlca                                          ; $534C: $07
    nop                                           ; $534D: $00
    ld b, $2D                                     ; $534E: $06 $2D
    db $FD                                        ; $5350: $FD
    nop                                           ; $5351: $00
    dec a                                         ; $5352: $3D
    db $FD                                        ; $5353: $FD
    ld [bc], a                                    ; $5354: $02
    ld a, [hl+]                                   ; $5355: $2A
    dec b                                         ; $5356: $05
    inc b                                         ; $5357: $04
    dec hl                                        ; $5358: $2B
    dec c                                         ; $5359: $0D
    ld b, $3A                                     ; $535A: $06 $3A
    dec b                                         ; $535C: $05
    ld [$0D3B], sp                                ; $535D: $08 $3B $0D
    ld a, [bc]                                    ; $5360: $0A
    nop                                           ; $5361: $00
    nop                                           ; $5362: $00

jr_009_5363:
    ld c, a                                       ; $5363: $4F
    ld de, $5369                                  ; $5364: $11 $69 $53
    ld hl, sp+$00                                 ; $5367: $F8 $00
    dec b                                         ; $5369: $05
    add hl, hl                                    ; $536A: $29
    rst RST_28                                    ; $536B: $EF
    nop                                           ; $536C: $00
    inc l                                         ; $536D: $2C
    rst RST_30                                    ; $536E: $F7
    ld [bc], a                                    ; $536F: $02
    ld l, $FF                                     ; $5370: $2E $FF
    inc b                                         ; $5372: $04
    inc a                                         ; $5373: $3C
    rst RST_30                                    ; $5374: $F7
    ld b, $3E                                     ; $5375: $06 $3E
    rst RST_38                                    ; $5377: $FF
    ld [$A000], sp                                ; $5378: $08 $00 $A0
    ld c, a                                       ; $537B: $4F
    ld de, $5381                                  ; $537C: $11 $81 $53
    ld hl, sp+$00                                 ; $537F: $F8 $00
    inc b                                         ; $5381: $04
    ld hl, $00F7                                  ; $5382: $21 $F7 $00
    ld sp, $02F7                                  ; $5385: $31 $F7 $02
    ld l, $FF                                     ; $5388: $2E $FF
    inc b                                         ; $538A: $04
    ld a, $FF                                     ; $538B: $3E $FF
    ld b, $00                                     ; $538D: $06 $00
    dec e                                         ; $538F: $1D
    ld d, c                                       ; $5390: $51
    jr nz, @+$52                                  ; $5391: $20 $50

    ld de, $53AC                                  ; $5393: $11 $AC $53
    db $FD                                        ; $5396: $FD
    nop                                           ; $5397: $00
    nop                                           ; $5398: $00
    dec e                                         ; $5399: $1D
    nop                                           ; $539A: $00
    jr nz, jr_009_53ED                            ; $539B: $20 $50

    ld de, $53AC                                  ; $539D: $11 $AC $53
    nop                                           ; $53A0: $00
    nop                                           ; $53A1: $00
    nop                                           ; $53A2: $00
    cp h                                          ; $53A3: $BC
    nop                                           ; $53A4: $00

jr_009_53A5:
    jr nz, @+$52                                  ; $53A5: $20 $50

    ld de, $53AC                                  ; $53A7: $11 $AC $53
    db $FD                                        ; $53AA: $FD
    nop                                           ; $53AB: $00
    add hl, bc                                    ; $53AC: $09
    ld a, [de]                                    ; $53AD: $1A
    db $EB                                        ; $53AE: $EB
    nop                                           ; $53AF: $00
    jr nz, jr_009_53A5                            ; $53B0: $20 $F3

    ld [bc], a                                    ; $53B2: $02
    inc h                                         ; $53B3: $24
    ei                                            ; $53B4: $FB
    inc b                                         ; $53B5: $04
    inc d                                         ; $53B6: $14
    ei                                            ; $53B7: $FB
    ld b, $30                                     ; $53B8: $06 $30
    inc bc                                        ; $53BA: $03
    ld [$0B2E], sp                                ; $53BB: $08 $2E $0B
    ld a, [bc]                                    ; $53BE: $0A
    jr nz, jr_009_53C4                            ; $53BF: $20 $03

    inc c                                         ; $53C1: $0C
    ld a, $0B                                     ; $53C2: $3E $0B

jr_009_53C4:
    ld c, $1A                                     ; $53C4: $0E $1A
    db $E3                                        ; $53C6: $E3
    stop                                          ; $53C7: $10 $00
    dec e                                         ; $53C9: $1D
    ld d, d                                       ; $53CA: $52
    ld b, b                                       ; $53CB: $40
    ld d, c                                       ; $53CC: $51
    ld de, $53E6                                  ; $53CD: $11 $E6 $53
    dec b                                         ; $53D0: $05
    nop                                           ; $53D1: $00
    nop                                           ; $53D2: $00
    rra                                           ; $53D3: $1F
    nop                                           ; $53D4: $00
    ld b, b                                       ; $53D5: $40
    ld d, c                                       ; $53D6: $51
    ld de, $53E6                                  ; $53D7: $11 $E6 $53
    dec b                                         ; $53DA: $05
    db $FD                                        ; $53DB: $FD
    jr nz, jr_009_53FB                            ; $53DC: $20 $1D

    nop                                           ; $53DE: $00
    ld b, b                                       ; $53DF: $40
    ld d, c                                       ; $53E0: $51
    ld de, $53E6                                  ; $53E1: $11 $E6 $53
    db $FD                                        ; $53E4: $FD
    db $FD                                        ; $53E5: $FD
    inc b                                         ; $53E6: $04
    ld a, [hl+]                                   ; $53E7: $2A
    rst RST_20                                    ; $53E8: $E7
    nop                                           ; $53E9: $00
    ld a, [hl+]                                   ; $53EA: $2A
    rst RST_28                                    ; $53EB: $EF
    ld [bc], a                                    ; $53EC: $02

jr_009_53ED:
    inc l                                         ; $53ED: $2C
    rst RST_30                                    ; $53EE: $F7
    inc b                                         ; $53EF: $04
    daa                                           ; $53F0: $27
    rst RST_38                                    ; $53F1: $FF
    ld b, $00                                     ; $53F2: $06 $00
    ret nz                                        ; $53F4: $C0

    ld d, c                                       ; $53F5: $51
    ld de, $53FB                                  ; $53F6: $11 $FB $53
    dec b                                         ; $53F9: $05
    nop                                           ; $53FA: $00

jr_009_53FB:
    dec b                                         ; $53FB: $05
    jr z, jr_009_5405                             ; $53FC: $28 $07

    nop                                           ; $53FE: $00
    jr z, @+$11                                   ; $53FF: $28 $0F

    ld [bc], a                                    ; $5401: $02
    jr c, @+$0E                                   ; $5402: $38 $0C

    inc b                                         ; $5404: $04

jr_009_5405:
    jr c, jr_009_541B                             ; $5405: $38 $14

    ld b, $38                                     ; $5407: $06 $38
    inc e                                         ; $5409: $1C
    ld [$6000], sp                                ; $540A: $08 $00 $60
    ld d, d                                       ; $540D: $52
    ld de, $5423                                  ; $540E: $11 $23 $54
    dec c                                         ; $5411: $0D
    nop                                           ; $5412: $00
    nop                                           ; $5413: $00
    ld h, b                                       ; $5414: $60
    ld d, d                                       ; $5415: $52
    ld de, $5423                                  ; $5416: $11 $23 $54
    dec c                                         ; $5419: $0D
    db $FD                                        ; $541A: $FD

jr_009_541B:
    jr nz, jr_009_547D                            ; $541B: $20 $60

    ld d, d                                       ; $541D: $52
    ld de, $5423                                  ; $541E: $11 $23 $54
    push af                                       ; $5421: $F5
    db $FD                                        ; $5422: $FD
    ld [bc], a                                    ; $5423: $02
    dec h                                         ; $5424: $25
    rst RST_38                                    ; $5425: $FF
    nop                                           ; $5426: $00
    inc hl                                        ; $5427: $23
    rlca                                          ; $5428: $07
    ld [bc], a                                    ; $5429: $02
    nop                                           ; $542A: $00
    and b                                         ; $542B: $A0

jr_009_542C:
    ld d, d                                       ; $542C: $52
    ld de, $5432                                  ; $542D: $11 $32 $54
    push af                                       ; $5430: $F5
    nop                                           ; $5431: $00
    ld [bc], a                                    ; $5432: $02
    jr nc, jr_009_542C                            ; $5433: $30 $F7

    nop                                           ; $5435: $00
    jr nc, @+$01                                  ; $5436: $30 $FF

    ld [bc], a                                    ; $5438: $02
    nop                                           ; $5439: $00
    ld e, $53                                     ; $543A: $1E $53
    ldh [rHDMA2], a                               ; $543C: $E0 $52
    ld de, $544D                                  ; $543E: $11 $4D $54
    rst RST_38                                    ; $5441: $FF
    nop                                           ; $5442: $00
    jr nz, jr_009_5463                            ; $5443: $20 $1E

    ld e, c                                       ; $5445: $59
    ldh [rHDMA2], a                               ; $5446: $E0 $52
    ld de, $544D                                  ; $5448: $11 $4D $54
    ld sp, hl                                     ; $544B: $F9
    nop                                           ; $544C: $00
    ld b, $28                                     ; $544D: $06 $28
    db $E4                                        ; $544F: $E4
    nop                                           ; $5450: $00
    dec l                                         ; $5451: $2D
    db $EC                                        ; $5452: $EC
    ld [bc], a                                    ; $5453: $02
    ld sp, $04F4                                  ; $5454: $31 $F4 $04
    ld [hl-], a                                   ; $5457: $32
    db $FC                                        ; $5458: $FC
    ld b, $31                                     ; $5459: $06 $31
    inc b                                         ; $545B: $04
    ld [$0C32], sp                                ; $545C: $08 $32 $0C
    ld a, [bc]                                    ; $545F: $0A
    nop                                           ; $5460: $00
    ld e, $54                                     ; $5461: $1E $54

jr_009_5463:
    and b                                         ; $5463: $A0
    ld d, e                                       ; $5464: $53
    ld de, $546A                                  ; $5465: $11 $6A $54
    db $FD                                        ; $5468: $FD
    dec d                                         ; $5469: $15
    dec bc                                        ; $546A: $0B
    ld de, $00E8                                  ; $546B: $11 $E8 $00
    ld hl, $02E8                                  ; $546E: $21 $E8 $02
    add hl, bc                                    ; $5471: $09
    ldh a, [rDIV]                                 ; $5472: $F0 $04
    add hl, de                                    ; $5474: $19
    ldh a, [rTMA]                                 ; $5475: $F0 $06
    dec bc                                        ; $5477: $0B
    ld hl, sp+$08                                 ; $5478: $F8 $08
    dec de                                        ; $547A: $1B
    ld hl, sp+$0A                                 ; $547B: $F8 $0A

jr_009_547D:
    dec d                                         ; $547D: $15
    nop                                           ; $547E: $00
    inc c                                         ; $547F: $0C
    inc de                                        ; $5480: $13
    ld [$160E], sp                                ; $5481: $08 $0E $16
    db $10                                        ; $5484: $10
    db $10                                        ; $5485: $10
    inc hl                                        ; $5486: $23
    ld [$0512], sp                                ; $5487: $08 $12 $05
    nop                                           ; $548A: $00
    inc d                                         ; $548B: $14
    nop                                           ; $548C: $00
    ld e, $54                                     ; $548D: $1E $54
    nop                                           ; $548F: $00
    ld d, l                                       ; $5490: $55
    ld de, $5496                                  ; $5491: $11 $96 $54
    db $FD                                        ; $5494: $FD
    dec d                                         ; $5495: $15
    dec bc                                        ; $5496: $0B
    dec de                                        ; $5497: $1B
    rst RST_20                                    ; $5498: $E7
    nop                                           ; $5499: $00
    ld [hl+], a                                   ; $549A: $22
    db $EC                                        ; $549B: $EC
    ld [bc], a                                    ; $549C: $02
    jr nz, @-$0A                                  ; $549D: $20 $F4

    inc b                                         ; $549F: $04
    jr nz, @-$02                                  ; $54A0: $20 $FC

    ld b, $20                                     ; $54A2: $06 $20
    inc b                                         ; $54A4: $04
    ld [$EF10], sp                                ; $54A5: $08 $10 $EF
    ld a, [bc]                                    ; $54A8: $0A
    db $10                                        ; $54A9: $10
    rst RST_30                                    ; $54AA: $F7
    inc c                                         ; $54AB: $0C
    db $10                                        ; $54AC: $10
    rst RST_38                                    ; $54AD: $FF
    ld c, $00                                     ; $54AE: $0E $00
    rst RST_28                                    ; $54B0: $EF
    stop                                          ; $54B1: $10 $00
    rst RST_30                                    ; $54B3: $F7
    ld [de], a                                    ; $54B4: $12
    nop                                           ; $54B5: $00
    rst RST_38                                    ; $54B6: $FF
    inc d                                         ; $54B7: $14
    nop                                           ; $54B8: $00
    rra                                           ; $54B9: $1F
    ld d, l                                       ; $54BA: $55
    ld h, b                                       ; $54BB: $60
    ld d, [hl]                                    ; $54BC: $56
    ld de, $54C2                                  ; $54BD: $11 $C2 $54
    nop                                           ; $54C0: $00
    add hl, bc                                    ; $54C1: $09
    dec bc                                        ; $54C2: $0B
    db $10                                        ; $54C3: $10
    rst RST_20                                    ; $54C4: $E7
    nop                                           ; $54C5: $00
    jr nz, @-$17                                  ; $54C6: $20 $E7

    ld [bc], a                                    ; $54C8: $02
    inc e                                         ; $54C9: $1C
    rst RST_28                                    ; $54CA: $EF
    inc b                                         ; $54CB: $04
    inc l                                         ; $54CC: $2C
    rst RST_28                                    ; $54CD: $EF
    ld b, $1B                                     ; $54CE: $06 $1B
    rst RST_30                                    ; $54D0: $F7
    ld [$F72B], sp                                ; $54D1: $08 $2B $F7
    ld a, [bc]                                    ; $54D4: $0A
    add hl, de                                    ; $54D5: $19
    rst RST_38                                    ; $54D6: $FF
    inc c                                         ; $54D7: $0C
    add hl, hl                                    ; $54D8: $29
    rst RST_38                                    ; $54D9: $FF
    ld c, $0A                                     ; $54DA: $0E $0A
    rlca                                          ; $54DC: $07
    db $10                                        ; $54DD: $10
    ld a, [de]                                    ; $54DE: $1A
    rlca                                          ; $54DF: $07
    ld [de], a                                    ; $54E0: $12
    inc de                                        ; $54E1: $13
    rrca                                          ; $54E2: $0F
    inc d                                         ; $54E3: $14
    nop                                           ; $54E4: $00
    rra                                           ; $54E5: $1F
    ld d, l                                       ; $54E6: $55
    ret nz                                        ; $54E7: $C0

    ld d, a                                       ; $54E8: $57
    ld de, $54EE                                  ; $54E9: $11 $EE $54
    nop                                           ; $54EC: $00
    add hl, bc                                    ; $54ED: $09
    ld a, [bc]                                    ; $54EE: $0A
    ld a, [bc]                                    ; $54EF: $0A
    rst RST_20                                    ; $54F0: $E7
    nop                                           ; $54F1: $00
    inc bc                                        ; $54F2: $03
    rst RST_28                                    ; $54F3: $EF
    ld [bc], a                                    ; $54F4: $02
    inc bc                                        ; $54F5: $03
    rst RST_30                                    ; $54F6: $F7
    inc b                                         ; $54F7: $04
    rst RST_38                                    ; $54F8: $FF
    rst RST_38                                    ; $54F9: $FF
    ld b, $13                                     ; $54FA: $06 $13
    rst RST_28                                    ; $54FC: $EF
    ld [$F713], sp                                ; $54FD: $08 $13 $F7
    ld a, [bc]                                    ; $5500: $0A
    ld de, $0CFF                                  ; $5501: $11 $FF $0C
    inc hl                                        ; $5504: $23
    db $F4                                        ; $5505: $F4
    ld c, $23                                     ; $5506: $0E $23
    db $FC                                        ; $5508: $FC
    db $10                                        ; $5509: $10
    daa                                           ; $550A: $27
    inc b                                         ; $550B: $04
    ld [de], a                                    ; $550C: $12
    nop                                           ; $550D: $00
    dec e                                         ; $550E: $1D
    nop                                           ; $550F: $00
    nop                                           ; $5510: $00
    ld e, c                                       ; $5511: $59
    ld de, $5535                                  ; $5512: $11 $35 $55
    ld a, [$2015]                                 ; $5515: $FA $15 $20
    dec e                                         ; $5518: $1D
    nop                                           ; $5519: $00
    nop                                           ; $551A: $00
    ld e, c                                       ; $551B: $59
    ld de, $5535                                  ; $551C: $11 $35 $55
    ld b, $15                                     ; $551F: $06 $15
    ld b, b                                       ; $5521: $40
    dec e                                         ; $5522: $1D
    nop                                           ; $5523: $00
    nop                                           ; $5524: $00
    ld e, c                                       ; $5525: $59
    ld de, $5535                                  ; $5526: $11 $35 $55
    ld a, [$60EB]                                 ; $5529: $FA $EB $60
    dec e                                         ; $552C: $1D
    nop                                           ; $552D: $00
    nop                                           ; $552E: $00
    ld e, c                                       ; $552F: $59
    ld de, $5535                                  ; $5530: $11 $35 $55
    ld b, $EB                                     ; $5533: $06 $EB
    inc b                                         ; $5535: $04
    jr @-$02                                      ; $5536: $18 $FC

    nop                                           ; $5538: $00
    jr jr_009_553F                                ; $5539: $18 $04

    ld [bc], a                                    ; $553B: $02
    rra                                           ; $553C: $1F
    inc c                                         ; $553D: $0C
    inc b                                         ; $553E: $04

jr_009_553F:
    jr z, jr_009_5545                             ; $553F: $28 $04

    ld b, $00                                     ; $5541: $06 $00
    add b                                         ; $5543: $80
    ld e, c                                       ; $5544: $59

jr_009_5545:
    ld de, $5562                                  ; $5545: $11 $62 $55
    ld a, [$2015]                                 ; $5548: $FA $15 $20
    add b                                         ; $554B: $80
    ld e, c                                       ; $554C: $59
    ld de, $5562                                  ; $554D: $11 $62 $55
    ld b, $15                                     ; $5550: $06 $15
    ld b, b                                       ; $5552: $40
    add b                                         ; $5553: $80
    ld e, c                                       ; $5554: $59
    ld de, $5562                                  ; $5555: $11 $62 $55
    ld a, [$60EB]                                 ; $5558: $FA $EB $60
    add b                                         ; $555B: $80
    ld e, c                                       ; $555C: $59
    ld de, $5562                                  ; $555D: $11 $62 $55
    ld b, $EB                                     ; $5560: $06 $EB
    inc bc                                        ; $5562: $03
    ld [$00FA], sp                                ; $5563: $08 $FA $00
    ld [$0202], sp                                ; $5566: $08 $02 $02
    ld [$040A], sp                                ; $5569: $08 $0A $04
    nop                                           ; $556C: $00
    dec e                                         ; $556D: $1D
    nop                                           ; $556E: $00
    ldh [$FF59], a                                ; $556F: $E0 $59
    ld de, $5576                                  ; $5571: $11 $76 $55
    nop                                           ; $5574: $00
    ld bc, $3007                                  ; $5575: $01 $07 $30
    ldh a, [c]                                    ; $5578: $F2
    nop                                           ; $5579: $00
    daa                                           ; $557A: $27
    ld a, [$3702]                                 ; $557B: $FA $02 $37
    ld a, [$2704]                                 ; $557E: $FA $04 $27
    ld [bc], a                                    ; $5581: $02
    ld b, $37                                     ; $5582: $06 $37
    ld [bc], a                                    ; $5584: $02
    ld [$0A2A], sp                                ; $5585: $08 $2A $0A
    ld a, [bc]                                    ; $5588: $0A
    ld a, [hl-]                                   ; $5589: $3A
    ld a, [bc]                                    ; $558A: $0A
    inc c                                         ; $558B: $0C
    nop                                           ; $558C: $00
    dec e                                         ; $558D: $1D
    nop                                           ; $558E: $00
    ret nz                                        ; $558F: $C0

    ld e, d                                       ; $5590: $5A
    ld de, $5596                                  ; $5591: $11 $96 $55
    nop                                           ; $5594: $00
    ld bc, $2E07                                  ; $5595: $01 $07 $2E
    ldh a, [c]                                    ; $5598: $F2
    nop                                           ; $5599: $00
    dec h                                         ; $559A: $25
    ld a, [$3502]                                 ; $559B: $FA $02 $35
    ld sp, hl                                     ; $559E: $F9
    inc b                                         ; $559F: $04
    dec h                                         ; $55A0: $25
    ld [bc], a                                    ; $55A1: $02
    ld b, $35                                     ; $55A2: $06 $35
    ld bc, $2508                                  ; $55A4: $01 $08 $25
    ld a, [bc]                                    ; $55A7: $0A
    ld a, [bc]                                    ; $55A8: $0A
    dec [hl]                                      ; $55A9: $35
    add hl, bc                                    ; $55AA: $09
    inc c                                         ; $55AB: $0C
    nop                                           ; $55AC: $00
    dec e                                         ; $55AD: $1D
    ld d, [hl]                                    ; $55AE: $56
    and b                                         ; $55AF: $A0
    ld e, e                                       ; $55B0: $5B
    ld de, $55DE                                  ; $55B1: $11 $DE $55
    ld hl, sp+$00                                 ; $55B4: $F8 $00
    nop                                           ; $55B6: $00
    dec e                                         ; $55B7: $1D
    ld d, [hl]                                    ; $55B8: $56
    and b                                         ; $55B9: $A0
    ld e, e                                       ; $55BA: $5B
    ld de, $55DE                                  ; $55BB: $11 $DE $55
    db $F4                                        ; $55BE: $F4
    nop                                           ; $55BF: $00
    nop                                           ; $55C0: $00
    dec e                                         ; $55C1: $1D
    ld d, [hl]                                    ; $55C2: $56
    and b                                         ; $55C3: $A0
    ld e, e                                       ; $55C4: $5B
    ld de, $55DE                                  ; $55C5: $11 $DE $55
    pop af                                        ; $55C8: $F1
    nop                                           ; $55C9: $00
    nop                                           ; $55CA: $00
    dec e                                         ; $55CB: $1D
    ld d, a                                       ; $55CC: $57
    and b                                         ; $55CD: $A0
    ld e, e                                       ; $55CE: $5B
    ld de, $55DE                                  ; $55CF: $11 $DE $55
    rst RST_28                                    ; $55D2: $EF
    nop                                           ; $55D3: $00
    nop                                           ; $55D4: $00
    dec e                                         ; $55D5: $1D
    ld d, a                                       ; $55D6: $57
    and b                                         ; $55D7: $A0
    ld e, e                                       ; $55D8: $5B
    ld de, $55DE                                  ; $55D9: $11 $DE $55
    xor $00                                       ; $55DC: $EE $00
    ld bc, $EF28                                  ; $55DE: $01 $28 $EF
    nop                                           ; $55E1: $00
    nop                                           ; $55E2: $00
    ret nz                                        ; $55E3: $C0

    ld e, e                                       ; $55E4: $5B
    ld de, $55EA                                  ; $55E5: $11 $EA $55
    ld hl, sp+$00                                 ; $55E8: $F8 $00
    ld b, $21                                     ; $55EA: $06 $21
    rst RST_30                                    ; $55EC: $F7
    nop                                           ; $55ED: $00
    ld sp, $02F8                                  ; $55EE: $31 $F8 $02
    ld sp, $0400                                  ; $55F1: $31 $00 $04
    ld [hl-], a                                   ; $55F4: $32
    ld [$3406], sp                                ; $55F5: $08 $06 $34
    db $10                                        ; $55F8: $10
    ld [$FF21], sp                                ; $55F9: $08 $21 $FF
    ld a, [bc]                                    ; $55FC: $0A
    nop                                           ; $55FD: $00
    dec e                                         ; $55FE: $1D
    nop                                           ; $55FF: $00
    ld h, b                                       ; $5600: $60
    ld e, [hl]                                    ; $5601: $5E
    ld de, $5607                                  ; $5602: $11 $07 $56
    nop                                           ; $5605: $00
    ld bc, $2C0C                                  ; $5606: $01 $0C $2C
    ldh a, [rP1]                                  ; $5609: $F0 $00
    add hl, hl                                    ; $560B: $29
    ld hl, sp+$02                                 ; $560C: $F8 $02
    daa                                           ; $560E: $27
    nop                                           ; $560F: $00
    inc b                                         ; $5610: $04
    dec h                                         ; $5611: $25
    ld [$2D06], sp                                ; $5612: $08 $06 $2D
    db $10                                        ; $5615: $10
    ld [$E831], sp                                ; $5616: $08 $31 $E8
    ld a, [bc]                                    ; $5619: $0A
    ld h, $18                                     ; $561A: $26 $18
    inc c                                         ; $561C: $0C
    dec [hl]                                      ; $561D: $35
    ld [$370E], sp                                ; $561E: $08 $0E $37
    nop                                           ; $5621: $00
    db $10                                        ; $5622: $10
    add hl, sp                                    ; $5623: $39
    ld hl, sp+$12                                 ; $5624: $F8 $12
    inc a                                         ; $5626: $3C
    ldh a, [rNR14]                                ; $5627: $F0 $14
    dec a                                         ; $5629: $3D
    db $10                                        ; $562A: $10
    ld d, $00                                     ; $562B: $16 $00
    dec e                                         ; $562D: $1D
    nop                                           ; $562E: $00
    add b                                         ; $562F: $80
    ld e, h                                       ; $5630: $5C
    ld de, $5636                                  ; $5631: $11 $36 $56
    db $FD                                        ; $5634: $FD
    nop                                           ; $5635: $00
    inc bc                                        ; $5636: $03
    dec l                                         ; $5637: $2D
    rst RST_28                                    ; $5638: $EF
    nop                                           ; $5639: $00
    inc sp                                        ; $563A: $33
    rst RST_30                                    ; $563B: $F7
    ld [bc], a                                    ; $563C: $02
    inc [hl]                                      ; $563D: $34
    rst RST_38                                    ; $563E: $FF
    inc b                                         ; $563F: $04
    nop                                           ; $5640: $00
    ldh [$FF5C], a                                ; $5641: $E0 $5C
    ld de, $5648                                  ; $5643: $11 $48 $56
    db $FD                                        ; $5646: $FD
    nop                                           ; $5647: $00
    inc bc                                        ; $5648: $03
    inc [hl]                                      ; $5649: $34
    rlca                                          ; $564A: $07
    nop                                           ; $564B: $00
    ld [hl], $0F                                  ; $564C: $36 $0F
    ld [bc], a                                    ; $564E: $02
    dec a                                         ; $564F: $3D
    rla                                           ; $5650: $17
    inc b                                         ; $5651: $04
    nop                                           ; $5652: $00
    ld b, b                                       ; $5653: $40
    ld e, l                                       ; $5654: $5D
    ld de, $565A                                  ; $5655: $11 $5A $56
    db $FD                                        ; $5658: $FD
    nop                                           ; $5659: $00
    inc bc                                        ; $565A: $03
    ld sp, $0007                                  ; $565B: $31 $07 $00
    jr nc, jr_009_566F                            ; $565E: $30 $0F

    ld [bc], a                                    ; $5660: $02
    dec [hl]                                      ; $5661: $35
    rla                                           ; $5662: $17
    inc b                                         ; $5663: $04
    nop                                           ; $5664: $00
    and b                                         ; $5665: $A0
    ld e, l                                       ; $5666: $5D
    ld de, $566C                                  ; $5667: $11 $6C $56
    db $FD                                        ; $566A: $FD
    nop                                           ; $566B: $00
    inc bc                                        ; $566C: $03
    ld [hl-], a                                   ; $566D: $32
    rlca                                          ; $566E: $07

jr_009_566F:
    nop                                           ; $566F: $00
    jr nc, jr_009_5681                            ; $5670: $30 $0F

    ld [bc], a                                    ; $5672: $02
    jr z, jr_009_5688                             ; $5673: $28 $13

    inc b                                         ; $5675: $04
    nop                                           ; $5676: $00
    nop                                           ; $5677: $00
    ld e, [hl]                                    ; $5678: $5E
    ld de, $567E                                  ; $5679: $11 $7E $56
    db $FD                                        ; $567C: $FD
    nop                                           ; $567D: $00
    inc bc                                        ; $567E: $03
    inc [hl]                                      ; $567F: $34
    rlca                                          ; $5680: $07

jr_009_5681:
    nop                                           ; $5681: $00
    inc [hl]                                      ; $5682: $34
    rrca                                          ; $5683: $0F
    ld [bc], a                                    ; $5684: $02
    daa                                           ; $5685: $27
    rla                                           ; $5686: $17
    inc b                                         ; $5687: $04

jr_009_5688:
    nop                                           ; $5688: $00
    dec e                                         ; $5689: $1D
    nop                                           ; $568A: $00
    jr nz, jr_009_56D9                            ; $568B: $20 $4C

    ld de, $5692                                  ; $568D: $11 $92 $56
    ei                                            ; $5690: $FB
    nop                                           ; $5691: $00
    ld b, $2B                                     ; $5692: $06 $2B
    db $F4                                        ; $5694: $F4
    nop                                           ; $5695: $00
    dec l                                         ; $5696: $2D
    db $FC                                        ; $5697: $FC
    ld [bc], a                                    ; $5698: $02
    cpl                                           ; $5699: $2F
    inc bc                                        ; $569A: $03
    inc b                                         ; $569B: $04
    ld l, $0B                                     ; $569C: $2E $0B
    ld b, $32                                     ; $569E: $06 $32
    inc de                                        ; $56A0: $13
    ld [$0A3E], sp                                ; $56A1: $08 $3E $0A
    ld a, [bc]                                    ; $56A4: $0A
    nop                                           ; $56A5: $00
    dec e                                         ; $56A6: $1D
    nop                                           ; $56A7: $00
    ldh [$FF4C], a                                ; $56A8: $E0 $4C
    ld de, $56D7                                  ; $56AA: $11 $D7 $56
    ld a, [$2000]                                 ; $56AD: $FA $00 $20
    dec e                                         ; $56B0: $1D
    nop                                           ; $56B1: $00
    ldh [$FF4C], a                                ; $56B2: $E0 $4C
    ld de, $56D7                                  ; $56B4: $11 $D7 $56
    ld b, $00                                     ; $56B7: $06 $00
    jr nz, jr_009_56D8                            ; $56B9: $20 $1D

    ld d, b                                       ; $56BB: $50
    ldh [$FF4C], a                                ; $56BC: $E0 $4C
    ld de, $56D7                                  ; $56BE: $11 $D7 $56
    ld b, $00                                     ; $56C1: $06 $00
    ld b, b                                       ; $56C3: $40
    dec e                                         ; $56C4: $1D
    nop                                           ; $56C5: $00
    ldh [$FF4C], a                                ; $56C6: $E0 $4C
    ld de, $56D7                                  ; $56C8: $11 $D7 $56
    ld a, [$6000]                                 ; $56CB: $FA $00 $60
    dec e                                         ; $56CE: $1D
    nop                                           ; $56CF: $00
    ldh [$FF4C], a                                ; $56D0: $E0 $4C
    ld de, $56D7                                  ; $56D2: $11 $D7 $56
    ld b, $00                                     ; $56D5: $06 $00
    inc bc                                        ; $56D7: $03

jr_009_56D8:
    ld [hl-], a                                   ; $56D8: $32

jr_009_56D9:
    rst RST_38                                    ; $56D9: $FF
    nop                                           ; $56DA: $00
    inc [hl]                                      ; $56DB: $34
    rst RST_30                                    ; $56DC: $F7
    ld [bc], a                                    ; $56DD: $02
    add hl, sp                                    ; $56DE: $39
    rst RST_28                                    ; $56DF: $EF
    inc b                                         ; $56E0: $04
    nop                                           ; $56E1: $00
    ld b, b                                       ; $56E2: $40
    ld c, l                                       ; $56E3: $4D
    ld de, $5701                                  ; $56E4: $11 $01 $57
    ld a, [$2000]                                 ; $56E7: $FA $00 $20
    ld b, b                                       ; $56EA: $40
    ld c, l                                       ; $56EB: $4D
    ld de, $5701                                  ; $56EC: $11 $01 $57
    ld b, $00                                     ; $56EF: $06 $00
    ld b, b                                       ; $56F1: $40
    ld b, b                                       ; $56F2: $40
    ld c, l                                       ; $56F3: $4D
    ld de, $5701                                  ; $56F4: $11 $01 $57
    ld a, [$6000]                                 ; $56F7: $FA $00 $60
    ld b, b                                       ; $56FA: $40
    ld c, l                                       ; $56FB: $4D
    ld de, $5701                                  ; $56FC: $11 $01 $57
    ld b, $00                                     ; $56FF: $06 $00
    inc bc                                        ; $5701: $03
    jr nc, jr_009_570B                            ; $5702: $30 $07

    nop                                           ; $5704: $00
    jr nc, jr_009_5716                            ; $5705: $30 $0F

    ld [bc], a                                    ; $5707: $02
    jr nz, jr_009_5715                            ; $5708: $20 $0B

    inc b                                         ; $570A: $04

jr_009_570B:
    jr nz, @+$20                                  ; $570B: $20 $1E

    nop                                           ; $570D: $00
    and b                                         ; $570E: $A0
    ld c, l                                       ; $570F: $4D
    ld de, $571F                                  ; $5710: $11 $1F $57
    cp $00                                        ; $5713: $FE $00

jr_009_5715:
    ld h, b                                       ; $5715: $60

jr_009_5716:
    ld e, $00                                     ; $5716: $1E $00
    and b                                         ; $5718: $A0
    ld c, l                                       ; $5719: $4D
    ld de, $571F                                  ; $571A: $11 $1F $57
    dec bc                                        ; $571D: $0B
    db $F4                                        ; $571E: $F4
    dec b                                         ; $571F: $05
    scf                                           ; $5720: $37
    jp hl                                         ; $5721: $E9


    nop                                           ; $5722: $00
    ld sp, $02F1                                  ; $5723: $31 $F1 $02
    ld sp, $04F9                                  ; $5726: $31 $F9 $04
    ld [hl-], a                                   ; $5729: $32
    ld bc, $3606                                  ; $572A: $01 $06 $36
    add hl, bc                                    ; $572D: $09
    ld [$1D00], sp                                ; $572E: $08 $00 $1D
    ld e, b                                       ; $5731: $58
    ldh [$FF5F], a                                ; $5732: $E0 $5F
    ld de, $5743                                  ; $5734: $11 $43 $57
    stop                                          ; $5737: $10 $00
    nop                                           ; $5739: $00
    nop                                           ; $573A: $00
    nop                                           ; $573B: $00
    ldh [$FF5F], a                                ; $573C: $E0 $5F
    ld de, $5743                                  ; $573E: $11 $43 $57
    db $10                                        ; $5741: $10
    ld c, b                                       ; $5742: $48
    ld c, $2E                                     ; $5743: $0E $2E
    pop hl                                        ; $5745: $E1
    nop                                           ; $5746: $00
    add hl, hl                                    ; $5747: $29

jr_009_5748:
    jp hl                                         ; $5748: $E9


    ld [bc], a                                    ; $5749: $02
    jr z, @-$0D                                   ; $574A: $28 $F1

    inc b                                         ; $574C: $04
    jr z, jr_009_5748                             ; $574D: $28 $F9

    ld b, $28                                     ; $574F: $06 $28
    ld bc, $2808                                  ; $5751: $01 $08 $28
    add hl, bc                                    ; $5754: $09
    ld a, [bc]                                    ; $5755: $0A
    ld a, $E1                                     ; $5756: $3E $E1
    inc c                                         ; $5758: $0C
    add hl, sp                                    ; $5759: $39

jr_009_575A:
    jp hl                                         ; $575A: $E9


    ld c, $38                                     ; $575B: $0E $38
    pop af                                        ; $575D: $F1
    db $10                                        ; $575E: $10
    jr c, jr_009_575A                             ; $575F: $38 $F9

    ld [de], a                                    ; $5761: $12
    jr c, jr_009_5765                             ; $5762: $38 $01

    inc d                                         ; $5764: $14

jr_009_5765:
    jr c, jr_009_5770                             ; $5765: $38 $09

    ld d, $2A                                     ; $5767: $16 $2A
    ld de, $1918                                  ; $5769: $11 $18 $19
    ld de, $001A                                  ; $576C: $11 $1A $00
    nop                                           ; $576F: $00

jr_009_5770:
    nop                                           ; $5770: $00
    and b                                         ; $5771: $A0
    ld h, c                                       ; $5772: $61
    ld de, $5778                                  ; $5773: $11 $78 $57
    nop                                           ; $5776: $00
    nop                                           ; $5777: $00
    inc bc                                        ; $5778: $03
    inc sp                                        ; $5779: $33
    inc c                                         ; $577A: $0C
    nop                                           ; $577B: $00
    inc sp                                        ; $577C: $33
    inc d                                         ; $577D: $14
    ld [bc], a                                    ; $577E: $02
    jr c, @+$1E                                   ; $577F: $38 $1C

    inc b                                         ; $5781: $04
    nop                                           ; $5782: $00
    dec e                                         ; $5783: $1D
    ld [bc], a                                    ; $5784: $02
    nop                                           ; $5785: $00
    ld h, d                                       ; $5786: $62
    ld de, $578C                                  ; $5787: $11 $8C $57
    nop                                           ; $578A: $00
    ld [de], a                                    ; $578B: $12
    add hl, bc                                    ; $578C: $09
    ld de, $000F                                  ; $578D: $11 $0F $00
    dec d                                         ; $5790: $15
    rlca                                          ; $5791: $07
    ld [bc], a                                    ; $5792: $02
    dec b                                         ; $5793: $05
    rlca                                          ; $5794: $07
    inc b                                         ; $5795: $04
    inc de                                        ; $5796: $13
    rst RST_38                                    ; $5797: $FF
    ld b, $18                                     ; $5798: $06 $18
    rst RST_30                                    ; $579A: $F7
    ld [$EF1F], sp                                ; $579B: $08 $1F $EF
    ld a, [bc]                                    ; $579E: $0A
    daa                                           ; $579F: $27
    rst RST_20                                    ; $57A0: $E7
    inc c                                         ; $57A1: $0C
    inc hl                                        ; $57A2: $23
    rst RST_38                                    ; $57A3: $FF
    ld c, $28                                     ; $57A4: $0E $28
    rst RST_30                                    ; $57A6: $F7
    stop                                          ; $57A7: $10 $00
    dec e                                         ; $57A9: $1D
    ld [bc], a                                    ; $57AA: $02
    jr nz, jr_009_5810                            ; $57AB: $20 $63

    ld de, $57B2                                  ; $57AD: $11 $B2 $57
    ld a, [$0700]                                 ; $57B0: $FA $00 $07
    scf                                           ; $57B3: $37
    ld c, $00                                     ; $57B4: $0E $00
    daa                                           ; $57B6: $27
    ld c, $02                                     ; $57B7: $0E $02
    ld e, $06                                     ; $57B9: $1E $06
    inc b                                         ; $57BB: $04
    ld l, $06                                     ; $57BC: $2E $06
    ld b, $18                                     ; $57BE: $06 $18
    cp $08                                        ; $57C0: $FE $08

jr_009_57C2:
    jr z, jr_009_57C2                             ; $57C2: $28 $FE

    ld a, [bc]                                    ; $57C4: $0A
    ld de, $0CF8                                  ; $57C5: $11 $F8 $0C

jr_009_57C8:
    nop                                           ; $57C8: $00
    dec e                                         ; $57C9: $1D
    ld [bc], a                                    ; $57CA: $02
    nop                                           ; $57CB: $00
    ld h, h                                       ; $57CC: $64
    ld de, $57D2                                  ; $57CD: $11 $D2 $57
    ld [$0900], sp                                ; $57D0: $08 $00 $09

jr_009_57D3:
    jr nc, @-$16                                  ; $57D3: $30 $E8

    nop                                           ; $57D5: $00
    jr nc, jr_009_57C8                            ; $57D6: $30 $F0

    ld [bc], a                                    ; $57D8: $02
    jr nc, jr_009_57D3                            ; $57D9: $30 $F8

    inc b                                         ; $57DB: $04
    jr nc, jr_009_57DE                            ; $57DC: $30 $00

jr_009_57DE:
    ld b, $20                                     ; $57DE: $06 $20
    rst RST_28                                    ; $57E0: $EF
    ld [$F720], sp                                ; $57E1: $08 $20 $F7
    ld a, [bc]                                    ; $57E4: $0A
    jr nz, @+$01                                  ; $57E5: $20 $FF

    inc c                                         ; $57E7: $0C
    jr z, jr_009_57F1                             ; $57E8: $28 $07

    ld c, $28                                     ; $57EA: $0E $28
    rrca                                          ; $57EC: $0F
    db $10                                        ; $57ED: $10
    ld c, $5B                                     ; $57EE: $0E $5B
    rst RST_38                                    ; $57F0: $FF

jr_009_57F1:
    rst RST_38                                    ; $57F1: $FF
    rst RST_38                                    ; $57F2: $FF
    rst RST_38                                    ; $57F3: $FF
    ld c, $5B                                     ; $57F4: $0E $5B
    rst RST_38                                    ; $57F6: $FF
    rst RST_38                                    ; $57F7: $FF
    ld a, [hl-]                                   ; $57F8: $3A
    ld e, e                                       ; $57F9: $5B
    rst RST_38                                    ; $57FA: $FF
    rst RST_38                                    ; $57FB: $FF
    ld h, [hl]                                    ; $57FC: $66
    ld e, e                                       ; $57FD: $5B
    rst RST_38                                    ; $57FE: $FF
    rst RST_38                                    ; $57FF: $FF
    rst RST_38                                    ; $5800: $FF
    rst RST_38                                    ; $5801: $FF
    sub d                                         ; $5802: $92
    ld e, e                                       ; $5803: $5B
    rst RST_38                                    ; $5804: $FF
    rst RST_38                                    ; $5805: $FF
    or l                                          ; $5806: $B5
    ld e, e                                       ; $5807: $5B
    rst RST_38                                    ; $5808: $FF
    rst RST_38                                    ; $5809: $FF
    ret c                                         ; $580A: $D8

    ld e, e                                       ; $580B: $5B
    rst RST_38                                    ; $580C: $FF
    rst RST_38                                    ; $580D: $FF
    or l                                          ; $580E: $B5
    ld e, e                                       ; $580F: $5B

jr_009_5810:
    rst RST_38                                    ; $5810: $FF
    rst RST_38                                    ; $5811: $FF
    rst RST_38                                    ; $5812: $FF
    rst RST_38                                    ; $5813: $FF
    or l                                          ; $5814: $B5
    ld e, e                                       ; $5815: $5B
    rst RST_38                                    ; $5816: $FF
    rst RST_38                                    ; $5817: $FF
    ret c                                         ; $5818: $D8

    ld e, e                                       ; $5819: $5B
    rst RST_38                                    ; $581A: $FF
    rst RST_38                                    ; $581B: $FF
    or l                                          ; $581C: $B5
    ld e, e                                       ; $581D: $5B
    rst RST_38                                    ; $581E: $FF
    rst RST_38                                    ; $581F: $FF
    sub d                                         ; $5820: $92
    ld e, e                                       ; $5821: $5B
    rst RST_38                                    ; $5822: $FF
    rst RST_38                                    ; $5823: $FF
    rst RST_38                                    ; $5824: $FF
    rst RST_38                                    ; $5825: $FF
    inc b                                         ; $5826: $04
    ld e, h                                       ; $5827: $5C
    rst RST_38                                    ; $5828: $FF
    rst RST_38                                    ; $5829: $FF
    rst RST_38                                    ; $582A: $FF
    rst RST_38                                    ; $582B: $FF
    inc b                                         ; $582C: $04
    ld e, h                                       ; $582D: $5C
    rst RST_38                                    ; $582E: $FF
    rst RST_38                                    ; $582F: $FF
    dec l                                         ; $5830: $2D
    ld e, h                                       ; $5831: $5C
    ld d, h                                       ; $5832: $54
    ld e, h                                       ; $5833: $5C
    dec l                                         ; $5834: $2D
    ld e, h                                       ; $5835: $5C
    ld d, h                                       ; $5836: $54
    ld e, h                                       ; $5837: $5C
    ld l, h                                       ; $5838: $6C
    ld e, h                                       ; $5839: $5C
    rst RST_38                                    ; $583A: $FF
    rst RST_38                                    ; $583B: $FF
    ld l, h                                       ; $583C: $6C
    ld e, h                                       ; $583D: $5C
    rst RST_38                                    ; $583E: $FF
    rst RST_38                                    ; $583F: $FF
    dec l                                         ; $5840: $2D
    ld e, h                                       ; $5841: $5C
    ld d, h                                       ; $5842: $54
    ld e, h                                       ; $5843: $5C
    dec l                                         ; $5844: $2D
    ld e, h                                       ; $5845: $5C
    ld d, h                                       ; $5846: $54
    ld e, h                                       ; $5847: $5C
    inc b                                         ; $5848: $04
    ld e, h                                       ; $5849: $5C
    rst RST_38                                    ; $584A: $FF
    rst RST_38                                    ; $584B: $FF
    rst RST_38                                    ; $584C: $FF
    rst RST_38                                    ; $584D: $FF
    sub l                                         ; $584E: $95
    ld e, h                                       ; $584F: $5C
    rst RST_38                                    ; $5850: $FF
    rst RST_38                                    ; $5851: $FF
    rst RST_38                                    ; $5852: $FF
    rst RST_38                                    ; $5853: $FF
    cp b                                          ; $5854: $B8
    ld e, h                                       ; $5855: $5C
    db $ED                                        ; $5856: $ED
    ld e, h                                       ; $5857: $5C
    rst RST_38                                    ; $5858: $FF
    rst RST_38                                    ; $5859: $FF
    jp nz, $0A5C                                  ; $585A: $C2 $5C $0A

    ld e, l                                       ; $585D: $5D
    inc b                                         ; $585E: $04
    ld e, h                                       ; $585F: $5C
    rst RST_38                                    ; $5860: $FF
    rst RST_38                                    ; $5861: $FF
    rst RST_38                                    ; $5862: $FF
    rst RST_38                                    ; $5863: $FF
    jr nc, jr_009_58C3                            ; $5864: $30 $5D

    rst RST_38                                    ; $5866: $FF
    rst RST_38                                    ; $5867: $FF
    ld d, [hl]                                    ; $5868: $56
    ld e, l                                       ; $5869: $5D
    add h                                         ; $586A: $84
    ld e, l                                       ; $586B: $5D
    jr nc, jr_009_58CB                            ; $586C: $30 $5D

    rst RST_38                                    ; $586E: $FF
    rst RST_38                                    ; $586F: $FF
    rst RST_38                                    ; $5870: $FF
    rst RST_38                                    ; $5871: $FF
    and d                                         ; $5872: $A2
    ld e, l                                       ; $5873: $5D
    rst RST_38                                    ; $5874: $FF
    rst RST_38                                    ; $5875: $FF
    ret z                                         ; $5876: $C8

    ld e, l                                       ; $5877: $5D
    call c, $FD5D                                 ; $5878: $DC $5D $FD
    ld e, l                                       ; $587B: $5D
    call c, $925D                                 ; $587C: $DC $5D $92
    ld e, e                                       ; $587F: $5B
    rst RST_38                                    ; $5880: $FF
    rst RST_38                                    ; $5881: $FF
    rst RST_38                                    ; $5882: $FF
    rst RST_38                                    ; $5883: $FF
    ld de, $FF5E                                  ; $5884: $11 $5E $FF
    rst RST_38                                    ; $5887: $FF
    scf                                           ; $5888: $37
    ld e, [hl]                                    ; $5889: $5E
    rst RST_38                                    ; $588A: $FF
    rst RST_38                                    ; $588B: $FF
    ld h, e                                       ; $588C: $63
    ld e, [hl]                                    ; $588D: $5E
    ld a, l                                       ; $588E: $7D
    ld e, [hl]                                    ; $588F: $5E
    sub l                                         ; $5890: $95
    ld e, [hl]                                    ; $5891: $5E
    ld a, l                                       ; $5892: $7D
    ld e, [hl]                                    ; $5893: $5E
    sub d                                         ; $5894: $92
    ld e, e                                       ; $5895: $5B
    rst RST_38                                    ; $5896: $FF
    rst RST_38                                    ; $5897: $FF
    rst RST_38                                    ; $5898: $FF
    rst RST_38                                    ; $5899: $FF
    xor c                                         ; $589A: $A9
    ld e, [hl]                                    ; $589B: $5E
    rst RST_38                                    ; $589C: $FF
    rst RST_38                                    ; $589D: $FF
    call z, $FF5E                                 ; $589E: $CC $5E $FF
    rst RST_38                                    ; $58A1: $FF
    xor c                                         ; $58A2: $A9
    ld e, [hl]                                    ; $58A3: $5E
    rst RST_38                                    ; $58A4: $FF
    rst RST_38                                    ; $58A5: $FF
    rst RST_38                                    ; $58A6: $FF
    rst RST_38                                    ; $58A7: $FF
    call z, $F55C                                 ; $58A8: $CC $5C $F5
    ld e, h                                       ; $58AB: $5C
    ei                                            ; $58AC: $FB
    ld e, [hl]                                    ; $58AD: $5E
    rst RST_38                                    ; $58AE: $FF
    rst RST_38                                    ; $58AF: $FF
    call z, $F55C                                 ; $58B0: $CC $5C $F5
    ld e, h                                       ; $58B3: $5C
    rst RST_38                                    ; $58B4: $FF
    rst RST_38                                    ; $58B5: $FF
    call z, $F55C                                 ; $58B6: $CC $5C $F5
    ld e, h                                       ; $58B9: $5C
    ei                                            ; $58BA: $FB
    ld e, [hl]                                    ; $58BB: $5E
    rst RST_38                                    ; $58BC: $FF
    rst RST_38                                    ; $58BD: $FF
    call z, $F55C                                 ; $58BE: $CC $5C $F5
    ld e, h                                       ; $58C1: $5C
    rst RST_38                                    ; $58C2: $FF

jr_009_58C3:
    rst RST_38                                    ; $58C3: $FF
    ld l, h                                       ; $58C4: $6C
    ld e, h                                       ; $58C5: $5C
    rst RST_38                                    ; $58C6: $FF
    rst RST_38                                    ; $58C7: $FF
    dec hl                                        ; $58C8: $2B
    ld e, a                                       ; $58C9: $5F
    rst RST_38                                    ; $58CA: $FF

jr_009_58CB:
    rst RST_38                                    ; $58CB: $FF
    dec hl                                        ; $58CC: $2B
    ld e, a                                       ; $58CD: $5F
    rst RST_38                                    ; $58CE: $FF
    rst RST_38                                    ; $58CF: $FF
    dec hl                                        ; $58D0: $2B
    ld e, a                                       ; $58D1: $5F
    rst RST_38                                    ; $58D2: $FF
    rst RST_38                                    ; $58D3: $FF
    inc b                                         ; $58D4: $04
    ld e, h                                       ; $58D5: $5C
    rst RST_38                                    ; $58D6: $FF
    rst RST_38                                    ; $58D7: $FF
    rst RST_38                                    ; $58D8: $FF
    rst RST_38                                    ; $58D9: $FF
    jp nz, $0A5C                                  ; $58DA: $C2 $5C $0A

    ld e, l                                       ; $58DD: $5D
    dec b                                         ; $58DE: $05
    ld e, a                                       ; $58DF: $5F
    rst RST_38                                    ; $58E0: $FF
    rst RST_38                                    ; $58E1: $FF
    dec b                                         ; $58E2: $05
    ld e, a                                       ; $58E3: $5F
    rst RST_38                                    ; $58E4: $FF
    rst RST_38                                    ; $58E5: $FF
    dec b                                         ; $58E6: $05
    ld e, a                                       ; $58E7: $5F
    rst RST_38                                    ; $58E8: $FF
    rst RST_38                                    ; $58E9: $FF
    inc b                                         ; $58EA: $04
    ld e, h                                       ; $58EB: $5C
    rst RST_38                                    ; $58EC: $FF
    rst RST_38                                    ; $58ED: $FF
    rst RST_38                                    ; $58EE: $FF
    rst RST_38                                    ; $58EF: $FF
    ld de, $FF5E                                  ; $58F0: $11 $5E $FF
    rst RST_38                                    ; $58F3: $FF
    ld h, b                                       ; $58F4: $60
    ld e, l                                       ; $58F5: $5D
    add h                                         ; $58F6: $84
    ld e, l                                       ; $58F7: $5D
    ld d, a                                       ; $58F8: $57
    ld e, a                                       ; $58F9: $5F
    rst RST_38                                    ; $58FA: $FF
    rst RST_38                                    ; $58FB: $FF
    add e                                         ; $58FC: $83
    ld e, a                                       ; $58FD: $5F
    rst RST_38                                    ; $58FE: $FF
    rst RST_38                                    ; $58FF: $FF
    ld d, a                                       ; $5900: $57
    ld e, a                                       ; $5901: $5F
    rst RST_38                                    ; $5902: $FF
    rst RST_38                                    ; $5903: $FF
    add e                                         ; $5904: $83
    ld e, a                                       ; $5905: $5F
    rst RST_38                                    ; $5906: $FF
    rst RST_38                                    ; $5907: $FF
    ld d, a                                       ; $5908: $57
    ld e, a                                       ; $5909: $5F
    rst RST_38                                    ; $590A: $FF
    rst RST_38                                    ; $590B: $FF
    scf                                           ; $590C: $37
    ld e, [hl]                                    ; $590D: $5E
    rst RST_38                                    ; $590E: $FF
    rst RST_38                                    ; $590F: $FF
    ld h, e                                       ; $5910: $63
    ld e, [hl]                                    ; $5911: $5E
    ld a, l                                       ; $5912: $7D
    ld e, [hl]                                    ; $5913: $5E
    sub l                                         ; $5914: $95
    ld e, [hl]                                    ; $5915: $5E
    ld a, l                                       ; $5916: $7D
    ld e, [hl]                                    ; $5917: $5E
    sub d                                         ; $5918: $92
    ld e, e                                       ; $5919: $5B
    rst RST_38                                    ; $591A: $FF
    rst RST_38                                    ; $591B: $FF
    rst RST_38                                    ; $591C: $FF
    rst RST_38                                    ; $591D: $FF
    or [hl]                                       ; $591E: $B6
    ld e, a                                       ; $591F: $5F
    rst RST_38                                    ; $5920: $FF
    rst RST_38                                    ; $5921: $FF
    inc b                                         ; $5922: $04
    ld e, h                                       ; $5923: $5C
    rst RST_38                                    ; $5924: $FF
    rst RST_38                                    ; $5925: $FF
    rst RST_38                                    ; $5926: $FF
    rst RST_38                                    ; $5927: $FF
    jp nz, $0A5C                                  ; $5928: $C2 $5C $0A

    ld e, l                                       ; $592B: $5D
    jp nz, $0A5C                                  ; $592C: $C2 $5C $0A

    ld e, l                                       ; $592F: $5D
    inc b                                         ; $5930: $04
    ld e, h                                       ; $5931: $5C
    rst RST_38                                    ; $5932: $FF
    rst RST_38                                    ; $5933: $FF
    rst RST_38                                    ; $5934: $FF
    rst RST_38                                    ; $5935: $FF
    push hl                                       ; $5936: $E5
    ld e, a                                       ; $5937: $5F
    rst RST_38                                    ; $5938: $FF
    rst RST_38                                    ; $5939: $FF
    rla                                           ; $593A: $17
    ld h, b                                       ; $593B: $60
    rst RST_38                                    ; $593C: $FF
    rst RST_38                                    ; $593D: $FF
    rst RST_38                                    ; $593E: $FF
    rst RST_38                                    ; $593F: $FF
    ld de, $FF5E                                  ; $5940: $11 $5E $FF
    rst RST_38                                    ; $5943: $FF
    ld b, e                                       ; $5944: $43
    ld h, b                                       ; $5945: $60
    ld d, c                                       ; $5946: $51
    ld h, c                                       ; $5947: $61
    rst RST_38                                    ; $5948: $FF
    rst RST_38                                    ; $5949: $FF
    ld l, c                                       ; $594A: $69
    ld h, b                                       ; $594B: $60
    rst RST_38                                    ; $594C: $FF
    rst RST_38                                    ; $594D: $FF
    sbc b                                         ; $594E: $98
    ld h, b                                       ; $594F: $60
    rst RST_38                                    ; $5950: $FF
    rst RST_38                                    ; $5951: $FF
    jp z, $FF60                                   ; $5952: $CA $60 $FF

    rst RST_38                                    ; $5955: $FF
    rst RST_38                                    ; $5956: $FF
    rst RST_38                                    ; $5957: $FF
    jp z, $FF60                                   ; $5958: $CA $60 $FF

    rst RST_38                                    ; $595B: $FF
    sbc b                                         ; $595C: $98
    ld h, b                                       ; $595D: $60
    rst RST_38                                    ; $595E: $FF
    rst RST_38                                    ; $595F: $FF
    ld l, c                                       ; $5960: $69
    ld h, b                                       ; $5961: $60
    rst RST_38                                    ; $5962: $FF
    rst RST_38                                    ; $5963: $FF
    rst RST_38                                    ; $5964: $FF
    rst RST_38                                    ; $5965: $FF
    sub l                                         ; $5966: $95
    ld e, h                                       ; $5967: $5C
    rst RST_38                                    ; $5968: $FF
    rst RST_38                                    ; $5969: $FF
    di                                            ; $596A: $F3
    ld h, b                                       ; $596B: $60
    rst RST_38                                    ; $596C: $FF
    rst RST_38                                    ; $596D: $FF
    rla                                           ; $596E: $17
    ld h, b                                       ; $596F: $60
    rst RST_38                                    ; $5970: $FF
    rst RST_38                                    ; $5971: $FF
    rst RST_38                                    ; $5972: $FF
    rst RST_38                                    ; $5973: $FF
    sub l                                         ; $5974: $95
    ld e, h                                       ; $5975: $5C
    rst RST_38                                    ; $5976: $FF
    rst RST_38                                    ; $5977: $FF
    jr z, jr_009_59DB                             ; $5978: $28 $61

    ld d, c                                       ; $597A: $51
    ld h, c                                       ; $597B: $61
    ld l, c                                       ; $597C: $69
    ld h, c                                       ; $597D: $61
    ld d, c                                       ; $597E: $51
    ld h, c                                       ; $597F: $61
    adc a                                         ; $5980: $8F
    ld h, c                                       ; $5981: $61
    ld d, c                                       ; $5982: $51
    ld h, c                                       ; $5983: $61
    or d                                          ; $5984: $B2
    ld h, c                                       ; $5985: $61
    db $D3                                        ; $5986: $D3
    ld h, c                                       ; $5987: $61
    cp h                                          ; $5988: $BC
    ld h, c                                       ; $5989: $61
    db $D3                                        ; $598A: $D3
    ld h, c                                       ; $598B: $61
    rst RST_38                                    ; $598C: $FF
    rst RST_38                                    ; $598D: $FF
    sub l                                         ; $598E: $95
    ld e, h                                       ; $598F: $5C
    rst RST_38                                    ; $5990: $FF
    rst RST_38                                    ; $5991: $FF
    jr z, jr_009_59F5                             ; $5992: $28 $61

    ld d, c                                       ; $5994: $51
    ld h, c                                       ; $5995: $61
    ld l, c                                       ; $5996: $69
    ld h, c                                       ; $5997: $61
    ld d, c                                       ; $5998: $51
    ld h, c                                       ; $5999: $61
    adc a                                         ; $599A: $8F
    ld h, c                                       ; $599B: $61
    ld d, c                                       ; $599C: $51
    ld h, c                                       ; $599D: $61
    cp h                                          ; $599E: $BC
    ld h, c                                       ; $599F: $61
    db $D3                                        ; $59A0: $D3
    ld h, c                                       ; $59A1: $61
    rst RST_38                                    ; $59A2: $FF
    rst RST_38                                    ; $59A3: $FF
    nop                                           ; $59A4: $00
    ld h, d                                       ; $59A5: $62
    rst RST_38                                    ; $59A6: $FF
    rst RST_38                                    ; $59A7: $FF
    rst RST_38                                    ; $59A8: $FF
    rst RST_38                                    ; $59A9: $FF
    nop                                           ; $59AA: $00
    ld h, d                                       ; $59AB: $62
    rst RST_38                                    ; $59AC: $FF
    rst RST_38                                    ; $59AD: $FF
    rst RST_38                                    ; $59AE: $FF
    rst RST_38                                    ; $59AF: $FF
    ld c, $5B                                     ; $59B0: $0E $5B
    rst RST_38                                    ; $59B2: $FF
    rst RST_38                                    ; $59B3: $FF
    nop                                           ; $59B4: $00
    ld h, d                                       ; $59B5: $62
    rst RST_38                                    ; $59B6: $FF
    rst RST_38                                    ; $59B7: $FF
    inc hl                                        ; $59B8: $23
    ld h, d                                       ; $59B9: $62
    rst RST_38                                    ; $59BA: $FF
    rst RST_38                                    ; $59BB: $FF
    rst RST_38                                    ; $59BC: $FF
    rst RST_38                                    ; $59BD: $FF
    ld h, a                                       ; $59BE: $67
    ld h, d                                       ; $59BF: $62
    rst RST_38                                    ; $59C0: $FF
    rst RST_38                                    ; $59C1: $FF
    rst RST_38                                    ; $59C2: $FF
    rst RST_38                                    ; $59C3: $FF
    nop                                           ; $59C4: $00
    ld h, d                                       ; $59C5: $62
    rst RST_38                                    ; $59C6: $FF
    rst RST_38                                    ; $59C7: $FF
    dec l                                         ; $59C8: $2D
    ld e, h                                       ; $59C9: $5C
    ld d, h                                       ; $59CA: $54
    ld e, h                                       ; $59CB: $5C
    dec l                                         ; $59CC: $2D
    ld e, h                                       ; $59CD: $5C
    ld d, h                                       ; $59CE: $54
    ld e, h                                       ; $59CF: $5C
    ld l, h                                       ; $59D0: $6C
    ld e, h                                       ; $59D1: $5C
    rst RST_38                                    ; $59D2: $FF
    rst RST_38                                    ; $59D3: $FF
    ld l, h                                       ; $59D4: $6C
    ld e, h                                       ; $59D5: $5C
    rst RST_38                                    ; $59D6: $FF
    rst RST_38                                    ; $59D7: $FF
    dec l                                         ; $59D8: $2D
    ld e, h                                       ; $59D9: $5C
    ld d, h                                       ; $59DA: $54

jr_009_59DB:
    ld e, h                                       ; $59DB: $5C
    inc b                                         ; $59DC: $04
    ld e, h                                       ; $59DD: $5C
    rst RST_38                                    ; $59DE: $FF
    rst RST_38                                    ; $59DF: $FF
    rst RST_38                                    ; $59E0: $FF
    rst RST_38                                    ; $59E1: $FF
    nop                                           ; $59E2: $00
    ld h, d                                       ; $59E3: $62
    rst RST_38                                    ; $59E4: $FF
    rst RST_38                                    ; $59E5: $FF
    add a                                         ; $59E6: $87
    ld h, d                                       ; $59E7: $62
    rst RST_38                                    ; $59E8: $FF
    rst RST_38                                    ; $59E9: $FF
    or a                                          ; $59EA: $B7
    ld h, d                                       ; $59EB: $62
    rst RST_38                                    ; $59EC: $FF
    rst RST_38                                    ; $59ED: $FF
    add a                                         ; $59EE: $87
    ld h, d                                       ; $59EF: $62
    rst RST_38                                    ; $59F0: $FF
    rst RST_38                                    ; $59F1: $FF
    or a                                          ; $59F2: $B7
    ld h, d                                       ; $59F3: $62
    rst RST_38                                    ; $59F4: $FF

jr_009_59F5:
    rst RST_38                                    ; $59F5: $FF
    rst RST_38                                    ; $59F6: $FF
    rst RST_38                                    ; $59F7: $FF
    inc hl                                        ; $59F8: $23
    ld h, d                                       ; $59F9: $62
    rst RST_38                                    ; $59FA: $FF
    rst RST_38                                    ; $59FB: $FF
    dec l                                         ; $59FC: $2D
    ld h, d                                       ; $59FD: $62
    rst RST_38                                    ; $59FE: $FF
    rst RST_38                                    ; $59FF: $FF
    scf                                           ; $5A00: $37
    ld h, d                                       ; $5A01: $62
    rst RST_38                                    ; $5A02: $FF
    rst RST_38                                    ; $5A03: $FF
    ld b, c                                       ; $5A04: $41
    ld h, d                                       ; $5A05: $62
    rst RST_38                                    ; $5A06: $FF
    rst RST_38                                    ; $5A07: $FF
    ld b, c                                       ; $5A08: $41
    ld h, d                                       ; $5A09: $62
    rst RST_38                                    ; $5A0A: $FF
    rst RST_38                                    ; $5A0B: $FF
    add a                                         ; $5A0C: $87
    ld h, d                                       ; $5A0D: $62
    rst RST_38                                    ; $5A0E: $FF
    rst RST_38                                    ; $5A0F: $FF
    or a                                          ; $5A10: $B7
    ld h, d                                       ; $5A11: $62
    rst RST_38                                    ; $5A12: $FF
    rst RST_38                                    ; $5A13: $FF
    rst RST_38                                    ; $5A14: $FF
    rst RST_38                                    ; $5A15: $FF
    nop                                           ; $5A16: $00
    ld h, d                                       ; $5A17: $62
    rst RST_38                                    ; $5A18: $FF
    rst RST_38                                    ; $5A19: $FF
    add a                                         ; $5A1A: $87
    ld h, d                                       ; $5A1B: $62
    rst RST_38                                    ; $5A1C: $FF
    rst RST_38                                    ; $5A1D: $FF
    or a                                          ; $5A1E: $B7
    ld h, d                                       ; $5A1F: $62
    rst RST_38                                    ; $5A20: $FF
    rst RST_38                                    ; $5A21: $FF
    rst RST_38                                    ; $5A22: $FF
    rst RST_38                                    ; $5A23: $FF
    sub c                                         ; $5A24: $91
    ld h, d                                       ; $5A25: $62
    rst RST_38                                    ; $5A26: $FF
    rst RST_38                                    ; $5A27: $FF
    rst RST_38                                    ; $5A28: $FF
    rst RST_38                                    ; $5A29: $FF
    inc b                                         ; $5A2A: $04
    ld e, h                                       ; $5A2B: $5C
    rst RST_38                                    ; $5A2C: $FF
    rst RST_38                                    ; $5A2D: $FF
    inc b                                         ; $5A2E: $04
    ld e, h                                       ; $5A2F: $5C
    rst RST_38                                    ; $5A30: $FF
    rst RST_38                                    ; $5A31: $FF
    rst RST_38                                    ; $5A32: $FF
    rst RST_38                                    ; $5A33: $FF
    jr nc, jr_009_5A93                            ; $5A34: $30 $5D

    rst RST_38                                    ; $5A36: $FF
    rst RST_38                                    ; $5A37: $FF
    db $E4                                        ; $5A38: $E4
    ld h, d                                       ; $5A39: $62
    add h                                         ; $5A3A: $84
    ld e, l                                       ; $5A3B: $5D
    jr nc, jr_009_5A9B                            ; $5A3C: $30 $5D

    rst RST_38                                    ; $5A3E: $FF
    rst RST_38                                    ; $5A3F: $FF
    rst RST_38                                    ; $5A40: $FF
    rst RST_38                                    ; $5A41: $FF
    jr nc, jr_009_5AA1                            ; $5A42: $30 $5D

    rst RST_38                                    ; $5A44: $FF
    rst RST_38                                    ; $5A45: $FF
    ld l, d                                       ; $5A46: $6A
    ld e, l                                       ; $5A47: $5D
    add h                                         ; $5A48: $84
    ld e, l                                       ; $5A49: $5D
    jp c, $8462                                   ; $5A4A: $DA $62 $84

    ld e, l                                       ; $5A4D: $5D
    jr nc, @+$5F                                  ; $5A4E: $30 $5D

    rst RST_38                                    ; $5A50: $FF
    rst RST_38                                    ; $5A51: $FF
    jr nc, @+$5F                                  ; $5A52: $30 $5D

    rst RST_38                                    ; $5A54: $FF
    rst RST_38                                    ; $5A55: $FF
    rst RST_38                                    ; $5A56: $FF
    rst RST_38                                    ; $5A57: $FF
    inc b                                         ; $5A58: $04
    ld e, h                                       ; $5A59: $5C
    rst RST_38                                    ; $5A5A: $FF
    rst RST_38                                    ; $5A5B: $FF
    dec l                                         ; $5A5C: $2D
    ld e, h                                       ; $5A5D: $5C
    ld d, h                                       ; $5A5E: $54
    ld e, h                                       ; $5A5F: $5C
    dec de                                        ; $5A60: $1B
    ld h, e                                       ; $5A61: $63
    rst RST_38                                    ; $5A62: $FF
    rst RST_38                                    ; $5A63: $FF
    ld e, d                                       ; $5A64: $5A
    ld h, e                                       ; $5A65: $63
    rst RST_38                                    ; $5A66: $FF
    rst RST_38                                    ; $5A67: $FF
    add e                                         ; $5A68: $83
    ld e, a                                       ; $5A69: $5F
    rst RST_38                                    ; $5A6A: $FF
    rst RST_38                                    ; $5A6B: $FF
    ld de, $FF5E                                  ; $5A6C: $11 $5E $FF
    rst RST_38                                    ; $5A6F: $FF
    inc b                                         ; $5A70: $04
    ld e, h                                       ; $5A71: $5C
    rst RST_38                                    ; $5A72: $FF
    rst RST_38                                    ; $5A73: $FF
    rst RST_38                                    ; $5A74: $FF
    rst RST_38                                    ; $5A75: $FF
    sub $5C                                       ; $5A76: $D6 $5C
    ld [de], a                                    ; $5A78: $12
    ld e, l                                       ; $5A79: $5D
    ei                                            ; $5A7A: $FB
    ld e, [hl]                                    ; $5A7B: $5E
    rst RST_38                                    ; $5A7C: $FF
    rst RST_38                                    ; $5A7D: $FF
    inc b                                         ; $5A7E: $04
    ld e, h                                       ; $5A7F: $5C
    rst RST_38                                    ; $5A80: $FF
    rst RST_38                                    ; $5A81: $FF
    dec l                                         ; $5A82: $2D
    ld e, h                                       ; $5A83: $5C
    ld d, h                                       ; $5A84: $54
    ld e, h                                       ; $5A85: $5C
    ld l, h                                       ; $5A86: $6C
    ld e, h                                       ; $5A87: $5C
    rst RST_38                                    ; $5A88: $FF
    rst RST_38                                    ; $5A89: $FF
    scf                                           ; $5A8A: $37
    ld e, h                                       ; $5A8B: $5C
    add [hl]                                      ; $5A8C: $86
    ld h, e                                       ; $5A8D: $63
    inc b                                         ; $5A8E: $04
    ld e, h                                       ; $5A8F: $5C
    rst RST_38                                    ; $5A90: $FF
    rst RST_38                                    ; $5A91: $FF
    rst RST_38                                    ; $5A92: $FF

jr_009_5A93:
    rst RST_38                                    ; $5A93: $FF
    sub l                                         ; $5A94: $95
    ld e, [hl]                                    ; $5A95: $5E
    ld a, l                                       ; $5A96: $7D
    ld e, [hl]                                    ; $5A97: $5E
    and a                                         ; $5A98: $A7
    ld h, e                                       ; $5A99: $63
    db $D3                                        ; $5A9A: $D3

jr_009_5A9B:
    ld h, e                                       ; $5A9B: $63
    db $EB                                        ; $5A9C: $EB
    ld h, e                                       ; $5A9D: $63
    db $D3                                        ; $5A9E: $D3
    ld h, e                                       ; $5A9F: $63
    or l                                          ; $5AA0: $B5

jr_009_5AA1:
    ld e, e                                       ; $5AA1: $5B
    rst RST_38                                    ; $5AA2: $FF
    rst RST_38                                    ; $5AA3: $FF
    rst RST_38                                    ; $5AA4: $FF
    rst RST_38                                    ; $5AA5: $FF
    adc l                                         ; $5AA6: $8D
    ld e, a                                       ; $5AA7: $5F
    rst RST_38                                    ; $5AA8: $FF
    rst RST_38                                    ; $5AA9: $FF
    ld c, $64                                     ; $5AAA: $0E $64
    ld sp, $4C64                                  ; $5AAC: $31 $64 $4C
    ld h, h                                       ; $5AAF: $64
    ld sp, $6A64                                  ; $5AB0: $31 $64 $6A
    ld e, l                                       ; $5AB3: $5D
    add h                                         ; $5AB4: $84
    ld e, l                                       ; $5AB5: $5D
    rst RST_38                                    ; $5AB6: $FF
    rst RST_38                                    ; $5AB7: $FF
    add e                                         ; $5AB8: $83
    ld e, a                                       ; $5AB9: $5F
    rst RST_38                                    ; $5ABA: $FF
    rst RST_38                                    ; $5ABB: $FF
    ld d, [hl]                                    ; $5ABC: $56
    ld h, h                                       ; $5ABD: $64
    ld sp, $6064                                  ; $5ABE: $31 $64 $60
    ld e, l                                       ; $5AC1: $5D
    add h                                         ; $5AC2: $84
    ld e, l                                       ; $5AC3: $5D
    jp c, $8462                                   ; $5AC4: $DA $62 $84

    ld e, l                                       ; $5AC7: $5D
    ld [hl], e                                    ; $5AC8: $73
    ld h, h                                       ; $5AC9: $64
    rst RST_38                                    ; $5ACA: $FF
    rst RST_38                                    ; $5ACB: $FF
    rst RST_38                                    ; $5ACC: $FF
    rst RST_38                                    ; $5ACD: $FF
    sub l                                         ; $5ACE: $95
    ld e, h                                       ; $5ACF: $5C
    rst RST_38                                    ; $5AD0: $FF
    rst RST_38                                    ; $5AD1: $FF
    rla                                           ; $5AD2: $17
    ld h, b                                       ; $5AD3: $60
    rst RST_38                                    ; $5AD4: $FF
    rst RST_38                                    ; $5AD5: $FF
    dec h                                         ; $5AD6: $25
    ld h, e                                       ; $5AD7: $63
    rst RST_38                                    ; $5AD8: $FF
    rst RST_38                                    ; $5AD9: $FF
    sbc h                                         ; $5ADA: $9C
    ld h, h                                       ; $5ADB: $64
    rst RST_38                                    ; $5ADC: $FF
    rst RST_38                                    ; $5ADD: $FF
    push bc                                       ; $5ADE: $C5
    ld h, h                                       ; $5ADF: $64
    rst RST_38                                    ; $5AE0: $FF
    rst RST_38                                    ; $5AE1: $FF
    ldh [c], a                                    ; $5AE2: $E2
    ld h, h                                       ; $5AE3: $64
    rst RST_38                                    ; $5AE4: $FF
    rst RST_38                                    ; $5AE5: $FF
    di                                            ; $5AE6: $F3
    ld h, h                                       ; $5AE7: $64
    rst RST_38                                    ; $5AE8: $FF
    rst RST_38                                    ; $5AE9: $FF
    push hl                                       ; $5AEA: $E5
    ld e, a                                       ; $5AEB: $5F
    rst RST_38                                    ; $5AEC: $FF
    rst RST_38                                    ; $5AED: $FF
    adc l                                         ; $5AEE: $8D
    ld e, a                                       ; $5AEF: $5F
    rst RST_38                                    ; $5AF0: $FF
    rst RST_38                                    ; $5AF1: $FF
    ld de, $FF5E                                  ; $5AF2: $11 $5E $FF
    rst RST_38                                    ; $5AF5: $FF
    inc b                                         ; $5AF6: $04
    ld e, h                                       ; $5AF7: $5C
    rst RST_38                                    ; $5AF8: $FF
    rst RST_38                                    ; $5AF9: $FF
    rst RST_38                                    ; $5AFA: $FF
    rst RST_38                                    ; $5AFB: $FF
    ld de, $FF5E                                  ; $5AFC: $11 $5E $FF
    rst RST_38                                    ; $5AFF: $FF
    scf                                           ; $5B00: $37
    ld e, [hl]                                    ; $5B01: $5E
    rst RST_38                                    ; $5B02: $FF
    rst RST_38                                    ; $5B03: $FF
    ld bc, $7D63                                  ; $5B04: $01 $63 $7D
    ld e, [hl]                                    ; $5B07: $5E
    inc b                                         ; $5B08: $04
    ld e, h                                       ; $5B09: $5C
    rst RST_38                                    ; $5B0A: $FF
    rst RST_38                                    ; $5B0B: $FF
    rst RST_38                                    ; $5B0C: $FF
    rst RST_38                                    ; $5B0D: $FF
    nop                                           ; $5B0E: $00
    ld b, $00                                     ; $5B0F: $06 $00

jr_009_5B11:
    nop                                           ; $5B11: $00
    ld b, b                                       ; $5B12: $40
    ld a, [de]                                    ; $5B13: $1A
    jr jr_009_5B71                                ; $5B14: $18 $5B

    nop                                           ; $5B16: $00
    nop                                           ; $5B17: $00
    dec bc                                        ; $5B18: $0B
    inc h                                         ; $5B19: $24
    ldh [rP1], a                                  ; $5B1A: $E0 $00

jr_009_5B1C:
    ld h, $E8                                     ; $5B1C: $26 $E8
    ld [bc], a                                    ; $5B1E: $02
    jr nz, jr_009_5B11                            ; $5B1F: $20 $F0

    inc b                                         ; $5B21: $04
    jr nz, jr_009_5B1C                            ; $5B22: $20 $F8

    ld b, $20                                     ; $5B24: $06 $20
    nop                                           ; $5B26: $00
    ld [$0821], sp                                ; $5B27: $08 $21 $08
    ld a, [bc]                                    ; $5B2A: $0A
    jr nc, @-$0E                                  ; $5B2B: $30 $F0

    inc c                                         ; $5B2D: $0C
    jr nc, @-$06                                  ; $5B2E: $30 $F8

    ld c, $30                                     ; $5B30: $0E $30

jr_009_5B32:
    nop                                           ; $5B32: $00
    db $10                                        ; $5B33: $10
    inc [hl]                                      ; $5B34: $34
    ld [$1612], sp                                ; $5B35: $08 $12 $16
    add sp, $14                                   ; $5B38: $E8 $14
    nop                                           ; $5B3A: $00
    ld b, $00                                     ; $5B3B: $06 $00

jr_009_5B3D:
    ld h, b                                       ; $5B3D: $60
    ld b, c                                       ; $5B3E: $41
    ld a, [de]                                    ; $5B3F: $1A
    ld b, h                                       ; $5B40: $44
    ld e, e                                       ; $5B41: $5B
    nop                                           ; $5B42: $00
    nop                                           ; $5B43: $00
    dec bc                                        ; $5B44: $0B
    inc h                                         ; $5B45: $24
    ldh [rP1], a                                  ; $5B46: $E0 $00

jr_009_5B48:
    jr z, jr_009_5B32                             ; $5B48: $28 $E8

    ld [bc], a                                    ; $5B4A: $02
    jr nz, jr_009_5B3D                            ; $5B4B: $20 $F0

    inc b                                         ; $5B4D: $04
    jr nz, jr_009_5B48                            ; $5B4E: $20 $F8

    ld b, $20                                     ; $5B50: $06 $20
    nop                                           ; $5B52: $00
    ld [$0823], sp                                ; $5B53: $08 $23 $08
    ld a, [bc]                                    ; $5B56: $0A
    jr nc, @-$0E                                  ; $5B57: $30 $F0

    inc c                                         ; $5B59: $0C
    jr nc, @-$06                                  ; $5B5A: $30 $F8

    ld c, $30                                     ; $5B5C: $0E $30
    nop                                           ; $5B5E: $00

jr_009_5B5F:
    db $10                                        ; $5B5F: $10
    dec [hl]                                      ; $5B60: $35
    ld [$1812], sp                                ; $5B61: $08 $12 $18
    add sp, $14                                   ; $5B64: $E8 $14
    nop                                           ; $5B66: $00
    ld b, $00                                     ; $5B67: $06 $00
    ret nz                                        ; $5B69: $C0

jr_009_5B6A:
    ld b, d                                       ; $5B6A: $42
    ld a, [de]                                    ; $5B6B: $1A
    ld [hl], b                                    ; $5B6C: $70
    ld e, e                                       ; $5B6D: $5B

jr_009_5B6E:
    nop                                           ; $5B6E: $00
    nop                                           ; $5B6F: $00
    dec bc                                        ; $5B70: $0B

jr_009_5B71:
    dec h                                         ; $5B71: $25
    pop hl                                        ; $5B72: $E1
    nop                                           ; $5B73: $00
    jr z, jr_009_5B5F                             ; $5B74: $28 $E9

    ld [bc], a                                    ; $5B76: $02
    jr nz, jr_009_5B6A                            ; $5B77: $20 $F1

jr_009_5B79:
    inc b                                         ; $5B79: $04
    jr nz, @-$05                                  ; $5B7A: $20 $F9

    ld b, $20                                     ; $5B7C: $06 $20
    ld bc, $2308                                  ; $5B7E: $01 $08 $23
    add hl, bc                                    ; $5B81: $09
    ld a, [bc]                                    ; $5B82: $0A
    jr jr_009_5B6E                                ; $5B83: $18 $E9

    inc c                                         ; $5B85: $0C
    jr nc, jr_009_5B79                            ; $5B86: $30 $F1

    ld c, $30                                     ; $5B88: $0E $30
    ld sp, hl                                     ; $5B8A: $F9
    db $10                                        ; $5B8B: $10
    jr nc, jr_009_5B8F                            ; $5B8C: $30 $01

    ld [de], a                                    ; $5B8E: $12

jr_009_5B8F:
    scf                                           ; $5B8F: $37
    add hl, bc                                    ; $5B90: $09
    inc d                                         ; $5B91: $14
    nop                                           ; $5B92: $00
    ld bc, $2000                                  ; $5B93: $01 $00 $20
    ld b, h                                       ; $5B96: $44
    ld a, [de]                                    ; $5B97: $1A
    sbc h                                         ; $5B98: $9C
    ld e, e                                       ; $5B99: $5B
    ld [bc], a                                    ; $5B9A: $02
    nop                                           ; $5B9B: $00
    ld [$F01F], sp                                ; $5B9C: $08 $1F $F0
    nop                                           ; $5B9F: $00
    rra                                           ; $5BA0: $1F
    ld hl, sp+$02                                 ; $5BA1: $F8 $02
    jr nz, jr_009_5BA5                            ; $5BA3: $20 $00

jr_009_5BA5:
    inc b                                         ; $5BA5: $04
    cpl                                           ; $5BA6: $2F
    rst RST_28                                    ; $5BA7: $EF
    ld b, $2F                                     ; $5BA8: $06 $2F
    rst RST_30                                    ; $5BAA: $F7
    ld [$FF2F], sp                                ; $5BAB: $08 $2F $FF
    ld a, [bc]                                    ; $5BAE: $0A
    ld [hl], $07                                  ; $5BAF: $36 $07
    inc c                                         ; $5BB1: $0C
    inc d                                         ; $5BB2: $14
    add sp, $0E                                   ; $5BB3: $E8 $0E
    nop                                           ; $5BB5: $00
    ld bc, $2000                                  ; $5BB6: $01 $00 $20
    ld b, l                                       ; $5BB9: $45
    ld a, [de]                                    ; $5BBA: $1A
    cp a                                          ; $5BBB: $BF
    ld e, e                                       ; $5BBC: $5B
    ld [bc], a                                    ; $5BBD: $02
    nop                                           ; $5BBE: $00
    ld [$EE26], sp                                ; $5BBF: $08 $26 $EE
    nop                                           ; $5BC2: $00
    ld e, $F6                                     ; $5BC3: $1E $F6
    ld [bc], a                                    ; $5BC5: $02
    inc h                                         ; $5BC6: $24
    ld b, $04                                     ; $5BC7: $06 $04
    ld d, $EE                                     ; $5BC9: $16 $EE
    ld b, $2E                                     ; $5BCB: $06 $2E
    or $08                                        ; $5BCD: $F6 $08

jr_009_5BCF:
    jr nz, jr_009_5BCF                            ; $5BCF: $20 $FE

    ld a, [bc]                                    ; $5BD1: $0A

jr_009_5BD2:
    jr nc, jr_009_5BD2                            ; $5BD2: $30 $FE

    inc c                                         ; $5BD4: $0C
    ld a, $F6                                     ; $5BD5: $3E $F6
    ld c, $00                                     ; $5BD7: $0E $00
    ld bc, $2000                                  ; $5BD9: $01 $00 $20
    ld b, [hl]                                    ; $5BDC: $46
    ld a, [de]                                    ; $5BDD: $1A
    ldh [c], a                                    ; $5BDE: $E2
    ld e, e                                       ; $5BDF: $5B
    ld [bc], a                                    ; $5BE0: $02
    nop                                           ; $5BE1: $00
    dec bc                                        ; $5BE2: $0B
    dec h                                         ; $5BE3: $25

jr_009_5BE4:
    jp hl                                         ; $5BE4: $E9


    nop                                           ; $5BE5: $00
    rra                                           ; $5BE6: $1F
    pop af                                        ; $5BE7: $F1
    ld [bc], a                                    ; $5BE8: $02
    jr nz, jr_009_5BE4                            ; $5BE9: $20 $F9

    inc b                                         ; $5BEB: $04
    rra                                           ; $5BEC: $1F
    ld bc, $1F06                                  ; $5BED: $01 $06 $1F

jr_009_5BF0:
    add hl, bc                                    ; $5BF0: $09
    ld [$E915], sp                                ; $5BF1: $08 $15 $E9
    ld a, [bc]                                    ; $5BF4: $0A
    cpl                                           ; $5BF5: $2F
    pop af                                        ; $5BF6: $F1
    inc c                                         ; $5BF7: $0C
    jr nc, @-$05                                  ; $5BF8: $30 $F9

    ld c, $2F                                     ; $5BFA: $0E $2F
    ld bc, $2F10                                  ; $5BFC: $01 $10 $2F
    add hl, bc                                    ; $5BFF: $09
    ld [de], a                                    ; $5C00: $12
    ccf                                           ; $5C01: $3F
    pop af                                        ; $5C02: $F1
    inc d                                         ; $5C03: $14
    nop                                           ; $5C04: $00
    rlca                                          ; $5C05: $07

jr_009_5C06:
    nop                                           ; $5C06: $00
    add b                                         ; $5C07: $80
    ld b, a                                       ; $5C08: $47
    ld a, [de]                                    ; $5C09: $1A
    ld c, $5C                                     ; $5C0A: $0E $5C
    ld [bc], a                                    ; $5C0C: $02
    nop                                           ; $5C0D: $00
    ld a, [bc]                                    ; $5C0E: $0A
    jr z, jr_009_5BF0                             ; $5C0F: $28 $DF

jr_009_5C11:
    nop                                           ; $5C11: $00
    dec hl                                        ; $5C12: $2B
    rst RST_20                                    ; $5C13: $E7
    ld [bc], a                                    ; $5C14: $02
    jr z, jr_009_5C06                             ; $5C15: $28 $EF

    inc b                                         ; $5C17: $04
    jr z, jr_009_5C11                             ; $5C18: $28 $F7

    ld b, $28                                     ; $5C1A: $06 $28

jr_009_5C1C:
    rst RST_38                                    ; $5C1C: $FF
    ld [$0728], sp                                ; $5C1D: $08 $28 $07
    ld a, [bc]                                    ; $5C20: $0A
    jr c, jr_009_5C11                             ; $5C21: $38 $EE

    inc c                                         ; $5C23: $0C
    jr c, jr_009_5C1C                             ; $5C24: $38 $F6

    ld c, $38                                     ; $5C26: $0E $38
    cp $10                                        ; $5C28: $FE $10
    jr c, jr_009_5C32                             ; $5C2A: $38 $06

    ld [de], a                                    ; $5C2C: $12
    nop                                           ; $5C2D: $00
    ld bc, $C000                                  ; $5C2E: $01 $00 $C0
    ld c, b                                       ; $5C31: $48

jr_009_5C32:
    ld a, [de]                                    ; $5C32: $1A
    ld b, c                                       ; $5C33: $41
    ld e, h                                       ; $5C34: $5C
    rst RST_38                                    ; $5C35: $FF
    nop                                           ; $5C36: $00

jr_009_5C37:
    nop                                           ; $5C37: $00
    ld bc, $C005                                  ; $5C38: $01 $05 $C0
    ld c, b                                       ; $5C3B: $48
    ld a, [de]                                    ; $5C3C: $1A
    ld b, c                                       ; $5C3D: $41
    ld e, h                                       ; $5C3E: $5C
    rst RST_38                                    ; $5C3F: $FF
    nop                                           ; $5C40: $00
    ld b, $1A                                     ; $5C41: $06 $1A
    add sp, $00                                   ; $5C43: $E8 $00
    jr jr_009_5C37                                ; $5C45: $18 $F0

    ld [bc], a                                    ; $5C47: $02
    jr @-$06                                      ; $5C48: $18 $F8

    inc b                                         ; $5C4A: $04
    jr jr_009_5C4D                                ; $5C4B: $18 $00

jr_009_5C4D:
    ld b, $18                                     ; $5C4D: $06 $18
    ld [$1508], sp                                ; $5C4F: $08 $08 $15
    db $10                                        ; $5C52: $10
    ld a, [bc]                                    ; $5C53: $0A
    nop                                           ; $5C54: $00
    add b                                         ; $5C55: $80
    ld c, c                                       ; $5C56: $49
    ld a, [de]                                    ; $5C57: $1A

jr_009_5C58:
    ld e, h                                       ; $5C58: $5C
    ld e, h                                       ; $5C59: $5C
    rst RST_38                                    ; $5C5A: $FF
    nop                                           ; $5C5B: $00
    dec b                                         ; $5C5C: $05
    jr z, jr_009_5C4D                             ; $5C5D: $28 $EE

    nop                                           ; $5C5F: $00
    jr z, jr_009_5C58                             ; $5C60: $28 $F6

    ld [bc], a                                    ; $5C62: $02

jr_009_5C63:
    jr z, jr_009_5C63                             ; $5C63: $28 $FE

    inc b                                         ; $5C65: $04
    jr z, @+$08                                   ; $5C66: $28 $06

    ld b, $38                                     ; $5C68: $06 $38
    ld b, $08                                     ; $5C6A: $06 $08
    nop                                           ; $5C6C: $00
    ld [$2000], sp                                ; $5C6D: $08 $00 $20
    ld c, d                                       ; $5C70: $4A
    ld a, [de]                                    ; $5C71: $1A
    halt                                          ; $5C72: $76
    ld e, h                                       ; $5C73: $5C
    nop                                           ; $5C74: $00
    add hl, bc                                    ; $5C75: $09
    ld a, [bc]                                    ; $5C76: $0A
    ld [$00E8], sp                                ; $5C77: $08 $E8 $00
    ld [$02F0], sp                                ; $5C7A: $08 $F0 $02
    ld [$04F8], sp                                ; $5C7D: $08 $F8 $04
    stop                                          ; $5C80: $10 $00
    ld b, $10                                     ; $5C82: $06 $10
    ld [$1008], sp                                ; $5C84: $08 $08 $10
    db $10                                        ; $5C87: $10
    ld a, [bc]                                    ; $5C88: $0A
    jr @-$0E                                      ; $5C89: $18 $F0

    inc c                                         ; $5C8B: $0C

jr_009_5C8C:
    jr @-$06                                      ; $5C8C: $18 $F8

    ld c, $20                                     ; $5C8E: $0E $20
    nop                                           ; $5C90: $00
    db $10                                        ; $5C91: $10
    jr z, jr_009_5C8C                             ; $5C92: $28 $F8

    ld [de], a                                    ; $5C94: $12
    nop                                           ; $5C95: $00
    ld b, $00                                     ; $5C96: $06 $00
    ld h, b                                       ; $5C98: $60
    ld c, e                                       ; $5C99: $4B
    ld a, [de]                                    ; $5C9A: $1A
    sbc a                                         ; $5C9B: $9F
    ld e, h                                       ; $5C9C: $5C
    nop                                           ; $5C9D: $00
    nop                                           ; $5C9E: $00
    ld [$F11F], sp                                ; $5C9F: $08 $1F $F1
    nop                                           ; $5CA2: $00
    ld e, $F9                                     ; $5CA3: $1E $F9
    ld [bc], a                                    ; $5CA5: $02
    ld e, $01                                     ; $5CA6: $1E $01
    inc b                                         ; $5CA8: $04
    ld e, $09                                     ; $5CA9: $1E $09
    ld b, $31                                     ; $5CAB: $06 $31
    pop af                                        ; $5CAD: $F1
    ld [$F92E], sp                                ; $5CAE: $08 $2E $F9
    ld a, [bc]                                    ; $5CB1: $0A
    ld l, $01                                     ; $5CB2: $2E $01
    inc c                                         ; $5CB4: $0C
    add hl, sp                                    ; $5CB5: $39
    rlca                                          ; $5CB6: $07
    ld c, $00                                     ; $5CB7: $0E $00
    rlca                                          ; $5CB9: $07
    nop                                           ; $5CBA: $00
    ld h, b                                       ; $5CBB: $60
    ld c, h                                       ; $5CBC: $4C
    ld a, [de]                                    ; $5CBD: $1A
    ldh [$FF5C], a                                ; $5CBE: $E0 $5C
    nop                                           ; $5CC0: $00
    nop                                           ; $5CC1: $00
    nop                                           ; $5CC2: $00
    ld [$6000], sp                                ; $5CC3: $08 $00 $60
    ld c, h                                       ; $5CC6: $4C
    ld a, [de]                                    ; $5CC7: $1A
    ldh [$FF5C], a                                ; $5CC8: $E0 $5C
    nop                                           ; $5CCA: $00
    di                                            ; $5CCB: $F3
    nop                                           ; $5CCC: $00
    rlca                                          ; $5CCD: $07
    nop                                           ; $5CCE: $00
    ld h, b                                       ; $5CCF: $60
    ld c, h                                       ; $5CD0: $4C
    ld a, [de]                                    ; $5CD1: $1A
    ldh [$FF5C], a                                ; $5CD2: $E0 $5C
    db $FC                                        ; $5CD4: $FC
    nop                                           ; $5CD5: $00
    nop                                           ; $5CD6: $00
    ld [$6000], sp                                ; $5CD7: $08 $00 $60
    ld c, h                                       ; $5CDA: $4C
    ld a, [de]                                    ; $5CDB: $1A
    ldh [$FF5C], a                                ; $5CDC: $E0 $5C

jr_009_5CDE:
    nop                                           ; $5CDE: $00
    ld sp, hl                                     ; $5CDF: $F9
    inc b                                         ; $5CE0: $04
    jr nz, @-$0E                                  ; $5CE1: $20 $F0

    nop                                           ; $5CE3: $00
    jr nz, jr_009_5CDE                            ; $5CE4: $20 $F8

    ld [bc], a                                    ; $5CE6: $02
    jr nz, jr_009_5CE9                            ; $5CE7: $20 $00

jr_009_5CE9:
    inc b                                         ; $5CE9: $04
    jr nz, jr_009_5CF4                            ; $5CEA: $20 $08

    ld b, $00                                     ; $5CEC: $06 $00
    ldh [$FF4C], a                                ; $5CEE: $E0 $4C

jr_009_5CF0:
    ld a, [de]                                    ; $5CF0: $1A
    db $FD                                        ; $5CF1: $FD
    ld e, h                                       ; $5CF2: $5C
    nop                                           ; $5CF3: $00

jr_009_5CF4:
    nop                                           ; $5CF4: $00
    nop                                           ; $5CF5: $00
    ldh [$FF4C], a                                ; $5CF6: $E0 $4C
    ld a, [de]                                    ; $5CF8: $1A
    db $FD                                        ; $5CF9: $FD
    ld e, h                                       ; $5CFA: $5C

jr_009_5CFB:
    db $FC                                        ; $5CFB: $FC
    nop                                           ; $5CFC: $00
    inc b                                         ; $5CFD: $04
    jr nc, jr_009_5CF0                            ; $5CFE: $30 $F0

    nop                                           ; $5D00: $00
    jr nc, jr_009_5CFB                            ; $5D01: $30 $F8

    ld [bc], a                                    ; $5D03: $02
    jr nc, jr_009_5D06                            ; $5D04: $30 $00

jr_009_5D06:
    inc b                                         ; $5D06: $04
    jr nc, @+$0A                                  ; $5D07: $30 $08

    ld b, $00                                     ; $5D09: $06 $00
    ld h, b                                       ; $5D0B: $60
    ld c, l                                       ; $5D0C: $4D
    ld a, [de]                                    ; $5D0D: $1A
    ld a, [de]                                    ; $5D0E: $1A
    ld e, l                                       ; $5D0F: $5D

jr_009_5D10:
    ld [$000B], sp                                ; $5D10: $08 $0B $00
    ld h, b                                       ; $5D13: $60
    ld c, l                                       ; $5D14: $4D
    ld a, [de]                                    ; $5D15: $1A
    ld a, [de]                                    ; $5D16: $1A
    ld e, l                                       ; $5D17: $5D
    ld [$0711], sp                                ; $5D18: $08 $11 $07

jr_009_5D1B:
    jr @-$16                                      ; $5D1B: $18 $E8

    nop                                           ; $5D1D: $00
    jr jr_009_5D10                                ; $5D1E: $18 $F0

    ld [bc], a                                    ; $5D20: $02
    jr jr_009_5D1B                                ; $5D21: $18 $F8

    inc b                                         ; $5D23: $04
    jr jr_009_5D26                                ; $5D24: $18 $00

jr_009_5D26:
    ld b, $28                                     ; $5D26: $06 $28
    ld [$2808], a                                 ; $5D28: $EA $08 $28
    ld a, [$280A]                                 ; $5D2B: $FA $0A $28
    ld [bc], a                                    ; $5D2E: $02
    inc c                                         ; $5D2F: $0C
    nop                                           ; $5D30: $00
    ld b, $00                                     ; $5D31: $06 $00
    ld h, b                                       ; $5D33: $60
    ld d, e                                       ; $5D34: $53
    ld a, [de]                                    ; $5D35: $1A
    ld a, [hl-]                                   ; $5D36: $3A
    ld e, l                                       ; $5D37: $5D
    nop                                           ; $5D38: $00
    nop                                           ; $5D39: $00
    add hl, bc                                    ; $5D3A: $09
    dec e                                         ; $5D3B: $1D
    pop af                                        ; $5D3C: $F1
    nop                                           ; $5D3D: $00
    ld e, $F9                                     ; $5D3E: $1E $F9
    ld [bc], a                                    ; $5D40: $02
    dec e                                         ; $5D41: $1D
    ld bc, $2004                                  ; $5D42: $01 $04 $20
    add hl, bc                                    ; $5D45: $09
    ld b, $2E                                     ; $5D46: $06 $2E
    ld sp, hl                                     ; $5D48: $F9
    ld [$012D], sp                                ; $5D49: $08 $2D $01
    ld a, [bc]                                    ; $5D4C: $0A
    ld sp, $0CF1                                  ; $5D4D: $31 $F1 $0C
    ld c, $F9                                     ; $5D50: $0E $F9
    ld c, $3B                                     ; $5D52: $0E $3B
    dec b                                         ; $5D54: $05
    stop                                          ; $5D55: $10 $00
    ld b, $94                                     ; $5D57: $06 $94
    add b                                         ; $5D59: $80
    ld d, h                                       ; $5D5A: $54
    ld a, [de]                                    ; $5D5B: $1A
    ld [hl], h                                    ; $5D5C: $74
    ld e, l                                       ; $5D5D: $5D
    rst RST_30                                    ; $5D5E: $F7
    nop                                           ; $5D5F: $00
    nop                                           ; $5D60: $00
    ld b, $05                                     ; $5D61: $06 $05
    add b                                         ; $5D63: $80
    ld d, h                                       ; $5D64: $54
    ld a, [de]                                    ; $5D65: $1A
    ld [hl], h                                    ; $5D66: $74
    ld e, l                                       ; $5D67: $5D
    rst RST_30                                    ; $5D68: $F7
    nop                                           ; $5D69: $00
    nop                                           ; $5D6A: $00
    ld b, $00                                     ; $5D6B: $06 $00
    add b                                         ; $5D6D: $80
    ld d, h                                       ; $5D6E: $54

jr_009_5D6F:
    ld a, [de]                                    ; $5D6F: $1A
    ld [hl], h                                    ; $5D70: $74
    ld e, l                                       ; $5D71: $5D
    rst RST_30                                    ; $5D72: $F7
    nop                                           ; $5D73: $00
    dec b                                         ; $5D74: $05
    jr nz, jr_009_5D6F                            ; $5D75: $20 $F8

    nop                                           ; $5D77: $00
    ld hl, $02F0                                  ; $5D78: $21 $F0 $02
    ld hl, $04E8                                  ; $5D7B: $21 $E8 $04
    dec e                                         ; $5D7E: $1D
    ldh [rTMA], a                                 ; $5D7F: $E0 $06
    ld de, $08F0                                  ; $5D81: $11 $F0 $08
    nop                                           ; $5D84: $00
    jr nz, jr_009_5DDC                            ; $5D85: $20 $55

jr_009_5D87:
    ld a, [de]                                    ; $5D87: $1A

jr_009_5D88:
    adc h                                         ; $5D88: $8C
    ld e, l                                       ; $5D89: $5D
    rst RST_38                                    ; $5D8A: $FF
    nop                                           ; $5D8B: $00
    rlca                                          ; $5D8C: $07
    jr nz, jr_009_5D87                            ; $5D8D: $20 $F8

    nop                                           ; $5D8F: $00
    jr nz, jr_009_5D92                            ; $5D90: $20 $00

jr_009_5D92:
    ld [bc], a                                    ; $5D92: $02
    jr nz, @+$0A                                  ; $5D93: $20 $08

    inc b                                         ; $5D95: $04
    jr nc, jr_009_5D88                            ; $5D96: $30 $F0

    ld b, $30                                     ; $5D98: $06 $30
    ld hl, sp+$08                                 ; $5D9A: $F8 $08
    jr nc, jr_009_5D9E                            ; $5D9C: $30 $00

jr_009_5D9E:
    ld a, [bc]                                    ; $5D9E: $0A
    ld [hl], $08                                  ; $5D9F: $36 $08
    inc c                                         ; $5DA1: $0C

jr_009_5DA2:
    nop                                           ; $5DA2: $00
    sub l                                         ; $5DA3: $95
    nop                                           ; $5DA4: $00
    nop                                           ; $5DA5: $00
    ld d, [hl]                                    ; $5DA6: $56
    ld a, [de]                                    ; $5DA7: $1A
    xor h                                         ; $5DA8: $AC
    ld e, l                                       ; $5DA9: $5D
    add hl, bc                                    ; $5DAA: $09
    nop                                           ; $5DAB: $00
    add hl, bc                                    ; $5DAC: $09

jr_009_5DAD:
    jr nz, @-$16                                  ; $5DAD: $20 $E8

    nop                                           ; $5DAF: $00
    jr jr_009_5DA2                                ; $5DB0: $18 $F0

    ld [bc], a                                    ; $5DB2: $02
    jr jr_009_5DAD                                ; $5DB3: $18 $F8

    inc b                                         ; $5DB5: $04
    jr jr_009_5DB8                                ; $5DB6: $18 $00

jr_009_5DB8:
    ld b, $20                                     ; $5DB8: $06 $20
    ld [$2808], sp                                ; $5DBA: $08 $08 $28
    ldh a, [$FF0A]                                ; $5DBD: $F0 $0A
    jr z, @-$06                                   ; $5DBF: $28 $F8

    inc c                                         ; $5DC1: $0C
    jr z, jr_009_5DC4                             ; $5DC2: $28 $00

jr_009_5DC4:
    ld c, $38                                     ; $5DC4: $0E $38
    ei                                            ; $5DC6: $FB
    stop                                          ; $5DC7: $10 $00
    sub l                                         ; $5DC9: $95
    sub [hl]                                      ; $5DCA: $96
    jr nz, jr_009_5E24                            ; $5DCB: $20 $57

    ld a, [de]                                    ; $5DCD: $1A
    jp nc, Jump_000_095D                          ; $5DCE: $D2 $5D $09

    nop                                           ; $5DD1: $00
    inc bc                                        ; $5DD2: $03
    inc h                                         ; $5DD3: $24
    ldh a, [rP1]                                  ; $5DD4: $F0 $00
    inc h                                         ; $5DD6: $24
    add sp, $02                                   ; $5DD7: $E8 $02
    inc h                                         ; $5DD9: $24
    ldh [rDIV], a                                 ; $5DDA: $E0 $04

jr_009_5DDC:
    nop                                           ; $5DDC: $00
    add b                                         ; $5DDD: $80
    ld d, a                                       ; $5DDE: $57
    ld a, [de]                                    ; $5DDF: $1A
    db $E4                                        ; $5DE0: $E4
    ld e, l                                       ; $5DE1: $5D
    add hl, bc                                    ; $5DE2: $09
    nop                                           ; $5DE3: $00
    ld [$F82B], sp                                ; $5DE4: $08 $2B $F8
    nop                                           ; $5DE7: $00
    dec de                                        ; $5DE8: $1B
    push af                                       ; $5DE9: $F5
    ld [bc], a                                    ; $5DEA: $02
    dec de                                        ; $5DEB: $1B
    db $FD                                        ; $5DEC: $FD
    inc b                                         ; $5DED: $04
    dec de                                        ; $5DEE: $1B
    dec b                                         ; $5DEF: $05

jr_009_5DF0:
    ld b, $2B                                     ; $5DF0: $06 $2B
    nop                                           ; $5DF2: $00
    ld [$082B], sp                                ; $5DF3: $08 $2B $08
    ld a, [bc]                                    ; $5DF6: $0A
    ld [hl+], a                                   ; $5DF7: $22
    dec c                                         ; $5DF8: $0D
    inc c                                         ; $5DF9: $0C
    dec sp                                        ; $5DFA: $3B
    db $FC                                        ; $5DFB: $FC
    ld c, $00                                     ; $5DFC: $0E $00
    sub l                                         ; $5DFE: $95
    nop                                           ; $5DFF: $00
    add b                                         ; $5E00: $80
    ld e, b                                       ; $5E01: $58
    ld a, [de]                                    ; $5E02: $1A
    rlca                                          ; $5E03: $07
    ld e, [hl]                                    ; $5E04: $5E
    add hl, bc                                    ; $5E05: $09
    nop                                           ; $5E06: $00
    inc bc                                        ; $5E07: $03
    ld h, $F0                                     ; $5E08: $26 $F0
    nop                                           ; $5E0A: $00
    jr z, @-$16                                   ; $5E0B: $28 $E8

    ld [bc], a                                    ; $5E0D: $02
    jr z, jr_009_5DF0                             ; $5E0E: $28 $E0

    inc b                                         ; $5E10: $04
    nop                                           ; $5E11: $00
    ld bc, $E000                                  ; $5E12: $01 $00 $E0
    ld e, b                                       ; $5E15: $58
    ld a, [de]                                    ; $5E16: $1A
    dec de                                        ; $5E17: $1B
    ld e, [hl]                                    ; $5E18: $5E
    nop                                           ; $5E19: $00
    nop                                           ; $5E1A: $00
    add hl, bc                                    ; $5E1B: $09
    rra                                           ; $5E1C: $1F
    db $F4                                        ; $5E1D: $F4
    nop                                           ; $5E1E: $00
    rra                                           ; $5E1F: $1F
    db $FC                                        ; $5E20: $FC
    ld [bc], a                                    ; $5E21: $02
    ld e, $04                                     ; $5E22: $1E $04

jr_009_5E24:
    inc b                                         ; $5E24: $04
    jr jr_009_5E33                                ; $5E25: $18 $0C

    ld b, $2F                                     ; $5E27: $06 $2F
    ldh a, [$FF08]                                ; $5E29: $F0 $08
    cpl                                           ; $5E2B: $2F
    ld hl, sp+$0A                                 ; $5E2C: $F8 $0A
    cpl                                           ; $5E2E: $2F

jr_009_5E2F:
    nop                                           ; $5E2F: $00
    inc c                                         ; $5E30: $0C
    inc [hl]                                      ; $5E31: $34
    dec b                                         ; $5E32: $05

jr_009_5E33:
    ld c, $1F                                     ; $5E33: $0E $1F
    db $EC                                        ; $5E35: $EC
    stop                                          ; $5E36: $10 $00
    ld bc, $0097                                  ; $5E38: $01 $97 $00
    ld e, d                                       ; $5E3B: $5A
    ld a, [de]                                    ; $5E3C: $1A
    ld b, c                                       ; $5E3D: $41

jr_009_5E3E:
    ld e, [hl]                                    ; $5E3E: $5E
    ld b, $00                                     ; $5E3F: $06 $00
    dec bc                                        ; $5E41: $0B
    ld h, $E0                                     ; $5E42: $26 $E0
    nop                                           ; $5E44: $00

jr_009_5E45:
    jr nz, jr_009_5E2F                            ; $5E45: $20 $E8

    ld [bc], a                                    ; $5E47: $02
    jr nz, @-$0E                                  ; $5E48: $20 $F0

    inc b                                         ; $5E4A: $04
    jr nz, jr_009_5E45                            ; $5E4B: $20 $F8

    ld b, $20                                     ; $5E4D: $06 $20
    nop                                           ; $5E4F: $00
    ld [$E016], sp                                ; $5E50: $08 $16 $E0
    ld a, [bc]                                    ; $5E53: $0A
    jr nc, jr_009_5E3E                            ; $5E54: $30 $E8

    inc c                                         ; $5E56: $0C
    jr nc, @-$0E                                  ; $5E57: $30 $F0

    ld c, $30                                     ; $5E59: $0E $30
    ld hl, sp+$10                                 ; $5E5B: $F8 $10
    jr nc, jr_009_5E5F                            ; $5E5D: $30 $00

jr_009_5E5F:
    ld [de], a                                    ; $5E5F: $12
    scf                                           ; $5E60: $37
    ld [$0014], sp                                ; $5E61: $08 $14 $00
    ld bc, $6097                                  ; $5E64: $01 $97 $60
    ld e, e                                       ; $5E67: $5B
    ld a, [de]                                    ; $5E68: $1A
    ld l, l                                       ; $5E69: $6D
    ld e, [hl]                                    ; $5E6A: $5E
    ld b, $00                                     ; $5E6B: $06 $00
    dec b                                         ; $5E6D: $05
    ld a, [de]                                    ; $5E6E: $1A
    ldh [rP1], a                                  ; $5E6F: $E0 $00

jr_009_5E71:
    dec de                                        ; $5E71: $1B
    add sp, $02                                   ; $5E72: $E8 $02
    jr nz, @-$0E                                  ; $5E74: $20 $F0

    inc b                                         ; $5E76: $04
    jr nz, jr_009_5E71                            ; $5E77: $20 $F8

    ld b, $20                                     ; $5E79: $06 $20
    nop                                           ; $5E7B: $00
    ld [$0000], sp                                ; $5E7C: $08 $00 $00
    ld e, h                                       ; $5E7F: $5C
    ld a, [de]                                    ; $5E80: $1A
    add l                                         ; $5E81: $85
    ld e, [hl]                                    ; $5E82: $5E
    ld b, $00                                     ; $5E83: $06 $00
    dec b                                         ; $5E85: $05
    jr nc, @-$13                                  ; $5E86: $30 $EB

    nop                                           ; $5E88: $00

jr_009_5E89:
    jr nc, @-$0B                                  ; $5E89: $30 $F3

    ld [bc], a                                    ; $5E8B: $02
    jr nc, jr_009_5E89                            ; $5E8C: $30 $FB

    inc b                                         ; $5E8E: $04
    jr nc, jr_009_5E94                            ; $5E8F: $30 $03

    ld b, $3C                                     ; $5E91: $06 $3C
    dec bc                                        ; $5E93: $0B

jr_009_5E94:
    ld [$0100], sp                                ; $5E94: $08 $00 $01
    nop                                           ; $5E97: $00
    and b                                         ; $5E98: $A0
    ld e, h                                       ; $5E99: $5C
    ld a, [de]                                    ; $5E9A: $1A
    sbc a                                         ; $5E9B: $9F
    ld e, [hl]                                    ; $5E9C: $5E

jr_009_5E9D:
    ld b, $00                                     ; $5E9D: $06 $00
    inc bc                                        ; $5E9F: $03
    jr nz, @-$0E                                  ; $5EA0: $20 $F0

    nop                                           ; $5EA2: $00
    jr nz, jr_009_5E9D                            ; $5EA3: $20 $F8

    ld [bc], a                                    ; $5EA5: $02
    jr nz, jr_009_5EA8                            ; $5EA6: $20 $00

jr_009_5EA8:
    inc b                                         ; $5EA8: $04
    nop                                           ; $5EA9: $00
    rlca                                          ; $5EAA: $07
    nop                                           ; $5EAB: $00
    nop                                           ; $5EAC: $00
    ld e, l                                       ; $5EAD: $5D
    ld a, [de]                                    ; $5EAE: $1A
    or e                                          ; $5EAF: $B3
    ld e, [hl]                                    ; $5EB0: $5E
    nop                                           ; $5EB1: $00
    nop                                           ; $5EB2: $00
    ld [$F229], sp                                ; $5EB3: $08 $29 $F2
    nop                                           ; $5EB6: $00
    inc h                                         ; $5EB7: $24
    ld a, [$2502]                                 ; $5EB8: $FA $02 $25
    ld [bc], a                                    ; $5EBB: $02
    inc b                                         ; $5EBC: $04
    jr z, jr_009_5EC9                             ; $5EBD: $28 $0A

    ld b, $39                                     ; $5EBF: $06 $39
    ldh a, [c]                                    ; $5EC1: $F2
    ld [$FA34], sp                                ; $5EC2: $08 $34 $FA
    ld a, [bc]                                    ; $5EC5: $0A
    dec [hl]                                      ; $5EC6: $35
    ld [bc], a                                    ; $5EC7: $02
    inc c                                         ; $5EC8: $0C

jr_009_5EC9:
    dec sp                                        ; $5EC9: $3B
    ld a, [bc]                                    ; $5ECA: $0A
    ld c, $00                                     ; $5ECB: $0E $00
    rlca                                          ; $5ECD: $07
    sbc b                                         ; $5ECE: $98
    nop                                           ; $5ECF: $00
    ld e, [hl]                                    ; $5ED0: $5E
    ld a, [de]                                    ; $5ED1: $1A
    sub $5E                                       ; $5ED2: $D6 $5E
    nop                                           ; $5ED4: $00
    nop                                           ; $5ED5: $00
    inc c                                         ; $5ED6: $0C

jr_009_5ED7:
    dec hl                                        ; $5ED7: $2B
    db $DD                                        ; $5ED8: $DD
    nop                                           ; $5ED9: $00
    add hl, hl                                    ; $5EDA: $29

jr_009_5EDB:
    push hl                                       ; $5EDB: $E5
    ld [bc], a                                    ; $5EDC: $02
    jr z, @-$11                                   ; $5EDD: $28 $ED

    inc b                                         ; $5EDF: $04
    jr z, jr_009_5ED7                             ; $5EE0: $28 $F5

    ld b, $28                                     ; $5EE2: $06 $28
    db $FD                                        ; $5EE4: $FD
    ld [$0527], sp                                ; $5EE5: $08 $27 $05
    ld a, [bc]                                    ; $5EE8: $0A
    jr c, jr_009_5EDB                             ; $5EE9: $38 $F0

    inc c                                         ; $5EEB: $0C
    jr c, @-$06                                   ; $5EEC: $38 $F8

    ld c, $38                                     ; $5EEE: $0E $38
    nop                                           ; $5EF0: $00
    db $10                                        ; $5EF1: $10

jr_009_5EF2:
    ld a, [hl-]                                   ; $5EF2: $3A
    ld [$1912], sp                                ; $5EF3: $08 $12 $19
    push hl                                       ; $5EF6: $E5
    inc d                                         ; $5EF7: $14
    rra                                           ; $5EF8: $1F
    dec c                                         ; $5EF9: $0D
    ld d, $00                                     ; $5EFA: $16 $00
    rlca                                          ; $5EFC: $07
    sbc c                                         ; $5EFD: $99
    add b                                         ; $5EFE: $80
    ld e, a                                       ; $5EFF: $5F
    ld a, [de]                                    ; $5F00: $1A
    rrca                                          ; $5F01: $0F
    ld e, a                                       ; $5F02: $5F
    dec b                                         ; $5F03: $05
    ld bc, $0800                                  ; $5F04: $01 $00 $08
    sbc e                                         ; $5F07: $9B

jr_009_5F08:
    add b                                         ; $5F08: $80
    ld e, a                                       ; $5F09: $5F
    ld a, [de]                                    ; $5F0A: $1A
    rrca                                          ; $5F0B: $0F
    ld e, a                                       ; $5F0C: $5F
    inc bc                                        ; $5F0D: $03
    db $F4                                        ; $5F0E: $F4
    add hl, bc                                    ; $5F0F: $09
    jr c, jr_009_5EF2                             ; $5F10: $38 $E0

    nop                                           ; $5F12: $00

jr_009_5F13:
    ld [hl], $E8                                  ; $5F13: $36 $E8
    ld [bc], a                                    ; $5F15: $02
    jr nc, jr_009_5F08                            ; $5F16: $30 $F0

    inc b                                         ; $5F18: $04
    jr nc, jr_009_5F13                            ; $5F19: $30 $F8

    ld b, $30                                     ; $5F1B: $06 $30
    nop                                           ; $5F1D: $00
    ld [$F420], sp                                ; $5F1E: $08 $20 $F4
    ld a, [bc]                                    ; $5F21: $0A
    jr nz, @-$02                                  ; $5F22: $20 $FC

    inc c                                         ; $5F24: $0C
    jr nz, @+$06                                  ; $5F25: $20 $04

    ld c, $20                                     ; $5F27: $0E $20
    inc c                                         ; $5F29: $0C
    stop                                          ; $5F2A: $10 $00
    ld [$A09A], sp                                ; $5F2C: $08 $9A $A0
    ld h, b                                       ; $5F2F: $60
    ld a, [de]                                    ; $5F30: $1A
    dec [hl]                                      ; $5F31: $35
    ld e, a                                       ; $5F32: $5F
    rlca                                          ; $5F33: $07
    ld [$200B], sp                                ; $5F34: $08 $0B $20
    ldh [rP1], a                                  ; $5F37: $E0 $00

jr_009_5F39:
    jr nz, @-$16                                  ; $5F39: $20 $E8

    ld [bc], a                                    ; $5F3B: $02
    jr nz, @-$0E                                  ; $5F3C: $20 $F0

    inc b                                         ; $5F3E: $04
    jr nz, jr_009_5F39                            ; $5F3F: $20 $F8

    ld b, $20                                     ; $5F41: $06 $20
    nop                                           ; $5F43: $00
    ld [$E310], sp                                ; $5F44: $08 $10 $E3
    ld a, [bc]                                    ; $5F47: $0A
    db $10                                        ; $5F48: $10
    db $EB                                        ; $5F49: $EB
    inc c                                         ; $5F4A: $0C
    db $10                                        ; $5F4B: $10
    di                                            ; $5F4C: $F3
    ld c, $10                                     ; $5F4D: $0E $10
    ei                                            ; $5F4F: $FB
    db $10                                        ; $5F50: $10
    ld a, [bc]                                    ; $5F51: $0A
    inc bc                                        ; $5F52: $03
    ld [de], a                                    ; $5F53: $12
    ld a, [bc]                                    ; $5F54: $0A
    dec bc                                        ; $5F55: $0B
    inc d                                         ; $5F56: $14
    nop                                           ; $5F57: $00
    ld bc, $0005                                  ; $5F58: $01 $05 $00
    ld h, d                                       ; $5F5B: $62
    ld a, [de]                                    ; $5F5C: $1A

jr_009_5F5D:
    ld h, c                                       ; $5F5D: $61
    ld e, a                                       ; $5F5E: $5F
    cp $00                                        ; $5F5F: $FE $00
    dec bc                                        ; $5F61: $0B
    dec d                                         ; $5F62: $15
    add sp, $00                                   ; $5F63: $E8 $00
    db $10                                        ; $5F65: $10
    rst RST_28                                    ; $5F66: $EF
    ld [bc], a                                    ; $5F67: $02

jr_009_5F68:
    db $10                                        ; $5F68: $10
    rst RST_30                                    ; $5F69: $F7
    inc b                                         ; $5F6A: $04
    jr nz, jr_009_5F5D                            ; $5F6B: $20 $F0

    ld b, $20                                     ; $5F6D: $06 $20
    ld hl, sp+$08                                 ; $5F6F: $F8 $08
    jr nz, jr_009_5F73                            ; $5F71: $20 $00

jr_009_5F73:
    ld a, [bc]                                    ; $5F73: $0A
    jr nz, @+$0A                                  ; $5F74: $20 $08

    inc c                                         ; $5F76: $0C
    jr nc, jr_009_5F68                            ; $5F77: $30 $EF

    ld c, $30                                     ; $5F79: $0E $30
    rst RST_30                                    ; $5F7B: $F7
    db $10                                        ; $5F7C: $10
    jr nc, @+$01                                  ; $5F7D: $30 $FF

    ld [de], a                                    ; $5F7F: $12
    jr nc, jr_009_5F89                            ; $5F80: $30 $07

    inc d                                         ; $5F82: $14
    nop                                           ; $5F83: $00
    ld bc, $6005                                  ; $5F84: $01 $05 $60
    ld h, e                                       ; $5F87: $63
    ld a, [de]                                    ; $5F88: $1A

jr_009_5F89:
    sub a                                         ; $5F89: $97
    ld e, a                                       ; $5F8A: $5F
    cp $00                                        ; $5F8B: $FE $00
    nop                                           ; $5F8D: $00
    ld bc, $6000                                  ; $5F8E: $01 $00 $60
    ld h, e                                       ; $5F91: $63
    ld a, [de]                                    ; $5F92: $1A
    sub a                                         ; $5F93: $97
    ld e, a                                       ; $5F94: $5F
    cp $00                                        ; $5F95: $FE $00
    ld a, [bc]                                    ; $5F97: $0A
    dec h                                         ; $5F98: $25
    rst RST_28                                    ; $5F99: $EF
    nop                                           ; $5F9A: $00

jr_009_5F9B:
    dec e                                         ; $5F9B: $1D
    rst RST_30                                    ; $5F9C: $F7
    ld [bc], a                                    ; $5F9D: $02
    inc e                                         ; $5F9E: $1C
    rst RST_38                                    ; $5F9F: $FF
    inc b                                         ; $5FA0: $04
    dec d                                         ; $5FA1: $15
    rlca                                          ; $5FA2: $07
    ld b, $2D                                     ; $5FA3: $06 $2D
    rst RST_30                                    ; $5FA5: $F7

jr_009_5FA6:
    ld [$FF2C], sp                                ; $5FA6: $08 $2C $FF

jr_009_5FA9:
    ld a, [bc]                                    ; $5FA9: $0A
    ld [hl], $EF                                  ; $5FAA: $36 $EF
    inc c                                         ; $5FAC: $0C
    dec a                                         ; $5FAD: $3D
    rst RST_30                                    ; $5FAE: $F7
    ld c, $3C                                     ; $5FAF: $0E $3C
    rst RST_38                                    ; $5FB1: $FF
    db $10                                        ; $5FB2: $10
    inc sp                                        ; $5FB3: $33

jr_009_5FB4:
    rlca                                          ; $5FB4: $07
    ld [de], a                                    ; $5FB5: $12
    nop                                           ; $5FB6: $00
    ld bc, $A000                                  ; $5FB7: $01 $00 $A0
    ld h, h                                       ; $5FBA: $64
    ld a, [de]                                    ; $5FBB: $1A
    ret nz                                        ; $5FBC: $C0

    ld e, a                                       ; $5FBD: $5F
    dec b                                         ; $5FBE: $05
    nop                                           ; $5FBF: $00

jr_009_5FC0:
    inc c                                         ; $5FC0: $0C
    jr nc, jr_009_5F9B                            ; $5FC1: $30 $D8

    nop                                           ; $5FC3: $00
    jr nc, jr_009_5FA6                            ; $5FC4: $30 $E0

    ld [bc], a                                    ; $5FC6: $02
    jr nz, jr_009_5FA9                            ; $5FC7: $20 $E0

    inc b                                         ; $5FC9: $04

jr_009_5FCA:
    jr nz, jr_009_5FB4                            ; $5FCA: $20 $E8

    ld b, $20                                     ; $5FCC: $06 $20
    ldh a, [$FF08]                                ; $5FCE: $F0 $08
    jr nz, jr_009_5FCA                            ; $5FD0: $20 $F8

    ld a, [bc]                                    ; $5FD2: $0A
    jr nz, jr_009_5FD5                            ; $5FD3: $20 $00

jr_009_5FD5:
    inc c                                         ; $5FD5: $0C

jr_009_5FD6:
    jr nc, jr_009_5FC0                            ; $5FD6: $30 $E8

    ld c, $30                                     ; $5FD8: $0E $30
    ldh a, [rNR10]                                ; $5FDA: $F0 $10
    jr nc, jr_009_5FD6                            ; $5FDC: $30 $F8

    ld [de], a                                    ; $5FDE: $12
    jr nc, jr_009_5FE1                            ; $5FDF: $30 $00

jr_009_5FE1:
    inc d                                         ; $5FE1: $14
    scf                                           ; $5FE2: $37
    ld [$0016], sp                                ; $5FE3: $08 $16 $00
    ld bc, $2000                                  ; $5FE6: $01 $00 $20
    ld h, [hl]                                    ; $5FE9: $66
    ld a, [de]                                    ; $5FEA: $1A
    rst RST_28                                    ; $5FEB: $EF
    ld e, a                                       ; $5FEC: $5F
    ld [$0D00], sp                                ; $5FED: $08 $00 $0D
    ld e, $DF                                     ; $5FF0: $1E $DF
    nop                                           ; $5FF2: $00
    dec de                                        ; $5FF3: $1B
    rst RST_20                                    ; $5FF4: $E7
    ld [bc], a                                    ; $5FF5: $02
    dec de                                        ; $5FF6: $1B
    rst RST_28                                    ; $5FF7: $EF
    inc b                                         ; $5FF8: $04
    ld hl, $06F7                                  ; $5FF9: $21 $F7 $06
    ld hl, $08FF                                  ; $5FFC: $21 $FF $08
    jr nz, @+$09                                  ; $5FFF: $20 $07

    ld a, [bc]                                    ; $6001: $0A
    dec hl                                        ; $6002: $2B
    rst RST_20                                    ; $6003: $E7
    inc c                                         ; $6004: $0C
    dec hl                                        ; $6005: $2B
    rst RST_28                                    ; $6006: $EF
    ld c, $31                                     ; $6007: $0E $31
    rst RST_30                                    ; $6009: $F7
    db $10                                        ; $600A: $10
    ld [hl-], a                                   ; $600B: $32
    rst RST_38                                    ; $600C: $FF
    ld [de], a                                    ; $600D: $12
    dec sp                                        ; $600E: $3B
    rst RST_20                                    ; $600F: $E7
    inc d                                         ; $6010: $14
    dec sp                                        ; $6011: $3B
    rst RST_28                                    ; $6012: $EF
    ld d, $0E                                     ; $6013: $16 $0E
    rst RST_18                                    ; $6015: $DF
    jr jr_009_6018                                ; $6016: $18 $00

jr_009_6018:
    ld bc, $C000                                  ; $6018: $01 $00 $C0

jr_009_601B:
    ld h, a                                       ; $601B: $67
    ld a, [de]                                    ; $601C: $1A
    ld hl, $0860                                  ; $601D: $21 $60 $08
    nop                                           ; $6020: $00
    dec bc                                        ; $6021: $0B
    ld e, $E1                                     ; $6022: $1E $E1
    nop                                           ; $6024: $00
    dec e                                         ; $6025: $1D
    jp hl                                         ; $6026: $E9


    ld [bc], a                                    ; $6027: $02
    jr nz, jr_009_601B                            ; $6028: $20 $F1

    inc b                                         ; $602A: $04
    dec de                                        ; $602B: $1B
    ld sp, hl                                     ; $602C: $F9
    ld b, $1F                                     ; $602D: $06 $1F
    nop                                           ; $602F: $00

jr_009_6030:
    ld [$0820], sp                                ; $6030: $08 $20 $08
    ld a, [bc]                                    ; $6033: $0A
    dec l                                         ; $6034: $2D
    jp hl                                         ; $6035: $E9


    inc c                                         ; $6036: $0C
    jr nc, @-$0E                                  ; $6037: $30 $F0

    ld c, $2B                                     ; $6039: $0E $2B
    ld hl, sp+$10                                 ; $603B: $F8 $10
    inc sp                                        ; $603D: $33
    cp $12                                        ; $603E: $FE $12
    dec a                                         ; $6040: $3D
    add sp, $14                                   ; $6041: $E8 $14
    nop                                           ; $6043: $00
    ld bc, $2000                                  ; $6044: $01 $00 $20
    ld l, c                                       ; $6047: $69
    ld a, [de]                                    ; $6048: $1A
    ld c, l                                       ; $6049: $4D
    ld h, b                                       ; $604A: $60
    nop                                           ; $604B: $00
    nop                                           ; $604C: $00
    add hl, bc                                    ; $604D: $09
    jr jr_009_6030                                ; $604E: $18 $E0

    nop                                           ; $6050: $00
    db $10                                        ; $6051: $10
    add sp, $02                                   ; $6052: $E8 $02
    jr @-$0E                                      ; $6054: $18 $F0

    inc b                                         ; $6056: $04
    db $10                                        ; $6057: $10
    ld hl, sp+$06                                 ; $6058: $F8 $06

jr_009_605A:
    stop                                          ; $605A: $10 $00
    ld [$E820], sp                                ; $605C: $08 $20 $E8
    ld a, [bc]                                    ; $605F: $0A
    jr nz, jr_009_605A                            ; $6060: $20 $F8

    inc c                                         ; $6062: $0C
    jr nz, jr_009_6065                            ; $6063: $20 $00

jr_009_6065:
    ld c, $32                                     ; $6065: $0E $32

jr_009_6067:
    ldh a, [rNR10]                                ; $6067: $F0 $10
    nop                                           ; $6069: $00
    ld bc, $4000                                  ; $606A: $01 $00 $40
    ld [hl], b                                    ; $606D: $70
    ld a, [de]                                    ; $606E: $1A
    ld [hl], e                                    ; $606F: $73
    ld h, b                                       ; $6070: $60
    ld a, [bc]                                    ; $6071: $0A
    inc bc                                        ; $6072: $03

jr_009_6073:
    inc c                                         ; $6073: $0C
    ld [$00E8], sp                                ; $6074: $08 $E8 $00
    ld [$02F0], sp                                ; $6077: $08 $F0 $02
    ld [$04F8], sp                                ; $607A: $08 $F8 $04

jr_009_607D:
    jr jr_009_6067                                ; $607D: $18 $E8

jr_009_607F:
    ld b, $18                                     ; $607F: $06 $18
    ldh a, [$FF08]                                ; $6081: $F0 $08
    jr jr_009_607D                                ; $6083: $18 $F8

    ld a, [bc]                                    ; $6085: $0A
    jr nz, jr_009_6088                            ; $6086: $20 $00

jr_009_6088:
    inc c                                         ; $6088: $0C

jr_009_6089:
    jr z, jr_009_6073                             ; $6089: $28 $E8

    ld c, $28                                     ; $608B: $0E $28
    ldh a, [rNR10]                                ; $608D: $F0 $10
    jr z, jr_009_6089                             ; $608F: $28 $F8

    ld [de], a                                    ; $6091: $12

jr_009_6092:
    jr c, jr_009_607F                             ; $6092: $38 $EB

    inc d                                         ; $6094: $14
    jr c, jr_009_6092                             ; $6095: $38 $FB

    ld d, $00                                     ; $6097: $16 $00
    ld bc, $C000                                  ; $6099: $01 $00 $C0
    ld [hl], c                                    ; $609C: $71

jr_009_609D:
    ld a, [de]                                    ; $609D: $1A
    and d                                         ; $609E: $A2
    ld h, b                                       ; $609F: $60
    ld [$0D07], sp                                ; $60A0: $08 $07 $0D
    jr z, @-$1C                                   ; $60A3: $28 $E2

    nop                                           ; $60A5: $00
    jr z, jr_009_6092                             ; $60A6: $28 $EA

    ld [bc], a                                    ; $60A8: $02
    jr z, jr_009_609D                             ; $60A9: $28 $F2

    inc b                                         ; $60AB: $04
    jr @-$1C                                      ; $60AC: $18 $E2

    ld b, $18                                     ; $60AE: $06 $18
    ld [$1808], a                                 ; $60B0: $EA $08 $18
    ldh a, [c]                                    ; $60B3: $F2

jr_009_60B4:
    ld a, [bc]                                    ; $60B4: $0A
    jr @-$04                                      ; $60B5: $18 $FA

    inc c                                         ; $60B7: $0C
    jr z, jr_009_60B4                             ; $60B8: $28 $FA

    ld c, $28                                     ; $60BA: $0E $28
    ld [bc], a                                    ; $60BC: $02
    db $10                                        ; $60BD: $10
    jr @+$04                                      ; $60BE: $18 $02

    ld [de], a                                    ; $60C0: $12
    jr nz, @+$0C                                  ; $60C1: $20 $0A

    inc d                                         ; $60C3: $14
    ld [$16EA], sp                                ; $60C4: $08 $EA $16
    ld [$18F2], sp                                ; $60C7: $08 $F2 $18
    nop                                           ; $60CA: $00
    ld bc, $6000                                  ; $60CB: $01 $00 $60
    ld [hl], e                                    ; $60CE: $73
    ld a, [de]                                    ; $60CF: $1A
    call nc, Call_000_0560                        ; $60D0: $D4 $60 $05
    ld [$260A], sp                                ; $60D3: $08 $0A $26
    ldh [rP1], a                                  ; $60D6: $E0 $00
    ld e, $E8                                     ; $60D8: $1E $E8
    ld [bc], a                                    ; $60DA: $02
    ld e, $F0                                     ; $60DB: $1E $F0
    inc b                                         ; $60DD: $04
    ld e, $F8                                     ; $60DE: $1E $F8
    ld b, $1E                                     ; $60E0: $06 $1E
    nop                                           ; $60E2: $00
    ld [$E82E], sp                                ; $60E3: $08 $2E $E8
    ld a, [bc]                                    ; $60E6: $0A
    ld l, $F0                                     ; $60E7: $2E $F0
    inc c                                         ; $60E9: $0C
    ld l, $F8                                     ; $60EA: $2E $F8
    ld c, $2E                                     ; $60EC: $0E $2E
    nop                                           ; $60EE: $00
    db $10                                        ; $60EF: $10
    daa                                           ; $60F0: $27
    ld [$0012], sp                                ; $60F1: $08 $12 $00
    ld bc, $A000                                  ; $60F4: $01 $00 $A0
    ld [hl], h                                    ; $60F7: $74
    ld a, [de]                                    ; $60F8: $1A
    db $FD                                        ; $60F9: $FD
    ld h, b                                       ; $60FA: $60
    nop                                           ; $60FB: $00
    nop                                           ; $60FC: $00

jr_009_60FD:
    ld c, $30                                     ; $60FD: $0E $30
    ldh [rP1], a                                  ; $60FF: $E0 $00

jr_009_6101:
    jr nc, @-$16                                  ; $6101: $30 $E8

    ld [bc], a                                    ; $6103: $02
    jr nc, @-$0E                                  ; $6104: $30 $F0

    inc b                                         ; $6106: $04
    jr nc, jr_009_6101                            ; $6107: $30 $F8

    ld b, $30                                     ; $6109: $06 $30
    nop                                           ; $610B: $00
    ld [$0830], sp                                ; $610C: $08 $30 $08
    ld a, [bc]                                    ; $610F: $0A
    jr z, @+$12                                   ; $6110: $28 $10

    inc c                                         ; $6112: $0C

jr_009_6113:
    jr nz, jr_009_60FD                            ; $6113: $20 $E8

jr_009_6115:
    ld c, $20                                     ; $6115: $0E $20
    ldh a, [rNR10]                                ; $6117: $F0 $10
    jr nz, jr_009_6113                            ; $6119: $20 $F8

    ld [de], a                                    ; $611B: $12
    jr nz, jr_009_611E                            ; $611C: $20 $00

jr_009_611E:
    inc d                                         ; $611E: $14
    jr nz, jr_009_6129                            ; $611F: $20 $08

    ld d, $10                                     ; $6121: $16 $10
    db $ED                                        ; $6123: $ED
    jr jr_009_6136                                ; $6124: $18 $10

    push af                                       ; $6126: $F5
    ld a, [de]                                    ; $6127: $1A
    nop                                           ; $6128: $00

jr_009_6129:
    ld bc, $4000                                  ; $6129: $01 $00 $40
    ld l, d                                       ; $612C: $6A
    ld a, [de]                                    ; $612D: $1A
    ld [hl-], a                                   ; $612E: $32
    ld h, c                                       ; $612F: $61
    nop                                           ; $6130: $00
    nop                                           ; $6131: $00
    ld a, [bc]                                    ; $6132: $0A
    jr jr_009_6115                                ; $6133: $18 $E0

    nop                                           ; $6135: $00

jr_009_6136:
    db $10                                        ; $6136: $10

jr_009_6137:
    add sp, $02                                   ; $6137: $E8 $02
    db $10                                        ; $6139: $10
    ldh a, [rDIV]                                 ; $613A: $F0 $04
    db $10                                        ; $613C: $10
    ld hl, sp+$06                                 ; $613D: $F8 $06
    stop                                          ; $613F: $10 $00
    ld [$E820], sp                                ; $6141: $08 $20 $E8
    ld a, [bc]                                    ; $6144: $0A
    jr nz, jr_009_6137                            ; $6145: $20 $F0

    inc c                                         ; $6147: $0C
    jr nz, @-$06                                  ; $6148: $20 $F8

    ld c, $20                                     ; $614A: $0E $20
    nop                                           ; $614C: $00
    db $10                                        ; $614D: $10
    ld [hl-], a                                   ; $614E: $32
    ldh a, [rNR12]                                ; $614F: $F0 $12
    nop                                           ; $6151: $00
    add b                                         ; $6152: $80
    ld l, e                                       ; $6153: $6B
    ld a, [de]                                    ; $6154: $1A
    ld e, c                                       ; $6155: $59
    ld h, c                                       ; $6156: $61
    nop                                           ; $6157: $00
    nop                                           ; $6158: $00
    dec b                                         ; $6159: $05

jr_009_615A:
    jr @+$0A                                      ; $615A: $18 $08

    nop                                           ; $615C: $00
    jr z, jr_009_6167                             ; $615D: $28 $08

    ld [bc], a                                    ; $615F: $02
    jr nc, jr_009_615A                            ; $6160: $30 $F8

    inc b                                         ; $6162: $04
    jr nc, jr_009_6165                            ; $6163: $30 $00

jr_009_6165:
    ld b, $3C                                     ; $6165: $06 $3C

jr_009_6167:
    ld [$0008], sp                                ; $6167: $08 $08 $00
    ld bc, $2000                                  ; $616A: $01 $00 $20
    ld l, h                                       ; $616D: $6C
    ld a, [de]                                    ; $616E: $1A
    ld [hl], e                                    ; $616F: $73
    ld h, c                                       ; $6170: $61
    nop                                           ; $6171: $00
    nop                                           ; $6172: $00
    add hl, bc                                    ; $6173: $09
    ld hl, $00E0                                  ; $6174: $21 $E0 $00
    inc hl                                        ; $6177: $23
    add sp, $02                                   ; $6178: $E8 $02
    rra                                           ; $617A: $1F
    ldh a, [rDIV]                                 ; $617B: $F0 $04
    db $10                                        ; $617D: $10
    ld hl, sp+$06                                 ; $617E: $F8 $06
    stop                                          ; $6180: $10 $00
    ld [$F820], sp                                ; $6182: $08 $20 $F8
    ld a, [bc]                                    ; $6185: $0A
    jr nz, jr_009_6188                            ; $6186: $20 $00

jr_009_6188:
    inc c                                         ; $6188: $0C
    cpl                                           ; $6189: $2F
    ldh a, [$FF0E]                                ; $618A: $F0 $0E
    inc de                                        ; $618C: $13
    add sp, $10                                   ; $618D: $E8 $10

jr_009_618F:
    nop                                           ; $618F: $00
    ld bc, $4000                                  ; $6190: $01 $00 $40
    ld l, l                                       ; $6193: $6D
    ld a, [de]                                    ; $6194: $1A
    sbc c                                         ; $6195: $99
    ld h, c                                       ; $6196: $61
    nop                                           ; $6197: $00
    nop                                           ; $6198: $00

jr_009_6199:
    ld [$E820], sp                                ; $6199: $08 $20 $E8
    nop                                           ; $619C: $00
    jr nz, jr_009_618F                            ; $619D: $20 $F0

    ld [bc], a                                    ; $619F: $02
    jr nz, @-$06                                  ; $61A0: $20 $F8

    inc b                                         ; $61A2: $04
    jr nz, jr_009_61A5                            ; $61A3: $20 $00

jr_009_61A5:
    ld b, $10                                     ; $61A5: $06 $10
    ld hl, sp+$08                                 ; $61A7: $F8 $08
    stop                                          ; $61A9: $10 $00
    ld a, [bc]                                    ; $61AB: $0A
    jr nc, @-$0E                                  ; $61AC: $30 $F0

    inc c                                         ; $61AE: $0C
    jr nc, jr_009_6199                            ; $61AF: $30 $E8

jr_009_61B1:
    ld c, $00                                     ; $61B1: $0E $00
    ld bc, $4000                                  ; $61B3: $01 $00 $40
    ld l, [hl]                                    ; $61B6: $6E
    ld a, [de]                                    ; $61B7: $1A
    add $61                                       ; $61B8: $C6 $61
    ld [$20F3], sp                                ; $61BA: $08 $F3 $20
    ld bc, $4000                                  ; $61BD: $01 $00 $40
    ld l, [hl]                                    ; $61C0: $6E
    ld a, [de]                                    ; $61C1: $1A
    add $61                                       ; $61C2: $C6 $61
    ld hl, sp-$0D                                 ; $61C4: $F8 $F3
    inc b                                         ; $61C6: $04

jr_009_61C7:
    jr jr_009_61B1                                ; $61C7: $18 $E8

    nop                                           ; $61C9: $00
    jr @-$0E                                      ; $61CA: $18 $F0

    ld [bc], a                                    ; $61CC: $02
    jr jr_009_61C7                                ; $61CD: $18 $F8

    inc b                                         ; $61CF: $04
    jr jr_009_61D2                                ; $61D0: $18 $00

jr_009_61D2:
    ld b, $00                                     ; $61D2: $06 $00
    ret nz                                        ; $61D4: $C0

    ld l, [hl]                                    ; $61D5: $6E
    ld a, [de]                                    ; $61D6: $1A
    db $DB                                        ; $61D7: $DB
    ld h, c                                       ; $61D8: $61
    nop                                           ; $61D9: $00
    nop                                           ; $61DA: $00
    inc c                                         ; $61DB: $0C

jr_009_61DC:
    inc h                                         ; $61DC: $24
    add sp, $00                                   ; $61DD: $E8 $00
    jr nz, @-$0E                                  ; $61DF: $20 $F0

    ld [bc], a                                    ; $61E1: $02
    jr jr_009_61DC                                ; $61E2: $18 $F8

    inc b                                         ; $61E4: $04
    jr jr_009_61E7                                ; $61E5: $18 $00

jr_009_61E7:
    ld b, $18                                     ; $61E7: $06 $18
    ld [$2808], sp                                ; $61E9: $08 $08 $28
    ld hl, sp+$0A                                 ; $61EC: $F8 $0A
    jr z, jr_009_61F0                             ; $61EE: $28 $00

jr_009_61F0:
    inc c                                         ; $61F0: $0C
    jr z, @+$0A                                   ; $61F1: $28 $08

    ld c, $30                                     ; $61F3: $0E $30
    db $EC                                        ; $61F5: $EC
    db $10                                        ; $61F6: $10
    jr nc, @-$0A                                  ; $61F7: $30 $F4

    ld [de], a                                    ; $61F9: $12
    jr c, @+$06                                   ; $61FA: $38 $04

    inc d                                         ; $61FC: $14
    jr c, @-$02                                   ; $61FD: $38 $FC

    ld d, $00                                     ; $61FF: $16 $00
    ld bc, $4000                                  ; $6201: $01 $00 $40
    ld c, [hl]                                    ; $6204: $4E
    ld a, [de]                                    ; $6205: $1A
    ld a, [bc]                                    ; $6206: $0A
    ld h, d                                       ; $6207: $62
    rlca                                          ; $6208: $07
    nop                                           ; $6209: $00
    ld [$EF31], sp                                ; $620A: $08 $31 $EF
    nop                                           ; $620D: $00
    ld a, [hl+]                                   ; $620E: $2A
    rst RST_30                                    ; $620F: $F7
    ld [bc], a                                    ; $6210: $02
    jr nz, @+$01                                  ; $6211: $20 $FF

    inc b                                         ; $6213: $04
    jr nc, @+$01                                  ; $6214: $30 $FF

    ld b, $20                                     ; $6216: $06 $20
    rlca                                          ; $6218: $07
    ld [$0730], sp                                ; $6219: $08 $30 $07
    ld a, [bc]                                    ; $621C: $0A
    add hl, hl                                    ; $621D: $29
    rrca                                          ; $621E: $0F
    inc c                                         ; $621F: $0C
    add hl, de                                    ; $6220: $19
    rrca                                          ; $6221: $0F
    ld c, $00                                     ; $6222: $0E $00
    ld bc, $4000                                  ; $6224: $01 $00 $40
    ld c, a                                       ; $6227: $4F
    ld a, [de]                                    ; $6228: $1A
    ld c, e                                       ; $6229: $4B
    ld h, d                                       ; $622A: $62
    add hl, bc                                    ; $622B: $09
    nop                                           ; $622C: $00
    jr nz, jr_009_6230                            ; $622D: $20 $01

    nop                                           ; $622F: $00

jr_009_6230:
    ld b, b                                       ; $6230: $40
    ld c, a                                       ; $6231: $4F
    ld a, [de]                                    ; $6232: $1A
    ld c, e                                       ; $6233: $4B
    ld h, d                                       ; $6234: $62
    rst RST_30                                    ; $6235: $F7
    nop                                           ; $6236: $00
    ld b, b                                       ; $6237: $40
    ld bc, $4000                                  ; $6238: $01 $00 $40
    ld c, a                                       ; $623B: $4F
    ld a, [de]                                    ; $623C: $1A
    ld c, e                                       ; $623D: $4B
    ld h, d                                       ; $623E: $62
    add hl, bc                                    ; $623F: $09
    inc b                                         ; $6240: $04
    ld h, b                                       ; $6241: $60
    ld bc, $4000                                  ; $6242: $01 $00 $40
    ld c, a                                       ; $6245: $4F
    ld a, [de]                                    ; $6246: $1A
    ld c, e                                       ; $6247: $4B
    ld h, d                                       ; $6248: $62
    rst RST_30                                    ; $6249: $F7
    inc b                                         ; $624A: $04
    add hl, bc                                    ; $624B: $09
    ld e, $E5                                     ; $624C: $1E $E5
    nop                                           ; $624E: $00
    inc e                                         ; $624F: $1C
    db $ED                                        ; $6250: $ED
    ld [bc], a                                    ; $6251: $02
    inc l                                         ; $6252: $2C
    db $ED                                        ; $6253: $ED
    inc b                                         ; $6254: $04
    rra                                           ; $6255: $1F
    push af                                       ; $6256: $F5
    ld b, $24                                     ; $6257: $06 $24
    db $FD                                        ; $6259: $FD
    ld [$051E], sp                                ; $625A: $08 $1E $05
    ld a, [bc]                                    ; $625D: $0A
    cpl                                           ; $625E: $2F
    push af                                       ; $625F: $F5
    inc c                                         ; $6260: $0C
    inc [hl]                                      ; $6261: $34
    db $FD                                        ; $6262: $FD
    ld c, $3C                                     ; $6263: $0E $3C
    db $ED                                        ; $6265: $ED
    stop                                          ; $6266: $10 $00

jr_009_6268:
    ld bc, $6000                                  ; $6268: $01 $00 $60
    ld d, b                                       ; $626B: $50
    ld a, [de]                                    ; $626C: $1A
    ld [hl], c                                    ; $626D: $71
    ld h, d                                       ; $626E: $62
    ld [bc], a                                    ; $626F: $02
    nop                                           ; $6270: $00
    rlca                                          ; $6271: $07
    jr nc, jr_009_6268                            ; $6272: $30 $F4

    nop                                           ; $6274: $00
    jr nc, @-$02                                  ; $6275: $30 $FC

    ld [bc], a                                    ; $6277: $02
    dec h                                         ; $6278: $25
    nop                                           ; $6279: $00
    inc b                                         ; $627A: $04
    dec h                                         ; $627B: $25
    ld [$2906], sp                                ; $627C: $08 $06 $29
    db $10                                        ; $627F: $10
    ld [$0435], sp                                ; $6280: $08 $35 $04
    ld a, [bc]                                    ; $6283: $0A
    dec [hl]                                      ; $6284: $35
    inc c                                         ; $6285: $0C
    inc c                                         ; $6286: $0C
    nop                                           ; $6287: $00
    inc e                                         ; $6288: $1C
    nop                                           ; $6289: $00
    ld b, b                                       ; $628A: $40
    ld d, c                                       ; $628B: $51
    ld a, [de]                                    ; $628C: $1A
    sbc e                                         ; $628D: $9B
    ld h, d                                       ; $628E: $62
    inc bc                                        ; $628F: $03
    ld [hl+], a                                   ; $6290: $22
    ld h, b                                       ; $6291: $60
    inc e                                         ; $6292: $1C
    nop                                           ; $6293: $00
    ld b, b                                       ; $6294: $40
    ld d, c                                       ; $6295: $51
    ld a, [de]                                    ; $6296: $1A
    sbc e                                         ; $6297: $9B
    ld h, d                                       ; $6298: $62
    nop                                           ; $6299: $00
    nop                                           ; $629A: $00
    add hl, bc                                    ; $629B: $09
    inc bc                                        ; $629C: $03
    add sp, $00                                   ; $629D: $E8 $00
    ld b, $F0                                     ; $629F: $06 $F0
    ld [bc], a                                    ; $62A1: $02
    rlca                                          ; $62A2: $07
    ld hl, sp+$04                                 ; $62A3: $F8 $04
    rlca                                          ; $62A5: $07
    nop                                           ; $62A6: $00
    ld b, $11                                     ; $62A7: $06 $11
    ld [$2108], sp                                ; $62A9: $08 $08 $21
    add sp, $0A                                   ; $62AC: $E8 $0A
    add hl, de                                    ; $62AE: $19

jr_009_62AF:
    ldh a, [$FF0C]                                ; $62AF: $F0 $0C
    rla                                           ; $62B1: $17
    ld hl, sp+$0E                                 ; $62B2: $F8 $0E
    rla                                           ; $62B4: $17
    nop                                           ; $62B5: $00
    stop                                          ; $62B6: $10 $00
    inc e                                         ; $62B8: $1C
    nop                                           ; $62B9: $00
    ld h, b                                       ; $62BA: $60
    ld d, d                                       ; $62BB: $52
    ld a, [de]                                    ; $62BC: $1A
    pop bc                                        ; $62BD: $C1
    ld h, d                                       ; $62BE: $62
    ld b, $FA                                     ; $62BF: $06 $FA
    ld [$E042], sp                                ; $62C1: $08 $42 $E0
    nop                                           ; $62C4: $00
    jr c, jr_009_62AF                             ; $62C5: $38 $E8

    ld [bc], a                                    ; $62C7: $02
    ld [hl], $F0                                  ; $62C8: $36 $F0
    inc b                                         ; $62CA: $04
    inc [hl]                                      ; $62CB: $34
    ld hl, sp+$06                                 ; $62CC: $F8 $06
    add hl, sp                                    ; $62CE: $39
    nop                                           ; $62CF: $00
    ld [$083F], sp                                ; $62D0: $08 $3F $08
    ld a, [bc]                                    ; $62D3: $0A
    ld b, [hl]                                    ; $62D4: $46
    ldh a, [$FF0C]                                ; $62D5: $F0 $0C
    ld b, h                                       ; $62D7: $44
    ld hl, sp+$0E                                 ; $62D8: $F8 $0E
    nop                                           ; $62DA: $00
    ld b, $00                                     ; $62DB: $06 $00
    ld h, b                                       ; $62DD: $60
    halt                                          ; $62DE: $76
    ld a, [de]                                    ; $62DF: $1A
    xor $62                                       ; $62E0: $EE $62
    rst RST_38                                    ; $62E2: $FF
    nop                                           ; $62E3: $00
    nop                                           ; $62E4: $00
    ld b, $05                                     ; $62E5: $06 $05
    ld h, b                                       ; $62E7: $60
    halt                                          ; $62E8: $76
    ld a, [de]                                    ; $62E9: $1A
    xor $62                                       ; $62EA: $EE $62
    rst RST_38                                    ; $62EC: $FF
    nop                                           ; $62ED: $00
    ld b, $1D                                     ; $62EE: $06 $1D
    ldh a, [rP1]                                  ; $62F0: $F0 $00
    dec e                                         ; $62F2: $1D
    add sp, $02                                   ; $62F3: $E8 $02
    add hl, de                                    ; $62F5: $19
    ldh [rDIV], a                                 ; $62F6: $E0 $04
    dec l                                         ; $62F8: $2D
    and $06                                       ; $62F9: $E6 $06
    dec c                                         ; $62FB: $0D
    db $EC                                        ; $62FC: $EC
    ld [$D814], sp                                ; $62FD: $08 $14 $D8
    ld a, [bc]                                    ; $6300: $0A
    nop                                           ; $6301: $00
    ld bc, $2005                                  ; $6302: $01 $05 $20
    ld [hl], a                                    ; $6305: $77
    ld a, [de]                                    ; $6306: $1A
    dec bc                                        ; $6307: $0B
    ld h, e                                       ; $6308: $63
    ld b, $00                                     ; $6309: $06 $00
    dec b                                         ; $630B: $05
    db $10                                        ; $630C: $10
    rst RST_28                                    ; $630D: $EF

jr_009_630E:
    nop                                           ; $630E: $00
    db $10                                        ; $630F: $10
    rst RST_30                                    ; $6310: $F7
    ld [bc], a                                    ; $6311: $02
    jr nz, @-$0F                                  ; $6312: $20 $EF

    inc b                                         ; $6314: $04
    jr nz, jr_009_630E                            ; $6315: $20 $F7

    ld b, $20                                     ; $6317: $06 $20
    rst RST_38                                    ; $6319: $FF
    ld [$0600], sp                                ; $631A: $08 $00 $06

jr_009_631D:
    ld [bc], a                                    ; $631D: $02
    ret nz                                        ; $631E: $C0

    ld [hl], a                                    ; $631F: $77
    ld a, [de]                                    ; $6320: $1A
    cpl                                           ; $6321: $2F
    ld h, e                                       ; $6322: $63
    nop                                           ; $6323: $00
    ld a, [bc]                                    ; $6324: $0A
    nop                                           ; $6325: $00
    ld b, $02                                     ; $6326: $06 $02

jr_009_6328:
    ret nz                                        ; $6328: $C0

    ld [hl], a                                    ; $6329: $77
    ld a, [de]                                    ; $632A: $1A
    cpl                                           ; $632B: $2F
    ld h, e                                       ; $632C: $63
    ld [$0E10], sp                                ; $632D: $08 $10 $0E
    dec e                                         ; $6330: $1D
    ldh [rP1], a                                  ; $6331: $E0 $00
    jr nz, jr_009_631D                            ; $6333: $20 $E8

    ld [bc], a                                    ; $6335: $02
    jr nz, jr_009_6328                            ; $6336: $20 $F0

    inc b                                         ; $6338: $04
    db $10                                        ; $6339: $10
    add sp, $06                                   ; $633A: $E8 $06
    db $10                                        ; $633C: $10
    ldh a, [$FF08]                                ; $633D: $F0 $08
    rla                                           ; $633F: $17
    ld hl, sp+$0A                                 ; $6340: $F8 $0A
    ld a, [de]                                    ; $6342: $1A
    nop                                           ; $6343: $00
    inc c                                         ; $6344: $0C
    inc e                                         ; $6345: $1C
    ld [$070E], sp                                ; $6346: $08 $0E $07
    ld hl, sp+$10                                 ; $6349: $F8 $10
    ld a, [bc]                                    ; $634B: $0A
    nop                                           ; $634C: $00
    ld [de], a                                    ; $634D: $12
    inc b                                         ; $634E: $04
    ld [$2214], sp                                ; $634F: $08 $14 $22
    db $10                                        ; $6352: $10
    ld d, $FA                                     ; $6353: $16 $FA
    nop                                           ; $6355: $00
    jr jr_009_6385                                ; $6356: $18 $2D

    ldh [rNR30], a                                ; $6358: $E0 $1A
    nop                                           ; $635A: $00
    ld b, $05                                     ; $635B: $06 $05
    add b                                         ; $635D: $80
    ld a, c                                       ; $635E: $79
    ld a, [de]                                    ; $635F: $1A
    ld h, h                                       ; $6360: $64
    ld h, e                                       ; $6361: $63
    dec b                                         ; $6362: $05
    ld bc, $0A0B                                  ; $6363: $01 $0B $0A
    db $E4                                        ; $6366: $E4
    nop                                           ; $6367: $00
    ld b, $EB                                     ; $6368: $06 $EB
    ld [bc], a                                    ; $636A: $02
    ld d, $EC                                     ; $636B: $16 $EC
    inc b                                         ; $636D: $04
    rlca                                          ; $636E: $07
    di                                            ; $636F: $F3
    ld b, $28                                     ; $6370: $06 $28
    db $ED                                        ; $6372: $ED
    ld [$F417], sp                                ; $6373: $08 $17 $F4
    ld a, [bc]                                    ; $6376: $0A
    daa                                           ; $6377: $27
    push af                                       ; $6378: $F5
    inc c                                         ; $6379: $0C
    inc e                                         ; $637A: $1C
    db $FC                                        ; $637B: $FC
    ld c, $2C                                     ; $637C: $0E $2C
    db $FD                                        ; $637E: $FD
    db $10                                        ; $637F: $10
    dec e                                         ; $6380: $1D
    inc b                                         ; $6381: $04
    ld [de], a                                    ; $6382: $12
    ld [hl], $03                                  ; $6383: $36 $03

jr_009_6385:
    inc d                                         ; $6385: $14
    nop                                           ; $6386: $00
    ldh [$FF7A], a                                ; $6387: $E0 $7A
    ld a, [de]                                    ; $6389: $1A
    adc [hl]                                      ; $638A: $8E
    ld h, e                                       ; $638B: $63

jr_009_638C:
    rlca                                          ; $638C: $07
    db $10                                        ; $638D: $10

jr_009_638E:
    ld [$E818], sp                                ; $638E: $08 $18 $E8
    nop                                           ; $6391: $00
    jr @-$0E                                      ; $6392: $18 $F0

    ld [bc], a                                    ; $6394: $02
    jr @-$06                                      ; $6395: $18 $F8

jr_009_6397:
    inc b                                         ; $6397: $04
    jr jr_009_639A                                ; $6398: $18 $00

jr_009_639A:
    ld b, $20                                     ; $639A: $06 $20
    ld b, $08                                     ; $639C: $06 $08
    jr z, jr_009_638E                             ; $639E: $28 $EE

    ld a, [bc]                                    ; $63A0: $0A
    jr z, @-$08                                   ; $63A1: $28 $F6

    inc c                                         ; $63A3: $0C

jr_009_63A4:
    jr z, jr_009_63A4                             ; $63A4: $28 $FE

    ld c, $00                                     ; $63A6: $0E $00
    ld bc, $E09C                                  ; $63A8: $01 $9C $E0
    ld a, e                                       ; $63AB: $7B
    ld a, [de]                                    ; $63AC: $1A

jr_009_63AD:
    or c                                          ; $63AD: $B1
    ld h, e                                       ; $63AE: $63
    nop                                           ; $63AF: $00
    nop                                           ; $63B0: $00
    dec bc                                        ; $63B1: $0B
    jr nz, jr_009_638C                            ; $63B2: $20 $D8

    nop                                           ; $63B4: $00
    jr nz, jr_009_6397                            ; $63B5: $20 $E0

    ld [bc], a                                    ; $63B7: $02
    jr nz, @-$16                                  ; $63B8: $20 $E8

    inc b                                         ; $63BA: $04
    jr nz, jr_009_63AD                            ; $63BB: $20 $F0

    ld b, $20                                     ; $63BD: $06 $20
    ld hl, sp+$08                                 ; $63BF: $F8 $08
    jr nz, jr_009_63C3                            ; $63C1: $20 $00

jr_009_63C3:
    ld a, [bc]                                    ; $63C3: $0A
    jr nz, jr_009_63CE                            ; $63C4: $20 $08

    inc c                                         ; $63C6: $0C
    jr jr_009_63D9                                ; $63C7: $18 $10

    ld c, $10                                     ; $63C9: $0E $10
    add sp, $10                                   ; $63CB: $E8 $10
    db $10                                        ; $63CD: $10

jr_009_63CE:
    ldh a, [rNR12]                                ; $63CE: $F0 $12
    db $10                                        ; $63D0: $10
    ld hl, sp+$14                                 ; $63D1: $F8 $14
    nop                                           ; $63D3: $00
    ld b, b                                       ; $63D4: $40
    ld a, l                                       ; $63D5: $7D
    ld a, [de]                                    ; $63D6: $1A
    db $DB                                        ; $63D7: $DB
    ld h, e                                       ; $63D8: $63

jr_009_63D9:
    nop                                           ; $63D9: $00

jr_009_63DA:
    nop                                           ; $63DA: $00
    dec b                                         ; $63DB: $05
    ld [hl-], a                                   ; $63DC: $32
    pop af                                        ; $63DD: $F1
    nop                                           ; $63DE: $00
    jr nc, jr_009_63DA                            ; $63DF: $30 $F9

    ld [bc], a                                    ; $63E1: $02

jr_009_63E2:
    jr nc, jr_009_63E5                            ; $63E2: $30 $01

    inc b                                         ; $63E4: $04

jr_009_63E5:
    jr nc, jr_009_63F0                            ; $63E5: $30 $09

    ld b, $3D                                     ; $63E7: $06 $3D
    ld de, $0008                                  ; $63E9: $11 $08 $00
    ld bc, $E09C                                  ; $63EC: $01 $9C $E0
    ld a, l                                       ; $63EF: $7D

jr_009_63F0:
    ld a, [de]                                    ; $63F0: $1A
    push af                                       ; $63F1: $F5
    ld h, e                                       ; $63F2: $63
    nop                                           ; $63F3: $00
    nop                                           ; $63F4: $00
    ld [$DF20], sp                                ; $63F5: $08 $20 $DF

jr_009_63F8:
    nop                                           ; $63F8: $00
    jr nz, jr_009_63E2                            ; $63F9: $20 $E7

    ld [bc], a                                    ; $63FB: $02
    ld e, $EF                                     ; $63FC: $1E $EF
    inc b                                         ; $63FE: $04
    jr nz, jr_009_63F8                            ; $63FF: $20 $F7

    ld b, $20                                     ; $6401: $06 $20
    rst RST_38                                    ; $6403: $FF
    ld [$0720], sp                                ; $6404: $08 $20 $07
    ld a, [bc]                                    ; $6407: $0A
    db $10                                        ; $6408: $10
    rst RST_20                                    ; $6409: $E7
    inc c                                         ; $640A: $0C
    db $10                                        ; $640B: $10
    db $FD                                        ; $640C: $FD
    ld c, $00                                     ; $640D: $0E $00
    ld bc, $E09D                                  ; $640F: $01 $9D $E0

jr_009_6412:
    ld a, [hl]                                    ; $6412: $7E
    ld a, [de]                                    ; $6413: $1A

jr_009_6414:
    jr @+$66                                      ; $6414: $18 $64

    cp $00                                        ; $6416: $FE $00
    ld [$F810], sp                                ; $6418: $08 $10 $F8
    nop                                           ; $641B: $00
    db $10                                        ; $641C: $10
    ldh a, [rSC]                                  ; $641D: $F0 $02
    jr nz, @-$0E                                  ; $641F: $20 $F0

    inc b                                         ; $6421: $04
    jr nc, jr_009_6414                            ; $6422: $30 $F0

    ld b, $30                                     ; $6424: $06 $30
    ld hl, sp+$08                                 ; $6426: $F8 $08
    jr jr_009_6412                                ; $6428: $18 $E8

    ld a, [bc]                                    ; $642A: $0A
    jr z, @-$16                                   ; $642B: $28 $E8

    inc c                                         ; $642D: $0C
    inc a                                         ; $642E: $3C
    add sp, $0E                                   ; $642F: $E8 $0E
    nop                                           ; $6431: $00
    ldh [rSVBK], a                                ; $6432: $E0 $70
    ld hl, $6439                                  ; $6434: $21 $39 $64
    cp $00                                        ; $6437: $FE $00
    ld b, $20                                     ; $6439: $06 $20
    ld hl, sp+$00                                 ; $643B: $F8 $00
    stop                                          ; $643D: $10 $00
    ld [bc], a                                    ; $643F: $02
    jr nz, jr_009_6442                            ; $6440: $20 $00

jr_009_6442:
    inc b                                         ; $6442: $04
    jr nc, jr_009_6445                            ; $6443: $30 $00

jr_009_6445:
    ld b, $2E                                     ; $6445: $06 $2E
    ld [$3E08], sp                                ; $6447: $08 $08 $3E
    ld [$000A], sp                                ; $644A: $08 $0A $00
    ld bc, $A000                                  ; $644D: $01 $00 $A0
    ld [hl], c                                    ; $6450: $71
    ld hl, $6460                                  ; $6451: $21 $60 $64
    cp $00                                        ; $6454: $FE $00
    nop                                           ; $6456: $00
    ld bc, $A005                                  ; $6457: $01 $05 $A0
    ld [hl], c                                    ; $645A: $71
    ld hl, $6460                                  ; $645B: $21 $60 $64
    cp $00                                        ; $645E: $FE $00
    ld b, $10                                     ; $6460: $06 $10
    ld hl, sp+$00                                 ; $6462: $F8 $00

jr_009_6464:
    db $10                                        ; $6464: $10
    ldh a, [rSC]                                  ; $6465: $F0 $02
    inc hl                                        ; $6467: $23
    ldh a, [rDIV]                                 ; $6468: $F0 $04
    jr nc, jr_009_6464                            ; $646A: $30 $F8

    ld b, $36                                     ; $646C: $06 $36
    ldh a, [$FF08]                                ; $646E: $F0 $08
    inc a                                         ; $6470: $3C
    add sp, $0A                                   ; $6471: $E8 $0A
    nop                                           ; $6473: $00
    ld bc, $6000                                  ; $6474: $01 $00 $60
    ld [hl], d                                    ; $6477: $72
    ld hl, $647D                                  ; $6478: $21 $7D $64
    ld [bc], a                                    ; $647B: $02
    nop                                           ; $647C: $00
    ld a, [bc]                                    ; $647D: $0A
    ld e, $E3                                     ; $647E: $1E $E3
    nop                                           ; $6480: $00

jr_009_6481:
    rra                                           ; $6481: $1F
    db $EB                                        ; $6482: $EB
    ld [bc], a                                    ; $6483: $02
    ld e, $F3                                     ; $6484: $1E $F3
    inc b                                         ; $6486: $04
    ld e, $FB                                     ; $6487: $1E $FB
    ld b, $24                                     ; $6489: $06 $24
    inc bc                                        ; $648B: $03

jr_009_648C:
    ld [$EB2F], sp                                ; $648C: $08 $2F $EB

jr_009_648F:
    ld a, [bc]                                    ; $648F: $0A
    ld l, $F3                                     ; $6490: $2E $F3
    inc c                                         ; $6492: $0C
    ld l, $FB                                     ; $6493: $2E $FB
    ld c, $34                                     ; $6495: $0E $34
    inc bc                                        ; $6497: $03
    db $10                                        ; $6498: $10
    inc a                                         ; $6499: $3C
    dec bc                                        ; $649A: $0B
    ld [de], a                                    ; $649B: $12
    nop                                           ; $649C: $00
    nop                                           ; $649D: $00
    dec b                                         ; $649E: $05
    and b                                         ; $649F: $A0
    ld [hl], e                                    ; $64A0: $73
    ld hl, $64A6                                  ; $64A1: $21 $A6 $64
    ld a, [de]                                    ; $64A4: $1A
    nop                                           ; $64A5: $00
    ld a, [bc]                                    ; $64A6: $0A
    jr z, jr_009_6481                             ; $64A7: $28 $D8

    nop                                           ; $64A9: $00
    jr nz, jr_009_648C                            ; $64AA: $20 $E0

    ld [bc], a                                    ; $64AC: $02
    jr nc, jr_009_648F                            ; $64AD: $30 $E0

    inc b                                         ; $64AF: $04
    rla                                           ; $64B0: $17
    add sp, $06                                   ; $64B1: $E8 $06
    daa                                           ; $64B3: $27
    add sp, $08                                   ; $64B4: $E8 $08
    dec d                                         ; $64B6: $15

jr_009_64B7:
    ldh a, [$FF0A]                                ; $64B7: $F0 $0A
    add hl, hl                                    ; $64B9: $29
    ldh a, [$FF0C]                                ; $64BA: $F0 $0C
    inc d                                         ; $64BC: $14
    ld hl, sp+$0E                                 ; $64BD: $F8 $0E
    jr nc, jr_009_64B7                            ; $64BF: $30 $F6

    db $10                                        ; $64C1: $10
    ld [hl-], a                                   ; $64C2: $32
    cp $12                                        ; $64C3: $FE $12
    nop                                           ; $64C5: $00
    nop                                           ; $64C6: $00
    nop                                           ; $64C7: $00
    ldh [$FF74], a                                ; $64C8: $E0 $74
    ld hl, $64CF                                  ; $64CA: $21 $CF $64
    ld a, [de]                                    ; $64CD: $1A
    nop                                           ; $64CE: $00
    ld b, $26                                     ; $64CF: $06 $26
    ret c                                         ; $64D1: $D8

jr_009_64D2:
    nop                                           ; $64D2: $00
    ld h, $E0                                     ; $64D3: $26 $E0
    ld [bc], a                                    ; $64D5: $02
    ld a, [hl+]                                   ; $64D6: $2A
    add sp, $04                                   ; $64D7: $E8 $04
    ld sp, $06F0                                  ; $64D9: $31 $F0 $06
    inc [hl]                                      ; $64DC: $34
    ld hl, sp+$08                                 ; $64DD: $F8 $08
    ld [hl], $E0                                  ; $64DF: $36 $E0
    ld a, [bc]                                    ; $64E1: $0A
    nop                                           ; $64E2: $00
    nop                                           ; $64E3: $00
    nop                                           ; $64E4: $00
    and b                                         ; $64E5: $A0
    ld [hl], l                                    ; $64E6: $75
    ld hl, $64EC                                  ; $64E7: $21 $EC $64
    ld a, [de]                                    ; $64EA: $1A
    nop                                           ; $64EB: $00
    ld [bc], a                                    ; $64EC: $02
    ld a, [hl+]                                   ; $64ED: $2A
    ret c                                         ; $64EE: $D8

    nop                                           ; $64EF: $00
    jr nz, jr_009_64D2                            ; $64F0: $20 $E0

    ld [bc], a                                    ; $64F2: $02
    nop                                           ; $64F3: $00
    ld bc, $E000                                  ; $64F4: $01 $00 $E0
    ld [hl], l                                    ; $64F7: $75
    ld hl, $64FD                                  ; $64F8: $21 $FD $64
    ld d, $00                                     ; $64FB: $16 $00
    rlca                                          ; $64FD: $07
    dec e                                         ; $64FE: $1D
    push de                                       ; $64FF: $D5
    nop                                           ; $6500: $00
    dec h                                         ; $6501: $25
    db $DD                                        ; $6502: $DD
    ld [bc], a                                    ; $6503: $02
    ld e, $E5                                     ; $6504: $1E $E5
    inc b                                         ; $6506: $04
    ld [hl+], a                                   ; $6507: $22
    db $ED                                        ; $6508: $ED
    ld b, $15                                     ; $6509: $06 $15
    db $DD                                        ; $650B: $DD
    ld [$E52E], sp                                ; $650C: $08 $2E $E5
    ld a, [bc]                                    ; $650F: $0A
    ld [hl-], a                                   ; $6510: $32
    db $ED                                        ; $6511: $ED
    inc c                                         ; $6512: $0C
    ld bc, $FF68                                  ; $6513: $01 $68 $FF
    rst RST_38                                    ; $6516: $FF
    ld a, [hl+]                                   ; $6517: $2A
    ld l, b                                       ; $6518: $68
    ld c, l                                       ; $6519: $4D
    ld l, b                                       ; $651A: $68
    ld e, h                                       ; $651B: $5C
    ld l, b                                       ; $651C: $68
    add d                                         ; $651D: $82
    ld l, b                                       ; $651E: $68
    ld a, [hl+]                                   ; $651F: $2A
    ld l, b                                       ; $6520: $68
    ld c, l                                       ; $6521: $4D
    ld l, b                                       ; $6522: $68
    ld e, h                                       ; $6523: $5C
    ld l, b                                       ; $6524: $68
    sub c                                         ; $6525: $91
    ld l, b                                       ; $6526: $68
    ld a, [hl+]                                   ; $6527: $2A
    ld l, b                                       ; $6528: $68
    and b                                         ; $6529: $A0
    ld l, b                                       ; $652A: $68
    rst RST_38                                    ; $652B: $FF
    rst RST_38                                    ; $652C: $FF
    xor a                                         ; $652D: $AF
    ld l, b                                       ; $652E: $68
    rst RST_38                                    ; $652F: $FF
    rst RST_38                                    ; $6530: $FF
    ret c                                         ; $6531: $D8

    ld l, b                                       ; $6532: $68
    rst RST_38                                    ; $6533: $FF
    rst RST_38                                    ; $6534: $FF
    ld bc, $FF69                                  ; $6535: $01 $69 $FF
    rst RST_38                                    ; $6538: $FF
    ret c                                         ; $6539: $D8

    ld l, b                                       ; $653A: $68
    rst RST_38                                    ; $653B: $FF
    rst RST_38                                    ; $653C: $FF
    rst RST_38                                    ; $653D: $FF
    rst RST_38                                    ; $653E: $FF
    ret c                                         ; $653F: $D8

    ld l, b                                       ; $6540: $68
    rst RST_38                                    ; $6541: $FF
    rst RST_38                                    ; $6542: $FF
    ld bc, $FF69                                  ; $6543: $01 $69 $FF
    rst RST_38                                    ; $6546: $FF
    ret c                                         ; $6547: $D8

    ld l, b                                       ; $6548: $68
    rst RST_38                                    ; $6549: $FF
    rst RST_38                                    ; $654A: $FF
    xor a                                         ; $654B: $AF
    ld l, b                                       ; $654C: $68
    rst RST_38                                    ; $654D: $FF
    rst RST_38                                    ; $654E: $FF
    rst RST_38                                    ; $654F: $FF
    rst RST_38                                    ; $6550: $FF
    daa                                           ; $6551: $27
    ld l, c                                       ; $6552: $69
    rst RST_38                                    ; $6553: $FF
    rst RST_38                                    ; $6554: $FF
    rst RST_38                                    ; $6555: $FF
    rst RST_38                                    ; $6556: $FF
    daa                                           ; $6557: $27
    ld l, c                                       ; $6558: $69
    rst RST_38                                    ; $6559: $FF
    rst RST_38                                    ; $655A: $FF
    ld c, l                                       ; $655B: $4D
    ld l, c                                       ; $655C: $69
    rst RST_38                                    ; $655D: $FF
    rst RST_38                                    ; $655E: $FF
    ld c, l                                       ; $655F: $4D
    ld l, c                                       ; $6560: $69
    rst RST_38                                    ; $6561: $FF
    rst RST_38                                    ; $6562: $FF
    add b                                         ; $6563: $80
    ld l, c                                       ; $6564: $69
    rst RST_38                                    ; $6565: $FF
    rst RST_38                                    ; $6566: $FF
    add b                                         ; $6567: $80
    ld l, c                                       ; $6568: $69
    rst RST_38                                    ; $6569: $FF
    rst RST_38                                    ; $656A: $FF
    and [hl]                                      ; $656B: $A6
    ld l, c                                       ; $656C: $69
    rst RST_38                                    ; $656D: $FF
    rst RST_38                                    ; $656E: $FF
    and [hl]                                      ; $656F: $A6
    ld l, c                                       ; $6570: $69
    rst RST_38                                    ; $6571: $FF
    rst RST_38                                    ; $6572: $FF
    daa                                           ; $6573: $27
    ld l, c                                       ; $6574: $69
    rst RST_38                                    ; $6575: $FF
    rst RST_38                                    ; $6576: $FF
    rst RST_38                                    ; $6577: $FF
    rst RST_38                                    ; $6578: $FF
    ldh [rBCPD], a                                ; $6579: $E0 $69
    rst RST_38                                    ; $657B: $FF
    rst RST_38                                    ; $657C: $FF
    rst RST_38                                    ; $657D: $FF
    rst RST_38                                    ; $657E: $FF
    inc de                                        ; $657F: $13
    ld l, d                                       ; $6580: $6A
    rst RST_38                                    ; $6581: $FF
    rst RST_38                                    ; $6582: $FF
    rst RST_38                                    ; $6583: $FF
    rst RST_38                                    ; $6584: $FF
    inc a                                         ; $6585: $3C
    ld l, d                                       ; $6586: $6A
    rst RST_38                                    ; $6587: $FF
    rst RST_38                                    ; $6588: $FF
    daa                                           ; $6589: $27
    ld l, c                                       ; $658A: $69
    rst RST_38                                    ; $658B: $FF
    rst RST_38                                    ; $658C: $FF
    rst RST_38                                    ; $658D: $FF
    rst RST_38                                    ; $658E: $FF
    ldh [rBCPD], a                                ; $658F: $E0 $69
    rst RST_38                                    ; $6591: $FF
    rst RST_38                                    ; $6592: $FF
    ld e, h                                       ; $6593: $5C
    ld l, d                                       ; $6594: $6A
    ld a, h                                       ; $6595: $7C
    ld l, d                                       ; $6596: $6A
    ldh [rBCPD], a                                ; $6597: $E0 $69
    rst RST_38                                    ; $6599: $FF
    rst RST_38                                    ; $659A: $FF
    rst RST_38                                    ; $659B: $FF
    rst RST_38                                    ; $659C: $FF
    ld b, d                                       ; $659D: $42
    ld l, l                                       ; $659E: $6D
    rst RST_38                                    ; $659F: $FF
    rst RST_38                                    ; $65A0: $FF
    sbc d                                         ; $65A1: $9A
    ld l, d                                       ; $65A2: $6A
    rst RST_38                                    ; $65A3: $FF
    rst RST_38                                    ; $65A4: $FF
    ld b, d                                       ; $65A5: $42
    ld l, l                                       ; $65A6: $6D
    rst RST_38                                    ; $65A7: $FF
    rst RST_38                                    ; $65A8: $FF
    rst RST_38                                    ; $65A9: $FF
    rst RST_38                                    ; $65AA: $FF
    ld [de], a                                    ; $65AB: $12
    ld l, l                                       ; $65AC: $6D
    rst RST_38                                    ; $65AD: $FF
    rst RST_38                                    ; $65AE: $FF
    add $6A                                       ; $65AF: $C6 $6A
    ld a, h                                       ; $65B1: $7C
    ld l, d                                       ; $65B2: $6A
    and [hl]                                      ; $65B3: $A6
    ld l, c                                       ; $65B4: $69
    rst RST_38                                    ; $65B5: $FF
    rst RST_38                                    ; $65B6: $FF
    daa                                           ; $65B7: $27
    ld l, c                                       ; $65B8: $69
    rst RST_38                                    ; $65B9: $FF
    rst RST_38                                    ; $65BA: $FF
    rst RST_38                                    ; $65BB: $FF
    rst RST_38                                    ; $65BC: $FF
    ld hl, $FF6C                                  ; $65BD: $21 $6C $FF
    rst RST_38                                    ; $65C0: $FF
    jp hl                                         ; $65C1: $E9


    ld l, d                                       ; $65C2: $6A
    rst RST_38                                    ; $65C3: $FF
    rst RST_38                                    ; $65C4: $FF
    ld hl, $FF6C                                  ; $65C5: $21 $6C $FF
    rst RST_38                                    ; $65C8: $FF
    rst RST_38                                    ; $65C9: $FF
    rst RST_38                                    ; $65CA: $FF
    ld b, d                                       ; $65CB: $42
    ld l, l                                       ; $65CC: $6D
    rst RST_38                                    ; $65CD: $FF
    rst RST_38                                    ; $65CE: $FF
    ld [de], a                                    ; $65CF: $12
    ld l, e                                       ; $65D0: $6B
    rst RST_38                                    ; $65D1: $FF
    rst RST_38                                    ; $65D2: $FF
    ld b, d                                       ; $65D3: $42
    ld l, l                                       ; $65D4: $6D
    rst RST_38                                    ; $65D5: $FF
    rst RST_38                                    ; $65D6: $FF
    rst RST_38                                    ; $65D7: $FF
    rst RST_38                                    ; $65D8: $FF
    ldh [rBCPD], a                                ; $65D9: $E0 $69
    rst RST_38                                    ; $65DB: $FF
    rst RST_38                                    ; $65DC: $FF
    jr c, jr_009_664A                             ; $65DD: $38 $6B

    ld e, b                                       ; $65DF: $58
    ld l, e                                       ; $65E0: $6B
    ld [hl], b                                    ; $65E1: $70
    ld l, e                                       ; $65E2: $6B
    ld e, b                                       ; $65E3: $58
    ld l, e                                       ; $65E4: $6B
    add b                                         ; $65E5: $80
    ld l, c                                       ; $65E6: $69
    rst RST_38                                    ; $65E7: $FF
    rst RST_38                                    ; $65E8: $FF
    ldh [rBCPD], a                                ; $65E9: $E0 $69
    rst RST_38                                    ; $65EB: $FF
    rst RST_38                                    ; $65EC: $FF
    rst RST_38                                    ; $65ED: $FF
    rst RST_38                                    ; $65EE: $FF
    ld [de], a                                    ; $65EF: $12
    ld l, l                                       ; $65F0: $6D
    rst RST_38                                    ; $65F1: $FF
    rst RST_38                                    ; $65F2: $FF
    adc l                                         ; $65F3: $8D
    ld l, e                                       ; $65F4: $6B
    xor l                                         ; $65F5: $AD
    ld l, e                                       ; $65F6: $6B
    push bc                                       ; $65F7: $C5
    ld l, e                                       ; $65F8: $6B
    xor l                                         ; $65F9: $AD
    ld l, e                                       ; $65FA: $6B
    push bc                                       ; $65FB: $C5
    ld l, e                                       ; $65FC: $6B
    xor l                                         ; $65FD: $AD
    ld l, e                                       ; $65FE: $6B
    daa                                           ; $65FF: $27
    ld l, c                                       ; $6600: $69
    rst RST_38                                    ; $6601: $FF
    rst RST_38                                    ; $6602: $FF
    rst RST_38                                    ; $6603: $FF
    rst RST_38                                    ; $6604: $FF
    ld [de], a                                    ; $6605: $12
    ld l, l                                       ; $6606: $6D
    rst RST_38                                    ; $6607: $FF
    rst RST_38                                    ; $6608: $FF
    adc l                                         ; $6609: $8D
    ld l, e                                       ; $660A: $6B
    xor l                                         ; $660B: $AD
    ld l, e                                       ; $660C: $6B
    push bc                                       ; $660D: $C5
    ld l, e                                       ; $660E: $6B
    xor l                                         ; $660F: $AD
    ld l, e                                       ; $6610: $6B
    push bc                                       ; $6611: $C5
    ld l, e                                       ; $6612: $6B
    xor l                                         ; $6613: $AD
    ld l, e                                       ; $6614: $6B
    daa                                           ; $6615: $27
    ld l, c                                       ; $6616: $69
    rst RST_38                                    ; $6617: $FF
    rst RST_38                                    ; $6618: $FF
    rst RST_38                                    ; $6619: $FF
    rst RST_38                                    ; $661A: $FF
    rst RST_18                                    ; $661B: $DF
    ld l, e                                       ; $661C: $6B
    ld b, $6C                                     ; $661D: $06 $6C
    ld [$FF69], a                                 ; $661F: $EA $69 $FF
    rst RST_38                                    ; $6622: $FF
    sub a                                         ; $6623: $97
    ld l, l                                       ; $6624: $6D
    rst RST_38                                    ; $6625: $FF
    rst RST_38                                    ; $6626: $FF
    ld d, a                                       ; $6627: $57
    ld l, c                                       ; $6628: $69
    rst RST_38                                    ; $6629: $FF
    rst RST_38                                    ; $662A: $FF
    inc e                                         ; $662B: $1C
    ld l, l                                       ; $662C: $6D
    rst RST_38                                    ; $662D: $FF
    rst RST_38                                    ; $662E: $FF
    ld c, h                                       ; $662F: $4C
    ld l, l                                       ; $6630: $6D
    rst RST_38                                    ; $6631: $FF
    rst RST_38                                    ; $6632: $FF
    ld b, d                                       ; $6633: $42
    ld l, l                                       ; $6634: $6D
    rst RST_38                                    ; $6635: $FF
    rst RST_38                                    ; $6636: $FF
    rst RST_38                                    ; $6637: $FF
    rst RST_38                                    ; $6638: $FF
    ld bc, $FF68                                  ; $6639: $01 $68 $FF
    rst RST_38                                    ; $663C: $FF
    rst RST_38                                    ; $663D: $FF
    rst RST_38                                    ; $663E: $FF
    add b                                         ; $663F: $80
    ld l, c                                       ; $6640: $69
    rst RST_38                                    ; $6641: $FF
    rst RST_38                                    ; $6642: $FF
    daa                                           ; $6643: $27
    ld l, c                                       ; $6644: $69
    rst RST_38                                    ; $6645: $FF
    rst RST_38                                    ; $6646: $FF
    rst RST_38                                    ; $6647: $FF
    rst RST_38                                    ; $6648: $FF
    inc a                                         ; $6649: $3C

jr_009_664A:
    ld l, d                                       ; $664A: $6A
    rst RST_38                                    ; $664B: $FF
    rst RST_38                                    ; $664C: $FF
    inc a                                         ; $664D: $3C
    ld l, d                                       ; $664E: $6A
    rst RST_38                                    ; $664F: $FF
    rst RST_38                                    ; $6650: $FF
    daa                                           ; $6651: $27
    ld l, c                                       ; $6652: $69
    rst RST_38                                    ; $6653: $FF
    rst RST_38                                    ; $6654: $FF
    rst RST_38                                    ; $6655: $FF
    rst RST_38                                    ; $6656: $FF
    ld hl, $FF6C                                  ; $6657: $21 $6C $FF
    rst RST_38                                    ; $665A: $FF
    ld c, d                                       ; $665B: $4A
    ld l, h                                       ; $665C: $6C
    rst RST_38                                    ; $665D: $FF
    rst RST_38                                    ; $665E: $FF
    rst RST_38                                    ; $665F: $FF
    rst RST_38                                    ; $6660: $FF
    ld c, l                                       ; $6661: $4D
    ld l, c                                       ; $6662: $69
    rst RST_38                                    ; $6663: $FF
    rst RST_38                                    ; $6664: $FF
    db $E3                                        ; $6665: $E3
    ld l, h                                       ; $6666: $6C
    rst RST_38                                    ; $6667: $FF
    rst RST_38                                    ; $6668: $FF
    ld hl, $FF6C                                  ; $6669: $21 $6C $FF
    rst RST_38                                    ; $666C: $FF
    rst RST_38                                    ; $666D: $FF
    rst RST_38                                    ; $666E: $FF
    ld [hl], e                                    ; $666F: $73
    ld l, h                                       ; $6670: $6C
    rst RST_38                                    ; $6671: $FF
    rst RST_38                                    ; $6672: $FF
    sbc h                                         ; $6673: $9C
    ld l, h                                       ; $6674: $6C
    cp h                                          ; $6675: $BC
    ld l, h                                       ; $6676: $6C
    ld [hl], e                                    ; $6677: $73
    ld l, h                                       ; $6678: $6C
    rst RST_38                                    ; $6679: $FF
    rst RST_38                                    ; $667A: $FF
    sbc h                                         ; $667B: $9C
    ld l, h                                       ; $667C: $6C
    adc $6C                                       ; $667D: $CE $6C
    rst RST_38                                    ; $667F: $FF
    rst RST_38                                    ; $6680: $FF
    adc l                                         ; $6681: $8D
    ld l, l                                       ; $6682: $6D
    rst RST_38                                    ; $6683: $FF
    rst RST_38                                    ; $6684: $FF
    ld c, l                                       ; $6685: $4D
    ld l, c                                       ; $6686: $69
    rst RST_38                                    ; $6687: $FF
    rst RST_38                                    ; $6688: $FF
    ld [de], a                                    ; $6689: $12
    ld l, l                                       ; $668A: $6D
    rst RST_38                                    ; $668B: $FF
    rst RST_38                                    ; $668C: $FF
    ld c, d                                       ; $668D: $4A
    ld l, h                                       ; $668E: $6C
    rst RST_38                                    ; $668F: $FF
    rst RST_38                                    ; $6690: $FF
    ld e, h                                       ; $6691: $5C
    ld l, b                                       ; $6692: $68
    sub c                                         ; $6693: $91
    ld l, b                                       ; $6694: $68
    rst RST_38                                    ; $6695: $FF
    rst RST_38                                    ; $6696: $FF
    ld [de], a                                    ; $6697: $12
    ld l, l                                       ; $6698: $6D
    rst RST_38                                    ; $6699: $FF
    rst RST_38                                    ; $669A: $FF
    rst RST_38                                    ; $669B: $FF
    rst RST_38                                    ; $669C: $FF
    ld [de], a                                    ; $669D: $12
    ld l, l                                       ; $669E: $6D
    rst RST_38                                    ; $669F: $FF
    rst RST_38                                    ; $66A0: $FF
    rst RST_38                                    ; $66A1: $FF
    rst RST_38                                    ; $66A2: $FF
    ld bc, $FF68                                  ; $66A3: $01 $68 $FF
    rst RST_38                                    ; $66A6: $FF
    ld [de], a                                    ; $66A7: $12
    ld l, l                                       ; $66A8: $6D
    rst RST_38                                    ; $66A9: $FF
    rst RST_38                                    ; $66AA: $FF
    ld b, d                                       ; $66AB: $42
    ld l, l                                       ; $66AC: $6D
    rst RST_38                                    ; $66AD: $FF
    rst RST_38                                    ; $66AE: $FF
    rst RST_38                                    ; $66AF: $FF
    rst RST_38                                    ; $66B0: $FF
    adc l                                         ; $66B1: $8D
    ld l, l                                       ; $66B2: $6D
    rst RST_38                                    ; $66B3: $FF
    rst RST_38                                    ; $66B4: $FF
    rst RST_38                                    ; $66B5: $FF
    rst RST_38                                    ; $66B6: $FF
    ld [de], a                                    ; $66B7: $12
    ld l, l                                       ; $66B8: $6D
    rst RST_38                                    ; $66B9: $FF
    rst RST_38                                    ; $66BA: $FF
    ld c, l                                       ; $66BB: $4D
    ld l, c                                       ; $66BC: $69
    rst RST_38                                    ; $66BD: $FF
    rst RST_38                                    ; $66BE: $FF
    ld c, l                                       ; $66BF: $4D
    ld l, c                                       ; $66C0: $69
    rst RST_38                                    ; $66C1: $FF
    rst RST_38                                    ; $66C2: $FF
    add b                                         ; $66C3: $80
    ld l, c                                       ; $66C4: $69
    rst RST_38                                    ; $66C5: $FF
    rst RST_38                                    ; $66C6: $FF
    add b                                         ; $66C7: $80
    ld l, c                                       ; $66C8: $69
    rst RST_38                                    ; $66C9: $FF
    rst RST_38                                    ; $66CA: $FF
    and [hl]                                      ; $66CB: $A6
    ld l, c                                       ; $66CC: $69
    rst RST_38                                    ; $66CD: $FF
    rst RST_38                                    ; $66CE: $FF
    daa                                           ; $66CF: $27
    ld l, c                                       ; $66D0: $69
    rst RST_38                                    ; $66D1: $FF
    rst RST_38                                    ; $66D2: $FF
    rst RST_38                                    ; $66D3: $FF
    rst RST_38                                    ; $66D4: $FF
    ld [de], a                                    ; $66D5: $12
    ld l, l                                       ; $66D6: $6D
    rst RST_38                                    ; $66D7: $FF
    rst RST_38                                    ; $66D8: $FF
    call nz, $FF6D                                ; $66D9: $C4 $6D $FF
    rst RST_38                                    ; $66DC: $FF
    ld bc, $FF6E                                  ; $66DD: $01 $6E $FF
    rst RST_38                                    ; $66E0: $FF
    call nz, $FF6D                                ; $66E1: $C4 $6D $FF
    rst RST_38                                    ; $66E4: $FF
    ld bc, $FF6E                                  ; $66E5: $01 $6E $FF
    rst RST_38                                    ; $66E8: $FF
    rst RST_38                                    ; $66E9: $FF
    rst RST_38                                    ; $66EA: $FF
    ld b, d                                       ; $66EB: $42
    ld l, l                                       ; $66EC: $6D
    rst RST_38                                    ; $66ED: $FF
    rst RST_38                                    ; $66EE: $FF
    ld d, [hl]                                    ; $66EF: $56
    ld l, l                                       ; $66F0: $6D
    rst RST_38                                    ; $66F1: $FF
    rst RST_38                                    ; $66F2: $FF
    ld h, b                                       ; $66F3: $60
    ld l, l                                       ; $66F4: $6D
    rst RST_38                                    ; $66F5: $FF
    rst RST_38                                    ; $66F6: $FF
    ld l, d                                       ; $66F7: $6A
    ld l, l                                       ; $66F8: $6D
    rst RST_38                                    ; $66F9: $FF
    rst RST_38                                    ; $66FA: $FF
    ld l, d                                       ; $66FB: $6A
    ld l, l                                       ; $66FC: $6D
    rst RST_38                                    ; $66FD: $FF
    rst RST_38                                    ; $66FE: $FF
    call nz, $FF6D                                ; $66FF: $C4 $6D $FF
    rst RST_38                                    ; $6702: $FF
    ld bc, $FF6E                                  ; $6703: $01 $6E $FF
    rst RST_38                                    ; $6706: $FF
    rst RST_38                                    ; $6707: $FF
    rst RST_38                                    ; $6708: $FF
    ld [de], a                                    ; $6709: $12
    ld l, l                                       ; $670A: $6D
    rst RST_38                                    ; $670B: $FF
    rst RST_38                                    ; $670C: $FF
    call nz, $FF6D                                ; $670D: $C4 $6D $FF
    rst RST_38                                    ; $6710: $FF
    ld bc, $FF6E                                  ; $6711: $01 $6E $FF
    rst RST_38                                    ; $6714: $FF
    rst RST_38                                    ; $6715: $FF
    rst RST_38                                    ; $6716: $FF
    adc $6D                                       ; $6717: $CE $6D
    rst RST_38                                    ; $6719: $FF
    rst RST_38                                    ; $671A: $FF
    rst RST_38                                    ; $671B: $FF
    rst RST_38                                    ; $671C: $FF
    daa                                           ; $671D: $27
    ld l, c                                       ; $671E: $69
    rst RST_38                                    ; $671F: $FF
    rst RST_38                                    ; $6720: $FF
    daa                                           ; $6721: $27
    ld l, c                                       ; $6722: $69
    rst RST_38                                    ; $6723: $FF
    rst RST_38                                    ; $6724: $FF
    rst RST_38                                    ; $6725: $FF
    rst RST_38                                    ; $6726: $FF
    ld c, l                                       ; $6727: $4D
    ld l, c                                       ; $6728: $69
    rst RST_38                                    ; $6729: $FF
    rst RST_38                                    ; $672A: $FF
    ld [de], a                                    ; $672B: $12
    ld l, l                                       ; $672C: $6D
    rst RST_38                                    ; $672D: $FF
    rst RST_38                                    ; $672E: $FF
    ld a, [hl+]                                   ; $672F: $2A
    ld l, [hl]                                    ; $6730: $6E
    ld b, $6C                                     ; $6731: $06 $6C
    daa                                           ; $6733: $27
    ld l, c                                       ; $6734: $69
    rst RST_38                                    ; $6735: $FF
    rst RST_38                                    ; $6736: $FF
    rst RST_38                                    ; $6737: $FF
    rst RST_38                                    ; $6738: $FF
    ld c, l                                       ; $6739: $4D
    ld l, c                                       ; $673A: $69
    rst RST_38                                    ; $673B: $FF
    rst RST_38                                    ; $673C: $FF
    ld [de], a                                    ; $673D: $12
    ld l, l                                       ; $673E: $6D
    rst RST_38                                    ; $673F: $FF
    rst RST_38                                    ; $6740: $FF
    rst RST_18                                    ; $6741: $DF
    ld l, e                                       ; $6742: $6B
    ld b, $6C                                     ; $6743: $06 $6C
    ld b, a                                       ; $6745: $47
    ld l, [hl]                                    ; $6746: $6E
    rst RST_38                                    ; $6747: $FF
    rst RST_38                                    ; $6748: $FF
    ld a, c                                       ; $6749: $79
    ld l, [hl]                                    ; $674A: $6E
    rst RST_38                                    ; $674B: $FF
    rst RST_38                                    ; $674C: $FF
    and d                                         ; $674D: $A2
    ld l, [hl]                                    ; $674E: $6E
    rst RST_38                                    ; $674F: $FF
    rst RST_38                                    ; $6750: $FF
    rst RST_38                                    ; $6751: $FF
    rst RST_38                                    ; $6752: $FF
    ld hl, $FF6C                                  ; $6753: $21 $6C $FF
    rst RST_38                                    ; $6756: $FF
    ld c, l                                       ; $6757: $4D
    ld l, c                                       ; $6758: $69
    rst RST_38                                    ; $6759: $FF
    rst RST_38                                    ; $675A: $FF
    add b                                         ; $675B: $80
    ld l, c                                       ; $675C: $69
    rst RST_38                                    ; $675D: $FF
    rst RST_38                                    ; $675E: $FF
    or b                                          ; $675F: $B0
    ld l, c                                       ; $6760: $69
    rst RST_38                                    ; $6761: $FF
    rst RST_38                                    ; $6762: $FF
    cp d                                          ; $6763: $BA
    ld l, c                                       ; $6764: $69
    rst RST_38                                    ; $6765: $FF
    rst RST_38                                    ; $6766: $FF
    ld [$FF69], a                                 ; $6767: $EA $69 $FF
    rst RST_38                                    ; $676A: $FF
    ld d, a                                       ; $676B: $57
    ld l, c                                       ; $676C: $69
    rst RST_38                                    ; $676D: $FF
    rst RST_38                                    ; $676E: $FF
    inc e                                         ; $676F: $1C
    ld l, l                                       ; $6770: $6D
    rst RST_38                                    ; $6771: $FF
    rst RST_38                                    ; $6772: $FF
    ld [$FF69], a                                 ; $6773: $EA $69 $FF
    rst RST_38                                    ; $6776: $FF
    jp hl                                         ; $6777: $E9


    ld l, e                                       ; $6778: $6B
    ld b, $6C                                     ; $6779: $06 $6C
    daa                                           ; $677B: $27
    ld l, c                                       ; $677C: $69
    rst RST_38                                    ; $677D: $FF
    rst RST_38                                    ; $677E: $FF
    rst RST_38                                    ; $677F: $FF
    rst RST_38                                    ; $6780: $FF
    ld hl, $FF6C                                  ; $6781: $21 $6C $FF
    rst RST_38                                    ; $6784: $FF
    jr c, jr_009_67F2                             ; $6785: $38 $6B

    ld e, b                                       ; $6787: $58
    ld l, e                                       ; $6788: $6B
    inc a                                         ; $6789: $3C
    ld l, d                                       ; $678A: $6A
    rst RST_38                                    ; $678B: $FF
    rst RST_38                                    ; $678C: $FF
    bit 5, [hl]                                   ; $678D: $CB $6E
    ldh [c], a                                    ; $678F: $E2
    ld l, [hl]                                    ; $6790: $6E
    bit 5, [hl]                                   ; $6791: $CB $6E
    nop                                           ; $6793: $00
    ld l, a                                       ; $6794: $6F
    daa                                           ; $6795: $27
    ld l, c                                       ; $6796: $69
    rst RST_38                                    ; $6797: $FF
    rst RST_38                                    ; $6798: $FF
    rst RST_38                                    ; $6799: $FF
    rst RST_38                                    ; $679A: $FF
    daa                                           ; $679B: $27
    ld l, c                                       ; $679C: $69
    rst RST_38                                    ; $679D: $FF
    rst RST_38                                    ; $679E: $FF
    ld hl, $FF6C                                  ; $679F: $21 $6C $FF
    rst RST_38                                    ; $67A2: $FF
    ld c, l                                       ; $67A3: $4D
    ld l, c                                       ; $67A4: $69
    rst RST_38                                    ; $67A5: $FF
    rst RST_38                                    ; $67A6: $FF
    ld e, $6F                                     ; $67A7: $1E $6F
    dec sp                                        ; $67A9: $3B
    ld l, a                                       ; $67AA: $6F
    ld [de], a                                    ; $67AB: $12
    ld l, l                                       ; $67AC: $6D
    rst RST_38                                    ; $67AD: $FF
    rst RST_38                                    ; $67AE: $FF
    ld a, [hl+]                                   ; $67AF: $2A
    ld l, [hl]                                    ; $67B0: $6E
    ld b, $6C                                     ; $67B1: $06 $6C
    ld hl, $FF6C                                  ; $67B3: $21 $6C $FF
    rst RST_38                                    ; $67B6: $FF
    rst RST_38                                    ; $67B7: $FF
    rst RST_38                                    ; $67B8: $FF
    daa                                           ; $67B9: $27
    ld l, c                                       ; $67BA: $69
    rst RST_38                                    ; $67BB: $FF
    rst RST_38                                    ; $67BC: $FF
    ld hl, $FF6C                                  ; $67BD: $21 $6C $FF
    rst RST_38                                    ; $67C0: $FF
    ld c, l                                       ; $67C1: $4D
    ld l, c                                       ; $67C2: $69
    rst RST_38                                    ; $67C3: $FF
    rst RST_38                                    ; $67C4: $FF
    ld e, $6F                                     ; $67C5: $1E $6F
    dec sp                                        ; $67C7: $3B
    ld l, a                                       ; $67C8: $6F
    ld d, b                                       ; $67C9: $50
    ld l, a                                       ; $67CA: $6F
    dec sp                                        ; $67CB: $3B
    ld l, a                                       ; $67CC: $6F
    ld h, a                                       ; $67CD: $67
    ld l, a                                       ; $67CE: $6F
    dec sp                                        ; $67CF: $3B
    ld l, a                                       ; $67D0: $6F
    ld a, e                                       ; $67D1: $7B
    ld l, a                                       ; $67D2: $6F
    dec sp                                        ; $67D3: $3B
    ld l, a                                       ; $67D4: $6F
    adc a                                         ; $67D5: $8F
    ld l, a                                       ; $67D6: $6F
    dec sp                                        ; $67D7: $3B
    ld l, a                                       ; $67D8: $6F
    ld a, e                                       ; $67D9: $7B
    ld l, a                                       ; $67DA: $6F
    dec sp                                        ; $67DB: $3B
    ld l, a                                       ; $67DC: $6F
    ld d, b                                       ; $67DD: $50
    ld l, a                                       ; $67DE: $6F
    dec sp                                        ; $67DF: $3B
    ld l, a                                       ; $67E0: $6F
    ld e, $6F                                     ; $67E1: $1E $6F
    dec sp                                        ; $67E3: $3B
    ld l, a                                       ; $67E4: $6F
    ld c, l                                       ; $67E5: $4D
    ld l, c                                       ; $67E6: $69
    rst RST_38                                    ; $67E7: $FF
    rst RST_38                                    ; $67E8: $FF
    daa                                           ; $67E9: $27
    ld l, c                                       ; $67EA: $69
    rst RST_38                                    ; $67EB: $FF
    rst RST_38                                    ; $67EC: $FF
    rst RST_38                                    ; $67ED: $FF
    rst RST_38                                    ; $67EE: $FF
    ldh [rBCPD], a                                ; $67EF: $E0 $69
    rst RST_38                                    ; $67F1: $FF

jr_009_67F2:
    rst RST_38                                    ; $67F2: $FF
    ld c, l                                       ; $67F3: $4D
    ld l, c                                       ; $67F4: $69
    rst RST_38                                    ; $67F5: $FF
    rst RST_38                                    ; $67F6: $FF

jr_009_67F7:
    ld [de], a                                    ; $67F7: $12
    ld l, l                                       ; $67F8: $6D
    rst RST_38                                    ; $67F9: $FF
    rst RST_38                                    ; $67FA: $FF
    ld c, l                                       ; $67FB: $4D
    ld l, c                                       ; $67FC: $69
    rst RST_38                                    ; $67FD: $FF
    rst RST_38                                    ; $67FE: $FF
    rst RST_38                                    ; $67FF: $FF
    rst RST_38                                    ; $6800: $FF
    nop                                           ; $6801: $00

jr_009_6802:
    dec e                                         ; $6802: $1D
    nop                                           ; $6803: $00
    nop                                           ; $6804: $00

jr_009_6805:
    ld b, b                                       ; $6805: $40
    dec de                                        ; $6806: $1B
    dec bc                                        ; $6807: $0B
    ld l, b                                       ; $6808: $68
    ei                                            ; $6809: $FB
    nop                                           ; $680A: $00
    ld a, [bc]                                    ; $680B: $0A
    jr z, jr_009_67F7                             ; $680C: $28 $E9

    nop                                           ; $680E: $00
    jr nz, jr_009_6802                            ; $680F: $20 $F1

    ld [bc], a                                    ; $6811: $02
    jr nc, jr_009_6805                            ; $6812: $30 $F1

    inc b                                         ; $6814: $04
    jr nz, @-$05                                  ; $6815: $20 $F9

    ld b, $30                                     ; $6817: $06 $30
    ld sp, hl                                     ; $6819: $F9
    ld [$0128], sp                                ; $681A: $08 $28 $01
    ld a, [bc]                                    ; $681D: $0A
    jr c, jr_009_6821                             ; $681E: $38 $01

    inc c                                         ; $6820: $0C

jr_009_6821:
    jr z, jr_009_682C                             ; $6821: $28 $09

    ld c, $38                                     ; $6823: $0E $38
    add hl, bc                                    ; $6825: $09
    db $10                                        ; $6826: $10
    jr nc, jr_009_683A                            ; $6827: $30 $11

    ld [de], a                                    ; $6829: $12
    nop                                           ; $682A: $00

jr_009_682B:
    dec e                                         ; $682B: $1D

jr_009_682C:
    nop                                           ; $682C: $00
    ld b, b                                       ; $682D: $40

jr_009_682E:
    ld b, c                                       ; $682E: $41
    dec de                                        ; $682F: $1B
    inc [hl]                                      ; $6830: $34
    ld l, b                                       ; $6831: $68
    ei                                            ; $6832: $FB
    nop                                           ; $6833: $00
    ld [$E928], sp                                ; $6834: $08 $28 $E9
    nop                                           ; $6837: $00
    jr z, jr_009_682B                             ; $6838: $28 $F1

jr_009_683A:
    ld [bc], a                                    ; $683A: $02
    jr c, jr_009_682E                             ; $683B: $38 $F1

    inc b                                         ; $683D: $04
    jr nz, @-$05                                  ; $683E: $20 $F9

    ld b, $30                                     ; $6840: $06 $30
    ld sp, hl                                     ; $6842: $F9
    ld [$0128], sp                                ; $6843: $08 $28 $01
    ld a, [bc]                                    ; $6846: $0A
    jr c, jr_009_684A                             ; $6847: $38 $01

    inc c                                         ; $6849: $0C

jr_009_684A:
    jr nz, jr_009_6855                            ; $684A: $20 $09

    ld c, $00                                     ; $684C: $0E $00
    ld b, b                                       ; $684E: $40
    ld b, d                                       ; $684F: $42
    dec de                                        ; $6850: $1B
    ld d, l                                       ; $6851: $55
    ld l, b                                       ; $6852: $68
    ei                                            ; $6853: $FB
    nop                                           ; $6854: $00

jr_009_6855:
    ld [bc], a                                    ; $6855: $02
    jr nc, jr_009_6861                            ; $6856: $30 $09

    nop                                           ; $6858: $00
    inc [hl]                                      ; $6859: $34
    ld de, $0002                                  ; $685A: $11 $02 $00

jr_009_685D:
    dec e                                         ; $685D: $1D
    nop                                           ; $685E: $00
    add b                                         ; $685F: $80

jr_009_6860:
    ld b, d                                       ; $6860: $42

jr_009_6861:
    dec de                                        ; $6861: $1B
    ld h, [hl]                                    ; $6862: $66
    ld l, b                                       ; $6863: $68
    ei                                            ; $6864: $FB
    nop                                           ; $6865: $00
    add hl, bc                                    ; $6866: $09
    ld a, [hl+]                                   ; $6867: $2A
    jp hl                                         ; $6868: $E9


    nop                                           ; $6869: $00
    jr z, jr_009_685D                             ; $686A: $28 $F1

    ld [bc], a                                    ; $686C: $02
    jr c, jr_009_6860                             ; $686D: $38 $F1

    inc b                                         ; $686F: $04
    jr nz, @-$05                                  ; $6870: $20 $F9

    ld b, $30                                     ; $6872: $06 $30
    ld sp, hl                                     ; $6874: $F9
    ld [$0128], sp                                ; $6875: $08 $28 $01
    ld a, [bc]                                    ; $6878: $0A
    jr c, jr_009_687C                             ; $6879: $38 $01

    inc c                                         ; $687B: $0C

jr_009_687C:
    jr nz, jr_009_6887                            ; $687C: $20 $09

    ld c, $22                                     ; $687E: $0E $22
    pop hl                                        ; $6880: $E1
    stop                                          ; $6881: $10 $00
    and b                                         ; $6883: $A0
    ld b, e                                       ; $6884: $43
    dec de                                        ; $6885: $1B
    adc d                                         ; $6886: $8A

jr_009_6887:
    ld l, b                                       ; $6887: $68
    ei                                            ; $6888: $FB
    nop                                           ; $6889: $00
    ld [bc], a                                    ; $688A: $02
    jr nc, jr_009_6896                            ; $688B: $30 $09

    nop                                           ; $688D: $00
    scf                                           ; $688E: $37
    ld de, $0002                                  ; $688F: $11 $02 $00
    ldh [rSCX], a                                 ; $6892: $E0 $43
    dec de                                        ; $6894: $1B
    sbc c                                         ; $6895: $99

jr_009_6896:
    ld l, b                                       ; $6896: $68
    ei                                            ; $6897: $FB
    nop                                           ; $6898: $00
    ld [bc], a                                    ; $6899: $02
    jr nc, jr_009_68A5                            ; $689A: $30 $09

    nop                                           ; $689C: $00
    dec [hl]                                      ; $689D: $35
    ld de, $0002                                  ; $689E: $11 $02 $00
    jr nz, jr_009_68E7                            ; $68A1: $20 $44

    dec de                                        ; $68A3: $1B
    xor b                                         ; $68A4: $A8

jr_009_68A5:
    ld l, b                                       ; $68A5: $68
    ei                                            ; $68A6: $FB
    nop                                           ; $68A7: $00
    ld [bc], a                                    ; $68A8: $02
    jr nc, jr_009_68B4                            ; $68A9: $30 $09

    nop                                           ; $68AB: $00
    inc sp                                        ; $68AC: $33
    ld de, $0002                                  ; $68AD: $11 $02 $00
    dec e                                         ; $68B0: $1D
    nop                                           ; $68B1: $00
    ld h, b                                       ; $68B2: $60
    ld b, h                                       ; $68B3: $44

jr_009_68B4:
    dec de                                        ; $68B4: $1B
    cp c                                          ; $68B5: $B9
    ld l, b                                       ; $68B6: $68
    ld a, [$0A00]                                 ; $68B7: $FA $00 $0A
    dec hl                                        ; $68BA: $2B
    jp hl                                         ; $68BB: $E9


    nop                                           ; $68BC: $00
    inc hl                                        ; $68BD: $23
    pop af                                        ; $68BE: $F1
    ld [bc], a                                    ; $68BF: $02
    inc sp                                        ; $68C0: $33
    pop af                                        ; $68C1: $F1
    inc b                                         ; $68C2: $04
    inc hl                                        ; $68C3: $23
    ld sp, hl                                     ; $68C4: $F9
    ld b, $33                                     ; $68C5: $06 $33
    ld sp, hl                                     ; $68C7: $F9
    ld [$012C], sp                                ; $68C8: $08 $2C $01
    ld a, [bc]                                    ; $68CB: $0A
    inc a                                         ; $68CC: $3C
    ld bc, $2C0C                                  ; $68CD: $01 $0C $2C
    add hl, bc                                    ; $68D0: $09
    ld c, $3C                                     ; $68D1: $0E $3C
    add hl, bc                                    ; $68D3: $09
    db $10                                        ; $68D4: $10
    inc [hl]                                      ; $68D5: $34
    ld de, $0012                                  ; $68D6: $11 $12 $00
    dec e                                         ; $68D9: $1D
    nop                                           ; $68DA: $00
    and b                                         ; $68DB: $A0
    ld b, l                                       ; $68DC: $45
    dec de                                        ; $68DD: $1B
    ldh [c], a                                    ; $68DE: $E2
    ld l, b                                       ; $68DF: $68
    ld a, [$0A00]                                 ; $68E0: $FA $00 $0A
    jr z, @-$15                                   ; $68E3: $28 $E9

    nop                                           ; $68E5: $00
    dec hl                                        ; $68E6: $2B

jr_009_68E7:
    pop af                                        ; $68E7: $F1
    ld [bc], a                                    ; $68E8: $02
    inc hl                                        ; $68E9: $23
    ld sp, hl                                     ; $68EA: $F9
    inc b                                         ; $68EB: $04
    inc sp                                        ; $68EC: $33
    ld sp, hl                                     ; $68ED: $F9
    ld b, $23                                     ; $68EE: $06 $23
    ld bc, $3308                                  ; $68F0: $01 $08 $33
    ld bc, $2B0A                                  ; $68F3: $01 $0A $2B
    add hl, bc                                    ; $68F6: $09
    inc c                                         ; $68F7: $0C
    dec sp                                        ; $68F8: $3B
    add hl, bc                                    ; $68F9: $09
    ld c, $32                                     ; $68FA: $0E $32
    ld de, $1B10                                  ; $68FC: $11 $10 $1B
    pop af                                        ; $68FF: $F1
    ld [de], a                                    ; $6900: $12
    nop                                           ; $6901: $00
    dec e                                         ; $6902: $1D
    nop                                           ; $6903: $00
    ldh [rDMA], a                                 ; $6904: $E0 $46
    dec de                                        ; $6906: $1B
    dec bc                                        ; $6907: $0B
    ld l, c                                       ; $6908: $69
    ld a, [$0900]                                 ; $6909: $FA $00 $09
    dec hl                                        ; $690C: $2B
    jp hl                                         ; $690D: $E9


    nop                                           ; $690E: $00
    inc l                                         ; $690F: $2C
    pop af                                        ; $6910: $F1
    ld [bc], a                                    ; $6911: $02
    inc h                                         ; $6912: $24
    ld sp, hl                                     ; $6913: $F9
    inc b                                         ; $6914: $04
    inc [hl]                                      ; $6915: $34
    ld sp, hl                                     ; $6916: $F9
    ld b, $2C                                     ; $6917: $06 $2C
    ld bc, $3C08                                  ; $6919: $01 $08 $3C
    ld bc, $2C0A                                  ; $691C: $01 $0A $2C
    add hl, bc                                    ; $691F: $09
    inc c                                         ; $6920: $0C
    inc a                                         ; $6921: $3C
    add hl, bc                                    ; $6922: $09
    ld c, $34                                     ; $6923: $0E $34
    ld de, $0010                                  ; $6925: $11 $10 $00
    ld e, $00                                     ; $6928: $1E $00
    nop                                           ; $692A: $00
    ld c, b                                       ; $692B: $48
    dec de                                        ; $692C: $1B
    ld sp, $FB69                                  ; $692D: $31 $69 $FB
    nop                                           ; $6930: $00
    add hl, bc                                    ; $6931: $09
    inc l                                         ; $6932: $2C
    rst RST_20                                    ; $6933: $E7
    nop                                           ; $6934: $00
    jr nc, @-$0F                                  ; $6935: $30 $EF

    ld [bc], a                                    ; $6937: $02
    add hl, hl                                    ; $6938: $29
    rst RST_30                                    ; $6939: $F7
    inc b                                         ; $693A: $04
    ld l, $FF                                     ; $693B: $2E $FF
    ld b, $2F                                     ; $693D: $06 $2F
    rlca                                          ; $693F: $07
    ld [$0F33], sp                                ; $6940: $08 $33 $0F
    ld a, [bc]                                    ; $6943: $0A
    add hl, sp                                    ; $6944: $39
    rst RST_30                                    ; $6945: $F7
    inc c                                         ; $6946: $0C
    ld a, $FF                                     ; $6947: $3E $FF
    ld c, $3F                                     ; $6949: $0E $3F
    rlca                                          ; $694B: $07
    stop                                          ; $694C: $10 $00
    rra                                           ; $694E: $1F
    nop                                           ; $694F: $00
    jr nz, jr_009_699B                            ; $6950: $20 $49

    dec de                                        ; $6952: $1B
    ld h, c                                       ; $6953: $61
    ld l, c                                       ; $6954: $69
    ld hl, sp+$08                                 ; $6955: $F8 $08
    nop                                           ; $6957: $00
    rra                                           ; $6958: $1F
    dec b                                         ; $6959: $05
    jr nz, jr_009_69A5                            ; $695A: $20 $49

    dec de                                        ; $695C: $1B
    ld h, c                                       ; $695D: $61
    ld l, c                                       ; $695E: $69
    ld hl, sp+$08                                 ; $695F: $F8 $08
    ld a, [bc]                                    ; $6961: $0A
    ld d, $F1                                     ; $6962: $16 $F1
    nop                                           ; $6964: $00
    jr @-$05                                      ; $6965: $18 $F9

    ld [bc], a                                    ; $6967: $02
    ld de, $0401                                  ; $6968: $11 $01 $04
    ld hl, $0601                                  ; $696B: $21 $01 $06
    jr jr_009_6979                                ; $696E: $18 $09

    ld [$0928], sp                                ; $6970: $08 $28 $09
    ld a, [bc]                                    ; $6973: $0A
    jr nz, jr_009_6987                            ; $6974: $20 $11

    inc c                                         ; $6976: $0C
    jr nc, @+$13                                  ; $6977: $30 $11

jr_009_6979:
    ld c, $28                                     ; $6979: $0E $28
    ld sp, hl                                     ; $697B: $F9
    db $10                                        ; $697C: $10
    inc [hl]                                      ; $697D: $34
    add hl, de                                    ; $697E: $19
    ld [de], a                                    ; $697F: $12
    nop                                           ; $6980: $00
    rra                                           ; $6981: $1F
    nop                                           ; $6982: $00
    ld h, b                                       ; $6983: $60
    ld c, d                                       ; $6984: $4A
    dec de                                        ; $6985: $1B
    adc d                                         ; $6986: $8A

jr_009_6987:
    ld l, c                                       ; $6987: $69
    db $FD                                        ; $6988: $FD
    ld de, $1309                                  ; $6989: $11 $09 $13
    jp hl                                         ; $698C: $E9


    nop                                           ; $698D: $00
    inc de                                        ; $698E: $13
    pop af                                        ; $698F: $F1
    ld [bc], a                                    ; $6990: $02
    dec bc                                        ; $6991: $0B
    ld sp, hl                                     ; $6992: $F9
    inc b                                         ; $6993: $04
    dec de                                        ; $6994: $1B
    ld sp, hl                                     ; $6995: $F9
    ld b, $14                                     ; $6996: $06 $14
    ld bc, $1508                                  ; $6998: $01 $08 $15

jr_009_699B:
    add hl, bc                                    ; $699B: $09
    ld a, [bc]                                    ; $699C: $0A
    ld a, [de]                                    ; $699D: $1A
    ld de, $230C                                  ; $699E: $11 $0C $23
    pop af                                        ; $69A1: $F1
    ld c, $25                                     ; $69A2: $0E $25
    add hl, bc                                    ; $69A4: $09

jr_009_69A5:
    stop                                          ; $69A5: $10 $00
    rra                                           ; $69A7: $1F
    nop                                           ; $69A8: $00
    add b                                         ; $69A9: $80
    ld c, e                                       ; $69AA: $4B
    dec de                                        ; $69AB: $1B
    call nz, Call_000_0869                        ; $69AC: $C4 $69 $08
    nop                                           ; $69AF: $00
    nop                                           ; $69B0: $00
    rra                                           ; $69B1: $1F
    ld [bc], a                                    ; $69B2: $02
    add b                                         ; $69B3: $80

jr_009_69B4:
    ld c, e                                       ; $69B4: $4B
    dec de                                        ; $69B5: $1B
    call nz, Call_000_0869                        ; $69B6: $C4 $69 $08
    nop                                           ; $69B9: $00

jr_009_69BA:
    nop                                           ; $69BA: $00
    rra                                           ; $69BB: $1F
    dec b                                         ; $69BC: $05
    add b                                         ; $69BD: $80
    ld c, e                                       ; $69BE: $4B
    dec de                                        ; $69BF: $1B
    call nz, Call_000_0869                        ; $69C0: $C4 $69 $08
    nop                                           ; $69C3: $00
    add hl, bc                                    ; $69C4: $09
    inc l                                         ; $69C5: $2C
    ldh [c], a                                    ; $69C6: $E2
    nop                                           ; $69C7: $00
    jr nc, jr_009_69B4                            ; $69C8: $30 $EA

    ld [bc], a                                    ; $69CA: $02
    dec l                                         ; $69CB: $2D
    ldh a, [c]                                    ; $69CC: $F2
    inc b                                         ; $69CD: $04
    jr nz, jr_009_69BA                            ; $69CE: $20 $EA

    ld b, $1D                                     ; $69D0: $06 $1D
    ldh a, [c]                                    ; $69D2: $F2
    ld [$FA27], sp                                ; $69D3: $08 $27 $FA
    ld a, [bc]                                    ; $69D6: $0A
    rla                                           ; $69D7: $17
    ld a, [$3C0C]                                 ; $69D8: $FA $0C $3C
    ldh [c], a                                    ; $69DB: $E2
    ld c, $0D                                     ; $69DC: $0E $0D
    ld [bc], a                                    ; $69DE: $02
    stop                                          ; $69DF: $10 $00
    dec e                                         ; $69E1: $1D
    nop                                           ; $69E2: $00
    and b                                         ; $69E3: $A0
    ld c, h                                       ; $69E4: $4C
    dec de                                        ; $69E5: $1B
    db $F4                                        ; $69E6: $F4
    ld l, c                                       ; $69E7: $69
    di                                            ; $69E8: $F3
    nop                                           ; $69E9: $00
    nop                                           ; $69EA: $00
    dec e                                         ; $69EB: $1D
    dec b                                         ; $69EC: $05
    and b                                         ; $69ED: $A0
    ld c, h                                       ; $69EE: $4C
    dec de                                        ; $69EF: $1B
    db $F4                                        ; $69F0: $F4
    ld l, c                                       ; $69F1: $69
    di                                            ; $69F2: $F3
    nop                                           ; $69F3: $00
    ld a, [bc]                                    ; $69F4: $0A
    dec l                                         ; $69F5: $2D
    ld hl, sp+$00                                 ; $69F6: $F8 $00
    inc l                                         ; $69F8: $2C
    nop                                           ; $69F9: $00
    ld [bc], a                                    ; $69FA: $02
    inc a                                         ; $69FB: $3C
    nop                                           ; $69FC: $00
    inc b                                         ; $69FD: $04
    dec l                                         ; $69FE: $2D
    ld [$3D06], sp                                ; $69FF: $08 $06 $3D
    ld [$2C08], sp                                ; $6A02: $08 $08 $2C
    db $10                                        ; $6A05: $10
    ld a, [bc]                                    ; $6A06: $0A
    inc a                                         ; $6A07: $3C
    db $10                                        ; $6A08: $10
    inc c                                         ; $6A09: $0C
    jr z, jr_009_6A24                             ; $6A0A: $28 $18

    ld c, $38                                     ; $6A0C: $0E $38
    jr jr_009_6A20                                ; $6A0E: $18 $10

    dec a                                         ; $6A10: $3D

jr_009_6A11:
    ld hl, sp+$12                                 ; $6A11: $F8 $12
    nop                                           ; $6A13: $00
    ld e, $00                                     ; $6A14: $1E $00
    ldh [rKEY1], a                                ; $6A16: $E0 $4D
    dec de                                        ; $6A18: $1B
    dec e                                         ; $6A19: $1D
    ld l, d                                       ; $6A1A: $6A
    pop af                                        ; $6A1B: $F1

jr_009_6A1C:
    nop                                           ; $6A1C: $00
    ld a, [bc]                                    ; $6A1D: $0A
    jr nc, jr_009_6A11                            ; $6A1E: $30 $F1

jr_009_6A20:
    nop                                           ; $6A20: $00
    jr nc, jr_009_6A1C                            ; $6A21: $30 $F9

    ld [bc], a                                    ; $6A23: $02

jr_009_6A24:
    jr z, jr_009_6A27                             ; $6A24: $28 $01

    inc b                                         ; $6A26: $04

jr_009_6A27:
    jr c, @+$03                                   ; $6A27: $38 $01

    ld b, $28                                     ; $6A29: $06 $28
    add hl, bc                                    ; $6A2B: $09
    ld [$0938], sp                                ; $6A2C: $08 $38 $09
    ld a, [bc]                                    ; $6A2F: $0A
    jr nz, jr_009_6A43                            ; $6A30: $20 $11

    inc c                                         ; $6A32: $0C
    jr nc, @+$13                                  ; $6A33: $30 $11

    ld c, $28                                     ; $6A35: $0E $28
    add hl, de                                    ; $6A37: $19
    db $10                                        ; $6A38: $10
    jr c, @+$1B                                   ; $6A39: $38 $19

    ld [de], a                                    ; $6A3B: $12
    nop                                           ; $6A3C: $00
    rra                                           ; $6A3D: $1F
    nop                                           ; $6A3E: $00
    jr nz, jr_009_6A90                            ; $6A3F: $20 $4F

    dec de                                        ; $6A41: $1B
    ld b, [hl]                                    ; $6A42: $46

jr_009_6A43:
    ld l, d                                       ; $6A43: $6A
    db $FC                                        ; $6A44: $FC
    ld d, $07                                     ; $6A45: $16 $07
    ld a, [bc]                                    ; $6A47: $0A
    xor $00                                       ; $6A48: $EE $00
    ld [$02F6], sp                                ; $6A4A: $08 $F6 $02
    ld [$04FE], sp                                ; $6A4D: $08 $FE $04
    ld [$0606], sp                                ; $6A50: $08 $06 $06
    jr @-$08                                      ; $6A53: $18 $F6

    ld [$FE18], sp                                ; $6A55: $08 $18 $FE
    ld a, [bc]                                    ; $6A58: $0A
    jr jr_009_6A61                                ; $6A59: $18 $06

    inc c                                         ; $6A5B: $0C
    nop                                           ; $6A5C: $00
    dec e                                         ; $6A5D: $1D
    sbc [hl]                                      ; $6A5E: $9E
    and b                                         ; $6A5F: $A0
    ld d, l                                       ; $6A60: $55

jr_009_6A61:
    dec de                                        ; $6A61: $1B

jr_009_6A62:
    ld h, [hl]                                    ; $6A62: $66
    ld l, d                                       ; $6A63: $6A
    push af                                       ; $6A64: $F5
    nop                                           ; $6A65: $00
    rlca                                          ; $6A66: $07
    jr nz, @-$1B                                  ; $6A67: $20 $E3

    nop                                           ; $6A69: $00
    jr nz, @-$13                                  ; $6A6A: $20 $EB

    ld [bc], a                                    ; $6A6C: $02

jr_009_6A6D:
    jr nz, jr_009_6A62                            ; $6A6D: $20 $F3

    inc b                                         ; $6A6F: $04
    jr nz, jr_009_6A6D                            ; $6A70: $20 $FB

    ld b, $20                                     ; $6A72: $06 $20
    inc bc                                        ; $6A74: $03

jr_009_6A75:
    ld [$0B20], sp                                ; $6A75: $08 $20 $0B
    ld a, [bc]                                    ; $6A78: $0A
    jr nz, jr_009_6A8E                            ; $6A79: $20 $13

    inc c                                         ; $6A7B: $0C
    nop                                           ; $6A7C: $00
    add b                                         ; $6A7D: $80
    ld d, [hl]                                    ; $6A7E: $56
    dec de                                        ; $6A7F: $1B

jr_009_6A80:
    add h                                         ; $6A80: $84
    ld l, d                                       ; $6A81: $6A
    push af                                       ; $6A82: $F5
    nop                                           ; $6A83: $00
    rlca                                          ; $6A84: $07
    jr nc, jr_009_6A75                            ; $6A85: $30 $EE

jr_009_6A87:
    nop                                           ; $6A87: $00
    jr nc, jr_009_6A80                            ; $6A88: $30 $F6

    ld [bc], a                                    ; $6A8A: $02

jr_009_6A8B:
    jr nc, jr_009_6A8B                            ; $6A8B: $30 $FE

    inc b                                         ; $6A8D: $04

jr_009_6A8E:
    jr nc, @+$08                                  ; $6A8E: $30 $06

jr_009_6A90:
    ld b, $30                                     ; $6A90: $06 $30
    ld c, $08                                     ; $6A92: $0E $08
    ld sp, $0A16                                  ; $6A94: $31 $16 $0A
    dec [hl]                                      ; $6A97: $35
    ld e, $0C                                     ; $6A98: $1E $0C
    nop                                           ; $6A9A: $00
    dec e                                         ; $6A9B: $1D
    sbc a                                         ; $6A9C: $9F

jr_009_6A9D:
    ld h, b                                       ; $6A9D: $60
    ld d, a                                       ; $6A9E: $57
    dec de                                        ; $6A9F: $1B
    and h                                         ; $6AA0: $A4
    ld l, d                                       ; $6AA1: $6A
    nop                                           ; $6AA2: $00
    nop                                           ; $6AA3: $00
    dec bc                                        ; $6AA4: $0B
    jr z, jr_009_6A87                             ; $6AA5: $28 $E0

    nop                                           ; $6AA7: $00

jr_009_6AA8:
    ld a, [hl+]                                   ; $6AA8: $2A

jr_009_6AA9:
    add sp, $02                                   ; $6AA9: $E8 $02
    jr z, jr_009_6A9D                             ; $6AAB: $28 $F0

    inc b                                         ; $6AAD: $04
    jr z, jr_009_6AA8                             ; $6AAE: $28 $F8

    ld b, $28                                     ; $6AB0: $06 $28
    nop                                           ; $6AB2: $00
    ld [$0828], sp                                ; $6AB3: $08 $28 $08
    ld a, [bc]                                    ; $6AB6: $0A
    jr c, jr_009_6AA9                             ; $6AB7: $38 $F0

    inc c                                         ; $6AB9: $0C
    jr c, @-$06                                   ; $6ABA: $38 $F8

    ld c, $38                                     ; $6ABC: $0E $38
    nop                                           ; $6ABE: $00

jr_009_6ABF:
    db $10                                        ; $6ABF: $10
    jr c, jr_009_6ACA                             ; $6AC0: $38 $08

    ld [de], a                                    ; $6AC2: $12
    scf                                           ; $6AC3: $37
    db $10                                        ; $6AC4: $10
    inc d                                         ; $6AC5: $14
    nop                                           ; $6AC6: $00
    dec e                                         ; $6AC7: $1D
    and b                                         ; $6AC8: $A0
    ret nz                                        ; $6AC9: $C0

jr_009_6ACA:
    ld e, b                                       ; $6ACA: $58
    dec de                                        ; $6ACB: $1B
    ret nc                                        ; $6ACC: $D0

    ld l, d                                       ; $6ACD: $6A
    or $00                                        ; $6ACE: $F6 $00
    ld [$E120], sp                                ; $6AD0: $08 $20 $E1
    nop                                           ; $6AD3: $00
    jr nz, jr_009_6ABF                            ; $6AD4: $20 $E9

    ld [bc], a                                    ; $6AD6: $02
    jr nz, jr_009_6ACA                            ; $6AD7: $20 $F1

    inc b                                         ; $6AD9: $04
    jr nz, @-$05                                  ; $6ADA: $20 $F9

    ld b, $20                                     ; $6ADC: $06 $20
    ld bc, $2008                                  ; $6ADE: $01 $08 $20
    add hl, bc                                    ; $6AE1: $09
    ld a, [bc]                                    ; $6AE2: $0A
    jr nz, jr_009_6AF6                            ; $6AE3: $20 $11

    inc c                                         ; $6AE5: $0C
    db $10                                        ; $6AE6: $10
    ld sp, hl                                     ; $6AE7: $F9
    ld c, $00                                     ; $6AE8: $0E $00
    ld e, $A1                                     ; $6AEA: $1E $A1
    ret nz                                        ; $6AEC: $C0

jr_009_6AED:
    ld e, c                                       ; $6AED: $59
    dec de                                        ; $6AEE: $1B
    di                                            ; $6AEF: $F3
    ld l, d                                       ; $6AF0: $6A
    di                                            ; $6AF1: $F3
    nop                                           ; $6AF2: $00
    ld a, [bc]                                    ; $6AF3: $0A
    scf                                           ; $6AF4: $37
    pop hl                                        ; $6AF5: $E1

jr_009_6AF6:
    nop                                           ; $6AF6: $00
    ld sp, $02E9                                  ; $6AF7: $31 $E9 $02
    jr nc, jr_009_6AED                            ; $6AFA: $30 $F1

    inc b                                         ; $6AFC: $04
    add hl, hl                                    ; $6AFD: $29
    ld sp, hl                                     ; $6AFE: $F9
    ld b, $39                                     ; $6AFF: $06 $39
    ld sp, hl                                     ; $6B01: $F9
    ld [$012F], sp                                ; $6B02: $08 $2F $01
    ld a, [bc]                                    ; $6B05: $0A
    jr nc, @+$0B                                  ; $6B06: $30 $09

    inc c                                         ; $6B08: $0C
    inc sp                                        ; $6B09: $33
    ld de, $370E                                  ; $6B0A: $11 $0E $37
    add hl, de                                    ; $6B0D: $19
    db $10                                        ; $6B0E: $10
    ccf                                           ; $6B0F: $3F
    ld bc, $0012                                  ; $6B10: $01 $12 $00
    ld e, $A2                                     ; $6B13: $1E $A2
    nop                                           ; $6B15: $00
    ld e, e                                       ; $6B16: $5B
    dec de                                        ; $6B17: $1B
    inc e                                         ; $6B18: $1C
    ld l, e                                       ; $6B19: $6B
    db $FC                                        ; $6B1A: $FC
    nop                                           ; $6B1B: $00
    add hl, bc                                    ; $6B1C: $09
    jr c, @-$1D                                   ; $6B1D: $38 $E1

    nop                                           ; $6B1F: $00
    inc [hl]                                      ; $6B20: $34
    jp hl                                         ; $6B21: $E9


    ld [bc], a                                    ; $6B22: $02
    cpl                                           ; $6B23: $2F
    pop af                                        ; $6B24: $F1
    inc b                                         ; $6B25: $04
    ld l, $F9                                     ; $6B26: $2E $F9
    ld b, $2C                                     ; $6B28: $06 $2C
    ld bc, $2D08                                  ; $6B2A: $01 $08 $2D
    add hl, bc                                    ; $6B2D: $09
    ld a, [bc]                                    ; $6B2E: $0A
    ld a, $F9                                     ; $6B2F: $3E $F9
    inc c                                         ; $6B31: $0C
    inc a                                         ; $6B32: $3C
    ld bc, $3D0E                                  ; $6B33: $01 $0E $3D
    add hl, bc                                    ; $6B36: $09
    stop                                          ; $6B37: $10 $00
    ld e, $A3                                     ; $6B39: $1E $A3
    jr nz, @+$5E                                  ; $6B3B: $20 $5C

    dec de                                        ; $6B3D: $1B
    ld b, d                                       ; $6B3E: $42
    ld l, e                                       ; $6B3F: $6B
    or $02                                        ; $6B40: $F6 $02
    rlca                                          ; $6B42: $07
    ld de, $00F1                                  ; $6B43: $11 $F1 $00
    ld [de], a                                    ; $6B46: $12
    ld sp, hl                                     ; $6B47: $F9
    ld [bc], a                                    ; $6B48: $02
    inc d                                         ; $6B49: $14
    ld bc, $2404                                  ; $6B4A: $01 $04 $24
    ld bc, $2206                                  ; $6B4D: $01 $06 $22
    ld sp, hl                                     ; $6B50: $F9
    ld [$F121], sp                                ; $6B51: $08 $21 $F1
    ld a, [bc]                                    ; $6B54: $0A
    db $10                                        ; $6B55: $10
    add hl, bc                                    ; $6B56: $09
    inc c                                         ; $6B57: $0C
    nop                                           ; $6B58: $00
    nop                                           ; $6B59: $00
    ld e, l                                       ; $6B5A: $5D
    dec de                                        ; $6B5B: $1B
    ld h, b                                       ; $6B5C: $60
    ld l, e                                       ; $6B5D: $6B
    or $02                                        ; $6B5E: $F6 $02
    dec b                                         ; $6B60: $05
    jr nz, jr_009_6B6C                            ; $6B61: $20 $09

    nop                                           ; $6B63: $00
    jr nc, jr_009_6B6B                            ; $6B64: $30 $05

    ld [bc], a                                    ; $6B66: $02
    add hl, hl                                    ; $6B67: $29
    dec c                                         ; $6B68: $0D
    inc b                                         ; $6B69: $04
    add hl, sp                                    ; $6B6A: $39

jr_009_6B6B:
    dec c                                         ; $6B6B: $0D

jr_009_6B6C:
    ld b, $33                                     ; $6B6C: $06 $33
    dec d                                         ; $6B6E: $15
    ld [$1E00], sp                                ; $6B6F: $08 $00 $1E
    and e                                         ; $6B72: $A3
    and b                                         ; $6B73: $A0
    ld e, l                                       ; $6B74: $5D
    dec de                                        ; $6B75: $1B
    ld a, d                                       ; $6B76: $7A
    ld l, e                                       ; $6B77: $6B
    or $0A                                        ; $6B78: $F6 $0A
    ld b, $18                                     ; $6B7A: $06 $18
    ld bc, $0800                                  ; $6B7C: $01 $00 $08
    ld bc, $1602                                  ; $6B7F: $01 $02 $16
    ld sp, hl                                     ; $6B82: $F9
    inc b                                         ; $6B83: $04
    ld d, $F1                                     ; $6B84: $16 $F1
    ld b, $06                                     ; $6B86: $06 $06
    ld sp, hl                                     ; $6B88: $F9
    ld [$F106], sp                                ; $6B89: $08 $06 $F1
    ld a, [bc]                                    ; $6B8C: $0A
    nop                                           ; $6B8D: $00
    rra                                           ; $6B8E: $1F
    and h                                         ; $6B8F: $A4
    ld h, b                                       ; $6B90: $60
    ld e, [hl]                                    ; $6B91: $5E
    dec de                                        ; $6B92: $1B

jr_009_6B93:
    sub a                                         ; $6B93: $97

jr_009_6B94:
    ld l, e                                       ; $6B94: $6B
    ld hl, sp+$09                                 ; $6B95: $F8 $09
    rlca                                          ; $6B97: $07
    jr z, jr_009_6B93                             ; $6B98: $28 $F9

    nop                                           ; $6B9A: $00
    jr jr_009_6B9E                                ; $6B9B: $18 $01

    ld [bc], a                                    ; $6B9D: $02

jr_009_6B9E:
    jr @-$05                                      ; $6B9E: $18 $F9

    inc b                                         ; $6BA0: $04
    jr z, jr_009_6B94                             ; $6BA1: $28 $F1

    ld b, $18                                     ; $6BA3: $06 $18
    pop af                                        ; $6BA5: $F1
    ld [$F908], sp                                ; $6BA6: $08 $08 $F9
    ld a, [bc]                                    ; $6BA9: $0A
    ld [$0C01], sp                                ; $6BAA: $08 $01 $0C
    nop                                           ; $6BAD: $00
    ld b, b                                       ; $6BAE: $40
    ld e, a                                       ; $6BAF: $5F
    dec de                                        ; $6BB0: $1B
    or l                                          ; $6BB1: $B5
    ld l, e                                       ; $6BB2: $6B
    ld hl, sp+$09                                 ; $6BB3: $F8 $09
    dec b                                         ; $6BB5: $05
    jr z, jr_009_6BB9                             ; $6BB6: $28 $01

    nop                                           ; $6BB8: $00

jr_009_6BB9:
    jr nz, @+$0B                                  ; $6BB9: $20 $09

    ld [bc], a                                    ; $6BBB: $02
    jr jr_009_6BCF                                ; $6BBC: $18 $11

    inc b                                         ; $6BBE: $04
    db $10                                        ; $6BBF: $10
    add hl, bc                                    ; $6BC0: $09

jr_009_6BC1:
    ld b, $08                                     ; $6BC1: $06 $08

jr_009_6BC3:
    ld de, $0008                                  ; $6BC3: $11 $08 $00
    rra                                           ; $6BC6: $1F
    and h                                         ; $6BC7: $A4
    ldh [$FF5F], a                                ; $6BC8: $E0 $5F
    dec de                                        ; $6BCA: $1B
    rst RST_08                                    ; $6BCB: $CF

jr_009_6BCC:
    ld l, e                                       ; $6BCC: $6B
    nop                                           ; $6BCD: $00

jr_009_6BCE:
    add hl, bc                                    ; $6BCE: $09

jr_009_6BCF:
    dec b                                         ; $6BCF: $05
    jr z, jr_009_6BC3                             ; $6BD0: $28 $F1

    nop                                           ; $6BD2: $00
    jr jr_009_6BCE                                ; $6BD3: $18 $F9

    ld [bc], a                                    ; $6BD5: $02
    jr z, jr_009_6BC1                             ; $6BD6: $28 $E9

    inc b                                         ; $6BD8: $04
    jr jr_009_6BCC                                ; $6BD9: $18 $F1

    ld b, $18                                     ; $6BDB: $06 $18
    jp hl                                         ; $6BDD: $E9


    ld [$1D00], sp                                ; $6BDE: $08 $00 $1D
    ld [bc], a                                    ; $6BE1: $02
    add b                                         ; $6BE2: $80
    ld h, b                                       ; $6BE3: $60
    dec de                                        ; $6BE4: $1B
    di                                            ; $6BE5: $F3
    ld l, e                                       ; $6BE6: $6B
    ld sp, hl                                     ; $6BE7: $F9
    nop                                           ; $6BE8: $00
    nop                                           ; $6BE9: $00
    dec e                                         ; $6BEA: $1D
    dec b                                         ; $6BEB: $05
    add b                                         ; $6BEC: $80
    ld h, b                                       ; $6BED: $60
    dec de                                        ; $6BEE: $1B
    di                                            ; $6BEF: $F3
    ld l, e                                       ; $6BF0: $6B
    ld sp, hl                                     ; $6BF1: $F9

jr_009_6BF2:
    nop                                           ; $6BF2: $00
    ld b, $20                                     ; $6BF3: $06 $20
    ld sp, hl                                     ; $6BF5: $F9
    nop                                           ; $6BF6: $00
    jr nc, jr_009_6BF2                            ; $6BF7: $30 $F9

    ld [bc], a                                    ; $6BF9: $02
    dec h                                         ; $6BFA: $25
    pop af                                        ; $6BFB: $F1
    inc b                                         ; $6BFC: $04
    dec [hl]                                      ; $6BFD: $35
    pop af                                        ; $6BFE: $F1
    ld b, $2C                                     ; $6BFF: $06 $2C
    jp hl                                         ; $6C01: $E9


    ld [$E125], sp                                ; $6C02: $08 $25 $E1
    ld a, [bc]                                    ; $6C05: $0A
    nop                                           ; $6C06: $00
    ld b, b                                       ; $6C07: $40
    ld h, c                                       ; $6C08: $61
    dec de                                        ; $6C09: $1B
    ld c, $6C                                     ; $6C0A: $0E $6C
    ld sp, hl                                     ; $6C0C: $F9
    nop                                           ; $6C0D: $00
    ld b, $2B                                     ; $6C0E: $06 $2B
    ld bc, $3B00                                  ; $6C10: $01 $00 $3B
    ld bc, $2D02                                  ; $6C13: $01 $02 $2D
    add hl, bc                                    ; $6C16: $09
    inc b                                         ; $6C17: $04
    dec a                                         ; $6C18: $3D
    add hl, bc                                    ; $6C19: $09
    ld b, $31                                     ; $6C1A: $06 $31
    ld de, $2808                                  ; $6C1C: $11 $08 $28
    add hl, de                                    ; $6C1F: $19
    ld a, [bc]                                    ; $6C20: $0A
    nop                                           ; $6C21: $00

jr_009_6C22:
    dec e                                         ; $6C22: $1D
    nop                                           ; $6C23: $00
    nop                                           ; $6C24: $00
    ld h, d                                       ; $6C25: $62
    dec de                                        ; $6C26: $1B
    dec hl                                        ; $6C27: $2B
    ld l, h                                       ; $6C28: $6C
    ei                                            ; $6C29: $FB
    nop                                           ; $6C2A: $00
    ld a, [bc]                                    ; $6C2B: $0A
    ld a, [hl+]                                   ; $6C2C: $2A

jr_009_6C2D:
    jp hl                                         ; $6C2D: $E9


    nop                                           ; $6C2E: $00
    jr nc, jr_009_6C22                            ; $6C2F: $30 $F1

    ld [bc], a                                    ; $6C31: $02
    jr z, jr_009_6C2D                             ; $6C32: $28 $F9

    inc b                                         ; $6C34: $04
    jr c, @-$05                                   ; $6C35: $38 $F9

    ld b, $28                                     ; $6C37: $06 $28
    ld bc, $3808                                  ; $6C39: $01 $08 $38
    ld bc, $280A                                  ; $6C3C: $01 $0A $28
    add hl, bc                                    ; $6C3F: $09
    inc c                                         ; $6C40: $0C
    jr c, jr_009_6C4C                             ; $6C41: $38 $09

    ld c, $20                                     ; $6C43: $0E $20
    ld de, $3010                                  ; $6C45: $11 $10 $30
    ld de, $0012                                  ; $6C48: $11 $12 $00
    dec e                                         ; $6C4B: $1D

jr_009_6C4C:
    nop                                           ; $6C4C: $00
    ld b, b                                       ; $6C4D: $40
    ld h, e                                       ; $6C4E: $63
    dec de                                        ; $6C4F: $1B
    ld d, h                                       ; $6C50: $54
    ld l, h                                       ; $6C51: $6C
    ei                                            ; $6C52: $FB
    nop                                           ; $6C53: $00
    ld a, [bc]                                    ; $6C54: $0A
    add hl, hl                                    ; $6C55: $29
    ld [$2F00], a                                 ; $6C56: $EA $00 $2F
    pop af                                        ; $6C59: $F1
    ld [bc], a                                    ; $6C5A: $02
    add hl, hl                                    ; $6C5B: $29
    ld sp, hl                                     ; $6C5C: $F9
    inc b                                         ; $6C5D: $04
    add hl, sp                                    ; $6C5E: $39
    ld sp, hl                                     ; $6C5F: $F9
    ld b, $28                                     ; $6C60: $06 $28
    ld bc, $3808                                  ; $6C62: $01 $08 $38
    ld bc, $240A                                  ; $6C65: $01 $0A $24
    add hl, bc                                    ; $6C68: $09
    inc c                                         ; $6C69: $0C
    inc [hl]                                      ; $6C6A: $34
    add hl, bc                                    ; $6C6B: $09
    ld c, $20                                     ; $6C6C: $0E $20
    ld de, $3010                                  ; $6C6E: $11 $10 $30
    ld de, $0012                                  ; $6C71: $11 $12 $00

jr_009_6C74:
    dec e                                         ; $6C74: $1D
    nop                                           ; $6C75: $00
    add b                                         ; $6C76: $80
    ld h, h                                       ; $6C77: $64
    dec de                                        ; $6C78: $1B
    ld a, l                                       ; $6C79: $7D
    ld l, h                                       ; $6C7A: $6C
    ei                                            ; $6C7B: $FB
    nop                                           ; $6C7C: $00
    ld a, [bc]                                    ; $6C7D: $0A
    add hl, hl                                    ; $6C7E: $29

jr_009_6C7F:
    jp hl                                         ; $6C7F: $E9


    nop                                           ; $6C80: $00
    jr nc, jr_009_6C74                            ; $6C81: $30 $F1

    ld [bc], a                                    ; $6C83: $02
    jr z, jr_009_6C7F                             ; $6C84: $28 $F9

    inc b                                         ; $6C86: $04
    jr c, @-$05                                   ; $6C87: $38 $F9

    ld b, $28                                     ; $6C89: $06 $28
    ld bc, $3808                                  ; $6C8B: $01 $08 $38
    ld bc, $280A                                  ; $6C8E: $01 $0A $28
    add hl, bc                                    ; $6C91: $09

jr_009_6C92:
    inc c                                         ; $6C92: $0C
    jr c, jr_009_6C9E                             ; $6C93: $38 $09

    ld c, $20                                     ; $6C95: $0E $20
    ld de, $3010                                  ; $6C97: $11 $10 $30
    ld de, $0012                                  ; $6C9A: $11 $12 $00

jr_009_6C9D:
    dec e                                         ; $6C9D: $1D

jr_009_6C9E:
    nop                                           ; $6C9E: $00
    ret nz                                        ; $6C9F: $C0

    ld h, l                                       ; $6CA0: $65
    dec de                                        ; $6CA1: $1B
    and [hl]                                      ; $6CA2: $A6
    ld l, h                                       ; $6CA3: $6C
    ei                                            ; $6CA4: $FB
    nop                                           ; $6CA5: $00
    rlca                                          ; $6CA6: $07
    jr nc, jr_009_6C92                            ; $6CA7: $30 $E9

    nop                                           ; $6CA9: $00
    jr nc, jr_009_6C9D                            ; $6CAA: $30 $F1

    ld [bc], a                                    ; $6CAC: $02
    jr z, @-$05                                   ; $6CAD: $28 $F9

    inc b                                         ; $6CAF: $04
    jr c, @-$05                                   ; $6CB0: $38 $F9

    ld b, $28                                     ; $6CB2: $06 $28
    ld bc, $3808                                  ; $6CB4: $01 $08 $38
    ld bc, $300A                                  ; $6CB7: $01 $0A $30
    add hl, bc                                    ; $6CBA: $09
    inc c                                         ; $6CBB: $0C
    nop                                           ; $6CBC: $00
    and b                                         ; $6CBD: $A0
    ld h, [hl]                                    ; $6CBE: $66
    dec de                                        ; $6CBF: $1B
    call nz, $FB6C                                ; $6CC0: $C4 $6C $FB
    nop                                           ; $6CC3: $00
    inc bc                                        ; $6CC4: $03
    jr nz, jr_009_6CD0                            ; $6CC5: $20 $09

    nop                                           ; $6CC7: $00
    jr z, @+$13                                   ; $6CC8: $28 $11

    ld [bc], a                                    ; $6CCA: $02
    jr c, @+$13                                   ; $6CCB: $38 $11

    inc b                                         ; $6CCD: $04
    nop                                           ; $6CCE: $00
    nop                                           ; $6CCF: $00

jr_009_6CD0:
    ld h, a                                       ; $6CD0: $67
    dec de                                        ; $6CD1: $1B
    sub $6C                                       ; $6CD2: $D6 $6C
    ei                                            ; $6CD4: $FB
    nop                                           ; $6CD5: $00
    inc b                                         ; $6CD6: $04
    jr nz, jr_009_6CE2                            ; $6CD7: $20 $09

jr_009_6CD9:
    nop                                           ; $6CD9: $00
    jr z, jr_009_6CED                             ; $6CDA: $28 $11

    ld [bc], a                                    ; $6CDC: $02
    jr c, jr_009_6CF0                             ; $6CDD: $38 $11

    inc b                                         ; $6CDF: $04
    jr z, jr_009_6CFB                             ; $6CE0: $28 $19

jr_009_6CE2:
    ld b, $00                                     ; $6CE2: $06 $00

jr_009_6CE4:
    dec e                                         ; $6CE4: $1D
    nop                                           ; $6CE5: $00
    add b                                         ; $6CE6: $80
    ld h, a                                       ; $6CE7: $67
    dec de                                        ; $6CE8: $1B
    db $ED                                        ; $6CE9: $ED
    ld l, h                                       ; $6CEA: $6C
    ei                                            ; $6CEB: $FB
    nop                                           ; $6CEC: $00

jr_009_6CED:
    inc c                                         ; $6CED: $0C
    jr nc, jr_009_6CD9                            ; $6CEE: $30 $E9

jr_009_6CF0:
    nop                                           ; $6CF0: $00
    jr nc, jr_009_6CE4                            ; $6CF1: $30 $F1

    ld [bc], a                                    ; $6CF3: $02
    jr nc, @-$05                                  ; $6CF4: $30 $F9

    inc b                                         ; $6CF6: $04
    jr nc, @+$03                                  ; $6CF7: $30 $01

    ld b, $30                                     ; $6CF9: $06 $30

jr_009_6CFB:
    add hl, bc                                    ; $6CFB: $09
    ld [$1130], sp                                ; $6CFC: $08 $30 $11
    ld a, [bc]                                    ; $6CFF: $0A
    jr z, jr_009_6D1B                             ; $6D00: $28 $19

jr_009_6D02:
    inc c                                         ; $6D02: $0C
    jr nz, jr_009_6D16                            ; $6D03: $20 $11

    ld c, $20                                     ; $6D05: $0E $20

jr_009_6D07:
    add hl, bc                                    ; $6D07: $09
    db $10                                        ; $6D08: $10
    jr nz, jr_009_6D0C                            ; $6D09: $20 $01

    ld [de], a                                    ; $6D0B: $12

jr_009_6D0C:
    jr nz, jr_009_6D07                            ; $6D0C: $20 $F9

    inc d                                         ; $6D0E: $14
    jr nz, jr_009_6D02                            ; $6D0F: $20 $F1

    ld d, $00                                     ; $6D11: $16 $00
    dec e                                         ; $6D13: $1D
    nop                                           ; $6D14: $00
    nop                                           ; $6D15: $00

jr_009_6D16:
    ld d, b                                       ; $6D16: $50
    dec de                                        ; $6D17: $1B
    ld h, $6D                                     ; $6D18: $26 $6D
    push af                                       ; $6D1A: $F5

jr_009_6D1B:
    nop                                           ; $6D1B: $00
    nop                                           ; $6D1C: $00
    dec e                                         ; $6D1D: $1D
    dec b                                         ; $6D1E: $05
    nop                                           ; $6D1F: $00
    ld d, b                                       ; $6D20: $50
    dec de                                        ; $6D21: $1B
    ld h, $6D                                     ; $6D22: $26 $6D
    push af                                       ; $6D24: $F5
    nop                                           ; $6D25: $00
    add hl, bc                                    ; $6D26: $09
    inc e                                         ; $6D27: $1C
    rst RST_38                                    ; $6D28: $FF
    nop                                           ; $6D29: $00
    db $10                                        ; $6D2A: $10
    rlca                                          ; $6D2B: $07
    ld [bc], a                                    ; $6D2C: $02
    db $10                                        ; $6D2D: $10
    rrca                                          ; $6D2E: $0F
    inc b                                         ; $6D2F: $04
    jr nz, jr_009_6D39                            ; $6D30: $20 $07

    ld b, $20                                     ; $6D32: $06 $20
    rrca                                          ; $6D34: $0F
    ld [$1717], sp                                ; $6D35: $08 $17 $17
    ld a, [bc]                                    ; $6D38: $0A

jr_009_6D39:
    ld l, $04                                     ; $6D39: $2E $04
    inc c                                         ; $6D3B: $0C
    jr nc, jr_009_6D4A                            ; $6D3C: $30 $0C

    ld c, $32                                     ; $6D3E: $0E $32
    inc d                                         ; $6D40: $14
    stop                                          ; $6D41: $10 $00
    dec e                                         ; $6D43: $1D
    nop                                           ; $6D44: $00
    jr nz, jr_009_6D98                            ; $6D45: $20 $51

    dec de                                        ; $6D47: $1B
    ld [hl], h                                    ; $6D48: $74
    ld l, l                                       ; $6D49: $6D

jr_009_6D4A:
    db $FD                                        ; $6D4A: $FD
    nop                                           ; $6D4B: $00
    nop                                           ; $6D4C: $00
    dec e                                         ; $6D4D: $1D
    dec b                                         ; $6D4E: $05
    jr nz, @+$53                                  ; $6D4F: $20 $51

    dec de                                        ; $6D51: $1B
    ld [hl], h                                    ; $6D52: $74
    ld l, l                                       ; $6D53: $6D
    db $FD                                        ; $6D54: $FD
    nop                                           ; $6D55: $00
    jr nz, @+$1F                                  ; $6D56: $20 $1D

    nop                                           ; $6D58: $00
    jr nz, @+$53                                  ; $6D59: $20 $51

    dec de                                        ; $6D5B: $1B
    ld [hl], h                                    ; $6D5C: $74
    ld l, l                                       ; $6D5D: $6D
    inc bc                                        ; $6D5E: $03
    nop                                           ; $6D5F: $00
    ld b, b                                       ; $6D60: $40
    dec e                                         ; $6D61: $1D
    nop                                           ; $6D62: $00
    jr nz, jr_009_6DB6                            ; $6D63: $20 $51

    dec de                                        ; $6D65: $1B
    ld [hl], h                                    ; $6D66: $74
    ld l, l                                       ; $6D67: $6D
    db $FD                                        ; $6D68: $FD
    ld [$1D60], sp                                ; $6D69: $08 $60 $1D
    nop                                           ; $6D6C: $00
    jr nz, jr_009_6DC0                            ; $6D6D: $20 $51

    dec de                                        ; $6D6F: $1B
    ld [hl], h                                    ; $6D70: $74
    ld l, l                                       ; $6D71: $6D
    inc bc                                        ; $6D72: $03
    ld [$2B08], sp                                ; $6D73: $08 $08 $2B
    db $FD                                        ; $6D76: $FD
    nop                                           ; $6D77: $00
    inc hl                                        ; $6D78: $23
    dec b                                         ; $6D79: $05
    ld [bc], a                                    ; $6D7A: $02
    inc hl                                        ; $6D7B: $23
    dec c                                         ; $6D7C: $0D
    inc b                                         ; $6D7D: $04
    inc hl                                        ; $6D7E: $23
    dec d                                         ; $6D7F: $15
    ld b, $33                                     ; $6D80: $06 $33
    dec b                                         ; $6D82: $05
    ld [$0D33], sp                                ; $6D83: $08 $33 $0D
    ld a, [bc]                                    ; $6D86: $0A
    dec sp                                        ; $6D87: $3B
    db $FD                                        ; $6D88: $FD
    inc c                                         ; $6D89: $0C
    dec sp                                        ; $6D8A: $3B
    dec d                                         ; $6D8B: $15
    ld c, $00                                     ; $6D8C: $0E $00
    dec e                                         ; $6D8E: $1D
    nop                                           ; $6D8F: $00
    jr nz, @+$54                                  ; $6D90: $20 $52

    dec de                                        ; $6D92: $1B
    and c                                         ; $6D93: $A1
    ld l, l                                       ; $6D94: $6D
    ld hl, sp+$00                                 ; $6D95: $F8 $00
    nop                                           ; $6D97: $00

jr_009_6D98:
    dec e                                         ; $6D98: $1D
    dec b                                         ; $6D99: $05
    jr nz, jr_009_6DEE                            ; $6D9A: $20 $52

    dec de                                        ; $6D9C: $1B
    and c                                         ; $6D9D: $A1
    ld l, l                                       ; $6D9E: $6D
    ld hl, sp+$00                                 ; $6D9F: $F8 $00
    ld [$F52F], sp                                ; $6DA1: $08 $2F $F5
    nop                                           ; $6DA4: $00
    inc l                                         ; $6DA5: $2C
    db $FD                                        ; $6DA6: $FD
    ld [bc], a                                    ; $6DA7: $02
    inc l                                         ; $6DA8: $2C
    dec b                                         ; $6DA9: $05
    inc b                                         ; $6DAA: $04
    jr z, @+$0F                                   ; $6DAB: $28 $0D

    ld b, $2A                                     ; $6DAD: $06 $2A
    dec d                                         ; $6DAF: $15
    ld [$0D38], sp                                ; $6DB0: $08 $38 $0D
    ld a, [bc]                                    ; $6DB3: $0A
    inc a                                         ; $6DB4: $3C
    db $FD                                        ; $6DB5: $FD

jr_009_6DB6:
    inc c                                         ; $6DB6: $0C
    inc a                                         ; $6DB7: $3C
    dec b                                         ; $6DB8: $05
    ld c, $00                                     ; $6DB9: $0E $00
    dec e                                         ; $6DBB: $1D
    nop                                           ; $6DBC: $00
    jr nz, jr_009_6E12                            ; $6DBD: $20 $53

    dec de                                        ; $6DBF: $1B

jr_009_6DC0:
    ret c                                         ; $6DC0: $D8

    ld l, l                                       ; $6DC1: $6D
    rst RST_30                                    ; $6DC2: $F7
    rra                                           ; $6DC3: $1F
    jr nz, @+$1F                                  ; $6DC4: $20 $1D

    nop                                           ; $6DC6: $00
    jr nz, jr_009_6E1C                            ; $6DC7: $20 $53

    dec de                                        ; $6DC9: $1B
    ret c                                         ; $6DCA: $D8

    ld l, l                                       ; $6DCB: $6D
    ld [$601F], sp                                ; $6DCC: $08 $1F $60

jr_009_6DCF:
    dec e                                         ; $6DCF: $1D
    nop                                           ; $6DD0: $00
    jr nz, jr_009_6E26                            ; $6DD1: $20 $53

    dec de                                        ; $6DD3: $1B
    ret c                                         ; $6DD4: $D8

    ld l, l                                       ; $6DD5: $6D
    dec bc                                        ; $6DD6: $0B
    db $F4                                        ; $6DD7: $F4
    ld a, [bc]                                    ; $6DD8: $0A
    ld [$00F1], sp                                ; $6DD9: $08 $F1 $00
    jr jr_009_6DCF                                ; $6DDC: $18 $F1

    ld [bc], a                                    ; $6DDE: $02
    ld de, $04F9                                  ; $6DDF: $11 $F9 $04
    ld [$0601], sp                                ; $6DE2: $08 $01 $06
    jr @+$03                                      ; $6DE5: $18 $01

    ld [$0908], sp                                ; $6DE7: $08 $08 $09
    ld a, [bc]                                    ; $6DEA: $0A
    jr jr_009_6DF6                                ; $6DEB: $18 $09

    inc c                                         ; $6DED: $0C

jr_009_6DEE:
    ld de, $0E11                                  ; $6DEE: $11 $11 $0E
    ld hl, $1011                                  ; $6DF1: $21 $11 $10
    dec d                                         ; $6DF4: $15
    add hl, de                                    ; $6DF5: $19

jr_009_6DF6:
    ld [de], a                                    ; $6DF6: $12
    nop                                           ; $6DF7: $00
    dec e                                         ; $6DF8: $1D
    nop                                           ; $6DF9: $00
    ld h, b                                       ; $6DFA: $60
    ld d, h                                       ; $6DFB: $54
    dec de                                        ; $6DFC: $1B
    dec bc                                        ; $6DFD: $0B
    ld l, [hl]                                    ; $6DFE: $6E

jr_009_6DFF:
    db $FD                                        ; $6DFF: $FD
    ld [bc], a                                    ; $6E00: $02
    jr nz, jr_009_6E20                            ; $6E01: $20 $1D

    nop                                           ; $6E03: $00
    ld h, b                                       ; $6E04: $60
    ld d, h                                       ; $6E05: $54
    dec de                                        ; $6E06: $1B
    dec bc                                        ; $6E07: $0B
    ld l, [hl]                                    ; $6E08: $6E
    ld a, [bc]                                    ; $6E09: $0A
    ld [bc], a                                    ; $6E0A: $02
    ld a, [bc]                                    ; $6E0B: $0A
    jr nc, jr_009_6DFF                            ; $6E0C: $30 $F1

    nop                                           ; $6E0E: $00
    ld l, $F9                                     ; $6E0F: $2E $F9
    ld [bc], a                                    ; $6E11: $02

jr_009_6E12:
    dec l                                         ; $6E12: $2D
    ld bc, $2A04                                  ; $6E13: $01 $04 $2A
    add hl, bc                                    ; $6E16: $09
    ld b, $2C                                     ; $6E17: $06 $2C
    ld de, $3008                                  ; $6E19: $11 $08 $30

jr_009_6E1C:
    add hl, de                                    ; $6E1C: $19
    ld a, [bc]                                    ; $6E1D: $0A
    ld a, $F9                                     ; $6E1E: $3E $F9

jr_009_6E20:
    inc c                                         ; $6E20: $0C
    dec a                                         ; $6E21: $3D
    ld bc, $3A0E                                  ; $6E22: $01 $0E $3A
    add hl, bc                                    ; $6E25: $09

jr_009_6E26:
    db $10                                        ; $6E26: $10
    inc a                                         ; $6E27: $3C
    ld de, $0012                                  ; $6E28: $11 $12 $00
    cp h                                          ; $6E2B: $BC
    nop                                           ; $6E2C: $00
    nop                                           ; $6E2D: $00
    ld l, c                                       ; $6E2E: $69
    dec de                                        ; $6E2F: $1B
    inc [hl]                                      ; $6E30: $34
    ld l, [hl]                                    ; $6E31: $6E
    ld sp, hl                                     ; $6E32: $F9

jr_009_6E33:
    nop                                           ; $6E33: $00
    ld b, $20                                     ; $6E34: $06 $20
    ld sp, hl                                     ; $6E36: $F9
    nop                                           ; $6E37: $00
    jr nc, jr_009_6E33                            ; $6E38: $30 $F9

    ld [bc], a                                    ; $6E3A: $02
    inc l                                         ; $6E3B: $2C
    pop af                                        ; $6E3C: $F1
    inc b                                         ; $6E3D: $04
    inc e                                         ; $6E3E: $1C
    pop af                                        ; $6E3F: $F1
    ld b, $22                                     ; $6E40: $06 $22
    jp hl                                         ; $6E42: $E9


    ld [$E939], sp                                ; $6E43: $08 $39 $E9
    ld a, [bc]                                    ; $6E46: $0A
    nop                                           ; $6E47: $00
    dec e                                         ; $6E48: $1D
    and l                                         ; $6E49: $A5
    ret nz                                        ; $6E4A: $C0

    ld l, c                                       ; $6E4B: $69
    dec de                                        ; $6E4C: $1B
    ld d, c                                       ; $6E4D: $51
    ld l, [hl]                                    ; $6E4E: $6E
    ei                                            ; $6E4F: $FB
    nop                                           ; $6E50: $00
    dec c                                         ; $6E51: $0D
    add hl, hl                                    ; $6E52: $29
    pop hl                                        ; $6E53: $E1
    nop                                           ; $6E54: $00
    inc l                                         ; $6E55: $2C
    jp hl                                         ; $6E56: $E9


    ld [bc], a                                    ; $6E57: $02
    inc e                                         ; $6E58: $1C
    jp hl                                         ; $6E59: $E9


    inc b                                         ; $6E5A: $04
    ld l, $F1                                     ; $6E5B: $2E $F1
    ld b, $1E                                     ; $6E5D: $06 $1E

jr_009_6E5F:
    pop af                                        ; $6E5F: $F1
    ld [$F920], sp                                ; $6E60: $08 $20 $F9
    ld a, [bc]                                    ; $6E63: $0A
    jr nc, jr_009_6E5F                            ; $6E64: $30 $F9

    inc c                                         ; $6E66: $0C
    ld hl, $0E01                                  ; $6E67: $21 $01 $0E
    ld sp, $1001                                  ; $6E6A: $31 $01 $10
    ld a, [hl+]                                   ; $6E6D: $2A
    add hl, bc                                    ; $6E6E: $09
    ld [de], a                                    ; $6E6F: $12
    ld a, [hl-]                                   ; $6E70: $3A
    add hl, bc                                    ; $6E71: $09
    inc d                                         ; $6E72: $14
    jr nc, jr_009_6E86                            ; $6E73: $30 $11

    ld d, $30                                     ; $6E75: $16 $30
    add hl, de                                    ; $6E77: $19
    jr jr_009_6E7A                                ; $6E78: $18 $00

jr_009_6E7A:
    dec e                                         ; $6E7A: $1D

jr_009_6E7B:
    nop                                           ; $6E7B: $00
    ld h, b                                       ; $6E7C: $60
    ld l, e                                       ; $6E7D: $6B

jr_009_6E7E:
    dec de                                        ; $6E7E: $1B
    add e                                         ; $6E7F: $83
    ld l, [hl]                                    ; $6E80: $6E
    inc bc                                        ; $6E81: $03
    nop                                           ; $6E82: $00
    ld a, [bc]                                    ; $6E83: $0A
    dec hl                                        ; $6E84: $2B
    rst RST_18                                    ; $6E85: $DF

jr_009_6E86:
    nop                                           ; $6E86: $00
    ld l, $E7                                     ; $6E87: $2E $E7
    ld [bc], a                                    ; $6E89: $02
    jr z, jr_009_6E7B                             ; $6E8A: $28 $EF

    inc b                                         ; $6E8C: $04
    jr c, jr_009_6E7E                             ; $6E8D: $38 $EF

    ld b, $28                                     ; $6E8F: $06 $28
    rst RST_30                                    ; $6E91: $F7
    ld [$F738], sp                                ; $6E92: $08 $38 $F7
    ld a, [bc]                                    ; $6E95: $0A
    inc hl                                        ; $6E96: $23
    rst RST_38                                    ; $6E97: $FF
    inc c                                         ; $6E98: $0C

jr_009_6E99:
    inc sp                                        ; $6E99: $33
    rst RST_38                                    ; $6E9A: $FF
    ld c, $23                                     ; $6E9B: $0E $23
    rlca                                          ; $6E9D: $07
    db $10                                        ; $6E9E: $10
    inc sp                                        ; $6E9F: $33
    rlca                                          ; $6EA0: $07
    ld [de], a                                    ; $6EA1: $12
    nop                                           ; $6EA2: $00
    dec e                                         ; $6EA3: $1D

jr_009_6EA4:
    nop                                           ; $6EA4: $00
    and b                                         ; $6EA5: $A0
    ld l, h                                       ; $6EA6: $6C

jr_009_6EA7:
    dec de                                        ; $6EA7: $1B
    xor h                                         ; $6EA8: $AC
    ld l, [hl]                                    ; $6EA9: $6E
    inc bc                                        ; $6EAA: $03
    nop                                           ; $6EAB: $00
    ld a, [bc]                                    ; $6EAC: $0A
    ld h, $DF                                     ; $6EAD: $26 $DF
    nop                                           ; $6EAF: $00
    jr nc, jr_009_6E99                            ; $6EB0: $30 $E7

    ld [bc], a                                    ; $6EB2: $02
    jr z, jr_009_6EA4                             ; $6EB3: $28 $EF

    inc b                                         ; $6EB5: $04
    jr c, jr_009_6EA7                             ; $6EB6: $38 $EF

    ld b, $28                                     ; $6EB8: $06 $28
    rst RST_30                                    ; $6EBA: $F7
    ld [$F738], sp                                ; $6EBB: $08 $38 $F7
    ld a, [bc]                                    ; $6EBE: $0A
    inc hl                                        ; $6EBF: $23
    rst RST_38                                    ; $6EC0: $FF
    inc c                                         ; $6EC1: $0C
    inc sp                                        ; $6EC2: $33
    rst RST_38                                    ; $6EC3: $FF
    ld c, $23                                     ; $6EC4: $0E $23
    rlca                                          ; $6EC6: $07
    db $10                                        ; $6EC7: $10
    inc sp                                        ; $6EC8: $33
    rlca                                          ; $6EC9: $07
    ld [de], a                                    ; $6ECA: $12
    nop                                           ; $6ECB: $00
    dec e                                         ; $6ECC: $1D
    and [hl]                                      ; $6ECD: $A6
    ldh [$FF6D], a                                ; $6ECE: $E0 $6D
    dec de                                        ; $6ED0: $1B
    push de                                       ; $6ED1: $D5
    ld l, [hl]                                    ; $6ED2: $6E
    nop                                           ; $6ED3: $00
    db $10                                        ; $6ED4: $10
    inc b                                         ; $6ED5: $04
    db $10                                        ; $6ED6: $10
    db $EC                                        ; $6ED7: $EC
    nop                                           ; $6ED8: $00

jr_009_6ED9:
    ld [$02F4], sp                                ; $6ED9: $08 $F4 $02
    db $10                                        ; $6EDC: $10
    ld sp, hl                                     ; $6EDD: $F9

jr_009_6EDE:
    inc b                                         ; $6EDE: $04
    db $10                                        ; $6EDF: $10
    add hl, bc                                    ; $6EE0: $09
    ld b, $00                                     ; $6EE1: $06 $00
    ld h, b                                       ; $6EE3: $60
    ld l, [hl]                                    ; $6EE4: $6E
    dec de                                        ; $6EE5: $1B
    ld [$006E], a                                 ; $6EE6: $EA $6E $00
    db $10                                        ; $6EE9: $10
    rlca                                          ; $6EEA: $07
    jr jr_009_6EDE                                ; $6EEB: $18 $F1

    nop                                           ; $6EED: $00
    jr nz, jr_009_6ED9                            ; $6EEE: $20 $E9

    ld [bc], a                                    ; $6EF0: $02
    jr nz, @-$05                                  ; $6EF1: $20 $F9

    inc b                                         ; $6EF3: $04
    jr @+$03                                      ; $6EF4: $18 $01

    ld b, $20                                     ; $6EF6: $06 $20
    add hl, bc                                    ; $6EF8: $09
    ld [$F128], sp                                ; $6EF9: $08 $28 $F1

jr_009_6EFC:
    ld a, [bc]                                    ; $6EFC: $0A
    jr z, jr_009_6F00                             ; $6EFD: $28 $01

    inc c                                         ; $6EFF: $0C

jr_009_6F00:
    nop                                           ; $6F00: $00
    ld b, b                                       ; $6F01: $40
    ld l, a                                       ; $6F02: $6F
    dec de                                        ; $6F03: $1B
    ld [$006F], sp                                ; $6F04: $08 $6F $00
    nop                                           ; $6F07: $00
    rlca                                          ; $6F08: $07
    jr z, jr_009_6EFC                             ; $6F09: $28 $F1

    nop                                           ; $6F0B: $00
    jr z, jr_009_6F0F                             ; $6F0C: $28 $01

    ld [bc], a                                    ; $6F0E: $02

jr_009_6F0F:
    jr nc, @-$15                                  ; $6F0F: $30 $E9

    inc b                                         ; $6F11: $04
    jr nc, @-$05                                  ; $6F12: $30 $F9

    ld b, $30                                     ; $6F14: $06 $30
    add hl, bc                                    ; $6F16: $09
    ld [$F138], sp                                ; $6F17: $08 $38 $F1
    ld a, [bc]                                    ; $6F1A: $0A
    jr c, jr_009_6F1E                             ; $6F1B: $38 $01

    inc c                                         ; $6F1D: $0C

jr_009_6F1E:
    nop                                           ; $6F1E: $00
    dec e                                         ; $6F1F: $1D
    nop                                           ; $6F20: $00
    jr nz, jr_009_6F93                            ; $6F21: $20 $70

    dec de                                        ; $6F23: $1B
    jr z, jr_009_6F95                             ; $6F24: $28 $6F

    rst RST_30                                    ; $6F26: $F7
    nop                                           ; $6F27: $00
    ld b, $20                                     ; $6F28: $06 $20
    add hl, bc                                    ; $6F2A: $09
    nop                                           ; $6F2B: $00
    dec hl                                        ; $6F2C: $2B
    ld bc, $1B02                                  ; $6F2D: $01 $02 $1B
    ld bc, $1004                                  ; $6F30: $01 $04 $10
    ld [$1E06], sp                                ; $6F33: $08 $06 $1E
    ld sp, hl                                     ; $6F36: $F9
    ld [$F119], sp                                ; $6F37: $08 $19 $F1
    ld a, [bc]                                    ; $6F3A: $0A
    nop                                           ; $6F3B: $00
    ldh [rSVBK], a                                ; $6F3C: $E0 $70
    dec de                                        ; $6F3E: $1B
    ld b, e                                       ; $6F3F: $43
    ld l, a                                       ; $6F40: $6F
    rst RST_30                                    ; $6F41: $F7
    nop                                           ; $6F42: $00
    inc b                                         ; $6F43: $04
    jr nc, jr_009_6F4F                            ; $6F44: $30 $09

    nop                                           ; $6F46: $00
    jr nz, jr_009_6F5A                            ; $6F47: $20 $11

    ld [bc], a                                    ; $6F49: $02
    jr nc, jr_009_6F5D                            ; $6F4A: $30 $11

    inc b                                         ; $6F4C: $04
    jr nc, jr_009_6F68                            ; $6F4D: $30 $19

jr_009_6F4F:
    ld b, $00                                     ; $6F4F: $06 $00
    dec e                                         ; $6F51: $1D
    nop                                           ; $6F52: $00
    ld h, b                                       ; $6F53: $60
    ld [hl], c                                    ; $6F54: $71
    dec de                                        ; $6F55: $1B
    ld e, d                                       ; $6F56: $5A
    ld l, a                                       ; $6F57: $6F
    nop                                           ; $6F58: $00
    nop                                           ; $6F59: $00

jr_009_6F5A:
    inc b                                         ; $6F5A: $04
    jr nz, jr_009_6F66                            ; $6F5B: $20 $09

jr_009_6F5D:
    nop                                           ; $6F5D: $00
    jr nz, jr_009_6F61                            ; $6F5E: $20 $01

    ld [bc], a                                    ; $6F60: $02

jr_009_6F61:
    jr nc, jr_009_6F64                            ; $6F61: $30 $01

    inc b                                         ; $6F63: $04

jr_009_6F64:
    ld a, [de]                                    ; $6F64: $1A
    ld sp, hl                                     ; $6F65: $F9

jr_009_6F66:
    ld b, $00                                     ; $6F66: $06 $00

jr_009_6F68:
    dec e                                         ; $6F68: $1D
    nop                                           ; $6F69: $00
    ldh [$FF71], a                                ; $6F6A: $E0 $71
    dec de                                        ; $6F6C: $1B
    ld [hl], c                                    ; $6F6D: $71
    ld l, a                                       ; $6F6E: $6F
    nop                                           ; $6F6F: $00
    nop                                           ; $6F70: $00
    inc bc                                        ; $6F71: $03
    jr nz, jr_009_6F7D                            ; $6F72: $20 $09

    nop                                           ; $6F74: $00
    jr nz, jr_009_6F78                            ; $6F75: $20 $01

    ld [bc], a                                    ; $6F77: $02

jr_009_6F78:
    jr nc, jr_009_6F7B                            ; $6F78: $30 $01

    inc b                                         ; $6F7A: $04

jr_009_6F7B:
    nop                                           ; $6F7B: $00
    dec e                                         ; $6F7C: $1D

jr_009_6F7D:
    nop                                           ; $6F7D: $00
    ld b, b                                       ; $6F7E: $40
    ld [hl], d                                    ; $6F7F: $72
    dec de                                        ; $6F80: $1B
    add l                                         ; $6F81: $85
    ld l, a                                       ; $6F82: $6F
    nop                                           ; $6F83: $00
    nop                                           ; $6F84: $00
    inc bc                                        ; $6F85: $03
    jr nz, jr_009_6F91                            ; $6F86: $20 $09

    nop                                           ; $6F88: $00
    jr nz, jr_009_6F8C                            ; $6F89: $20 $01

    ld [bc], a                                    ; $6F8B: $02

jr_009_6F8C:
    jr nc, jr_009_6F8F                            ; $6F8C: $30 $01

    inc b                                         ; $6F8E: $04

jr_009_6F8F:
    nop                                           ; $6F8F: $00
    dec e                                         ; $6F90: $1D

jr_009_6F91:
    nop                                           ; $6F91: $00
    and b                                         ; $6F92: $A0

jr_009_6F93:
    ld [hl], d                                    ; $6F93: $72
    dec de                                        ; $6F94: $1B

jr_009_6F95:
    sbc c                                         ; $6F95: $99
    ld l, a                                       ; $6F96: $6F
    nop                                           ; $6F97: $00
    nop                                           ; $6F98: $00
    inc b                                         ; $6F99: $04
    jr nz, jr_009_6FA5                            ; $6F9A: $20 $09

    nop                                           ; $6F9C: $00
    jr nz, jr_009_6FA0                            ; $6F9D: $20 $01

    ld [bc], a                                    ; $6F9F: $02

jr_009_6FA0:
    jr nz, @-$05                                  ; $6FA0: $20 $F9

    inc b                                         ; $6FA2: $04
    jr nc, @+$03                                  ; $6FA3: $30 $01

jr_009_6FA5:
    ld b, $FF                                     ; $6FA5: $06 $FF
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
